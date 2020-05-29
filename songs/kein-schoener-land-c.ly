\version "2.18"
\header {
	title = "Kein schöner Land"
	subtitle = "Stimme in c"
	tagline = ""
	copyright = "aus: In Froher Rund', Volkslieder für die Veeh-Harfe, 2016."
}

\score{
	\new StaffGroup
    <<
	\new Staff {
		\time 3/4 \key g \major
        \partial 8*3
		\relative {
            \repeat volta 2 {
			    d'8 \noBeam d8 \noBeam d8 | g4 ^"G" b4 a8 \noBeam g8 | a4. ^"D"
            }
            b8 \noBeam g8 \noBeam a8 | b8( ^"G" d8-) c8 \noBeam b8 \noBeam a8 \noBeam g8 |
			a8( ^"D7" c8-) b8 \noBeam a8 \noBeam g8 \noBeam a8 | b4. ^"G" b8 g8 \noBeam a8 | 
            b8( ^"G" d8-) c8 \noBeam b8 \noBeam a8 \noBeam g8 | 
            \time 2/4 a8( ^"D7" c8-) b8 \noBeam a8 | g4 ^"G" fis4 ^"D7" |
            \time 3/4 g4. ^"G" \bar "|."
		}
	} 
	\new Staff \with {
      \consists "Merge_rests_engraver"
    } <<
		{
			\time 3/4 \key g \major
            \partial 8*3
			\relative {
                \repeat volta 2 {
                    r4. | b2. | d4.
                }
                r4. | g2. | fis2. | g2. | g2. |
                \time 2/4 d2 | d4 c8 d8 |
                \time 3/4 b4.
			}
		} \\
		{
			\time 3/4 \key g \major
			\partial 8*3
			\relative {
                \repeat volta 2 {
                    r4. | b2. | d4.
                }
                r4. | g,2. | d'2. | g2. | g,2. |
                \time 2/4 d'2 | b4 c8 d8 |
                \time 3/4 b4.
			}
		}
	>>
    >>
	\midi {}
}

\layout {
	\context {
	\Score
	\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
	}
}
