# Defined via `source`
function serve --wraps='python -m SimpleHTTPServer 8080' --description 'alias serve=python -m SimpleHTTPServer 8080'
  python -m SimpleHTTPServer 8080 $argv; 
end
