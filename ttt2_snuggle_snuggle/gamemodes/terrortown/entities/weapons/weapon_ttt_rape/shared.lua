if SERVER then
    AddCSLuaFile( )
    resource.AddFile( "materials/vgui/ttt/weapon_snuggle_snuggle.vmt" )
end

SWEP.DrawWeaponInfoBox = true
SWEP.Author = "mexikoedi"
SWEP.Base = "weapon_tttbase"
SWEP.Kind = WEAPON_EQUIP1
SWEP.InLoadoutFor = nil

SWEP.CanBuy = { ROLE_TRAITOR }

SWEP.LimitedStock = true
SWEP.Icon = "vgui/ttt/weapon_snuggle_snuggle"

SWEP.EquipMenuData = {
    type = "item_weapon" ,
    name = "ttt2_snugglestruggle_name" ,
    desc = "ttt2_snugglestruggle_desc"
}

SWEP.PrintName = "Snuggle Struggle"
SWEP.ViewModelFOV = 82
SWEP.ViewModelFlip = true
SWEP.NoSights = false
SWEP.AllowDrop = false
SWEP.Spawnable = true
SWEP.AdminSpawnable = true
SWEP.AutoSpawnable = false
SWEP.Primary.Sound = Sound( "vo/novaprospekt/al_holdon.wav" )
SWEP.Primary.Recoil = 0
SWEP.Primary.Damage = 0
SWEP.Primary.NumShots = -1
SWEP.Primary.Delay = 3
SWEP.Primary.Distance = 75
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"
SWEP.Secondary.Delay = 3
attackerweapons = { }
victimweapons = { }
SWEP.ViewModel = Model( "models/weapons/v_hands.mdl" )
//SWEP.WorldModel = ""
SWEP.RapeLength = 5
SWEP.ThrustVelolicty = 750
SWEP.SoundDelay = 1.5

local victimPos = { Vector( 4.1165161132813 , 0.33807373046875 , 24.5458984375 ) , Vector( 10.886047363281 , -6.7128601074219 , 17.712890625 ) , Vector( 14.32470703125 , 6.6110534667969 , 24.662109375 ) , Vector( 10.561950683594 , 11.863800048828 , 14.9169921875 ) , Vector( 14.15673828125 , 11.935821533203 , 4.0126953125 ) , Vector( 8.0779418945313 , -10.698425292969 , 7.0859375 ) , Vector( 17.083557128906 , -6.5664367675781 , 1.28515625 ) , Vector( -6.3666381835938 , -3.5222778320313 , 22.1142578125 ) , Vector( -5.1080932617188 , -3.3052978515625 , 4.3046875 ) , Vector( 18.328247070313 , -0.20745849609375 , 18.6533203125 ) , Vector( -7.3578491210938 , 4.1403503417969 , 22.0517578125 ) , Vector( -6.7325439453125 , 3.0444641113281 , 4.2421875 ) , Vector( -23.113708496094 , 2.7197570800781 , 6.40234375 ) , Vector( -21.197875976563 , -3.1515197753906 , 6.390625 ) , }

local victimAng = { Angle( 13.763027191162 , -7.126654624939 , 297.44543457031 ) , Angle( 65.35457611084 , -125.17009735107 , 116.02203369141 ) , Angle( 56.451721191406 , 125.61678314209 , 68.999862670898 ) , Angle( 71.750823974609 , 1.1475394964218 , 309.23059082031 ) , Angle( 10.08162021637 , 20.952842712402 , 89.150527954102 ) , Angle( 30.348388671875 , 24.646505355835 , 257.76071166992 ) , Angle( -31.068134307861 , 5.5770988464355 , 100.95864105225 ) , Angle( 85.568023681641 , -10.062316894531 , 259.72805786133 ) , Angle( -11.049569129944 , 179.28791809082 , 92.02823638916 ) , Angle( 36.883769989014 , -10.713672637939 , 95.383735656738 ) , Angle( 87.360504150391 , -50.038749694824 , 219.5774230957 ) , Angle( -7.4636454582214 , -178.8634185791 , 90.854110717773 ) , Angle( 20.328042984009 , 175.31163024902 , 84.239585876465 ) , Angle( 20.698318481445 , -177.09216308594 , 94.63240814209 ) , }

