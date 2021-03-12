const db = require('./db');
const qu = require('querystring');
const formidable = require('formidable');
const fs = require('fs');

module.exports = {
  add(req, res) {
    res.render('add.html')
  },
  add_post(req, res) {
    let form = new formidable.IncomingForm();
    form.uploadDir = 'public';
    form.parse(req, (err, fields, files) => {
      fs.rename(files.img.path, './public/images/' + files.img.name, err => {
        if (!err) {
          fields.img = '/images/' + files.img.name;
          db.insert(fields, data => {
            if (data >= 1) {
              let html = '<script>alert("添加成功");window.location.href="/"</script>'
              res.setHeader("Content-type", "text/html;charset=utf-8")
              res.end(html)
            }
          })
        }
      })
    })

  },
  getall(req, res) {
    db.select(data => res.render('index.html', {
      data
    }))
  },
  getone(req, res) {
    const id = req.query.id;
    db.where('id=' + id).select(data => res.render('one.html', {
      data
    }))
  },
  update_get(req, res) {
    const id = req.query.id;
    db.where('id=' + id).select(data => res.render('edit.html', {
      data
    }))
  },
  update_post(req, res) {
    let data = '';
    req.on('data', che => data += che)
    req.on('end', () => {
      let data_obj = qu.parse(data);
      let id = req.query.id;
      db.where('id=' + id).update(data_obj, data => {
        if (data >= 1) {
          let html = '<script>alert("添加成功");window.location.href="/"</script>'
          res.setHeader("Content-type", "text/html;charset=utf-8")
          res.end(html)
        }
      })
    })
  },
  delete(req, res) {
    const id = req.query.id;
    db.where('id=' + id).delete(data => {
      if (data >= 1) {
        let html = '<script>alert("删除成功");window.location.href="/"</script>'
        res.setHeader("Content-type", "text/html;charset=utf-8")
        res.end(html)
      }
    })
  }
}