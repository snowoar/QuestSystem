export type Objective = {
	name: string,
	description: string,
	completed: boolean,
}

local Quest = {}
Quest.__index = Quest

function Quest.new(name: string, description: string, objectives: { string? })
	local self = setmetatable({}, Quest)
	self.name = name
	self.description = description
	self.objectives = objectives
	self.objectivesCompleted = {}

	for _, objective in ipairs(objectives) do
		self.objectivesCompleted[objective] = false
	end

	self.completed = false
	return self
end

function Quest:addObjective(objective: string)
	table.insert(self.objectives, objective)
end

return Quest
