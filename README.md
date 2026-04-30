# ZipTempProvider

Small Rails demo app: enter a US ZIP code (exactly five digits), validate it, then show a **random** Fahrenheit temperature. The temperature is fake on purpose—not real weather.

Flow: `GET /` shows the form. Submitting posts to `/weather`, then redirects back to `/` (post/redirect/get) so refreshing does not resubmit the form.

## Requirements

- Ruby version in [`.ruby-version`](.ruby-version) (currently **3.4.4**)
- [Bundler](https://bundler.io/)
- SQLite (default Rails stack; usually available on macOS)

## Setup

From the project root:

```bash
bin/setup --skip-server
```

That installs gems, prepares the database, and clears logs/tmp. Omit `--skip-server` if you want it to start `bin/dev` automatically.

Manual equivalent:

```bash
bundle install
bin/rails db:prepare
```

## Run

```bash
bin/rails server
```

Open [http://localhost:3000](http://localhost:3000).

## Validation rules

- ZIP is required.
- Must match exactly five digits (`12345`). Letters, spaces, and wrong lengths are rejected.
- `00000` is rejected as invalid.

## License

See your chosen license for the repo (not set in this template).
