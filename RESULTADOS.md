# 📊 Análisis de Consultas SQL


## 📈 Resumen
✅ 16 correctas de 39 queries

## ❌ Query 1: Error
- **Descripción**: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--- 1. Llista el nom de tots els productes que hi ha en la taula producto.
SELEC' at line 1


## ✅ Query 2: Correcto

⏱ Tiempo: 0.44 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 3: Incorrecto
```diff
--- 
+++ 
@@ -1,12 +1,5 @@
-codigo | nombre | precio | codigo_fabricante
-1.00 | Disco duro SATA3 1TB | 86.99 | 5.00
-2.00 | Memoria RAM DDR4 8GB | 120.00 | 6.00
-3.00 | Disco SSD 1 TB | 150.99 | 4.00
-4.00 | GeForce GTX 1050Ti | 185.00 | 7.00
-5.00 | GeForce GTX 1080 Xtreme | 755.00 | 6.00
-6.00 | Monitor 24 LED Full HD | 202.00 | 1.00
-7.00 | Monitor 27 LED Full HD | 245.99 | 1.00
-8.00 | Portátil Yoga 520 | 559.00 | 2.00
-9.00 | Portátil Ideapd 320 | 444.00 | 2.00
-10.00 | Impresora HP Deskjet 3720 | 59.99 | 3.00
-11.00 | Impresora HP Laserjet Pro M26nw | 180.00 | 3.00
+COLUMN_NAME
+codigo
+nombre
+precio
+codigo_fabricante
```

⏱ Tiempo: 0.80 ms
✅ Se usó índice(s) en la consulta: PRIMARY,schema_id, PRIMARY,character_set_id, PRIMARY,catalog_id, table_id,table_id_2,collation_id, PRIMARY

---

## ✅ Query 4: Correcto

⏱ Tiempo: 0.31 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 5: Incorrecto
```diff
--- 
+++ 
@@ -1,12 +1,12 @@
-nom del producte | euros | dòlars
-Disco duro SATA3 1TB | 86.99 | 95.69
+nombre | euros | dòlars
+Disco duro SATA3 1TB | 86.99 | 96.00
 Memoria RAM DDR4 8GB | 120.00 | 132.00
-Disco SSD 1 TB | 150.99 | 166.09
-GeForce GTX 1050Ti | 185.00 | 203.50
-GeForce GTX 1080 Xtreme | 755.00 | 830.50
-Monitor 24 LED Full HD | 202.00 | 222.20
-Monitor 27 LED Full HD | 245.99 | 270.59
-Portátil Yoga 520 | 559.00 | 614.90
-Portátil Ideapd 320 | 444.00 | 488.40
-Impresora HP Deskjet 3720 | 59.99 | 65.99
+Disco SSD 1 TB | 150.99 | 166.00
+GeForce GTX 1050Ti | 185.00 | 204.00
+GeForce GTX 1080 Xtreme | 755.00 | 831.00
+Monitor 24 LED Full HD | 202.00 | 222.00
+Monitor 27 LED Full HD | 245.99 | 271.00
+Portátil Yoga 520 | 559.00 | 615.00
+Portátil Ideapd 320 | 444.00 | 488.00
+Impresora HP Deskjet 3720 | 59.99 | 66.00
 Impresora HP Laserjet Pro M26nw | 180.00 | 198.00
```

⏱ Tiempo: 0.34 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 6: Correcto

⏱ Tiempo: 0.31 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 7: Correcto

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 8: Correcto

⏱ Tiempo: 0.32 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 9: Correcto

⏱ Tiempo: 0.31 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 10: Incorrecto
```diff
--- 
+++ 
@@ -1,4 +1,4 @@
-nombre | precio truncado
+nombre | precio
 Disco duro SATA3 1TB | 86.00
 Memoria RAM DDR4 8GB | 120.00
 Disco SSD 1 TB | 150.00
```

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 11: Correcto

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 12: Correcto

