package com.graphics{	import flash.display.Sprite;		public class Aspa extends Sprite{				private var _color:uint;				public function Aspa(color:uint=0xFFFFFF):void{			_color = color;						init();		}				public function init():void{			this.graphics.clear();			this.graphics.beginFill(_color,1);			this.graphics.moveTo(450,0);			this.graphics.curveTo(450,-18,433,-33);			this.graphics.curveTo(378,-85,215,-90);			this.graphics.curveTo(170,-90,140,-83);			this.graphics.curveTo(92,-70,80,-87);			this.graphics.lineTo(0,0);			this.graphics.endFill();			this.graphics.beginFill(_color,1);			this.graphics.moveTo(450,0);			this.graphics.curveTo(450,18,433,33);			this.graphics.curveTo(378,85,215,90);			this.graphics.curveTo(170,90,140,83);			this.graphics.curveTo(92,70,80,87);			this.graphics.lineTo(0,0);			this.graphics.endFill();		}		public function get color():uint
		{
			return _color;
		}		public function set color(value:uint):void
		{
			_color = value;			init();
		}	}}