# Example App: Rails 8 in API Only Mode, with Devise JWT for authentication

This is an example of a Rails 8 API-only app that uses Devise JWT for authentication.

# How to get started

```sh
git clone git@github.com:coderhs/rails-api-only-devise-jwt-example-app.git
```

Create the `credentials.yml.enc` file:

```sh
EDITOR="vim" rails credentials:edit
```

Copy the contents from c`redentials.example.yml` into your new file:

```yml
secret_key_base:
devise:
  jwt_secret_key:
```

Fill in both fields with secret tokens, which you can generate using the command `rails secret`

Save and close vim


## API end point / testing

### Register a User

```sh
curl -i -X POST http://localhost:3000/signup \
  -H "Content-Type: application/json" \
  -d '{"user": {"email": "test@example.com", "password": "password"}}'
```

You will receive the JWT token in the response.


### Log in a User

```sh
curl -i -X POST http://localhost:3000/login \
  -H "Content-Type: application/json" \
  -d '{"user": {"email": "test@example.com", "password": "password"}}'
```

The JWT token will be returned in the response headers.

### Accessing a Protected API Endpoint

#### Without token

```sh
curl 'http://localhost:3000/secret'
```

Response

```json
{"error":"You need to sign in or sign up before continuing."}
```

#### With token

```sh
curl 'http://localhost:3000/secret' -H 'Authorization: Bearer <token>'
```

Response

😉 Try and find out

