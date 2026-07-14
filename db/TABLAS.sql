-- =====================================================================
-- Script de creación de esquema PostgreSQL
-- Generado a partir de los modelos Django (models.py)
-- =====================================================================
-- Notas generales:
--  * Los DecimalField con max_digits=65535 (usados en las vistas Django
--    para columnas calculadas) se traducen a NUMERIC sin precisión fija,
--    ya que 65535 no es un valor real de precisión sino el resultado de
--    columnas "computadas" que Django no pudo inspeccionar bien.
--  * Las tablas vw_* del models.py en realidad son VISTAS en la base de
--    datos (managed=False + nombre vw_ lo indican). Se recrean aquí como
--    CREATE VIEW, no como tablas, con la lógica de negocio más razonable
--    inferida de sus columnas. Ajusta la lógica si tu regla de negocio
--    real es distinta.
--  * Las claves primarias compuestas que Django "rompió" (detalle_pedido,
--    inventario_producto) se restauran aquí como PK compuestas reales.
-- =====================================================================

BEGIN;

-- =====================================================================
-- TABLAS SIN DEPENDENCIAS
-- =====================================================================

CREATE TABLE sede (
    id_sede         SERIAL PRIMARY KEY,
    nombre          VARCHAR(30) NOT NULL,
    tipo_sede       VARCHAR(20) NOT NULL,
    ciudad          VARCHAR(20) NOT NULL,
    ubicacion       VARCHAR(50) NOT NULL,
    telefono        VARCHAR(15) NOT NULL
);

CREATE TABLE cargo (
    id_cargo        SERIAL PRIMARY KEY,
    nombre_cargo    VARCHAR(30) NOT NULL UNIQUE,
    descripcion     TEXT NOT NULL
);

