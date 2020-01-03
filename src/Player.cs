using Godot;
using System;

public class Player : Node
{
    int id;
    string name;
    uint health = 10;
    uint lockedSlots = 0;
    bool running = true;
    MoveCard[] dealtCards;
    MoveCard[] returnedCards;
    Sprite robot;
}
