package com.process
{
	import flash.display.BitmapData;
	import flash.display.Sprite;

	public class Convertir
	{
		public static function toBitmap(_sprite:Sprite):BitmapData{
			var bitmapData:BitmapData = new BitmapData(_sprite.width, _sprite.height, true);
			bitmapData.draw(_sprite);
			return bitmapData;
		}
	}
}