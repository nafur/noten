\version "2.18"
\header {
	title = "Abend wird es wieder"
	subtitle = "Stimme in c im Bass"
	tagline = ""
	copyright = "aus: In Froher Rund', Volkslieder für die Veeh-Harfe, 2016."
}

\score{
	\new StaffGroup
    <<
	\new Staff {
		\time 4/4 \key g \major \clef bass
		\transpose c c, {\relative {
			b'4 b4 a4 a4 | g2 d2
			e4 fis4 g4 b4 | a1
			b4 b4 c4 b4 | a2 d2
			g,4 c4 b4 a4 | g1 \bar "|."
		}}
	}
	\addlyrics {
		A- bend wird es wie- der;
		Ü- ber Wald und Feld
		säu- selt Frie- den nie- der,
		und es ruht die Welt.
	} 
	\new Staff <<
		{
			\time 4/4 \key g \major \clef bass
			\transpose c c, {\relative {
				g'2 d2 | b2 b2 |
				c2 b2 | d1 |
				g2 e2 | c2 b4 g'8 fis8 |
				e2 d4 c4 | b1
			}}
		} \\
		{
			\time 4/4 \key g \major \clef bass
			\transpose c c, {\relative {
				g2 d'2 | b2 g2 |
				c2 d2 | c4 e4 fis4 d4 |
				g,2 a2 | c4 d4 b4 g'8 fis8 |
				e2 d4 c4 | b4 d4 g,2
			}}
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
