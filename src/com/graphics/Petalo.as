package  com.graphics{
	import flash.display.Sprite;
	import flash.geom.Point;
	
	import com.maths.geometrica;
	
	public class Petalo extends Sprite {
		private var _punto_origen:Point;
		private var _radio:Number;
		private var _grados_inicio:Number;
		private var _color_relleno:uint;
		private var _alpha_relleno:Number;
		private var _grueso_contorno:int;
		private var _color_contorno:uint;
		private var _alpha_contorno:Number;
		
		public function Petalo(punto_origen:Point, radio:Number=50, grados_inicio:Number=0, color_relleno:uint=0xFFFFFF,  color_contorno:uint = 0x000000, grueso_contorno:int = 1, alpha_relleno:Number = 1, alpha_contorno:Number = 0) {
			if(punto_origen){
				_punto_origen = punto_origen;
			}else{
				_punto_origen = new Point(0,0);
			}
			
			_radio = radio;
			_grados_inicio = grados_inicio;
			_color_relleno = color_relleno;
			_grueso_contorno = grueso_contorno;
			_color_contorno = color_contorno;
			_alpha_relleno = alpha_relleno;
			_alpha_contorno = alpha_contorno;
			
			init();
		}
		public function init():void{
			
			this.graphics.clear();
				
			var p_origen_a:Point = new Point(_punto_origen.x,_punto_origen.y+_radio*.865);
			var p_origen_b:Point = new Point(_punto_origen.x+_radio,_punto_origen.y+_radio*.865);
			
			var amplitud_arco:Number = 60+_grados_inicio;
			
			var steps:Number = amplitud_arco/2;
			var dosPI:Number = 2 * Math.PI;
			var angulo_inicio:Number = _grados_inicio/360;
			var alto:Number = new Number(geometrica.htrianguloeq(_radio));
			
			var angleStep:Number = (amplitud_arco/360) / steps;
			var angle:Number = new Number();
			
			var x1:Number = p_origen_a.x + Math.cos(angulo_inicio * dosPI) * _radio;
			var y1:Number = p_origen_a.y + Math.sin(angulo_inicio * dosPI) * _radio;
			var punto_inicio_a:Point = new Point(x1,y1);
			
			this.graphics.beginFill(color_relleno,alpha_relleno);
			this.graphics.moveTo(p_origen_b.x-(_radio/2),p_origen_a.y+alto);
			this.graphics.lineTo(punto_inicio_a.x, punto_inicio_a.y);
			
			for (var j:int=1; j<=steps; j++){
				angle = (angulo_inicio - j * angleStep) * dosPI;
				x1 = p_origen_a.x + Math.cos(angle) * _radio + .4;
				y1 = p_origen_a.y + Math.sin(angle) * _radio;
				this.graphics.lineTo(x1, y1);
			}
			
			var x2:Number = p_origen_b.x + Math.cos(-(180-amplitud_arco + _grados_inicio)/360 * dosPI) * _radio;
			var y2:Number = p_origen_b.y + Math.sin(-(180-amplitud_arco + _grados_inicio)/360 * dosPI) * _radio;
			var punto_inicio_b:Point = new Point(x2,y2);
			
			this.graphics.lineTo(punto_inicio_b.x, punto_inicio_b.y);
			
			var angle_b:Number = new Number();
			
			for (var k:int=1; k<=steps; k++){
				angle_b = (-(180-amplitud_arco + _grados_inicio)/360 - k * angleStep) * dosPI;
				x2 = p_origen_b.x + Math.cos(angle_b) * _radio - .4;
				y2 = p_origen_b.y + Math.sin(angle_b) * _radio;
				this.graphics.lineTo(x2,y2);
			}
			this.graphics.lineTo(p_origen_b.x-(_radio/2),p_origen_a.y+alto);
			
		}
		
		//SETTERS & GETTERS
		
		public function set punto_origen(v_punto_origen:Point):void
		{
			_punto_origen = v_punto_origen;
			init();
		}
		public function get punto_origen():Point
		{
			return _punto_origen;
		}
		public function set radio(v_radio:Number):void
		{
			_radio = v_radio;
			init();
		}
		public function get radio():Number
		{
			return _radio;
		}
		public function set grados_inicio(v_grados_inicio:Number):void
		{
			_grados_inicio = v_grados_inicio;
			init();
		}
		public function get grados_inicio():Number{
			return _grados_inicio;
		}

		public function get color_relleno():uint
		{
			return _color_relleno;
		}

		public function set color_relleno(value:uint):void
		{
			_color_relleno = value;
			init();
		}

		public function get alpha_relleno():Number
		{
			return _alpha_relleno;
		}

		public function set alpha_relleno(value:Number):void
		{
			_alpha_relleno = value;
			init();
		}

		public function get grueso_contorno():int
		{
			return _grueso_contorno;
		}

		public function set grueso_contorno(value:int):void
		{
			_grueso_contorno = value;
			init();
		}

		public function get color_contorno():uint
		{
			return _color_contorno;
		}

		public function set color_contorno(value:uint):void
		{
			_color_contorno = value;
			init();
		}

		public function get alpha_contorno():Number
		{
			return _alpha_contorno;
		}

		public function set alpha_contorno(value:Number):void
		{
			_alpha_contorno = value;
			init();
		}


	}
}
