\version "2.18"
\header {
	title = "Abend wird es wieder"
	subtitle = "Stimme in b"
	tagline = ""
	copyright = "aus: In Froher Rund', Volkslieder für die Veeh-Harfe, 2016."
}

\score{
	\new StaffGroup
    <<
	\new Staff {
		\time 4/4 \key a \major
		\relative {
			cis''4 cis4 b4 b4 | a2 e2
			fis4 gis4 a4 cis4 | b1
			cis4 cis4 d4 cis4 | b2 e2
			a,4 d4 cis4 b4 | a1 \bar "|."
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
			\time 4/4 \key a \major
			\relative {
				a'2 e2 | cis2 cis2 |
				d2 cis2 | e1 |
				a2 fis2 | d2 cis4 a'8 gis8 |
				fis2 e4 d4 | cis1
			}
		} \\
		{
			\time 4/4 \key a \major
			\relative {
				a2 e'2 | cis2 a2 |
				d2 e2 | d4 fis4 gis4 e4 |
				a,2 b2 | d4 e4 cis4 a'8 gis8 |
				fis2 e4 d4 | cis4 e4 a,2
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
