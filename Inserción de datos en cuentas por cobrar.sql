insert into  CXC(   
numCxC,cliente, concepto, fechaCreacion, fechaVence, vendedor, cobrador, departamento,  
municipio, valor, cargo, abono, saldo, salfec, conceptocxc, es_venta, condpago,  
codsucursal, idFactura)  
select  
f.numero, f.cliente, f.tipofact, f.fecha, f.vence, f.idvendedor, '', d.codigo_depto,  
c.municipio, f.valortot, 0, 0, valortot,Salfec, 'Venta al credito', 1, 2,   
f.codsucursal, f.idfactura  
from facturas as f  
inner join Clientes as c on c.cliente = f.cliente  
inner join cat_deptosg as d on d.codigo_depto = c.departamento  
where f.tipofact = 'CCF' AND F.NUMERO = '000001' 