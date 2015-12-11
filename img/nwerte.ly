\include "deutsch.ly"
#(set-global-staff-size 24) 

\header {
    tagline = ""
}

\paper {
  line-width = 6\cm
  paper-width = 7\cm
  paper-height = 35\mm
}

\layout {
    indent = 0\mm
}

melos = \relative c' {
    %\autoBeamOff
    f1 f2 f4 f8 f16   
}



\score {
    \new Staff \with {
        \remove Bar_engraver
        \remove Time_signature_engraver
        \remove Clef_engraver
	} {
	    \new Voice \with {
	        %\remove Stem_engraver
	        \remove Rest_engraver
		} {
		    \melos
		}
	}
}

