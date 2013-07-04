package com.array{
	public class OPArray {
		/**
		 * Metodo que elimina una posición en un Array dado
		 * 
		 * @param posicion Index del Array qué se desea eliminar
		 * @param array El array en si 
		 * 
		 */
		public static function removerElementoDeArray(posicion:Number, array:Array):Array{
			var _arrayLength:int = array.length;
			if (posicion >= 0 && posicion <= _arrayLength){
				var beforeArray:Array = array.slice(0, posicion);
				var afterArray:Array = array.slice(posicion + 1);
				return beforeArray.concat(afterArray);
			}
			return array;
		}
	}
}