⏱ Tiempo: 0.30 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante

---

## ✅ Query 13: Correcto

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 14: Correcto

⏱ Tiempo: 0.31 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 15: Correcto

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 16: Correcto

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

🚨 **Problemas detectados:**
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ❌ Query 17: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,3 @@
 codigo | nombre
+3.00 | Hewlett-Packard
 4.00 | Samsung
-5.00 | Seagate
```

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

🚨 **Problemas detectados:**
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ✅ Query 18: Correcto

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 19: Correcto

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 20: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,2 @@
 nombre
-Portátil Yoga 520
-Portátil Ideapd 320
+Lenovo
```

⏱ Tiempo: 0.32 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ❌ Query 21: Incorrecto
```diff
--- 
+++ 
@@ -1,4 +1,4 @@
-nombre | precio | nombre del fabricante
+nombre | precio | nombre
 Disco duro SATA3 1TB | 86.99 | Seagate
 Memoria RAM DDR4 8GB | 120.00 | Crucial
 Disco SSD 1 TB | 150.99 | Samsung
```

⏱ Tiempo: 0.32 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 22: Incorrecto
```diff
--- 
+++ 
@@ -1,12 +1,12 @@
-nombre | precio | nombre del fabricante
+nombre | precio | nombre
+Disco duro SATA3 1TB | 86.99 | Seagate
+Disco SSD 1 TB | 150.99 | Samsung
+GeForce GTX 1050Ti | 185.00 | Gigabyte
+GeForce GTX 1080 Xtreme | 755.00 | Crucial
+Impresora HP Deskjet 3720 | 59.99 | Hewlett-Packard
+Impresora HP Laserjet Pro M26nw | 180.00 | Hewlett-Packard
+Memoria RAM DDR4 8GB | 120.00 | Crucial
 Monitor 24 LED Full HD | 202.00 | Asus
 Monitor 27 LED Full HD | 245.99 | Asus
-Memoria RAM DDR4 8GB | 120.00 | Crucial
-GeForce GTX 1080 Xtreme | 755.00 | Crucial
-GeForce GTX 1050Ti | 185.00 | Gigabyte
-Impresora HP Deskjet 3720 | 59.99 | Hewlett-Packard
-Impresora HP Laserjet Pro M26nw | 180.00 | Hewlett-Packard
+Portátil Ideapd 320 | 444.00 | Lenovo
 Portátil Yoga 520 | 559.00 | Lenovo
-Portátil Ideapd 320 | 444.00 | Lenovo
-Disco SSD 1 TB | 150.99 | Samsung
-Disco duro SATA3 1TB | 86.99 | Seagate
```

⏱ Tiempo: 0.33 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 23: Incorrecto
```diff
--- 
+++ 
@@ -1,4 +1,4 @@
-codigo | nombre | codigo fabricante | nombre fabricante
+codigo | nombre | codigo_fabricante | nombre
 1.00 | Disco duro SATA3 1TB | 5.00 | Seagate
 2.00 | Memoria RAM DDR4 8GB | 6.00 | Crucial
 3.00 | Disco SSD 1 TB | 4.00 | Samsung
```

⏱ Tiempo: 0.32 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 24: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,2 @@
-nombre | precio | fabricant
+nombre | precio | nombre
 Impresora HP Deskjet 3720 | 59.99 | Hewlett-Packard
```

⏱ Tiempo: 0.33 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 25: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,2 @@
-nombre | precio | fabricante
+nombre | precio | nombre
 GeForce GTX 1080 Xtreme | 755.00 | Crucial
```

⏱ Tiempo: 0.35 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ✅ Query 26: Correcto

⏱ Tiempo: 0.32 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ✅ Query 27: Correcto

