%Created by Ivanildo Kowsoleea
%Creation date: Sun Oct 20 21:19:27 CEST 2013
%\version "2.11.34"
\header {
    tagline = ""
}

\include "deutsch.ly"
#(set-global-staff-size 28)


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
    c4 d e f g a h
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
    }{ <<
        %\override Staff.StaffSymbol #'line-count = #1
        %\override Staff.TimeSignature #'style = #'numbered
        %\override Staff.BarLine #'bar-extent = #'(-2 . 2)
        \global
        %\structure
        \new Voice = "upperVoice"  { \upper }
        \new Lyrics \lyricsto "upperVoice" { \mylyrics }
    >> }
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

