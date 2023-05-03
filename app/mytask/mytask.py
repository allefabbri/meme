import os
import logging

def do_task():
    log = logging.getLogger('mylib')

    MYVAR = os.environ.get('MYVAR', 'default_value')
    log.info(f'mytask done')

    return {"done":True, "MYVAR":MYVAR}