⏱ Tiempo: 0.34 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 28: Incorrecto
```diff
--- 
+++ 
@@ -1,6 +1,3 @@
-nombre | precio | fabricante
-Disco duro SATA3 1TB | 86.99 | Seagate
+nombre | precio | nombre
 Monitor 24 LED Full HD | 202.00 | Asus
 Monitor 27 LED Full HD | 245.99 | Asus
-Impresora HP Deskjet 3720 | 59.99 | Hewlett-Packard
-Impresora HP Laserjet Pro M26nw | 180.00 | Hewlett-Packard
```

⏱ Tiempo: 0.37 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 29: Incorrecto
```diff
--- 
+++ 
@@ -1,4 +1,4 @@
-nombre | precio | fabricante
+nombre | precio | nombre
 Disco duro SATA3 1TB | 86.99 | Seagate
 Monitor 24 LED Full HD | 202.00 | Asus
 Monitor 27 LED Full HD | 245.99 | Asus
```

⏱ Tiempo: 0.35 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 30: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,3 @@
-nombre | precio | fabricante
+nombre | precio | nombre
 Disco duro SATA3 1TB | 86.99 | Seagate
 GeForce GTX 1050Ti | 185.00 | Gigabyte
```

⏱ Tiempo: 0.34 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 31: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,3 @@
-nombre | precio | fabricante
+nombre | precio | nombre
 Impresora HP Deskjet 3720 | 59.99 | Hewlett-Packard
 Impresora HP Laserjet Pro M26nw | 180.00 | Hewlett-Packard
```

⏱ Tiempo: 0.33 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 32: Incorrecto
```diff
--- 
+++ 
@@ -1,4 +1,4 @@
-nombre | precio | fabricante
+nombre | precio | nombre
 GeForce GTX 1080 Xtreme | 755.00 | Crucial
 Portátil Yoga 520 | 559.00 | Lenovo
 Portátil Ideapd 320 | 444.00 | Lenovo
```

⏱ Tiempo: 0.35 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 33: Incorrecto
```diff
--- 
+++ 
@@ -1,8 +1,12 @@
 codigo | nombre
 1.00 | Asus
+1.00 | Asus
 2.00 | Lenovo
+2.00 | Lenovo
+3.00 | Hewlett-Packard
 3.00 | Hewlett-Packard
 4.00 | Samsung
 5.00 | Seagate
 6.00 | Crucial
+6.00 | Crucial
 7.00 | Gigabyte
```

⏱ Tiempo: 0.34 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 34: Incorrecto
```diff
--- 
+++ 
@@ -1,4 +1,4 @@
-fabricante | producto
+nombre | nombre
 Asus | Monitor 27 LED Full HD
 Asus | Monitor 24 LED Full HD
 Lenovo | Portátil Ideapd 320
```

⏱ Tiempo: 0.39 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante

---

## ❌ Query 35: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,3 @@
-fabricante
+nombre
 Huawei
 Xiaomi
```

⏱ Tiempo: 0.36 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante

---

## ❌ Query 36: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,3 @@
-codigo | nombre | precio | codigo_fabricante
-8.00 | Portátil Yoga 520 | 559.00 | 2.00
-9.00 | Portátil Ideapd 320 | 444.00 | 2.00
+nombre
+Portátil Yoga 520
+Portátil Ideapd 320
```

⏱ Tiempo: 0.33 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante, PRIMARY

---

## ❌ Query 37: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,3 @@
-codigo | nombre | precio | codigo_fabricante
-8.00 | Portátil Yoga 520 | 559.00 | 2.00
+codigo | nombre | precio | codigo_fabricante | codigo | nombre
+8.00 | Portátil Yoga 520 | 559.00 | 2.00 | 2.00 | Lenovo
+9.00 | Portátil Ideapd 320 | 444.00 | 2.00 | 2.00 | Lenovo
```

## ❌ Query 37: Error
- **Descripción**: 2014 (HY000): Commands out of sync; you can't run this command now


## ❌ Query 38: Error
- **Descripción**: 2014 (HY000): Commands out of sync; you can't run this command now


## ❌ Query 39: Error
- **Descripción**: 2014 (HY000): Commands out of sync; you can't run this command now

