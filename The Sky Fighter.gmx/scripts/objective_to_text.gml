var objective = argument0;

var retval = "";

switch(objective.active_objective)
{
    case objective_types.survive:
        retval += "Survive";
        break;
    case objective_types.elimination:
        retval += "Neutralize enemies";
        break;
    case objective_types.location:
        retval += "Head to the target area";
        break;
    case objective_types.score_target:
        retval += "Get "
        retval += string(objective.objective_params[? "score"]);
        retval += " points";
        break;
}

return retval;
