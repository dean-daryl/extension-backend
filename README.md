This is a backend application built with Spring Boot, using Maven for dependency management. The project uses MongoDB and PostgreSQL for data storage.

## Features

- **Analytics**: Stores analytics from an extensions.
- **Recent Activity**: Showcases different interactions that have been made.

## Tech Stack

- Spring Boot
- Maven
- MongoDB
- PostgreSQL

## Getting Started

### Prerequisites

- Java 17+
- Maven
- MongoDB
- PostgreSQL

### Configuration

1. Clone the repository:

   ```bash
   git clone <repository-url>
   cd <repository-folder>

Configure the application properties in src/main/resources/application.properties:

properties
    ```bash

        MongoDB Configuration
        spring.data.mongodb.uri=mongodb://localhost:27017/<db-name>
        
        # PostgreSQL Configuration
        spring.datasource.url=jdbc:postgresql://localhost:5432/<db-name>
        spring.datasource.username=<username>
        spring.datasource.password=<password>

Running the Application
Build the project:

bash
Copy code
mvn clean install
Run the application:

bash
Copy code
mvn spring-boot:run
The API will be available at http://localhost:8080.