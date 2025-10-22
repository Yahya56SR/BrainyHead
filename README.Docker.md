### Environment Setup

Before building and running the application, you need to set up your environment variables. Create a `.env` file in the root directory based on `.env.example`. Update the following variables with your actual values:

- `NGROK_AUTHTOKEN`: Your ngrok authentication token.
- `NGROK_DOMAIN`: Your ngrok domain.

Example `.env` file:

```
NGROK_AUTHTOKEN=your_actual_auth_token_here
NGROK_DOMAIN=your_actual_domain_here
```

### Building and running your application

When you're ready, start your application by running:
`docker compose up --build`.

Your application will be available at http://localhost:8000.

### Deploying your application to the cloud

First, build your image, e.g.: `docker build -t myapp .`.
If your cloud uses a different CPU architecture than your development
machine (e.g., you are on a Mac M1 and your cloud provider is amd64),
you'll want to build the image for that platform, e.g.:
`docker build --platform=linux/amd64 -t myapp .`.

Then, push it to your registry, e.g. `docker push myregistry.com/myapp`.

Consult Docker's [getting started](https://docs.docker.com/go/get-started-sharing/)
docs for more detail on building and pushing.

### References
* [Docker's Python guide](https://docs.docker.com/language/python/)