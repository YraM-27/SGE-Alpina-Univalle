<<<<<<< HEAD
# ---

**📓 Bitácora de Uso de IA \- Proyecto SGE**

**Integrantes del Grupo:** Nicol Vanessa Serna Gómez \- 2537866  
                                        Sergio Ernesto Patiño Rodriguez \- 2440051  
                                        Paula Mariana Murillo Huertas \- 2436488
=======
**📓 Bitácora de Uso de IA \- Proyecto SGE**

**Integrantes del Grupo:** 
Nicol Vanessa Serna Gómez \- 2537866  
Sergio Ernesto Patiño Rodriguez \- 2440051  
Paula Mariana Murillo Huertas \- 2436488
>>>>>>> mary

**Empresa:** Alpina Productos Alimenticios S.A.S. BIC.

**Fecha de inicio:** 17/Mayo/2026

### ---

**Recordatorios:**

1. **Honestidad Técnica:** No se penaliza el uso de IA, se penaliza la falta de documentación o la falta de comprensión de lo que la IA generó.  
2. **Ubicación:** Guardar este archivo como **DOC\_IA.md** en la raíz del repositorio de GitHub.  
3. **Sustentación:** Durante la muestra final, el profesor podrá preguntar sobre cualquier ajuste manual registrado en esta bitácora.

## **1\. Fase de Diseño**

1. ## **Modelar orden de insumos a proveedores:**

* **Herramienta utilizada:** ChatGPT  
* **Prompt:** \> como puedo modelar la orden de insumos a proveedores  
* **Resultado de la IA:** La IA explicó como es el proceso real y sugirio modelar una entidad para la orden, una relación con proveedor  y una entidad intermedia para los detalles de la orden. También mostró modelos de tabla recomendados para cada entidad: OrdenCompra(id\_orden : INT \<\<PK\>\> fecha\_orden : DATE fecha\_entrega\_estimada : DATE estado : VARCHAR(30) total : DECIMAL(10,2) numero\_documento : VARCHAR(30) \<\<FK\>\> ), Insumo(id\_insumo : INT \<\<PK\>\> nombre\_insumo : VARCHAR(100) inventario\_actual : INT demanda\_diaria : INT), DetalleOrdenCompra(id\_detalle : INT \<\<PK\>\> cantidad : INT precio\_unitario : DECIMAL(10,2) subtotal : DECIMAL(10,2) id\_orden : INT \<\<FK\>\> id\_insumo : INT \<\<FK\>\> )  
* **Ajuste Manual / Validación:** La estructura de la tabla de OrdenCompra se mantuvo con cambios en el nombre de algunos atributos y del nombre de la tabla (actualmente se llama OrdenPedido). Se omite el atributo inventario\_actual  de la tabla Insumo sugerida (la tabla en el diseño implementado se llama MateriaPrima) para normalizar y crear la tabla InventarioMateriaPrima. Se optó por eliminar subtotal de DetalleOrdenCompra (actualmente llamada DetallePedido) y total de OrdenPedido para calcularlos en vistas.

2. ## **Modelar proceso de producción**

* **Herramienta utilizada:** ChatGPT  
* **Prompt:** \> como modelar el proceso de produccion?  
* **Resultado de la IA:**  La IA explicó como es el proceso real y sugirió modelar una entidad para el producto terminado, el proceso de producción y los insumos utilizados.  También mostró modelos de tabla recomendados para cada entidad: Producto(codigo\_producto : VARCHAR(20) \<\<PK\>\> nombre\_producto : VARCHAR(100) descripcion : TEXT fecha\_vencimiento : DATE stock\_actual : INT), Produccion(id\_produccion : INT \<\<PK\>\> fecha\_produccion : DATE cantidad\_producida : INT estado : VARCHAR(20) lote : VARCHAR(30) ), DetalleProduccion(id\_produccion \<\<PK\>\>\<\<FK\>\> codigo\_insumo \<\<PK\>\>\<\<FK\>\> cantidad\_utilizada : INT)  
* **Ajuste Manual / Validación:** Para la entidad Producto se omiten los atributos stock\_actual y fecha\_vencimiento para normalizar el diseño, cada atributo pertenece a las tablas InventarioProducto y Produccion respectivamente. Además, a la entidad Producto se le agregan los atributos contenido\_neto y unidad\_contenido. Se omite el atributo estado de la tabla Produccion y no se implementa la tabla DetalleProduccion porque por medio de la tabla InventarioMateriaPrima se conoce el stock del insumo utilizado en la produccion.

## **2\. Fase Carga de datos**

