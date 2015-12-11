\include "deutsch.ly"
#(set-global-staff-size 24) 

\header {
    tagline = ""
}

\paper {
  line-width = 11\cm
  paper-width = 12\cm
  paper-height = 35\mm
}

\layout {
    indent = 0\mm
    ragged-last = ##f
}

melos = \relative c' {
    %\autoBeamOff
    \key d\major
    \time 3/4
    d4 d fis a a fis g g e a a fis
}



\score {
    \new Staff \with {
        %\remove Bar_engraver
        %\remove Time_signature_engraver
        %\remove Clef_engraver
	} {
	    \new Voice \with {
	        %\remove Stem_engraver
	        %\remove Rest_engraver
	        %\remove NoteHead_engraver
		} {
		    \melos
		}
	}
}

