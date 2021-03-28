vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_texcoord();
vertex_format_add_color();

format = vertex_format_end();

vbuff = vertex_create_buffer();

vertex_begin(vbuff,format);
event_user(0);
vertex_end(vbuff);
vertex_freeze(vbuff);
