\version "2.20.0"

\header {
  title = "Jarring Boisterous Cacophony"
  composer = "ChatGPT"
}

\language "english"

\score {

  \new StaffGroup <<
    \new Voice = "foo" {
        \relative {
          \autoBeamOff
          \time 2/4
          c''4 b8. a16 | g4. f8 | e4 d | c2 |
        }
      }
    \new Lyrics \lyricsto "foo" { nei -- ghs | nei -- ghs | whin -- nies | nei -- ghs }

    \new Staff {
      \clef "treble"
      \key d \major
      \time 4/4

      \relative c' {
        \override Staff.TimeSignature.stencil = ##f
        \override Score.BarNumber.stencil = ##f

        % Top-line vocal melody
        d,2es4. d,2es8 c2 b,2es4. a8 g2 d,2es4. d,2es8 c2 b,2es4. a8 g2

        }
      }
    

    \new Staff {
      \clef "bass"
      \key d' \major
      \time 4/4

      \relative c {
        % Bassline
        d,2es4 r4 b,1es4 r4 d,2es,2 r4 c4 r4 b,1es2 r4 a4 r4 d,2es r4 c4 r4
        d,2es4 r4 b,1es4 r4 d,2es,2 r4 c4 r4 b,1es2 r4 a4 r4 d,2es r4 c4 r4
      }
    }

  >>
  
  \layout {
    indent = 0
    ragged-right = ##f
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }

  \midi {}
}
