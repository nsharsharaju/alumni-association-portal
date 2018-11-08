package helloworld;

import java.util.*;

public class BracketlessArrayList<E> extends ArrayList<E> {

	 /**
	 * For serialization.. ignore this
	 */
	private static final long serialVersionUID = 1L;

	public String toString() {
	             Iterator<E> i = iterator();
	            if (! i.hasNext()){
	                //return "[]";  //line removed to avoid square brackets
	                 return "";
	            }


	             StringBuilder sb = new StringBuilder();
	             //sb.append('[');  //line removed to avoid square brackets
	             for (;;) {
	                 E e = i.next();
	               sb.append(e == this ? "(this Collection)" : e);
	                 if (! i.hasNext()){
	                     //line removed to avoid square brackets
	                     //return sb.append(']').toString();  
	                     return sb.toString();                         
	                 }

	                 sb.append(", ");
	             }
	         }
	}