# minecraft-storeys-maker-server

Container image of [minecraft-storeys-maker](https://github.com/vorburger/minecraft-storeys-maker)
mod plugin deployed into to a [Minecraft-server](https://github.com/vorburger/s2i-minecraft-server).

This project is an UGLY HACK with a BINARY JAR which I'm hoping to eventually entirely remove
when I can finally get minecraft-storeys-maker fully S2I enabled.
Here's what's currently preventing that:

- [X] https://github.com/vorburger/minecraft-storeys-maker/issues/31 Minecraft OSGi API on Maven central
- [ ] https://github.com/vorburger/minecraft-storeys-maker/issues/28 ../lib/utils/unsupported.js (minishift only; Appuio OK?!)
- [ ] extremely slow S2I build on Appuio, why?
- [ ] unclear how to integrate; maybe `oc new-build ... --source-image=... --source-image-path=...` ?


## How to use

    oc new-build https://github.com/vorburger/s2i-minecraft-server.git

    oc new-app https://github.com/vorburger/minecraft-storeys-maker-server.git


### How to locally test

    cp ../minecraft-storeys-maker/web/build/libs/web-1.0.0-SNAPSHOT-all.jar src/mods/

    oc start-build minecraft-storeys-maker-server --from-dir=. --follow
