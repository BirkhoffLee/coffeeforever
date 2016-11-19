cd $(cat script_path)
forever start -c coffee index.coffee
forever logs -f 0