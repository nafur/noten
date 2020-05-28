\version "2.18"
\header {
	title = "When the Saints go marching in"
	subtitle = "Stimme in c im Bass"
	tagline = ""
	copyright = "aus: Flex-ability Pops, Solo-Duet-Trio-Quartet with optional accompaniment, 2001"
}

voicedefault =  {
	\time 4/4 \key bes \major \clef bass
}

voiceA = {
\partial 4
\relative {
	f'8[ f8] | bes8[ f8 bes8 d8] bes4 bes8 bes8 |  d8[ bes8 d8 f8] d4 bes8([ d8]-) |
	f8\<-> f8-> fis4-> g4-> gis4\!-> | a4-> bes,4 d4 es4 |
\repeat volta 2 {
	f1( | f4-) bes,8[ d8]( d8-)[ d8] es4 | f1( | f4-) bes,8([ a8] bes8[ c8 d8 es8]) |
	f2 es2 | bes4-. d2. | c1( | c4-) d8 d8( d8-) d8 c4 |
	bes2. bes4 | d4 bes8( a8 bes8 d8 f4-) | f4 es2.( | es4-) es8 d8( d8-) d8 es4 |
	f2 d2 | bes4-. c2.-> | 
}
\alternative{
	{ bes1( | bes4-) bes4 d4 es4 }
	{ bes4 f8-> g8( g8-) f8 g4-. | bes4 r4 r8 bes8->( cis8[ d8]-) | bes4 r4 bes2->\fermata }
}	
}
}

voiceB = {
\partial 4
\relative {
	r4 | r2 r4 bes'8 bes8 | d8 bes8 d8 f8 d4 bes8-- bes8-- |
	f8\<-> f8-> fis4-> g4-> gis4\!-> | a4 r4 r2 |
\repeat volta 2 {
	d,4 d2 d4 | r4 d4 r4 d4 |
	r4 d2 d4 | r4 d4 r4 d4 |
	d4 d2 d4 | r4 d4 r4 d4 |
	r4 ges8 ges8( ges8-) g8 aes4 | a,?4 r4 r2 |
	r4 f'4 r4 f4 | r4 f4 r4 f4 |
	g4 g2 g4 | ges4 ges4 r4 ges4 |
	r4 f4 r4 d4 | r4 es4 r4 es4 |
}
\alternative{
	{d4 d2 d4 | d4 r4 r2}
	{f4 f8-> es8( es8-) f8 es4-. | f4 r4 r8 bes,8->( cis8[ d8]-) | bes4 r4 g'2->\fermata }
}
}
}

voiceC = {
\partial 4
\relative {
	r4 | r2 r4 bes8 bes8 | d8 bes8 d8 f8 d4 g8( ges8-) |
	f4\<-> fis4-> g4-> gis4\!-> | f4 r4 r2 |
\repeat volta 2 {
	bes,4 bes2 bes4 | r4 bes4 r4 bes4 |
	r4 bes2 d4 | r4 bes4 r4 bes4 |
	bes4 bes2 bes4 | r4 bes4 r4 bes4 |
	r4 es8 es8( es8-) es8 es4 | es4 r4 r2 |
	r4 d4 r4 d4 | r4 d4 r4 d4 |
	es4 es2 es4 | es4 es4 r4 es4 |
	r4 d4 r4 bes4 | r4 bes4 r4 c4 |
}
\alternative{
	{bes4 bes2 bes4 | bes4 r4 r2}
	{d4 f8-> es8( es8-)[ f8] bes,4-. | d4 r4 r8 bes8->( cis8[ d8]-) | bes4 r4 f'2->\fermata }
}
}
}

voiceD = {
\partial 4
\relative {
	r4 | r1 | r1 |
	f'4\<-> e4-> es4-> d4\!-> | c4 r4 r2 |
\repeat volta 2 {
	bes4 r4 f4 r4 | bes4 r4 f4 r4 |
	bes4 r4 f4 r4 | bes4 a4 g4 f4 |
	bes4 r4 f4 r4 | d'4 r4 bes4 r4 |
	f4 fis4 g4 gis4 | a4 f4 g4 a4 |
	bes4 r4 f4 r4 | bes4 r4 aes4 r4 |
	g4 r4 bes4 r4 | ges4 r4 bes4 r4 |
	f4 r4 bes4 r4 | es,4 r4 g4 r4 |
}
\alternative{
	{bes4 r4 f4 r4 | bes4 r4 r2}
	{bes4 r4 r2 | bes4 r4 r2 | r2 d2->\fermata }
}
}
}

\score{
	\new StaffGroup
    <<
	\context Staff="1" {
	    \voicedefault
	    \transpose c c, { \voiceA }
	}
	\context Staff="2" {
	    \voicedefault
	    \transpose c c, { \voiceB }
	}
	\context Staff="3" {
	    \voicedefault
	    \transpose c c, { \voiceC }
	}
	\context Staff="4" {
	    \voicedefault
	    \transpose c c, { \voiceD }
	}
    >>
}
