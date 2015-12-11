\include "deutsch.ly"
#(set-global-staff-size 24) 

\header {
    tagline = ""
}

\paper {
  line-width = 8\cm
  paper-width = 12\cm
  paper-height = 35\mm
}

\layout {
    indent = 0\mm
    ragged-last = ##f
}

melos = \relative c' {
    %\autoBeamOff
    \key c\major
    \time 4/4
    s1 d4 d8[ e f g] a4 
    }



\score {
    \new Staff \with {
        %\remove Bar_engraver
        \remove Time_signature_engraver
        \remove Clef_engraver
	} {
	    \new Voice \with {
	        %\remove Stem_engraver
	        %\remove Auto_beam_engraver
	        %\remove Rest_engraver
	        %\remove NoteHead_engraver
		} {
		    \melos
		}
	}
}

