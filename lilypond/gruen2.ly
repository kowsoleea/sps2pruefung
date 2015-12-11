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
    \time 2/4
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
    g4 g a a fis8 fis e fis g4 d
}
metrum = \relative c' {
    \stemDown
    \override NoteHead #'font-size = #-4
    \override NoteHead #'style = #'cross
    \override Stem #'font-size = #-4
    c4 c c c c c c c
}

mylyrics = \lyricmode {
    \override LyricText #'font-size = #-4
    "1" "2" 
    "1" "2" 
    "1" und "2" und
    "1" "2" 
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
        %\new Voice = "metrum" {\metrum }
        \new Lyrics \lyricsto "upperVoice" { \mylyrics }
    >>}
    \layout {
        indent = 0
        \context {
            \Score
            \override SpacingSpanner
                #'base-shortest-duration = #(ly:make-moment 1 16)
        }
    }
}

\paper {
    paper-width = 140\mm
    paper-height = 42\mm
    %line-width = 9\cm
    %between-system-padding = 5\mm
    %ragged-bottom = ##t
    page-top-space = 0
    %annotate-spacing = ##t
}