// chest
// armright
// armleft
// lowerarmleft
// handleft
// lowerarmright
// handright
// legright
// lowerlegright
// head
// legleft
// lowerlegleft
// footleft
// footright
local attackerPos = { Vector( -0.65728759765625 , 0.377197265625 , 30.7626953125 ) , Vector( 9.2244873046875 , -3.9486083984375 , 35.96484375 ) , Vector( 6.1197509765625 , 10.176849365234 , 30.6552734375 ) , Vector( 8.9208984375 , 12.130462646484 , 20.0087890625 ) , Vector( 11.781127929688 , 14.134094238281 , 9.0712890625 ) , Vector( 10.643859863281 , -13.228057861328 , 29.0009765625 ) , Vector( 15.782470703125 , -6.8009948730469 , 20.9951171875 ) , Vector( -9.7853393554688 , -4.5965576171875 , 24.3857421875 ) , Vector( -11.373352050781 , -7.4108276367188 , 6.8203125 ) , Vector( 13.504028320313 , 4.9801635742188 , 34.6708984375 ) , Vector( -11.517456054688 , 2.9996948242188 , 25.9482421875 ) , Vector( -14.434143066406 , 11.57861328125 , 10.537109375 ) , Vector( -30.881225585938 , 10.939605712891 , 9.0634765625 ) , Vector( -26.714416503906 , -13.074645996094 , 9.19921875 ) , }

local attackerAng = { Angle( -23.909204483032 , 21.916522979736 , 247.47807312012 ) , Angle( 36.469985961914 , -81.487747192383 , 121.61176300049 ) , Angle( 72.325134277344 , 35.100917816162 , 310.2248840332 ) , Angle( 72.292373657227 , 35.012317657471 , 310.07629394531 ) , Angle( 53.682888031006 , 77.813186645508 , 63.455425262451 ) , Angle( 44.2184715271 , 51.356468200684 , 233.86199951172 ) , Angle( 18.646379470825 , 13.987821578979 , 129.42607116699 ) , Angle( 79.875244140625 , -120.97535705566 , 128.95693969727 ) , Angle( -8.2740859985352 , -159.73634338379 , 95.78791809082 ) , Angle( 4.1483745574951 , 25.958532333374 , 65.960624694824 ) , Angle( 59.834487915039 , 108.70742797852 , 10.802012443542 ) , Angle( 5.1143140792847 , -177.7751159668 , 61.338542938232 ) , Angle( 46.266540527344 , 113.92001342773 , 15.213181495667 ) , Angle( 49.310661315918 , -157.73908996582 , 96.905143737793 ) , }

local sounds = { "player/crit_death1.wav" , "player/crit_death2.wav" , "player/crit_death3.wav" , "player/crit_death4.wav" , "player/crit_death5.wav" , "bot/come_to_papa.wav" , "bot/im_pinned_down.wav" , "bot/oh_man.wav" , "bot/yesss.wav" , "bot/pain4" , "bot/pain5" , "bot/pain8" , "bot/pain9" , "bot/pain10" , "bot/stop_it.wav" , "bot/help.wav" , "bot/i_could_use_some_help.wav" , "bot/i_could_use_some_help_over_here.wav" , "bot/they_got_me_pinned_down_here.wav" , "bot/this_is_my_house.wav" , "bot/need_help.wav" , "bot/i_am_dangerous.wav" , "bot/yikes.wav" , "noo.wav" , "bot/whos_the_man.wav" , "bot/hang_on_im_coming.wav" , "hostage/hpain/hpain1.wav" , "hostage/hpain/hpain2.wav" , "hostage/hpain/hpain3.wav" , "hostage/hpain/hpain4.wav" , "hostage/hpain/hpain5.wav" , "hostage/hpain/hpain6.wav" , "vo/k_lab/al_youcoming.wav" , "vo/k_lab/kl_ahhhh.wav" , }

