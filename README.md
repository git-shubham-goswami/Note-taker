# Note Taker

## Description

The Note Taker is a web-based application developed using Java technologies, including JSP, Servlets, and the Hibernate Framework, with a MySQL database backend. It allows users to create, edit, view, and delete notes, providing a simple and effective solution for managing personal notes. The application features a responsive design using HTML and CSS for the front end.

## Features

- **Create Notes:** Add new notes with titles and content.
- **Edit Notes:** Modify existing notes.
- **Delete Notes:** Remove notes from the system.
- **View Notes:** List all notes with options to view details.
- **Responsive Design:** User-friendly interface with HTML and CSS.

## Installation

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/yourusername/note-taker.git

2. **Set Up MySQL Database:**
   - Create a new MySQL database and user for the application.
   - Import the provided `schema.sql` file to set up the necessary tables.

3. **Configure Database Connection:**
   - Edit the `hibernate.cfg.xml` file to include your MySQL database details:
     ```xml
     <property name="hibernate.connection.url">jdbc:mysql://localhost:3306/your_database</property>
     <property name="hibernate.connection.username">your_username</property>
     <property name="hibernate.connection.password">your_password</property>
     ```

4. **Configure Web Server:**
   - Deploy the application on a web server like Apache Tomcat.

5. **Build and Deploy the Project:**
   - Use your preferred IDE to build the project, or run the following Maven command:
     ```bash
     mvn clean package
     ```
   - Deploy the generated WAR file to your Tomcat server.

## Usage

1. Start the web server and navigate to `http://localhost:8080/note-taker` in your web browser.
2. Use the web interface to create, view, edit, and delete notes.

## Contributing

Contributions are welcome! To contribute:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Commit your changes and push to your branch.
4. Open a pull request with a detailed description of your changes.

## Acknowledgements

- **Java:** Programming language used for development.
- **JSP & Servlets:** For server-side processing and rendering.
- **Hibernate:** For object-relational mapping and database interaction.
- **MySQL:** Database management system.
- **HTML & CSS:** For designing the user interface.
```

