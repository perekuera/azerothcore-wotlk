/*
InventoryTypes:
NonEquip = 0
Head = 1						51187 - 64427
Neck = 2
Shoulders = 3
Body = 4
Chest = 5
Waist = 6
Legs = 7
Feet = 8
Wrists = 9
Hands = 10
Finger = 11
Trinket = 12
Weapon = 13
Shield = 14
Ranged = 15
Cloak = 16
TwoHandedWeapon = 17
Bag = 18
Tabard = 19
Robe = 20
MainHandWeapon = 21
OffHandWeapon = 22
Holdable = 23
Ammo = 24
Thrown = 25
RangedRight = 26
Quiver = 27
Relic = 28
Class IDs:

Warrior = 1
Paladin = 2
Hunter = 3
Rogue = 4
Priest =5
Deathknight = 6
Shaman = 7
Mage = 8
Warlock = 9
Druid = 11
Race IDs:

Human = 1
Dwarf = 2
Night Elf = 3
Undead = 4
Tauren = 5
Gnome = 6
Troll =7
Blood Elf =8
Draenei =10
Orc = 11
*/

select * from gameobject_template_locale gtl where locale = 'esES' and name like '%encan%'

select * from prospecting_loot_template plt 


--up
update player_class_stats set basehp = basehp * 2, BaseMana = BaseMana * 2, Strength = Strength * 2, Agility = Agility*2, Stamina = Stamina *2, Intellect = Intellect * 2, Spirit = Spirit * 2 where 1 = 1; 

--down
update player_class_stats set basehp = basehp / 2, BaseMana = BaseMana / 2, Strength = Strength / 2, Agility = Agility / 2, Stamina = Stamina / 2, Intellect = Intellect / 2, Spirit = Spirit / 2 where 1 = 1; 


select * from player_class_stats where level > 80 

select * from pet_levelstats pl  where level > 80 



select * from player_class_stats where level > 74 and class = 11
union
select 	class, 
		level + 1, 
		cast(BaseHP * 1.075 as signed),
		cast(BaseMana * 1.075 as signed),
		cast(Strength  * 1.025 as signed),
		cast(Agility  * 1.025 as signed),
		cast(Stamina  * 1.025 as signed),
		cast(Intellect  * 1.025 as signed),
		cast(Spirit  * 1.025 as signed)
from player_class_stats pcs 
where Level = 80 and class = 11
order by 1, 2


insert into player_class_stats (
	select 	class, 
			level + 1, 
			cast(BaseHP * 1.075 as signed),
			cast(BaseMana * 1.075 as signed),
			cast(Strength  * 1.025 as signed),
			cast(Agility  * 1.025 as signed),
			cast(Stamina  * 1.025 as signed),
			cast(Intellect  * 1.025 as signed),
			cast(Spirit  * 1.025 as signed)
	from player_class_stats pcs 
	where Level = 99 and class = 11
);

delete from player_class_stats where class = 4 and level = 9





select name, `level`  from acore_characters.characters




select 	entry,
		class,
		subclass,
		name,
		displayid,
		quality,
		InventoryType,
		itemlevel,
		RequiredLevel,
		armor,
		itemset,
		VerifiedBuild 
from item_template 
where lower(name) like '%golden bow%'



and InventoryType = 1
and Quality > 3 
and ItemLevel > 270
order by itemset

select * from item_template it where itemset= 890 and ItemLevel > 264


select * from item_template_locale itl where locale = 'esES' and name like '%rúnica de et%'

select * from item_template it where entry = 22449



select * from acore_world.gameobject_template gt2 


