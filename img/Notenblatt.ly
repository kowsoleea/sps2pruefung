#(set-global-staff-size 30)

\header {
  tagline=""
}

\score {
  { 
    \repeat unfold 9 { s1 \break } 
  }
  \layout {
    indent = 0\in
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \remove "Clef_engraver"
      \remove "Bar_engraver"
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}

\paper {
  ragged-last-bottom = ##f
  line-width = 170\mm
  left-margin = 25\mm
  bottom-margin = 20\mm
  top-margin = 35\mm
}
