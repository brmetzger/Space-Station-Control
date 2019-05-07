local functions = {
    --Get a list of all commands
    help = function()
        local outputString = "The recognized commands are:";
        for funcName,func in pairs(functions) do
            outputString = outputString .. "\n" .. funcName;
        end;
        print(outputString);
    end;
};

--Initialize the program
term.clear();
term.setCursorPos(1,1);
print("SS Control Panel v1.0");
while true do
    --Check for commands
    local input = read();
    if functions[input:lower()] then
        --Recognized command
        functions[input:lower()]();
    else
        --Unrecognized command
        print("\"" .. input:lower() .. "\" is an unknown command. Please type \"help\" for a list of commands.");
    end;
end;