\version "2.18.2"

\header {
  title = "Whimsicle"
  composer = "toddpress & ChatGTP"
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" {
      \key d \minor
      \time 4/4

      % Upper staff notation goes here
      \relative c' {
        \clef treble

        % Voice 1
        \voiceOne
        \tempo 4 = 200
        \repeat volta 2 {
          d4 e fis g a8 g fis4 e d8 e fis g4 fis8 g a
          b8 a g fis4 e d8 e fis g4 fis8 g a
        }

        % Voice 2
        \voiceTwo
        \repeat volta 2 {
          d4 r r r d8 e fis g4 fis8 g a
          b8 a g fis4 e d8 e fis g4 fis8 g a
        }
      }
    }

    \new Staff = "lower" {
      \key d \minor
      \time 4/4

      % Lower staff notation goes here
      \relative c {
        \clef bass

        % Voice 1
        \voiceOne
        \repeat volta 2 {
          d,2. d4 e fis g a8 g fis4 e d8 e fis g4 fis8 g a
          b8 a g fis4 e d8 e fis g4 fis8 g a
        }

        % Voice 2
        \voiceTwo
        \repeat volta 2 {
          d,2. d4 r r r d8 e fis g4 fis8 g a
          b8 a g fis4 e d8 e fis g4 fis8 g a
        }
      }
    }
  >>
  \layout {
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  }
  \midi {}
}
