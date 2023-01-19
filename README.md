# Rails/Ruby: Starter Web App Code Sample

This Ruby code sample demonstrates how to build web applications using Rails and ERB.

Visit the ["Rails/Ruby Code Samples: App Security in Action"](https://auth0.com/developers/hub/code-samples/web-app/rails) section of the ["Auth0 Developer Hub"](https://auth0.com/developers/hub) to explore how you can secure Rails applications written in Ruby by implementing user authentication with Auth0.

## Why Use Auth0?

Auth0 is a flexible drop-in solution to add authentication and authorization services to your applications. Your team and organization can avoid the cost, time, and risk that come with building your own solution to authenticate and authorize users. We offer tons of guidance and SDKs for you to get started and [integrate Auth0 into your stack easily](https://auth0.com/developers/hub/code-samples/full-stack).

## Set Up and Run the Rails Project

Install the project dependencies:

```bash
bundle install
```

Copy the `.env.example` file and paste it as `.env` under the root project directory:

```bash
cp .env.example .env
```

> This project uses the [`dotenv` gem](https://github.com/bkeepers/dotenv) to load environment variables from a `.env` file into `ENV` in development.

Run the following command to generate a random secret key and add it to your `.env` file.

```bash
bin/rails secret
```

Copy the output of the above command as the value for the `SECRET_KEY_BASE` into the `.env` file:

```
SECRET_KEY_BASE=<generated_key>
```

Run the project:

```bash
bin/rails
```
