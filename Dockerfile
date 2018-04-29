FROM s2i-minecraft-server

COPY src/mods/*.jar /deployments/mods/


# NB: The EXPOSE is really just for "UI convenience", not technically required...

# Minecraft server
EXPOSE 25565

# Vert.x EventBus
EXPOSE 8080

# Static HTTP web server for JS
EXPOSE 7070
