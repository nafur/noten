\version "2.18"
\header {
	title = "Abend wird es wieder"
	subtitle = "Stimme in c"
	copyright = "aus: In Froher Rund', Volkslieder für die Veeh-Harfe, 2016."
}

\score{
	\new StaffGroup
    <<
	\new Staff {
		\time 4/4 \key g \major
		\relative {
			b'4^"G" b4 a4 ^"D" a4 | g2 ^"G" d2
			e4 ^"C" fis4 ^"D7" g4 ^"G" b4 | a1 ^"D7"
			b4 ^"G" b4 c4 ^"Am" b4 | a2 ^"D7" d2 ^"G"
			g,4 ^"C" c4 b4 ^"G" a4 ^"D7" | g1 ^"G" \bar "|."
		}
	}
	\addlyrics {
		A- bend wird es wie- der;
		Ü- ber Wald und Feld
		säu- selt Frie- den nie- der,
		und es ruht die Welt.
	} 
	\new Staff <<
		{
			\time 4/4 \key g \major
			\relative {
				g'2 d2 | b2 b2 |
				c2 b2 | d1 |
				g2 e2 | c2 b4 g'8 fis8 |
				e2 d4 c4 | b1
			}
		} \\
		{
			\time 4/4 \key g \major
			\relative {
				g2 d'2 | b2 g2 |
				c2 d2 | c4 e4 fis4 d4 |
				g,2 a2 | c4 d4 b4 g'8 fis8 |
				e2 d4 c4 | b4 d4 g,2
			}
		}
	>>
    >>
}

\layout {
	\context {
	\Score
	\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
	}
}
