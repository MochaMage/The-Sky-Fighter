var fighter_type = argument0;

var fighters = ds_list_create();

for (var i = 0; i < instance_number(fighter_type); i++)
{
   var fighter = instance_find(fighter_type, i);
   ds_list_add(fighters, fighter);
}

return fighters;
