modifier_rubick_spell_steal_lua_hidden = class({})

--------------------------------------------------------------------------------
-- Classifications
function modifier_rubick_spell_steal_lua_hidden:IsHidden()
	return false
end

function modifier_rubick_spell_steal_lua_hidden:IsDebuff()
	return false
end

function modifier_rubick_spell_steal_lua_hidden:IsPurgable()
	return false
end

function modifier_rubick_spell_steal_lua_hidden:RemoveOnDeath()
	return false
end
--------------------------------------------------------------------------------
-- Initializations
function modifier_rubick_spell_steal_lua_hidden:OnCreated( kv )

end

function modifier_rubick_spell_steal_lua_hidden:OnRefresh( kv )
	
end

function modifier_rubick_spell_steal_lua_hidden:OnDestroy()

end

--------------------------------------------------------------------------------
-- Modifier Effects
function modifier_rubick_spell_steal_lua_hidden:DeclareFunctions()
	local funcs = {
		MODIFIER_EVENT_ON_ABILITY_FULLY_CAST,
	}

	return funcs
end

function modifier_rubick_spell_steal_lua_hidden:OnAbilityFullyCast( params )
	if IsServer() then
		if params.unit==self:GetParent() then
			return
		end
		self:GetAbility():SetLastSpell( params.unit, params.ability )
	end
end
--------------------------------------------------------------------------------
-- Status Effects
-- function modifier_rubick_spell_steal_lua_hidden:CheckState()
-- 	local state = {
-- 	[MODIFIER_STATE_XX] = true,
-- 	}

-- 	return state
-- end

--------------------------------------------------------------------------------
-- Interval Effects
-- function modifier_rubick_spell_steal_lua_hidden:OnIntervalThink()
-- end

--------------------------------------------------------------------------------
-- Graphics & Animations
-- function modifier_rubick_spell_steal_lua_hidden:GetEffectName()
-- 	return "particles/string/here.vpcf"
-- end

-- function modifier_rubick_spell_steal_lua_hidden:GetEffectAttachType()
-- 	return PATTACH_ABSORIGIN_FOLLOW
-- end