1. ## **Generación de datos sintéticos para tabla CLIENTE**

* **Herramienta utilizada:** Claude  
* **Prompt:** \>necesito ayuda generando los datos de clientes. La tabla tiene los campos: id\_cliente, tipo\_id, nombres, apellidos, habeas\_data, ciudad, direccion\_op, direccion\_res, telefono, email, representante, tipo\_regimen. Necesito 300 registros, mezcla de empresas y personas naturales.   
* **Resultado de la IA:**  Claude generó un script Python usando la librería Faker con localización colombiana (es\_CO) que produjo 300 registros: 144 empresas (supermercados, tiendas, distribuidoras, restaurantes, etc.) con tipo\_id \= 'NIT' y 156 personas naturales con tipo\_id \= 'CC' o 'CE'. El script generó el archivo cliente\_inserts.sql con un INSERT por fila y también un cliente\_data.csv alternativo. Los datos incluyen nombres de ciudades del Valle del Cauca/Cauca y principales ciudades de Colombia, teléfonos en formato celular colombiano (10 dígitos iniciando en 3\) y correos electrónicos coherentes con el nombre/razón social.  
* **Ajuste Manual / Validación:** Se verificó que ningún campo excediera las longitudes VARCHAR definidas en el esquema (revisión de longitudes máximas por columna). Se ajustó el valor de tipo\_regimen a 'Responsable' / 'No responsable' en lugar de las frases completas de la guía ('Responsable de IVA (Ordinario)') porque no caben en VARCHAR(20). Para las empresas, el campo apellidos se dejó como '-' al ser NOT NULL pero no aplicar a personas jurídicas, y representante repite la dirección operativa, como permite la guía original del proyecto.

2. ## **Generación de datos sintéticos para tabla TRANSPORTE**

* **Herramienta utilizada:** Claude  
* **Prompt:** \>ayudame a generar los datos de transporte   
* **Resultado de la IA:**  Claude generó un script Python que produjo 18 vehículos de flota para distribución, con id\_transporte en formato TRANS-001 a TRANS-018, placas únicas en formato colombiano (3 letras \+ 3 números), tipos de vehículo variados (Camión, Furgón, Camioneta, Tracto-camión, Furgón refrigerado) y capacidades de carga acordes al tipo. Los conductores tienen nombres colombianos generados con Faker. El resultado se entregó en transporte\_inserts.sql.  
* **Ajuste Manual / Validación:** No fue necesario ningún ajuste. Se verificó que todos los valores respetaran los tipos del esquema: VARCHAR(15) para id\_transporte, VARCHAR(10) para placa, VARCHAR(20) para tipo\_vehiculo, NUMERIC(9,2) para capacidad\_carga y VARCHAR(60) para conductor. Se incluyó el tipo Furgón refrigerado porque es relevante para el negocio de Alpina (productos lácteos que requieren cadena de frío).

3. ## **Generación de datos sintéticos para tabla NUTRIENTE**

* **Herramienta utilizada:** Claude  
* **Prompt:** \>siguiendo por esa linea necesito que me ayudes con nutriente   
* **Resultado de la IA:**  Claude identificó que esta tabla es un catálogo fijo (no requiere generación sintética) y creó directamente los 15 registros correspondientes a los nutrientes definidos en la tabla info\_nutricional del Avance 2, con sus unidades de medida correctas según el estándar de etiquetado nutricional colombiano (RTE 2964): kcal para calorías, g para macronutrientes, mg para sodio/hierro/calcio/zinc y mcg para vitaminas A y D. El resultado se entregó en nutriente\_inserts.sql.  
* **Ajuste Manual / Validación:** No fue necesario ningún ajuste. Se verificó que el orden de inserción coincidiera con el que después se usaría en detalle\_info\_nutricional para referenciar los id\_nutriente por posición (1=Calorías ... 15=Zinc), dado que id\_nutriente es SERIAL.

4. ## **Generación de datos sintéticos para tabla INFO\_NUTRICIONAL Y DETALLE\_INFO\_NUTRICIONAL**

