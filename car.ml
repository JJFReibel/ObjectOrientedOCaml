(*
   MIT License

Copyright (c) 2020 Jean-Jacques François Reibel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*)
open Format
    
class car wheelsInit doorsInit cylindersInit =
  object (self)
    val mutable wheels : int = wheelsInit
    val mutable doors : int = doorsInit 
    val mutable cylinders : int = cylindersInit 
    method addWheels wheelsIn =
      wheels<- wheelsIn + wheels
    method addDoors doorsIn =
      doors<- doorsIn + doors
    method addCylinders cylindersIn =
      cylinders<- cylindersIn + cylinders 
    method deleteWheels wheelsIn =
      wheels<-  wheels - wheelsIn
    method deleteDoors doorsIn =
      doors<- doors - doorsIn
    method deleteCylinders cylindersIn =
      cylinders<- cylinders - cylindersIn
    method printInfo = 
      printf "Wheel check: %d \n%!" wheels;
      printf "Door check: %d \n%!" doors;
      printf "Cylinder check: %d \n\n%!" cylinders
  end;;

printf "Creating car.\n";;
let subaru = new car 4 4 4;;
printf "Adding wheel using object method.\n";;
subaru#addWheels 1;;
subaru#printInfo;;
(* OCaml does not allow class variables to be accessed outside the class without a method. *)
printf "Removing wheel using object method.\n";;
subaru#deleteWheels 1;;
subaru#printInfo;;


  