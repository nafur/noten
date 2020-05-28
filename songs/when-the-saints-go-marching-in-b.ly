\version "2.18"
\header {
	title = "When the Saints go marching in"
	subtitle = "Stimme in b"
	tagline = ""
	copyright = "aus: Flex-ability Pops, Solo-Duet-Trio-Quartet with optional accompaniment, 2001"
}

voicedefault =  {
	\time 4/4 \key c \major 
}
voiceA = {
\partial 4
\relative {
	g'8[ g8] | c8[ g8 c8 e8] c4 c8 c8 |  e8[ c8 e8 g8] e4 c8([ e8]-) |
	g8\<-> g8-> gis4-> a4-> ais4\!-> | b4-> c,4 e4 f4 |
\repeat volta 2 {
	g1( | g4-) c,8[ e8]( e8-)[ e8] f4 | g1( | g4-) c,8([ b8] c8[ d8 e8 f8]) |
	g2 e2 | c4-. e2. | d1( | d4-) e8 e8( e8-) e8 d4 |
	c2. c4 | e4 c8( b8 c8 e8 g4-) | g4 f2.( | f4-) f8 e8( e8-) e8 f4 |
	g2 e2 | c4-. d2.-> | 
}
\alternative{
	{ c1( | c4-) c4 e4 f4 }
	{ c4 g8-> a8( a8-)[ g8] a4-. | c4 r4 r8 c8->( dis8[ e8]-) | c4 r4 c2->\fermata }
}	
}
}

voiceB = {
\partial 4
\relative {
	r4 | r2 r4 c''8 c8 | e8 c8 e8 g8 e4 c8-- c8-- |
	g8\<-> g8-> gis4-> a4-> ais4\!-> | b4 r4 r2 |
\repeat volta 2 {
	e,4 e2 e4 | r4 e4 r4 e4 |
	r4 e2 e4 | r4 e4 r4 e4 |
	e4 e2 e4 | r4 e4 r4 e4 |
	r4 aes8 aes8( aes8-) a8 bes4 | b?4 r4 r2 |
	r4 g4 r4 g4 | r4 g4 r4 g4 |
	a4 a2 a4 | aes4 aes4 r4 aes4 |
	r4 g4 r4 e4 | r4 f4 r4 f4 |
	e4 e2 e4 | e4 r4 r2 |
}
\alternative{
	{g4 g8-> f8( f8-) g8 f4-. | g4 r4 r8 c,8->( dis8[ e8]-) | c4 r4 a'2->\fermata }
	{}
}
}
}

voiceC = {
\partial 4
\relative {
	r4 | r2 r4 c'8 c8 | e8 c8 e8 g8 e4 a8( aes8-) |
	g4\<-> gis4-> a4-> ais4\!-> | g4 r4 r2 |
\repeat volta 2 {
	c,4 c2 c4 | r4 c4 r4 c4 |
	r4 c2 e4 | r4 c4 r4 c4 |
	c4 c2 c4 | r4 c4 r4 c4 |
	r4 f8 f8( f8-) f8 f4 | f4 r4 r2 |
	r4 e4 r4 e4 | r4 e4 r4 e4 |
	f4 f2 f4 | f4 f4 r4 f4 |
	r4 e4 r4 c4 | r4 c4 r4 d4 |
}
\alternative{
	{c4 c2 c4 | c4 r4 r2}
	{e4 g8-> f8( f8-)[ g8] c,4-. | e4 r4 r8 c8->( dis8[ e8]-) | c4 r4 g'2->\fermata }
}
}
}

voiceD = {
\partial 4
\relative {
	r4 | r1 | r1 |
	g'4\<-> ges4-> f4-> e4\!-> | d4 r4 r2 |
\repeat volta 2 {
	c4 r4 g'4 r4 | c,4 r4 g'4 r4 |
	c,4 r4 g'4 r4 | c4 b4 a4 g4 |
	c,4 r4 g'4 r4 | e4 r4 c'4 r4 |
	g4 gis4 a4 ais4 | b4 g4 a4 b4 |
	c4 r4 g4 r4 | c4 r4 bes4 r4 |
	a4 r4 c4 r4 | aes4 r4 c4 r4 |
	r4 g4 r4 c4 | f,4 r4 g4 r4 |
}
\alternative{
	{c,4 r4 g'4 r4 | c,4 r4 r2}
	{c4 r4 r2 | c4 r4 r2 | r2 e2->\fermata }
}
}
}

\score{
	\new StaffGroup
    <<
	\context Staff="1" {
	    \voicedefault
	    \voiceA
	}
	\context Staff="2" {
	    \voicedefault
	    \voiceB
	}
	\context Staff="3" {
	    \voicedefault
	    \voiceC
	}
	\context Staff="4" {
	    \voicedefault
	    \voiceD
	}
    >>
}
