# App Sell

App Sell provides a simple and intuitive interface for users who want to sell their items.
Users can quickly create listings, add images, and set prices.

## Technologies

The project utilizes the following technology stack:

- **Spring Boot**: The primary framework for building web applications in Java.
- **Spring Data JPA**: For database interaction through object-relational mapping (ORM).
- **Freemarker**: A template engine for creating dynamic web pages.
- **Spring Boot Security**: To secure the application.
- **Spring Boot Web**: For web application development.
- **MySQL**: A relational database to store information.
- **Lombok**: A library to reduce boilerplate code (e.g., getters, setters).
- **JUnit**: A library for unit testing.

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/RustamAbdusamatov4848/App-Sell.git
    ```

2. Navigate to the project directory:

    ```bash
    cd App-Sell
    ```

3. Set up the MySQL database:

    - Create a database named `app_sell`.
    - Update the `src/main/resources/application.properties` file with your database access details.

4. Build the project using Maven:

    ```bash
    mvn clean install
    ```

5. Run the application:

    ```bash
    mvn spring-boot:run
    ```

## Usage

Once the application is running, it will be available at [http://localhost:8080](http://localhost:8080). You can register, log in, and start listing your items for sale.

## Project Structure

- `src/main/java/com/app/sell` - Main directory containing source code.
- `src/main/resources/templates` - Directory with Freemarker templates.
- `src/main/resources/application.properties` - Application configuration file.

## Key Features

- User registration and authentication using Spring Boot Security.
- User and role management.
- Adding, editing, and deleting sale listings.
- Viewing a list of available items for purchase.
- Unit testing with JUnit.

## Testing

The project includes unit tests for the core components. To run the tests, execute:

```bash
mvn test
```
## Usage

1. Register or log in to your account.
2. Fill in the required information about the item being sold.
3. Add images of the item.
4. Set a price and save your ad.
5. Click on the "Create ad" button.
