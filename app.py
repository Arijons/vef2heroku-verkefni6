
import bottle
from bottle import *
bottle.debug(True)

from beaker.middleware import SessionMiddleware
import os

from sys import argv

# Kóði hér fyrir neðan nauðsynlegur...
session_opts = {
    'session.type': 'file',
    'session.data_dir': './data',
    'session.cookie_expires': 300,
    'session.auto': True
}
app = SessionMiddleware(app(), session_opts)

vara = [{'name':'Skór 1','price':'20000'},
        {'name':'Skór 2','price':'10000'},
        {'name':'Skór 3','price':'15000'},
        {'name':'Skór 4','price':'5000'},
        {'name':'Skór 5','price':'10000'},
        {'name':'Skór 6','price':'5000'}]

# Ósköp vejnulegt route...
@route('/')
def index_2():
  return template('index_2')

# Setjum vöru í körfu
@route('/chart/<id>')
def add(id):
    bs = request.environ.get('beaker.session')
    bs[id] = 'check'
    bs.save()
    redirect('/')

# Athugum hvort tiltekið session sé til
@route('/chart')
def chart():
    bs = request.environ.get('beaker.session')
    return template('chart',val=vara)

# Eyðum einni vöru úr körfu
@route('/del/<id>')
def eyda(id):
    bs = request.environ.get('beaker.session')
    bs[id] = None
    redirect('/chart')

# Eyðum öllum vörum úr körfu
@route('/delall')
def eyda():
    bs = request.environ.get('beaker.session')
    bs.delete()
    bs.save()
    redirect('/chart')

# ná í myndir og stíla
@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='static/')
    
# Muna eftir app=app í run fallinu
"""try:
  run(host="0.0.0.0", port=os.environ.get('PORT'), app=app)
except:
  run(debug=True, app=app)"""
bottle.run(host='0.0.0.0', port = argv[1])
