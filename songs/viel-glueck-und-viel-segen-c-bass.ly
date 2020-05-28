\version "2.18"
\header {
	title = "Viel Glück und viel Segen"
	subtitle = "Stimme in c im Bass"
	crossRefNumber = ""
	footnotes = ""
}

\new Staff {
   	\time 3/4 \key c \major \clef bass
	\partial 4
	\transpose c c, {
	\relative {
		g'4 ^"1" | c4 ^"F" b4 a8[ b8] | c4 ^"C" g4 \breathe
		g4 ^"2" | a4 ^"G" g4 f4 | e4 ^"C" g4 \breathe
		e4 ^"3" | f4 ^"F" g4 a4 | g4 ^"C" e4 \breathe
		g4 ^"4" | f8 ^"G" e8 d4 d4 | c2 ^"C" \bar "|."
	}
	}
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
