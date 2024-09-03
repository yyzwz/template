# ZwzFrame

## Introduction

This software is a universal management system based on Vue and SpringBoot. It is an open-source front-end and back-end separation development template that can be used to develop entry-level projects. It includes nine functional modules: login registration, user management, department management, file management, permission management, log management, data dictionary, and code generator. In addition, there are two sample data tables and five sample data graphs. It is a good front-end and back-end separation development template, and developers can perform secondary development on this template. Only by implementing the business logic of the demand side, can the business requirements of Party A be quickly formed.

## Software version

-Front end: Node.js 18, Vue 2.7.10, component library View UI 4.7 (if using a lower version of node, you need to lower the plugin version yourself).

-Backend: JDK 17 and above, Maven 3.6, SpringBoot 3.1.0, mybatis plus 3.5.3.1 (as SpringBoot 3 supports JDK 17 at the minimum, the project does not support JDK 8).

-Database: MySQL 8.0.33, Redis 5.0.14 (MySQL 5.7 requires manual setting of the encoding UFT8 and modification of the SQL file encoding, otherwise the a_user table data cannot be imported and users cannot log in).

```Java
//Front end (VsCode)
//1 Download and install Node.js (version 18)
//2 Install Vue scaffolding
npm i-g @ vue/cli
//3 Install front-end dependencies
npm i
//4 Start front-end project
npm run dev

//Back end (Idea)
//1 Import Project
//2 Configure Maven and enable Redis (otherwise the system cannot start)
//3 Importing the database, it is recommended to use MySQL 8. If version 5.7 requires setting the encoding to UTF-8, otherwise a password error message will appear
//4 Wait for backend dependency download, start the project after completion, or execute mvn spring boot: run after compilation
```

## Software innovation points

This system adopts role-based access control, where roles are associated with menus, and one role can configure multiple menu permissions; Then associate the user with the role, and one user can be assigned multiple roles. This way, users can obtain the necessary menu permissions based on their roles, making it more convenient for managers to control permissions.

This system also encapsulates file management functions. When other modules need to implement image/file upload preview, the front-end only needs to import ready-made Vue components (implemented using viewerjs dependency), and the back-end only needs to define entity class variables of type String, without the need to study the related functions of file upload preview, simplifying the workload of developers.

This system also comes with a Beetl based code generator function. Developers only need to input the class name (such as Student) and class comments (such as Student), run the main function to automatically generate all MVC structure codes for the backend, without the need to develop API interfaces for adding, deleting, modifying, and querying. For the front-end, developers only need to enter the complete path of the backend entity class, use Java's reflection principle, obtain the fields of the backend entity class, and automatically generate all front-end code. The generated module code includes basic addition, deletion, modification, and query functions, simplifying the workload of developers.