* **Herramienta utilizada:** Claude  
* **Prompt:** \>ahora, siguiendo por esa linea necesito que me ayudes con info\_nutricional y detalle\_info\_nutricional, para poder generarlas te adjunto los datos de producto y nutriente  
* **Resultado de la IA:**  Claude generó un script Python que produjo 30 registros para info\_nutricional (uno por cada producto real de Alpina) y 450 registros para detalle\_info\_nutricional (15 nutrientes × 30 productos). Para info\_nutricional se definió el tamaño de porción y unidad coherente con cada tipo de producto (leches en 240 ml/vaso, yogures en el peso completo del empaque, etc.). Para detalle\_info\_nutricional se usaron 15 perfiles nutricionales distintos por categoría de producto (leche entera, descremada, yogurt griego, Finesse Tres Ceros, etc.) con valores aproximados a etiquetas reales de productos lácteos colombianos, más una variación aleatoria de ±5% para que productos de la misma categoría no tuvieran valores idénticos.  
* **Ajuste Manual / Validación:** Se verificó que los valores nutricionales fueran coherentes por categoría: por ejemplo, Finesse Griego Tres Ceros con 0g de grasa y 0g de azúcar (coherente con su nombre comercial), y los Bon Yurt / Yogo Yogo (línea infantil) con mayor cantidad de azúcares añadidos. Se confirmó que los id\_nutriente referenciados en detalle\_info\_nutricional coincidieran con el orden de inserción del catálogo generado en el punto anterior.

5. ## **Generación de datos sintéticos para tabla FACTURA**

* **Herramienta utilizada:** Claude  
* **Prompt:** \>Ayúdame a generar factura, te adjunto los datos de cliente y producto \[archivos adjuntos\]. Necesito 1000 facturas para el último año.  
* **Resultado de la IA:** Claude generó un script Python que leyó los 300 clientes del archivo cliente\_inserts.sql y produjo 1000 facturas con sesgos estadísticos intencionales: (1) empresas con NIT compran con 4 veces más frecuencia que personas naturales, (2) distribución tipo Pareto donde pocos clientes concentran muchas compras (el cliente con más facturas acumuló 47), (3) tendencia de crecimiento hacia los meses más recientes, (4) picos en viernes/sábado, días de quincena (1, 2, 15, 16, 30, 31\) y temporadas alta de diciembre-enero y junio-julio, (5) horario comercial realista con pico entre 11am y 4pm. El numero\_factura es consecutivo único (5001-6000) y los datos del vendedor (NIT, razón social, dirección de Alpina) se repiten en todas las facturas. El resultado se entregó en factura\_inserts.sql.  
* **Ajuste Manual / Validación:** Se usó la versión normalizada de factura del Avance 3 (sin columnas subtotal, iva\_total, total\_pagar que se eliminaron por dependencia transitiva). Se verificó que todos los id\_cliente referenciados existieran en la tabla cliente. Se usó el NIT real de Alpina (860005224-6) y la dirección de la planta de Sopó como datos del vendedor. El campo id\_factura no se incluye en el INSERT porque es SERIAL y PostgreSQL lo genera automáticamente.

## **3\. Fase de Desarrollo de App**

1. ## **Creación de proyecto Django**

* **Herramienta utilizada:** ChatGPT  
* **Prompt:** \> la creacion del proyecto django lo hace una sola persona?  
* **Resultado de la IA:**  La IA suministró un flujo de trabajo recomendado en donde me daba los comandos para crear el proyecto y un paso a paso para instalar Django  
* **Ajuste Manual / Validación:** No hubo un ajuste manual, todo se ejecutó correctamente.

2. ## **Conexión de base de datos a Django**

