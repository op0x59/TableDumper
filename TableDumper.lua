function DumpTable(______________________)
    local __________________  = tostring;
    local ___________________ = type;
    local _________ = "local TABLE_DATA = {\n";
    local ______ = {
        ________________ = 0;
    };

    function __________(_____________________)
        local _______________________ = 0;
        for _,__ in pairs(_____________________) do
            _______________________ = _______________________ + 1;
        end
        return _______________________;
    end

    function ___________()
        local ____________________ = "";
        for i = 0, ______.________________ do
            ____________________ = ____________________ .. " ";
        end
        return ____________________;
    end

    function ______________(_____________________)
        ______.________________ = ______.________________ + 1;
        local __________________________ = 0;
        for ________________________,_________________________ in pairs(_____________________) do
            __________________________ = __________________________ + 1;
            if (__________________________ == __________(_____________________)) then
                if (___________________(_________________________) == "table") then
                    _________ = _________ .. ___________() .. __________________(________________________) .. " = {\n";
                    ______________(_________________________);
                    _________ = _________ .. ___________() .. "}\n";
                elseif (___________________(_________________________) == "string") then
                    if (___________________(________________________) ~= "number") then
                        _________ = _________ .. ___________()  .. __________________(________________________) .. " = \"" .. __________________(_________________________) .. "\"\n";
                    else
                        _________ = _________ .. ___________() .. "[" .. __________________(________________________) .. "] = \"" .. __________________(_________________________) .. "\"\n";
                    end
                else
                    if (___________________(________________________) ~= "number") then
                        _________ = _________ .. ___________() .. __________________(________________________) .. " = " .. __________________(_________________________) .. "\n";
                    else
                        _________ = _________ .. ___________() .. "[" .. __________________(________________________) .. "] = " .. __________________(_________________________) .. "\n";
                    end
                end
            else
                if (___________________(_________________________) == "table") then
                    _________ = _________ .. ___________() .. __________________(________________________) .. " = {\n";
                    ______________(_________________________);
                    _________ = _________ .. ___________() .. "},\n";
                elseif (___________________(_________________________) == "string") then
                    if (___________________(________________________) ~= "number") then
                        _________ = _________ .. ___________()  .. __________________(________________________) .. " = \"" .. __________________(_________________________) .. "\",\n";
                    else
                        _________ = _________ .. ___________() .. "[" .. __________________(________________________) .. "] = \"" .. __________________(_________________________) .. "\",\n";
                    end
                else
                    if (___________________(________________________) ~= "number") then
                        _________ = _________ .. ___________() .. __________________(________________________) .. " = " .. __________________(_________________________) .. ",\n";
                    else
                        _________ = _________ .. ___________() .. "[" .. __________________(________________________) .. "] = " .. __________________(_________________________) .. ",\n";
                    end
                end
            end
        end
        ______.________________ = ______.________________ - 1;
    end
    ______________(______________________);
    _________ = _________ .. "}";
    return _________;
end
