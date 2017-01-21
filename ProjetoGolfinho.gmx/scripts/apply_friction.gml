//apply_friction(amount)
var amount = argument[0];

if (hSpeed != 0){
    if (abs(hSpeed) - amount > 0){
        hSpeed -= amount * image_xscale;
    }else{
        hSpeed = 0;
    }
}
