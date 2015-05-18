#include<iostream>
#include <cairo.h>
using namespace std;

int main()
{
	cairo_surface_t *surface;
	cairo_t *cr;

	surface = cairo_image_surface_create(CAIRO_FORMAT_ARGB32, 390, 60);
	cr = cairo_create(surface);

	cairo_set_source_rgb(cr, 0, 0, 0);
	cairo_select_font_face(cr, "Sans", CAIRO_FONT_SLANT_NORMAL,
			CAIRO_FONT_WEIGHT_NORMAL);
	cairo_set_font_size(cr, 40.0);

	cairo_move_to(cr, 10.0, 50.0);
	cairo_show_text(cr, "Disziplin ist Macht.");

	cairo_surface_write_to_png(surface,
			"/home/radix/Ripdraw/samples_1/GasPump/devdata/devdata_1024_600/images/Button4.bmp");

	cairo_destroy(cr);
	cairo_surface_destroy(surface);

}
