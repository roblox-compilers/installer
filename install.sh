sleep 1.5

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        echo "Warning: Roblox does not support Linux platforms."
        sleep 0.7
        echo "Downloading roblox-py..."
        sleep 0.7
        echo "Cloning repo..."

        git clone $REPO_URL

        cd roblox-py

        chmod +x src/rbxpy.py

        sudo mv src/* /usr/local/bin/

        cd ..

        rm -rf roblox-py

        echo "Congratulations, roblox-py has now been successfully installed!
      
                In order to use roblox-py, please enter this in your terminal:

                echo 'alias rbxpy=\"/usr/local/bin/rbxpy.py\"' >> ~/.bashrc && source ~/.bashrc
             "
elif [[ "$OSTYPE" == "darwin"* ]]; then
        echo "Downloading roblox-py..."
        echo "Warning: Roblox does not support Linux platforms."
        echo "Downloading roblox-py..."
        echo "Cloning repo..."

        git clone $REPO_URL

        cd roblox-py

        chmod +x src/rbxpy.py

        sudo mv src/* /usr/local/bin/

        cd ..

        rm -rf roblox-py

        echo "Congratulations, roblox-py has now been successfully installed!
      
                In order to use roblox-py, please enter this in your terminal:

                echo 'alias rbxpy=\"/usr/local/bin/rbxpy.py\"' >> ~/.zshrc && source ~/.zshrc
             "
else
        echo "Your platform is not supported."
        exit 1
fi
