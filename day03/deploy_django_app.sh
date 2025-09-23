#!/bin/bash


<<task
deploy django app
task

code_clone(){
    echo "cloning the django app..."
    if [ -d "django-notes-app" ]; then
        echo "the code directory already exists, pulling latest changes..."
        cd django-notes-app
        git pull
    else
        git clone https://github.com/LondheShubham153/django-notes-app.git
        cd django-notes-app
    fi
}



install_requirements(){
    echo "Installing dependencies..."
    sudo apt-get update -y
    sudo apt-get install -y nginx
    echo "✅ Nginx installed (Docker already available)."
}

restart_required(){
    echo "Fixing Docker permissions..."
    sudo chown $USER:$USER /var/run/docker.sock

    echo "Starting Docker + Nginx..."
    sudo systemctl enable docker
    sudo systemctl start docker
    sudo systemctl enable nginx
    sudo systemctl start nginx
    sudo systemctl restart docker
    echo "✅ Docker + Nginx are running!"
}

deploy(){
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}

echo "*****************deployment started**********************"

if !  code_clone; then
        echo " Repo clone/pull failed"
        exit 1

fi

if ! install_requirements; then
	echo "Installation failed"
	exit 1
fi	
if !  restart_required; then
	echo "restart failed"
	exit
fi	
deploy
echo "****************deployment end**********************"
