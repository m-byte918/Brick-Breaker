/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5E4A93F7
instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 7E373004
/// @DnDApplyTo : 42eda159-69c0-461b-99c2-8619b8d0fbec
/// @DnDArgument : "lives" "-1"
/// @DnDArgument : "lives_relative" "1"
with(obj_player) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 428CD0F4
/// @DnDArgument : "xpos" "512"
/// @DnDArgument : "ypos" "544"
/// @DnDArgument : "objectid" "obj_ball"
/// @DnDSaveInfo : "objectid" "0751470f-5e2c-4d04-b21e-e143dcaf5a20"
instance_create_layer(512, 544, "Instances", obj_ball);