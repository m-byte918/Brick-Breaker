/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 61D9DF38
/// @DnDApplyTo : 42eda159-69c0-461b-99c2-8619b8d0fbec
/// @DnDArgument : "y" "768-48"
/// @DnDArgument : "sprite" "spr_lives"
/// @DnDSaveInfo : "sprite" "c6295c8e-5215-4b1f-818d-82b927f1ced9"
with(obj_player) {
var l61D9DF38_0 = sprite_get_width(spr_lives);
var l61D9DF38_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l61D9DF38_2 = __dnd_lives; l61D9DF38_2 > 0; --l61D9DF38_2) {
	draw_sprite(spr_lives, 0, 0 + l61D9DF38_1, 768-48);
	l61D9DF38_1 += l61D9DF38_0;
}
}

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 06D866B6
/// @DnDApplyTo : 42eda159-69c0-461b-99c2-8619b8d0fbec
/// @DnDArgument : "x" "890"
/// @DnDArgument : "y" "738"
with(obj_player) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(890, 738, string("Score: ") + string(__dnd_score));
}