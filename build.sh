mkdocs build
rsync -r --progress --delete ./site/ /vol1/1000/docker/baota/website_data/192.168.0.216/
