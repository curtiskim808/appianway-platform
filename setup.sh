FRONTEND_REPO="https://github.com/curtiskim808/appainway-fe.git"
BACKEND_REPO="https://github.com/curtiskim808/appianway-be.git"

# Clone or pull frontend repo
if [ ! -d "./frontend" ]; then
  echo "Cloning frontend repository..."
  git clone $FRONTEND_REPO ./frontend
else
  echo "Frontend repository already exists. Pulling latest changes..."
  cd ./frontend && git pull && cd ..
fi

# Clone or pull backend repo
if [ ! -d "./backend" ]; then
  echo "Cloning backend repository..."
  git clone $BACKEND_REPO ./backend
else
  echo "Backend repository already exists. Pulling latest changes..."
  cd ./backend && git pull && cd ..
fi