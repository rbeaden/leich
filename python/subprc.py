import subprocess
result = subprocess.run(['ls', '-l'], stdout=subprocess.PIPE)
result.stdout
result.stdout.decode('utf-8')
