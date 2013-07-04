package com.time{
	public class OPTime{
		
		/**
		 * Metodo que devuelve el numero de dias en un mes para determinado año
		 * 
		 * @param year Año para referencia sobres si es biciesto o no
		 * @param month Mes de cúal se quiere saber su numero de días (meses del 0 al 11)
		 */
		public static function getDayCount(year:int, month:int):int{
			var d:Date=new Date(year, month+1, 0);
			return d.getDate();
		}	
	}
}