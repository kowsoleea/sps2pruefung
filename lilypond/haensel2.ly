%Created by Ivanildo Kowsoleea
%Creation date: 2013/12/28 16:41:28
%\version "2.11.34"
\header {
    tagline = ""
}

\include "deutsch.ly"
#(set-global-staff-size 20)


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

upper = \relative c''{
    \stemUp
    c2 a4 b c2 a4 f g g g a f1
}
metrum = \relative c' {
    \stemDown
    \override NoteHead #'font-size = #-4
    \override NoteHead #'style = #'cross
    \override Stem #'font-size = #-4
    c4 c c c c c c c c c c c c c c c 
}

mylyrics = \lyricmode {
    \override LyricText #'font-size = #-4
    "1" "2" "3" "4"
    "1" "2" "3" "4"
    "1" "2" "3" "4"
    "1" "2" "3" "4"
}

\score {
    \new Staff  \with {
        %\remove Clef_engraver
        %\remove Time_signature_engraver
        %\remove Bar_engraver
        %\remove Staff_symbol_engraver
    }{<<
        %\override Staff.StaffSymbol #'line-count = #1
        \override Staff.TimeSignature #'style = #'numbered
        %\override Staff.BarLine #'bar-extent = #'(-2 . 2)
        \global
        %\structure
        \new Voice = "upperVoice"  { \upper }
        \new Voice = "metrum" {\metrum }
        \new Lyrics \lyricsto "metrum" { \mylyrics }
    >>}
    \layout {
        indent = 0
    }
}

\paper {
    paper-width = 140\mm
    paper-height = 42\mm
    %line-width = 7\cm
    %between-system-padding = 5\mm
    %ragged-bottom = ##t
    page-top-space = 0
    %annotate-spacing = ##t
}

