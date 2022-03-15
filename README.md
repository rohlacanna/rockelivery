<p align="center">
  <img alt="Logo" src=".github/logo.png" width="600px" />
</p>

<h1 align="center" style="text-align: center;">Rockelivery</h1>

<p align="center">
	<a href="https://github.com/RomuloHe4rt">
		<img alt="Author" src="https://img.shields.io/badge/author-Romulo%20Silva-FEBE53?style=flat" />
	</a>
	<a href="#">
		<img alt="Languages" src="https://img.shields.io/github/languages/count/RomuloHe4rt/Rockelivery?color=FEBE53&style=flat" />
	</a>
	<a href="hhttps://github.com/RomuloHe4rt/Rockelivery/stargazers">
		<img alt="Stars" src="https://img.shields.io/github/stars/RomuloHe4rt/Rockelivery?color=FEBE53&style=flat" />
	</a>
	<a href="https://github.com/RomuloHe4rt/Rockelivery/network/members">
		<img alt="Forks" src="https://img.shields.io/github/forks/RomuloHe4rt/Rockelivery?color=FEBE53&style=flat" />
	</a>
  <a href="https://codecov.io/gh/RomuloHe4rt/rockelivery">
  <img src="https://codecov.io/gh/RomuloHe4rt/rockelivery/branch/master/graph/badge.svg?token=5DLTJBE2CO"/>
</a>
</p>

<p align="center">
	<b>Order your favorite dish in no time!</b><br />
	<span>Created with Elixir and Phoenix.</span><br />
	<sub>Made with ❤️</sub>
</p>

<br />

# :pushpin: Contents

- [Features](#rocket-features)
- [Installation](#wrench-installation)
- [Getting started](#bulb-getting-started)
- [Techs](#fire-techs)
- [Issues](#bug-issues)
- [License](#book-license)

# :rocket: Features

- Create, delete and updates users
- Sign-in with JWT authentication
- Create, delete and updates items
- Create orders from your favorite dishes
- Delete and update orders
- Generate an Orders Report for every hour to keep in track with your application

# :wrench: Installation

### Required :warning:

- Elixir
- Erlang
- Phoenix
- Postgres database

### SSH

SSH URLs provide access to a Git repository via SSH, a secure protocol. If you have an SSH key registered in your GitHub account, clone the project using this command:

`git clone git@github.com:RomuloHe4rt/rockelivery.git`

### HTTPS

In case you don't have an SSH key on your GitHub account, you can clone the project using the HTTPS URL, run this command:

`git clone https://github.com/RomuloHe4rt/rockelivery.git`

**Both of these commands will generate a folder called Rockelivery, with all the project**

# :bulb: Getting started

1. Run `mix deps.get` to install the dependencies
2. Create a postgres database named `rockelivery`
3. On the `config/dev.exs` and `config/test.exs` files, change your postgres **user** and **password**
4. Run `mix ecto.migrate` to run the migrations to your database
5. Run `mix phx.server` to start the server on port 4000

# :fire: Techs

### Elixir (language)

### Phoenix (web framework)

- Ecto
- Elixir GenServer (orders report)
- Guardian (authentication)
- PBKDF2 (password cryptography)
- Tesla (http client to external apis)

# :bug: Issues

Find a bug or error on the project? Please, feel free to send me the issue on the [Rockelivery issues area](https://github.com/RomuloHe4rt/Rockelivery/issues), with a title and a description of your found!

If you know the origin of the error and know how to resolve it, please, send me a pull request, I will love to review it!

# :book: License

Released in 2022.

This project is under the [MIT license](https://github.com/RomuloHe4rt/Rockelivery/blob/main/LICENSE).

<p align="center">
	< keep coding /> :rocket: :heart:
</p>
