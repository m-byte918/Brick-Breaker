/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 46C6D722
/// @DnDArgument : "obj" "obj_bigstar"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "92500c27-8b0b-4d9f-b157-59eeb47a5f07"
var l46C6D722_0 = false;
l46C6D722_0 = instance_exists(obj_bigstar);
if(!l46C6D722_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5585F340
	/// @DnDParent : 46C6D722
	/// @DnDArgument : "var" "room"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "1"
	if(!(room == 1))
	{
		/// @DnDAction : YoYo Games.Rooms.Next_Room
		/// @DnDVersion : 1
		/// @DnDHash : 51301D7C
		/// @DnDParent : 5585F340
		room_goto_next();
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 72B8044C
	/// @DnDParent : 46C6D722
	else
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 767F8A89
		/// @DnDParent : 72B8044C
		/// @DnDArgument : "room" "room0"
		/// @DnDSaveInfo : "room" "eb0625ab-a18f-4c51-a878-0213140a83f0"
		room_goto(room0);
	}

	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 7C3AA865
	/// @DnDApplyTo : 42eda159-69c0-461b-99c2-8619b8d0fbec
	/// @DnDParent : 46C6D722
	/// @DnDArgument : "lives" "3"
	with(obj_player) {
	
	__dnd_lives = real(3);
	}

	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 2009DB2B
	/// @DnDApplyTo : 42eda159-69c0-461b-99c2-8619b8d0fbec
	/// @DnDParent : 46C6D722
	with(obj_player) {
	
	__dnd_score = real(0);
	}
}

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 143D134A
/// @DnDApplyTo : 42eda159-69c0-461b-99c2-8619b8d0fbec
with(obj_player) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
var l143D134A_0 = __dnd_lives == 0;
}
if(l143D134A_0)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 1FA75B4E
	/// @DnDParent : 143D134A
	room_restart();

	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 5091BD0E
	/// @DnDApplyTo : 42eda159-69c0-461b-99c2-8619b8d0fbec
	/// @DnDParent : 143D134A
	/// @DnDArgument : "lives" "3"
	with(obj_player) {
	
	__dnd_lives = real(3);
	}

	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 257ADB4E
	/// @DnDApplyTo : 42eda159-69c0-461b-99c2-8619b8d0fbec
	/// @DnDParent : 143D134A
	with(obj_player) {
	
	__dnd_score = real(0);
	}
}