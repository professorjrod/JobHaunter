# JobHaunter

This project is designed to provide real-time updates for a job post using Action Cable.
Prerequisites

Before you begin, you will need to have the following installed:

    - Ruby version >= 2.6.3
    - Rails version >= 6.0

## Installation

To install the project, you will need to do the following:

   1. Clone the repository to your local machine.

        ``git clone https://github.com/professorjrod/JobHaunter.git``

   2. Install the dependencies.

        ``bundle install``

   3. Create and seed the database.
   
        ``rails db:create db:migrate db:seed``

   4. Start the Rails server.

        ``rails s``

## Usage

To use the application, visit http://localhost:3000 in your browser. You can subscribe to a job post by visiting the job post's show page and clicking the "Subscribe" button. You will receive updates in real-time as they are made to the job post.

## Contributing

To contribute to this project, please fork the repository and create a pull request with your changes.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
