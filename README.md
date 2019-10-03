# Kulturhuset
[changelog](./CHANGELOG.md)
## Structure

## NPM Packages
* **Depended Packages**
* [body-parser](https://www.npmjs.com/package/body-parser)
* [dotenv](https://www.npmjs.com/package/dotenv)
* [ejs](https://www.npmjs.com/package/ejs)
* [express](https://www.npmjs.com/package/express)
* [express-formidable](https://www.npmjs.com/package/express-formidable)
* [express-session](https://www.npmjs.com/package/express-session)
* [morgan](https://www.npmjs.com/package/morgan)
* [mysql](https://www.npmjs.com/package/mysql)
* **Developer packages**
* [debug](https://www.npmjs.com/package/debug)
* [nodemon](https://www.npmjs.com/package/nodemon)
* [run-script-os](https://www.npmjs.com/package/run-script-os)

## Project description
Kulturhuset er en applikation, baseret på ExpressJS. Applikation er en portal til diverse arrangementer hvor besøgende og brugere kan reservere billet, med mulighed for at vælge sine egne pladser.

## Admin test login
Username: admin
Password: 87654321

## Commands

* Installer projektet med: `npm install`
* Kør developer-versionen: `npm run dev`
* Kør projektet: `npm start`

## Code examples
Eksporter nemt et route, via en fil i mappen routes:
```Javascript
module.exports = function (app) {

    app.get('/', (req, res) => {
        res.render('main', { 'title': 'Kulturhuset byder dig velkommen!', 'content': 'Her er der indhold' });
    });
};
```
Opret nemt et view, via en fil i mappen views, "include" ønskede dele til dit view:
```html
<% include partials/head.ejs %>
<% include partials/header.ejs %>
<main tabindex="0" role="main" class="main" id="maincontent">
    <h1><%= title %></h1>
    <p><%= content %></p>
</main>
<% include partials/footer.ejs %>
<% include partials/after-footer.ejs %>
```
Tilføj nemt filer til projektet via mappen public <br>
![alt text](./public.PNG "Public mappe")
```html
<img src="/media/search_icon.png" alt="Search icon">
```