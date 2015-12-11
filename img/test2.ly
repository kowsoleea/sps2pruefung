\include "deutsch.ly"
#(set-global-staff-size 28) 

\header {
    tagline = ""
}

\paper {
  line-width = 13\cm
  paper-width = 14\cm
  paper-height = 6\cm
}

\layout {
    indent = 1\cm
}

melos = \relative c' { 
    \once \override Score.RehearsalMark #'extra-offset = #'(0 . -12 )
    \mark \markup{\tinyG-Schlüssel} 
    s4 s s 
    \once \override Staff.Clef #'extra-offset = #'(0 . -2 )
    \clef bass 
    \once \override Score.RehearsalMark #'extra-offset = #'(0 . -10 )
    \mark \markup{\tinyF-Schlüssel} 
    s s s
    \once \override Staff.Clef #'extra-offset = #'(0 . -1 )
    \clef alto 
    \once \override Score.RehearsalMark #'extra-offset = #'(0 . -10 )
    \mark \markup{\tinyC-Schlüssel}
    s
}



\score {
    \new Staff \with {
        \remove Bar_engraver
        \remove Time_signature_engraver
        \remove Staff_symbol_engraver
	} {
	    \new Voice \with {
	        \remove Stem_engraver
	        \remove Rest_engraver
		} {
		    \melos
		}
	}
}

