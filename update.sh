RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

echo -e "${GREEN}Updating proxy...${ENDCOLOR}"
clear
sleep 1
if [ -f "lumen" ]; then
    echo -e "${RED}Deleting old proxy...${ENDCOLOR}"
    rm lumen
    sleep 1
fi
echo -e "${GREEN}Getting new proxy...${ENDCOLOR}"
wget -q https://github.com/Luxemine/lumen/raw/main/lumen
sleep 1
echo -e "${GREEN}Executing proxy...${ENDCOLOR}"
chmod +x lumen
./lumen
