const con = require("../database/connection");
const flash = require("express-flash");
const argon2 = require("argon2");

// exports.index = (req,res) =>{
//     const sql = "SELECT * FROM blogs";

//     con.query(sql, (err, results) => {
//       if (err) {
//         res.send(err.message);
//         return;
//       }
//       res.render("index", { results });
//     });
// };

exports.userIndex = (req, res) => {
    const sql = "SELECT * FROM blogs ORDER BY date_created DESC";

    con.query(sql, (err, results) => {
        if (err) {
            res.send(err.message);
            return;
        }
        res.render("user", { results });
    });
}


exports.adminIndex = (req, res) => {
     const sql = "SELECT * FROM blogs ORDER BY date_created DESC";

    con.query(sql, (err, results) => {
      if (err) {
        res.send(err.message);
        return;
      }
      res.render("admin", { results });
    });
}


exports.index = (req, res) => {
    res.render("login");
}

exports.register = (req, res) => {
    res.render("registration");
}

exports.addPage = (req, res) => {
    res.render("add");
}

exports.viewBlogs = (req, res) => {
    const sql = "SELECT * FROM blogs";

    con.query(sql, (err, results) => {
      if (err) {
        res.send(err.message);
        return;
      }
      res.render("index", { results });
    });
}

exports.loginPost = (req, res) => {
    const email = req.body.email;
    const password = req.body.password;
    let alert = "";
    const sql = "SELECT * FROM users WHERE email=?";
    con.query(sql, [email], async (err, results) => {
        if (err) {
            console.log(err.message);
            return;
        }
        if (results.length > 0) {
            const hashpass = results[0].password;
            if (await argon2.verify(hashpass, password)) {
                // Password match
                // Set user session
                req.session.user = results[0];
                req.flash("info", "Login successful");
                // Redirect based on user role
                const userRole = results[0].role;
                if (userRole === "user") {
                    res.redirect("/userIndex");
                } else if (userRole === "admin") {
                    res.redirect("/adminIndex");
                }
            } else {
                // Password did not match
                alert = "Invalid password";
                res.render("login", { alert });
            }
        } else {
            alert = "Invalid email";
            res.render("login", { alert });
        }
    });
};

exports.logout = (req, res) => {
    req.session.destroy();
    res.redirect("/");
}

exports.registerPost = async (req, res) => {
    const name = req.body.fullname;
    const email = req.body.email;
    const password = req.body.password;
    const hashpass = await argon2.hash(password);
    const role = 'user';

    // Check if the email already exists
    const checkEmailQuery = "SELECT * FROM users WHERE email=?";
    con.query(checkEmailQuery, [email], (checkErr, checkResults) => {
        if (checkErr) {
            res.send(checkErr.message);
            return;
        }

        if (checkResults.length > 0) {
            // Email already exists
            let alert = "Invalid. Email already in use.";
            res.render("registration", { alert });
        } else {
            // Email is unique, proceed with the insertion
            const insertUserQuery = "INSERT INTO users (name, email, password, role) VALUES (?,?,?,?)";
            con.query(insertUserQuery, [name, email, hashpass, role], (err, results) => {
                if (err) {
                    res.send(err.message);
                    return;
                }
                let alert = "User added.";
                res.render("registration", { alert });
            });
        }
    });
};


exports.addPost = (req, res) => {
    let title = req.body.title;
    let subtitle = req.body.subtitle;
    let content = req.body.content;

    const sql = "INSERT INTO blogs (title, subtitle, content) VALUES (?,?,?)";
    con.query(sql, [title, subtitle, content], (err, results) => {
        if (err) {
            res.send(err.message);
            return;
        } else {
            res.redirect('/adminIndex?success=true&operation=add');
        }
    });
};

exports.delete = (req, res) => {
    const id = req.params.id;

    const sql = "DELETE FROM blogs WHERE id = ?";

    con.query(sql, [id], (err, results) => {
        if (err) {
            res.send(err.message);
            return;
        } else {
            res.redirect('/adminIndex');
        }
    });
}

exports.view = (req, res) => {
    const id = req.params.id;

    const sql = "SELECT * FROM blogs WHERE id = ?";

    con.query(sql, [id], (err, results) => {
        if (err) {
            res.send(err.message);
            return;
        }
        res.render("view", { results });
    });
}

exports.editPage = (req, res) => {
    const id = req.params.id;

    const sql = "SELECT * FROM blogs WHERE id = ?";

    con.query(sql, [id], (err, results) => {
        if (err) {
            res.send(err.message);
            return;
        }
        res.render("edit", { results });
    });
}

exports.editPost  = (req, res) => {
    let id = req.body.id;
    let title = req.body.title;
    let subtitle = req.body.subtitle;
    let content = req.body.content;

    const sql = "UPDATE blogs SET title = ?, subtitle = ?,  content = ? WHERE id=?";
    con.query(sql, [title, subtitle, content, id], (err, results) => {
        if (err) {
            res.send(err.message);
            return;
        }
        res.redirect('/adminIndex?success=true&operation=edit');
    });
}