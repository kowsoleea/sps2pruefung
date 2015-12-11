\include "deutsch.ly"
#(set-global-staff-size 48)

\header {
    tagline = ""
}

\paper {
  line-width = 9\cm
  paper-width = 9\cm
  paper-height = 3\cm
}

\layout {
    indent = 1\cm
}

melos = \relative c' {
    r1 r2
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
        } {
            \melos
        }
    }
}

