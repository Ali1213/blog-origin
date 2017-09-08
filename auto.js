var Task = require('shell-task');

new Task(`cd ${__dirname}`)
    .then(`hexo generate`)
    .then('git add .')
    .then(`git commit -a -m "auto commit by ali at ${new Date}"`)
    .then('git push origin master')
    .then("mv -f public/* ../Ali1213.github.io")
    .then("cd  ../Ali1213.github.io")
    .then("git add .")
    .then(`git commit -a -m "auto commit by ali at ${new Date}"`)
    .then('git push origin master')
    .run(function (err, next) {
        // this entire callback is optional.
        if (err) {
            // you can ignore the exception
            // and just call next(), which will
            // continue the flow
            console.log(err)
        } else {
            console.log('done!')
        }
    })