const db = require('../config/database')();


module.exports = function (app) {

    app.get('/', (req, res, next) => {
        db.query(`SELECT events.id, events.name, image, price, categories.name AS category, starts, ends FROM events
        INNER JOIN categories ON events.fk_category = categories.id WHERE starts >= NOW() ORDER BY starts LIMIT 5`, (err, events) => {
            if (err) return next(`${err} at db.query (${__filename}:7:9)`);
            res.render('main', { 'events': events });
        })
    });
    
    app.get('/arrangementer', (req, res, next) => {
        db.query(`SELECT events.id, events.name, image, price, categories.name AS category, starts, ends FROM events
                INNER JOIN categories ON events.fk_category = categories.id 
                WHERE starts >= NOW()
                ORDER BY starts`, (err, events) => {
            if (err) return next(`${err} at db.query (${__filename}:7:9)`);
            db.query(`SELECT * FROM categories`, (err, categories) => {
                if (err) return next(`${err} at db.query (${__filename}:7:9)`);
                res.render('events', { 'events': events, 'categories': categories });
            })
        })
    });

    app.get('/arrangementer/:id', (req, res, next) => {
        db.query(`SELECT events.id, events.name, description, image, price, categories.name AS category, starts, ends FROM events
                INNER JOIN categories ON events.fk_category = categories.id 
                WHERE events.id = ?`, [req.params.id], (err, event) => {
            if (err) return next(`${err} at db.query (${__filename}:7:9)`);
            res.render('event', { 'event': event[0] });
        })
    });

    app.get('/bestilling', (req, res, next) => {
        res.render('order');
    });

    app.post('/bestilling', (req, res, next) => {
        let i = 0;
        db.query(`INSERT INTO orders (phone, email) VALUES (?,?)`, [req.fields.phone, req.fields.email], (err, order) => {
            if(err) throw err;
            while(i < req.fields.tickets) {
                i++;
                db.query('INSERT INTO tickets (fk_event_id, fk_order) VALUES (?, ?)', [req.fields.event, order.insertId], (err, tickets) => {
                    if(err) throw err;
                })
            }
            res.redirect('/')
            
        })
        
    });
};