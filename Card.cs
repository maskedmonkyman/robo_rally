using Godot;
using System;

enum Type
{
    Move,
    Turn,
    UTurn
}

public class MoveCard : Node
{
    uint priority; //numerical priority of the card
    uint iterations; //number of times a cards actions should be done
    bool direction; //whether the cards action should be repeated and how many times
    string name; //name of the card
    Type type; //whether the card is a rotate or a move
    Sprite sprite; //the sprite type of the card

}

public class optionCard : Node //To be filled out
{
}