CREATE TABLE eps (
    id_eps          SERIAL PRIMARY KEY,
    nombre_eps      VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE fondo_pensiones (
    id_fondo        SERIAL PRIMARY KEY,
    nombre_fondo    VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE cuenta_bancaria (
    id_cuenta       VARCHAR(30) PRIMARY KEY,
    nombre_banco    VARCHAR(30) NOT NULL,
    tipo_cuenta     VARCHAR(30) NOT NULL,
    num_cuenta      VARCHAR(30) NOT NULL
);

CREATE TABLE cliente (
    id_cliente      VARCHAR(20) PRIMARY KEY,
    tipo_id         VARCHAR(20) NOT NULL,
    nombres         VARCHAR(50) NOT NULL,
    apellidos       VARCHAR(50) NOT NULL,
    habeas_data     BOOLEAN NOT NULL,
    ciudad          VARCHAR(20) NOT NULL,
    direccion_op    VARCHAR(50) NOT NULL,
    direccion_res   VARCHAR(50) NOT NULL,
    telefono        VARCHAR(20) NOT NULL,
    email           VARCHAR(50) NOT NULL,
    representante   VARCHAR(60) NOT NULL,
    tipo_regimen    VARCHAR(20) NOT NULL
);

CREATE TABLE marca_producto (
    id_marca        SERIAL PRIMARY KEY,
    nombre_marca    VARCHAR(50)
);

CREATE TABLE iva (
    id_iva          SERIAL PRIMARY KEY,
    categoria_iva   VARCHAR(20) NOT NULL UNIQUE,
    porcentaje      NUMERIC(5,2) NOT NULL
);

CREATE TABLE materia_prima (
    id_insumo       VARCHAR(30) PRIMARY KEY,
    nombre          VARCHAR(50) NOT NULL,
    unidad_medida   VARCHAR(10) NOT NULL,
    demanda_diaria  INTEGER NOT NULL
);

CREATE TABLE nutriente (
    id_nutriente    SERIAL PRIMARY KEY,
    nombre          VARCHAR(50) NOT NULL UNIQUE,
    unidad_medida   VARCHAR(10)
);

CREATE TABLE transporte (
    id_transporte     VARCHAR(15) PRIMARY KEY,
    placa             VARCHAR(10) NOT NULL UNIQUE,
    tipo_vehiculo     VARCHAR(20) NOT NULL,
    capacidad_carga   NUMERIC(9,2) NOT NULL,
    conductor         VARCHAR(60) NOT NULL
);

-- =====================================================================
-- TABLAS CON DEPENDENCIAS DE NIVEL 1
-- =====================================================================

CREATE TABLE bodega (
    id_bodega       SERIAL PRIMARY KEY,
    nombre_bodega   VARCHAR(30) NOT NULL,
    ubicacion       VARCHAR(30) NOT NULL,
    capacidad       INTEGER NOT NULL,
    id_sede         INTEGER NOT NULL REFERENCES sede(id_sede)
);

CREATE TABLE proveedor (
    id_proveedor        VARCHAR(30) PRIMARY KEY,
    tipo_id             VARCHAR(20) NOT NULL,
    nombre              VARCHAR(50) NOT NULL,
    habeas_data         BOOLEAN NOT NULL,
    ciudad              VARCHAR(20) NOT NULL,
    direccion_op        VARCHAR(60) NOT NULL,
    direccion_res       VARCHAR(60) NOT NULL,
    telefono            VARCHAR(20) NOT NULL UNIQUE,
    email               VARCHAR(40) NOT NULL UNIQUE,
    representante       VARCHAR(60) NOT NULL,
    tipo_regimen        VARCHAR(20) NOT NULL,
    rut                 VARCHAR(60) NOT NULL UNIQUE,
    tiempo_entrega      INTEGER NOT NULL,
    persona_comercial   VARCHAR(60) NOT NULL,
    tipo_proveedor      VARCHAR(30) NOT NULL,
    persona_cartera     VARCHAR(60) NOT NULL,
    persona_logistica   VARCHAR(60) NOT NULL,
    num_dias_pago       INTEGER NOT NULL,
    calificacion        INTEGER,
    id_cuenta           VARCHAR(30) NOT NULL REFERENCES cuenta_bancaria(id_cuenta)
);

CREATE TABLE producto (
    id_producto         VARCHAR(30) PRIMARY KEY,
    nombre              VARCHAR(60) NOT NULL,
    fecha_vencimiento   DATE NOT NULL,
    descripcion         TEXT NOT NULL,
    contenido_neto      NUMERIC(10,1) NOT NULL,
    unidad_contenido    VARCHAR(10) NOT NULL,
    id_marca            INTEGER NOT NULL REFERENCES marca_producto(id_marca),
    id_iva              INTEGER REFERENCES iva(id_iva)
);

CREATE TABLE empleado (
    id_empleado           SERIAL PRIMARY KEY,
    nombres               VARCHAR(50) NOT NULL,
    apellidos             VARCHAR(50) NOT NULL,
    documento             VARCHAR(10) NOT NULL UNIQUE,
    fecha_nacimiento      DATE NOT NULL,
    estado_empleado       VARCHAR(20) NOT NULL,
    telefono              VARCHAR(20) NOT NULL UNIQUE,
    correo                VARCHAR(100) NOT NULL UNIQUE,
    direccion             VARCHAR(50) NOT NULL,
    fecha_contratacion    DATE NOT NULL,
    salario               NUMERIC(10,2) NOT NULL,
    id_cargo              INTEGER NOT NULL REFERENCES cargo(id_cargo),
    id_sede               INTEGER NOT NULL REFERENCES sede(id_sede),
    id_eps                INTEGER NOT NULL REFERENCES eps(id_eps),
    id_fondo              INTEGER NOT NULL REFERENCES fondo_pensiones(id_fondo),
    id_cuenta             VARCHAR(30) NOT NULL REFERENCES cuenta_bancaria(id_cuenta)
);

-- =====================================================================
-- TABLAS CON DEPENDENCIAS DE NIVEL 2
-- =====================================================================

CREATE TABLE info_nutricional (
    id_info_nutricional   VARCHAR(20) PRIMARY KEY,
    id_producto           VARCHAR(30) NOT NULL REFERENCES producto(id_producto),
    tamano_porcion        NUMERIC(6,2) NOT NULL,
    unidad_porcion        VARCHAR(10) NOT NULL,
    numero_porciones      INTEGER NOT NULL
);

CREATE TABLE detalle_info_nutricional (
    id_detalle_nutricional   SERIAL PRIMARY KEY,
    id_info_nutricional      VARCHAR(20) NOT NULL REFERENCES info_nutricional(id_info_nutricional),
    id_nutriente             INTEGER NOT NULL REFERENCES nutriente(id_nutriente),
    valor_100                NUMERIC(6,2) NOT NULL
);

CREATE TABLE inventario_materia_prima (
    id_inventario_materia   VARCHAR(30) PRIMARY KEY,
    stock_actual            NUMERIC(10,2) NOT NULL,
    stock_minimo            NUMERIC(10,2) NOT NULL,
    fecha_actualizacion     DATE NOT NULL,
    id_insumo               VARCHAR(30) NOT NULL REFERENCES materia_prima(id_insumo),
    id_bodega               INTEGER NOT NULL REFERENCES bodega(id_bodega)
);

-- PK compuesta real (Django la redujo a la primera columna)
CREATE TABLE inventario_producto (
    id_bodega       INTEGER NOT NULL REFERENCES bodega(id_bodega),
    id_producto     VARCHAR(30) NOT NULL REFERENCES producto(id_producto),
    stock           NUMERIC(10,2) NOT NULL,
    PRIMARY KEY (id_bodega, id_producto)
);

CREATE TABLE orden_pedido (
    num_orden       SERIAL PRIMARY KEY,
    id_proveedor    VARCHAR(30) NOT NULL REFERENCES proveedor(id_proveedor),
    fecha_pedido    DATE NOT NULL,
    lugar_entrega   VARCHAR(60) NOT NULL,
    estado          VARCHAR(20) NOT NULL
);

CREATE TABLE factura (
    id_factura            SERIAL PRIMARY KEY,
    nit                   VARCHAR(20) NOT NULL,
    razon_social          VARCHAR(40),
    direccion             VARCHAR(60) NOT NULL,
    numero_factura        INTEGER NOT NULL UNIQUE,
    fecha_hora_emision    TIMESTAMP NOT NULL,
    metodo_pago           VARCHAR(20) NOT NULL,
    id_cliente            VARCHAR(20) NOT NULL REFERENCES cliente(id_cliente)
);

CREATE TABLE produccion (
    id_produccion         VARCHAR(30) PRIMARY KEY,
    fecha_produccion      DATE NOT NULL,
    cant_producida        INTEGER NOT NULL,
    lote                  VARCHAR(30) NOT NULL UNIQUE,
    id_producto           VARCHAR(30) NOT NULL REFERENCES producto(id_producto),
    id_sede               INTEGER NOT NULL REFERENCES sede(id_sede),
    fecha_vencimiento     DATE NOT NULL
);

-- =====================================================================
-- TABLAS CON DEPENDENCIAS DE NIVEL 3
-- =====================================================================

-- PK compuesta real (Django la redujo a la primera columna: num_orden)
CREATE TABLE detalle_pedido (
    num_orden         INTEGER NOT NULL REFERENCES orden_pedido(num_orden),
    id_insumo         VARCHAR(30) NOT NULL REFERENCES materia_prima(id_insumo),
    cantidad          INTEGER,
    precio_unitario   NUMERIC(10,2) NOT NULL,
    PRIMARY KEY (num_orden, id_insumo)
);

CREATE TABLE detalle_factura (
    id_detalle_factura   VARCHAR(30) PRIMARY KEY,
    cantidad             INTEGER NOT NULL,
    precio_unitario      NUMERIC(10,2) NOT NULL,
    id_factura           INTEGER NOT NULL REFERENCES factura(id_factura),
    id_producto           VARCHAR(30) NOT NULL REFERENCES producto(id_producto)
);

CREATE TABLE distribucion (
    id_distribucion   VARCHAR(15) PRIMARY KEY,
    fecha_salida      TIMESTAMP NOT NULL,
    fecha_entrega     TIMESTAMP NOT NULL,
    estado            VARCHAR(20) NOT NULL,
    ruta              VARCHAR(60) NOT NULL,
    id_transporte     VARCHAR(15) NOT NULL REFERENCES transporte(id_transporte),
    id_factura        INTEGER NOT NULL REFERENCES factura(id_factura)
);

-- =====================================================================
-- VISTAS (en Django aparecen como modelos vw_*, pero son VIEW reales)
-- =====================================================================

-- Detalle de pedido con subtotal calculado
CREATE OR REPLACE VIEW vw_detalle_pedido AS
SELECT
    dp.num_orden,
    dp.id_insumo,
    dp.cantidad,
    dp.precio_unitario,
    (dp.cantidad * dp.precio_unitario) AS subtotal
FROM detalle_pedido dp;

-- Total por orden de pedido
CREATE OR REPLACE VIEW vw_orden_pedido_total AS
SELECT
    op.num_orden,
    op.id_proveedor,
    op.fecha_pedido,
    op.lugar_entrega,
    op.estado,
    COALESCE(SUM(dp.cantidad * dp.precio_unitario), 0) AS total
FROM orden_pedido op
LEFT JOIN detalle_pedido dp ON dp.num_orden = op.num_orden
GROUP BY op.num_orden, op.id_proveedor, op.fecha_pedido, op.lugar_entrega, op.estado;

-- Estado del inventario de materia prima (días de stock disponibles)
CREATE OR REPLACE VIEW vw_estado_inventario_materia_prima AS
SELECT
    mp.id_insumo,
    mp.nombre,
    mp.unidad_medida,
    imp.stock_actual,
    mp.demanda_diaria,
    CASE
        WHEN mp.demanda_diaria > 0 THEN ROUND(imp.stock_actual / mp.demanda_diaria, 2)
        ELSE NULL
    END AS dias_stock,
    CASE
        WHEN imp.stock_actual <= imp.stock_minimo THEN 'Crítico'
        WHEN mp.demanda_diaria > 0 AND (imp.stock_actual / mp.demanda_diaria) <= 3 THEN 'Bajo'
        ELSE 'Normal'
    END AS estado,
    CASE
        WHEN imp.stock_actual <= imp.stock_minimo THEN 'Reabastecer urgentemente'
        WHEN mp.demanda_diaria > 0 AND (imp.stock_actual / mp.demanda_diaria) <= 3 THEN 'Programar reabastecimiento'
        ELSE 'Sin acción requerida'
    END AS accion_recomendada,
    imp.fecha_actualizacion,
    imp.id_bodega
FROM inventario_materia_prima imp
JOIN materia_prima mp ON mp.id_insumo = imp.id_insumo;

-- Detalle de factura con subtotal e IVA calculados
CREATE OR REPLACE VIEW vw_detalle_factura AS
SELECT
    df.id_detalle_factura,
    df.id_factura,
    df.id_producto,
    p.nombre,
    df.cantidad,
    df.precio_unitario,
    (df.cantidad * df.precio_unitario) AS subtotal,
    i.categoria_iva,
    (df.cantidad * df.precio_unitario * COALESCE(i.porcentaje, 0) / 100) AS iva
FROM detalle_factura df
JOIN producto p ON p.id_producto = df.id_producto
LEFT JOIN iva i ON i.id_iva = p.id_iva;

-- Factura con subtotal, iva total y total a pagar
CREATE OR REPLACE VIEW vw_factura AS
SELECT
    f.id_factura,
    f.numero_factura,
    f.fecha_hora_emision,
    f.nit,
    f.razon_social,
    f.direccion,
    f.metodo_pago,
    f.id_cliente,
    COALESCE(SUM(vdf.subtotal), 0) AS subtotal,
    COALESCE(SUM(vdf.iva), 0) AS iva_total,
    COALESCE(SUM(vdf.subtotal), 0) + COALESCE(SUM(vdf.iva), 0) AS total_pagar
FROM factura f
LEFT JOIN vw_detalle_factura vdf ON vdf.id_factura = f.id_factura
GROUP BY f.id_factura, f.numero_factura, f.fecha_hora_emision, f.nit,
         f.razon_social, f.direccion, f.metodo_pago, f.id_cliente;

COMMIT;
