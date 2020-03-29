local EntityManager = {}

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage.Modules
local ObjectManager = require(Modules.ObjectManager)

local GUIDFromModel = {}

function EntityManager.AddEntity(model, GUID)
	GUIDFromModel[model] = GUID
end

function EntityManager.RemoveEntity(model)
	GUIDFromModel[model] = nil
end

function EntityManager.GetAllEntities()
	return GUIDFromModel
end

function EntityManager.GetGUIDFromModel(model)
	return GUIDFromModel[model]
end

function EntityManager.GetEntityFromModel(model)
	return ObjectManager.GetObjectFromGUID(EntityManager.GetGUIDFromModel(model))
end

return EntityManager