/*
Company of Heroes 2 Coin Farm Script
===============================================================================
Script by Tonkovski.
===============================================================================
 - Requires CheatCommands Mod II to function, you have to manually switch the
custom game win condition to "CheatCommands Mod II (Annih.)", a 4v4 map is also
required to be selected.
 - Tested under resolution 1366*768 window mode, use Alt + Enter to activate.
 - Start at the title screen, press F3 to activate this script.
 - Due to looting limits the script only brings at most 4 scrapbox per day.
*/

#IfWinActive Company Of Heroes 2
$f3::
    While (True) {
        If (isMainMenu()) {
            SoundBeep
            Send {Click 213 301}
            Sleep 3*1000
        }
        Else If (isModeSelect()) {
            Send {Click 828 484}
            Sleep 3*1000
        }
        Else If (isMapSelect()) {
            Send {Click 433 369}
            Sleep 500
            Send {Click 443 483}
            Sleep 500
            Send {Click 449 643}
            Sleep 500
            Send {Click 1138 272}
            Sleep 500
            Send {Click 1138 393}
            Sleep 500
            Send {Click 1143 520}
            Sleep 500
            Send {Click 695 753}
            SoundBeep, 300, 500
            SoundBeep, 700, 500
            Sleep 3*1000
        }
        Else If (isDisconnect()) {
            SoundBeep, 700, 500
            SoundBeep, 300, 500
            Send {Click 693 441}
            Sleep 3*1000
        }
        Else If (isGame()) {
            Sleep 5*60*1000
            Send {Click 125 45}
            Sleep 500
            Send {Click 103 128}
            Sleep 500
            Send {Click 296 290}
            Sleep 500
            Send {Click 462 295}
            Sleep 500
            Send {Click 638 482}
            Sleep 30*1000
            Send {Click 692 334}
            Sleep 3*1000
            Send {Click 619 91}
            Sleep 3*1000
        }
        Else If (isStats()) {
            Send {Click 657 708}
            Sleep 3*1000
        }
        Else {
            Send Space
            Sleep 2000
        }
    }
    Return

isMainMenu() {
    PixelGetColor, mainMenu0, 191, 134      ;761E15
    PixelGetColor, mainMenu1, 251, 134      ;E0DBD4
    PixelGetColor, mainMenu2, 150, 209      ;080D13
    PixelGetColor, mainMenu3, 296, 225      ;510F0D
    PixelGetColor, mainMenu4, 321, 470      ;353A35
    isMainMenu0 := mainMenu0 == 0x151E76
    isMainMenu1 := mainMenu1 == 0xD4DBE0
    isMainMenu2 := mainMenu2 == 0x130D08
    isMainMenu3 := mainMenu3 == 0x0D0F51
    isMainMenu4 := mainMenu4 == 0x353A35
    return isMainMenu0 && isMainMenu1 && isMainMenu2 && isMainMenu3
            && isMainMenu4
}

isModeSelect() {
    PixelGetColor, modeSelect0, 204, 135        ;B7A8A2
    PixelGetColor, modeSelect1, 351, 547        ;D9D6C4
    PixelGetColor, modeSelect2, 766, 564        ;EAE5D2
    PixelGetColor, modeSelect3, 732, 539        ;5F463E
    PixelGetColor, modeSelect4, 871, 537        ;F1E9D2
    isModeSelect0 := modeSelect0 == 0xA2A8B7
    isModeSelect1 := modeSelect1 == 0xC4D6D9
    isModeSelect2 := modeSelect2 == 0xD2E5EA
    isModeSelect3 := modeSelect3 == 0x3E465F
    isModeSelect4 := modeSelect4 == 0xD2E9F1
    return isModeSelect0 && isModeSelect1 && isModeSelect2 && isModeSelect3
            && isModeSelect4
}

isMapSelect() {
    PixelGetColor, mapSelect0, 830, 275     ;3B3A3B
    PixelGetColor, mapSelect1, 1244, 215    ;9B989B
    PixelGetColor, mapSelect2, 1248, 283    ;5F5F5F
    PixelGetColor, mapSelect3, 856, 327     ;C6C7C6
    PixelGetColor, mapSelect4, 831, 216     ;555855
    isMapSelect0 := mapSelect0 == 0x3B3A3B
    isMapSelect1 := mapSelect1 == 0x9B989B
    isMapSelect2 := mapSelect2 == 0x5F5F5F
    isMapSelect3 := mapSelect3 == 0xC6C7C6
    isMapSelect4 := mapSelect4 == 0x555855
    return isMapSelect0 && isMapSelect1 && isMapSelect2 && isMapSelect3
            && isMapSelect4
}

isDisconnect() {
    PixelGetColor, disconnect0, 670, 364        ;AEA7A0
    PixelGetColor, disconnect1, 720, 407        ;998A67
    PixelGetColor, disconnect2, 776, 364        ;813329
    PixelGetColor, disconnect3, 577, 409        ;2A221C
    PixelGetColor, disconnect4, 703, 460        ;444742
    isDisconnect0 := disconnect0 == 0xA0A7AE
    isDisconnect1 := disconnect1 == 0x678A99
    isDisconnect2 := disconnect2 == 0x293381
    isDisconnect3 := disconnect3 == 0x1C222A
    isDisconnect4 := disconnect4 == 0x424744
    return isDisconnect0 && isDisconnect1 && isDisconnect2 && isDisconnect3
            && isDisconnect4
}

isGame() {
    PixelGetColor, game0, 259, 569      ;4F4A47
    PixelGetColor, game1, 17, 610       ;1F1E16
    PixelGetColor, game2, 271, 734      ;4D4542
    PixelGetColor, game3, 67, 559       ;302927
    PixelGetColor, game4, 398, 651      ;404240
    isGame0 := game0 == 0x474A4F
    isGame1 := game1 == 0x161E1F
    isGame2 := game2 == 0x42454D
    isGame3 := game3 == 0x272930
    isGame4 := game4 == 0x404240
    return isGame0 && isGame1 && isGame2 && isGame3 && isGame4
}

isStats() {
    PixelGetColor, stats0, 439, 117     ;080C08
    PixelGetColor, stats1, 246, 329     ;50594F
    PixelGetColor, stats2, 1130, 510    ;060D12
    PixelGetColor, stats3, 1137, 119    ;889488
    PixelGetColor, stats4, 709, 118     ;3D3A3A
    isStats0 := stats0 == 0x080C08
    isStats1 := stats1 == 0x4F5950
    isStats2 := stats2 == 0x120D06
    isStats3 := stats3 == 0x889488
    isStats4 := stats4 == 0x3A3A3D
    return isStats0 && isStats1 && isStats2 && isStats3 && isStats4
}
