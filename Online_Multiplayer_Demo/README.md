# Online Multiplayer Game Script (In progress)

This script implements a multiplayer game system in the Godot Engine using WebRTC for peer-to-peer communication. The game allows players to either **host** or **join a game session** using a room code. Players can select their character type (Rock or Stick) and interact within the multiplayer environment.



The basic flow will be:

Host creates game → Connects to signaling server → Gets room code
Client enters room code → Connects to signaling server → Gets connection info
WebRTC connection established → Players can interact
