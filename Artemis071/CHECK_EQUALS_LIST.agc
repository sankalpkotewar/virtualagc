### FILE="Main.annotation"
## Copyright:   Public domain.
## Filename:    CHECK_EQUALS_LIST.agc
## Purpose:     A section of Artemis revision 071.
##              It is part of the reconstructed source code for the first
##              release of the flight software for the Command Module's
##              (CM) Apollo Guidance Computer (AGC) for Apollo 15 through
##              17. The code has been recreated from a copy of Artemis 072.
##              It has been adapted such that the resulting bugger words
##              exactly match those specified for Artemis 071 in NASA
##              drawing 2021154-, which gives relatively high confidence
##              that the reconstruction is correct.
## Reference:   135
## Assembler:   yaYUL
## Contact:     Ron Burkey <info@sandroid.org>.
## Website:     www.ibiblio.org/apollo/index.html
## Mod history: 2019-08-14 MAS  Created from Artemis 072.

## Page 135
# ********** CHECK EQUALS LIST **********

# THIS LIST IS MAINTAINED TO ENSURE THAT CERTAIN ERASABLE LOCATIONS
# ARE LOCATED AT A SPECIFIED DISTANCE FROM ANOTHER ERASABLE LOCATION
# AS REQUIRED BY THE STRUCTURE OF THE DOWNLINK LISTS:
#	1. IF A LOCATION IS THE SECOND PART OF A DOWNLINK WORD, IT MUST
#	   BE CONTIGUOUS TO THE LOCATION THAT IS THE FIRST PART.
#	2. IF A LOCATION IS NOT THE FIRST WORD OF AN NDNADR IT
#	   MUST BE AT A SPECIFIC NUMBER OF LOCATIONS FROM THE FIRST
#	   LOCATION IN THE INSTRUCTION.
#	3. OTHER NAMES MAY BE GIVEN TO LOCATIONS IN THE DOWNLINK LISTS
#	   THAT ARE NOT REFERENCED IN THE LISTS.THESE MUST NOT BE MOVED.
# THIS IS ACCOMPLISHED USING THE INSTRUCTION	CHECK=	.
# THIS INSTRUCTION GIVES A CUSS IN THE ASSEMBLY IF THE LOCATION OF THE
# FIRST TAG FIELD IS NOT EQUAL TO THE LOCATION OF THE SECOND TAG FIELD.
# THE INSTRUCTION HAS NO OTHER EFFECT ON THE ASSEMBLY OR CODE.

# THIS LIST SHOULD BE UPDATED FOR ANY CHANGES TO THE DOWNLINK LISTS.

# THIS LIST IS MAINTAINED BY  SUMNER ROSENBERG


TIME1		CHECK=	TIME2 +1
CDUY		CHECK=	CDUX +1
CDUT		CHECK=	CDUZ +1
PIPAX		CHECK=	CDUS +1
PIPAY		CHECK=	PIPAX +1
PIPAZ		CHECK=	PIPAY +1
UPOLDMOD	CHECK=	COMPNUMB +1
UPVERB		CHECK=	UPOLDMOD +1
UPCOUNT		CHECK=	UPVERB +1
BESTJ		CHECK=	BESTI +1
FAILREG		CHECK=	C31FLWRD +1
TRKMKCNT	CHECK=	VHFCNT +1
OPTION2		CHECK=	OPTION1 +1
THETAD		CHECK=	REDOCTR +1
IMODES33	CHECK=	IMODES30 +1
HOLDFLAG	CHECK=	OPTMODES +1
RRATE		CHECK=	RANGE +2
HPERX		CHECK=	HAPOX +2
TCSI		CHECK=	TCDH +2
IGC		CHECK=	OGC +2
MGC		CHECK=	IGC +2
YACTOFF		CHECK=	PACTOFF +1
DAPDATR2	CHECK=	DAPDATR1 +1
CSMMASS		CHECK=	LEMMASS +1
AK1		CHECK=	AK +1
AK2		CHECK=	AK1 +1
RCSFLAGS	CHECK=	AK2 +1

