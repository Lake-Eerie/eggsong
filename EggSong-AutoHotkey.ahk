#Requires AutoHotkey >=1.1.37 <2.0
; Play the song in Animal Well that is revealed by collecting all the eggs.
;
; Use Ctrl-Shift-s to trigger the macro once the script is running.
;
; For the macro to work, the flute must be out (or active, or whatever
; you want to call it when you’re sitting there ready to play it).
;
; Despite the requires line above, this should still work for older
; versions (and maybe even on v2), but I have not tested it on anything
; else.
;
; This uses keyboard input as it seems to be the most reliable.

; The song itself is structured into eight lines of eight notes each,
; with most liens functionally split into two four note motifs. There
; are eight such motifs throughout the song, with most repeated at least
; once. This script uses a subroutine for each line and for each motif,
; as it makes it easier to follow the structure, as well as a subroutine
; for each of the eight possible notes.

^+s::
    GoSub EggSong
    return

Note1:
    sleep 50
    Send {Right down}{x down}
    sleep 250
    Send {x up}{Right up}
    return

Note2:
    sleep 50
    Send {Right down}{Down down}{x down}
    sleep 250
    Send {x up}{Right up}{Down up}
    return

Note3:
    sleep 50
    Send {Down down}{x down}
    sleep 250
    Send {x up}{Down up}
    return

Note4:
    sleep 50
    Send {Down down}{Left down}{x down}
    sleep 250
    Send {x up}{Down up}{Left up}
    return

Note5:
    sleep 50
    Send {Left down}{x down}
    sleep 250
    Send {x up}{Left up}
    return

Note6:
    sleep 50
    Send {Left down}{Up down}{x down}
    sleep 250
    Send {x up}{Left Up}{Up up}
    return

Note7:
    sleep 50
    Send {Up down}{x down}
    sleep 250
    Send {x up}{Up up}
    return

Note8:
    sleep 50
    Send {Up down}{Right down}{x down}
    sleep 250
    Send {x up}{Up up}{Right up}
    return

Motif1:
    GoSub Note6
    GoSub Note3
    GoSub Note1
    GoSub Note3
    return

Motif2:
    GoSub Note6
    GoSub Note4
    GoSub Note2
    GoSub Note4
    return

Motif3:
    GoSub Note8
    GoSub Note5
    GoSub Note3
    GoSub Note5
    return

Motif4:
    GoSub Note7
    GoSub Note5
    GoSub Note2
    GoSub Note5
    return

Motif5:
    GoSub Note6
    GoSub Note8
    GoSub Note6
    GoSub Note4
    return

Motif6:
    GoSub Note8
    GoSub Note7
    GoSub Note5
    GoSub Note3
    return

Motif7:
    GoSub Note7
    GoSub Note6
    GoSub Note4
    GoSub Note5
    return

Motif8:
    GoSub Note7
    GoSub Note6
    GoSub Note5
    GoSub Note6
    return

Line1:
    GoSub Motif1
    GoSub Motif1
    return

Line2:
    GoSub Motif2
    GoSub Motif2
    return

Line3:
    GoSub Motif3
    GoSub Motif3
    return

Line4:
    GoSub Motif4
    GoSub Motif4
    return

Line5:
    GoSub Motif1
    GoSub Motif1
    return

Line6:
    GoSub Motif2
    GoSub Motif2
    return

Line7:
    GoSub Motif5
    GoSub Motif6
    return

Line8:
    GoSub Motif7
    GoSub Motif8
    return

EggSong:
    GoSub Line1
    GoSub Line2
    GoSub Line3
    GoSub Line4
    GoSub Line5
    GoSub Line6
    GoSub Line7
    GoSub Line8
    return
