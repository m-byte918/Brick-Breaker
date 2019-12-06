/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 598F10E7
/// @DnDArgument : "code" "move_bounce_solid(false);"
move_bounce_solid(false);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 2AB9B6DE
/// @DnDApplyTo : 42eda159-69c0-461b-99c2-8619b8d0fbec
/// @DnDArgument : "score" "20"
/// @DnDArgument : "score_relative" "1"
with(obj_player) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(20);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 79D8528C
/// @DnDApplyTo : other
with(other) instance_destroy();