package com.process
{
	import flash.display.BitmapData;
	import flash.display.Sprite;

	/**
	 * Aquí se incluyen funciones estáticas que convierten tipos de datos; Ej. Sprites en BitmapData, Bitmap en JPG, etc.
	 */
	public class Convertir
	{
		public static function toBitmap(_sprite:Sprite):BitmapData{
			var bitmapData:BitmapData = new BitmapData(_sprite.width, _sprite.height, true);
			bitmapData.draw(_sprite);
			return bitmapData;
		}
	}
}