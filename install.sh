RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

clear
echo -e "${GREEN}Installing Proxy...${ENDCOLOR}"
sleep 1
if [ -f "lumen" ]; then
    echo -e "${RED}Deleting old proxy...${ENDCOLOR}"
    rm lumen
    sleep 1
    echo -e "${GREEN}Updating proxy...${ENDCOLOR}"
fi
wget -q https://github.com/Luxemine/lumen/raw/main/lumen
sleep 1
echo -e "${GREEN}Proxy Installed${ENDCOLOR}"
echo -e "${GREEN}Execute proxy with this command: ./lumen${ENDCOLOR}"
chmod +x lumen
rm -r -f install.sh
