local frktest = require(".././lune_packages/frktest")
local test = frktest.test
local check = frktest.assert.check
local req = frktest.assert.require

local Quest = require(".././src/shared/Quest")

return function()
	test.case("Quest: new", function()
		local quest = Quest.new("Test Quest", "This is a test quest.", {})
		check(quest.name == "Test Quest")
		check(quest.description == "This is a test quest.")
		print(quest.name)
	end)

	test.suite("Quest: addObjective", function()
		test.case("adding an objective", function()
			local quest = Quest.new("Test Quest", "This is a test quest.", {})
			quest:addObjective("Collect 10 apples")
			check(#quest.objectives == 1)
			check(quest.objectives[1] == "Collect 10 apples")
		end)
	end)
end
