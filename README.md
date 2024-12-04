## *Francisco Ogando 2021-0160*


## CRUD con Flutter y Firebase

---

### **Descripción del Proyecto**

Este repositorio contiene la implementación de un sistema CRUD (Create, Read, Update, Delete) desarrollado en **Flutter** con integración de **Firebase** como backend. El proyecto es ideal para gestionar datos básicos de una aplicación móvil, como registros de usuarios, tareas, productos, entre otros. Está diseñado para ser una base sólida sobre la cual desarrollar aplicaciones móviles escalables, modernas y altamente funcionales.

El CRUD incluye las siguientes funcionalidades:
- **Crear**: Registrar nuevos elementos en la base de datos.
- **Leer**: Consultar y visualizar los datos almacenados.
- **Actualizar**: Modificar datos existentes.
- **Eliminar**: Borrar datos no deseados.

---

### **Importancia de un CRUD**

Un CRUD es una funcionalidad esencial en prácticamente todas las aplicaciones que manejan datos dinámicos. Es el núcleo de la mayoría de los sistemas interactivos, desde aplicaciones de comercio electrónico hasta sistemas de gestión empresarial. 

**Importancia clave**:
1. **Gestión de datos eficiente**: Permite manejar información de manera estructurada.
2. **Escalabilidad**: Sirve como base para construir aplicaciones más complejas.
3. **Interacción del usuario**: Proporciona una interfaz para que los usuarios gestionen sus propios datos.
4. **Adaptabilidad**: Los CRUD se pueden integrar con bases de datos relacionales y no relacionales.

**Usos de Flutter y Firebase**:
- **Flutter** permite crear interfaces de usuario multiplataforma (iOS, Android, web, y desktop) con una única base de código.
- **Firebase** ofrece herramientas como base de datos en tiempo real, Firestore, autenticación y almacenamiento de archivos, que simplifican el desarrollo y despliegue de aplicaciones.

Con estas tecnologías, un CRUD puede usarse en aplicaciones como:
- Gestión de usuarios (registro, edición, eliminación).
- Inventarios de productos o servicios.
- Sistemas de tareas pendientes o seguimiento de proyectos.

---

### **Herramientas necesarias**

Para correr este proyecto necesitas instalar y configurar lo siguiente:

1. **Flutter SDK**:
   - [Guía de instalación de Flutter](https://docs.flutter.dev/get-started/install)
   - Asegúrate de tener el canal `stable` y una versión compatible con el proyecto (ver archivo `pubspec.yaml` para confirmar).

2. **Firebase**:
   - Configura un proyecto en [Firebase Console](https://console.firebase.google.com/).
   - Descarga el archivo `google-services.json` (Android) o `GoogleService-Info.plist` (iOS) y colócalo en la carpeta correspondiente:
     - `android/app` para Android.
     - `ios/Runner` para iOS.

3. **Dependencias del proyecto**:
   - Ejecuta el siguiente comando en el directorio raíz del proyecto para instalar las dependencias:
     ```bash
     flutter pub get
     ```

4. **Emuladores o Dispositivos**:
   - Instala un emulador Android/iOS o conecta un dispositivo físico con la depuración USB habilitada.

5. **Editor de código**:
   - **Visual Studio Code** (recomendado) o **Android Studio** con los plugins de Flutter y Dart instalados.

---

### **Instrucciones para correr el proyecto**

1. **Clona el repositorio**:
   ```bash
   git clone https://github.com/Codemaker83639/Final_Project_crud.git
   cd Final_Project_crud/crud_firebase
   ```

2. **Configura Firebase**:
   - Sigue las instrucciones mencionadas para integrar Firebase en tu aplicación.

3. **Corre la aplicación**:
   - Lanza la app usando el comando:
     ```bash
     flutter run
     ```
   - Asegúrate de tener un emulador abierto o un dispositivo conectado.

---

### **Tecnologías utilizadas**

- **Flutter**: Framework de UI multiplataforma.
- **Firebase**: Backend para autenticación, base de datos y servicios en la nube.
- **Firestore**: Base de datos NoSQL para el almacenamiento de datos.

---

### **Contribuciones**

Las contribuciones son bienvenidas. Por favor, sigue los pasos para contribuir:
1. Haz un fork del proyecto.
2. Crea una rama con tu feature:
   ```bash
   git checkout -b feature/nueva-funcionalidad
   ```
3. Haz un pull request describiendo los cambios.

---

Si tienes alguna pregunta o problema con la configuración, abre un issue en el repositorio. ¡Gracias por contribuir y ser parte del proyecto! 🎉
