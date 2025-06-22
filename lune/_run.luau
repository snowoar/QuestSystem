local frktest = require("@frktest/frktest")
local lune_console_reporter = require("@frktest/reporters/lune_console_reporter")
--
local test = frktest.test
local check = frktest.assert.check
local req = frktest.assert.require

require("./test")()
require("./newQuest")()

lune_console_reporter.init()
frktest.run()
