# Defined via `source`
function python --wraps=python3 --wraps=python2 --description 'alias python=python2'
  python2 $argv; 
end
