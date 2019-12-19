using Godot;

public class test : Node2D
{
    public Sprite sprite;

    public override void _Ready()
    {
		GD.Print("hello world");
		sprite = GetNode("Sprite") as Sprite;
    }

    [Remote]
    public void updatePosition(Vector2 pos)
    {
        sprite.Position = pos;
    }

    public override void _Process(float delta)
    {
        base._Process(delta);
        if (GetTree().Multiplayer.IsNetworkServer())
        {
            if (Input.IsKeyPressed((int)KeyList.W))
            {
                sprite.Position += new Vector2(0, 1);
            }
        }

        Rpc("updatePosition", sprite.Position);
    }
}