const router = require("express").Router();
const controller = require('../controllers/mainController');
module.exports = router;

const islogin = (req, res, next) => {
    if (!req.session.user) {
        res.redirect("/");
    } else {
        next();
    }
};

router.get('/', controller.index);
router.post('/', controller.loginPost);
router.get('/register', controller.register);
router.post('/register', controller.registerPost);
router.get('/logout', controller.logout);


router.get('/add', islogin, controller.addPage);
router.post('/add', islogin, controller.addPost);
router.get('/viewBlogs', islogin, controller.viewBlogs);
router.get('/view/:id', islogin, controller.view);
router.get('/edit/:id', islogin, controller.editPage);
router.post('/edit', islogin, controller.editPost);
router.get('/delete/:id', islogin, controller.delete);

router.get('/userIndex', islogin, controller.userIndex);
router.get('/adminIndex', islogin, controller.adminIndex);