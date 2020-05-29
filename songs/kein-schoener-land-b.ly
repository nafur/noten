\version "2.18"
\header {
	title = "Kein schöner Land"
	subtitle = "Stimme in b"
	tagline = ""
	copyright = "aus: In Froher Rund', Volkslieder für die Veeh-Harfe, 2016."
}

\score{
	\new StaffGroup
    <<
	\new Staff {
		\time 3/4 \key a \major
        \partial 8*3
		\relative {
            \repeat volta 2 {
			    e'8 \noBeam e8 \noBeam e8 | a4 cis4 b8 \noBeam a8 | b4.
            }
            cis8 \noBeam a8 \noBeam b8 | cis8( e8-) d8 \noBeam cis8 \noBeam b8 \noBeam a8 |
			b8( d8-) cis8 \noBeam b8 \noBeam a8 \noBeam b8 | cis4. cis8 a8 \noBeam b8 | 
            cis8( e8-) d8 \noBeam cis8 \noBeam b8 \noBeam a8 | 
            \time 2/4 b8( d8-) cis8 \noBeam b8 | a4 gis4 |
            \time 3/4 a4. \bar "|."
		}
	} 
	\new Staff \with {
      \consists "Merge_rests_engraver"
    } <<
		{
			\time 3/4 \key a \major
            \partial 8*3
			\relative {
                \repeat volta 2 {
                    r4. | cis'2. | e4.
                }
                r4. | a2. | gis2. | a2. | a2. |
                \time 2/4 e2 | e4 d8 e8 |
                \time 3/4 cis4.
			}
		} \\
		{
			\time 3/4 \key a \major
			\partial 8*3
			\relative {
                \repeat volta 2 {
                    r4. | cis'2. | e4.
                }
                r4. | a,2. | e'2. | a2. | a,2. |
                \time 2/4 e'2 | cis4 d8 e8 |
                \time 3/4 cis4.
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
