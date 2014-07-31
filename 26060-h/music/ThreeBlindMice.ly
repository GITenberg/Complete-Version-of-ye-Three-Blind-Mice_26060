\version "2.10.25" 
\include "english.ly"

  #(set-global-staff-size 14)

  global = {
  \key d \major
  \time 12/8
  }

  \header
  {title = \markup \bigger
    {“Three Blind Mice.” \smaller {Round (or Canon) for Three Voices.} }
  meter = \markup \italic {Moderately Quick.}
  }


  \score
 {
  <<

  <<
  \new Staff
  \relative c'
  { 
  \global
  \clef treble
  fs4. e4. d2. | fs4. e4. d2. | fs4. e4. d2. |
  a'4. g4 g8 fs2. | a4. g4 g8 fs2. | a4. g4 g8 fs4.~ fs4 a8 \bar "|:"
  d4 d8 cs8 b cs d4 a8 a4\fermata a8 |
  d8 d d cs8 b cs d4 a8 a8 a a |
  d4 d8 cs8 b cs d8 a a a4 a8 |
  fs4. e4. d2. | fs4. e4. d2. | fs4. e4. d2. |
  a'4. g4 g8 fs2. | a4. g4 g8 fs2. | a4. g4 g8 fs4.~ fs4 a8 \bar ":|"
  }

  \addlyrics
  { Three blind mice, Three blind mice, Three blind mice, 
  See how they run! See how they run! See how they run! 
  They all ran af -- ter the far -- mer's wife,
  who cut off their tails with a car -- ving knife,
  Did you e -- ver see such a sight in your life
  As three blind mice? Three blind mice, Three blind mice, 
  See how they run! See how they run! See how they run! 
  They }
  >>

  <<
  \new Staff
  \relative c'
  { 
  \global
  \clef treble
  R1.*3
  fs4. e4. d2. | fs4. e4. d2. | fs4. e4. d2. \bar "|:"
  a'4. g4 g8 fs2.\fermata | a4. g4 g8 fs2. | a4. g4 g8 fs4.~ fs4 a8 |
  d4 d8 cs8 b cs d4 a8 a4 a8 |
  d8 d d cs8 b cs d4 a8 a8 a a |
  d4 d8 cs8 b cs d8 a a a4 a8 |
  fs4. e4. d2. | fs4. e4. d2. | fs4. e4. d2.  \bar ":|"
  }

  \addlyrics
  { Three blind mice, Three blind mice, Three blind mice, 
  See how they run! See how they run! See how they run! 
  They all ran af -- ter the far -- mer's wife,
  who cut off their tails with a car -- ving knife,
  Did you e -- ver see such a sight in your life
  As three blind mice? Three blind mice, Three blind mice. }
  >>

  <<
  \new Staff
  \relative c'
  { 
  \global
  \clef treble
  R1.*6
 \bar "|:"
  fs4. e4. d2.\fermata | fs4. e4. d2. | fs4. e4. d2. |
  a'4. g4 g8 fs2. | a4. g4 g8 fs2. | a4. g4 g8 fs4.~ fs4 a8 |
  d4 d8 cs8 b cs d4 a8 a4 a8 |
  d8 d d cs8 b cs d4 a8 a8 a a |
  d4 d8 cs8 b cs d8 a a a4 a8 \bar ":|"
  }

  \addlyrics
  { Three blind mice, Three blind mice, Three blind mice, 
  See how they run! See how they run! See how they run! 
  They all ran af -- ter the far -- mer's wife,
  who cut off their tails with a car -- ving knife,
  Did you e -- ver see such a sight in your life
  As  }
  >>

  >>

  \layout {
    \context {
      \Score
      \remove Bar_number_engraver
  } 
  }
}


  \markup \bigger \italic {Twice through and finish at pause.}


% second score is for MIDI

  \score {
  <<

  \new Staff
  \relative c'
  { 
  \global
  \clef treble
  fs4. e4. d2. | fs4. e4. d2. | fs4. e4. d2. |
  a'4. g4 g8 fs2. | a4. g4 g8 fs2. | a4. g4 g8 fs4.~ fs4 a8 |
  d4 d8 cs8 b cs d4 a8 a4 a8 |
  d8 d d cs8 b cs d4 a8 a8 a a |
  d4 d8 cs8 b cs d8 a a a4 a8 |
  fs4. e4. d2.~ | d4.
  }

  \new Staff
  \relative c'
  { 
  \global
  \clef treble
  R1.*3
  fs4. e4. d2. | fs4. e4. d2. | fs4. e4. d2. |
  a'4. g4 g8 fs2. | a4. g4 g8 fs2. | a4. g4 g8 fs4.~ fs4 a8 |
  d4 d8 cs8 b cs d4 a8 a4 a8 |
  d8 d d cs8 b cs d4 a8 a8 a a |
  d4 d8 cs8 b cs d8 a a a4 a8 |
  fs4. e4. d2.~ | d4.
  }

  \new Staff
  \relative c'
  { 
  \global
  \clef treble
  R1.*6
  fs4. e4. d2. | fs4. e4. d2. | fs4. e4. d2. |
  a'4. g4 g8 fs2. | a4. g4 g8 fs2. | a4. g4 g8 fs4.~ fs4 a8 |
  d4 d8 cs8 b cs d4 a8 a4 a8 |
  d8 d d cs8 b cs d4 a8 a8 a a |
  d4 d8 cs8 b cs d8 a a a4 a8 | 
  fs4. e4. d2.~ | d4.
  }

  >>

  \midi
    { 
    \context { \Score tempoWholesPerMinute = #(ly:make-moment 180 4) } 
    }
}

