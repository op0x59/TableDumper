function DumpTable(t)
    local ret = "local TABLE_DATA = {\n";
    local Indexes = {
        tIndex = 0;
    };
     function GIOT(t1)
        local i = 0;
        for _,__ in pairs(t1) do
            i = i + 1;
        end
        return i;
    end
     function getTab()
        local c = "";
        for i = 0, Indexes.tIndex do
            c = c .. " ";
        end
        return c;
    end
     function Yeet(t1)
        Indexes.tIndex = Indexes.tIndex + 1;
        local i = 0;
        local noTCount = 0;
        for x,y in pairs(t1) do
            i = i + 1;
            if (i == GIOT(t1)) then
                if (type(y) == "table") then
                    noTCount = 0;
                    if (type(x) ~= "number") then
                      ret = ret .. getTab() .. "[\"" .. tostring(x) .. "\"] = {\n";
                      Yeet(y);
                      ret = ret .. getTab() .. "}\n";
                    else
                      if (x == i) then
                        ret = ret .. getTab() .. "{\n";
                        Yeet(y);
                        ret = ret .. getTab() .. "}\n";
                      else
                        ret = ret .. getTab() .. "[" .. tostring(x) .. "] = {\n";
                        Yeet(y);
                        ret = ret .. getTab() .. "}\n";
                      end
                    end
                elseif (type(y) == "string") then
                    noTCount = noTCount + 1;
                    if (type(x) ~= "number") then
                        ret = ret .. getTab()  .. "[\"" .. tostring(x) .. "\"] = \"" .. tostring(y) .. "\"\n";
                    else
                        if (x == i) then
                          ret = ret .. getTab() .. "\"" .. tostring(y) .. "\"\n";
                        else
                          ret = ret .. getTab() .. "[" .. tostring(x) .. "] = \"" .. tostring(y) .. "\"\n";
                        end
                    end
                else
                    noTCount = noTCount + 1;
                    if (type(x) ~= "number") then
                        ret = ret .. getTab() .. "[\"" .. tostring(x) .. "\"] = " .. tostring(y) .. "\n";
                    else
                        if (x == i) then
                          ret = ret .. getTab() .. tostring(y) .. "\n";
                        else
                          ret = ret .. getTab() .. "[" .. tostring(x) .. "] = " .. tostring(y) .. "\n";
                        end
                    end
                end
            else
                if (type(y) == "table") then
                    noTCount = 0;
                    if (type(x) ~= "number") then
                        ret = ret .. getTab() .. "[\"" .. tostring(x) .. "\"] = {\n";
                        Yeet(y);
                        ret = ret .. getTab() .. "},\n";
                    else
                        if (i == x) then
                           ret = ret .. getTab() .. "{\n";
                           Yeet(y);
                           ret = ret .. getTab() .. "},\n";
                        else
                           ret = ret .. getTab() .. "[" .. tostring(x) .. "] = {\n";
                           Yeet(y);
                           ret = ret .. getTab() .. "},\n";
                        end
                    end
                elseif (type(y) == "string") then
                    noTCount = noTCount + 1;
                    if (type(x) ~= "number") then
                       ret = ret .. getTab()  .. "[\"" .. tostring(x) .. "\"] = \"" .. tostring(y) .. "\",\n";
                    else
                        if (x == i) then
                           ret = ret .. getTab() .. "\"" .. tostring(y) .. "\",\n";
                        else
                           ret = ret .. getTab() .. "[" .. tostring(x) .. "] = \"" .. tostring(y) .. "\",\n";
                        end
                    end
                else
                    noTCount = noTCount + 1;
                    if (type(x) ~= "number") then
                        ret = ret .. getTab() .. "[" .. tostring(x) .. "] = " .. tostring(y) .. ",\n";
                    else
                       if (x == i) then
                          ret = ret .. getTab() .. tostring(y) .. ",\n";
                       else
                          ret = ret .. getTab() .. "[" .. tostring(x) .. "] = " .. tostring(y) .. ",\n";
                       end
                    end
                end
            end
        end
        Indexes.tIndex = Indexes.tIndex - 1;
    end
    Yeet(t);
    ret = ret .. "}";
    return ret;
end
