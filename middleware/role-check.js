module.exports = {
    admin: function (req, res, next) {
        if (!req.session.role === 'Super admin')
            return res.redirect('/admin')
        next();
    },
    user: function (req, res, next) {
        if (!req.session.role === 'user')
            return res.redirect('/profile')
        next();
    }
}