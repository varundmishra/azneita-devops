#Clone the App URL and Start the App
clone_app:
  git.latest:
    - name: https://bitbucket.org/azneita/devops-challenge.git
    - target: /webapps/devops/

app-run:
  cmd.run:
    - name: python app.py >/dev/null 2>&1 &
    - cwd: /webapps/devops/
    - user: ubuntu