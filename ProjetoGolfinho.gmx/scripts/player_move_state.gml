///player_move_state(collision_object)

var col_obj = argument0;

var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

if (right)
    hSpeed = mSpeed;
else if (left)
    hSpeed = -mSpeed;
    

//Check horizontal collision
if (place_meeting(x + hSpeed, y, collision_obj)){
    while(!place_meeting(x+sign(hSpeed), y, collision_obj)){
        x += sign(hSpeed);
    }
    hSpeed = 0;
}
x += hSpeed;

//Check vertical collision
if (place_meeting(x, y + vSpeed, collision_obj)){
    while(!place_meeting(x, y + sign(vSpeed), collision_obj)){
        y += sign(vSpeed);
    }
    vSpeed = 0;
}
y += vSpeed;
