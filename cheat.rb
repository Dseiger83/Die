require_relative "FormPrompter"
require_relative "DieLibrary"


def cheat
	def initialize
		GetUserResponse()
	end
# If there is a bug it's probably here
	def FindTheCheater()
		yesorno = getstring
		number = getnumber
		@cheat = (yesorno == true)
		@dienumber = (number = DieLibrary.ValidateNumber())
	end

	def getnumber()
		number = FormPrompter.AskUser 'Please enter a number from 1 to 6'

		validationFailures = [DieLibrary.ValidateNumber(number)]
		validationFailures.reject! { |result| result == true }
		validationFailures.each {|failure| puts failure }
		validationFailures.each {|failure| number = getnumber() }

  	return number
	end 

	def getstring()
		yesorno = FormPrompter.AskUser 'If you wish to cheat, please enter yes or no'

		validationFailures = [DieLibrary.ValidateString(yesorno)]
		validationFailures.reject! { |result| result == true }
		validationFailures.each {|failure| puts failure }
		validationFailures.each {|failure| yesorno = getstring() }

	return yesorno
	end

	def Cheat?
		return @cheat
	end

	def DieNumber?
		return @dienumber
	end

end