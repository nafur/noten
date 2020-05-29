\version "2.18"
\header {
	title = "Viel Glück und viel Segen"
	subtitle = "Stimme in b"
	tagline = ""
}

\score {
	\new Staff {
		\time 3/4 \key d \major 
		\partial 4
		a'4 ^"1"   |     d''4 ^"G"   cis''4    b'8[    cis''8]    |     
		d''4 ^"D"   a'4   \breathe   a'4 ^"2"   |     b'4 ^"A"   a'4    g'4    |  
	fis'4 ^"D"   a'4        fis'4 ^"3"   |     g'4 ^"G"   a'4    b'4    
	|     a'4 ^"D"   fis'4      a'4 ^"4"   |     g'8 ^"A"   fis'8    
	e'4    e'4    |     d'2 ^"D"   \bar "|."   
	}

	\addlyrics {
		Viel Glück und viel _  Se- gen auf all dei- nen We- gen, 
		Ge- sund- heit und Froh- sinn sei auch _  mit da- bei.
	} 
	\layout {
		\context {
		\Score
		\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
		}
	}
	\midi {}
}