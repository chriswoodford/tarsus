{exec} = require 'child_process'

task 'build', 'Build project', ->
  console.log 'Compiling Coffeescript to Javascript'
  exec 'coffee --join dist/tarsus.js --compile src/', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr