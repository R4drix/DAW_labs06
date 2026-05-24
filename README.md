# 📚 Sistema de Notas - DAW

## 📌 Descripción
Este proyecto consiste en un sistema de gestión de notas de estudiantes, donde se registran cursos, estudiantes y sus calificaciones. La base de datos está implementada en PostgreSQL y desplegada en Supabase como Backend as a Service.

---

## 🧠 Modelo del sistema

El sistema contiene tres entidades principales:

- **Estudiante**
- **Curso**
- **Nota**

Relaciones:
- Un estudiante puede tener varias notas
- Un curso puede tener varias notas
- La tabla nota relaciona estudiante y curso

---

## 🗄️ Base de datos

Implementada en PostgreSQL con las siguientes tablas:

- curso(codigo_curso, nombre_curso, creditos)
- estudiante(cui, nombre, apellido)
- nota(cui, codigo_curso, fecha, examen_parcial01, examen_parcial02, examen_parcial03, continua01, continua02, continua03)

---

## ☁️ Implementación en Supabase

La base de datos fue migrada a Supabase utilizando un script SQL exportado desde pgAdmin, adaptado para compatibilidad con la nube.

---

## 🔗 Tecnologías usadas

- PostgreSQL
- pgAdmin 4
- Supabase
- GitHub

---

## 📊 Objetivo

Desarrollar un sistema backend funcional en la nube que permita gestionar información académica de estudiantes.

---

## 👨‍💻 Autor

Estudiante DAW - Sistema de Notas
