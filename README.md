# PeoplePerTask Database Project

## Overview

This project aims to design an efficient and well-structured database system to support the functionalities of PeoplePerTask. The database schema provided here caters to managing users, projects, categories, sub-categories, freelancers, offers, and testimonials.

## Tables in the Database

- **Utilisateurs**: Contains user information.
- **Catégories**: Stores project categories.
- **Sous-Catégories**: Holds sub-categories related to main categories.
- **Projets**: Manages project details linked to categories, sub-categories, and users.
- **Freelances**: Information repository for freelancers.
- **Offres**: Records offers made by freelancers for specific projects.
- **Témoignages**: Stores user testimonials.

## Database Structure

The database structure and relationships among tables are depicted in the `/diagrams` directory through UML diagrams.

## SQL Scripts

SQL scripts for creating the database structure are available in the `/sql_scripts` directory. Each script corresponds to table creation, primary and foreign key establishment, ensuring proper relations between entities.

## Scalability and Future Considerations

The database design is geared towards accommodating the platform's growth. Considerations include normalization, indexing strategies, and potential data partitioning to handle scalability.

## Contributing

Contributions to improve the database schema or scripts are welcome. Fork this repository, make your changes, and submit a pull request.
