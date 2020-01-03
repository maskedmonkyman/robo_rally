using Godot;
using System;

public struct PlayerInfo
{
    int ID;
    string name;
}

public class Global : Node
{
    string playerName;
    PlayerInfo[] otherPLayers;
    public Server server = null;
}