## Page 136
WBODY		CHECK=	OMEGAC
ADOT		CHECK=	OGARATE
ADOT1		CHECK=	ADOT +2
ADOT2		CHECK=	ADOT1 +2
ERRORY		CHECK=	ERRORX +1
ERRORZ		CHECK=	ERRORY +1
THETADX		CHECK=	ERRORZ +1
THETADY		CHECK=	THETADX +1
THETADZ		CHECK=	THETADY +1
YCMD		CHECK=	PCMD +1
BETA/180	CHECK=	ALFA/180 +1
PREL		CHECK=	CMDAPMOD +1
QREL		CHECK=	PREL +1
RREL		CHECK=	QREL +1
ROLLTM		CHECK=	PAXERR1 +1
ROLLC		CHECK=	ROLLTM +1
LNG(SPL)	CHECK=	LAT(SPL) +2
RM		CHECK=	MARKDOWN +7
RDOT		CHECK=	LATANG +2
THETAH		CHECK=	RDOT +2
GAMMAEI		CHECK=	VPRED +2
STATE		CHECK=	FLAGWRD0
CMTMTIME	CHECK=	UPBUFF
SW/NDX		CHECK=	UPBUFF +1
ENDBUF		CHECK=	UPBUFF +16D
V1		CHECK=	UPBUFF +17D
A0		CHECK=	UPBUFF +19D
DNLSTADR	CHECK=	DNLSTCOD
CTLIST		CHECK=	DNLSTCOD +1
TEMPFLSH	CHECK=	CADRFLSH +2
LANDLAT		CHECK=	LAT
TLIFTOFF	CHECK=	TEVENT
CPHI		CHECK=	THETAD
RDOTREF		CHECK=	THETAD
CTHETA		CHECK=	THETAD +1
CPSI		CHECK=	THETAD +2
VREF		CHECK=	THETAD +2
DELVX		CHECK=	DELV
DELVY		CHECK=	DELV +2
DELVZ		CHECK=	DELV +4
TETLEM		CHECK=	T-OTHER
TETOTHER	CHECK=	T-OTHER
RRATE2		CHECK=	RTHETA
PAXERR		CHECK=	AK
OMEGAXC		CHECK=	OMEGAC
TVCRCS		CHECK=	OMEGAC
ASPS(TM)	CHECK=	WBODY
OMEGAYC		CHECK=	OMEGAC +2
WBODY1		CHECK=	WBODY +2
WBODY2		CHECK=	WBODY1 +2

## Page 137
OMEGAZC		CHECK=	OMEGAC +4
OGARATE		CHECK=	OMEGAB
OMEGAXB		CHECK=	OMEGAB
XPIPBUF		CHECK=	ADOT
YPIPBUF		CHECK=	XPIPBUF +1
ZPIPBUF		CHECK=	YPIPBUF +1
XOLDBUF		CHECK=	ZPIPBUF +1
YOLDBUF		CHECK=	XOLDBUF +1
ZOLDBUF		CHECK=	YOLDBUF +1
OMEGAYB		CHECK=	OMEGAB +2
OMEGAZB		CHECK=	OMEGAB +4
VDT/180		CHECK=	ERRORX
-VT/180E	CHECK=	ERRORY
QAXERR		CHECK=	THETADX
RAXERR		CHECK=	THETADY
Q7		CHECK=	THETADZ
DELVLVC		CHECK=	DELVSLV
SPRTETIG	CHECK=	TIG
DELVSIN		CHECK=	DELVEET3
VGTEMP		CHECK=	DELVEET3
VGPREV		CHECK=	VGTIG
LEWD		CHECK=	VIO
L/DCALC		CHECK=	TTE
VL		CHECK=	VPRED
GAMMAL		CHECK=	GAMMAEI
PREDANG		CHECK=	GAMMAEI
JJ		CHECK=	GAMMAEI +1
VTEMP		CHECK=	MARKTIME +2
VMAGI		CHECK=	VGTIG +2
VGTLI		CHECK=	VMAGI +2

## Page 138
ASKEP		CHECK=	ASPS
ASP1		CHECK=	ASPS +1
ASPUP		CHECK=	ASPS +2
ASPDWN		CHECK=	ASPS +3
ASP3		CHECK=	ASPS +4
DUMMYAD		CHECK=	ROO +3
