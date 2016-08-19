/*
	on every year that is evenly divisible by 4
		except every year that is evenly divisible by 100
			unless the year is also evenly divisible by 400
*/

var Leap = function(year) {
	this.year = year;

	this.isLeap = function() {
	  if (!this.isEvenlyDivisibleBy(4)) { return false; }
	  if (this.isDisqualifiedLeapYear()) { return this.isLeapYearException(); }

	  return true;
	};

	this.isEvenlyDivisibleBy = function(divisor) { return (this.year % divisor === 0); };
	this.isDisqualifiedLeapYear = function() { return (this.isEvenlyDivisibleBy(4) && this.isEvenlyDivisibleBy(100)); };
	this.isLeapYearException = function() { return (this.isDisqualifiedLeapYear() && this.isEvenlyDivisibleBy(400)); };
};

module.exports = Leap;
