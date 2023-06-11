--Police
surface.CreateFont( "police-2", {
    font = "Impact",
    extented = false,
    size = 21,
    weight = 400
    })

surface.CreateFont( "police-1", {
    font = "Impact",
    extented = false,
    size = 40,
    weight = 400
    })

--Button
local button = { 

    Tiktok = {
    Name = "",
    Function = function ()
        gui.OpenURL("https://www.tiktok.com/@alvisrp?lang=fr")

end
    },

    Group = {
    Name = "",
    Function = function ()
        gui.OpenURL("https://steamcommunity.com/groups/alvisroleplay")
    
end
    },
    Workshop = {
    Name = "",
    Function = function ()
        gui.OpenURL("https://steamcommunity.com/workshop/filedetails/?id=1714602721")
        
        end
    },
    Forum = {
    Name = "",
    Function = function ()
        gui.OpenURL("https://alvisrp.fr")
                    
        end
    },

    Discord = {
    Name = "",
    Function = function ()
        gui.OpenURL("https://discord.gg/bMqr3EeNdA")
                        
        end
    },

    Shop = {
    Name = "",
    Function = function ()
        gui.OpenURL("https://alvisrp.fr/shop/")
                            
        end
    },
}

local frame
local function openmenualvis()
    frame = vgui.Create("DPanel")
    frame:Dock(LEFT)
    frame:SetWide(500)
    frame:MakePopup()
    frame:SetKeyboardInputEnabled( false )
    frame.Paint = function (s,w,h)
        
            --Boîte de boutons
            draw.RoundedBox(0,50,550,w,500,Color(30,30,30))
            draw.RoundedBox(150,325,975,150,50,Color(100,100,100))
            draw.RoundedBox(150,325,905,150,50,Color(100,100,100))
            draw.RoundedBox(150,325,835,150,50,Color(100,100,100))
            draw.RoundedBox(150,325,765,150,50,Color(100,100,100))
            draw.RoundedBox(150,325,695,150,50,Color(100,100,100))
            draw.RoundedBox(150,325,625,150,50,Color(100,100,100))

            --Title
            draw.SimpleText("Simple Context Menu By Dobby", "police-2", 150, ScrH () - 515, Color(255,255,255))

            --Text Button
            draw.SimpleText("Workshop", "police-1", 335, ScrH () - 170, Color(255,255,255))
            draw.SimpleText("Tiktok", "police-1", 360, ScrH () - 100, Color(255,255,255))
            draw.SimpleText("Discord", "police-1", 350, ScrH () - 240, Color(255,255,255))
            draw.SimpleText("Group", "police-1", 360, ScrH () -310, Color(255,255,255))
            draw.SimpleText("Shop", "police-1", 370, ScrH () -380, Color(255,255,255))
            draw.SimpleText("Forum", "police-1", 360, ScrH () -450, Color(255,255,255))

            --Text
            draw.SimpleText("Welcome to [Server name]", "police-2", 60, ScrH () -450, Color(255,255,255))
            draw.SimpleText("[Server name] is a Semi-Serious server, ", "police-2", 60, ScrH () -400, Color(255,255,255))
            draw.SimpleText("Based on a French Roleplay, ", "police-2", 60, ScrH () -350, Color(255,255,255))
            draw.SimpleText("The map is [Map Name], ", "police-2", 60, ScrH () -300, Color(255,255,255))
            draw.SimpleText("Here is some information. ", "police-2", 60, ScrH () -250, Color(255,255,255))
            draw.SimpleText("Enjoy your games on our server!", "police-2", 60, ScrH () -150, Color(255,255,255))
            
        
    end
    local dpanel = vgui.Create("DPanel", frame)
    dpanel:SetPos(325,600)
    dpanel:SetSize(frame:GetWide(),425)
    dpanel:SetWide(150)
    dpanel.Paint = nil

    for k , v in pairs(button) do
        local dbutton = vgui.Create("DButton",dpanel)
        dbutton:Dock(BOTTOM)
        dbutton:SetTall(50)
        dbutton:DockMargin(0,20,0,0)
        dbutton:SetText(v.Name)
        dbutton.Paint = nil
            dbutton.DoClick = function (s,w,h)
                v.Function()
            end
        end
    end

hook.Add("OnContextMenuOpen", "vaxodopenmenu", function ()
    openmenualvis()

return false
end)
hook.Add("OnContextMenuClose", "vaxodopenmenu", function ()
    if IsValid(frame) then frame:Remove() end


return false
    end)