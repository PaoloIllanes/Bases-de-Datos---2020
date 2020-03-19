use bookstore;
select usuario, nombre, apellido
from empleado inner join usuario on usuario.idempleado=empleado.idempleado;
select email as correo
from usuario inner join empleado on usuario.idempleado=empleado.idempleado && usuario.activo=1;
select count(idpublicacion)
from publicacion where autor = 'Eric G. Coronel Castillo';
select sum(total) as 'Suma ventas'
from empleado inner join venta
where empleado.idempleado=venta.idempleado && empleado.nombre= 'EMILIO'