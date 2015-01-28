require_relative "Die"
require_relative "DieLibrary"
require_relative "FormPrompter"
require_relative "cheat"

FormPrompter.Display('Do you wish to cheat?')
cheater = cheat.new.cheat?

if cheater = true 
  FormPrompter.Display('Please enter a number from 1 to 6.')
  number = cheat.new.number?
  puts Die.new.numberSet
else
  puts Die.new.showing
end
