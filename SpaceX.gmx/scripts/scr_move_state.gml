/// scr_move_state

scr_get_input();

if (key_up or w_key) {
    phy_position_y -= spd;
    sprite_index = spr_astronaut_up;
    image_speed = .2;
}

if (key_right or d_key) {
    phy_position_x += spd;
    //sprite_index = spr_astronaut_right;
    image_speed = .2;
}

if (key_down or s_key) {
    phy_position_y += spd;
    sprite_index = spr_astronaut_down;
    image_speed = .2;
}

if (key_left or a_key) {
    phy_position_x -= spd;
    //sprite_index = spr_astronaut_left;
    image_speed = .2;
}

// Stop animating

if (!key_up && !key_right && !key_down && !key_left && !a_key && !w_key && !s_key && !d_key) {
    image_speed = 0;
}
