#Salt State Script to Setup Dependencies required to run the app and set the timezone to UTC.
app-deps:
  pkg.installed:
    - pkgs:
      - python
      - git

python-pip:
  pkg.installed

flask:
  pip.installed:
    - name: flask
    - require:
      - pkg: python-pip

Werkzeug:
  pip.installed:
    - name: Werkzeug
    - require:
      - pkg: python-pip

UTC:
  timezone.system