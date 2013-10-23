{print} = require 'util'
{exec} = require 'child_process'

#---------------------
# Config
#---------------------

pkg = "Tarsus"

src_path = "./src"
lib_path = "./lib"
dist_path = "./dist"
js_path = "#{lib_path}/js"
nm_path = "./node_modules"
bin_path = "#{nm_path}/.bin"

bundled_js_file = "#{dist_path}/#{pkg}.js"
minified_js_file = "#{dist_path}/#{pkg}-min.js"

#---------------------
# Tasks
#---------------------

task 'compile', 'Compile CoffeeScript files to JavaScript', ->
  compile()

task 'bundle', 'Build the Tarsus.js file for the project', ->
  bundle()

task 'minify', 'Minify the Tarsus.js to Tarsus.min.js', ->
  minify()

task 'build', 'Build the entire project', ->
  compile(bundle(minify))

#---------------------
# Commands
#---------------------

compile = (callback) ->
  cmd = "coffee --compile --output #{js_path} #{src_path}"
  run cmd, callback

bundle = (callback) ->
  cmd = "coffee --join #{bundled_js_file} --compile #{src_path}"
  run cmd, callback

minify = (callback) ->
  cmd = "uglifyjs -o #{minified_js_file} #{bundled_js_file}"
  run cmd, callback

#---------------------
# Helpers
#---------------------

run = (command, callback) ->
  proc = exec command
  proc.stdout.on 'data', (data) -> print data.toString()
  proc.stderr.on 'data', (data) -> print data.toString()
  proc.on 'exit', (status) -> callback?() if status is 0
