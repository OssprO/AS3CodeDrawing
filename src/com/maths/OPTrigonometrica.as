package com.maths{
	import flash.geom.Point;
	public class OPTrigonometrica {

		public function OPTrigonometrica() {
			// constructor code
		}
		public static function divisioncirculo(divisiones:Number):Number{
			var _rot_pet_gra:Number = 360/divisiones;
			return _rot_pet_gra;
		}
		public static function distanciadospuntos(angulo:Number,radio:Number):Number{
			var puntoa:Point = Point.polar(radio,angulo);
			var puntob:Point = Point.polar(radio,angulo*2);
			var distancia:Number = Point.distance(puntoa, puntob);
			return distancia;
		}
		//a
		public static function catetoopuesto(angulo:Number,radio:Number):Number{
			var _catetoopuesto:Number = new Number();
			_catetoopuesto = Math.sin(angulo) * radio;
			return _catetoopuesto;
		}
		//b
		public static function catetoadyacente(angulo:Number,radio:Number):Number{
			var _catetoadyacente:Number = new Number();
			_catetoadyacente = Math.cos(angulo) * radio;
			return _catetoadyacente;
		}
		public static function hipotenusa(c_opuesto:Number,c_adyacente:Number):Number{
			var _hipotenusa:Number = new Number();
			_hipotenusa = Math.sqrt(Math.pow(c_opuesto,2)+Math.pow(c_adyacente,2));
			return _hipotenusa;
		}
		//Calcula el angulo adyacente. c_adyacente = b y c_opuesto = a
		public static function anguloagudo(c_opuesto:Number,c_adyacente:Number):Number{
			var _anguloagudo:Number = new Number();
			_anguloagudo = Math.atan(c_adyacente/c_opuesto);
			return _anguloagudo;
		}

	}
	
}
