: held   kbs0 swap al_key_down 0<> ;
: kdelta dup kbs0 swap al_key_down kbs1 rot al_key_down - ;
: pressed   kdelta 1 = ;
: letgo     kdelta -1 = ;
: shift? 215 held 216 held or ;
: ctrl? 217 held 218 held or ;
: alt?  219 held 220 held or ;
: mouse  ms0 ALLEGRO_MOUSE_STATE.x @ ms0 ALLEGRO_MOUSE_STATE.y @ ;
: mickey ms1 ALLEGRO_MOUSE_STATE.x @ ms1 ALLEGRO_MOUSE_STATE.y @ ;
: 2-  rot swap - >r - r> ;
: walt   mouse mickey 2- ;
