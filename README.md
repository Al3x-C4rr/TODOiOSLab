# TODOiOSLab — tu primera app iOS

Laboratorio guiado de **120 minutos** para estudiantes con conocimientos básicos de Kotlin/Compose y sin experiencia en Swift. Una app de tareas en SwiftUI, con interfaz preparada y cuatro ejercicios pequeños. Código en inglés, guía y comentarios en español.

## Empieza aquí

1. Crea un **fork** del repositorio de la práctica en tu cuenta de GitHub. Conserva el nombre `TODOiOSLab`.
2. Clona la rama **`main` de tu fork** y crea tu rama de trabajo `lab/tu-alias`. Encontrarás los comandos en el codelab.
3. Abre [`codelab/index.html`](codelab/index.html) desde Finder en cualquier navegador. Si lo estás viendo en GitHub, primero clona: GitHub muestra el HTML como código.
4. Abre **`TODOiOSLab.xcodeproj` de la raíz**, selecciona un iPhone Simulator instalado o tu iPhone preparado según el codelab y ejecuta con ⌘R.
5. Sigue el codelab y entrega un PR de tu rama a **main de tu propio fork**, con captura personalizada.

El codelab te guía paso a paso para configurar Git, completar los ejercicios y abrir tu PR. No necesitas conocer Swift de antemano. Si cambiaste el nombre del fork, adapta la URL y la carpeta de los comandos.

## Requisitos preparados antes de clase

- Mac con **Xcode 27.1** y componentes iniciales preparados. Antes de iniciar los 120 minutos, coordina con el encargado la instalación de un runtime iOS Simulator desde Xcode → Settings → Components, si falta y hay espacio.
- Si no hay espacio, puedes optar por un iPhone con **iOS 17 o posterior** compatible con Xcode, cable de datos y Apple Account propia. Consulta primero las implicaciones de privacidad y los pasos en el codelab; es voluntario. Si prefieres no conectar tu teléfono, pide una Mac preparada o trabajo en pareja.
- Git disponible con las herramientas de Xcode.
- Cuenta de GitHub y acceso a su segundo factor si aplica.
- Internet para fork, autenticación, push y PR. La guía y el recorrido en simulador funcionan offline después de preparar Xcode y su runtime; la configuración inicial de un iPhone y la firma pueden requerir internet.

La app no requiere paquetes externos ni CocoaPods. Prepara Xcode y el simulador o iPhone antes de comenzar los 120 minutos. Para ejecutar en simulador no necesitas una Apple Account ni una membresía de Apple Developer. El deployment target es **iOS 17**; usa un destino compatible.

## Qué está listo y qué completarás

| Listo desde el inicio | Tu trabajo |
| --- | --- |
| Pantalla SwiftUI, lista de ejemplos y borrado | Nombre, símbolo y color |
| Campo de texto y validación | Agregar tarea y limpiar el campo: 2 líneas |
| Filas con estado visual | Completar/reabrir: 1 línea |
| Cabecera con contador | Calcular pendientes: 1 expresión |
| Contenedor, modelo, consulta y manejo de errores SwiftData | Extra: activar pantalla, insertar y eliminar |

La versión inicial **compila**. Agregar y completar son intencionalmente inactivos, y el contador empieza en 0. El recorrido principal guarda en memoria: las tareas vuelven a sus ejemplos al relanzar. El reto SwiftData usa almacenamiento local y parte de una lista vacía independiente.

## Estructura

```text
TODOiOSLab.xcodeproj/      Proyecto inicial que debes abrir
TODOiOSLab/                Código de la app
  LabSettings.swift       Personalización
  TodoScreen.swift        Ejercicios principales
  Todo.swift              Modelo simple
  TodoComponents.swift    Interfaz preparada
  TODOiOSLabApp.swift      Punto de entrada
  Persistence/            Reto opcional preparado
codelab/index.html        Guía en español, disponible offline
.github/                  Plantilla de PR
```