* **Herramienta utilizada:** Claude  
* **Prompt:** \> me puedes ayudar a conectar desde cero mi base de datos en postgres con tablas ya diseñadas con django  
* **Resultado de la IA:** Me dio dos opciones para configurar el bloque DATABASES en [settings.py](http://settings.py), una opción utilizando variables de entorno y otra sin las variables de entorno. Luego me dio el siguiente comando para que Django genere los modelos de las tablas: python manage.py inspectdb \> miapp/models.py  
* **Ajuste Manual / Validación:** Elegí la opción de configuración con variables de entorno y los modelos se generaron correctamente.

3. ## **Paso a paso para hacer una aplicación CRUD**

* **Herramienta utilizada:** Claude  
* **Prompt:** \>ahora que tengo la base de datos conectada a django, cual seria el paso a seguir para hacer una aplicacion crud? La aplicación web debe proporcionar interfaces completas para el Registro (Create), Consulta (Read), Actualización (Update) y Eliminación (Delete) de las cinco entidades principales: Clientes, Proveedores, Productos/Insumos, Facturas y Órdenes de Pedido. Sin embargo, para garantizar la consistencia de la información y cumplir con los estándares de auditoría de las empresas colombianas, se deben seguir estas reglas lógicas: 1\. Actualización (Update): Los usuarios podrán corregir datos (como la dirección de un cliente o el tiempo de entrega de un proveedor). No obstante, campos críticos como el NIT/Cédula o el Número de Factura deben estar protegidos para evitar inconsistencias en el historial contable. 2\. Eliminación (Delete) y Reglas de Integridad: El sistema debe impedir la eliminación de un Proveedor o Cliente si este tiene Facturas u Órdenes de Pedido asociadas (Integridad Referencial). Para los productos, se recomienda implementar una "Eliminación Lógica" (un campo booleano activo/inactivo) en lugar de borrar el registro físico, para no perder el histórico de movimientos de inventario. 3\. Gestión de Documentos: Mientras que los Clientes y Productos permiten una gestión CRUD estándar, las Facturas y Órdenes de Pedido, una vez finalizadas y guardadas, generalmente no deben ser eliminables ni editables (según la normativa de Facturación Electrónica en Colombia), para asegurar que el rastro de la transacción sea inalterable.  
* **Resultado de la IA:**  La IA suministró un flujo de trabajo recomendado y unas plantillas de ejemplo para bloquear la edición de NIT/Cedula de Cliente, me sugirió  la opción de crear un superusuario, me dio unas plantillas para forms, views, urls, templates (para listar, hacer formularios, eliminar). Me dio un comando para probar el CRUD: python manage.py runserver.  
* **Ajuste Manual / Validación:** Las plantillas me sirvieron para el CRUD de clientes y no opte por crear un superusuario porque no lo vi necesario para el proyecto. 

4. ## **Pregunta sobre GitHub**

* **Herramienta utilizada:** Claude  
* **Prompt:** \> como puedo cambiarle el nombre a una rama, dentro de ella se crearon las apps de producto y factura  
* **Resultado de la IA:** Me dio el siguiente comando para cambiar el nombre a la rama: git branch \-m nuevo-nombre-rama  
* **Ajuste Manual / Validación:** Utilice el comando y si funcionó.

5. ## **Pregunta sobre app de iva y marca**

* **Herramienta utilizada:** Claude  
* **Prompt:** \> no me aparece la marca ni el iva del producto porque no he creado las apps para iva y marca?  
* **Resultado de la IA:** Me dio los siguientes comandos para asegurar que los datos estén cargados: 

python manage.py shell  
from apps.producto.models import Producto  \# o donde esté Producto  
p \= Producto.objects.first()  
print(p.id\_marca)  
print(p.id\_iva)  
Si te da un objeto (ej. `MarcaProducto object (1)`) → sí hay datos, el problema es solo de visualización en el template.  
Si te da `None` → el producto no tiene marca/iva asignada (dato faltante, no error de código).  
Si te da un error (`DoesNotExist`, `ImportError`, etc.) → ahí sí hay un problema estructural.

Luego me dio unas lineas de codigo para agregarlos a los modelos de MarcaProducto e Iva :

    def \_\_str\_\_(self):  
        return self.nombre  
   
  def \_\_str\_\_(self):  
        return self.categoria  \# o el campo que quieras mostrar

* **Ajuste Manual / Validación:** No ejecute los comandos para comprobar que los datos estén cargados porque eso ya lo había comprobado desde pgAdmin en la anterior entrega. Simplemente utilice las líneas de código que la IA me dió para mostrar los datos de esos campos en la interfaz.

6. ## **Solución de error**

* **Herramienta utilizada:** Claude  
* **Prompt:** \> SystemCheckError: System check identified some issues:

ERRORS:  
factura.DetalleFactura.id\_producto: (fields.E304) Reverse accessor 'Producto.detallefactura\_set' for 'factura.DetalleFactura.id\_producto' clashes with reverse accessor for 'producto.DetalleFactura.id\_producto'.  
        HINT: Add or change a related\_name argument to the definition for 'factura.DetalleFactura.id\_producto' or 'producto.DetalleFactura.id\_producto'.  
factura.Factura.id\_cliente: (fields.E304) Reverse accessor 'Cliente.factura\_set' for 'factura.Factura.id\_cliente' clashes with reverse accessor for 'terceros.Factura.id\_cliente'.

* **Resultado de la IA:** La IA me respondió que tengo modelos duplicados: Cuando moviste código a las apps nuevas, copiaste las clases pero no las borraste de donde estaban antes — entonces ahora Django ve la misma tabla definida dos veces en dos apps distintas, y no sabe cuál es la "real".

Y como solución, me recomendó eliminar las copias duplicadas, dejando solo UNA versión de cada modelo.

* **Ajuste Manual / Validación:** Revisé cada archivo de la app Producto y Factura, eliminé los modelos duplicados y algunos imports innecesarios.

7. ## **CRUD de proveedores**

* **Herramienta utilizada:** Claude  
* **Prompt:** \>ayudame a hacer el crud de proveedores" (junto con el modelo Proveedor ya definido con managed \= False)  
* **Resultado de la IA:** Generó el forms.py, views.py (con vistas basadas en función), urls.py y los templates (lista, formulario, confirmar\_eliminar) siguiendo el mismo patrón que ya se había usado en el CRUD de Clientes, incluyendo un modelo de solo lectura OrdenPedido para poder validar que no se elimine un proveedor con órdenes de pedido asociadas (integridad referencial pedida en el enunciado).  
* **Ajuste Manual / Validación:** Se corrigió la ubicación de los archivos de templates (debían ir dentro de templates/proveedor/, no en templates/), y se probó cada ruta manualmente en el navegador para confirmar que el CRUD completo (crear, ver, editar, eliminar, buscar, paginar) funcionara contra la base de datos real.

8. ## **Depuración de error de módulos tras fusión de ramas**

* **Herramienta utilizada:** Claude  
* **Prompt:** \> se pegó directamente el traceback: ModuleNotFoundError: No module named 'apps.terceros'  
* **Resultado de la IA:** Explicó que la carpeta apps/terceros se había renombrado a apps/clientes en algún punto (probablemente durante un merge), pero apps.py, core/settings.py, core/urls.py y apps/factura/models.py seguían referenciando el nombre viejo apps.terceros, y dio la ubicación exacta de cada una de las 4 correcciones necesarias.  
* **Ajuste Manual / Validación:** Se corrigieron los 4 archivos uno por uno, verificando después de cada corrección con python manage.py runserver, ya que el error cambiaba de archivo cada vez que se arreglaba el anterior.

9. ## **Resolución de conflictos con git al fusionar ramas del equipo**

* **Herramienta utilizada:** Claude  
* **Prompt:** \>consultas sobre cómo fusionar la rama feature/producto-factura de una compañera dentro de mi rama y qué hacer cuando GitHub marcó "Can't automatically merge"  
* **Resultado de la IA:** Explicó la diferencia entre un conflicto real (marcas \<\<\<\<\<\<\<, \=======, \>\>\>\>\>\>\> en el código) y la vista normal de comparación de archivos de un Pull Request, y guió la resolución manual del conflicto en core/settings.py y core/urls.py, donde ambas ramas habían agregado apps distintas (apps.proveedor vs. apps.producto/apps.factura) en el mismo lugar del archivo.  
* **Ajuste Manual / Validación:** Se unieron ambas listas de INSTALLED\_APPS y urlpatterns manualmente en VS Code, se eliminaron las marcas de conflicto, y se confirmó el merge con git add \+ git commit antes de subir con git push.

10. ## **Construcción de la página de inicio (home)**

* **Herramienta utilizada:** Claude  
* **Prompt:** \> Como implemento la página principal para ya no tener que ir a rutas específicas y todo quede integrado en la misma página.  
* **Resultado de la IA:** Generó core/views.py, la ruta raíz en core/urls.py, un templates/home.html con tarjetas hacía cada módulo, y un navbar actualizado en templates/base.html.  
* **Ajuste Manual / Validación:** Al integrar el home con el código ya fusionado de los demás compañeros (que habían agregado los módulos de Facturas, Órdenes de Pedido e Inventario), se depuró un AttributeError: module 'core.views' has no attribute 'home' causado porque el archivo core/views.py no se había guardado correctamente, y se actualizaron los links del home/navbar para apuntar a las rutas reales que ya existían en el proyecto integrado.

11. ## **Corrección de decimales**

* **Herramienta utilizada:** Claude  
* **Prompt:** \> ayudame a corregir los DecimalField  
* **Resultado de la IA:** Explicó que inspectdb no pudo determinar la precisión real de esas columnas (normalmente porque son columnas calculadas dentro de una vista SQL) y me dio números para los campos max\_digits y decimal\_places.   
* **Ajuste Manual / Validación:** Utilice los números que me sugirió,

12. ## **CRUD de Clientes**

* **Herramienta utilizada:** Claude  
* **Prompt:** \> me ayudas a hacer el crud de clientes: (se pegó el modelo de Cliente que generó Django.  
* **Resultado de la IA:** Me dió un archivo [forms.py](http://forms.py), views.py, [urls.py](http://urls.py), templates html para listar, para el formulario, detalle y confirmación de borrado.  
* **Ajuste Manual / Validación:** Implemente todos los archivos solo que le cambie el nombre de la carpeta.

