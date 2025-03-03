-- DB update 2025_02_15_00 -> 2025_02_15_01

-- Fix Missing Link
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 23821;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 23821);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(23821, 0, 0, 0, 8, 0, 100, 512, 61588, 0, 0, 0, 0, 0, 11, 52955, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Valgarde Harpoon Target - On Spellhit \'Blazing Harpoon\' - Cast \'Torch\''),
(23821, 0, 1, 2, 1, 0, 100, 513, 1000, 1000, 1000, 1000, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Valgarde Harpoon Target - Out of Combat - Disable Combat Movement (No Repeat)'),
(23821, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Valgarde Harpoon Target - Out of Combat - Set Reactstate Passive (No Repeat)');
