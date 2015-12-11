\include "deutsch.ly"
#(set-global-staff-size 48)

\header {
    tagline = ""
}

\paper {
  line-width = 4\cm
  paper-width = 4.5\cm
  paper-height = 3\cm
}

\layout {
    indent = 0\cm
}

melos = \relative c' {
    r8 r16
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

