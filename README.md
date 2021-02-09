# DRAFTime

## A custom draft tool that doesn't suck

- Do you hate drafting with Yahoo, ESPN, or anyone else's online draft tool?
- Are you the only technologically sufficient member of your league?
- Do you wish you could have a simple export to deal with that automatically works with all the leagues?

Well then _DRAFTime_ might be for you.

DRAFTime is currently in pre-alpha stage. It is not yet in a hostable manner. It requires Ruby, Redis and PostGres, but nothing beyond that, I'm pretty sure.

To get started:

### Installing Prerequisites

- [Install Ruby and Rails](https://gorails.com/setup/osx/11.0-big-sur)
- [Install Redis](https://gist.github.com/tomysmile/1b8a321e7c58499ef9f9441b2faa0aa8)
- [Install PostGresQL](https://wiki.postgresql.org/wiki/Homebrew)
- If you don't want to use `brew services start redis` to auto-launch Redis on system start, you will want to install Foreman in order to launch Redis and Rails server simultaneously.
- - To do so, simply `gem install foreman`. Do not add to Gemfile or you will have issues.

### Running Draftime

- `clone` this repo locally
- `cd` to the repo
- `bundle install`
- Follow instructions in the `.env.sample` file
- `rake db:create`
- `rake db:migrate` (and then `rake db:seed` if it does not seed automatically)
- `foreman start`
- Navigate to `localhost:3000`

### Runtime Settings

You can set port in `./Procfile` by modifying the value after the `-p` in the `rails` command.

## License Stuff

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <https://www.gnu.org/licenses/>.
