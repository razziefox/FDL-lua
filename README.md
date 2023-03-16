## FDL-lua
File Description Language parser for Lua

## whats FDL?
FDL is a dead-simple file format specifically designed to store meta data about assets such as sprites.

## example
```lua
-- main.lua

function main()

    -- opens fdl file
    f = open_fdl("file.fdl")

    -- fetch file name in sprite group under file sub_group
    print(fetch_fdl(f, "sprite", "file"))

    close_fdl(f)

end

main()
```

```
# player.fdl

[sprite]
file=player.png
frames=6
width=8
height=8
[/]

[walk]
frames=3
begin=1
end=3
[/]

[flap]
frames=1
begin=4
end=4
[/]

[fall]
frames=1
begin=5
end=5
[/]

[hurt]
frames=1
begin=6
end=6
[/]
```