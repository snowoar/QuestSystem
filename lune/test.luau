local frktest = require(".././lune_packages/frktest")
local test = frktest.test
local check = frktest.assert.check
local req = frktest.assert.require

return function()
	test.case("a global test", function()
		-- ...
		print("hey from case 1")
	end)

	test.suite("a group of tests", function()
		test.case("a test within a suite", function()
			-- ...
		end)
	end)
end
