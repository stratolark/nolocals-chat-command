# FiveM nolocals with Chat Command Toggle

A simple resource to remove all ped and vehicles.

>This resource makes usage of the default Chat resource in a FiveM FXserver.


## Installation

1. Download the code from this repository.

2. Extract the contents of the this repo into your server /resources/**nolocals-chat-command**. If the /nolocals-chat-command folder does not exists, then create it.

You can also create the folder inside /resources/[local]/**nolocals-chat-command**

*nolocals-chat-command* is the name of the resource in this case, but you can rename it to something like *populationoff* or *fivem-nolocals*. It's your choice. Make sure the name of the folder matches the name you'll set in the *server.cfg*

3. Add the resource name in the server.cfg: 

    `
    ensure nolocals-chat-command
    `
4. Start your server.
5. Press T to open the default **Chat** resource.
6. Write **/nolocals**, after this you should see a chat message indicating that the resource is enabled or disabled(type it a second time to enable normal peds and vehicles spawns)

License: MIT