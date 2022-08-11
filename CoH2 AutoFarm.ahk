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
    CoordMode, Pixel, Client
    CoordMode, Mouse, Client
    While (True) {
        If (isMainMenu()) {
            SoundBeep
            Send {Click 205 270}
            Sleep 3*1000
        }
        Else If (isModeSelect()) {
            Send {Click 820 453}
            Sleep 3*1000
        }
        Else If (isMapSelect()) {
            Send {Click 425 338}
            Sleep 500
            Send {Click 435 452}
            Sleep 500
            Send {Click 441 612}
            Sleep 500
            Send {Click 1130 241}
            Sleep 500
            Send {Click 1130 362}
            Sleep 500
            Send {Click 1135 489}
            Sleep 500
            Send {Click 687 722}
            SoundBeep, 300, 500
            SoundBeep, 700, 500
            Sleep 3*1000
        }
        Else If (isDisconnect()) {
            SoundBeep, 700, 500
            SoundBeep, 300, 500
            Send {Click 685 410}
            Sleep 3*1000
        }
        Else If (isGame()) {
            Sleep 5*60*1000
            Send {Click 117 14}
            Sleep 500
            Send {Click 95 97}
            Sleep 500
            Send {Click 288 259}
            Sleep 500
            Send {Click 454 264}
            Sleep 500
            Send {Click 630 451}
            Sleep 30*1000
            Send {Click 684 303}
            Sleep 3*1000
            Send {Click 611 60}
            Sleep 3*1000
        }
        Else If (isStats()) {
            Send {Click 649 677}
            Sleep 3*1000
        }
        Else {
            Send {Space}
            Sleep 2000
        }
    }
    Return

isMainMenu() {
    PixelGetColor, mainMenu0, 183, 103      ;761E15
    PixelGetColor, mainMenu1, 243, 103      ;E0DBD4
    PixelGetColor, mainMenu2, 142, 178      ;080D13
    PixelGetColor, mainMenu3, 288, 194      ;510F0D
    PixelGetColor, mainMenu4, 313, 439      ;353A35
    isMainMenu0 := mainMenu0 == 0x151E76
    isMainMenu1 := mainMenu1 == 0xD4DBE0
    isMainMenu2 := mainMenu2 == 0x130D08
    isMainMenu3 := mainMenu3 == 0x0D0F51
    isMainMenu4 := mainMenu4 == 0x353A35
    return isMainMenu0 && isMainMenu1 && isMainMenu2 && isMainMenu3
            && isMainMenu4
}

isModeSelect() {
    PixelGetColor, modeSelect0, 196, 104        ;B7A8A2
    PixelGetColor, modeSelect1, 343, 516        ;D9D6C4
    PixelGetColor, modeSelect2, 758, 533        ;EAE5D2
    PixelGetColor, modeSelect3, 724, 508        ;5F463E
    PixelGetColor, modeSelect4, 863, 506        ;F1E9D2
    isModeSelect0 := modeSelect0 == 0xA2A8B7
    isModeSelect1 := modeSelect1 == 0xC4D6D9
    isModeSelect2 := modeSelect2 == 0xD2E5EA
    isModeSelect3 := modeSelect3 == 0x3E465F
    isModeSelect4 := modeSelect4 == 0xD2E9F1
    return isModeSelect0 && isModeSelect1 && isModeSelect2 && isModeSelect3
            && isModeSelect4
}

isMapSelect() {
    PixelGetColor, mapSelect0, 310, 159     ;F5ECE1
    PixelGetColor, mapSelect1, 823, 184     ;787578
    PixelGetColor, mapSelect2, 821, 227     ;393639
    PixelGetColor, mapSelect3, 110, 548     ;262626
    PixelGetColor, mapSelect4, 670, 254     ;383638
    isMapSelect0 := mapSelect0 == 0xE1ECF5
    isMapSelect1 := mapSelect1 == 0x787578
    isMapSelect2 := mapSelect2 == 0x393639
    isMapSelect3 := mapSelect3 == 0x262626
    isMapSelect4 := mapSelect4 == 0x383638
    return isMapSelect0 && isMapSelect1 && isMapSelect2 && isMapSelect3
            && isMapSelect4
} 

isDisconnect() {
    PixelGetColor, disconnect0, 662, 333        ;AEA7A0
    PixelGetColor, disconnect1, 712, 376        ;998A67
    PixelGetColor, disconnect2, 768, 333        ;813329
    PixelGetColor, disconnect3, 569, 378        ;2A221C
    PixelGetColor, disconnect4, 695, 429        ;444742
    isDisconnect0 := disconnect0 == 0xA0A7AE
    isDisconnect1 := disconnect1 == 0x678A99
    isDisconnect2 := disconnect2 == 0x293381
    isDisconnect3 := disconnect3 == 0x1C222A
    isDisconnect4 := disconnect4 == 0x424744
    return isDisconnect0 && isDisconnect1 && isDisconnect2 && isDisconnect3
            && isDisconnect4
}

isGame() {
    PixelGetColor, game0, 251, 538      ;4F4A47
    PixelGetColor, game1, 9, 579       ;1F1E16
    PixelGetColor, game2, 263, 703      ;4D4542
    PixelGetColor, game3, 59, 528       ;302927
    PixelGetColor, game4, 390, 620      ;404240
    isGame0 := game0 == 0x474A4F
    isGame1 := game1 == 0x161E1F
    isGame2 := game2 == 0x42454D
    isGame3 := game3 == 0x272930
    isGame4 := game4 == 0x404240
    return isGame0 && isGame1 && isGame2 && isGame3 && isGame4
}

isStats() {
    PixelGetColor, stats0, 431, 86     ;080C08
    PixelGetColor, stats1, 238, 298     ;50594F
    PixelGetColor, stats2, 1122, 479    ;060D12
    PixelGetColor, stats3, 1129, 88    ;889488
    PixelGetColor, stats4, 701, 87     ;3D3A3A
    isStats0 := stats0 == 0x080C08
    isStats1 := stats1 == 0x4F5950
    isStats2 := stats2 == 0x120D06
    isStats3 := stats3 == 0x889488
    isStats4 := stats4 == 0x3A3A3D
    return isStats0 && isStats1 && isStats2 && isStats3 && isStats4
}