local sounds2 = { "bot/where_are_you_hiding.wav" , }

local sounds3 = { "physics/body/body_medium_break2.wav" , "physics/body/body_medium_break3.wav" , "physics/body/body_medium_break4.wav" , "physics/body/body_medium_impact_hard1.wav" , "physics/body/body_medium_impact_hard2.wav" , "physics/body/body_medium_impact_hard3.wav" , "physics/body/body_medium_impact_hard4.wav" , "physics/body/body_medium_impact_hard5.wav" , "physics/body/body_medium_impact_hard6.wav" , }

function SWEP:Initialize( )
    if CLIENT then
        self:AddHUDHelp( "ttt2_sungglestruggle_help1" , "ttt2_sungglestruggle_help2" , true )
    end
end

function SWEP:DrawWorldModel( )
end

function SWEP:Reload( )
end

function SWEP:Think( )
end

if SERVER then
    // this function removes the loadout of a player
    // while also storing all information for a later use
    // credit: Alf21
    local function RemoveLoadout( ply )
        ply.savedSnuggleInventoryItems = table.Copy( ply:GetEquipmentItems( ) )
        // reset inventory
        ply.savedSnuggleInventory = { }

        // save inventory
        for _ , v in pairs( ply:GetWeapons( ) ) do
            ply.savedSnuggleInventory[ #ply.savedSnuggleInventory + 1 ] = {
                cls = WEPS.GetClass( v ) ,
                clip1 = v:Clip1( ) ,
                clip2 = v:Clip2( )
            }
        end

        ply.savedSnuggleInventoryWeapon = WEPS.GetClass( ply:GetActiveWeapon( ) )
        // clear inventory
        ply:StripWeapons( )
    end

    // this function returns the loadout of a player
    // which was previously stored
    // credit: Alf21
    local function GiveLoadout( ply )
        if ply.savedSnuggleInventory then
            for _ , tbl in ipairs( ply.savedSnuggleInventory ) do
                if tbl.cls then
                    local wep = ply:Give( tbl.cls )

                    if IsValid( wep ) then
                        wep:SetClip1( tbl.clip1 || 0 )
                        wep:SetClip2( tbl.clip2 || 0 )
                    end
                end
            end
        end

        if ply.savedSnuggleInventoryWeapon then
            ply:SelectWeapon( ply.savedSnuggleInventoryWeapon )
        end

        // reset inventory
        ply.savedSnuggleInventory = nil
        ply.savedSnuggleInventoryItems = nil
    end

    local function InstantDamage( ply , damage , attacker , inflictor )
        local dmg = DamageInfo( )
        dmg:SetDamage( damage || 100 )
        dmg:SetAttacker( attacker || ply )
        dmg:SetDamageForce( ply:GetAimVector( ) )
        dmg:SetDamagePosition( ply:GetPos( ) )
        dmg:SetDamageType( DMG_GENERIC )

        if inflictor then
            dmg:SetInflictor( inflictor )
        end

        ply:TakeDamageInfo( dmg )
    end

    function SWEP:PrimaryAttack( )
        local owner = self:GetOwner( )
        local victim = owner:GetEyeTrace( ).Entity
        if !IsValid( victim ) || victim:IsNPC( ) || !victim:IsPlayer( ) || !victim:IsTerror( ) || !victim:IsActive( ) then return end
        local positionOwner = owner:GetPos( )
        local positionVictim = victim:GetPos( )
        local positionBase = positionOwner + Vector( 0 , 0 , 5 )
        if victim:GetPos( ):Distance( owner:GetPos( ) ) > self.Primary.Distance then return end
        owner:EmitSound( self.Primary.Sound )
        // set both to spec camera
        owner:Spectate( OBS_MODE_ROAMING )
        victim:Spectate( OBS_MODE_ROAMING )
        // remove loadout from both players
        RemoveLoadout( owner )
        RemoveLoadout( victim )
        local victimRagdoll = ents.Create( "prop_ragdoll" )
        victimRagdoll:SetModel( victim:GetModel( ) )
        victimRagdoll:SetPos( positionVictim )
        victimRagdoll:Spawn( )
        victimRagdoll:Activate( )

        for i = 1 , victimRagdoll:GetPhysicsObjectCount( ) - 1 do
            local phys = victimRagdoll:GetPhysicsObjectNum( i )
            if !IsValid( phys ) then continue end
            phys:EnableCollisions( true )
            phys:EnableMotion( false )
            phys:SetPos( positionBase + victimPos[ i ] )
            phys:SetAngles( victimAng[ i ] )
        end

        local ownerRagdoll = ents.Create( "prop_ragdoll" )
        ownerRagdoll:SetModel( owner:GetModel( ) )
        ownerRagdoll:SetPos( positionOwner )
        ownerRagdoll:Spawn( )
        ownerRagdoll:Activate( )

        for i = 1 , ownerRagdoll:GetPhysicsObjectCount( ) - 1 do
            local phys = ownerRagdoll:GetPhysicsObjectNum( i )
            if !IsValid( phys ) then continue end
            phys:SetPos( positionBase + attackerPos[ i ] )
            phys:SetAngles( attackerAng[ i ] )
            phys:EnableCollisions( false )
            phys:EnableMotion( true )

            if i == 2 || i == 5 || i == 7 || i == 10 || i == 13 || i == 14 then
                phys:EnableMotion( false )
            end
        end

        // spectate each other
        owner:SpectateEntity( victimRagdoll )
        victim:SpectateEntity( victimRagdoll )
        local thrustTimerString = "RapeThrust_" .. ( owner:SteamID64( ) || "SINGLEPLAYER" )
        local phys = victimRagdoll:GetPhysicsObjectNum( 11 )

        if IsValid( phys ) then
            phys:SetVelocity( Vector( 0 , 0 , 100000 ) )

            timer.Create( thrustTimerString , 0.3 , 0 , function( )
                if !IsValid( phys ) || !IsValid( victimRagdoll ) then return end
                phys:SetVelocity( Vector( 0 , 0 , self.ThrustVelolicty ) )

                if math.random( 5 ) == 3 then
                    victimRagdoll:EmitSound( sounds3[ math.random( #sounds3 ) ] )
                end
            end )
        end

        local soundTimerString = "EmitRapeSounds_" .. ( owner:SteamID64( ) || "SINGLEPLAYER" )

        timer.Create( soundTimerString , self.SoundDelay , 0 , function( )
            if !victimRagdoll:IsValid( ) then return end
            victimRagdoll:EmitSound( sounds[ math.random( #sounds ) ] )
        end )

        timer.Simple( self.RapeLength , function( )
            if IsValid( owner ) then
                owner:UnSpectate( )
                owner:Spawn( )
                owner:SetPos( positionOwner )
                GiveLoadout( owner )
                // remove weapon and select last weapon
                owner:StripWeapon( "weapon_ttt_rape" )
                RunConsoleCommand( "lastinv" )
            end

            if IsValid( victim ) then
                victim:UnSpectate( )
                victim:Spawn( )
                victim:SetPos( positionVictim )
                GiveLoadout( victim )
                // create damage
                InstantDamage( victim , 100 , owner , ents.Create( "weapon_ttt_rape" ) )
            end

            SafeRemoveEntity( victimRagdoll )
            SafeRemoveEntity( ownerRagdoll )
            timer.Remove( soundTimerString )
            timer.Remove( thrustTimerString )
        end )
    end
end

SWEP.NextSecondaryAttack = 0

function SWEP:SecondaryAttack( )
    if self.NextSecondaryAttack > CurTime( ) then return end
    self.NextSecondaryAttack = CurTime( ) + self.Secondary.Delay

    if SERVER then
        self:GetOwner( ):EmitSound( sounds2[ math.random( #sounds2 ) ] )
    end
end