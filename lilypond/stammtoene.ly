%Created by Ivanildo Kowsoleea
%Creation date: Sun Oct 20 21:19:27 CEST 2013
%\version "2.11.34"
\header {
    tagline = ""
}

\include "deutsch.ly"
#(set-global-staff-size 24)


global = {
      \key c \major
      \time 4/4
      %\clef "treble_8"
      %check tempo
  	%\override Score.MetronomeMark #'stencil = ##f
	%\tempo 4 = 100 
}

structure = {
  %Check structure and repeats of the piece here
  
}

%
% ---- music starts here ---
%

upper = {
  \transpose c c' {
    %Insert upper voice notes
    c4_\markup{\larger c \super \smaller 1}\once \override Voice.TextScript #'extra-offset = #'(0.0 . -0.5 ) 
    d_\markup{\larger d \super \smaller 1} \once \override Voice.TextScript #'extra-offset = #'(0.0 . -0.8 )
    e_\markup{\larger e \super \smaller 1} \once \override Voice.TextScript #'extra-offset = #'(0.0 . -1.3 )
    f_\markup{\larger f \super \smaller 1} \once \override Voice.TextScript #'extra-offset = #'(0.0 . -1.3 )
    g_\markup{\larger g \super \smaller 1} \once \override Voice.TextScript #'extra-offset = #'(0.0 . -1.4 )
    a_\markup{\larger a \super \smaller 1} 
    h_\markup{\larger h \super \smaller 1} 
  }
}

mylyrics = \lyricmode {
    c d e f g a h
}

\score {
    \new Staff  \with {
        %\remove Clef_engraver
        \remove Time_signature_engraver
        \remove Bar_engraver
    }{<< 
        %\override Staff.StaffSymbol #'line-count = #1
        %\override Staff.TimeSignature #'style = #'numbered
        %\override Staff.BarLine #'bar-extent = #'(-2 . 2)
        \global 
        %\structure
        \new Voice = "upperVoice"  { \upper }
        %\new Lyrics \lyricsto "upperVoice" { \mylyrics }
    >>}
	\layout {
		indent = 0
	}
}

\paper {
    paper-width = 92\mm
    paper-height = 42\mm
    %line-width = 7\cm
    %between-system-padding = 5\mm
    %ragged-bottom = ##t
    page-top-space = 0
    %annotate-spacing = ##t
}

