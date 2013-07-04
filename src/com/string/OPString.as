package com.string{
	public class OPString{
		
		public static function quitarAcentos(texto_con_acentos:String):String{
			var texto_temp:String = texto_con_acentos as String;
			texto_temp = texto_con_acentos.toLowerCase();
			var acentos:Array=new Array("á","é","í","ó","ú");
			var sin_acentos:Array=new Array("a","e","i","o","u");
			
			function quitar_acentos(texto:String, letraSplit:String, letraCambio:String):String {
				var letras:Array = texto.split(letraSplit);
				var nuevoTexto:String = new String();
				for (var i:int=0;i < letras.length;i++) {
					nuevoTexto += letras[i];
					nuevoTexto += letraCambio;
				}
				nuevoTexto=nuevoTexto.substring(0,nuevoTexto.length-1);
				return nuevoTexto;
			}
			
			for (var i:int=0; i < acentos.length; i++) {
				texto_temp = quitar_acentos(texto_temp,acentos[i],sin_acentos[i]);
			}
			return texto_temp;
		}
	}
}