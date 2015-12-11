\include "deutsch.ly"
#(set-global-staff-size 36)

\header {
    tagline = ""
}

\paper {
  line-width = 7\cm
  paper-width = 7.5\cm
  paper-height = 3.5\cm
}

\layout {
    indent = 0\cm
}

melos = \relative c'' {
     s ais4 as a s
}



\score {
    \new Staff \with {
        \remove Bar_engraver
        \remove Time_signature_engraver
        %\remove Staff_symbol_engraver
        \remove Clef_engraver
    } {
        \new Voice \with {
            \remove Stem_engraver
            %\remove Rest_engraver
            %\remove Note_heads_engraver
        } {
            \melos
        }
    }
}

