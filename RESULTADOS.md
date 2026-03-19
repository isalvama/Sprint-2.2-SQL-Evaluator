# 📊 Análisis de Consultas SQL


## 📈 Resumen
✅ 31 correctas de 40 queries

## ✅ Query 1: Correcto

⏱ Tiempo: 0.42 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 2: Correcto

⏱ Tiempo: 0.32 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 3: Correcto

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

🚨 **Problemas detectados:**
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ✅ Query 4: Correcto

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 5: Correcto

⏱ Tiempo: 0.32 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 6: Correcto

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 7: Correcto

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 8: Correcto

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 9: Correcto

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 10: Correcto

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 11: Correcto

⏱ Tiempo: 0.31 ms
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

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 15: Correcto

⏱ Tiempo: 0.29 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 16: Correcto

⏱ Tiempo: 0.28 ms
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

⏱ Tiempo: 0.29 ms
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

⏱ Tiempo: 0.31 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 21: Correcto

⏱ Tiempo: 0.35 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ❌ Query 22: Incorrecto
```diff
--- 
+++ 
@@ -1,12 +1,12 @@
 nombre | precio | nombre del fabricante
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

⏱ Tiempo: 0.32 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ❌ Query 23: Incorrecto
```diff
--- 
+++ 
@@ -1,4 +1,4 @@
-codigo | nombre | codigo fabricante | nombre fabricante
+codigo | nombre | codigo_fabricante | nombre del fabricante
 1.00 | Disco duro SATA3 1TB | 5.00 | Seagate
 2.00 | Memoria RAM DDR4 8GB | 6.00 | Crucial
 3.00 | Disco SSD 1 TB | 4.00 | Samsung
```

⏱ Tiempo: 0.31 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ✅ Query 24: Correcto

⏱ Tiempo: 0.32 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ✅ Query 25: Correcto

⏱ Tiempo: 0.37 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ✅ Query 26: Correcto

⏱ Tiempo: 0.32 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ✅ Query 27: Correcto

⏱ Tiempo: 0.33 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ✅ Query 28: Correcto

⏱ Tiempo: 0.34 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ✅ Query 29: Correcto

⏱ Tiempo: 0.37 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ✅ Query 30: Correcto

⏱ Tiempo: 0.34 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ✅ Query 31: Correcto

⏱ Tiempo: 0.32 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ✅ Query 32: Correcto

⏱ Tiempo: 0.35 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

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

⏱ Tiempo: 0.33 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ✅ Query 34: Correcto

⏱ Tiempo: 0.43 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante

---

## ✅ Query 35: Correcto

⏱ Tiempo: 0.39 ms
✅ Se usó índice(s) en la consulta: codigo_fabricante

---

## ❌ Query 36: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,12 @@
-codigo | nombre | precio | codigo_fabricante
-8.00 | Portátil Yoga 520 | 559.00 | 2.00
-9.00 | Portátil Ideapd 320 | 444.00 | 2.00
+codigo | nombre | precio | codigo_fabricante | codigo | nombre
+11.00 | Impresora HP Laserjet Pro M26nw | 180.00 | 3.00 | 2.00 | Lenovo
+10.00 | Impresora HP Deskjet 3720 | 59.99 | 3.00 | 2.00 | Lenovo
+9.00 | Portátil Ideapd 320 | 444.00 | 2.00 | 2.00 | Lenovo
+8.00 | Portátil Yoga 520 | 559.00 | 2.00 | 2.00 | Lenovo
+7.00 | Monitor 27 LED Full HD | 245.99 | 1.00 | 2.00 | Lenovo
+6.00 | Monitor 24 LED Full HD | 202.00 | 1.00 | 2.00 | Lenovo
+5.00 | GeForce GTX 1080 Xtreme | 755.00 | 6.00 | 2.00 | Lenovo
+4.00 | GeForce GTX 1050Ti | 185.00 | 7.00 | 2.00 | Lenovo
+3.00 | Disco SSD 1 TB | 150.99 | 4.00 | 2.00 | Lenovo
+2.00 | Memoria RAM DDR4 8GB | 120.00 | 6.00 | 2.00 | Lenovo
+1.00 | Disco duro SATA3 1TB | 86.99 | 5.00 | 2.00 | Lenovo
```

⏱ Tiempo: 0.40 ms
🔍 No se usó ningún índice en esta consulta.

🚨 **Problemas detectados:**
🚨 `JOIN` sin índice. Revisar claves foráneas e índices.
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ❌ Query 37: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,10 @@
-codigo | nombre | precio | codigo_fabricante
-8.00 | Portátil Yoga 520 | 559.00 | 2.00
+codigo | nombre | precio | codigo_fabricante | codigo | nombre
+8.00 | Portátil Yoga 520 | 559.00 | 2.00 | 1.00 | Asus
+8.00 | Portátil Yoga 520 | 559.00 | 2.00 | 2.00 | Lenovo
+8.00 | Portátil Yoga 520 | 559.00 | 2.00 | 3.00 | Hewlett-Packard
+8.00 | Portátil Yoga 520 | 559.00 | 2.00 | 4.00 | Samsung
+8.00 | Portátil Yoga 520 | 559.00 | 2.00 | 5.00 | Seagate
+8.00 | Portátil Yoga 520 | 559.00 | 2.00 | 6.00 | Crucial
+8.00 | Portátil Yoga 520 | 559.00 | 2.00 | 7.00 | Gigabyte
+8.00 | Portátil Yoga 520 | 559.00 | 2.00 | 8.00 | Huawei
+8.00 | Portátil Yoga 520 | 559.00 | 2.00 | 9.00 | Xiaomi
```

⏱ Tiempo: 0.43 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

🚨 **Problemas detectados:**
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ✅ Query 38: Correcto

⏱ Tiempo: 0.35 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ❌ Query 39: Incorrecto
```diff
--- 
+++ 
@@ -1,2 +1,2 @@
 nombre
-Impresora HP Deskjet 3720
+Portátil Yoga 520
```

⏱ Tiempo: 0.36 ms
✅ Se usó índice(s) en la consulta: PRIMARY, codigo_fabricante

---

## ❌ Query 40: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,2 @@
-codigo | nombre | precio | codigo_fabricante
-5.00 | GeForce GTX 1080 Xtreme | 755.00 | 6.00
-8.00 | Portátil Yoga 520 | 559.00 | 2.00
+nombre
+Portátil Yoga 520
```

## ❌ Query 40: Error
- **Descripción**: 2014 (HY000): Commands out of sync; you can't run this command now

