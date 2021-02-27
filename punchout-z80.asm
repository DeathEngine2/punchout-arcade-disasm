0000: 11 00 08    ld   de,$0800
0003: C3 00 03    jp   $0300 ; begin initialization + self-test
0006: FF          rst  $38
0007: FF          rst  $38
0008: 11 40 00    ld   de,$0040
000B: C3 A7 29    jp   $29A7
000E: FF          rst  $38
000F: FF          rst  $38
0010: 3E FF       ld   a,$FF
0012: 32 DD D7    ld   ($D7DD),a
0015: C3 DF 26    jp   $26DF
0018: 11 80 00    ld   de,$0080
001B: C3 A7 29    jp   $29A7
001E: FF          rst  $38
001F: FF          rst  $38
0020: FF          rst  $38
0021: FF          rst  $38
0022: FF          rst  $38
0023: FF          rst  $38
0024: FF          rst  $38
0025: FF          rst  $38
0026: FF          rst  $38
0027: FF          rst  $38
0028: FF          rst  $38
0029: FF          rst  $38
002A: FF          rst  $38
002B: FF          rst  $38
002C: FF          rst  $38
002D: FF          rst  $38
002E: FF          rst  $38
002F: FF          rst  $38
0030: FF          rst  $38
0031: FF          rst  $38
0032: FF          rst  $38
0033: FF          rst  $38
0034: FF          rst  $38
0035: FF          rst  $38
0036: FF          rst  $38
0037: FF          rst  $38
0038: C7          rst  $00
0039: 00          nop
003A: 00          nop
003B: 00          nop
003C: 00          nop
003D: 08          ex   af,af'
003E: 00          nop
003F: 00          nop
0040: 00          nop
0041: 00          nop
0042: 01 00 01    ld   bc,$0100
0045: 01 00 00    ld   bc,$0000
0048: 00          nop
0049: 00          nop
004A: 00          nop
004B: FF          rst  $38
004C: 02          ld   (bc),a
004D: 37          scf
004E: 22 0A 43    ld   ($430A),hl
0051: 22 05 3B    ld   ($3B05),hl
0054: 22 0A 43    ld   ($430A),hl
0057: 22 05 47    ld   ($4705),hl
005A: 22 0A 4B    ld   ($4B0A),hl
005D: 22 00 AC    ld   ($AC00),hl
0060: 20 AC       jr   nz,$000E
0062: 40          ld   b,b
0063: AC          xor  h
0064: 60          ld   h,b
0065: AC          xor  h
0066: F5          push af
0067: AF          xor  a
0068: D3 08       out  ($08),a ; kick watchdog + enable NMIs
006A: D3 0A       out  ($0A),a ; 2a03 RESET
006C: 08          ex   af,af'
006D: F5          push af
006E: E5          push hl
006F: D5          push de
0070: C5          push bc
0071: DD E5       push ix
0073: FD E5       push iy
0075: D9          exx
0076: E5          push hl
0077: D5          push de
0078: C5          push bc
0079: C3 E2 05    jp   $05E2
007C: 01 01 01    ld   bc,$0101
007F: 01 01 01    ld   bc,$0101
0082: 02          ld   (bc),a
0083: 01 02 02    ld   bc,$0202
0086: 01 01 01    ld   bc,$0101
0089: 01 01 01    ld   bc,$0101
008C: 02          ld   (bc),a
008D: 02          ld   (bc),a
008E: 01 01 03    ld   bc,$0301
0091: 03          inc  bc
0092: 01 01 04    ld   bc,$0401
0095: 04          inc  b
0096: 01 01 06    ld   bc,$0601
0099: 06 01       ld   b,$01
009B: 01 02 02    ld   bc,$0202
009E: 02          ld   (bc),a
009F: 02          ld   (bc),a
00A0: 02          ld   (bc),a
00A1: 02          ld   (bc),a
00A2: 01 01 05    ld   bc,$0501
00A5: 05          dec  b
00A6: 01 01 01    ld   bc,$0101
00A9: 01 04 02    ld   bc,$0204
00AC: 01 01 03    ld   bc,$0301
00AF: 02          ld   (bc),a
00B0: 03          inc  bc
00B1: 03          inc  bc
00B2: 02          ld   (bc),a
00B3: 01 01 01    ld   bc,$0101
00B6: 05          dec  b
00B7: 03          inc  bc
00B8: F6 E3       or   $E3
00BA: F4 E5 F2    call p,$F2E5
00BD: E7          rst  $20
00BE: F0          ret  p
00BF: C9          ret
00C0: EE CB       xor  $CB
00C2: EC CD EA    call pe,$EACD
00C5: AF          xor  a
00C6: E8          ret  pe
00C7: B1          or   c
00C8: E6 B3       and  $B3
00CA: E4 95 E2    call po,$E295
00CD: 97          sub  a
00CE: 99          sbc  a,c
00CF: 00          nop
00D0: E3          ex   (sp),hl
00D1: F6 E5       or   $E5
00D3: F4 E7 F2    call p,$F2E7
00D6: C9          ret
00D7: F0          ret  p
00D8: CB EE       set  5,(hl)
00DA: CD EC AF    call $AFEC
00DD: EA B1 E8    jp   pe,$E8B1
00E0: B3          or   e
00E1: E6 95       and  $95
00E3: E4 97 E2    call po,$E297
00E6: 99          sbc  a,c
00E7: 00          nop
00E8: 80          add  a,b
00E9: 0B          dec  bc
00EA: CE F5       adc  a,$F5
00EC: 82          add  a,d
00ED: 38 B2       jr   c,$00A1
00EF: 38 43       jr   c,$0134
00F1: 39          add  hl,sp
00F2: 14          inc  d
00F3: 39          add  hl,sp
00F4: E2 38 75    jp   po,$7538
00F7: 39          add  hl,sp
00F8: FF          rst  $38
00F9: FF          rst  $38
00FA: FF          rst  $38
00FB: FF          rst  $38
00FC: FF          rst  $38
00FD: FF          rst  $38
00FE: FF          rst  $38
00FF: FF          rst  $38
0100: C3 99 19    jp   $1999
0103: C3 B1 19    jp   $19B1
0106: C3 BA 19    jp   $19BA
0109: C3 8B 19    jp   $198B
010C: C3 47 1A    jp   $1A47
010F: C3 9E 19    jp   $199E
0112: C3 D0 19    jp   $19D0
0115: C3 E9 19    jp   $19E9
0118: C3 F4 19    jp   $19F4
011B: C3 FF 19    jp   $19FF
011E: C3 0B 1A    jp   $1A0B
0121: C3 2A 1A    jp   $1A2A
0124: C3 3A 1A    jp   $1A3A
0127: C3 51 1A    jp   $1A51
012A: C3 41 1A    jp   $1A41
012D: C3 F4 18    jp   $18F4
0130: C3 03 19    jp   $1903
0133: C3 23 19    jp   $1923
0136: C3 35 19    jp   $1935
0139: C3 3C 19    jp   $193C
013C: C3 6E 19    jp   $196E
013F: C3 7D 19    jp   $197D
0142: CB 61       bit  4,c
0144: C2 DF 18    jp   nz,$18DF
0147: DD 21 ED 18 ld   ix,$18ED
014B: C3 B0 1C    jp   $1CB0
014E: 10 02       djnz $0152
0150: 30 D1       jr   nc,$0123
0152: D9          exx
0153: 44          ld   b,h
0154: EC 44 02    call pe,$0244
0157: 45          ld   b,l
0158: 18 45       jr   $019F
015A: 2E 45       ld   l,$45
015C: 44          ld   b,h
015D: 45          ld   b,l
015E: 51          ld   d,c
015F: 45          ld   b,l
0160: 51          ld   d,c
0161: 45          ld   b,l
0162: 51          ld   d,c
0163: 45          ld   b,l
0164: 51          ld   d,c
0165: 45          ld   b,l
0166: 51          ld   d,c
0167: 45          ld   b,l
0168: 51          ld   d,c
0169: 45          ld   b,l
016A: 51          ld   d,c
016B: 45          ld   b,l
016C: 51          ld   d,c
016D: 45          ld   b,l
016E: 51          ld   d,c
016F: 45          ld   b,l
0170: 51          ld   d,c
0171: 45          ld   b,l
0172: 10 12       djnz $0186
0174: 50          ld   d,b
0175: D1          pop  de
0176: 66          ld   h,(hl)
0177: 45          ld   b,l
0178: 15          dec  d
0179: 46          ld   b,(hl)
017A: C5          push bc
017B: 46          ld   b,(hl)
017C: 5F          ld   e,a
017D: 47          ld   b,a
017E: FF          rst  $38
017F: 47          ld   b,a
0180: 9E          sbc  a,(hl)
0181: 48          ld   c,b
0182: 80          add  a,b
0183: 01 4E F9    ld   bc,$F94E
0186: AA          xor  d
0187: 39          add  hl,sp
0188: C0          ret  nz
0189: 39          add  hl,sp
018A: C8          ret  z
018B: 39          add  hl,sp
018C: D0          ret  nc
018D: 39          add  hl,sp
018E: D8          ret  c
018F: 39          add  hl,sp
0190: EF          rst  $28
0191: 39          add  hl,sp
0192: E0          ret  po
0193: 39          add  hl,sp
0194: E0          ret  po
0195: 39          add  hl,sp
0196: E0          ret  po
0197: 39          add  hl,sp
0198: E0          ret  po
0199: 39          add  hl,sp
019A: E0          ret  po
019B: 39          add  hl,sp
019C: E0          ret  po
019D: 39          add  hl,sp
019E: E0          ret  po
019F: 39          add  hl,sp
01A0: E0          ret  po
01A1: 39          add  hl,sp
01A2: E0          ret  po
01A3: 39          add  hl,sp
01A4: E0          ret  po
01A5: 39          add  hl,sp
01A6: C3 7C 17    jp   $177C
01A9: C3 85 17    jp   $1785
01AC: C3 98 17    jp   $1798
01AF: C3 FF 17    jp   $17FF
01B2: C3 17 18    jp   $1817
01B5: C3 26 18    jp   $1826
01B8: C3 B8 01    jp   $01B8
01BB: C3 2E 18    jp   $182E
01BE: C3 52 18    jp   $1852
01C1: 6D          ld   l,l
01C2: 30 B9       jr   nc,$017D
01C4: 30 D3       jr   nc,$0199
01C6: 30 F5       jr   nc,$01BD
01C8: 30 15       jr   nc,$01DF
01CA: 31 FF FF    ld   sp,$FFFF
01CD: FF          rst  $38
01CE: FF          rst  $38
01CF: FF          rst  $38
01D0: FF          rst  $38
01D1: FF          rst  $38
01D2: FF          rst  $38
01D3: FF          rst  $38
01D4: FF          rst  $38
01D5: FF          rst  $38
01D6: FF          rst  $38
01D7: FF          rst  $38
01D8: FF          rst  $38
01D9: FF          rst  $38
01DA: FF          rst  $38
01DB: FF          rst  $38
01DC: FF          rst  $38
01DD: FF          rst  $38
01DE: FF          rst  $38
01DF: FF          rst  $38
01E0: FF          rst  $38
01E1: FF          rst  $38
01E2: FF          rst  $38
01E3: FF          rst  $38
01E4: FF          rst  $38
01E5: FF          rst  $38
01E6: FF          rst  $38
01E7: FF          rst  $38
01E8: FF          rst  $38
01E9: FF          rst  $38
01EA: FF          rst  $38
01EB: FF          rst  $38
01EC: FF          rst  $38
01ED: FF          rst  $38
01EE: FF          rst  $38
01EF: FF          rst  $38
01F0: FF          rst  $38
01F1: FF          rst  $38
01F2: FF          rst  $38
01F3: FF          rst  $38
01F4: FF          rst  $38
01F5: FF          rst  $38
01F6: FF          rst  $38
01F7: FF          rst  $38
01F8: FF          rst  $38
01F9: FF          rst  $38
01FA: FF          rst  $38
01FB: FF          rst  $38
01FC: FF          rst  $38
01FD: FF          rst  $38
01FE: FF          rst  $38
01FF: FF          rst  $38
0200: 00          nop
0201: 04          inc  b
0202: 0E 84       ld   c,$84
0204: 0A          ld   a,(bc)
0205: 04          inc  b
0206: 40          ld   b,b
0207: 08          ex   af,af'
0208: 34          inc  (hl)
0209: 08          ex   af,af'
020A: 36 08       ld   (hl),$08
020C: 38 08       jr   c,$0216
020E: 3A 08 3C    ld   a,($3C08)
0211: 08          ex   af,af'
0212: 3E 08       ld   a,$08
0214: 42          ld   b,d
0215: 08          ex   af,af'
0216: 46          ld   b,(hl)
0217: 08          ex   af,af'
0218: 44          ld   b,h
0219: 08          ex   af,af'
021A: 1E 04       ld   e,$04
021C: 1A          ld   a,(de)
021D: 04          inc  b
021E: 04          inc  b
021F: 04          inc  b
0220: 56          ld   d,(hl)
0221: 08          ex   af,af'
0222: 48          ld   c,b
0223: 04          inc  b
0224: 18 04       jr   $022A
0226: 0C          inc  c
0227: 08          ex   af,af'
0228: 08          ex   af,af'
0229: 04          inc  b
022A: 4C          ld   c,h
022B: 04          inc  b
022C: 02          ld   (bc),a
022D: 88          adc  a,b
022E: 2E 04       ld   l,$04
0230: 26 04       ld   h,$04
0232: 22 04 2A    ld   ($2A04),hl
0235: 04          inc  b
0236: 32 04 1C    ld   ($1C04),a
0239: 08          ex   af,af'
023A: 50          ld   d,b
023B: 08          ex   af,af'
023C: 20 08       jr   nz,$0246
023E: 4E          ld   c,(hl)
023F: 04          inc  b
0240: 4E          ld   c,(hl)
0241: 08          ex   af,af'
0242: 4A          ld   c,d
0243: 04          inc  b
0244: 4A          ld   c,d
0245: 08          ex   af,af'
0246: 52          ld   d,d
0247: 08          ex   af,af'
0248: 00          nop
0249: 00          nop
024A: 00          nop
024B: 00          nop
024C: 00          nop
024D: 00          nop
024E: 00          nop
024F: 00          nop
0250: C3 50 02    jp   $0250
0253: C3 53 02    jp   $0253
0256: C3 56 02    jp   $0256
0259: C3 59 02    jp   $0259
025C: C3 18 15    jp   $1518
025F: C3 21 15    jp   $1521
0262: C3 2A 15    jp   $152A
0265: C3 92 15    jp   $1592
0268: C3 8A 15    jp   $158A
026B: C3 80 15    jp   $1580
026E: C3 75 15    jp   $1575
0271: C3 5B 15    jp   $155B
0274: C3 5B 15    jp   $155B
0277: C3 68 15    jp   $1568
027A: C3 6F 15    jp   $156F
027D: C3 60 15    jp   $1560
0280: C3 5B 15    jp   $155B
0283: C3 5B 15    jp   $155B
0286: C3 68 15    jp   $1568
0289: C3 89 02    jp   $0289
028C: C3 8C 02    jp   $028C
028F: C3 9A 15    jp   $159A
0292: C3 92 02    jp   $0292
0295: C3 95 02    jp   $0295
0298: C3 98 02    jp   $0298
029B: C3 9B 02    jp   $029B
029E: C3 A1 15    jp   $15A1
02A1: C3 9C 1D    jp   $1D9C
02A4: C3 A4 02    jp   $02A4
02A7: C3 A7 02    jp   $02A7
02AA: C3 AA 02    jp   $02AA
02AD: C3 AD 02    jp   $02AD
02B0: C3 A1 1D    jp   $1DA1
02B3: C3 56 1E    jp   $1E56
02B6: C3 B4 1D    jp   $1DB4
02B9: C3 BF 1D    jp   $1DBF
02BC: C3 CA 1D    jp   $1DCA
02BF: C3 D6 1D    jp   $1DD6
02C2: C3 F5 1D    jp   $1DF5
02C5: C3 FE 1D    jp   $1DFE
02C8: C3 43 1E    jp   $1E43
02CB: C3 3D 1E    jp   $1E3D
02CE: C3 6B 1B    jp   $1B6B
02D1: C3 7A 1B    jp   $1B7A
02D4: C3 85 1B    jp   $1B85
02D7: C3 35 1C    jp   $1C35
02DA: C3 6E 1C    jp   $1C6E
02DD: C3 81 1C    jp   $1C81
02E0: C3 A5 1C    jp   $1CA5
02E3: C3 AC 1C    jp   $1CAC
02E6: C3 C6 1C    jp   $1CC6
02E9: C3 E9 02    jp   $02E9
02EC: C3 71 1D    jp   $1D71
02EF: C3 EF 02    jp   $02EF
02F2: C3 8E 1D    jp   $1D8E
02F5: C3 F5 02    jp   $02F5
02F8: C3 F8 02    jp   $02F8
02FB: C3 53 1B    jp   $1B53
02FE: FF          rst  $38
02FF: FF          rst  $38
0300: 21 39 00    ld   hl,$0039 ; we're gonna need this later
0303: 01 FF 10    ld   bc,$10FF
0306: 0C          inc  c
0307: ED A3       outi
0309: 20 FB       jr   nz,$0306
030B: 1B          dec  de
030C: 7B          ld   a,e
030D: B2          or   d
030E: 20 F0       jr   nz,$0300
0310: 1E 80       ld   e,$80
0312: 21 49 00    ld   hl,$0049
0315: 01 0A 02    ld   bc,$020A
0318: 0C          inc  c
0319: ED A3       outi
031B: 20 FB       jr   nz,$0318
031D: 1D          dec  e
031E: 20 F2       jr   nz,$0312
0320: 31 00 00    ld   sp,$0000
0323: DB 02       in   a,($02) ; read from DIP switch bank 0
0325: E6 80       and  $80
0327: C2 BD BD    jp   nz,$BDBD
032A: 3E 01       ld   a,$01
032C: 32 D2 D7    ld   ($D7D2),a ; place contents of A near the very edge of RAM
032F: D3 08       out  ($08),a ; kick watchdog + enable NMIs
0331: D3 0B       out  ($0B),a ; 2a03 RESET
0333: CD 6B 26    call $266B
0336: DB 01       in   a,($01) ; read IN1
0338: E6 40       and  $40
033A: C2 60 0B    jp   nz,$0B60
033D: 47          ld   b,a
033E: D3 08       out  ($08),a ; kick watchdog + enable NMIs
0340: E5          push hl
0341: E1          pop  hl
0342: 32 D2 D7    ld   ($D7D2),a
0345: 10 F7       djnz $033E
0347: D3 0B       out  ($0B),a ; 2a03 RESET
0349: 11 00 D0    ld   de,$D000
034C: AF          xor  a
034D: 01 00 08    ld   bc,$0800
0350: CD 81 26    call $2681
0353: 11 00 D8    ld   de,$D800
0356: 3E 00       ld   a,$00
0358: 01 80 27    ld   bc,$2780
035B: CD 81 26    call $2681
035E: 3E C9       ld   a,$C9
0360: 32 67 FF    ld   ($FF67),a
0363: DB 02       in   a,($02) ; read DIP switch bank 0
0365: 4F          ld   c,a
0366: 06 35       ld   b,$35
0368: AF          xor  a
0369: CB 01       rlc  c
036B: 17          rla
036C: CB 20       sla  b
036E: 30 F9       jr   nc,$0369
0370: F5          push af
0371: 20 F5       jr   nz,$0368
0373: 11 F4 D7    ld   de,$D7F4
0376: F1          pop  af
0377: 12          ld   (de),a
0378: 1C          inc  e
0379: 12          ld   (de),a
037A: 26 00       ld   h,$00
037C: 87          add  a,a
037D: C6 5E       add  a,$5E
037F: 6F          ld   l,a
0380: 7E          ld   a,(hl)
0381: 2C          inc  l
0382: 66          ld   h,(hl)
0383: 6F          ld   l,a
0384: 22 F8 D7    ld   ($D7F8),hl
0387: 1C          inc  e
0388: F1          pop  af
0389: 87          add  a,a
038A: 87          add  a,a
038B: 87          add  a,a
038C: 12          ld   (de),a
038D: F1          pop  af
038E: 1C          inc  e
038F: 12          ld   (de),a
0390: 32 FF D7    ld   ($D7FF),a
0393: F1          pop  af
0394: E6 01       and  $01
0396: 08          ex   af,af'
0397: 11 D3 D7    ld   de,$D7D3
039A: DB 03       in   a,($03)
039C: E6 0F       and  $0F
039E: FE 0F       cp   $0F
03A0: 20 03       jr   nz,$03A5
03A2: 12          ld   (de),a
03A3: 18 1A       jr   $03BF
03A5: 21 7C 00    ld   hl,$007C
03A8: 87          add  a,a
03A9: 87          add  a,a
03AA: 85          add  a,l
03AB: 6F          ld   l,a
03AC: 13          inc  de
03AD: 3E 80       ld   a,$80
03AF: 12          ld   (de),a
03B0: 13          inc  de
03B1: ED A0       ldi
03B3: 12          ld   (de),a
03B4: 13          inc  de
03B5: ED A0       ldi
03B7: ED A0       ldi
03B9: 2D          dec  l
03BA: 08          ex   af,af'
03BB: 85          add  a,l
03BC: 6F          ld   l,a
03BD: ED A0       ldi
03BF: 21 01 C0    ld   hl,$C001
03C2: CD 15 0C    call $0C15
03C5: 30 0C       jr   nc,$03D3
03C7: CD C4 0C    call $0CC4
03CA: ED 5B 0E D5 ld   de,($D50E)
03CE: A7          and  a
03CF: ED 52       sbc  hl,de
03D1: 28 3F       jr   z,$0412
03D3: 21 01 C2    ld   hl,$C201
03D6: CD 15 0C    call $0C15
03D9: 30 0C       jr   nc,$03E7
03DB: CD C4 0C    call $0CC4
03DE: ED 5B 0E D5 ld   de,($D50E)
03E2: A7          and  a
03E3: ED 52       sbc  hl,de
03E5: 28 2B       jr   z,$0412
03E7: 11 10 D5    ld   de,$D510
03EA: 01 A0 01    ld   bc,$01A0
03ED: AF          xor  a
03EE: CD 81 26    call $2681
03F1: 11 20 D5    ld   de,$D520
03F4: D5          push de
03F5: 21 24 04    ld   hl,$0424
03F8: 0E 08       ld   c,$08
03FA: ED B0       ldir
03FC: E1          pop  hl
03FD: 01 10 31    ld   bc,$3110
0400: CD E1 0B    call $0BE1
0403: CD 66 0E    call $0E66
0406: 3A 0D D5    ld   a,($D50D)
0409: A7          and  a
040A: 20 DB       jr   nz,$03E7
040C: 3E 00       ld   a,$00
040E: D3 09       out  ($09),a ; kick watchdog
0410: 18 22       jr   $0434
0412: 11 60 D6    ld   de,$D660
0415: D5          push de
0416: 21 2C 04    ld   hl,$042C
0419: 01 08 00    ld   bc,$0008
041C: ED B0       ldir
041E: E1          pop  hl
041F: 01 02 09    ld   bc,$0902
0422: 18 DC       jr   $0400
0424: 00          nop
0425: 00          nop
0426: 17          rla
0427: 18 0A       jr   $0433
0429: 00          nop
042A: 87          add  a,a
042B: 08          ex   af,af'
042C: 00          nop
042D: 00          nop
042E: 17          rla
042F: 0C          inc  c
0430: 15          dec  d
0431: 00          nop
0432: 80          add  a,b
0433: 04          inc  b
0434: 21 00 FF    ld   hl,$FF00
0437: 22 DC D7    ld   ($D7DC),hl
043A: 31 00 00    ld   sp,$0000
043D: 3E 01       ld   a,$01
043F: D3 08       out  ($08),a ; kick watchdog + enable NMIs
0441: AF          xor  a
0442: 32 C6 D7    ld   ($D7C6),a
0445: 32 C9 D7    ld   ($D7C9),a
0448: 32 C1 D0    ld   ($D0C1),a
044B: D7          rst  $10
044C: CD E5 26    call $26E5
044F: CD EB 26    call $26EB
0452: CD 0D 27    call $270D
0455: CD A9 27    call $27A9
0458: CD 21 29    call $2921
045B: CD D8 26    call $26D8
045E: CD 66 0E    call $0E66
0461: AF          xor  a
0462: 11 00 D0    ld   de,$D000
0465: 4F          ld   c,a
0466: CD 7B 26    call $267B
0469: 3E 03       ld   a,$03
046B: 32 F7 DF    ld   ($DFF7),a
046E: 21 F7 D7    ld   hl,$D7F7
0471: 7E          ld   a,(hl)
0472: A7          and  a
0473: 28 11       jr   z,$0486
0475: 2E FF       ld   l,$FF
0477: 35          dec  (hl)
0478: 20 0C       jr   nz,$0486
047A: 36 04       ld   (hl),$04
047C: 3E 01       ld   a,$01
047E: 32 C6 D7    ld   ($D7C6),a
0481: 0E 05       ld   c,$05
0483: CD B8 0B    call $0BB8
0486: 21 E7 98    ld   hl,$98E7
0489: CD C5 0B    call $0BC5
048C: CD 57 26    call $2657
048F: CD 27 27    call $2727
0492: CD 57 26    call $2657
0495: CD 5F 26    call $265F
0498: D7          rst  $10
0499: AF          xor  a
049A: 32 C6 D7    ld   ($D7C6),a
049D: 3E 02       ld   a,$02
049F: 32 F7 DF    ld   ($DFF7),a
04A2: CD FE 0E    call $0EFE
04A5: CD E5 26    call $26E5
04A8: CD EB 26    call $26EB
04AB: CD 0D 27    call $270D
04AE: CD A9 27    call $27A9
04B1: CD EC 27    call $27EC
04B4: CD 79 28    call $2879
04B7: ED 5B E3 D7 ld   de,($D7E3)
04BB: 3A E5 D7    ld   a,($D7E5)
04BE: 47          ld   b,a
04BF: CD 32 14    call $1432
04C2: 3E FE       ld   a,$FE
04C4: 32 DD D7    ld   ($D7DD),a
04C7: CD 08 28    call $2808
04CA: CD 63 26    call $2663
04CD: D7          rst  $10
04CE: CD A9 27    call $27A9
04D1: CD 4F 29    call $294F
04D4: 3E FE       ld   a,$FE
04D6: 32 DD D7    ld   ($D7DD),a
04D9: CD 63 26    call $2663
04DC: CD 5A 0F    call $0F5A
04DF: CD A7 0F    call $0FA7
04E2: D7          rst  $10
04E3: CD A9 27    call $27A9
04E6: CD 7D 29    call $297D
04E9: DD 21 BB 36 ld   ix,$36BB
04ED: DF          rst  $18
04EE: CD 63 26    call $2663
04F1: 21 DC 03    ld   hl,$03DC
04F4: 22 D0 D0    ld   ($D0D0),hl
04F7: 21 6D 05    ld   hl,$056D
04FA: 22 D3 D0    ld   ($D0D3),hl
04FD: 3E 01       ld   a,$01
04FF: 32 D6 D0    ld   ($D0D6),a
0502: 21 00 00    ld   hl,$0000
0505: 22 DC D7    ld   ($D7DC),hl
0508: 21 02 02    ld   hl,$0202
050B: 22 C1 D0    ld   ($D0C1),hl
050E: 3A 62 D0    ld   a,($D062)
0511: 0F          rrca
0512: 38 FA       jr   c,$050E
0514: CD A0 28    call $28A0
0517: 21 2C D0    ld   hl,$D02C
051A: 34          inc  (hl)
051B: 3A 62 D0    ld   a,($D062)
051E: E6 40       and  $40
0520: 20 F9       jr   nz,$051B
0522: 21 C7 05    ld   hl,$05C7
0525: 06 07       ld   b,$07
0527: C5          push bc
0528: 3A D2 D0    ld   a,($D0D2)
052B: A7          and  a
052C: 28 FA       jr   z,$0528
052E: D7          rst  $10
052F: AF          xor  a
0530: 32 D2 D0    ld   ($D0D2),a
0533: 5E          ld   e,(hl)
0534: 23          inc  hl
0535: 56          ld   d,(hl)
0536: 23          inc  hl
0537: D5          push de
0538: DD E1       pop  ix
053A: E5          push hl
053B: DF          rst  $18
053C: CD D8 26    call $26D8
053F: E1          pop  hl
0540: 7E          ld   a,(hl)
0541: 23          inc  hl
0542: FE 20       cp   $20
0544: F5          push af
0545: CD 71 26    call $2671
0548: F1          pop  af
0549: 28 07       jr   z,$0552
054B: E5          push hl
054C: DD 21 4C 37 ld   ix,$374C
0550: DF          rst  $18
0551: E1          pop  hl
0552: AF          xor  a
0553: 32 DD D7    ld   ($D7DD),a
0556: C1          pop  bc
0557: 10 CE       djnz $0527
0559: 3A 42 D0    ld   a,($D042)
055C: E6 C0       and  $C0
055E: 4F          ld   c,a
055F: 3A 62 D0    ld   a,($D062)
0562: E6 C0       and  $C0
0564: B1          or   c
0565: 28 F2       jr   z,$0559
0567: CD 5F 26    call $265F
056A: C3 34 04    jp   $0434
056D: 5E          ld   e,(hl)
056E: 02          ld   (bc),a
056F: 08          ex   af,af'
0570: 36 02       ld   (hl),$02
0572: 80          add  a,b
0573: 28 02       jr   z,$0577
0575: 04          inc  b
0576: 18 02       jr   $057A
0578: 80          add  a,b
0579: B8          cp   b
057A: 01 01 A0    ld   bc,$A001
057D: 01 80 96    ld   bc,$9680
0580: 01 10 8C    ld   bc,$8C10
0583: 01 00 80    ld   bc,$8000
0586: 01 80 72    ld   bc,$7280
0589: 01 10 54    ld   bc,$5410
058C: 01 40 30    ld   bc,$3040
058F: 01 10 1A    ld   bc,$1A10
0592: 01 80 A9    ld   bc,$A980
0595: 00          nop
0596: 40          ld   b,b
0597: 8F          adc  a,a
0598: 00          nop
0599: 80          add  a,b
059A: 60          ld   h,b
059B: 00          nop
059C: 08          ex   af,af'
059D: 40          ld   b,b
059E: 00          nop
059F: 88          adc  a,b
05A0: 19          add  hl,de
05A1: 00          nop
05A2: 80          add  a,b
05A3: 10 00       djnz $05A5
05A5: 00          nop
05A6: 04          inc  b
05A7: 10 08       djnz $05B1
05A9: 40          ld   b,b
05AA: 10 04       djnz $05B0
05AC: 10 10       djnz $05BE
05AE: 40          ld   b,b
05AF: 08          ex   af,af'
05B0: 10 10       djnz $05C2
05B2: 40          ld   b,b
05B3: 80          add  a,b
05B4: 04          inc  b
05B5: 08          ex   af,af'
05B6: 02          ld   (bc),a
05B7: 01 10 10    ld   bc,$1010
05BA: 40          ld   b,b
05BB: 80          add  a,b
05BC: 10 10       djnz $05CE
05BE: 10 10       djnz $05D0
05C0: 40          ld   b,b
05C1: 00          nop
05C2: 00          nop
05C3: 00          nop
05C4: 00          nop
05C5: 00          nop
05C6: FF          rst  $38
05C7: CC 36 80    call z,$8036
05CA: E6 36       and  $36
05CC: 80          add  a,b
05CD: F7          rst  $30
05CE: 36 20       ld   (hl),$20
05D0: 03          inc  bc
05D1: 37          scf
05D2: 80          add  a,b
05D3: 14          inc  d
05D4: 37          scf
05D5: 80          add  a,b
05D6: 2B          dec  hl
05D7: 37          scf
05D8: 80          add  a,b
05D9: 3D          dec  a
05DA: 37          scf
05DB: 80          add  a,b
05DC: 2E DB       ld   l,$DB
05DE: 36 80       ld   (hl),$80
05E0: 18 4D       jr   $062F
05E2: 3A D1 D7    ld   a,($D7D1)
05E5: 47          ld   b,a
05E6: ED 5F       ld   a,r
05E8: 4F          ld   c,a
05E9: 1F          rra
05EA: ED 5F       ld   a,r
05EC: 8F          adc  a,a
05ED: 1F          rra
05EE: CB 11       rl   c
05F0: CB 18       rr   b
05F2: 1F          rra
05F3: CB 18       rr   b
05F5: CB 11       rl   c
05F7: 1F          rra
05F8: 89          adc  a,c
05F9: A8          xor  b
05FA: E6 7F       and  $7F
05FC: ED 4F       ld   r,a
05FE: 21 D0 D7    ld   hl,$D7D0
0601: 7E          ld   a,(hl)
0602: A7          and  a
0603: 28 02       jr   z,$0607
0605: 3D          dec  a
0606: 77          ld   (hl),a
0607: 2C          inc  l
0608: 35          dec  (hl)
0609: 2C          inc  l
060A: 7E          ld   a,(hl)
060B: A7          and  a
060C: C2 EE 0A    jp   nz,$0AEE
060F: CD F1 11    call $11F1
0612: CD A0 11    call $11A0
0615: 21 D3 D7    ld   hl,$D7D3
0618: 7E          ld   a,(hl)
0619: A7          and  a
061A: 20 C0       jr   nz,$05DC
061C: 2C          inc  l
061D: DB 01       in   a,($01)
061F: 5F          ld   e,a
0620: 06 80       ld   b,$80
0622: CD 5B 12    call $125B
0625: 2E D6       ld   l,$D6
0627: 7B          ld   a,e
0628: 06 40       ld   b,$40
062A: CD 5B 12    call $125B
062D: 2E DB       ld   l,$DB
062F: 56          ld   d,(hl)
0630: 2C          inc  l
0631: 7E          ld   a,(hl)
0632: 2C          inc  l
0633: A7          and  a
0634: C2 A6 0A    jp   nz,$0AA6
0637: 7A          ld   a,d
0638: A7          and  a
0639: C2 BB 06    jp   nz,$06BB
063C: 7E          ld   a,(hl)
063D: A7          and  a
063E: C2 41 0B    jp   nz,$0B41
0641: ED 4B D0 D0 ld   bc,($D0D0)
0645: 79          ld   a,c
0646: B0          or   b
0647: 28 3A       jr   z,$0683
0649: 0B          dec  bc
064A: ED 43 D0 D0 ld   ($D0D0),bc
064E: 21 D3 D0    ld   hl,$D0D3
0651: 5E          ld   e,(hl)
0652: 2C          inc  l
0653: 56          ld   d,(hl)
0654: 2C          inc  l
0655: 7E          ld   a,(hl)
0656: A7          and  a
0657: 20 23       jr   nz,$067C
0659: 1A          ld   a,(de)
065A: 6F          ld   l,a
065B: 13          inc  de
065C: 1A          ld   a,(de)
065D: 67          ld   h,a
065E: A7          and  a
065F: ED 42       sbc  hl,bc
0661: C2 BD 0A    jp   nz,$0ABD
0664: 13          inc  de
0665: 1A          ld   a,(de)
0666: FE 80       cp   $80
0668: 28 0C       jr   z,$0676
066A: 3E 05       ld   a,$05
066C: 32 D5 D0    ld   ($D0D5),a
066F: ED 53 D3 D0 ld   ($D0D3),de
0673: C3 BD 0A    jp   $0ABD
0676: 32 D2 D0    ld   ($D0D2),a
0679: 13          inc  de
067A: 18 F3       jr   $066F
067C: 35          dec  (hl)
067D: 1A          ld   a,(de)
067E: 20 21       jr   nz,$06A1
0680: 13          inc  de
0681: 18 EC       jr   $066F
0683: 21 D3 D0    ld   hl,$D0D3
0686: 5E          ld   e,(hl)
0687: 2C          inc  l
0688: 56          ld   d,(hl)
0689: 2C          inc  l
068A: 7E          ld   a,(hl)
068B: A7          and  a
068C: 20 26       jr   nz,$06B4
068E: 2C          inc  l
068F: 35          dec  (hl)
0690: 20 26       jr   nz,$06B8
0692: 36 20       ld   (hl),$20
0694: 2D          dec  l
0695: 36 10       ld   (hl),$10
0697: 2D          dec  l
0698: 13          inc  de
0699: 1A          ld   a,(de)
069A: FE FF       cp   $FF
069C: 28 0D       jr   z,$06AB
069E: 72          ld   (hl),d
069F: 2D          dec  l
06A0: 73          ld   (hl),e
06A1: 4F          ld   c,a
06A2: CD 90 26    call $2690
06A5: CD 0B 2C    call $2C0B
06A8: C3 BD 0A    jp   $0ABD
06AB: EB          ex   de,hl
06AC: 01 20 00    ld   bc,$0020
06AF: ED 42       sbc  hl,bc
06B1: EB          ex   de,hl
06B2: 18 E5       jr   $0699
06B4: 35          dec  (hl)
06B5: 1A          ld   a,(de)
06B6: 18 E9       jr   $06A1
06B8: AF          xor  a
06B9: 18 E6       jr   $06A1
06BB: 21 FF FF    ld   hl,$FFFF
06BE: 22 DC D7    ld   ($D7DC),hl
06C1: 31 00 00    ld   sp,$0000
06C4: 3E 01       ld   a,$01
06C6: D3 08       out  ($08),a ; kick watchdog + enable NMIs
06C8: 3E 80       ld   a,$80
06CA: 32 C0 D7    ld   ($D7C0),a
06CD: 21 00 0F    ld   hl,$0F00
06D0: 22 C8 D7    ld   ($D7C8),hl
06D3: 65          ld   h,l
06D4: 22 BC D0    ld   ($D0BC),hl
06D7: 22 BE D0    ld   ($D0BE),hl
06DA: 3E 01       ld   a,$01
06DC: 32 C6 D7    ld   ($D7C6),a
06DF: AF          xor  a
06E0: 32 C1 D0    ld   ($D0C1),a
06E3: 32 FD DF    ld   ($DFFD),a
06E6: 11 6C D0    ld   de,$D06C
06E9: 0E 14       ld   c,$14
06EB: CD 7B 26    call $267B
06EE: 0E 0C       ld   c,$0C
06F0: CD B8 0B    call $0BB8
06F3: 21 00 D5    ld   hl,$D500
06F6: 7E          ld   a,(hl)
06F7: A7          and  a
06F8: 28 03       jr   z,$06FD
06FA: CD E0 0C    call $0CE0
06FD: CD 78 0C    call $0C78
0700: CD 08 0F    call $0F08
0703: D7          rst  $10
0704: CD E5 26    call $26E5
0707: CD EB 26    call $26EB
070A: CD 0D 27    call $270D
070D: CD A9 27    call $27A9
0710: CD D8 26    call $26D8
0713: D7          rst  $10
0714: CD EC 27    call $27EC
0717: CD F3 28    call $28F3
071A: CD 1B 29    call $291B
071D: CD 79 28    call $2879
0720: 18 06       jr   $0728
0722: AF          xor  a
0723: 32 DA D7    ld   ($D7DA),a
0726: 18 18       jr   $0740
0728: 3E FE       ld   a,$FE
072A: 32 DD D7    ld   ($D7DD),a
072D: 3A DA D7    ld   a,($D7DA)
0730: 07          rlca
0731: 38 EF       jr   c,$0722
0733: CD 7C 12    call $127C
0736: 3A DA D7    ld   a,($D7DA)
0739: FE FF       cp   $FF
073B: 28 B6       jr   z,$06F3
073D: 3D          dec  a
073E: 28 28       jr   z,$0768
0740: D7          rst  $10
0741: CD A9 27    call $27A9
0744: CD CA 28    call $28CA
0747: 3E FE       ld   a,$FE
0749: 32 DD D7    ld   ($D7DD),a
074C: CD 08 28    call $2808
074F: 32 50 D7    ld   ($D750),a
0752: 3A 50 D7    ld   a,($D750)
0755: A7          and  a
0756: 20 FA       jr   nz,$0752
0758: 21 8A 0A    ld   hl,$0A8A
075B: 11 E5 DF    ld   de,$DFE5
075E: 0E 06       ld   c,$06
0760: CD 4E 26    call $264E
0763: 3E 44       ld   a,$44
0765: CD 71 26    call $2671
0768: D7          rst  $10
0769: CD A9 27    call $27A9
076C: CD 4F 29    call $294F
076F: 3E FE       ld   a,$FE
0771: 32 DD D7    ld   ($D7DD),a
0774: CD 67 26    call $2667
0777: 0E 0F       ld   c,$0F
0779: CD B8 0B    call $0BB8
077C: CD 5A 0F    call $0F5A
077F: CD A7 0F    call $0FA7
0782: 21 90 0A    ld   hl,$0A90
0785: 11 E4 DF    ld   de,$DFE4
0788: 01 0A 00    ld   bc,$000A
078B: ED B0       ldir
078D: CD 73 29    call $2973
0790: 0E 0C       ld   c,$0C
0792: 28 0B       jr   z,$079F
0794: 0E 18       ld   c,$18
0796: 3A FA D7    ld   a,($D7FA)
0799: FE 06       cp   $06
079B: 30 02       jr   nc,$079F
079D: 0E 00       ld   c,$00
079F: 21 0A 0A    ld   hl,$0A0A
07A2: 3A 04 D0    ld   a,($D004)
07A5: 87          add  a,a
07A6: 81          add  a,c
07A7: 4F          ld   c,a
07A8: 06 00       ld   b,$00
07AA: 09          add  hl,bc
07AB: 7E          ld   a,(hl)
07AC: 23          inc  hl
07AD: 66          ld   h,(hl)
07AE: 6F          ld   l,a
07AF: 56          ld   d,(hl)
07B0: 23          inc  hl
07B1: 5E          ld   e,(hl)
07B2: ED 53 EE DF ld   ($DFEE),de
07B6: EB          ex   de,hl
07B7: 13          inc  de
07B8: 1A          ld   a,(de)
07B9: 3C          inc  a
07BA: 20 04       jr   nz,$07C0
07BC: 13          inc  de
07BD: CD 6F 26    call $266F
07C0: CD 26 12    call $1226
07C3: 1A          ld   a,(de)
07C4: 3C          inc  a
07C5: 28 0A       jr   z,$07D1
07C7: CD 3C 12    call $123C
07CA: 3E 11       ld   a,$11
07CC: CD 71 26    call $2671
07CF: 18 EF       jr   $07C0
07D1: 13          inc  de
07D2: 1A          ld   a,(de)
07D3: F5          push af
07D4: D7          rst  $10
07D5: CD A9 27    call $27A9
07D8: CD 7D 29    call $297D
07DB: F1          pop  af
07DC: CD 71 26    call $2671
07DF: 21 FF 00    ld   hl,$00FF
07E2: 22 DC D7    ld   ($D7DC),hl
07E5: 21 02 02    ld   hl,$0202
07E8: 22 C1 D0    ld   ($D0C1),hl
07EB: 3A 62 D0    ld   a,($D062)
07EE: 0F          rrca
07EF: 38 FA       jr   c,$07EB
07F1: CD A0 28    call $28A0
07F4: CD 67 26    call $2667
07F7: AF          xor  a
07F8: CD 28 12    call $1228
07FB: 21 2C D0    ld   hl,$D02C
07FE: 34          inc  (hl)
07FF: 0E 02       ld   c,$02
0801: CD B8 0B    call $0BB8
0804: CD 6F 26    call $266F
0807: 3A 42 D0    ld   a,($D042)
080A: A7          and  a
080B: FA 2C 09    jp   m,$092C
080E: 3A EE D7    ld   a,($D7EE)
0811: A7          and  a
0812: FA EF 08    jp   m,$08EF
0815: 3A 62 D0    ld   a,($D062)
0818: 07          rlca
0819: 30 E9       jr   nc,$0804
081B: 3A 62 D0    ld   a,($D062)
081E: 07          rlca
081F: 30 E3       jr   nc,$0804
0821: CD 6B 26    call $266B
0824: D7          rst  $10
0825: CD AF 27    call $27AF
0828: 3E FD       ld   a,$FD
082A: 32 DD D7    ld   ($D7DD),a
082D: 21 9A 0A    ld   hl,$0A9A
0830: 11 E5 DF    ld   de,$DFE5
0833: 0E 06       ld   c,$06
0835: CD 4E 26    call $264E
0838: 3E 02       ld   a,$02
083A: CD 28 12    call $1228
083D: CD 73 29    call $2973
0840: 28 6A       jr   z,$08AC
0842: 0E 03       ld   c,$03
0844: CD B8 0B    call $0BB8
0847: 3E 1F       ld   a,$1F
0849: 32 30 D0    ld   ($D030),a
084C: 3E FC       ld   a,$FC
084E: 32 41 D0    ld   ($D041),a
0851: CD 3C 12    call $123C
0854: CD 46 12    call $1246
0857: CD 3C 12    call $123C
085A: 3E 04       ld   a,$04
085C: CD 28 12    call $1228
085F: 3E 44       ld   a,$44
0861: CD 71 26    call $2671
0864: 32 41 D0    ld   ($D041),a
0867: CD C2 0E    call $0EC2
086A: CD 9C 0B    call $0B9C
086D: 3E FF       ld   a,$FF
086F: 32 DD D7    ld   ($D7DD),a
0872: AF          xor  a
0873: 32 C1 D0    ld   ($D0C1),a
0876: 21 FA D7    ld   hl,$D7FA
0879: 7E          ld   a,(hl)
087A: 3C          inc  a
087B: E6 0F       and  $0F
087D: 20 02       jr   nz,$0881
087F: 3E 0C       ld   a,$0C
0881: 77          ld   (hl),a
0882: 2C          inc  l
0883: 7E          ld   a,(hl)
0884: C6 01       add  a,$01
0886: 27          daa
0887: 77          ld   (hl),a
0888: CD 27 0F    call $0F27
088B: D7          rst  $10
088C: CD EB 26    call $26EB
088F: CD 0D 27    call $270D
0892: CD 79 28    call $2879
0895: CD A9 27    call $27A9
0898: CD 4F 29    call $294F
089B: 3E FE       ld   a,$FE
089D: 32 DD D7    ld   ($D7DD),a
08A0: CD 67 26    call $2667
08A3: CD 08 28    call $2808
08A6: CD 67 26    call $2667
08A9: C3 7C 07    jp   $077C
08AC: 0E 0E       ld   c,$0E
08AE: CD B8 0B    call $0BB8
08B1: 3E 20       ld   a,$20
08B3: 32 30 D0    ld   ($D030),a
08B6: 21 52 D0    ld   hl,$D052
08B9: 34          inc  (hl)
08BA: 3E FC       ld   a,$FC
08BC: 32 61 D0    ld   ($D061),a
08BF: 3A 61 D0    ld   a,($D061)
08C2: FE FF       cp   $FF
08C4: 20 F9       jr   nz,$08BF
08C6: CD 46 12    call $1246
08C9: 3A 61 D0    ld   a,($D061)
08CC: A7          and  a
08CD: 20 FA       jr   nz,$08C9
08CF: D7          rst  $10
08D0: 21 80 D8    ld   hl,$D880
08D3: 11 B0 D8    ld   de,$D8B0
08D6: CD EA 0E    call $0EEA
08D9: 3E FE       ld   a,$FE
08DB: 32 DD D7    ld   ($D7DD),a
08DE: CD C2 0E    call $0EC2
08E1: CD 5F 26    call $265F
08E4: CD 9C 0B    call $0B9C
08E7: 3E 03       ld   a,$03
08E9: 32 FD DF    ld   ($DFFD),a
08EC: C3 6D 08    jp   $086D
08EF: 3A EE D7    ld   a,($D7EE)
08F2: A7          and  a
08F3: F2 04 08    jp   p,$0804
08F6: CD 6B 26    call $266B
08F9: 0E 09       ld   c,$09
08FB: CD B8 0B    call $0BB8
08FE: 3E FE       ld   a,$FE
0900: 32 DD D7    ld   ($D7DD),a
0903: 21 A0 0A    ld   hl,$0AA0
0906: 11 E5 DF    ld   de,$DFE5
0909: 0E 06       ld   c,$06
090B: CD 4E 26    call $264E
090E: CD 5B 26    call $265B
0911: 3E FD       ld   a,$FD
0913: 32 DD D7    ld   ($D7DD),a
0916: 21 4E 21    ld   hl,$214E
0919: 11 77 D0    ld   de,$D077
091C: 01 04 00    ld   bc,$0004
091F: ED B8       lddr
0921: 3A 74 D0    ld   a,($D074)
0924: A7          and  a
0925: 20 FA       jr   nz,$0921
0927: 21 70 02    ld   hl,$0270
092A: 18 36       jr   $0962
092C: 3A 42 D0    ld   a,($D042)
092F: A7          and  a
0930: F2 04 08    jp   p,$0804
0933: CD 46 12    call $1246
0936: 3E 02       ld   a,$02
0938: CD 28 12    call $1228
093B: CD 63 26    call $2663
093E: 0E 01       ld   c,$01
0940: CD B8 0B    call $0BB8
0943: 3E FF       ld   a,$FF
0945: 32 DD D7    ld   ($D7DD),a
0948: 21 56 21    ld   hl,$2156
094B: 11 7B D0    ld   de,$D07B
094E: 01 04 00    ld   bc,$0004
0951: ED B8       lddr
0953: 1E 73       ld   e,$73
0955: 0E 04       ld   c,$04
0957: ED B8       lddr
0959: 21 B4 99    ld   hl,$99B4
095C: CD C5 0B    call $0BC5
095F: 21 38 02    ld   hl,$0238
0962: E5          push hl
0963: CD 9C 0B    call $0B9C
0966: D7          rst  $10
0967: CD 6E 29    call $296E
096A: 20 0C       jr   nz,$0978
096C: 11 80 D8    ld   de,$D880
096F: 21 B0 D8    ld   hl,$D8B0
0972: CD EA 0E    call $0EEA
0975: CD 9A 28    call $289A
0978: CD 08 27    call $2708
097B: 3E FE       ld   a,$FE
097D: 32 DD D7    ld   ($D7DD),a
0980: E1          pop  hl
0981: 22 FA DF    ld   ($DFFA),hl
0984: CD 67 26    call $2667
0987: 3E 32       ld   a,$32
0989: CD 51 0E    call $0E51
098C: 30 1E       jr   nc,$09AC
098E: D7          rst  $10
098F: CD A6 28    call $28A6
0992: 3E FE       ld   a,$FE
0994: 32 DD D7    ld   ($D7DD),a
0997: CD 67 26    call $2667
099A: AF          xor  a
099B: CD 28 12    call $1228
099E: CD 66 0E    call $0E66
09A1: 3E FF       ld   a,$FF
09A3: 32 00 D5    ld   ($D500),a
09A6: 3A 00 D5    ld   a,($D500)
09A9: 3D          dec  a
09AA: 20 FA       jr   nz,$09A6
09AC: CD 63 26    call $2663
09AF: D7          rst  $10
09B0: CD EB 26    call $26EB
09B3: CD 0D 27    call $270D
09B6: CD A9 27    call $27A9
09B9: AF          xor  a
09BA: 32 C1 D0    ld   ($D0C1),a
09BD: 32 FD DF    ld   ($DFFD),a
09C0: FD 21 D8 D7 ld   iy,$D7D8
09C4: FD 7E 02    ld   a,(iy+$02)
09C7: EE 01       xor  $01
09C9: FD 77 02    ld   (iy+$02),a
09CC: 28 25       jr   z,$09F3
09CE: CD 06 29    call $2906
09D1: FD 7E 03    ld   a,(iy+$03)
09D4: A7          and  a
09D5: C2 1A 07    jp   nz,$071A
09D8: CD 49 29    call $2949
09DB: 3E FE       ld   a,$FE
09DD: 32 DD D7    ld   ($D7DD),a
09E0: CD 18 13    call $1318
09E3: D2 1A 07    jp   nc,$071A
09E6: FD 36 02 00 ld   (iy+$02),$00
09EA: D7          rst  $10
09EB: CD A9 27    call $27A9
09EE: 3E FE       ld   a,$FE
09F0: 32 DD D7    ld   ($D7DD),a
09F3: 21 00 D5    ld   hl,$D500
09F6: 7E          ld   a,(hl)
09F7: A7          and  a
09F8: 28 06       jr   z,$0A00
09FA: CD E0 0C    call $0CE0
09FD: CD 78 0C    call $0C78
0A00: 3A DB D7    ld   a,($D7DB)
0A03: A7          and  a
0A04: CA 34 04    jp   z,$0434
0A07: C3 BB 06    jp   $06BB
0A0A: 2E 0A       ld   l,$0A
0A0C: 3C          inc  a
0A0D: 0A          ld   a,(bc)
0A0E: 4A          ld   c,d
0A0F: 0A          ld   a,(bc)
0A10: 5F          ld   e,a
0A11: 0A          ld   a,(bc)
0A12: 6D          ld   l,l
0A13: 0A          ld   a,(bc)
0A14: 7B          ld   a,e
0A15: 0A          ld   a,(bc)
0A16: 34          inc  (hl)
0A17: 0A          ld   a,(bc)
0A18: 42          ld   b,d
0A19: 0A          ld   a,(bc)
0A1A: 57          ld   d,a
0A1B: 0A          ld   a,(bc)
0A1C: 65          ld   h,l
0A1D: 0A          ld   a,(bc)
0A1E: 73          ld   (hl),e
0A1F: 0A          ld   a,(bc)
0A20: 81          add  a,c
0A21: 0A          ld   a,(bc)
0A22: 2E 0A       ld   l,$0A
0A24: 3C          inc  a
0A25: 0A          ld   a,(bc)
0A26: 51          ld   d,c
0A27: 0A          ld   a,(bc)
0A28: 5F          ld   e,a
0A29: 0A          ld   a,(bc)
0A2A: 6D          ld   l,l
0A2B: 0A          ld   a,(bc)
0A2C: 7B          ld   a,e
0A2D: 0A          ld   a,(bc)
0A2E: 0C          inc  c
0A2F: 8C          adc  a,h
0A30: 06 08       ld   b,$08
0A32: FF          rst  $38
0A33: 01 2C AC    ld   bc,$AC2C
0A36: 06 16       ld   b,$16
0A38: 18 08       jr   $0A42
0A3A: FF          rst  $38
0A3B: 01 00 80    ld   bc,$8000
0A3E: FF          rst  $38
0A3F: 0A          ld   a,(bc)
0A40: FF          rst  $38
0A41: 01 2C AC    ld   bc,$AC2C
0A44: 06 16       ld   b,$16
0A46: 18 0A       jr   $0A52
0A48: FF          rst  $38
0A49: 01 1C 9C    ld   bc,$9C1C
0A4C: 06 16       ld   b,$16
0A4E: 0C          inc  c
0A4F: FF          rst  $38
0A50: 01 0A 8A    ld   bc,$8A0A
0A53: 06 0C       ld   b,$0C
0A55: FF          rst  $38
0A56: 01 2C AC    ld   bc,$AC2C
0A59: 06 16       ld   b,$16
0A5B: 18 0C       jr   $0A69
0A5D: FF          rst  $38
0A5E: 01 00 80    ld   bc,$8000
0A61: FF          rst  $38
0A62: 0E FF       ld   c,$FF
0A64: 01 2C AC    ld   bc,$AC2C
0A67: 06 16       ld   b,$16
0A69: 18 0E       jr   $0A79
0A6B: FF          rst  $38
0A6C: 01 00 80    ld   bc,$8000
0A6F: FF          rst  $38
0A70: 10 FF       djnz $0A71
0A72: 01 2C AC    ld   bc,$AC2C
0A75: 06 16       ld   b,$16
0A77: 18 10       jr   $0A89
0A79: FF          rst  $38
0A7A: 01 0C 8C    ld   bc,$8C0C
0A7D: 06 12       ld   b,$12
0A7F: FF          rst  $38
0A80: 01 3A BA    ld   bc,$BA3A
0A83: 06 14       ld   b,$14
0A85: 16 18       ld   d,$18
0A87: 12          ld   (de),a
0A88: FF          rst  $38
0A89: 01 28 3C    ld   bc,$3C28
0A8C: 71          ld   (hl),c
0A8D: DD          db   $dd
0A8E: AA          xor  d
0A8F: 90          sub  b
0A90: 88          adc  a,b
0A91: 78          ld   a,b
0A92: 24          inc  h
0A93: 2C          inc  l
0A94: 19          add  hl,de
0A95: 17          rla
0A96: DC FA 22    call c,$22FA
0A99: 88          adc  a,b
0A9A: 88          adc  a,b
0A9B: 24          inc  h
0A9C: 19          add  hl,de
0A9D: DC AA A4    call c,$A4AA
0AA0: 4E          ld   c,(hl)
0AA1: 00          nop
0AA2: 53          ld   d,e
0AA3: DD          db   $dd
0AA4: 88          adc  a,b
0AA5: 96          sub  (hl)
0AA6: 7E          ld   a,(hl)
0AA7: A7          and  a
0AA8: 28 07       jr   z,$0AB1
0AAA: F5          push af
0AAB: CD 9A 10    call $109A
0AAE: F1          pop  af
0AAF: 18 51       jr   $0B02
0AB1: CD 6B 13    call $136B
0AB4: 3A EE D7    ld   a,($D7EE)
0AB7: 07          rlca
0AB8: 38 2A       jr   c,$0AE4
0ABA: CD 00 2C    call $2C00
0ABD: CD 35 15    call $1535
0AC0: CD BB 15    call $15BB
0AC3: CD 3F 16    call $163F
0AC6: CD 6D 18    call $186D
0AC9: CD 8B 18    call $188B
0ACC: CD 63 1A    call $1A63
0ACF: CD 88 1E    call $1E88
0AD2: CD 52 2D    call $2D52
0AD5: CD 9B 24    call $249B
0AD8: CD DB 2E    call $2EDB
0ADB: CD 71 2F    call $2F71
0ADE: CD 2E 33    call $332E
0AE1: CD 0B 34    call $340B
0AE4: 3E 01       ld   a,$01
0AE6: D3 0A       out  ($0A),a
0AE8: CD B6 11    call $11B6
0AEB: CD 8F 11    call $118F
0AEE: C1          pop  bc
0AEF: D1          pop  de
0AF0: E1          pop  hl
0AF1: D9          exx
0AF2: FD E1       pop  iy
0AF4: DD E1       pop  ix
0AF6: C1          pop  bc
0AF7: D1          pop  de
0AF8: E1          pop  hl
0AF9: F1          pop  af
0AFA: 08          ex   af,af'
0AFB: 3E 01       ld   a,$01
0AFD: D3 08       out  ($08),a
0AFF: F1          pop  af
0B00: ED 45       retn
0B02: 3C          inc  a
0B03: 28 E3       jr   z,$0AE8
0B05: F5          push af
0B06: 3A D1 D7    ld   a,($D7D1)
0B09: 0F          rrca
0B0A: 30 06       jr   nc,$0B12
0B0C: CD 4A 10    call $104A
0B0F: CD 45 10    call $1045
0B12: CD 45 0D    call $0D45
0B15: CD 45 0D    call $0D45
0B18: CD 45 0D    call $0D45
0B1B: CD 71 2F    call $2F71
0B1E: F1          pop  af
0B1F: 3C          inc  a
0B20: 28 C2       jr   z,$0AE4
0B22: CD 95 2E    call $2E95
0B25: 3A 61 D0    ld   a,($D061)
0B28: FE FC       cp   $FC
0B2A: 20 06       jr   nz,$0B32
0B2C: CD 63 1A    call $1A63
0B2F: CD 0B 34    call $340B
0B32: 3A 41 D0    ld   a,($D041)
0B35: FE FC       cp   $FC
0B37: 20 AB       jr   nz,$0AE4
0B39: CD 8B 18    call $188B
0B3C: CD 2E 33    call $332E
0B3F: 18 A3       jr   $0AE4
0B41: 3C          inc  a
0B42: 28 A7       jr   z,$0AEB
0B44: CD 95 2E    call $2E95
0B47: 3A 61 D0    ld   a,($D061)
0B4A: FE FC       cp   $FC
0B4C: 20 06       jr   nz,$0B54
0B4E: CD 63 1A    call $1A63
0B51: CD 0B 34    call $340B
0B54: 3E 01       ld   a,$01
0B56: D3 0A       out  ($0A),a
0B58: 18 91       jr   $0AEB
0B5A: FF          rst  $38
0B5B: FF          rst  $38
0B5C: FF          rst  $38
0B5D: FF          rst  $38
0B5E: FF          rst  $38
0B5F: FF          rst  $38
0B60: 3E C9       ld   a,$C9
0B62: 32 67 FF    ld   ($FF67),a
0B65: 11 00 D5    ld   de,$D500
0B68: 01 00 02    ld   bc,$0200
0B6B: AF          xor  a
0B6C: CD 81 26    call $2681
0B6F: CD E5 26    call $26E5
0B72: CD EB 26    call $26EB
0B75: CD 0D 27    call $270D
0B78: CD A9 27    call $27A9
0B7B: CD 21 29    call $2921
0B7E: 21 00 00    ld   hl,$0000
0B81: 01 00 C0    ld   bc,$C000
0B84: CD C6 26    call $26C6
0B87: 11 2C FE    ld   de,$FE2C
0B8A: CD 38 0E    call $0E38
0B8D: CD D8 26    call $26D8
0B90: CD 6D B8    call $B86D
0B93: AF          xor  a
0B94: 32 D2 D7    ld   ($D7D2),a
0B97: D3 08       out  ($08),a
0B99: C3 BD BD    jp   $BDBD
0B9C: 21 01 F0    ld   hl,$F001
0B9F: 22 BD D0    ld   ($D0BD),hl
0BA2: 3A BF D0    ld   a,($D0BF)
0BA5: BC          cp   h
0BA6: 20 FA       jr   nz,$0BA2
0BA8: 21 04 00    ld   hl,$0004
0BAB: 22 BD D0    ld   ($D0BD),hl
0BAE: 3A BF D0    ld   a,($D0BF)
0BB1: BC          cp   h
0BB2: 20 FA       jr   nz,$0BAE
0BB4: CD 6F 26    call $266F
0BB7: C9          ret
0BB8: 21 C7 D7    ld   hl,$D7C7
0BBB: 36 02       ld   (hl),$02
0BBD: 2C          inc  l
0BBE: 2C          inc  l
0BBF: 7E          ld   a,(hl)
0BC0: E6 F0       and  $F0
0BC2: B1          or   c
0BC3: 77          ld   (hl),a
0BC4: C9          ret
0BC5: 11 00 01    ld   de,$0100
0BC8: ED 53 52 D0 ld   ($D052),de
0BCC: 22 54 D0    ld   ($D054),hl
0BCF: 3E FC       ld   a,$FC
0BD1: 32 61 D0    ld   ($D061),a
0BD4: 3C          inc  a
0BD5: 32 DD D7    ld   ($D7DD),a
0BD8: 3A 61 D0    ld   a,($D061)
0BDB: A7          and  a
0BDC: 20 FA       jr   nz,$0BD8
0BDE: C3 63 26    jp   $2663
0BE1: DD 21 00 10 ld   ix,$1000
0BE5: 23          inc  hl
0BE6: 13          inc  de
0BE7: 23          inc  hl
0BE8: 13          inc  de
0BE9: CD B1 0E    call $0EB1
0BEC: CD B1 0E    call $0EB1
0BEF: CD B1 0E    call $0EB1
0BF2: 7E          ld   a,(hl)
0BF3: 12          ld   (de),a
0BF4: 23          inc  hl
0BF5: 13          inc  de
0BF6: 7E          ld   a,(hl)
0BF7: 91          sub  c
0BF8: 27          daa
0BF9: 12          ld   (de),a
0BFA: 23          inc  hl
0BFB: 13          inc  de
0BFC: 7E          ld   a,(hl)
0BFD: DE 00       sbc  a,$00
0BFF: 27          daa
0C00: 12          ld   (de),a
0C01: 23          inc  hl
0C02: 13          inc  de
0C03: 10 E0       djnz $0BE5
0C05: 21 25 D5    ld   hl,$D525
0C08: 11 E7 D7    ld   de,$D7E7
0C0B: 0E 03       ld   c,$03
0C0D: ED B0       ldir
0C0F: CD 66 0E    call $0E66
0C12: C3 78 0C    jp   $0C78
0C15: 3E 01       ld   a,$01
0C17: D3 0F       out  ($0F),a ; NVRAM enable?
0C19: 4E          ld   c,(hl)
0C1A: AF          xor  a
0C1B: D3 0F       out  ($0F),a ; NVRAM enable?
0C1D: 79          ld   a,c
0C1E: E6 0F       and  $0F
0C20: FE 0A       cp   $0A
0C22: D0          ret  nc
0C23: 23          inc  hl
0C24: 22 78 FF    ld   ($FF78),hl
0C27: 11 22 00    ld   de,$0022
0C2A: 19          add  hl,de
0C2B: 06 28       ld   b,$28
0C2D: 0E 06       ld   c,$06
0C2F: 3E 01       ld   a,$01
0C31: D3 0F       out  ($0F),a ; NVRAM enable?
0C33: 5E          ld   e,(hl)
0C34: 23          inc  hl
0C35: AF          xor  a
0C36: D3 0F       out  ($0F),a ; NVRAM enable?
0C38: 7B          ld   a,e
0C39: E6 0F       and  $0F
0C3B: FE 0A       cp   $0A
0C3D: D0          ret  nc
0C3E: 0D          dec  c
0C3F: 20 EE       jr   nz,$0C2F
0C41: 1E 06       ld   e,$06
0C43: 19          add  hl,de
0C44: 10 E7       djnz $0C2D
0C46: 2A 78 FF    ld   hl,($FF78)
0C49: D9          exx
0C4A: 11 0E D5    ld   de,$D50E
0C4D: 01 2B 02    ld   bc,$022B
0C50: 18 02       jr   $0C54
0C52: 06 06       ld   b,$06
0C54: D9          exx
0C55: 3E 01       ld   a,$01
0C57: D3 0F       out  ($0F),a ; NVRAM enable?
0C59: 4E          ld   c,(hl)
0C5A: 23          inc  hl
0C5B: 46          ld   b,(hl)
0C5C: 23          inc  hl
0C5D: AF          xor  a
0C5E: D3 0F       out  ($0F),a ; NVRAM enable?
0C60: 78          ld   a,b
0C61: 07          rlca
0C62: 07          rlca
0C63: 07          rlca
0C64: 07          rlca
0C65: E6 F0       and  $F0
0C67: 47          ld   b,a
0C68: 79          ld   a,c
0C69: E6 0F       and  $0F
0C6B: B0          or   b
0C6C: D9          exx
0C6D: 12          ld   (de),a
0C6E: 13          inc  de
0C6F: 10 E3       djnz $0C54
0C71: 13          inc  de
0C72: 13          inc  de
0C73: 0D          dec  c
0C74: 20 DC       jr   nz,$0C52
0C76: 37          scf
0C77: C9          ret
0C78: CD C4 0C    call $0CC4
0C7B: 22 0E D5    ld   ($D50E),hl
0C7E: 11 01 C0    ld   de,$C001
0C81: CD 87 0C    call $0C87
0C84: 11 01 C2    ld   de,$C201
0C87: 3E 01       ld   a,$01
0C89: D3 0F       out  ($0F),a ; NVRAM enable?
0C8B: 3E 0F       ld   a,$0F
0C8D: 12          ld   (de),a
0C8E: AF          xor  a
0C8F: D3 0F       out  ($0F),a ; NVRAM enable?
0C91: D5          push de
0C92: 13          inc  de
0C93: D9          exx
0C94: 21 0E D5    ld   hl,$D50E
0C97: 01 2B 02    ld   bc,$022B
0C9A: 18 02       jr   $0C9E
0C9C: 06 06       ld   b,$06
0C9E: 7E          ld   a,(hl)
0C9F: 23          inc  hl
0CA0: D9          exx
0CA1: CD 9E 26    call $269E
0CA4: 4F          ld   c,a
0CA5: 3E 01       ld   a,$01
0CA7: D3 0F       out  ($0F),a
0CA9: 08          ex   af,af'
0CAA: 12          ld   (de),a
0CAB: 13          inc  de
0CAC: 79          ld   a,c
0CAD: 12          ld   (de),a
0CAE: AF          xor  a
0CAF: D3 0F       out  ($0F),a
0CB1: 13          inc  de
0CB2: D9          exx
0CB3: 10 E9       djnz $0C9E
0CB5: 23          inc  hl
0CB6: 23          inc  hl
0CB7: 0D          dec  c
0CB8: 20 E2       jr   nz,$0C9C
0CBA: D1          pop  de
0CBB: 3E 01       ld   a,$01
0CBD: D3 0F       out  ($0F),a
0CBF: AF          xor  a
0CC0: 12          ld   (de),a
0CC1: D3 0F       out  ($0F),a
0CC3: C9          ret
0CC4: 21 00 00    ld   hl,$0000
0CC7: 45          ld   b,l
0CC8: D9          exx
0CC9: 21 10 D5    ld   hl,$D510
0CCC: 0E 2A       ld   c,$2A
0CCE: 23          inc  hl
0CCF: 23          inc  hl
0CD0: 06 06       ld   b,$06
0CD2: 7E          ld   a,(hl)
0CD3: D9          exx
0CD4: 2F          cpl
0CD5: 4F          ld   c,a
0CD6: 09          add  hl,bc
0CD7: D9          exx
0CD8: 23          inc  hl
0CD9: 10 F7       djnz $0CD2
0CDB: 0D          dec  c
0CDC: 20 F0       jr   nz,$0CCE
0CDE: D9          exx
0CDF: C9          ret
0CE0: 36 00       ld   (hl),$00
0CE2: 11 B2 D6    ld   de,$D6B2
0CE5: 21 A9 D6    ld   hl,$D6A9
0CE8: CB 46       bit  0,(hl)
0CEA: C8          ret  z
0CEB: 23          inc  hl
0CEC: 06 06       ld   b,$06
0CEE: CD 2E 0E    call $0E2E
0CF1: 01 F2 FF    ld   bc,$FFF2
0CF4: 09          add  hl,bc
0CF5: EB          ex   de,hl
0CF6: 09          add  hl,bc
0CF7: EB          ex   de,hl
0CF8: 2B          dec  hl
0CF9: 18 ED       jr   $0CE8
0CFB: 7E          ld   a,(hl)
0CFC: FE F0       cp   $F0
0CFE: 20 22       jr   nz,$0D22
0D00: 36 FD       ld   (hl),$FD
0D02: 2A 04 D5    ld   hl,($D504)
0D05: 11 40 00    ld   de,$0040
0D08: 19          add  hl,de
0D09: 22 04 D5    ld   ($D504),hl
0D0C: 2C          inc  l
0D0D: 2C          inc  l
0D0E: 7E          ld   a,(hl)
0D0F: FE 0A       cp   $0A
0D11: 30 11       jr   nc,$0D24
0D13: C6 01       add  a,$01
0D15: 27          daa
0D16: CD 9E 26    call $269E
0D19: 71          ld   (hl),c
0D1A: 2D          dec  l
0D1B: 2D          dec  l
0D1C: 86          add  a,(hl)
0D1D: 20 01       jr   nz,$0D20
0D1F: 3C          inc  a
0D20: 77          ld   (hl),a
0D21: C9          ret
0D22: 35          dec  (hl)
0D23: C9          ret
0D24: 3E 01       ld   a,$01
0D26: 32 00 D5    ld   ($D500),a
0D29: C9          ret
0D2A: 11 34 0D    ld   de,$0D34
0D2D: EB          ex   de,hl
0D2E: 01 06 00    ld   bc,$0006
0D31: ED B0       ldir
0D33: C9          ret
0D34: FE 32       cp   $32
0D36: 00          nop
0D37: 3B          dec  sp
0D38: 52          ld   d,d
0D39: DE 7D       sbc  a,$7D
0D3B: E6 F8       and  $F8
0D3D: 3C          inc  a
0D3E: 6F          ld   l,a
0D3F: 36 01       ld   (hl),$01
0D41: D9          exx
0D42: 35          dec  (hl)
0D43: 18 22       jr   $0D67
0D45: 21 00 D5    ld   hl,$D500
0D48: 7E          ld   a,(hl)
0D49: A7          and  a
0D4A: F0          ret  p
0D4B: 3C          inc  a
0D4C: 28 DC       jr   z,$0D2A
0D4E: 3C          inc  a
0D4F: 20 AA       jr   nz,$0CFB
0D51: 2C          inc  l
0D52: 7E          ld   a,(hl)
0D53: A7          and  a
0D54: 28 11       jr   z,$0D67
0D56: 3A D1 D7    ld   a,($D7D1)
0D59: C6 02       add  a,$02
0D5B: E6 03       and  $03
0D5D: 20 08       jr   nz,$0D67
0D5F: 7E          ld   a,(hl)
0D60: D9          exx
0D61: CD 51 0E    call $0E51
0D64: 38 D4       jr   c,$0D3A
0D66: D9          exx
0D67: 2E 02       ld   l,$02
0D69: 7E          ld   a,(hl)
0D6A: A7          and  a
0D6B: FA 0C 0E    jp   m,$0E0C
0D6E: CA F5 0D    jp   z,$0DF5
0D71: FE 0B       cp   $0B
0D73: 28 24       jr   z,$0D99
0D75: 34          inc  (hl)
0D76: 01 40 00    ld   bc,$0040
0D79: FE 02       cp   $02
0D7B: 20 02       jr   nz,$0D7F
0D7D: 0E 80       ld   c,$80
0D7F: DE 00       sbc  a,$00
0D81: 3C          inc  a
0D82: 6F          ld   l,a
0D83: 60          ld   h,b
0D84: 29          add  hl,hl
0D85: 29          add  hl,hl
0D86: 29          add  hl,hl
0D87: 29          add  hl,hl
0D88: 29          add  hl,hl
0D89: 29          add  hl,hl
0D8A: 11 D2 DE    ld   de,$DED2
0D8D: EB          ex   de,hl
0D8E: ED 52       sbc  hl,de
0D90: 54          ld   d,h
0D91: 5D          ld   e,l
0D92: 09          add  hl,bc
0D93: EB          ex   de,hl
0D94: 0E 1C       ld   c,$1C
0D96: ED B0       ldir
0D98: C9          ret
0D99: 36 00       ld   (hl),$00
0D9B: 2C          inc  l
0D9C: 11 12 DC    ld   de,$DC12
0D9F: 7E          ld   a,(hl)
0DA0: D6 08       sub  $08
0DA2: 6F          ld   l,a
0DA3: 26 00       ld   h,$00
0DA5: 29          add  hl,hl
0DA6: 29          add  hl,hl
0DA7: 29          add  hl,hl
0DA8: 01 18 D5    ld   bc,$D518
0DAB: 09          add  hl,bc
0DAC: CD 47 0E    call $0E47
0DAF: 7B          ld   a,e
0DB0: C6 04       add  a,$04
0DB2: 5F          ld   e,a
0DB3: 0E 03       ld   c,$03
0DB5: CD 4E 26    call $264E
0DB8: 1C          inc  e
0DB9: 1C          inc  e
0DBA: ED 53 74 FF ld   ($FF74),de
0DBE: C3 B4 14    jp   $14B4
0DC1: 3C          inc  a
0DC2: 18 13       jr   $0DD7
0DC4: A7          and  a
0DC5: 28 FA       jr   z,$0DC1
0DC7: CD 51 0E    call $0E51
0DCA: 0E 00       ld   c,$00
0DCC: 28 02       jr   z,$0DD0
0DCE: 0E 01       ld   c,$01
0DD0: 7D          ld   a,l
0DD1: E6 F8       and  $F8
0DD3: 6F          ld   l,a
0DD4: 7E          ld   a,(hl)
0DD5: 81          add  a,c
0DD6: 27          daa
0DD7: ED 5B 04 D5 ld   de,($D504)
0DDB: CD 4A 0E    call $0E4A
0DDE: 21 FC D7    ld   hl,$D7FC
0DE1: 11 B2 D6    ld   de,$D6B2
0DE4: 01 03 00    ld   bc,$0003
0DE7: ED B0       ldir
0DE9: 2E E3       ld   l,$E3
0DEB: 0E 03       ld   c,$03
0DED: ED B0       ldir
0DEF: 3E FD       ld   a,$FD
0DF1: 32 00 D5    ld   ($D500),a
0DF4: C9          ret
0DF5: 2C          inc  l
0DF6: 3A 01 D5    ld   a,($D501)
0DF9: BE          cp   (hl)
0DFA: 28 C8       jr   z,$0DC4
0DFC: 7E          ld   a,(hl)
0DFD: 3D          dec  a
0DFE: 77          ld   (hl),a
0DFF: 2D          dec  l
0E00: FE 09       cp   $09
0E02: 38 05       jr   c,$0E09
0E04: 34          inc  (hl)
0E05: AF          xor  a
0E06: C3 76 0D    jp   $0D76
0E09: 36 80       ld   (hl),$80
0E0B: C9          ret
0E0C: 3C          inc  a
0E0D: FE 8B       cp   $8B
0E0F: 28 02       jr   z,$0E13
0E11: 77          ld   (hl),a
0E12: C9          ret
0E13: 36 00       ld   (hl),$00
0E15: 2C          inc  l
0E16: 6E          ld   l,(hl)
0E17: 26 00       ld   h,$00
0E19: 29          add  hl,hl
0E1A: 29          add  hl,hl
0E1B: 29          add  hl,hl
0E1C: 29          add  hl,hl
0E1D: 29          add  hl,hl
0E1E: 29          add  hl,hl
0E1F: 11 12 DC    ld   de,$DC12
0E22: 19          add  hl,de
0E23: 22 04 D5    ld   ($D504),hl
0E26: 5D          ld   e,l
0E27: 54          ld   d,h
0E28: 01 40 00    ld   bc,$0040
0E2B: 09          add  hl,bc
0E2C: 06 1C       ld   b,$1C
0E2E: 4E          ld   c,(hl)
0E2F: 1A          ld   a,(de)
0E30: 77          ld   (hl),a
0E31: 79          ld   a,c
0E32: 12          ld   (de),a
0E33: 23          inc  hl
0E34: 13          inc  de
0E35: 10 F7       djnz $0E2E
0E37: C9          ret
0E38: CD 9E 26    call $269E
0E3B: 20 02       jr   nz,$0E3F
0E3D: 3E FF       ld   a,$FF
0E3F: 12          ld   (de),a
0E40: 1C          inc  e
0E41: 1C          inc  e
0E42: 79          ld   a,c
0E43: 12          ld   (de),a
0E44: 1C          inc  e
0E45: 1C          inc  e
0E46: C9          ret
0E47: 7E          ld   a,(hl)
0E48: 2C          inc  l
0E49: 2C          inc  l
0E4A: CD 38 0E    call $0E38
0E4D: 3E 2B       ld   a,$2B
0E4F: 12          ld   (de),a
0E50: C9          ret
0E51: 6F          ld   l,a
0E52: 26 00       ld   h,$00
0E54: 29          add  hl,hl
0E55: 29          add  hl,hl
0E56: 29          add  hl,hl
0E57: 11 1F D5    ld   de,$D51F
0E5A: 19          add  hl,de
0E5B: ED 5B E3 D7 ld   de,($D7E3)
0E5F: 3A E5 D7    ld   a,($D7E5)
0E62: 47          ld   b,a
0E63: C3 F7 14    jp   $14F7
0E66: 21 27 D5    ld   hl,$D527
0E69: 0E 02       ld   c,$02
0E6B: DD 21 28 D5 ld   ix,$D528
0E6F: AF          xor  a
0E70: DD 77 F9    ld   (ix-$07),a
0E73: DD 77 F2    ld   (ix-$0e),a
0E76: DD 77 E5    ld   (ix-$1b),a
0E79: DD 36 F8 01 ld   (ix-$08),$01
0E7D: D9          exx
0E7E: 06 31       ld   b,$31
0E80: D9          exx
0E81: DD 46 07    ld   b,(ix+$07)
0E84: DD 56 06    ld   d,(ix+$06)
0E87: DD 5E 05    ld   e,(ix+$05)
0E8A: E5          push hl
0E8B: CD F7 14    call $14F7
0E8E: 79          ld   a,c
0E8F: 30 03       jr   nc,$0E94
0E91: 32 0D D5    ld   ($D50D),a
0E94: 20 03       jr   nz,$0E99
0E96: DD 7E F8    ld   a,(ix-$08)
0E99: DD 77 00    ld   (ix+$00),a
0E9C: 11 08 00    ld   de,$0008
0E9F: DD 72 01    ld   (ix+$01),d
0EA2: E1          pop  hl
0EA3: 19          add  hl,de
0EA4: DD 19       add  ix,de
0EA6: 79          ld   a,c
0EA7: C6 01       add  a,$01
0EA9: 27          daa
0EAA: 4F          ld   c,a
0EAB: D9          exx
0EAC: 10 D2       djnz $0E80
0EAE: C9          ret
0EAF: DD 23       inc  ix
0EB1: DD 7E 00    ld   a,(ix+$00)
0EB4: E6 1F       and  $1F
0EB6: FE 1A       cp   $1A
0EB8: 30 F5       jr   nc,$0EAF
0EBA: C6 0A       add  a,$0A
0EBC: 12          ld   (de),a
0EBD: DD 23       inc  ix
0EBF: 13          inc  de
0EC0: 23          inc  hl
0EC1: C9          ret
0EC2: 21 4F D8    ld   hl,$D84F
0EC5: 11 40 00    ld   de,$0040
0EC8: 06 15       ld   b,$15
0ECA: C5          push bc
0ECB: DD 21 4A 49 ld   ix,$494A
0ECF: 06 02       ld   b,$02
0ED1: CD 6F 26    call $266F
0ED4: CD BD 29    call $29BD
0ED7: A7          and  a
0ED8: ED 52       sbc  hl,de
0EDA: E5          push hl
0EDB: 06 02       ld   b,$02
0EDD: CD 6F 26    call $266F
0EE0: CD BD 29    call $29BD
0EE3: E1          pop  hl
0EE4: C1          pop  bc
0EE5: 10 E3       djnz $0ECA
0EE7: C3 67 26    jp   $2667
0EEA: 3E 04       ld   a,$04
0EEC: E5          push hl
0EED: D5          push de
0EEE: 01 10 00    ld   bc,$0010
0EF1: ED B0       ldir
0EF3: 0E 40       ld   c,$40
0EF5: E1          pop  hl
0EF6: 09          add  hl,bc
0EF7: D1          pop  de
0EF8: EB          ex   de,hl
0EF9: 09          add  hl,bc
0EFA: 3D          dec  a
0EFB: 20 EF       jr   nz,$0EEC
0EFD: C9          ret
0EFE: 2A F4 D7    ld   hl,($D7F4)
0F01: 7D          ld   a,l
0F02: B4          or   h
0F03: 6F          ld   l,a
0F04: 26 00       ld   h,$00
0F06: 18 10       jr   $0F18
0F08: 2A F4 D7    ld   hl,($D7F4)
0F0B: 7D          ld   a,l
0F0C: B4          or   h
0F0D: 67          ld   h,a
0F0E: AF          xor  a
0F0F: 6F          ld   l,a
0F10: 11 DF D7    ld   de,$D7DF
0F13: 0E 08       ld   c,$08
0F15: CD 7B 26    call $267B
0F18: 22 F4 D7    ld   ($D7F4),hl
0F1B: 21 00 00    ld   hl,$0000
0F1E: 22 EE DF    ld   ($DFEE),hl
0F21: 21 F3 0F    ld   hl,$0FF3
0F24: CD 92 0F    call $0F92
0F27: 2A F8 D7    ld   hl,($D7F8)
0F2A: 3A FA D7    ld   a,($D7FA)
0F2D: 87          add  a,a
0F2E: 85          add  a,l
0F2F: 6F          ld   l,a
0F30: 7E          ld   a,(hl)
0F31: 2C          inc  l
0F32: 66          ld   h,(hl)
0F33: F5          push af
0F34: E6 07       and  $07
0F36: 6F          ld   l,a
0F37: 7C          ld   a,h
0F38: F5          push af
0F39: E6 1F       and  $1F
0F3B: 67          ld   h,a
0F3C: 22 04 D0    ld   ($D004),hl
0F3F: F1          pop  af
0F40: C3 52 B8    jp   $B852
0F43: 0F          rrca
0F44: E6 0C       and  $0C
0F46: 32 26 D0    ld   ($D026),a
0F49: F1          pop  af
0F4A: E6 F8       and  $F8
0F4C: 67          ld   h,a
0F4D: 2E F8       ld   l,$F8
0F4F: F2 54 0F    jp   p,$0F54
0F52: 2E F4       ld   l,$F4
0F54: CB BC       res  7,h
0F56: 22 27 D0    ld   ($D027),hl
0F59: C9          ret
0F5A: 11 00 D0    ld   de,$D000
0F5D: AF          xor  a
0F5E: 01 00 02    ld   bc,$0200
0F61: CD 81 26    call $2681
0F64: 3A F6 D7    ld   a,($D7F6)
0F67: 01 C0 AC    ld   bc,$ACC0
0F6A: 81          add  a,c
0F6B: 4F          ld   c,a
0F6C: CD 6E 29    call $296E
0F6F: 20 0C       jr   nz,$0F7D
0F71: 3E 01       ld   a,$01
0F73: 32 2E D0    ld   ($D02E),a
0F76: 32 0A D0    ld   ($D00A),a
0F79: 3E 07       ld   a,$07
0F7B: 18 09       jr   $0F86
0F7D: 3A FA D7    ld   a,($D7FA)
0F80: FE 06       cp   $06
0F82: 38 02       jr   c,$0F86
0F84: 3E 06       ld   a,$06
0F86: 81          add  a,c
0F87: 4F          ld   c,a
0F88: 0A          ld   a,(bc)
0F89: 32 F3 D7    ld   ($D7F3),a
0F8C: CD 27 0F    call $0F27
0F8F: 21 00 10    ld   hl,$1000
0F92: 06 00       ld   b,$00
0F94: 7E          ld   a,(hl)
0F95: 5F          ld   e,a
0F96: 23          inc  hl
0F97: 3C          inc  a
0F98: 28 06       jr   z,$0FA0
0F9A: 4E          ld   c,(hl)
0F9B: 23          inc  hl
0F9C: ED B0       ldir
0F9E: 18 F4       jr   $0F94
0FA0: 7E          ld   a,(hl)
0FA1: 57          ld   d,a
0FA2: 23          inc  hl
0FA3: 3C          inc  a
0FA4: 20 EE       jr   nz,$0F94
0FA6: C9          ret
0FA7: 3A 04 D0    ld   a,($D004)
0FAA: 87          add  a,a
0FAB: 4F          ld   c,a
0FAC: 87          add  a,a
0FAD: 87          add  a,a
0FAE: 81          add  a,c
0FAF: 21 09 AD    ld   hl,$AD09
0FB2: CD D8 0F    call $0FD8
0FB5: 3A 05 D0    ld   a,($D005)
0FB8: 87          add  a,a
0FB9: 87          add  a,a
0FBA: 87          add  a,a
0FBB: 21 50 AD    ld   hl,$AD50
0FBE: CD D8 0F    call $0FD8
0FC1: EB          ex   de,hl
0FC2: 2D          dec  l
0FC3: 5E          ld   e,(hl)
0FC4: 16 AC       ld   d,$AC
0FC6: 1C          inc  e
0FC7: 1A          ld   a,(de)
0FC8: 1C          inc  e
0FC9: 73          ld   (hl),e
0FCA: 2D          dec  l
0FCB: 77          ld   (hl),a
0FCC: 3A DC D7    ld   a,($D7DC)
0FCF: A7          and  a
0FD0: C0          ret  nz
0FD1: 21 65 B3    ld   hl,$B365
0FD4: 22 06 D0    ld   ($D006),hl
0FD7: C9          ret
0FD8: 4F          ld   c,a
0FD9: 06 00       ld   b,$00
0FDB: E5          push hl
0FDC: DD E1       pop  ix
0FDE: 09          add  hl,bc
0FDF: 16 D0       ld   d,$D0
0FE1: DD 7E FF    ld   a,(ix-$01)
0FE4: FE FF       cp   $FF
0FE6: C8          ret  z
0FE7: 4F          ld   c,a
0FE8: DD 5E FE    ld   e,(ix-$02)
0FEB: ED B0       ldir
0FED: DD 2B       dec  ix
0FEF: DD 2B       dec  ix
0FF1: 18 EE       jr   $0FE1
0FF3: FF          rst  $38
0FF4: D7          rst  $10
0FF5: FA 02 00    jp   m,$0002
0FF8: 01 FF D5    ld   bc,$D5FF
0FFB: 00          nop
0FFC: 01 00 FF    ld   bc,$FF00
0FFF: FF          rst  $38
1000: FF          rst  $38
1001: D0          ret  nc
1002: 42          ld   b,d
1003: 01 03 48    ld   bc,$4803
1006: 02          ld   (bc),a
1007: 01 01 32    ld   bc,$3201
100A: 03          inc  bc
100B: 01 38 8C    ld   bc,$8C38
100E: 22 04 70    ld   ($7004),hl
1011: 01 70 01    ld   bc,$0170
1014: 61          ld   h,c
1015: 02          ld   (bc),a
1016: FD          db   $fd
1017: 43          ld   b,e
1018: 53          ld   d,e
1019: 01 01 68    ld   bc,$6801
101C: 02          ld   (bc),a
101D: 12          ld   (de),a
101E: 01 2C 02    ld   bc,$022C
1021: FB          ei
1022: 10 74       djnz $1098
1024: 0C          inc  c
1025: 81          add  a,c
1026: 04          inc  b
1027: C0          ret  nz
1028: 01 81 FC    ld   bc,$FC81
102B: DA 02 81    jp   c,$8102
102E: 02          ld   (bc),a
102F: 4B          ld   c,e
1030: 02          ld   (bc),a
1031: 92          sub  d
1032: 01 10 FF    ld   bc,$FF10
1035: D7          rst  $10
1036: EA 04 00    jp   pe,$0004
1039: 00          nop
103A: 00          nop
103B: 03          inc  bc
103C: EE 05       xor  $05
103E: 00          nop
103F: 00          nop
1040: E0          ret  po
1041: 00          nop
1042: 03          inc  bc
1043: FF          rst  $38
1044: FF          rst  $38
1045: 21 EE DF    ld   hl,$DFEE
1048: 18 03       jr   $104D
104A: 21 EF DF    ld   hl,$DFEF
104D: 7E          ld   a,(hl)
104E: E6 7F       and  $7F
1050: C8          ret  z
1051: 2D          dec  l
1052: 2D          dec  l
1053: CB 0E       rrc  (hl)
1055: D0          ret  nc
1056: E5          push hl
1057: DD E1       pop  ix
1059: DD 35 02    dec  (ix+$02)
105C: 11 40 00    ld   de,$0040
105F: FA 64 10    jp   m,$1064
1062: 1E 80       ld   e,$80
1064: DD 6E FC    ld   l,(ix-$04)
1067: DD 66 FE    ld   h,(ix-$02)
106A: DD 7E F8    ld   a,(ix-$08)
106D: 4F          ld   c,a
106E: 08          ex   af,af'
106F: 79          ld   a,c
1070: E6 1F       and  $1F
1072: 08          ex   af,af'
1073: 07          rlca
1074: 07          rlca
1075: 07          rlca
1076: E6 07       and  $07
1078: 4F          ld   c,a
1079: DD 7E FA    ld   a,(ix-$06)
107C: 46          ld   b,(hl)
107D: DD 70 FA    ld   (ix-$06),b
1080: 08          ex   af,af'
1081: 47          ld   b,a
1082: 08          ex   af,af'
1083: E5          push hl
1084: 77          ld   (hl),a
1085: 2C          inc  l
1086: 2C          inc  l
1087: 10 FB       djnz $1084
1089: E1          pop  hl
108A: 19          add  hl,de
108B: 0D          dec  c
108C: 20 F2       jr   nz,$1080
108E: C9          ret
108F: 77          ld   (hl),a
1090: 2C          inc  l
1091: 36 02       ld   (hl),$02
1093: 18 37       jr   $10CC
1095: 36 02       ld   (hl),$02
1097: 2C          inc  l
1098: 77          ld   (hl),a
1099: C9          ret
109A: 21 50 D7    ld   hl,$D750
109D: 7E          ld   a,(hl)
109E: A7          and  a
109F: C8          ret  z
10A0: FA 44 11    jp   m,$1144
10A3: 3D          dec  a
10A4: CA 58 11    jp   z,$1158
10A7: 2C          inc  l
10A8: 3A D1 D7    ld   a,($D7D1)
10AB: E6 0F       and  $0F
10AD: 20 0E       jr   nz,$10BD
10AF: 7E          ld   a,(hl)
10B0: D6 01       sub  $01
10B2: FA 58 11    jp   m,$1158
10B5: 27          daa
10B6: 77          ld   (hl),a
10B7: 11 C2 FD    ld   de,$FDC2
10BA: CD 38 0E    call $0E38
10BD: 2C          inc  l
10BE: DB 00       in   a,($00)
10C0: E6 0F       and  $0F
10C2: 28 CB       jr   z,$108F
10C4: BE          cp   (hl)
10C5: 77          ld   (hl),a
10C6: 20 C8       jr   nz,$1090
10C8: 2C          inc  l
10C9: 35          dec  (hl)
10CA: 28 48       jr   z,$1114
10CC: 2C          inc  l
10CD: DB 01       in   a,($01)
10CF: E6 0F       and  $0F
10D1: 28 C2       jr   z,$1095
10D3: 35          dec  (hl)
10D4: C0          ret  nz
10D5: 2C          inc  l
10D6: BE          cp   (hl)
10D7: 77          ld   (hl),a
10D8: 3E 05       ld   a,$05
10DA: 28 02       jr   z,$10DE
10DC: 3E 14       ld   a,$14
10DE: 32 54 D7    ld   ($D754),a
10E1: 46          ld   b,(hl)
10E2: 2A 56 D7    ld   hl,($D756)
10E5: 54          ld   d,h
10E6: 5D          ld   e,l
10E7: CB 38       srl  b
10E9: 38 11       jr   c,$10FC
10EB: CB 38       srl  b
10ED: 38 10       jr   c,$10FF
10EF: CB 38       srl  b
10F1: 38 06       jr   c,$10F9
10F3: 24          inc  h
10F4: CB 54       bit  2,h
10F6: 28 0B       jr   z,$1103
10F8: C9          ret
10F9: 25          dec  h
10FA: 18 F8       jr   $10F4
10FC: 2C          inc  l
10FD: 18 01       jr   $1100
10FF: 2D          dec  l
1100: CB 5D       bit  3,l
1102: C0          ret  nz
1103: 22 56 D7    ld   ($D756),hl
1106: 01 9F F9    ld   bc,$F99F
1109: 3E 2C       ld   a,$2C
110B: CD 85 11    call $1185
110E: EB          ex   de,hl
110F: 3E 24       ld   a,$24
1111: C3 85 11    jp   $1185
1114: 2E 50       ld   l,$50
1116: ED 5B 56 D7 ld   de,($D756)
111A: 7A          ld   a,d
111B: FE 03       cp   $03
111D: 28 14       jr   z,$1133
111F: 35          dec  (hl)
1120: 87          add  a,a
1121: 87          add  a,a
1122: 87          add  a,a
1123: 83          add  a,e
1124: C6 0A       add  a,$0A
1126: 4F          ld   c,a
1127: 7E          ld   a,(hl)
1128: 21 42 F7    ld   hl,$F742
112B: 87          add  a,a
112C: 87          add  a,a
112D: ED 44       neg
112F: 85          add  a,l
1130: 6F          ld   l,a
1131: 71          ld   (hl),c
1132: C9          ret
1133: 7B          ld   a,e
1134: D6 06       sub  $06
1136: 7A          ld   a,d
1137: 38 E6       jr   c,$111F
1139: 20 1D       jr   nz,$1158
113B: 7E          ld   a,(hl)
113C: FE 04       cp   $04
113E: C8          ret  z
113F: 34          inc  (hl)
1140: 0E 28       ld   c,$28
1142: 18 E4       jr   $1128
1144: 36 04       ld   (hl),$04
1146: 2C          inc  l
1147: 36 40       ld   (hl),$40
1149: 2C          inc  l
114A: EB          ex   de,hl
114B: AF          xor  a
114C: 0E 04       ld   c,$04
114E: CD 7B 26    call $267B
1151: EB          ex   de,hl
1152: 36 06       ld   (hl),$06
1154: 2C          inc  l
1155: 36 03       ld   (hl),$03
1157: C9          ret
1158: 2E 50       ld   l,$50
115A: 36 00       ld   (hl),$00
115C: 21 36 F7    ld   hl,$F736
115F: 11 FC D7    ld   de,$D7FC
1162: D5          push de
1163: 06 03       ld   b,$03
1165: 7E          ld   a,(hl)
1166: FE 28       cp   $28
1168: 20 02       jr   nz,$116C
116A: 3E FF       ld   a,$FF
116C: 12          ld   (de),a
116D: 1C          inc  e
116E: 7D          ld   a,l
116F: C6 04       add  a,$04
1171: 6F          ld   l,a
1172: 10 F1       djnz $1165
1174: E1          pop  hl
1175: 11 74 DD    ld   de,$DD74
1178: 0E 03       ld   c,$03
117A: 7E          ld   a,(hl)
117B: 12          ld   (de),a
117C: 2C          inc  l
117D: 13          inc  de
117E: 13          inc  de
117F: 13          inc  de
1180: 13          inc  de
1181: 0D          dec  c
1182: 20 F6       jr   nz,$117A
1184: C9          ret
1185: CB 25       sla  l
1187: CB 25       sla  l
1189: 09          add  hl,bc
118A: 77          ld   (hl),a
118B: 23          inc  hl
118C: 23          inc  hl
118D: 77          ld   (hl),a
118E: C9          ret
118F: 3A C6 D7    ld   a,($D7C6)
1192: A7          and  a
1193: C8          ret  z
1194: 21 C8 D7    ld   hl,$D7C8
1197: 01 02 04    ld   bc,$0402
119A: ED A3       outi
119C: 0C          inc  c
119D: 10 FB       djnz $119A
119F: C9          ret
11A0: 21 C6 D7    ld   hl,$D7C6
11A3: 7E          ld   a,(hl)
11A4: A7          and  a
11A5: C8          ret  z
11A6: 2C          inc  l
11A7: 7E          ld   a,(hl)
11A8: A7          and  a
11A9: 28 02       jr   z,$11AD
11AB: 35          dec  (hl)
11AC: C9          ret
11AD: 2C          inc  l
11AE: 36 00       ld   (hl),$00
11B0: 2C          inc  l
11B1: 7E          ld   a,(hl)
11B2: E6 F0       and  $F0
11B4: 77          ld   (hl),a
11B5: C9          ret
11B6: 21 C0 D7    ld   hl,$D7C0
11B9: 7E          ld   a,(hl)
11BA: 0E 01       ld   c,$01
11BC: A7          and  a
11BD: FA CE 11    jp   m,$11CE
11C0: 2C          inc  l
11C1: CD 05 12    call $1205
11C4: D8          ret  c
11C5: 0C          inc  c
11C6: 2E C3       ld   l,$C3
11C8: 18 3B       jr   $1205
11CA: 36 00       ld   (hl),$00
11CC: 18 F2       jr   $11C0
11CE: 3C          inc  a
11CF: 20 0F       jr   nz,$11E0
11D1: DB 03       in   a,($03)
11D3: E6 10       and  $10
11D5: 20 F3       jr   nz,$11CA
11D7: 2C          inc  l
11D8: CD 05 12    call $1205
11DB: AF          xor  a
11DC: 32 C3 D7    ld   ($D7C3),a
11DF: C9          ret
11E0: 3E 01       ld   a,$01
11E2: D3 0C       out  ($0C),a
11E4: 3E 00       ld   a,$00
11E6: D3 04       out  ($04),a
11E8: EB          ex   de,hl
11E9: 0E 05       ld   c,$05
11EB: CD 7B 26    call $267B
11EE: D3 0C       out  ($0C),a
11F0: C9          ret
11F1: 3A DC D7    ld   a,($D7DC)
11F4: A7          and  a
11F5: C8          ret  z
11F6: 3A C0 D7    ld   a,($D7C0)
11F9: A7          and  a
11FA: F8          ret  m
11FB: C8          ret  z
11FC: D6 02       sub  $02
11FE: 32 C0 D7    ld   ($D7C0),a
1201: AF          xor  a
1202: D3 0D       out  ($0D),a
1204: C9          ret
1205: 7E          ld   a,(hl)
1206: A7          and  a
1207: C8          ret  z
1208: 36 00       ld   (hl),$00
120A: 08          ex   af,af'
120B: 3E 01       ld   a,$01
120D: D3 0C       out  ($0C),a
120F: AF          xor  a
1210: 08          ex   af,af'
1211: D3 04       out  ($04),a
1213: 79          ld   a,c
1214: 32 C0 D7    ld   ($D7C0),a
1217: 08          ex   af,af'
1218: D3 0C       out  ($0C),a
121A: 2C          inc  l
121B: D3 0E       out  ($0E),a
121D: 7E          ld   a,(hl)
121E: D3 04       out  ($04),a
1220: 3E 01       ld   a,$01
1222: D3 0D       out  ($0D),a
1224: 37          scf
1225: C9          ret
1226: 1A          ld   a,(de)
1227: 13          inc  de
1228: DD 21 C1 D7 ld   ix,$D7C1
122C: 26 02       ld   h,$02
122E: 6F          ld   l,a
122F: 7E          ld   a,(hl)
1230: DD 77 01    ld   (ix+$01),a
1233: 2C          inc  l
1234: 7E          ld   a,(hl)
1235: DD 77 00    ld   (ix+$00),a
1238: C9          ret
1239: CD 28 12    call $1228
123C: CD 6F 26    call $266F
123F: 3A C0 D7    ld   a,($D7C0)
1242: A7          and  a
1243: 20 FA       jr   nz,$123F
1245: C9          ret
1246: 11 57 12    ld   de,$1257
1249: 06 04       ld   b,$04
124B: AF          xor  a
124C: CD 28 12    call $1228
124F: 1A          ld   a,(de)
1250: 13          inc  de
1251: CD 71 26    call $2671
1254: 10 F5       djnz $124B
1256: C9          ret
1257: 10 0C       djnz $1265
1259: 10 18       djnz $1273
125B: A0          and  b
125C: 28 06       jr   z,$1264
125E: 7E          ld   a,(hl)
125F: A7          and  a
1260: F8          ret  m
1261: 3D          dec  a
1262: 77          ld   (hl),a
1263: C9          ret
1264: 7E          ld   a,(hl)
1265: A7          and  a
1266: FA 7A 12    jp   m,$127A
1269: 36 18       ld   (hl),$18
126B: FE 17       cp   $17
126D: D0          ret  nc
126E: 2C          inc  l
126F: 56          ld   d,(hl)
1270: 2E DB       ld   l,$DB
1272: 7E          ld   a,(hl)
1273: FE 80       cp   $80
1275: D0          ret  nc
1276: 82          add  a,d
1277: 27          daa
1278: 77          ld   (hl),a
1279: C9          ret
127A: 35          dec  (hl)
127B: C9          ret
127C: FD 21 D8 D7 ld   iy,$D7D8
1280: FD 7E 02    ld   a,(iy+$02)
1283: 4F          ld   c,a
1284: 87          add  a,a
1285: 81          add  a,c
1286: FD 77 F7    ld   (iy-$09),a
1289: FD 7E 03    ld   a,(iy+$03)
128C: 11 B2 F3    ld   de,$F3B2
128F: CD 38 0E    call $0E38
1292: FD 7E F7    ld   a,(iy-$09)
1295: 87          add  a,a
1296: 5F          ld   e,a
1297: 16 00       ld   d,$00
1299: 21 D8 12    ld   hl,$12D8
129C: 19          add  hl,de
129D: FD 7E 03    ld   a,(iy+$03)
12A0: E9          jp   (hl)
12A1: FD BE 00    cp   (iy+$00)
12A4: 30 0F       jr   nc,$12B5
12A6: CD 31 29    call $2931
12A9: 18 DE       jr   $1289
12AB: FD BE 01    cp   (iy+$01)
12AE: 38 F6       jr   c,$12A6
12B0: 18 03       jr   $12B5
12B2: FD 34 F7    inc  (iy-$09)
12B5: FD 34 F7    inc  (iy-$09)
12B8: 18 CF       jr   $1289
12BA: DB 00       in   a,($00)
12BC: E6 01       and  $01
12BE: 20 F5       jr   nz,$12B5
12C0: CD 37 29    call $2937
12C3: 18 C4       jr   $1289
12C5: DB 00       in   a,($00)
12C7: E6 04       and  $04
12C9: 20 E7       jr   nz,$12B2
12CB: CD 42 29    call $2942
12CE: FD 7E 03    ld   a,(iy+$03)
12D1: FD BE 00    cp   (iy+$00)
12D4: 30 DF       jr   nc,$12B5
12D6: 18 B1       jr   $1289
12D8: 18 C7       jr   $12A1
12DA: 18 DE       jr   $12BA
12DC: 18 1E       jr   $12FC
12DE: 18 CB       jr   $12AB
12E0: 18 E3       jr   $12C5
12E2: 18 02       jr   $12E6
12E4: 18 24       jr   $130A
12E6: DB 00       in   a,($00)
12E8: E6 04       and  $04
12EA: 20 C9       jr   nz,$12B5
12EC: DB 00       in   a,($00)
12EE: E6 01       and  $01
12F0: 28 CE       jr   z,$12C0
12F2: FD 36 F7 02 ld   (iy-$09),$02
12F6: FD 36 02 FF ld   (iy+$02),$FF
12FA: 18 8D       jr   $1289
12FC: CD 6F 26    call $266F
12FF: FD 7E 03    ld   a,(iy+$03)
1302: FD 96 00    sub  (iy+$00)
1305: 27          daa
1306: FD 77 03    ld   (iy+$03),a
1309: C9          ret
130A: CD 6F 26    call $266F
130D: FD 7E 03    ld   a,(iy+$03)
1310: FD 96 01    sub  (iy+$01)
1313: 27          daa
1314: FD 77 03    ld   (iy+$03),a
1317: C9          ret
1318: FD 36 F7 30 ld   (iy-$09),$30
131C: AF          xor  a
131D: 32 B4 F3    ld   ($F3B4),a
1320: FD 7E F7    ld   a,(iy-$09)
1323: F5          push af
1324: 11 C2 FD    ld   de,$FDC2
1327: CD 38 0E    call $0E38
132A: 3E 14       ld   a,$14
132C: CD 71 26    call $2671
132F: F1          pop  af
1330: D6 01       sub  $01
1332: D8          ret  c
1333: 27          daa
1334: FD 77 F7    ld   (iy-$09),a
1337: FD 7E 03    ld   a,(iy+$03)
133A: A7          and  a
133B: 28 E3       jr   z,$1320
133D: C9          ret
133E: 35          dec  (hl)
133F: C3 F1 13    jp   $13F1
1342: AF          xor  a
1343: 32 EA D7    ld   ($D7EA),a
1346: 2F          cpl
1347: 32 EE D7    ld   ($D7EE),a
134A: C3 F1 13    jp   $13F1
134D: AF          xor  a
134E: 32 EA D7    ld   ($D7EA),a
1351: 18 60       jr   $13B3
1353: 11 DF D7    ld   de,$D7DF
1356: 3E FF       ld   a,$FF
1358: 12          ld   (de),a
1359: 1C          inc  e
135A: 21 EB D7    ld   hl,$D7EB
135D: 01 03 00    ld   bc,$0003
1360: ED B0       ldir
1362: AF          xor  a
1363: 32 EA D7    ld   ($D7EA),a
1366: 47          ld   b,a
1367: 67          ld   h,a
1368: 6F          ld   l,a
1369: 18 34       jr   $139F
136B: 3A 64 D0    ld   a,($D064)
136E: 3C          inc  a
136F: CA F1 13    jp   z,$13F1
1372: 3A EA D7    ld   a,($D7EA)
1375: A7          and  a
1376: 28 3B       jr   z,$13B3
1378: 3D          dec  a
1379: 20 D8       jr   nz,$1353
137B: 3A D1 D7    ld   a,($D7D1)
137E: 3C          inc  a
137F: E6 07       and  $07
1381: 20 30       jr   nz,$13B3
1383: 2A EB D7    ld   hl,($D7EB)
1386: 3A ED D7    ld   a,($D7ED)
1389: 47          ld   b,a
138A: B5          or   l
138B: B4          or   h
138C: 28 BF       jr   z,$134D
138E: 7D          ld   a,l
138F: D6 30       sub  $30
1391: 27          daa
1392: 6F          ld   l,a
1393: 7C          ld   a,h
1394: DE 00       sbc  a,$00
1396: 27          daa
1397: 67          ld   h,a
1398: 78          ld   a,b
1399: DE 00       sbc  a,$00
139B: 27          daa
139C: 47          ld   b,a
139D: 38 C3       jr   c,$1362
139F: 32 ED D7    ld   ($D7ED),a
13A2: 22 EB D7    ld   ($D7EB),hl
13A5: EB          ex   de,hl
13A6: 21 D2 D9    ld   hl,$D9D2
13A9: D9          exx
13AA: 21 12 DA    ld   hl,$DA12
13AD: D9          exx
13AE: 0E 01       ld   c,$01
13B0: CD 3C 14    call $143C
13B3: 21 EE D7    ld   hl,$D7EE
13B6: 7E          ld   a,(hl)
13B7: 3D          dec  a
13B8: FA F1 13    jp   m,$13F1
13BB: 2C          inc  l
13BC: 7E          ld   a,(hl)
13BD: A7          and  a
13BE: C2 3E 13    jp   nz,$133E
13C1: 3A F3 D7    ld   a,($D7F3)
13C4: 77          ld   (hl),a
13C5: 2C          inc  l
13C6: 35          dec  (hl)
13C7: 2C          inc  l
13C8: 7E          ld   a,(hl)
13C9: D6 01       sub  $01
13CB: 27          daa
13CC: 30 10       jr   nc,$13DE
13CE: 2C          inc  l
13CF: 35          dec  (hl)
13D0: FA 42 13    jp   m,$1342
13D3: 7E          ld   a,(hl)
13D4: DD 21 5E DD ld   ix,$DD5E
13D8: CD 04 15    call $1504
13DB: 3E 59       ld   a,$59
13DD: 2D          dec  l
13DE: 77          ld   (hl),a
13DF: CD 9E 26    call $269E
13E2: DD 21 64 DD ld   ix,$DD64
13E6: CD 04 15    call $1504
13E9: 79          ld   a,c
13EA: DD 21 68 DD ld   ix,$DD68
13EE: CD 04 15    call $1504
13F1: 3A DF D7    ld   a,($D7DF)
13F4: A7          and  a
13F5: CA A4 14    jp   z,$14A4
13F8: AF          xor  a
13F9: 32 DF D7    ld   ($D7DF),a
13FC: 2A E0 D7    ld   hl,($D7E0)
13FF: ED 4B E2 D7 ld   bc,($D7E2)
1403: ED 5B E4 D7 ld   de,($D7E4)
1407: 78          ld   a,b
1408: 85          add  a,l
1409: 27          daa
140A: 6F          ld   l,a
140B: 7B          ld   a,e
140C: 8C          adc  a,h
140D: 27          daa
140E: 67          ld   h,a
140F: 7A          ld   a,d
1410: 89          adc  a,c
1411: 27          daa
1412: 47          ld   b,a
1413: 32 E5 D7    ld   ($D7E5),a
1416: 22 E3 D7    ld   ($D7E3),hl
1419: EB          ex   de,hl
141A: 21 E6 D7    ld   hl,$D7E6
141D: 7E          ld   a,(hl)
141E: A7          and  a
141F: 20 09       jr   nz,$142A
1421: 2E E9       ld   l,$E9
1423: CD F7 14    call $14F7
1426: 30 0A       jr   nc,$1432
1428: 2E E6       ld   l,$E6
142A: 36 81       ld   (hl),$81
142C: 2C          inc  l
142D: 73          ld   (hl),e
142E: 2C          inc  l
142F: 72          ld   (hl),d
1430: 2C          inc  l
1431: 70          ld   (hl),b
1432: 21 E0 D9    ld   hl,$D9E0
1435: D9          exx
1436: 21 20 DA    ld   hl,$DA20
1439: D9          exx
143A: 0E 00       ld   c,$00
143C: 78          ld   a,b
143D: CD 57 14    call $1457
1440: 7A          ld   a,d
1441: CD 62 14    call $1462
1444: 7B          ld   a,e
1445: B1          or   c
1446: 20 19       jr   nz,$1461
1448: 36 FF       ld   (hl),$FF
144A: 2C          inc  l
144B: 2C          inc  l
144C: 36 30       ld   (hl),$30
144E: D9          exx
144F: 36 FF       ld   (hl),$FF
1451: 2C          inc  l
1452: 2C          inc  l
1453: 36 31       ld   (hl),$31
1455: D9          exx
1456: C9          ret
1457: CB 41       bit  0,c
1459: 28 07       jr   z,$1462
145B: 0E 00       ld   c,$00
145D: E6 0F       and  $0F
145F: 18 33       jr   $1494
1461: 7B          ld   a,e
1462: CD 90 26    call $2690
1465: CB 41       bit  0,c
1467: 28 1A       jr   z,$1483
1469: 87          add  a,a
146A: C6 30       add  a,$30
146C: 77          ld   (hl),a
146D: 3C          inc  a
146E: 2C          inc  l
146F: 2C          inc  l
1470: D9          exx
1471: 77          ld   (hl),a
1472: 2C          inc  l
1473: 2C          inc  l
1474: D9          exx
1475: 08          ex   af,af'
1476: 87          add  a,a
1477: C6 30       add  a,$30
1479: 77          ld   (hl),a
147A: 3C          inc  a
147B: 2C          inc  l
147C: 2C          inc  l
147D: D9          exx
147E: 77          ld   (hl),a
147F: 2C          inc  l
1480: 2C          inc  l
1481: D9          exx
1482: C9          ret
1483: A7          and  a
1484: 28 03       jr   z,$1489
1486: 0C          inc  c
1487: 18 E0       jr   $1469
1489: 36 FF       ld   (hl),$FF
148B: 2C          inc  l
148C: 2C          inc  l
148D: D9          exx
148E: 36 FF       ld   (hl),$FF
1490: 2C          inc  l
1491: 2C          inc  l
1492: D9          exx
1493: 08          ex   af,af'
1494: 20 0B       jr   nz,$14A1
1496: 36 FF       ld   (hl),$FF
1498: 2C          inc  l
1499: 2C          inc  l
149A: D9          exx
149B: 36 FF       ld   (hl),$FF
149D: 2C          inc  l
149E: 2C          inc  l
149F: D9          exx
14A0: C9          ret
14A1: 0C          inc  c
14A2: 18 D2       jr   $1476
14A4: 21 E6 D7    ld   hl,$D7E6
14A7: CB 46       bit  0,(hl)
14A9: C8          ret  z
14AA: 36 80       ld   (hl),$80
14AC: 2C          inc  l
14AD: 11 E0 D8    ld   de,$D8E0
14B0: ED 53 74 FF ld   ($FF74),de
14B4: 5E          ld   e,(hl)
14B5: 2C          inc  l
14B6: 56          ld   d,(hl)
14B7: 2C          inc  l
14B8: 46          ld   b,(hl)
14B9: 2A 74 FF    ld   hl,($FF74)
14BC: 0E 00       ld   c,$00
14BE: 78          ld   a,b
14BF: CD D1 14    call $14D1
14C2: 7A          ld   a,d
14C3: CD D1 14    call $14D1
14C6: 7B          ld   a,e
14C7: B1          or   c
14C8: 20 06       jr   nz,$14D0
14CA: 36 FF       ld   (hl),$FF
14CC: 2C          inc  l
14CD: 2C          inc  l
14CE: 77          ld   (hl),a
14CF: C9          ret
14D0: 7B          ld   a,e
14D1: CD 90 26    call $2690
14D4: CB 41       bit  0,c
14D6: 28 08       jr   z,$14E0
14D8: 77          ld   (hl),a
14D9: 2C          inc  l
14DA: 2C          inc  l
14DB: 08          ex   af,af'
14DC: 77          ld   (hl),a
14DD: 2C          inc  l
14DE: 2C          inc  l
14DF: C9          ret
14E0: A7          and  a
14E1: 28 03       jr   z,$14E6
14E3: 0C          inc  c
14E4: 18 F2       jr   $14D8
14E6: 36 FF       ld   (hl),$FF
14E8: 2C          inc  l
14E9: 2C          inc  l
14EA: 08          ex   af,af'
14EB: 20 05       jr   nz,$14F2
14ED: 36 FF       ld   (hl),$FF
14EF: 2C          inc  l
14F0: 2C          inc  l
14F1: C9          ret
14F2: 0C          inc  c
14F3: 77          ld   (hl),a
14F4: 2C          inc  l
14F5: 2C          inc  l
14F6: C9          ret
14F7: 7E          ld   a,(hl)
14F8: B8          cp   b
14F9: D8          ret  c
14FA: C0          ret  nz
14FB: 2D          dec  l
14FC: 7E          ld   a,(hl)
14FD: BA          cp   d
14FE: D8          ret  c
14FF: C0          ret  nz
1500: 2D          dec  l
1501: 7E          ld   a,(hl)
1502: BB          cp   e
1503: C9          ret
1504: 87          add  a,a
1505: 87          add  a,a
1506: C6 44       add  a,$44
1508: DD 77 00    ld   (ix+$00),a
150B: 3C          inc  a
150C: DD 77 02    ld   (ix+$02),a
150F: 3C          inc  a
1510: DD 77 40    ld   (ix+$40),a
1513: 3C          inc  a
1514: DD 77 42    ld   (ix+$42),a
1517: C9          ret
1518: D9          exx
1519: 7E          ld   a,(hl)
151A: 23          inc  hl
151B: 66          ld   h,(hl)
151C: 6F          ld   l,a
151D: 22 06 D0    ld   ($D006),hl
1520: C9          ret
1521: D9          exx
1522: 2A 08 D0    ld   hl,($D008)
1525: 22 06 D0    ld   ($D006),hl
1528: 18 0E       jr   $1538
152A: D9          exx
152B: 11 06 D0    ld   de,$D006
152E: 0E 02       ld   c,$02
1530: ED B0       ldir
1532: 22 08 D0    ld   ($D008),hl
1535: 2A 06 D0    ld   hl,($D006)
1538: 3A F0 D7    ld   a,($D7F0)
153B: BE          cp   (hl)
153C: D0          ret  nc
153D: 23          inc  hl
153E: 7E          ld   a,(hl)
153F: 23          inc  hl
1540: 06 00       ld   b,$00
1542: 16 D1       ld   d,$D1
1544: 5F          ld   e,a
1545: D9          exx
1546: 4F          ld   c,a
1547: E6 0F       and  $0F
1549: 6F          ld   l,a
154A: 87          add  a,a
154B: 85          add  a,l
154C: C6 71       add  a,$71
154E: 6F          ld   l,a
154F: 26 02       ld   h,$02
1551: 79          ld   a,c
1552: E9          jp   (hl)
1553: 7E          ld   a,(hl)
1554: A7          and  a
1555: 28 E6       jr   z,$153D
1557: 22 06 D0    ld   ($D006),hl
155A: C9          ret
155B: D9          exx
155C: ED A0       ldi
155E: 18 F3       jr   $1553
1560: D9          exx
1561: CB 93       res  2,e
1563: 1A          ld   a,(de)
1564: 3C          inc  a
1565: 12          ld   (de),a
1566: 18 EB       jr   $1553
1568: D9          exx
1569: 0E 03       ld   c,$03
156B: ED B0       ldir
156D: 18 E4       jr   $1553
156F: CD 9E 26    call $269E
1572: 2F          cpl
1573: 18 D4       jr   $1549
1575: D9          exx
1576: 3A 90 D0    ld   a,($D090)
1579: F6 01       or   $01
157B: 32 90 D0    ld   ($D090),a
157E: 18 D3       jr   $1553
1580: D9          exx
1581: 11 94 D0    ld   de,$D094
1584: 0E 02       ld   c,$02
1586: ED B0       ldir
1588: 18 C9       jr   $1553
158A: D9          exx
158B: 11 68 D0    ld   de,$D068
158E: ED A0       ldi
1590: 18 C1       jr   $1553
1592: D9          exx
1593: 11 8B D0    ld   de,$D08B
1596: ED A0       ldi
1598: 18 B9       jr   $1553
159A: D9          exx
159B: 0E 02       ld   c,$02
159D: ED B0       ldir
159F: 18 B2       jr   $1553
15A1: D9          exx
15A2: E6 F0       and  $F0
15A4: 5F          ld   e,a
15A5: E5          push hl
15A6: 6E          ld   l,(hl)
15A7: 60          ld   h,b
15A8: 29          add  hl,hl
15A9: 29          add  hl,hl
15AA: 4D          ld   c,l
15AB: 44          ld   b,h
15AC: 29          add  hl,hl
15AD: 09          add  hl,bc
15AE: 01 C0 AE    ld   bc,$AEC0
15B1: 09          add  hl,bc
15B2: 01 0C 00    ld   bc,$000C
15B5: ED B0       ldir
15B7: E1          pop  hl
15B8: 23          inc  hl
15B9: 18 98       jr   $1553
15BB: 21 91 D0    ld   hl,$D091
15BE: 7E          ld   a,(hl)
15BF: FE 40       cp   $40
15C1: D0          ret  nc
15C2: 4F          ld   c,a
15C3: 3A 41 D0    ld   a,($D041)
15C6: FE FD       cp   $FD
15C8: 20 03       jr   nz,$15CD
15CA: 36 40       ld   (hl),$40
15CC: C9          ret
15CD: 3A 61 D0    ld   a,($D061)
15D0: FE FD       cp   $FD
15D2: 20 09       jr   nz,$15DD
15D4: 3A 2F D0    ld   a,($D02F)
15D7: A7          and  a
15D8: 28 03       jr   z,$15DD
15DA: 36 50       ld   (hl),$50
15DC: C9          ret
15DD: 11 8B D0    ld   de,$D08B
15E0: 1A          ld   a,(de)
15E1: A7          and  a
15E2: 28 04       jr   z,$15E8
15E4: 77          ld   (hl),a
15E5: AF          xor  a
15E6: 12          ld   (de),a
15E7: C9          ret
15E8: 11 15 D0    ld   de,$D015
15EB: 79          ld   a,c
15EC: A7          and  a
15ED: 28 22       jr   z,$1611
15EF: FE 10       cp   $10
15F1: 28 18       jr   z,$160B
15F3: FE 20       cp   $20
15F5: 28 06       jr   z,$15FD
15F7: 1A          ld   a,(de)
15F8: A7          and  a
15F9: 28 3A       jr   z,$1635
15FB: 18 04       jr   $1601
15FD: 1A          ld   a,(de)
15FE: A7          and  a
15FF: 20 39       jr   nz,$163A
1601: 1E 87       ld   e,$87
1603: 1A          ld   a,(de)
1604: A7          and  a
1605: C0          ret  nz
1606: 79          ld   a,c
1607: D6 20       sub  $20
1609: 18 32       jr   $163D
160B: 1A          ld   a,(de)
160C: A7          and  a
160D: 28 26       jr   z,$1635
160F: 18 04       jr   $1615
1611: 1A          ld   a,(de)
1612: A7          and  a
1613: 20 25       jr   nz,$163A
1615: 1E 88       ld   e,$88
1617: 1A          ld   a,(de)
1618: A7          and  a
1619: C0          ret  nz
161A: 79          ld   a,c
161B: C6 20       add  a,$20
161D: 77          ld   (hl),a
161E: 1C          inc  e
161F: 1A          ld   a,(de)
1620: 6F          ld   l,a
1621: 26 AC       ld   h,$AC
1623: 1D          dec  e
1624: 1D          dec  e
1625: ED A0       ldi
1627: ED A0       ldi
1629: 7D          ld   a,l
162A: E6 07       and  $07
162C: 20 04       jr   nz,$1632
162E: 7D          ld   a,l
162F: D6 08       sub  $08
1631: 6F          ld   l,a
1632: 7D          ld   a,l
1633: 12          ld   (de),a
1634: C9          ret
1635: 79          ld   a,c
1636: D6 10       sub  $10
1638: 18 03       jr   $163D
163A: 79          ld   a,c
163B: C6 10       add  a,$10
163D: 77          ld   (hl),a
163E: C9          ret
163F: 3A 50 D0    ld   a,($D050)
1642: A7          and  a
1643: C0          ret  nz
1644: 06 00       ld   b,$00
1646: 3A 62 D0    ld   a,($D062)
1649: ED 47       ld   i,a
164B: E6 FC       and  $FC
164D: C0          ret  nz
164E: 21 91 D0    ld   hl,$D091
1651: 7E          ld   a,(hl)
1652: 2C          inc  l
1653: BE          cp   (hl)
1654: 28 4A       jr   z,$16A0
1656: 77          ld   (hl),a
1657: 4F          ld   c,a
1658: FE 40       cp   $40
165A: 78          ld   a,b
165B: 32 90 D0    ld   ($D090),a
165E: 2E A0       ld   l,$A0
1660: 70          ld   (hl),b
1661: 2C          inc  l
1662: 3E 10       ld   a,$10
1664: 38 02       jr   c,$1668
1666: 3E 01       ld   a,$01
1668: 77          ld   (hl),a
1669: 21 00 D1    ld   hl,$D100
166C: 09          add  hl,bc
166D: 7E          ld   a,(hl)
166E: A7          and  a
166F: 28 28       jr   z,$1699
1671: E5          push hl
1672: 6F          ld   l,a
1673: 60          ld   h,b
1674: 29          add  hl,hl
1675: 29          add  hl,hl
1676: 11 0C AE    ld   de,$AE0C
1679: 19          add  hl,de
167A: 11 4B D0    ld   de,$D04B
167D: 0E 04       ld   c,$04
167F: ED B0       ldir
1681: E1          pop  hl
1682: 2C          inc  l
1683: 1E 98       ld   e,$98
1685: 0E 04       ld   c,$04
1687: ED B0       ldir
1689: 1E A3       ld   e,$A3
168B: 0E 05       ld   c,$05
168D: ED B0       ldir
168F: 1E A8       ld   e,$A8
1691: AF          xor  a
1692: 12          ld   (de),a
1693: 1C          inc  e
1694: 0E 02       ld   c,$02
1696: ED B0       ldir
1698: C9          ret
1699: 21 00 20    ld   hl,$2000
169C: 22 91 D0    ld   ($D091),hl
169F: C9          ret
16A0: 3A A0 D0    ld   a,($D0A0)
16A3: A7          and  a
16A4: 20 0A       jr   nz,$16B0
16A6: 4E          ld   c,(hl)
16A7: 2E 90       ld   l,$90
16A9: 7E          ld   a,(hl)
16AA: A7          and  a
16AB: 28 03       jr   z,$16B0
16AD: 70          ld   (hl),b
16AE: 18 B9       jr   $1669
16B0: ED 57       ld   a,i
16B2: C0          ret  nz
16B3: 3A CC D0    ld   a,($D0CC)
16B6: A7          and  a
16B7: 28 22       jr   z,$16DB
16B9: 4F          ld   c,a
16BA: 21 93 D0    ld   hl,$D093
16BD: 7E          ld   a,(hl)
16BE: A7          and  a
16BF: 20 19       jr   nz,$16DA
16C1: 3A 69 D0    ld   a,($D069)
16C4: FE 12       cp   $12
16C6: 3E FF       ld   a,$FF
16C8: 89          adc  a,c
16C9: 87          add  a,a
16CA: 4F          ld   c,a
16CB: ED 5F       ld   a,r
16CD: E6 01       and  $01
16CF: 81          add  a,c
16D0: 4F          ld   c,a
16D1: 2C          inc  l
16D2: 7E          ld   a,(hl)
16D3: 2C          inc  l
16D4: 66          ld   h,(hl)
16D5: 6F          ld   l,a
16D6: 09          add  hl,bc
16D7: C3 76 18    jp   $1876
16DA: 35          dec  (hl)
16DB: 21 A0 D0    ld   hl,$D0A0
16DE: 7E          ld   a,(hl)
16DF: 2C          inc  l
16E0: A7          and  a
16E1: 20 63       jr   nz,$1746
16E3: 3A D1 D7    ld   a,($D7D1)
16E6: 3D          dec  a
16E7: E6 03       and  $03
16E9: 20 03       jr   nz,$16EE
16EB: 35          dec  (hl)
16EC: 28 17       jr   z,$1705
16EE: ED 4B 40 D0 ld   bc,($D040)
16F2: 78          ld   a,b
16F3: E6 FE       and  $FE
16F5: 20 14       jr   nz,$170B
16F7: 2C          inc  l
16F8: 35          dec  (hl)
16F9: C0          ret  nz
16FA: 2C          inc  l
16FB: 7E          ld   a,(hl)
16FC: 2D          dec  l
16FD: 77          ld   (hl),a
16FE: 79          ld   a,c
16FF: F6 80       or   $80
1701: 32 01 D0    ld   ($D001),a
1704: C9          ret
1705: 36 01       ld   (hl),$01
1707: 2D          dec  l
1708: 36 01       ld   (hl),$01
170A: C9          ret
170B: 3A 31 D0    ld   a,($D031)
170E: FE 04       cp   $04
1710: 38 E5       jr   c,$16F7
1712: 3A CD D0    ld   a,($D0CD)
1715: A7          and  a
1716: 2E A4       ld   l,$A4
1718: 28 13       jr   z,$172D
171A: 4F          ld   c,a
171B: 0F          rrca
171C: 7E          ld   a,(hl)
171D: 38 04       jr   c,$1723
171F: 07          rlca
1720: 07          rlca
1721: 07          rlca
1722: 07          rlca
1723: E6 F0       and  $F0
1725: 5F          ld   e,a
1726: ED 5F       ld   a,r
1728: 87          add  a,a
1729: BB          cp   e
172A: 38 D2       jr   c,$16FE
172C: C9          ret
172D: 3A CE D0    ld   a,($D0CE)
1730: A7          and  a
1731: C8          ret  z
1732: 2C          inc  l
1733: 4F          ld   c,a
1734: CD 86 18    call $1886
1737: D0          ret  nc
1738: 0D          dec  c
1739: 06 00       ld   b,$00
173B: 2A A6 D0    ld   hl,($D0A6)
173E: 09          add  hl,bc
173F: 7E          ld   a,(hl)
1740: FE FF       cp   $FF
1742: C2 76 18    jp   nz,$1876
1745: C9          ret
1746: 3A 9E D0    ld   a,($D09E)
1749: A7          and  a
174A: 28 09       jr   z,$1755
174C: 3A 40 D0    ld   a,($D040)
174F: 4F          ld   c,a
1750: CD F7 16    call $16F7
1753: 2E A1       ld   l,$A1
1755: 35          dec  (hl)
1756: C0          ret  nz
1757: 36 01       ld   (hl),$01
1759: 2E A8       ld   l,$A8
175B: 4E          ld   c,(hl)
175C: EB          ex   de,hl
175D: 2A A9 D0    ld   hl,($D0A9)
1760: 09          add  hl,bc
1761: EB          ex   de,hl
1762: 1A          ld   a,(de)
1763: D9          exx
1764: 4F          ld   c,a
1765: 0F          rrca
1766: 0F          rrca
1767: 0F          rrca
1768: 0F          rrca
1769: E6 0F       and  $0F
176B: 6F          ld   l,a
176C: 87          add  a,a
176D: 85          add  a,l
176E: C6 A6       add  a,$A6
1770: 6F          ld   l,a
1771: 26 01       ld   h,$01
1773: 79          ld   a,c
1774: E9          jp   (hl)
1775: 2E A8       ld   l,$A8
1777: 7E          ld   a,(hl)
1778: C6 02       add  a,$02
177A: 77          ld   (hl),a
177B: C9          ret
177C: D9          exx
177D: 34          inc  (hl)
177E: 87          add  a,a
177F: C8          ret  z
1780: 87          add  a,a
1781: 32 A1 D0    ld   ($D0A1),a
1784: C9          ret
1785: D9          exx
1786: 7E          ld   a,(hl)
1787: C6 02       add  a,$02
1789: 77          ld   (hl),a
178A: 2E A0       ld   l,$A0
178C: 70          ld   (hl),b
178D: EB          ex   de,hl
178E: ED 5F       ld   a,r
1790: A6          and  (hl)
1791: E6 0F       and  $0F
1793: 23          inc  hl
1794: 86          add  a,(hl)
1795: 1C          inc  e
1796: 12          ld   (de),a
1797: C9          ret
1798: D9          exx
1799: 34          inc  (hl)
179A: E6 0F       and  $0F
179C: 32 9F D0    ld   ($D09F),a
179F: C9          ret
17A0: D9          exx
17A1: 7E          ld   a,(hl)
17A2: C6 03       add  a,$03
17A4: 77          ld   (hl),a
17A5: EB          ex   de,hl
17A6: 23          inc  hl
17A7: 5E          ld   e,(hl)
17A8: 23          inc  hl
17A9: 16 D0       ld   d,$D0
17AB: ED A0       ldi
17AD: C9          ret
17AE: D9          exx
17AF: 13          inc  de
17B0: 1A          ld   a,(de)
17B1: 32 1B D0    ld   ($D01B),a
17B4: 18 C1       jr   $1777
17B6: D9          exx
17B7: 3A 1A D0    ld   a,($D01A)
17BA: A7          and  a
17BB: 20 BA       jr   nz,$1777
17BD: 18 52       jr   $1811
17BF: D9          exx
17C0: 34          inc  (hl)
17C1: 3E 01       ld   a,$01
17C3: 32 1A D0    ld   ($D01A),a
17C6: C9          ret
17C7: D9          exx
17C8: AF          xor  a
17C9: 32 91 D0    ld   ($D091),a
17CC: C9          ret
17CD: 18 3B       jr   $180A
17CF: 18 1E       jr   $17EF
17D1: 18 F4       jr   $17C7
17D3: 18 EA       jr   $17BF
17D5: 18 DF       jr   $17B6
17D7: 18 D5       jr   $17AE
17D9: 18 0C       jr   $17E7
17DB: 18 C3       jr   $17A0
17DD: 18 00       jr   $17DF
17DF: D9          exx
17E0: 3A 9E D0    ld   a,($D09E)
17E3: A7          and  a
17E4: C0          ret  nz
17E5: 34          inc  (hl)
17E6: C9          ret
17E7: D9          exx
17E8: 13          inc  de
17E9: 1A          ld   a,(de)
17EA: 32 1C D0    ld   ($D01C),a
17ED: 18 88       jr   $1777
17EF: D9          exx
17F0: 13          inc  de
17F1: 34          inc  (hl)
17F2: 34          inc  (hl)
17F3: EB          ex   de,hl
17F4: 06 01       ld   b,$01
17F6: 11 4A D0    ld   de,$D04A
17F9: 1A          ld   a,(de)
17FA: BE          cp   (hl)
17FB: D0          ret  nc
17FC: ED A0       ldi
17FE: C9          ret
17FF: E6 0F       and  $0F
1801: 87          add  a,a
1802: 4F          ld   c,a
1803: 06 00       ld   b,$00
1805: 21 CD 17    ld   hl,$17CD
1808: 09          add  hl,bc
1809: E9          jp   (hl)
180A: D9          exx
180B: 2E 9F       ld   l,$9F
180D: 35          dec  (hl)
180E: CA 75 17    jp   z,$1775
1811: 13          inc  de
1812: 1A          ld   a,(de)
1813: 32 A8 D0    ld   ($D0A8),a
1816: C9          ret
1817: D9          exx
1818: ED 5F       ld   a,r
181A: E6 0F       and  $0F
181C: 4F          ld   c,a
181D: 1A          ld   a,(de)
181E: E6 0F       and  $0F
1820: B9          cp   c
1821: 30 EE       jr   nc,$1811
1823: C3 77 17    jp   $1777
1826: D9          exx
1827: 13          inc  de
1828: EB          ex   de,hl
1829: 0E 03       ld   c,$03
182B: ED B0       ldir
182D: C9          ret
182E: D9          exx
182F: 34          inc  (hl)
1830: 34          inc  (hl)
1831: 13          inc  de
1832: FE 71       cp   $71
1834: 1A          ld   a,(de)
1835: C2 77 18    jp   nz,$1877
1838: 4F          ld   c,a
1839: 3A 40 D0    ld   a,($D040)
183C: E6 01       and  $01
183E: 47          ld   b,a
183F: 3A 01 D0    ld   a,($D001)
1842: E6 01       and  $01
1844: B8          cp   b
1845: C8          ret  z
1846: 13          inc  de
1847: 79          ld   a,c
1848: CD 77 18    call $1877
184B: 1A          ld   a,(de)
184C: 13          inc  de
184D: 34          inc  (hl)
184E: A7          and  a
184F: 20 FA       jr   nz,$184B
1851: C9          ret
1852: D9          exx
1853: 34          inc  (hl)
1854: E6 81       and  $81
1856: 32 01 D0    ld   ($D001),a
1859: 1A          ld   a,(de)
185A: FE 81       cp   $81
185C: 38 07       jr   c,$1865
185E: 28 09       jr   z,$1869
1860: E6 0E       and  $0E
1862: C3 80 17    jp   $1780
1865: 3E 63       ld   a,$63
1867: 18 0E       jr   $1877
1869: 3E 66       ld   a,$66
186B: 18 0A       jr   $1877
186D: 11 CC D0    ld   de,$D0CC
1870: 0E 03       ld   c,$03
1872: AF          xor  a
1873: C3 7B 26    jp   $267B
1876: 7E          ld   a,(hl)
1877: 32 5A D0    ld   ($D05A),a
187A: 01 01 01    ld   bc,$0101
187D: ED 43 61 D0 ld   ($D061),bc
1881: 79          ld   a,c
1882: 32 51 D0    ld   ($D051),a
1885: C9          ret
1886: ED 5F       ld   a,r
1888: 87          add  a,a
1889: BE          cp   (hl)
188A: C9          ret
188B: 21 30 D0    ld   hl,$D030
188E: 7E          ld   a,(hl)
188F: A7          and  a
1890: CA C6 18    jp   z,$18C6
1893: 06 00       ld   b,$00
1895: 70          ld   (hl),b
1896: 2C          inc  l
1897: 70          ld   (hl),b
1898: 2C          inc  l
1899: 36 02       ld   (hl),$02
189B: 07          rlca
189C: 07          rlca
189D: 4F          ld   c,a
189E: EB          ex   de,hl
189F: 21 E7 8A    ld   hl,$8AE7
18A2: 09          add  hl,bc
18A3: 09          add  hl,bc
18A4: 7E          ld   a,(hl)
18A5: 23          inc  hl
18A6: FE FF       cp   $FF
18A8: 28 07       jr   z,$18B1
18AA: 1E 3D       ld   e,$3D
18AC: 12          ld   (de),a
18AD: 1D          dec  e
18AE: 3E 01       ld   a,$01
18B0: 12          ld   (de),a
18B1: 1E 44       ld   e,$44
18B3: 0E 03       ld   c,$03
18B5: ED B0       ldir
18B7: 0E 02       ld   c,$02
18B9: 1E 33       ld   e,$33
18BB: ED B0       ldir
18BD: 11 F8 DF    ld   de,$DFF8
18C0: ED A0       ldi
18C2: 1C          inc  e
18C3: ED A0       ldi
18C5: C9          ret
18C6: 21 32 D0    ld   hl,$D032
18C9: 35          dec  (hl)
18CA: C0          ret  nz
18CB: 36 01       ld   (hl),$01
18CD: 2D          dec  l
18CE: 4E          ld   c,(hl)
18CF: EB          ex   de,hl
18D0: 2A 33 D0    ld   hl,($D033)
18D3: 06 00       ld   b,$00
18D5: 09          add  hl,bc
18D6: EB          ex   de,hl
18D7: 1A          ld   a,(de)
18D8: D9          exx
18D9: 4F          ld   c,a
18DA: 07          rlca
18DB: 07          rlca
18DC: 07          rlca
18DD: E6 07       and  $07
18DF: 6F          ld   l,a
18E0: 87          add  a,a
18E1: 85          add  a,l
18E2: C6 2D       add  a,$2D
18E4: 6F          ld   l,a
18E5: 26 01       ld   h,$01
18E7: 79          ld   a,c
18E8: E9          jp   (hl)
18E9: 34          inc  (hl)
18EA: 34          inc  (hl)
18EB: 34          inc  (hl)
18EC: 13          inc  de
18ED: 1A          ld   a,(de)
18EE: A7          and  a
18EF: C0          ret  nz
18F0: 34          inc  (hl)
18F1: 13          inc  de
18F2: 18 E3       jr   $18D7
18F4: D9          exx
18F5: 2C          inc  l
18F6: 77          ld   (hl),a
18F7: 2E 3C       ld   l,$3C
18F9: 36 01       ld   (hl),$01
18FB: 2C          inc  l
18FC: 13          inc  de
18FD: 1A          ld   a,(de)
18FE: 77          ld   (hl),a
18FF: 2E 31       ld   l,$31
1901: 18 E7       jr   $18EA
1903: D9          exx
1904: 2E 43       ld   l,$43
1906: 7E          ld   a,(hl)
1907: A7          and  a
1908: 28 14       jr   z,$191E
190A: 70          ld   (hl),b
190B: 2E 31       ld   l,$31
190D: FE 03       cp   $03
190F: 20 05       jr   nz,$1916
1911: 86          add  a,(hl)
1912: 77          ld   (hl),a
1913: 4F          ld   c,a
1914: 18 B9       jr   $18CF
1916: EB          ex   de,hl
1917: 4F          ld   c,a
1918: 09          add  hl,bc
1919: 7E          ld   a,(hl)
191A: 12          ld   (de),a
191B: 4F          ld   c,a
191C: 18 B2       jr   $18D0
191E: 1A          ld   a,(de)
191F: C6 60       add  a,$60
1921: 77          ld   (hl),a
1922: C9          ret
1923: D9          exx
1924: 2C          inc  l
1925: E6 1F       and  $1F
1927: 77          ld   (hl),a
1928: 13          inc  de
1929: 1A          ld   a,(de)
192A: 32 F8 DF    ld   ($DFF8),a
192D: 13          inc  de
192E: 1A          ld   a,(de)
192F: 32 FA DF    ld   ($DFFA),a
1932: 2D          dec  l
1933: 18 B4       jr   $18E9
1935: D9          exx
1936: 34          inc  (hl)
1937: 2C          inc  l
1938: E6 1F       and  $1F
193A: 77          ld   (hl),a
193B: C9          ret
193C: D9          exx
193D: 3D          dec  a
193E: F2 55 19    jp   p,$1955
1941: 3D          dec  a
1942: F2 51 19    jp   p,$1951
1945: 34          inc  (hl)
1946: 3A 61 D0    ld   a,($D061)
1949: 3C          inc  a
194A: C2 CE 18    jp   nz,$18CE
194D: 2C          inc  l
194E: 36 08       ld   (hl),$08
1950: C9          ret
1951: 13          inc  de
1952: 1A          ld   a,(de)
1953: 77          ld   (hl),a
1954: C9          ret
1955: 2E 44       ld   l,$44
1957: 13          inc  de
1958: 1A          ld   a,(de)
1959: 77          ld   (hl),a
195A: 13          inc  de
195B: 2C          inc  l
195C: 1A          ld   a,(de)
195D: 77          ld   (hl),a
195E: 2E 31       ld   l,$31
1960: C3 E9 18    jp   $18E9
1963: 2C          inc  l
1964: 77          ld   (hl),a
1965: 13          inc  de
1966: 1A          ld   a,(de)
1967: 32 FA DF    ld   ($DFFA),a
196A: 2D          dec  l
196B: C3 EA 18    jp   $18EA
196E: D9          exx
196F: E6 1F       and  $1F
1971: 20 F0       jr   nz,$1963
1973: 2E 46       ld   l,$46
1975: 13          inc  de
1976: 1A          ld   a,(de)
1977: 77          ld   (hl),a
1978: 2E 31       ld   l,$31
197A: C3 EA 18    jp   $18EA
197D: D9          exx
197E: E6 0F       and  $0F
1980: C6 CC       add  a,$CC
1982: 6F          ld   l,a
1983: 13          inc  de
1984: 1A          ld   a,(de)
1985: 77          ld   (hl),a
1986: 2E 31       ld   l,$31
1988: C3 EA 18    jp   $18EA
198B: D9          exx
198C: 13          inc  de
198D: 3A 1B D0    ld   a,($D01B)
1990: A7          and  a
1991: CA EA 18    jp   z,$18EA
1994: 1A          ld   a,(de)
1995: 77          ld   (hl),a
1996: C3 CE 18    jp   $18CE
1999: D9          exx
199A: 0E F0       ld   c,$F0
199C: 18 03       jr   $19A1
199E: D9          exx
199F: 0E 0F       ld   c,$0F
19A1: 34          inc  (hl)
19A2: 34          inc  (hl)
19A3: 13          inc  de
19A4: 3A C8 D7    ld   a,($D7C8)
19A7: A1          and  c
19A8: 47          ld   b,a
19A9: 1A          ld   a,(de)
19AA: B0          or   b
19AB: 32 C8 D7    ld   ($D7C8),a
19AE: C3 CE 18    jp   $18CE
19B1: D9          exx
19B2: 3E FC       ld   a,$FC
19B4: 32 61 D0    ld   ($D061),a
19B7: C3 EB 18    jp   $18EB
19BA: D9          exx
19BB: 7E          ld   a,(hl)
19BC: C6 06       add  a,$06
19BE: 77          ld   (hl),a
19BF: 4F          ld   c,a
19C0: 13          inc  de
19C1: EB          ex   de,hl
19C2: ED 5F       ld   a,r
19C4: 87          add  a,a
19C5: BE          cp   (hl)
19C6: D2 D0 18    jp   nc,$18D0
19C9: 23          inc  hl
19CA: DD 21 C1 D7 ld   ix,$D7C1
19CE: 18 0B       jr   $19DB
19D0: D9          exx
19D1: 7E          ld   a,(hl)
19D2: C6 05       add  a,$05
19D4: 77          ld   (hl),a
19D5: 13          inc  de
19D6: EB          ex   de,hl
19D7: DD 21 C3 D7 ld   ix,$D7C3
19DB: ED 5F       ld   a,r
19DD: E6 03       and  $03
19DF: 4F          ld   c,a
19E0: 09          add  hl,bc
19E1: 7E          ld   a,(hl)
19E2: CD 2C 12    call $122C
19E5: EB          ex   de,hl
19E6: C3 CE 18    jp   $18CE
19E9: D9          exx
19EA: 34          inc  (hl)
19EB: 2E 78       ld   l,$78
19ED: 36 01       ld   (hl),$01
19EF: 2E 62       ld   l,$62
19F1: CB C6       set  0,(hl)
19F3: C9          ret
19F4: D9          exx
19F5: 70          ld   (hl),b
19F6: 2E 33       ld   l,$33
19F8: 13          inc  de
19F9: EB          ex   de,hl
19FA: ED A0       ldi
19FC: ED A0       ldi
19FE: C9          ret
19FF: D9          exx
1A00: 34          inc  (hl)
1A01: 3A 74 D0    ld   a,($D074)
1A04: A7          and  a
1A05: C0          ret  nz
1A06: 2E 42       ld   l,$42
1A08: CB 86       res  0,(hl)
1A0A: C9          ret
1A0B: D9          exx
1A0C: 3A 61 D0    ld   a,($D061)
1A0F: FE FD       cp   $FD
1A11: 28 07       jr   z,$1A1A
1A13: 7E          ld   a,(hl)
1A14: C6 03       add  a,$03
1A16: 77          ld   (hl),a
1A17: C3 CE 18    jp   $18CE
1A1A: 36 00       ld   (hl),$00
1A1C: 2E 74       ld   l,$74
1A1E: 36 01       ld   (hl),$01
1A20: EB          ex   de,hl
1A21: 23          inc  hl
1A22: 5E          ld   e,(hl)
1A23: 23          inc  hl
1A24: 56          ld   d,(hl)
1A25: ED 53 33 D0 ld   ($D033),de
1A29: C9          ret
1A2A: D9          exx
1A2B: 2E 40       ld   l,$40
1A2D: 7E          ld   a,(hl)
1A2E: E6 01       and  $01
1A30: 2C          inc  l
1A31: 77          ld   (hl),a
1A32: 2C          inc  l
1A33: CB C6       set  0,(hl)
1A35: 3C          inc  a
1A36: 32 30 D0    ld   ($D030),a
1A39: C9          ret
1A3A: D9          exx
1A3B: 34          inc  (hl)
1A3C: 2E 42       ld   l,$42
1A3E: CB 86       res  0,(hl)
1A40: C9          ret
1A41: D9          exx
1A42: 2E 42       ld   l,$42
1A44: CB 86       res  0,(hl)
1A46: C9          ret
1A47: D9          exx
1A48: 2E 42       ld   l,$42
1A4A: 7E          ld   a,(hl)
1A4B: E6 FE       and  $FE
1A4D: F6 04       or   $04
1A4F: 77          ld   (hl),a
1A50: C9          ret
1A51: D9          exx
1A52: 2E 40       ld   l,$40
1A54: 7E          ld   a,(hl)
1A55: 2C          inc  l
1A56: 4E          ld   c,(hl)
1A57: 77          ld   (hl),a
1A58: 2C          inc  l
1A59: CB C6       set  0,(hl)
1A5B: 87          add  a,a
1A5C: 81          add  a,c
1A5D: D6 07       sub  $07
1A5F: 32 30 D0    ld   ($D030),a
1A62: C9          ret
1A63: 3A 61 D0    ld   a,($D061)
1A66: A7          and  a
1A67: 28 54       jr   z,$1ABD
1A69: 21 51 D0    ld   hl,$D051
1A6C: 7E          ld   a,(hl)
1A6D: A7          and  a
1A6E: CA 39 1B    jp   z,$1B39
1A71: 06 00       ld   b,$00
1A73: 70          ld   (hl),b
1A74: 2C          inc  l
1A75: 70          ld   (hl),b
1A76: 2C          inc  l
1A77: 36 02       ld   (hl),$02
1A79: 2A 58 D0    ld   hl,($D058)
1A7C: 3A 5A D0    ld   a,($D05A)
1A7F: 4F          ld   c,a
1A80: 09          add  hl,bc
1A81: 5E          ld   e,(hl)
1A82: 23          inc  hl
1A83: 56          ld   d,(hl)
1A84: 23          inc  hl
1A85: ED 53 54 D0 ld   ($D054),de
1A89: 7E          ld   a,(hl)
1A8A: 87          add  a,a
1A8B: 4F          ld   c,a
1A8C: 87          add  a,a
1A8D: 81          add  a,c
1A8E: 4F          ld   c,a
1A8F: 21 BA 95    ld   hl,$95BA
1A92: 09          add  hl,bc
1A93: 11 5C D0    ld   de,$D05C
1A96: 7E          ld   a,(hl)
1A97: 12          ld   (de),a
1A98: 23          inc  hl
1A99: 4E          ld   c,(hl)
1A9A: AF          xor  a
1A9B: CB 21       sla  c
1A9D: CE 01       adc  a,$01
1A9F: 1D          dec  e
1AA0: 12          ld   (de),a
1AA1: 79          ld   a,c
1AA2: 1F          rra
1AA3: 23          inc  hl
1AA4: 1E 64       ld   e,$64
1AA6: 0E 02       ld   c,$02
1AA8: ED B0       ldir
1AAA: 0E 02       ld   c,$02
1AAC: 11 F2 DF    ld   de,$DFF2
1AAF: ED B0       ldir
1AB1: 12          ld   (de),a
1AB2: AF          xor  a
1AB3: 32 66 D0    ld   ($D066),a
1AB6: 32 80 D0    ld   ($D080),a
1AB9: 32 36 D0    ld   ($D036),a
1ABC: C9          ret
1ABD: 21 51 D0    ld   hl,$D051
1AC0: 7E          ld   a,(hl)
1AC1: A7          and  a
1AC2: 20 11       jr   nz,$1AD5
1AC4: 2D          dec  l
1AC5: 7E          ld   a,(hl)
1AC6: A7          and  a
1AC7: CA 39 1B    jp   z,$1B39
1ACA: 35          dec  (hl)
1ACB: C0          ret  nz
1ACC: AF          xor  a
1ACD: 32 19 D0    ld   ($D019),a
1AD0: 2E 62       ld   l,$62
1AD2: CB 86       res  0,(hl)
1AD4: C9          ret
1AD5: 06 00       ld   b,$00
1AD7: 87          add  a,a
1AD8: 4F          ld   c,a
1AD9: 87          add  a,a
1ADA: 81          add  a,c
1ADB: 4F          ld   c,a
1ADC: 2D          dec  l
1ADD: 36 02       ld   (hl),$02
1ADF: 2D          dec  l
1AE0: 7E          ld   a,(hl)
1AE1: 36 00       ld   (hl),$00
1AE3: A7          and  a
1AE4: 28 05       jr   z,$1AEB
1AE6: 2D          dec  l
1AE7: 7E          ld   a,(hl)
1AE8: 32 50 D0    ld   ($D050),a
1AEB: 08          ex   af,af'
1AEC: 2E 51       ld   l,$51
1AEE: 70          ld   (hl),b
1AEF: 2C          inc  l
1AF0: 70          ld   (hl),b
1AF1: 2C          inc  l
1AF2: 36 02       ld   (hl),$02
1AF4: 21 BA 95    ld   hl,$95BA
1AF7: 09          add  hl,bc
1AF8: 3A 01 D0    ld   a,($D001)
1AFB: E6 01       and  $01
1AFD: 11 00 77    ld   de,$7700
1B00: 20 08       jr   nz,$1B0A
1B02: 11 77 00    ld   de,$0077
1B05: 08          ex   af,af'
1B06: 28 02       jr   z,$1B0A
1B08: 3E 04       ld   a,$04
1B0A: 32 5C D0    ld   ($D05C),a
1B0D: 23          inc  hl
1B0E: 4E          ld   c,(hl)
1B0F: AF          xor  a
1B10: CB 21       sla  c
1B12: CE 01       adc  a,$01
1B14: 32 5B D0    ld   ($D05B),a
1B17: 79          ld   a,c
1B18: 1F          rra
1B19: ED 53 64 D0 ld   ($D064),de
1B1D: 23          inc  hl
1B1E: 23          inc  hl
1B1F: 23          inc  hl
1B20: 11 F2 DF    ld   de,$DFF2
1B23: ED A0       ldi
1B25: ED A0       ldi
1B27: 12          ld   (de),a
1B28: AF          xor  a
1B29: 32 66 D0    ld   ($D066),a
1B2C: 2A 56 D0    ld   hl,($D056)
1B2F: 22 54 D0    ld   ($D054),hl
1B32: 32 83 D0    ld   ($D083),a
1B35: 32 36 D0    ld   ($D036),a
1B38: C9          ret
1B39: 21 53 D0    ld   hl,$D053
1B3C: 35          dec  (hl)
1B3D: C0          ret  nz
1B3E: 36 01       ld   (hl),$01
1B40: 2D          dec  l
1B41: 4E          ld   c,(hl)
1B42: EB          ex   de,hl
1B43: 2A 54 D0    ld   hl,($D054)
1B46: 06 00       ld   b,$00
1B48: 09          add  hl,bc
1B49: EB          ex   de,hl
1B4A: 1A          ld   a,(de)
1B4B: D9          exx
1B4C: 4F          ld   c,a
1B4D: 0F          rrca
1B4E: 0F          rrca
1B4F: 0F          rrca
1B50: 0F          rrca
1B51: E6 0F       and  $0F
1B53: 6F          ld   l,a
1B54: 87          add  a,a
1B55: 85          add  a,l
1B56: C6 CE       add  a,$CE
1B58: 6F          ld   l,a
1B59: 26 02       ld   h,$02
1B5B: 79          ld   a,c
1B5C: E9          jp   (hl)
1B5D: 34          inc  (hl)
1B5E: 34          inc  (hl)
1B5F: 34          inc  (hl)
1B60: 34          inc  (hl)
1B61: 34          inc  (hl)
1B62: 13          inc  de
1B63: 1A          ld   a,(de)
1B64: A7          and  a
1B65: C0          ret  nz
1B66: 47          ld   b,a
1B67: 34          inc  (hl)
1B68: 13          inc  de
1B69: 18 DF       jr   $1B4A
1B6B: D9          exx
1B6C: 2C          inc  l
1B6D: 77          ld   (hl),a
1B6E: 2E 5B       ld   l,$5B
1B70: 36 01       ld   (hl),$01
1B72: 2C          inc  l
1B73: 13          inc  de
1B74: 1A          ld   a,(de)
1B75: 77          ld   (hl),a
1B76: 2E 52       ld   l,$52
1B78: 18 E6       jr   $1B60
1B7A: D9          exx
1B7B: 2C          inc  l
1B7C: E6 0F       and  $0F
1B7E: 77          ld   (hl),a
1B7F: 2E 5B       ld   l,$5B
1B81: 36 02       ld   (hl),$02
1B83: 18 ED       jr   $1B72
1B85: D9          exx
1B86: D6 22       sub  $22
1B88: 30 1F       jr   nc,$1BA9
1B8A: 2E 63       ld   l,$63
1B8C: 7E          ld   a,(hl)
1B8D: A7          and  a
1B8E: 28 14       jr   z,$1BA4
1B90: 70          ld   (hl),b
1B91: 2E 52       ld   l,$52
1B93: FE 03       cp   $03
1B95: 20 05       jr   nz,$1B9C
1B97: 86          add  a,(hl)
1B98: 77          ld   (hl),a
1B99: 4F          ld   c,a
1B9A: 18 A6       jr   $1B42
1B9C: EB          ex   de,hl
1B9D: 4F          ld   c,a
1B9E: 09          add  hl,bc
1B9F: 7E          ld   a,(hl)
1BA0: 12          ld   (de),a
1BA1: 4F          ld   c,a
1BA2: 18 9F       jr   $1B43
1BA4: 1A          ld   a,(de)
1BA5: C6 60       add  a,$60
1BA7: 77          ld   (hl),a
1BA8: C9          ret
1BA9: CA 2E 1C    jp   z,$1C2E
1BAC: 34          inc  (hl)
1BAD: 21 E1 1B    ld   hl,$1BE1
1BB0: 87          add  a,a
1BB1: 4F          ld   c,a
1BB2: 09          add  hl,bc
1BB3: E9          jp   (hl)
1BB4: EB          ex   de,hl
1BB5: 23          inc  hl
1BB6: 5E          ld   e,(hl)
1BB7: 16 D0       ld   d,$D0
1BB9: 1A          ld   a,(de)
1BBA: A7          and  a
1BBB: 20 0D       jr   nz,$1BCA
1BBD: AF          xor  a
1BBE: 32 52 D0    ld   ($D052),a
1BC1: 23          inc  hl
1BC2: 7E          ld   a,(hl)
1BC3: 23          inc  hl
1BC4: 66          ld   h,(hl)
1BC5: 6F          ld   l,a
1BC6: 22 54 D0    ld   ($D054),hl
1BC9: C9          ret
1BCA: 06 03       ld   b,$03
1BCC: 3A 52 D0    ld   a,($D052)
1BCF: 80          add  a,b
1BD0: 32 52 D0    ld   ($D052),a
1BD3: C9          ret
1BD4: 13          inc  de
1BD5: EB          ex   de,hl
1BD6: 06 01       ld   b,$01
1BD8: 11 4A D0    ld   de,$D04A
1BDB: 1A          ld   a,(de)
1BDC: BE          cp   (hl)
1BDD: 30 ED       jr   nc,$1BCC
1BDF: ED A0       ldi
1BE1: 18 E9       jr   $1BCC
1BE3: 18 FE       jr   $1BE3
1BE5: 18 16       jr   $1BFD
1BE7: 18 19       jr   $1C02
1BE9: 18 1D       jr   $1C08
1BEB: 18 25       jr   $1C12
1BED: 18 23       jr   $1C12
1BEF: 18 27       jr   $1C18
1BF1: 18 2A       jr   $1C1D
1BF3: 18 2E       jr   $1C23
1BF5: 18 31       jr   $1C28
1BF7: 18 2F       jr   $1C28
1BF9: 18 B9       jr   $1BB4
1BFB: 18 D7       jr   $1BD4
1BFD: AF          xor  a
1BFE: 32 80 D0    ld   ($D080),a
1C01: C9          ret
1C02: 3E 01       ld   a,$01
1C04: 32 80 D0    ld   ($D080),a
1C07: C9          ret
1C08: 21 81 D0    ld   hl,$D081
1C0B: 13          inc  de
1C0C: 1A          ld   a,(de)
1C0D: 77          ld   (hl),a
1C0E: 2E 52       ld   l,$52
1C10: 34          inc  (hl)
1C11: C9          ret
1C12: D6 0B       sub  $0B
1C14: 32 82 D0    ld   ($D082),a
1C17: C9          ret
1C18: AF          xor  a
1C19: 32 83 D0    ld   ($D083),a
1C1C: C9          ret
1C1D: 3E 01       ld   a,$01
1C1F: 32 83 D0    ld   ($D083),a
1C22: C9          ret
1C23: 21 84 D0    ld   hl,$D084
1C26: 18 E3       jr   $1C0B
1C28: D6 15       sub  $15
1C2A: 32 85 D0    ld   ($D085),a
1C2D: C9          ret
1C2E: 34          inc  (hl)
1C2F: 3A 4D D0    ld   a,($D04D)
1C32: 2C          inc  l
1C33: 77          ld   (hl),a
1C34: C9          ret
1C35: D9          exx
1C36: 2E 01       ld   l,$01
1C38: 4E          ld   c,(hl)
1C39: CB BE       res  7,(hl)
1C3B: E6 0F       and  $0F
1C3D: 1F          rra
1C3E: 30 23       jr   nc,$1C63
1C40: E6 02       and  $02
1C42: CB 09       rrc  c
1C44: CE 00       adc  a,$00
1C46: 67          ld   h,a
1C47: 1A          ld   a,(de)
1C48: 0F          rrca
1C49: E6 01       and  $01
1C4B: 3C          inc  a
1C4C: 6F          ld   l,a
1C4D: 22 5B D0    ld   ($D05B),hl
1C50: 21 77 00    ld   hl,$0077
1C53: CB 01       rlc  c
1C55: 30 03       jr   nc,$1C5A
1C57: 21 00 77    ld   hl,$7700
1C5A: 22 64 D0    ld   ($D064),hl
1C5D: 21 52 D0    ld   hl,$D052
1C60: C3 61 1B    jp   $1B61
1C63: E6 02       and  $02
1C65: CB 79       bit  7,c
1C67: 20 D9       jr   nz,$1C42
1C69: 2E 52       ld   l,$52
1C6B: C3 61 1B    jp   $1B61
1C6E: D9          exx
1C6F: 2C          inc  l
1C70: E6 0F       and  $0F
1C72: 77          ld   (hl),a
1C73: 13          inc  de
1C74: 1A          ld   a,(de)
1C75: 32 F2 DF    ld   ($DFF2),a
1C78: 13          inc  de
1C79: 1A          ld   a,(de)
1C7A: 32 F4 DF    ld   ($DFF4),a
1C7D: 2D          dec  l
1C7E: C3 5F 1B    jp   $1B5F
1C81: D9          exx
1C82: E6 07       and  $07
1C84: 13          inc  de
1C85: 21 F0 DF    ld   hl,$DFF0
1C88: EB          ex   de,hl
1C89: ED A0       ldi
1C8B: 12          ld   (de),a
1C8C: 1C          inc  e
1C8D: ED A0       ldi
1C8F: 7E          ld   a,(hl)
1C90: CD 9E 26    call $269E
1C93: 08          ex   af,af'
1C94: 12          ld   (de),a
1C95: 1C          inc  e
1C96: 23          inc  hl
1C97: ED A0       ldi
1C99: 08          ex   af,af'
1C9A: 12          ld   (de),a
1C9B: 2B          dec  hl
1C9C: EB          ex   de,hl
1C9D: 21 52 D0    ld   hl,$D052
1CA0: 06 00       ld   b,$00
1CA2: C3 5D 1B    jp   $1B5D
1CA5: D9          exx
1CA6: 34          inc  (hl)
1CA7: 2C          inc  l
1CA8: E6 0F       and  $0F
1CAA: 77          ld   (hl),a
1CAB: C9          ret
1CAC: DD 21 63 1B ld   ix,$1B63
1CB0: D9          exx
1CB1: E6 0F       and  $0F
1CB3: 4F          ld   c,a
1CB4: 7E          ld   a,(hl)
1CB5: 81          add  a,c
1CB6: C6 02       add  a,$02
1CB8: 77          ld   (hl),a
1CB9: 7D          ld   a,l
1CBA: 13          inc  de
1CBB: EB          ex   de,hl
1CBC: 5E          ld   e,(hl)
1CBD: 16 D0       ld   d,$D0
1CBF: 23          inc  hl
1CC0: ED B0       ldir
1CC2: EB          ex   de,hl
1CC3: 6F          ld   l,a
1CC4: DD E9       jp   (ix)
1CC6: E6 0F       and  $0F
1CC8: 87          add  a,a
1CC9: 4F          ld   c,a
1CCA: 06 00       ld   b,$00
1CCC: 21 12 1D    ld   hl,$1D12
1CCF: 09          add  hl,bc
1CD0: E9          jp   (hl)
1CD1: D9          exx
1CD2: 34          inc  (hl)
1CD3: 34          inc  (hl)
1CD4: 13          inc  de
1CD5: 1A          ld   a,(de)
1CD6: 32 FA DF    ld   ($DFFA),a
1CD9: C9          ret
1CDA: D9          exx
1CDB: 3A 61 D0    ld   a,($D061)
1CDE: FE FC       cp   $FC
1CE0: C2 CA 1B    jp   nz,$1BCA
1CE3: EB          ex   de,hl
1CE4: C3 BD 1B    jp   $1BBD
1CE7: D9          exx
1CE8: 34          inc  (hl)
1CE9: 3A 41 D0    ld   a,($D041)
1CEC: 3C          inc  a
1CED: C2 41 1B    jp   nz,$1B41
1CF0: 2C          inc  l
1CF1: 36 0E       ld   (hl),$0E
1CF3: C9          ret
1CF4: D9          exx
1CF5: 7E          ld   a,(hl)
1CF6: C6 03       add  a,$03
1CF8: 36 00       ld   (hl),$00
1CFA: 67          ld   h,a
1CFB: 2E 01       ld   l,$01
1CFD: 22 36 D0    ld   ($D036),hl
1D00: 2A 54 D0    ld   hl,($D054)
1D03: 22 38 D0    ld   ($D038),hl
1D06: 13          inc  de
1D07: EB          ex   de,hl
1D08: 5E          ld   e,(hl)
1D09: 23          inc  hl
1D0A: 56          ld   d,(hl)
1D0B: ED 53 54 D0 ld   ($D054),de
1D0F: C3 39 1B    jp   $1B39
1D12: 18 46       jr   $1D5A
1D14: 18 DE       jr   $1CF4
1D16: 18 CF       jr   $1CE7
1D18: 18 2E       jr   $1D48
1D1A: 18 06       jr   $1D22
1D1C: 18 BC       jr   $1CDA
1D1E: 18 49       jr   $1D69
1D20: 18 AF       jr   $1CD1
1D22: ED 4B 44 D0 ld   bc,($D044)
1D26: 78          ld   a,b
1D27: B1          or   c
1D28: D9          exx
1D29: 20 05       jr   nz,$1D30
1D2B: 7E          ld   a,(hl)
1D2C: C6 04       add  a,$04
1D2E: 77          ld   (hl),a
1D2F: C9          ret
1D30: 3A 41 D0    ld   a,($D041)
1D33: FE 0A       cp   $0A
1D35: 28 04       jr   z,$1D3B
1D37: FE 0B       cp   $0B
1D39: 20 F0       jr   nz,$1D2B
1D3B: 01 88 88    ld   bc,$8888
1D3E: ED 43 44 D0 ld   ($D044),bc
1D42: 13          inc  de
1D43: 1A          ld   a,(de)
1D44: 47          ld   b,a
1D45: C3 C0 1D    jp   $1DC0
1D48: D9          exx
1D49: 11 36 D0    ld   de,$D036
1D4C: EB          ex   de,hl
1D4D: 36 00       ld   (hl),$00
1D4F: 2C          inc  l
1D50: ED A0       ldi
1D52: 1C          inc  e
1D53: ED A0       ldi
1D55: ED A0       ldi
1D57: C3 39 1B    jp   $1B39
1D5A: D9          exx
1D5B: 2E 64       ld   l,$64
1D5D: 13          inc  de
1D5E: 1A          ld   a,(de)
1D5F: 77          ld   (hl),a
1D60: 13          inc  de
1D61: 2C          inc  l
1D62: 1A          ld   a,(de)
1D63: 77          ld   (hl),a
1D64: 2E 52       ld   l,$52
1D66: C3 5F 1B    jp   $1B5F
1D69: CD 73 29    call $2973
1D6C: 28 86       jr   z,$1CF4
1D6E: C3 CA 1B    jp   $1BCA
1D71: D9          exx
1D72: 13          inc  de
1D73: D6 A0       sub  $A0
1D75: 20 07       jr   nz,$1D7E
1D77: 1A          ld   a,(de)
1D78: 32 66 D0    ld   ($D066),a
1D7B: C3 60 1B    jp   $1B60
1D7E: 08          ex   af,af'
1D7F: ED 5F       ld   a,r
1D81: E6 0F       and  $0F
1D83: 4F          ld   c,a
1D84: 08          ex   af,af'
1D85: B9          cp   c
1D86: 30 03       jr   nc,$1D8B
1D88: 34          inc  (hl)
1D89: 34          inc  (hl)
1D8A: C9          ret
1D8B: 1A          ld   a,(de)
1D8C: 77          ld   (hl),a
1D8D: C9          ret
1D8E: D9          exx
1D8F: 2C          inc  l
1D90: E6 0F       and  $0F
1D92: 77          ld   (hl),a
1D93: 13          inc  de
1D94: 1A          ld   a,(de)
1D95: 32 F4 DF    ld   ($DFF4),a
1D98: 2D          dec  l
1D99: C3 60 1B    jp   $1B60
1D9C: D9          exx
1D9D: 0E F0       ld   c,$F0
1D9F: 18 03       jr   $1DA4
1DA1: D9          exx
1DA2: 0E 0F       ld   c,$0F
1DA4: 34          inc  (hl)
1DA5: 34          inc  (hl)
1DA6: 13          inc  de
1DA7: 3A C8 D7    ld   a,($D7C8)
1DAA: A1          and  c
1DAB: 47          ld   b,a
1DAC: 1A          ld   a,(de)
1DAD: B0          or   b
1DAE: 32 C8 D7    ld   ($D7C8),a
1DB1: C3 41 1B    jp   $1B41
1DB4: D9          exx
1DB5: 34          inc  (hl)
1DB6: 2E 74       ld   l,$74
1DB8: 36 01       ld   (hl),$01
1DBA: 2E 42       ld   l,$42
1DBC: CB C6       set  0,(hl)
1DBE: C9          ret
1DBF: D9          exx
1DC0: 70          ld   (hl),b
1DC1: 13          inc  de
1DC2: 2E 54       ld   l,$54
1DC4: EB          ex   de,hl
1DC5: ED A0       ldi
1DC7: ED A0       ldi
1DC9: C9          ret
1DCA: D9          exx
1DCB: 34          inc  (hl)
1DCC: 3A 78 D0    ld   a,($D078)
1DCF: A7          and  a
1DD0: C0          ret  nz
1DD1: 2E 62       ld   l,$62
1DD3: CB 86       res  0,(hl)
1DD5: C9          ret
1DD6: D9          exx
1DD7: 3A 41 D0    ld   a,($D041)
1DDA: FE FD       cp   $FD
1DDC: 28 07       jr   z,$1DE5
1DDE: 7E          ld   a,(hl)
1DDF: C6 03       add  a,$03
1DE1: 77          ld   (hl),a
1DE2: C3 41 1B    jp   $1B41
1DE5: 36 00       ld   (hl),$00
1DE7: 2E 78       ld   l,$78
1DE9: 36 01       ld   (hl),$01
1DEB: EB          ex   de,hl
1DEC: 23          inc  hl
1DED: 5E          ld   e,(hl)
1DEE: 23          inc  hl
1DEF: 56          ld   d,(hl)
1DF0: ED 53 54 D0 ld   ($D054),de
1DF4: C9          ret
1DF5: D9          exx
1DF6: 2E 61       ld   l,$61
1DF8: 70          ld   (hl),b
1DF9: 2E 51       ld   l,$51
1DFB: 36 01       ld   (hl),$01
1DFD: C9          ret
1DFE: D9          exx
1DFF: 7E          ld   a,(hl)
1E00: C6 07       add  a,$07
1E02: 77          ld   (hl),a
1E03: 2A 4A D0    ld   hl,($D04A)
1E06: 3A 4C D0    ld   a,($D04C)
1E09: 2D          dec  l
1E0A: FA 16 1E    jp   m,$1E16
1E0D: 94          sub  h
1E0E: 38 04       jr   c,$1E14
1E10: FE 04       cp   $04
1E12: 30 F5       jr   nc,$1E09
1E14: 3E 03       ld   a,$03
1E16: 32 53 D0    ld   ($D053),a
1E19: 3A 0A D0    ld   a,($D00A)
1E1C: A7          and  a
1E1D: C0          ret  nz
1E1E: EB          ex   de,hl
1E1F: 23          inc  hl
1E20: 3A 04 D0    ld   a,($D004)
1E23: 5F          ld   e,a
1E24: 16 00       ld   d,$00
1E26: 19          add  hl,de
1E27: 5E          ld   e,(hl)
1E28: 21 7A 96    ld   hl,$967A
1E2B: 19          add  hl,de
1E2C: 46          ld   b,(hl)
1E2D: 23          inc  hl
1E2E: 7E          ld   a,(hl)
1E2F: 23          inc  hl
1E30: 66          ld   h,(hl)
1E31: 6F          ld   l,a
1E32: 5E          ld   e,(hl)
1E33: 23          inc  hl
1E34: 56          ld   d,(hl)
1E35: 23          inc  hl
1E36: 1A          ld   a,(de)
1E37: EE 01       xor  $01
1E39: 12          ld   (de),a
1E3A: 10 F6       djnz $1E32
1E3C: C9          ret
1E3D: D9          exx
1E3E: 2E 62       ld   l,$62
1E40: CB 86       res  0,(hl)
1E42: C9          ret
1E43: D9          exx
1E44: 7E          ld   a,(hl)
1E45: C6 02       add  a,$02
1E47: 77          ld   (hl),a
1E48: 4F          ld   c,a
1E49: EB          ex   de,hl
1E4A: 23          inc  hl
1E4B: DD 21 C1 D7 ld   ix,$D7C1
1E4F: 7E          ld   a,(hl)
1E50: CD 2C 12    call $122C
1E53: C3 43 1B    jp   $1B43
1E56: D9          exx
1E57: 7E          ld   a,(hl)
1E58: C6 07       add  a,$07
1E5A: 77          ld   (hl),a
1E5B: 18 B7       jr   $1E14
1E5D: 21 00 00    ld   hl,$0000
1E60: 22 43 D0    ld   ($D043),hl
1E63: 22 45 D0    ld   ($D045),hl
1E66: 22 64 D0    ld   ($D064),hl
1E69: 3E CE       ld   a,$CE
1E6B: 32 66 D0    ld   ($D066),a
1E6E: 21 22 D0    ld   hl,$D022
1E71: 18 03       jr   $1E76
1E73: 21 24 D0    ld   hl,$D024
1E76: AF          xor  a
1E77: 77          ld   (hl),a
1E78: 32 1C D0    ld   ($D01C),a
1E7B: 18 1A       jr   $1E97
1E7D: CB 40       bit  0,b
1E7F: 20 13       jr   nz,$1E94
1E81: 3E FF       ld   a,$FF
1E83: 32 1E D0    ld   ($D01E),a
1E86: 18 0C       jr   $1E94
1E88: 21 16 D0    ld   hl,$D016
1E8B: 06 03       ld   b,$03
1E8D: 7E          ld   a,(hl)
1E8E: A7          and  a
1E8F: 28 03       jr   z,$1E94
1E91: 35          dec  (hl)
1E92: 28 E9       jr   z,$1E7D
1E94: 2C          inc  l
1E95: 10 F6       djnz $1E8D
1E97: 2E 43       ld   l,$43
1E99: 46          ld   b,(hl)
1E9A: CB 78       bit  7,b
1E9C: 28 14       jr   z,$1EB2
1E9E: 0E 01       ld   c,$01
1EA0: 1E 00       ld   e,$00
1EA2: DD 21 44 D0 ld   ix,$D044
1EA6: FD 21 64 D0 ld   iy,$D064
1EAA: 18 1E       jr   $1ECA
1EAC: 11 A7 21    ld   de,$21A7
1EAF: C3 9B 21    jp   $219B
1EB2: 2E 63       ld   l,$63
1EB4: 46          ld   b,(hl)
1EB5: CB 78       bit  7,b
1EB7: C8          ret  z
1EB8: 3A 66 D0    ld   a,($D066)
1EBB: A7          and  a
1EBC: 28 EE       jr   z,$1EAC
1EBE: 0E 00       ld   c,$00
1EC0: 1E 03       ld   e,$03
1EC2: DD 21 64 D0 ld   ix,$D064
1EC6: FD 21 44 D0 ld   iy,$D044
1ECA: D9          exx
1ECB: DD 7E 02    ld   a,(ix+$02)
1ECE: FE FF       cp   $FF
1ED0: CA 5D 1E    jp   z,$1E5D
1ED3: 4F          ld   c,a
1ED4: FD 5E 00    ld   e,(iy+$00)
1ED7: FD 56 01    ld   d,(iy+$01)
1EDA: CD 5C 22    call $225C
1EDD: FE 0F       cp   $0F
1EDF: 28 56       jr   z,$1F37
1EE1: FE 08       cp   $08
1EE3: 28 59       jr   z,$1F3E
1EE5: 79          ld   a,c
1EE6: E6 0F       and  $0F
1EE8: DD 4E 05    ld   c,(ix+$05)
1EEB: 0C          inc  c
1EEC: A7          and  a
1EED: CB 19       rr   c
1EEF: B9          cp   c
1EF0: 38 01       jr   c,$1EF3
1EF2: 79          ld   a,c
1EF3: 93          sub  e
1EF4: 6F          ld   l,a
1EF5: 28 02       jr   z,$1EF9
1EF7: 30 07       jr   nc,$1F00
1EF9: 2E 00       ld   l,$00
1EFB: 7B          ld   a,e
1EFC: FE 07       cp   $07
1EFE: 28 69       jr   z,$1F69
1F00: 65          ld   h,l
1F01: FD 7E 02    ld   a,(iy+$02)
1F04: 4F          ld   c,a
1F05: DD 5E 00    ld   e,(ix+$00)
1F08: DD 56 01    ld   d,(ix+$01)
1F0B: CD 5C 22    call $225C
1F0E: 79          ld   a,c
1F0F: E6 0F       and  $0F
1F11: FD 4E 05    ld   c,(iy+$05)
1F14: 0C          inc  c
1F15: A7          and  a
1F16: CB 19       rr   c
1F18: B9          cp   c
1F19: 38 01       jr   c,$1F1C
1F1B: 79          ld   a,c
1F1C: 93          sub  e
1F1D: D9          exx
1F1E: 93          sub  e
1F1F: D9          exx
1F20: 6F          ld   l,a
1F21: 7C          ld   a,h
1F22: FA 2E 1F    jp   m,$1F2E
1F25: 28 07       jr   z,$1F2E
1F27: A7          and  a
1F28: CA D5 1F    jp   z,$1FD5
1F2B: C3 A8 1F    jp   $1FA8
1F2E: 2E 00       ld   l,$00
1F30: A7          and  a
1F31: CA 80 20    jp   z,$2080
1F34: C3 F0 1F    jp   $1FF0
1F37: D9          exx
1F38: 11 BF 21    ld   de,$21BF
1F3B: C3 9B 21    jp   $219B
1F3E: D9          exx
1F3F: 79          ld   a,c
1F40: CB 40       bit  0,b
1F42: 20 0D       jr   nz,$1F51
1F44: A7          and  a
1F45: 11 BF 21    ld   de,$21BF
1F48: C2 9B 21    jp   nz,$219B
1F4B: 11 B8 21    ld   de,$21B8
1F4E: C3 9B 21    jp   $219B
1F51: A7          and  a
1F52: 20 0F       jr   nz,$1F63
1F54: CD 57 22    call $2257
1F57: 3A 98 D0    ld   a,($D098)
1F5A: 32 18 D0    ld   ($D018),a
1F5D: 11 B2 21    ld   de,$21B2
1F60: C3 45 B8    jp   $B845
1F63: 11 BD 21    ld   de,$21BD
1F66: C3 9B 21    jp   $219B
1F69: D9          exx
1F6A: 79          ld   a,c
1F6B: A7          and  a
1F6C: 20 14       jr   nz,$1F82
1F6E: 3A 66 D0    ld   a,($D066)
1F71: 07          rlca
1F72: 3E 11       ld   a,$11
1F74: CE 00       adc  a,$00
1F76: 32 30 D0    ld   ($D030),a
1F79: CD 57 22    call $2257
1F7C: 11 C4 21    ld   de,$21C4
1F7F: C3 8D 21    jp   $218D
1F82: 3A 46 D0    ld   a,($D046)
1F85: 4F          ld   c,a
1F86: 07          rlca
1F87: 3E 15       ld   a,$15
1F89: 30 02       jr   nc,$1F8D
1F8B: 3E 18       ld   a,$18
1F8D: 32 5A D0    ld   ($D05A),a
1F90: 3E 01       ld   a,$01
1F92: 32 51 D0    ld   ($D051),a
1F95: CD 4F 22    call $224F
1F98: 3A 15 D0    ld   a,($D015)
1F9B: A7          and  a
1F9C: 11 CD 21    ld   de,$21CD
1F9F: CA 8D 21    jp   z,$218D
1FA2: 11 CF 21    ld   de,$21CF
1FA5: C3 8D 21    jp   $218D
1FA8: D9          exx
1FA9: 79          ld   a,c
1FAA: D9          exx
1FAB: A7          and  a
1FAC: 20 13       jr   nz,$1FC1
1FAE: CD 9A 22    call $229A
1FB1: 7C          ld   a,h
1FB2: 08          ex   af,af'
1FB3: CD A3 23    call $23A3
1FB6: 08          ex   af,af'
1FB7: 67          ld   h,a
1FB8: CD EF 22    call $22EF
1FBB: 11 D6 21    ld   de,$21D6
1FBE: C3 8D 21    jp   $218D
1FC1: CD 52 23    call $2352
1FC4: 7C          ld   a,h
1FC5: 08          ex   af,af'
1FC6: 65          ld   h,l
1FC7: CD EF 22    call $22EF
1FCA: 08          ex   af,af'
1FCB: 6F          ld   l,a
1FCC: CD A3 23    call $23A3
1FCF: 11 D6 21    ld   de,$21D6
1FD2: C3 8D 21    jp   $218D
1FD5: D9          exx
1FD6: 79          ld   a,c
1FD7: D9          exx
1FD8: A7          and  a
1FD9: CA 8C 20    jp   z,$208C
1FDC: 3A 63 D0    ld   a,($D063)
1FDF: 07          rlca
1FE0: D2 A5 20    jp   nc,$20A5
1FE3: 65          ld   h,l
1FE4: CD 6C 22    call $226C
1FE7: CD EF 22    call $22EF
1FEA: 11 01 22    ld   de,$2201
1FED: C3 87 21    jp   $2187
1FF0: D9          exx
1FF1: 79          ld   a,c
1FF2: D9          exx
1FF3: A7          and  a
1FF4: 20 16       jr   nz,$200C
1FF6: CD 6C 22    call $226C
1FF9: CD EF 22    call $22EF
1FFC: 11 01 22    ld   de,$2201
1FFF: 21 4A D0    ld   hl,$D04A
2002: 7E          ld   a,(hl)
2003: FE 08       cp   $08
2005: D2 87 21    jp   nc,$2187
2008: 34          inc  (hl)
2009: C3 87 21    jp   $2187
200C: CD 21 23    call $2321
200F: 6C          ld   l,h
2010: CD A3 23    call $23A3
2013: 1E 18       ld   e,$18
2015: 1A          ld   a,(de)
2016: A7          and  a
2017: 28 0F       jr   z,$2028
2019: 2A 96 D0    ld   hl,($D096)
201C: BE          cp   (hl)
201D: 23          inc  hl
201E: 38 03       jr   c,$2023
2020: 23          inc  hl
2021: 18 F9       jr   $201C
2023: AF          xor  a
2024: 12          ld   (de),a
2025: 1C          inc  e
2026: ED A8       ldd
2028: 3A 46 D0    ld   a,($D046)
202B: E6 F0       and  $F0
202D: 4F          ld   c,a
202E: 1D          dec  e
202F: E6 30       and  $30
2031: 20 3F       jr   nz,$2072
2033: 21 1E D0    ld   hl,$D01E
2036: 1A          ld   a,(de)
2037: A7          and  a
2038: 28 0A       jr   z,$2044
203A: 7E          ld   a,(hl)
203B: EE 40       xor  $40
203D: B9          cp   c
203E: 3E 02       ld   a,$02
2040: 20 02       jr   nz,$2044
2042: 3E 04       ld   a,$04
2044: 71          ld   (hl),c
2045: 4F          ld   c,a
2046: 2D          dec  l
2047: 7E          ld   a,(hl)
2048: 81          add  a,c
2049: 4F          ld   c,a
204A: 87          add  a,a
204B: 81          add  a,c
204C: C6 4C       add  a,$4C
204E: 6F          ld   l,a
204F: 26 00       ld   h,$00
2051: 3E 40       ld   a,$40
2053: 12          ld   (de),a
2054: 7E          ld   a,(hl)
2055: 2C          inc  l
2056: 4E          ld   c,(hl)
2057: 2C          inc  l
2058: 66          ld   h,(hl)
2059: 69          ld   l,c
205A: 32 47 D0    ld   ($D047),a
205D: 11 DF D7    ld   de,$D7DF
2060: 01 04 00    ld   bc,$0004
2063: ED B0       ldir
2065: 3A 1C D0    ld   a,($D01C)
2068: A7          and  a
2069: C2 73 1E    jp   nz,$1E73
206C: 11 15 22    ld   de,$2215
206F: C3 8D 21    jp   $218D
2072: 21 3F 22    ld   hl,$223F
2075: E6 10       and  $10
2077: 3E 02       ld   a,$02
2079: 28 DF       jr   z,$205A
207B: 21 43 22    ld   hl,$2243
207E: 18 DA       jr   $205A
2080: D9          exx
2081: 79          ld   a,c
2082: A7          and  a
2083: 20 20       jr   nz,$20A5
2085: 3A 45 D0    ld   a,($D045)
2088: FE 05       cp   $05
208A: 28 06       jr   z,$2092
208C: 11 2D 22    ld   de,$222D
208F: C3 9B 21    jp   $219B
2092: 3A 66 D0    ld   a,($D066)
2095: FE 84       cp   $84
2097: 20 F3       jr   nz,$208C
2099: 3E 01       ld   a,$01
209B: 32 1D D0    ld   ($D01D),a
209E: 3E 04       ld   a,$04
20A0: 32 19 D0    ld   ($D019),a
20A3: 18 E7       jr   $208C
20A5: 11 32 22    ld   de,$2232
20A8: C3 9B 21    jp   $219B
20AB: 01 04 F0    ld   bc,$F004
20AE: ED 43 BD D0 ld   ($D0BD),bc
20B2: 01 03 43    ld   bc,$4303
20B5: 3E 08       ld   a,$08
20B7: 32 C2 D0    ld   ($D0C2),a
20BA: D9          exx
20BB: 21 FF 00    ld   hl,$00FF
20BE: 22 DF D7    ld   ($D7DF),hl
20C1: 2E 05       ld   l,$05
20C3: 22 E1 D7    ld   ($D7E1),hl
20C6: 21 6F 21    ld   hl,$216F
20C9: 11 75 D0    ld   de,$D075
20CC: 01 03 00    ld   bc,$0003
20CF: ED B0       ldir
20D1: 3A 46 D0    ld   a,($D046)
20D4: E6 30       and  $30
20D6: 28 02       jr   z,$20DA
20D8: 3E 01       ld   a,$01
20DA: 32 73 FF    ld   ($FF73),a
20DD: 1E 2E       ld   e,$2E
20DF: 1A          ld   a,(de)
20E0: 1C          inc  e
20E1: A7          and  a
20E2: C2 63 B8    jp   nz,$B863
20E5: 1A          ld   a,(de)
20E6: FE 02       cp   $02
20E8: 30 0E       jr   nc,$20F8
20EA: C6 20       add  a,$20
20EC: 5F          ld   e,a
20ED: 1A          ld   a,(de)
20EE: 4F          ld   c,a
20EF: 1E 2F       ld   e,$2F
20F1: 3A 22 D0    ld   a,($D022)
20F4: B9          cp   c
20F5: 30 1A       jr   nc,$2111
20F7: 1A          ld   a,(de)
20F8: 3C          inc  a
20F9: 12          ld   (de),a
20FA: FE 03       cp   $03
20FC: 28 16       jr   z,$2114
20FE: ED 5F       ld   a,r
2100: E6 0E       and  $0E
2102: 4F          ld   c,a
2103: 09          add  hl,bc
2104: 1E 2B       ld   e,$2B
2106: ED A0       ldi
2108: 3E 01       ld   a,$01
210A: 12          ld   (de),a
210B: 1C          inc  e
210C: ED A0       ldi
210E: D9          exx
210F: 18 7F       jr   $2190
2111: 3E 03       ld   a,$03
2113: 12          ld   (de),a
2114: 3E 10       ld   a,$10
2116: 18 EA       jr   $2102
2118: FF          rst  $38
2119: FF          rst  $38
211A: 01 04 F0    ld   bc,$F004
211D: ED 43 BD D0 ld   ($D0BD),bc
2121: 01 43 03    ld   bc,$0343
2124: 3E 06       ld   a,$06
2126: 32 C2 D0    ld   ($D0C2),a
2129: D9          exx
212A: 21 57 21    ld   hl,$2157
212D: 11 79 D0    ld   de,$D079
2130: 01 03 00    ld   bc,$0003
2133: ED B0       ldir
2135: 1E 2E       ld   e,$2E
2137: 1A          ld   a,(de)
2138: FE 01       cp   $01
213A: 20 BC       jr   nz,$20F8
213C: 3A 2F D0    ld   a,($D02F)
213F: A7          and  a
2140: 20 B5       jr   nz,$20F7
2142: 3A 28 D0    ld   a,($D028)
2145: 4F          ld   c,a
2146: 3A 24 D0    ld   a,($D024)
2149: 18 A9       jr   $20F4
214B: 01 FD 20    ld   bc,$20FD
214E: 01 01 05    ld   bc,$0501
2151: 70          ld   (hl),b
2152: 0F          rrca
2153: 01 F4 02    ld   bc,$02F4
2156: 02          ld   (bc),a
2157: 06 82       ld   b,$82
2159: 03          inc  bc
215A: 16 2B       ld   d,$2B
215C: 16 2B       ld   d,$2B
215E: 12          ld   (de),a
215F: 5E          ld   e,(hl)
2160: 16 2B       ld   d,$2B
2162: 12          ld   (de),a
2163: 5E          ld   e,(hl)
2164: 16 2B       ld   d,$2B
2166: 14          inc  d
2167: 3D          dec  a
2168: 14          inc  d
2169: 3D          dec  a
216A: 10 90       djnz $20FC
216C: FA DA 02    jp   m,$02DA
216F: FD          db   $fd
2170: 8A          adc  a,d
2171: 01 16 2B    ld   bc,$2B16
2174: 16 2B       ld   d,$2B
2176: 12          ld   (de),a
2177: 5E          ld   e,(hl)
2178: 16 2B       ld   d,$2B
217A: 12          ld   (de),a
217B: 5E          ld   e,(hl)
217C: 16 2B       ld   d,$2B
217E: 14          inc  d
217F: 46          ld   b,(hl)
2180: 14          inc  d
2181: 46          ld   b,(hl)
2182: 10 90       djnz $2114
2184: 06 C0       ld   b,$C0
2186: 01 3A 27    ld   bc,$273A
2189: D0          ret  nc
218A: 32 47 D0    ld   ($D047),a
218D: 01 03 03    ld   bc,$0303
2190: 21 62 D0    ld   hl,$D062
2193: 7E          ld   a,(hl)
2194: B0          or   b
2195: 77          ld   (hl),a
2196: 2E 42       ld   l,$42
2198: 7E          ld   a,(hl)
2199: B1          or   c
219A: 77          ld   (hl),a
219B: EB          ex   de,hl
219C: 16 D0       ld   d,$D0
219E: 7E          ld   a,(hl)
219F: A7          and  a
21A0: C8          ret  z
21A1: 5F          ld   e,a
21A2: 23          inc  hl
21A3: ED A0       ldi
21A5: 18 F7       jr   $219E
21A7: 30 21       jr   nc,$21CA
21A9: 41          ld   b,c
21AA: 0C          inc  c
21AB: 42          ld   b,d
21AC: 01 63 01    ld   bc,$0163
21AF: 47          ld   b,a
21B0: F4 00 4A    call p,$4A00
21B3: 00          nop
21B4: 47          ld   b,a
21B5: 01 16 00    ld   bc,$0016
21B8: 63          ld   h,e
21B9: 03          inc  bc
21BA: 43          ld   b,e
21BB: 00          nop
21BC: 00          nop
21BD: 47          ld   b,a
21BE: FE 43       cp   $43
21C0: 03          inc  bc
21C1: 63          ld   h,e
21C2: 00          nop
21C3: 00          nop
21C4: 63          ld   h,e
21C5: 02          ld   (bc),a
21C6: 41          ld   b,c
21C7: FE 43       cp   $43
21C9: 00          nop
21CA: 16 00       ld   d,$00
21CC: 00          nop
21CD: 47          ld   b,a
21CE: FF          rst  $38
21CF: 43          ld   b,e
21D0: 02          ld   (bc),a
21D1: 61          ld   h,c
21D2: FE 63       cp   $63
21D4: 00          nop
21D5: 00          nop
21D6: 61          ld   h,c
21D7: FF          rst  $38
21D8: 63          ld   h,e
21D9: 00          nop
21DA: 67          ld   h,a
21DB: F8          ret  m
21DC: 41          ld   b,c
21DD: FF          rst  $38
21DE: 43          ld   b,e
21DF: 00          nop
21E0: 47          ld   b,a
21E1: FC 16 24    call m,$2416
21E4: 84          add  a,h
21E5: 00          nop
21E6: 00          nop
21E7: 61          ld   h,c
21E8: FF          rst  $38
21E9: 63          ld   h,e
21EA: 00          nop
21EB: 67          ld   h,a
21EC: F4 41 FD    call p,$FD41
21EF: 43          ld   b,e
21F0: 00          nop
21F1: 47          ld   b,a
21F2: E0          ret  po
21F3: 00          nop
21F4: 41          ld   b,c
21F5: FF          rst  $38
21F6: 43          ld   b,e
21F7: 00          nop
21F8: 47          ld   b,a
21F9: F4 61 FD    call p,$FD61
21FC: 63          ld   h,e
21FD: 00          nop
21FE: 67          ld   h,a
21FF: E0          ret  po
2200: 00          nop
2201: 63          ld   h,e
2202: 01 41 FF    ld   bc,$FF41
2205: 43          ld   b,e
2206: 00          nop
2207: 16 38       ld   d,$38
2209: 1A          ld   a,(de)
220A: 00          nop
220B: 00          nop
220C: 63          ld   h,e
220D: 01 41 FD    ld   bc,$FD41
2210: 43          ld   b,e
2211: 00          nop
2212: 47          ld   b,a
2213: E0          ret  po
2214: 00          nop
2215: 43          ld   b,e
2216: 01 61 FF    ld   bc,$FF61
2219: 63          ld   h,e
221A: 00          nop
221B: 67          ld   h,a
221C: F4 84 01    call p,$0184
221F: 4A          ld   c,d
2220: 00          nop
2221: 00          nop
2222: 43          ld   b,e
2223: 01 47 05    ld   bc,$0547
2226: 61          ld   h,c
2227: FD 63       ld   iyh,e
2229: 00          nop
222A: 67          ld   h,a
222B: E0          ret  po
222C: 00          nop
222D: 63          ld   h,e
222E: 03          inc  bc
222F: 43          ld   b,e
2230: 00          nop
2231: 00          nop
2232: 43          ld   b,e
2233: 03          inc  bc
2234: 63          ld   h,e
2235: 00          nop
2236: 00          nop
2237: FF          rst  $38
2238: 40          ld   b,b
2239: 00          nop
223A: 00          nop
223B: FF          rst  $38
223C: 80          add  a,b
223D: 00          nop
223E: 00          nop
223F: FF          rst  $38
2240: 00          nop
2241: 05          dec  b
2242: 00          nop
2243: FF          rst  $38
2244: 00          nop
2245: 03          inc  bc
2246: 00          nop
2247: FF          rst  $38
2248: 00          nop
2249: 02          ld   (bc),a
224A: 00          nop
224B: FF          rst  $38
224C: 00          nop
224D: 04          inc  b
224E: 00          nop
224F: 21 88 D0    ld   hl,$D088
2252: 7E          ld   a,(hl)
2253: A7          and  a
2254: C8          ret  z
2255: 35          dec  (hl)
2256: C9          ret
2257: 21 87 D0    ld   hl,$D087
225A: 18 F6       jr   $2252
225C: 07          rlca
225D: 30 01       jr   nc,$2260
225F: 5A          ld   e,d
2260: 07          rlca
2261: 7B          ld   a,e
2262: 30 04       jr   nc,$2268
2264: 0F          rrca
2265: 0F          rrca
2266: 0F          rrca
2267: 0F          rrca
2268: E6 0F       and  $0F
226A: 5F          ld   e,a
226B: C9          ret
226C: 3A 22 D0    ld   a,($D022)
226F: 94          sub  h
2270: 38 17       jr   c,$2289
2272: 28 16       jr   z,$228A
2274: D6 09       sub  $09
2276: 38 11       jr   c,$2289
2278: 28 10       jr   z,$228A
227A: 32 22 D0    ld   ($D022),a
227D: 3A 24 D0    ld   a,($D024)
2280: FE 38       cp   $38
2282: D0          ret  nc
2283: C6 04       add  a,$04
2285: 32 24 D0    ld   ($D024),a
2288: C9          ret
2289: AF          xor  a
228A: 32 22 D0    ld   ($D022),a
228D: 32 EE D7    ld   ($D7EE),a
2290: CD 09 23    call $2309
2293: D1          pop  de
2294: 11 0C 22    ld   de,$220C
2297: C3 1A 21    jp   $211A
229A: 3A 24 D0    ld   a,($D024)
229D: 95          sub  l
229E: 38 2B       jr   c,$22CB
22A0: 28 2A       jr   z,$22CC
22A2: 32 24 D0    ld   ($D024),a
22A5: 3A 22 D0    ld   a,($D022)
22A8: 94          sub  h
22A9: 38 0C       jr   c,$22B7
22AB: 28 0B       jr   z,$22B8
22AD: D6 01       sub  $01
22AF: 38 06       jr   c,$22B7
22B1: 28 05       jr   z,$22B8
22B3: 32 22 D0    ld   ($D022),a
22B6: C9          ret
22B7: AF          xor  a
22B8: 32 22 D0    ld   ($D022),a
22BB: 32 EE D7    ld   ($D7EE),a
22BE: CD A3 23    call $23A3
22C1: CD 09 23    call $2309
22C4: D1          pop  de
22C5: 11 E7 21    ld   de,$21E7
22C8: C3 1A 21    jp   $211A
22CB: AF          xor  a
22CC: 32 24 D0    ld   ($D024),a
22CF: 32 EA D7    ld   ($D7EA),a
22D2: 32 EE D7    ld   ($D7EE),a
22D5: 3A 22 D0    ld   a,($D022)
22D8: 94          sub  h
22D9: 28 02       jr   z,$22DD
22DB: 30 02       jr   nc,$22DF
22DD: 3E 01       ld   a,$01
22DF: 32 22 D0    ld   ($D022),a
22E2: CD EF 22    call $22EF
22E5: CD D1 23    call $23D1
22E8: D1          pop  de
22E9: 11 F4 21    ld   de,$21F4
22EC: C3 AB 20    jp   $20AB
22EF: 11 66 D0    ld   de,$D066
22F2: 1A          ld   a,(de)
22F3: 07          rlca
22F4: 07          rlca
22F5: 07          rlca
22F6: E6 06       and  $06
22F8: 4F          ld   c,a
22F9: 06 00       ld   b,$00
22FB: 7C          ld   a,h
22FC: FE 06       cp   $06
22FE: 2A 33 D0    ld   hl,($D033)
2301: ED 42       sbc  hl,bc
2303: 2B          dec  hl
2304: 1E 30       ld   e,$30
2306: ED A8       ldd
2308: C9          ret
2309: 11 66 D0    ld   de,$D066
230C: 1A          ld   a,(de)
230D: 07          rlca
230E: 07          rlca
230F: E6 03       and  $03
2311: 06 00       ld   b,$00
2313: 4F          ld   c,a
2314: 21 1D 23    ld   hl,$231D
2317: 09          add  hl,bc
2318: 1E 30       ld   e,$30
231A: ED A0       ldi
231C: C9          ret
231D: 1C          inc  e
231E: 1B          dec  de
231F: 1E 1D       ld   e,$1D
2321: 3A 24 D0    ld   a,($D024)
2324: 94          sub  h
2325: 38 17       jr   c,$233E
2327: 28 16       jr   z,$233F
2329: D6 02       sub  $02
232B: 38 11       jr   c,$233E
232D: 28 10       jr   z,$233F
232F: 32 24 D0    ld   ($D024),a
2332: 3A 22 D0    ld   a,($D022)
2335: FE 30       cp   $30
2337: D0          ret  nc
2338: C6 02       add  a,$02
233A: 32 22 D0    ld   ($D022),a
233D: C9          ret
233E: AF          xor  a
233F: 32 24 D0    ld   ($D024),a
2342: 32 EA D7    ld   ($D7EA),a
2345: 32 EE D7    ld   ($D7EE),a
2348: CD D1 23    call $23D1
234B: D1          pop  de
234C: 11 22 22    ld   de,$2222
234F: C3 AB 20    jp   $20AB
2352: 3A 22 D0    ld   a,($D022)
2355: 95          sub  l
2356: 38 29       jr   c,$2381
2358: 28 28       jr   z,$2382
235A: 32 22 D0    ld   ($D022),a
235D: 3A 24 D0    ld   a,($D024)
2360: 94          sub  h
2361: 38 06       jr   c,$2369
2363: 28 05       jr   z,$236A
2365: 32 24 D0    ld   ($D024),a
2368: C9          ret
2369: AF          xor  a
236A: 32 24 D0    ld   ($D024),a
236D: 32 EA D7    ld   ($D7EA),a
2370: 32 EE D7    ld   ($D7EE),a
2373: 65          ld   h,l
2374: CD EF 22    call $22EF
2377: CD D1 23    call $23D1
237A: D1          pop  de
237B: 11 F4 21    ld   de,$21F4
237E: C3 AB 20    jp   $20AB
2381: AF          xor  a
2382: 32 22 D0    ld   ($D022),a
2385: 32 EE D7    ld   ($D7EE),a
2388: 3A 24 D0    ld   a,($D024)
238B: 94          sub  h
238C: 28 02       jr   z,$2390
238E: 30 02       jr   nc,$2392
2390: 3E 01       ld   a,$01
2392: 32 24 D0    ld   ($D024),a
2395: 6C          ld   l,h
2396: CD A3 23    call $23A3
2399: CD 09 23    call $2309
239C: D1          pop  de
239D: 11 E7 21    ld   de,$21E7
23A0: C3 1A 21    jp   $211A
23A3: 11 46 D0    ld   de,$D046
23A6: 1A          ld   a,(de)
23A7: 07          rlca
23A8: 07          rlca
23A9: 07          rlca
23AA: 38 1D       jr   c,$23C9
23AC: E6 86       and  $86
23AE: FA CD 23    jp   m,$23CD
23B1: 4F          ld   c,a
23B2: 7D          ld   a,l
23B3: FE 05       cp   $05
23B5: 79          ld   a,c
23B6: CE 00       adc  a,$00
23B8: 4F          ld   c,a
23B9: 06 00       ld   b,$00
23BB: 21 DD 23    ld   hl,$23DD
23BE: 09          add  hl,bc
23BF: 7E          ld   a,(hl)
23C0: 32 5A D0    ld   ($D05A),a
23C3: 3E 01       ld   a,$01
23C5: 32 51 D0    ld   ($D051),a
23C8: C9          ret
23C9: 0E 0A       ld   c,$0A
23CB: 18 E5       jr   $23B2
23CD: 0E 08       ld   c,$08
23CF: 18 E1       jr   $23B2
23D1: 11 46 D0    ld   de,$D046
23D4: 1A          ld   a,(de)
23D5: 07          rlca
23D6: 07          rlca
23D7: E6 03       and  $03
23D9: C6 0C       add  a,$0C
23DB: 18 DB       jr   $23B8
23DD: 24          inc  h
23DE: 21 1E 1B    ld   hl,$1B1E
23E1: 2A 27 27    ld   hl,($2727)
23E4: 27          daa
23E5: 30 2A       jr   nc,$2411
23E7: 2D          dec  l
23E8: 2A 36 33    ld   hl,($3336)
23EB: 3C          inc  a
23EC: 39          add  hl,sp
23ED: 3C          inc  a
23EE: CA 96 24    jp   z,$2496
23F1: 3C          inc  a
23F2: 28 52       jr   z,$2446
23F4: 3C          inc  a
23F5: 28 25       jr   z,$241C
23F7: 3C          inc  a
23F8: C0          ret  nz
23F9: 2C          inc  l
23FA: 35          dec  (hl)
23FB: C0          ret  nz
23FC: 36 26       ld   (hl),$26
23FE: 2D          dec  l
23FF: 34          inc  (hl)
2400: 2E 52       ld   l,$52
2402: 34          inc  (hl)
2403: 2E 62       ld   l,$62
2405: CB C6       set  0,(hl)
2407: 2E 78       ld   l,$78
2409: 06 02       ld   b,$02
240B: 11 04 00    ld   de,$0004
240E: CB BE       res  7,(hl)
2410: 19          add  hl,de
2411: 10 FB       djnz $240E
2413: C9          ret
2414: 35          dec  (hl)
2415: C0          ret  nz
2416: 2E 74       ld   l,$74
2418: 06 01       ld   b,$01
241A: 18 EF       jr   $240B
241C: 2C          inc  l
241D: 7E          ld   a,(hl)
241E: A7          and  a
241F: 20 F3       jr   nz,$2414
2421: CD 3B 26    call $263B
2424: C0          ret  nz
2425: 36 24       ld   (hl),$24
2427: 2D          dec  l
2428: 34          inc  (hl)
2429: 3E 1E       ld   a,$1E
242B: CD 28 12    call $1228
242E: 21 01 24    ld   hl,$2401
2431: 22 3C D0    ld   ($D03C),hl
2434: 21 64 F1    ld   hl,$F164
2437: 06 05       ld   b,$05
2439: 3E FF       ld   a,$FF
243B: 77          ld   (hl),a
243C: CB FD       set  7,l
243E: 77          ld   (hl),a
243F: CB BD       res  7,l
2441: 2B          dec  hl
2442: 2B          dec  hl
2443: 10 F6       djnz $243B
2445: C9          ret
2446: 2C          inc  l
2447: 7E          ld   a,(hl)
2448: A7          and  a
2449: 28 11       jr   z,$245C
244B: 3D          dec  a
244C: 77          ld   (hl),a
244D: A7          and  a
244E: D8          ret  c
244F: 21 72 24    ld   hl,$2472
2452: 5F          ld   e,a
2453: 16 00       ld   d,$00
2455: 19          add  hl,de
2456: 7E          ld   a,(hl)
2457: A7          and  a
2458: F8          ret  m
2459: C3 8D 29    jp   $298D
245C: 36 08       ld   (hl),$08
245E: 2D          dec  l
245F: 34          inc  (hl)
2460: 3E 01       ld   a,$01
2462: 32 40 D0    ld   ($D040),a
2465: 32 EA D7    ld   ($D7EA),a
2468: 32 EE D7    ld   ($D7EE),a
246B: 21 01 01    ld   hl,$0101
246E: 22 3C D0    ld   ($D03C),hl
2471: C9          ret
2472: 00          nop
2473: FF          rst  $38
2474: 46          ld   b,(hl)
2475: FF          rst  $38
2476: 41          ld   b,c
2477: FF          rst  $38
2478: 3C          inc  a
2479: FF          rst  $38
247A: 37          scf
247B: FF          rst  $38
247C: 32 FF 2D    ld   ($2DFF),a
247F: FF          rst  $38
2480: 28 FF       jr   z,$2481
2482: 23          inc  hl
2483: FF          rst  $38
2484: 1E FF       ld   e,$FF
2486: 19          add  hl,de
2487: FF          rst  $38
2488: 14          inc  d
2489: FF          rst  $38
248A: FF          rst  $38
248B: FF          rst  $38
248C: FF          rst  $38
248D: 0F          rrca
248E: FF          rst  $38
248F: FF          rst  $38
2490: FF          rst  $38
2491: FF          rst  $38
2492: FF          rst  $38
2493: FF          rst  $38
2494: FF          rst  $38
2495: 0A          ld   a,(bc)
2496: CD 3B 26    call $263B
2499: 18 27       jr   $24C2
249B: 21 2C D0    ld   hl,$D02C
249E: 7E          ld   a,(hl)
249F: A7          and  a
24A0: CA BA 25    jp   z,$25BA
24A3: FA ED 23    jp   m,$23ED
24A6: 3D          dec  a
24A7: CA A5 25    jp   z,$25A5
24AA: 3D          dec  a
24AB: CA 25 25    jp   z,$2525
24AE: CD 3B 26    call $263B
24B1: C0          ret  nz
24B2: 3E 1E       ld   a,$1E
24B4: CD 28 12    call $1228
24B7: 3E 04       ld   a,$04
24B9: 32 C2 D0    ld   ($D0C2),a
24BC: 21 40 10    ld   hl,$1040
24BF: 22 BD D0    ld   ($D0BD),hl
24C2: 21 2D D0    ld   hl,$D02D
24C5: 35          dec  (hl)
24C6: C0          ret  nz
24C7: 2D          dec  l
24C8: 06 00       ld   b,$00
24CA: 70          ld   (hl),b
24CB: 3E 81       ld   a,$81
24CD: 32 01 D0    ld   ($D001),a
24D0: 3E 08       ld   a,$08
24D2: 32 A2 D0    ld   ($D0A2),a
24D5: CB 73       bit  6,e
24D7: 20 2B       jr   nz,$2504
24D9: 3A 2F D0    ld   a,($D02F)
24DC: A7          and  a
24DD: CA E2 25    jp   z,$25E2
24E0: 87          add  a,a
24E1: 4F          ld   c,a
24E2: 3A 73 FF    ld   a,($FF73)
24E5: 81          add  a,c
24E6: 4F          ld   c,a
24E7: 3E 01       ld   a,$01
24E9: 32 EA D7    ld   ($D7EA),a
24EC: 3A 05 D0    ld   a,($D005)
24EF: 87          add  a,a
24F0: 87          add  a,a
24F1: 87          add  a,a
24F2: 6F          ld   l,a
24F3: 26 00       ld   h,$00
24F5: 29          add  hl,hl
24F6: 11 B5 B6    ld   de,$B6B5
24F9: 19          add  hl,de
24FA: 3A 26 D0    ld   a,($D026)
24FD: 81          add  a,c
24FE: 4F          ld   c,a
24FF: 11 24 D0    ld   de,$D024
2502: 18 16       jr   $251A
2504: 3A 2E D0    ld   a,($D02E)
2507: 4F          ld   c,a
2508: 11 22 D0    ld   de,$D022
250B: 21 36 B8    ld   hl,$B836
250E: 3A FA D7    ld   a,($D7FA)
2511: FE 06       cp   $06
2513: 38 02       jr   c,$2517
2515: 3E 06       ld   a,$06
2517: 87          add  a,a
2518: 81          add  a,c
2519: 4F          ld   c,a
251A: 09          add  hl,bc
251B: 7E          ld   a,(hl)
251C: 12          ld   (de),a
251D: 3E 01       ld   a,$01
251F: 32 EE D7    ld   ($D7EE),a
2522: C3 E2 25    jp   $25E2
2525: 2C          inc  l
2526: 3A D1 D7    ld   a,($D7D1)
2529: E6 01       and  $01
252B: C0          ret  nz
252C: 35          dec  (hl)
252D: C0          ret  nz
252E: 11 00 20    ld   de,$2000
2531: ED 53 91 D0 ld   ($D091),de
2535: 3A 42 D0    ld   a,($D042)
2538: E6 40       and  $40
253A: 20 32       jr   nz,$256E
253C: 3A 2F D0    ld   a,($D02F)
253F: FE 03       cp   $03
2541: 28 14       jr   z,$2557
2543: 36 08       ld   (hl),$08
2545: 2D          dec  l
2546: 34          inc  (hl)
2547: 2E 52       ld   l,$52
2549: 34          inc  (hl)
254A: 11 75 D0    ld   de,$D075
254D: 21 84 21    ld   hl,$2184
2550: 01 03 00    ld   bc,$0003
2553: ED B0       ldir
2555: 18 30       jr   $2587
2557: 36 01       ld   (hl),$01
2559: 3E 02       ld   a,$02
255B: 32 EA D7    ld   ($D7EA),a
255E: 2E 62       ld   l,$62
2560: CB FE       set  7,(hl)
2562: 3E 0A       ld   a,$0A
2564: 32 C2 D0    ld   ($D0C2),a
2567: 21 02 F0    ld   hl,$F002
256A: 22 BD D0    ld   ($D0BD),hl
256D: C9          ret
256E: 3A 2E D0    ld   a,($D02E)
2571: FE 03       cp   $03
2573: 28 1C       jr   z,$2591
2575: 36 08       ld   (hl),$08
2577: 2D          dec  l
2578: 34          inc  (hl)
2579: 2E 31       ld   l,$31
257B: 34          inc  (hl)
257C: 11 79 D0    ld   de,$D079
257F: 21 6C 21    ld   hl,$216C
2582: 01 03 00    ld   bc,$0003
2585: ED B0       ldir
2587: 21 42 D0    ld   hl,$D042
258A: CB C6       set  0,(hl)
258C: 2E 62       ld   l,$62
258E: CB C6       set  0,(hl)
2590: C9          ret
2591: 36 01       ld   (hl),$01
2593: AF          xor  a
2594: 32 EA D7    ld   ($D7EA),a
2597: 32 EE D7    ld   ($D7EE),a
259A: 2E 42       ld   l,$42
259C: CB FE       set  7,(hl)
259E: 21 10 F0    ld   hl,$F010
25A1: 22 BD D0    ld   ($D0BD),hl
25A4: C9          ret
25A5: CD 3B 26    call $263B
25A8: C0          ret  nz
25A9: 34          inc  (hl)
25AA: 2D          dec  l
25AB: 7E          ld   a,(hl)
25AC: 21 C2 D7    ld   hl,$D7C2
25AF: 77          ld   (hl),a
25B0: 2D          dec  l
25B1: 36 88       ld   (hl),$88
25B3: 21 20 80    ld   hl,$8020
25B6: 22 BD D0    ld   ($D0BD),hl
25B9: C9          ret
25BA: CD 3B 26    call $263B
25BD: C0          ret  nz
25BE: 3A 42 D0    ld   a,($D042)
25C1: E6 04       and  $04
25C3: 20 3E       jr   nz,$2603
25C5: 3A 19 D0    ld   a,($D019)
25C8: A7          and  a
25C9: 28 17       jr   z,$25E2
25CB: 3D          dec  a
25CC: 32 19 D0    ld   ($D019),a
25CF: 3E 00       ld   a,$00
25D1: 28 07       jr   z,$25DA
25D3: 21 08 80    ld   hl,$8008
25D6: 22 BD D0    ld   ($D0BD),hl
25D9: 3C          inc  a
25DA: 32 4F D0    ld   ($D04F),a
25DD: EE 01       xor  $01
25DF: 32 01 D0    ld   ($D001),a
25E2: 3A 40 D0    ld   a,($D040)
25E5: E6 01       and  $01
25E7: 32 41 D0    ld   ($D041),a
25EA: 3C          inc  a
25EB: 32 30 D0    ld   ($D030),a
25EE: AF          xor  a
25EF: 32 43 D0    ld   ($D043),a
25F2: 32 63 D0    ld   ($D063),a
25F5: 32 61 D0    ld   ($D061),a
25F8: 3C          inc  a
25F9: 32 51 D0    ld   ($D051),a
25FC: 32 42 D0    ld   ($D042),a
25FF: 32 62 D0    ld   ($D062),a
2602: C9          ret
2603: 3E 0E       ld   a,$0E
2605: 32 32 D0    ld   ($D032),a
2608: 3A 31 D0    ld   a,($D031)
260B: 3C          inc  a
260C: 32 31 D0    ld   ($D031),a
260F: 21 99 D0    ld   hl,$D099
2612: CD 86 18    call $1886
2615: 30 D7       jr   nc,$25EE
2617: AF          xor  a
2618: 47          ld   b,a
2619: 32 43 D0    ld   ($D043),a
261C: 32 63 D0    ld   ($D063),a
261F: 32 62 D0    ld   ($D062),a
2622: 3C          inc  a
2623: 32 42 D0    ld   ($D042),a
2626: 2A 9A D0    ld   hl,($D09A)
2629: 3A 5C D0    ld   a,($D05C)
262C: 87          add  a,a
262D: 87          add  a,a
262E: E6 04       and  $04
2630: 4F          ld   c,a
2631: ED 5F       ld   a,r
2633: E6 03       and  $03
2635: 81          add  a,c
2636: 4F          ld   c,a
2637: 09          add  hl,bc
2638: C3 76 18    jp   $1876
263B: 3A 42 D0    ld   a,($D042)
263E: 5F          ld   e,a
263F: E6 03       and  $03
2641: 4F          ld   c,a
2642: 3A 62 D0    ld   a,($D062)
2645: 57          ld   d,a
2646: E6 03       and  $03
2648: A9          xor  c
2649: C0          ret  nz
264A: 79          ld   a,c
264B: FE 02       cp   $02
264D: C9          ret
264E: 7E          ld   a,(hl)
264F: 12          ld   (de),a
2650: 23          inc  hl
2651: 13          inc  de
2652: 13          inc  de
2653: 0D          dec  c
2654: 20 F8       jr   nz,$264E
2656: C9          ret
2657: 3E FF       ld   a,$FF
2659: 18 16       jr   $2671
265B: 3E C0       ld   a,$C0
265D: 18 12       jr   $2671
265F: 3E 80       ld   a,$80
2661: 18 0E       jr   $2671
2663: 3E 40       ld   a,$40
2665: 18 0A       jr   $2671
2667: 3E 20       ld   a,$20
2669: 18 06       jr   $2671
266B: 3E 02       ld   a,$02
266D: 18 02       jr   $2671
266F: 3E 01       ld   a,$01
2671: 32 D0 D7    ld   ($D7D0),a
2674: 3A D0 D7    ld   a,($D7D0)
2677: A7          and  a
2678: 20 FA       jr   nz,$2674
267A: C9          ret
267B: 12          ld   (de),a
267C: 13          inc  de
267D: 0D          dec  c
267E: 20 FB       jr   nz,$267B
2680: C9          ret
2681: 0D          dec  c
2682: 0C          inc  c
2683: 20 06       jr   nz,$268B
2685: CD 7B 26    call $267B
2688: 10 FB       djnz $2685
268A: C9          ret
268B: CD 7B 26    call $267B
268E: 18 F5       jr   $2685
2690: ED 47       ld   i,a
2692: E6 0F       and  $0F
2694: 08          ex   af,af'
2695: ED 57       ld   a,i
2697: 0F          rrca
2698: 0F          rrca
2699: 0F          rrca
269A: 0F          rrca
269B: E6 0F       and  $0F
269D: C9          ret
269E: 4F          ld   c,a
269F: 08          ex   af,af'
26A0: 79          ld   a,c
26A1: E6 0F       and  $0F
26A3: 4F          ld   c,a
26A4: 08          ex   af,af'
26A5: 0F          rrca
26A6: 0F          rrca
26A7: 0F          rrca
26A8: 0F          rrca
26A9: E6 0F       and  $0F
26AB: C9          ret
26AC: CD 9E 26    call $269E
26AF: CB 5F       bit  3,a
26B1: 28 04       jr   z,$26B7
26B3: CB 9F       res  3,a
26B5: ED 44       neg
26B7: CB 59       bit  3,c
26B9: C8          ret  z
26BA: F5          push af
26BB: 79          ld   a,c
26BC: CB 9F       res  3,a
26BE: ED 44       neg
26C0: 4F          ld   c,a
26C1: F1          pop  af
26C2: C9          ret
26C3: 01 00 10    ld   bc,$1000
26C6: 86          add  a,(hl)
26C7: 23          inc  hl
26C8: 0D          dec  c
26C9: 20 FB       jr   nz,$26C6
26CB: 10 F9       djnz $26C6
26CD: C9          ret
26CE: CD C6 26    call $26C6
26D1: 3D          dec  a
26D2: C8          ret  z
26D3: 21 DB D7    ld   hl,$D7DB
26D6: 35          dec  (hl)
26D7: C9          ret
26D8: 3E 01       ld   a,$01
26DA: D3 0A       out  ($0A),a
26DC: C3 6F 26    jp   $266F
26DF: CD 6F 26    call $266F
26E2: D3 0A       out  ($0A),a
26E4: C9          ret
26E5: DD 21 9E 41 ld   ix,$419E
26E9: CF          rst  $08
26EA: C9          ret
26EB: 11 00 E0    ld   de,$E000
26EE: 01 00 08    ld   bc,$0800
26F1: AF          xor  a
26F2: CD 81 26    call $2681
26F5: 11 F0 DF    ld   de,$DFF0
26F8: 21 00 27    ld   hl,$2700
26FB: 0E 08       ld   c,$08
26FD: ED B0       ldir
26FF: C9          ret
2700: D0          ret  nc
2701: 03          inc  bc
2702: D0          ret  nc
2703: 0E 28       ld   c,$28
2705: 00          nop
2706: 00          nop
2707: 02          ld   (bc),a
2708: 01 00 06    ld   bc,$0600
270B: 18 03       jr   $2710
270D: 01 00 08    ld   bc,$0800
2710: 11 00 E8    ld   de,$E800
2713: AF          xor  a
2714: CD 81 26    call $2681
2717: 11 F8 DF    ld   de,$DFF8
271A: 21 22 27    ld   hl,$2722
271D: 0E 05       ld   c,$05
271F: ED B0       ldir
2721: C9          ret
2722: 88          adc  a,b
2723: 03          inc  bc
2724: 30 01       jr   nc,$2727
2726: 00          nop
2727: D7          rst  $10
2728: DD 21 EF 3E ld   ix,$3EEF
272C: CF          rst  $08
272D: DD 21 FE 3E ld   ix,$3EFE
2731: CF          rst  $08
2732: DD 21 7E 3F ld   ix,$3F7E
2736: CF          rst  $08
2737: DD 21 B9 3F ld   ix,$3FB9
273B: DF          rst  $18
273C: DD 21 CC 3F ld   ix,$3FCC
2740: DF          rst  $18
2741: 11 90 DA    ld   de,$DA90
2744: 01 40 0A    ld   bc,$0A40
2747: 21 20 D5    ld   hl,$D520
274A: CD B5 27    call $27B5
274D: 11 90 F3    ld   de,$F390
2750: 01 80 14    ld   bc,$1480
2753: CD B5 27    call $27B5
2756: 11 B0 F3    ld   de,$F3B0
2759: 06 14       ld   b,$14
275B: CD B5 27    call $27B5
275E: 3E 01       ld   a,$01
2760: 32 F7 DF    ld   ($DFF7),a
2763: 3E FC       ld   a,$FC
2765: 32 61 D0    ld   ($D061),a
2768: 3E FE       ld   a,$FE
276A: 32 DD D7    ld   ($D7DD),a
276D: CD 67 26    call $2667
2770: DD 21 0E F0 ld   ix,$F00E
2774: 06 0B       ld   b,$0B
2776: 0E 20       ld   c,$20
2778: DD 2B       dec  ix
277A: DD 2B       dec  ix
277C: DD 2B       dec  ix
277E: DD 2B       dec  ix
2780: CD 6F 26    call $266F
2783: 11 08 00    ld   de,$0008
2786: CD 97 27    call $2797
2789: 11 F8 FF    ld   de,$FFF8
278C: CD 97 27    call $2797
278F: 0D          dec  c
2790: 20 E6       jr   nz,$2778
2792: 0E 20       ld   c,$20
2794: 10 EA       djnz $2780
2796: C9          ret
2797: DD 6E 00    ld   l,(ix+$00)
279A: DD 66 01    ld   h,(ix+$01)
279D: 19          add  hl,de
279E: DD 75 00    ld   (ix+$00),l
27A1: DD 74 01    ld   (ix+$01),h
27A4: DD 23       inc  ix
27A6: DD 23       inc  ix
27A8: C9          ret
27A9: DD 21 57 37 ld   ix,$3757
27AD: DF          rst  $18
27AE: C9          ret
27AF: DD 21 5A 42 ld   ix,$425A
27B3: CF          rst  $08
27B4: C9          ret
27B5: C5          push bc
27B6: D5          push de
27B7: CD 47 0E    call $0E47
27BA: 1C          inc  e
27BB: 1C          inc  e
27BC: CD E1 27    call $27E1
27BF: 0E 03       ld   c,$03
27C1: CD 4E 26    call $264E
27C4: CD E1 27    call $27E1
27C7: ED 53 74 FF ld   ($FF74),de
27CB: 22 78 FF    ld   ($FF78),hl
27CE: CD B4 14    call $14B4
27D1: D1          pop  de
27D2: C1          pop  bc
27D3: 69          ld   l,c
27D4: 26 00       ld   h,$00
27D6: 19          add  hl,de
27D7: EB          ex   de,hl
27D8: 2A 78 FF    ld   hl,($FF78)
27DB: 2C          inc  l
27DC: 2C          inc  l
27DD: 23          inc  hl
27DE: 10 D5       djnz $27B5
27E0: C9          ret
27E1: 7A          ld   a,d
27E2: FE F0       cp   $F0
27E4: 3E 00       ld   a,$00
27E6: CE 01       adc  a,$01
27E8: 87          add  a,a
27E9: 83          add  a,e
27EA: 5F          ld   e,a
27EB: C9          ret
27EC: DD 21 14 44 ld   ix,$4414
27F0: CF          rst  $08
27F1: DD 21 84 42 ld   ix,$4284
27F5: CF          rst  $08
27F6: DD 21 56 49 ld   ix,$4956
27FA: 06 02       ld   b,$02
27FC: 21 90 DD    ld   hl,$DD90
27FF: CD B6 29    call $29B6
2802: 21 E7 D7    ld   hl,$D7E7
2805: C3 AD 14    jp   $14AD
2808: 21 10 D1    ld   hl,$D110
280B: DD 21 CB 44 ld   ix,$44CB
280F: 11 10 00    ld   de,$0010
2812: 06 02       ld   b,$02
2814: CD B6 29    call $29B6
2817: 3A FA D7    ld   a,($D7FA)
281A: 21 4E 01    ld   hl,$014E
281D: CD 60 28    call $2860
2820: 3A 04 D0    ld   a,($D004)
2823: 21 72 01    ld   hl,$0172
2826: CD 60 28    call $2860
2829: FD 21 5F D2 ld   iy,$D25F
282D: 21 8F DD    ld   hl,$DD8F
2830: 11 40 00    ld   de,$0040
2833: 06 16       ld   b,$16
2835: C5          push bc
2836: DD 21 56 49 ld   ix,$4956
283A: E5          push hl
283B: 06 02       ld   b,$02
283D: CD 6F 26    call $266F
2840: CD BD 29    call $29BD
2843: E1          pop  hl
2844: E5          push hl
2845: 06 01       ld   b,$01
2847: CD 6F 26    call $266F
284A: CD BD 29    call $29BD
284D: 06 10       ld   b,$10
284F: FD 7E 00    ld   a,(iy+$00)
2852: 77          ld   (hl),a
2853: 2B          dec  hl
2854: FD 2B       dec  iy
2856: 10 F7       djnz $284F
2858: E1          pop  hl
2859: A7          and  a
285A: ED 52       sbc  hl,de
285C: C1          pop  bc
285D: 10 D6       djnz $2835
285F: C9          ret
2860: 5E          ld   e,(hl)
2861: 2C          inc  l
2862: 56          ld   d,(hl)
2863: 2C          inc  l
2864: 4E          ld   c,(hl)
2865: 2C          inc  l
2866: 46          ld   b,(hl)
2867: C5          push bc
2868: 2C          inc  l
2869: 87          add  a,a
286A: 85          add  a,l
286B: 6F          ld   l,a
286C: 4E          ld   c,(hl)
286D: 2C          inc  l
286E: 46          ld   b,(hl)
286F: C5          push bc
2870: DD E1       pop  ix
2872: E1          pop  hl
2873: 42          ld   b,d
2874: 16 00       ld   d,$00
2876: C3 B6 29    jp   $29B6
2879: DD 21 FA 42 ld   ix,$42FA
287D: CF          rst  $08
287E: 3A FB D7    ld   a,($D7FB)
2881: CD 9E 26    call $269E
2884: DD 21 5E DB ld   ix,$DB5E
2888: A7          and  a
2889: C4 04 15    call nz,$1504
288C: 79          ld   a,c
288D: DD 21 62 DB ld   ix,$DB62
2891: CD 04 15    call $1504
2894: DD 21 AB 43 ld   ix,$43AB
2898: CF          rst  $08
2899: C9          ret
289A: DD 21 0E 44 ld   ix,$440E
289E: CF          rst  $08
289F: C9          ret
28A0: DD 21 3B 49 ld   ix,$493B
28A4: CF          rst  $08
28A5: C9          ret
28A6: CD 79 28    call $2879
28A9: DD 21 B5 41 ld   ix,$41B5
28AD: CF          rst  $08
28AE: DD 21 39 42 ld   ix,$4239
28B2: CF          rst  $08
28B3: 11 5A DE    ld   de,$DE5A
28B6: 21 FC D7    ld   hl,$D7FC
28B9: 0E 03       ld   c,$03
28BB: CD 4E 26    call $264E
28BE: 1C          inc  e
28BF: 1C          inc  e
28C0: ED 53 74 FF ld   ($FF74),de
28C4: 21 E3 D7    ld   hl,$D7E3
28C7: C3 B4 14    jp   $14B4
28CA: DD 21 77 37 ld   ix,$3777
28CE: DF          rst  $18
28CF: 21 9E F9    ld   hl,$F99E
28D2: 3E 0A       ld   a,$0A
28D4: 11 00 01    ld   de,$0100
28D7: 06 04       ld   b,$04
28D9: 0E 08       ld   c,$08
28DB: E5          push hl
28DC: 77          ld   (hl),a
28DD: 3C          inc  a
28DE: 23          inc  hl
28DF: 36 24       ld   (hl),$24
28E1: 23          inc  hl
28E2: 36 FF       ld   (hl),$FF
28E4: 23          inc  hl
28E5: 23          inc  hl
28E6: 0D          dec  c
28E7: 20 F3       jr   nz,$28DC
28E9: E1          pop  hl
28EA: 19          add  hl,de
28EB: 10 EC       djnz $28D9
28ED: DD 21 E1 37 ld   ix,$37E1
28F1: DF          rst  $18
28F2: C9          ret
28F3: DD 21 48 40 ld   ix,$4048
28F7: DF          rst  $18
28F8: 3A D8 D7    ld   a,($D7D8)
28FB: 32 B4 F6    ld   ($F6B4),a
28FE: 3D          dec  a
28FF: C8          ret  z
2900: 3E 1C       ld   a,$1C
2902: 32 C0 F6    ld   ($F6C0),a
2905: C9          ret
2906: DD 21 96 40 ld   ix,$4096
290A: DF          rst  $18
290B: 3A D9 D7    ld   a,($D7D9)
290E: 32 B4 F8    ld   ($F8B4),a
2911: 3D          dec  a
2912: 28 DF       jr   z,$28F3
2914: 3E 1C       ld   a,$1C
2916: 32 C0 F8    ld   ($F8C0),a
2919: 18 D8       jr   $28F3
291B: DD 21 B8 40 ld   ix,$40B8
291F: DF          rst  $18
2920: C9          ret
2921: DD 21 09 40 ld   ix,$4009
2925: DB 03       in   a,($03)
2927: 07          rlca
2928: DA 18 00    jp   c,$0018
292B: DD 21 28 40 ld   ix,$4028
292F: DF          rst  $18
2930: C9          ret
2931: DD 21 C7 40 ld   ix,$40C7
2935: DF          rst  $18
2936: C9          ret
2937: DD 21 0A 41 ld   ix,$410A
293B: DF          rst  $18
293C: DD 21 E9 40 ld   ix,$40E9
2940: DF          rst  $18
2941: C9          ret
2942: DD 21 37 41 ld   ix,$4137
2946: DF          rst  $18
2947: 18 F3       jr   $293C
2949: DD 21 47 41 ld   ix,$4147
294D: DF          rst  $18
294E: C9          ret
294F: DD 21 F2 37 ld   ix,$37F2
2953: DF          rst  $18
2954: 21 E8 00    ld   hl,$00E8
2957: 3A 04 D0    ld   a,($D004)
295A: CD 60 28    call $2860
295D: CD 73 29    call $2973
2960: 3E 05       ld   a,$05
2962: 21 82 01    ld   hl,$0182
2965: CA 60 28    jp   z,$2860
2968: 3A FA D7    ld   a,($D7FA)
296B: C3 60 28    jp   $2860
296E: 2A 32 D9    ld   hl,($D932)
2971: 18 03       jr   $2976
2973: 2A 02 D9    ld   hl,($D902)
2976: 11 5D 29    ld   de,$295D
2979: A7          and  a
297A: ED 52       sbc  hl,de
297C: C9          ret
297D: DD 21 FC 39 ld   ix,$39FC
2981: DF          rst  $18
2982: 3E 05       ld   a,$05
2984: CD 8D 29    call $298D
2987: DD 21 92 3C ld   ix,$3C92
298B: DF          rst  $18
298C: C9          ret
298D: 5F          ld   e,a
298E: 16 00       ld   d,$00
2990: 21 C9 3C    ld   hl,$3CC9
2993: 19          add  hl,de
2994: 46          ld   b,(hl)
2995: 23          inc  hl
2996: 5E          ld   e,(hl)
2997: 23          inc  hl
2998: 56          ld   d,(hl)
2999: 23          inc  hl
299A: 7E          ld   a,(hl)
299B: 23          inc  hl
299C: 66          ld   h,(hl)
299D: 6F          ld   l,a
299E: 2B          dec  hl
299F: D5          push de
29A0: DD E1       pop  ix
29A2: 11 80 00    ld   de,$0080
29A5: 18 16       jr   $29BD
29A7: DD 6E 00    ld   l,(ix+$00)
29AA: DD 23       inc  ix
29AC: DD 66 00    ld   h,(ix+$00)
29AF: DD 23       inc  ix
29B1: DD 46 00    ld   b,(ix+$00)
29B4: DD 23       inc  ix
29B6: 2B          dec  hl
29B7: 18 04       jr   $29BD
29B9: D9          exx
29BA: 19          add  hl,de
29BB: 05          dec  b
29BC: C8          ret  z
29BD: E5          push hl
29BE: D9          exx
29BF: E1          pop  hl
29C0: DD 7E 00    ld   a,(ix+$00)
29C3: DD 23       inc  ix
29C5: A7          and  a
29C6: 28 F1       jr   z,$29B9
29C8: 5F          ld   e,a
29C9: FA 3C 2A    jp   m,$2A3C
29CC: FE 40       cp   $40
29CE: 30 40       jr   nc,$2A10
29D0: E6 0F       and  $0F
29D2: 28 21       jr   z,$29F5
29D4: 47          ld   b,a
29D5: 7B          ld   a,e
29D6: 0F          rrca
29D7: 2F          cpl
29D8: E6 08       and  $08
29DA: C6 13       add  a,$13
29DC: 32 66 FF    ld   ($FF66),a
29DF: DD 5E 00    ld   e,(ix+$00)
29E2: DD 23       inc  ix
29E4: DD 56 00    ld   d,(ix+$00)
29E7: 4A          ld   c,d
29E8: DD 23       inc  ix
29EA: 72          ld   (hl),d
29EB: 2D          dec  l
29EC: 73          ld   (hl),e
29ED: 2D          dec  l
29EE: CD 66 FF    call $FF66
29F1: 10 F7       djnz $29EA
29F3: 18 CB       jr   $29C0
29F5: CB 63       bit  4,e
29F7: 20 07       jr   nz,$2A00
29F9: DD 4E 00    ld   c,(ix+$00)
29FC: DD 23       inc  ix
29FE: 18 C0       jr   $29C0
2A00: DD 5E 00    ld   e,(ix+$00)
2A03: DD 23       inc  ix
2A05: DD 56 00    ld   d,(ix+$00)
2A08: DD 21 00 00 ld   ix,$0000
2A0C: DD 19       add  ix,de
2A0E: 18 B0       jr   $29C0
2A10: E6 0F       and  $0F
2A12: 47          ld   b,a
2A13: 7B          ld   a,e
2A14: FE 60       cp   $60
2A16: 30 11       jr   nc,$2A29
2A18: FE 50       cp   $50
2A1A: DD 4E 00    ld   c,(ix+$00)
2A1D: DD 23       inc  ix
2A1F: 2D          dec  l
2A20: 71          ld   (hl),c
2A21: 2D          dec  l
2A22: 0D          dec  c
2A23: 10 FA       djnz $2A1F
2A25: 30 92       jr   nc,$29B9
2A27: 18 97       jr   $29C0
2A29: FE 70       cp   $70
2A2B: DD 4E 00    ld   c,(ix+$00)
2A2E: DD 23       inc  ix
2A30: 2D          dec  l
2A31: 71          ld   (hl),c
2A32: 2D          dec  l
2A33: 0C          inc  c
2A34: 10 FA       djnz $2A30
2A36: D2 B9 29    jp   nc,$29B9
2A39: C3 C0 29    jp   $29C0
2A3C: E6 0F       and  $0F
2A3E: 47          ld   b,a
2A3F: CB 73       bit  6,e
2A41: 20 1E       jr   nz,$2A61
2A43: CB 63       bit  4,e
2A45: 20 07       jr   nz,$2A4E
2A47: 7D          ld   a,l
2A48: 90          sub  b
2A49: 90          sub  b
2A4A: 6F          ld   l,a
2A4B: C3 C0 29    jp   $29C0
2A4E: DD 4E 01    ld   c,(ix+$01)
2A51: 71          ld   (hl),c
2A52: 2D          dec  l
2A53: DD 5E 00    ld   e,(ix+$00)
2A56: 73          ld   (hl),e
2A57: 2D          dec  l
2A58: DD 23       inc  ix
2A5A: DD 23       inc  ix
2A5C: 10 F0       djnz $2A4E
2A5E: C3 C0 29    jp   $29C0
2A61: CB 6B       bit  5,e
2A63: 20 0E       jr   nz,$2A73
2A65: 71          ld   (hl),c
2A66: 2D          dec  l
2A67: DD 5E 00    ld   e,(ix+$00)
2A6A: DD 23       inc  ix
2A6C: 73          ld   (hl),e
2A6D: 2D          dec  l
2A6E: 10 F5       djnz $2A65
2A70: C3 C0 29    jp   $29C0
2A73: DD 5E 00    ld   e,(ix+$00)
2A76: DD 23       inc  ix
2A78: 71          ld   (hl),c
2A79: 2D          dec  l
2A7A: 73          ld   (hl),e
2A7B: 2D          dec  l
2A7C: 10 FA       djnz $2A78
2A7E: C3 C0 29    jp   $29C0
2A81: FF          rst  $38
2A82: FF          rst  $38
2A83: FF          rst  $38
2A84: FF          rst  $38
2A85: FF          rst  $38
2A86: FF          rst  $38
2A87: FF          rst  $38
2A88: FF          rst  $38
2A89: FF          rst  $38
2A8A: FF          rst  $38
2A8B: FF          rst  $38
2A8C: FF          rst  $38
2A8D: FF          rst  $38
2A8E: FF          rst  $38
2A8F: FF          rst  $38
2A90: FF          rst  $38
2A91: FF          rst  $38
2A92: FF          rst  $38
2A93: FF          rst  $38
2A94: FF          rst  $38
2A95: FF          rst  $38
2A96: FF          rst  $38
2A97: FF          rst  $38
2A98: FF          rst  $38
2A99: FF          rst  $38
2A9A: FF          rst  $38
2A9B: FF          rst  $38
2A9C: FF          rst  $38
2A9D: FF          rst  $38
2A9E: FF          rst  $38
2A9F: FF          rst  $38
2AA0: FF          rst  $38
2AA1: FF          rst  $38
2AA2: FF          rst  $38
2AA3: FF          rst  $38
2AA4: FF          rst  $38
2AA5: FF          rst  $38
2AA6: FF          rst  $38
2AA7: FF          rst  $38
2AA8: FF          rst  $38
2AA9: FF          rst  $38
2AAA: FF          rst  $38
2AAB: FF          rst  $38
2AAC: FF          rst  $38
2AAD: FF          rst  $38
2AAE: FF          rst  $38
2AAF: FF          rst  $38
2AB0: FF          rst  $38
2AB1: FF          rst  $38
2AB2: FF          rst  $38
2AB3: FF          rst  $38
2AB4: FF          rst  $38
2AB5: FF          rst  $38
2AB6: FF          rst  $38
2AB7: FF          rst  $38
2AB8: FF          rst  $38
2AB9: FF          rst  $38
2ABA: FF          rst  $38
2ABB: FF          rst  $38
2ABC: FF          rst  $38
2ABD: FF          rst  $38
2ABE: FF          rst  $38
2ABF: FF          rst  $38
2AC0: FF          rst  $38
2AC1: FF          rst  $38
2AC2: FF          rst  $38
2AC3: FF          rst  $38
2AC4: FF          rst  $38
2AC5: FF          rst  $38
2AC6: FF          rst  $38
2AC7: FF          rst  $38
2AC8: FF          rst  $38
2AC9: FF          rst  $38
2ACA: FF          rst  $38
2ACB: FF          rst  $38
2ACC: FF          rst  $38
2ACD: FF          rst  $38
2ACE: FF          rst  $38
2ACF: FF          rst  $38
2AD0: FF          rst  $38
2AD1: FF          rst  $38
2AD2: FF          rst  $38
2AD3: FF          rst  $38
2AD4: FF          rst  $38
2AD5: FF          rst  $38
2AD6: FF          rst  $38
2AD7: FF          rst  $38
2AD8: FF          rst  $38
2AD9: FF          rst  $38
2ADA: FF          rst  $38
2ADB: FF          rst  $38
2ADC: FF          rst  $38
2ADD: FF          rst  $38
2ADE: FF          rst  $38
2ADF: FF          rst  $38
2AE0: FF          rst  $38
2AE1: FF          rst  $38
2AE2: FF          rst  $38
2AE3: FF          rst  $38
2AE4: FF          rst  $38
2AE5: FF          rst  $38
2AE6: FF          rst  $38
2AE7: FF          rst  $38
2AE8: FF          rst  $38
2AE9: FF          rst  $38
2AEA: FF          rst  $38
2AEB: FF          rst  $38
2AEC: FF          rst  $38
2AED: FF          rst  $38
2AEE: FF          rst  $38
2AEF: FF          rst  $38
2AF0: FF          rst  $38
2AF1: FF          rst  $38
2AF2: FF          rst  $38
2AF3: FF          rst  $38
2AF4: FF          rst  $38
2AF5: FF          rst  $38
2AF6: FF          rst  $38
2AF7: FF          rst  $38
2AF8: FF          rst  $38
2AF9: FF          rst  $38
2AFA: FF          rst  $38
2AFB: FF          rst  $38
2AFC: FF          rst  $38
2AFD: FF          rst  $38
2AFE: FF          rst  $38
2AFF: FF          rst  $38
2B00: FF          rst  $38
2B01: FF          rst  $38
2B02: FF          rst  $38
2B03: FF          rst  $38
2B04: FF          rst  $38
2B05: FF          rst  $38
2B06: FF          rst  $38
2B07: FF          rst  $38
2B08: FF          rst  $38
2B09: FF          rst  $38
2B0A: FF          rst  $38
2B0B: FF          rst  $38
2B0C: FF          rst  $38
2B0D: FF          rst  $38
2B0E: FF          rst  $38
2B0F: FF          rst  $38
2B10: FF          rst  $38
2B11: FF          rst  $38
2B12: FF          rst  $38
2B13: FF          rst  $38
2B14: FF          rst  $38
2B15: FF          rst  $38
2B16: FF          rst  $38
2B17: FF          rst  $38
2B18: FF          rst  $38
2B19: FF          rst  $38
2B1A: FF          rst  $38
2B1B: FF          rst  $38
2B1C: FF          rst  $38
2B1D: FF          rst  $38
2B1E: FF          rst  $38
2B1F: FF          rst  $38
2B20: FF          rst  $38
2B21: FF          rst  $38
2B22: FF          rst  $38
2B23: FF          rst  $38
2B24: FF          rst  $38
2B25: FF          rst  $38
2B26: FF          rst  $38
2B27: FF          rst  $38
2B28: FF          rst  $38
2B29: FF          rst  $38
2B2A: FF          rst  $38
2B2B: FF          rst  $38
2B2C: FF          rst  $38
2B2D: FF          rst  $38
2B2E: FF          rst  $38
2B2F: FF          rst  $38
2B30: FF          rst  $38
2B31: FF          rst  $38
2B32: FF          rst  $38
2B33: FF          rst  $38
2B34: FF          rst  $38
2B35: FF          rst  $38
2B36: FF          rst  $38
2B37: FF          rst  $38
2B38: FF          rst  $38
2B39: FF          rst  $38
2B3A: FF          rst  $38
2B3B: FF          rst  $38
2B3C: FF          rst  $38
2B3D: FF          rst  $38
2B3E: FF          rst  $38
2B3F: FF          rst  $38
2B40: FF          rst  $38
2B41: FF          rst  $38
2B42: FF          rst  $38
2B43: FF          rst  $38
2B44: FF          rst  $38
2B45: FF          rst  $38
2B46: FF          rst  $38
2B47: FF          rst  $38
2B48: FF          rst  $38
2B49: FF          rst  $38
2B4A: FF          rst  $38
2B4B: FF          rst  $38
2B4C: FF          rst  $38
2B4D: FF          rst  $38
2B4E: FF          rst  $38
2B4F: FF          rst  $38
2B50: FF          rst  $38
2B51: FF          rst  $38
2B52: FF          rst  $38
2B53: FF          rst  $38
2B54: FF          rst  $38
2B55: FF          rst  $38
2B56: FF          rst  $38
2B57: FF          rst  $38
2B58: FF          rst  $38
2B59: FF          rst  $38
2B5A: FF          rst  $38
2B5B: FF          rst  $38
2B5C: FF          rst  $38
2B5D: FF          rst  $38
2B5E: FF          rst  $38
2B5F: FF          rst  $38
2B60: FF          rst  $38
2B61: FF          rst  $38
2B62: FF          rst  $38
2B63: FF          rst  $38
2B64: FF          rst  $38
2B65: FF          rst  $38
2B66: FF          rst  $38
2B67: FF          rst  $38
2B68: FF          rst  $38
2B69: FF          rst  $38
2B6A: FF          rst  $38
2B6B: FF          rst  $38
2B6C: FF          rst  $38
2B6D: FF          rst  $38
2B6E: FF          rst  $38
2B6F: FF          rst  $38
2B70: FF          rst  $38
2B71: FF          rst  $38
2B72: FF          rst  $38
2B73: FF          rst  $38
2B74: FF          rst  $38
2B75: FF          rst  $38
2B76: FF          rst  $38
2B77: FF          rst  $38
2B78: FF          rst  $38
2B79: FF          rst  $38
2B7A: FF          rst  $38
2B7B: FF          rst  $38
2B7C: FF          rst  $38
2B7D: FF          rst  $38
2B7E: FF          rst  $38
2B7F: FF          rst  $38
2B80: FF          rst  $38
2B81: FF          rst  $38
2B82: FF          rst  $38
2B83: FF          rst  $38
2B84: FF          rst  $38
2B85: FF          rst  $38
2B86: FF          rst  $38
2B87: FF          rst  $38
2B88: FF          rst  $38
2B89: FF          rst  $38
2B8A: FF          rst  $38
2B8B: FF          rst  $38
2B8C: FF          rst  $38
2B8D: FF          rst  $38
2B8E: FF          rst  $38
2B8F: FF          rst  $38
2B90: FF          rst  $38
2B91: FF          rst  $38
2B92: FF          rst  $38
2B93: FF          rst  $38
2B94: FF          rst  $38
2B95: FF          rst  $38
2B96: FF          rst  $38
2B97: FF          rst  $38
2B98: FF          rst  $38
2B99: FF          rst  $38
2B9A: FF          rst  $38
2B9B: FF          rst  $38
2B9C: FF          rst  $38
2B9D: FF          rst  $38
2B9E: FF          rst  $38
2B9F: FF          rst  $38
2BA0: FF          rst  $38
2BA1: FF          rst  $38
2BA2: FF          rst  $38
2BA3: FF          rst  $38
2BA4: FF          rst  $38
2BA5: FF          rst  $38
2BA6: FF          rst  $38
2BA7: FF          rst  $38
2BA8: FF          rst  $38
2BA9: FF          rst  $38
2BAA: FF          rst  $38
2BAB: FF          rst  $38
2BAC: FF          rst  $38
2BAD: FF          rst  $38
2BAE: FF          rst  $38
2BAF: FF          rst  $38
2BB0: FF          rst  $38
2BB1: FF          rst  $38
2BB2: FF          rst  $38
2BB3: FF          rst  $38
2BB4: FF          rst  $38
2BB5: FF          rst  $38
2BB6: FF          rst  $38
2BB7: FF          rst  $38
2BB8: FF          rst  $38
2BB9: FF          rst  $38
2BBA: FF          rst  $38
2BBB: FF          rst  $38
2BBC: FF          rst  $38
2BBD: FF          rst  $38
2BBE: FF          rst  $38
2BBF: FF          rst  $38
2BC0: FF          rst  $38
2BC1: FF          rst  $38
2BC2: FF          rst  $38
2BC3: FF          rst  $38
2BC4: FF          rst  $38
2BC5: FF          rst  $38
2BC6: FF          rst  $38
2BC7: FF          rst  $38
2BC8: FF          rst  $38
2BC9: FF          rst  $38
2BCA: FF          rst  $38
2BCB: FF          rst  $38
2BCC: FF          rst  $38
2BCD: FF          rst  $38
2BCE: FF          rst  $38
2BCF: FF          rst  $38
2BD0: FF          rst  $38
2BD1: FF          rst  $38
2BD2: FF          rst  $38
2BD3: FF          rst  $38
2BD4: FF          rst  $38
2BD5: FF          rst  $38
2BD6: FF          rst  $38
2BD7: FF          rst  $38
2BD8: FF          rst  $38
2BD9: FF          rst  $38
2BDA: FF          rst  $38
2BDB: FF          rst  $38
2BDC: FF          rst  $38
2BDD: FF          rst  $38
2BDE: FF          rst  $38
2BDF: FF          rst  $38
2BE0: FF          rst  $38
2BE1: FF          rst  $38
2BE2: FF          rst  $38
2BE3: FF          rst  $38
2BE4: FF          rst  $38
2BE5: FF          rst  $38
2BE6: FF          rst  $38
2BE7: FF          rst  $38
2BE8: FF          rst  $38
2BE9: FF          rst  $38
2BEA: FF          rst  $38
2BEB: FF          rst  $38
2BEC: FF          rst  $38
2BED: FF          rst  $38
2BEE: FF          rst  $38
2BEF: FF          rst  $38
2BF0: FF          rst  $38
2BF1: FF          rst  $38
2BF2: FF          rst  $38
2BF3: FF          rst  $38
2BF4: FF          rst  $38
2BF5: FF          rst  $38
2BF6: FF          rst  $38
2BF7: FF          rst  $38
2BF8: FF          rst  $38
2BF9: FF          rst  $38
2BFA: FF          rst  $38
2BFB: FF          rst  $38
2BFC: FF          rst  $38
2BFD: FF          rst  $38
2BFE: FF          rst  $38
2BFF: FF          rst  $38
2C00: 3A 41 D0    ld   a,($D041)
2C03: FE 0C       cp   $0C
2C05: C8          ret  z
2C06: DB 01       in   a,($01)
2C08: 08          ex   af,af'
2C09: DB 00       in   a,($00)
2C0B: 21 12 D0    ld   hl,$D012
2C0E: E6 0F       and  $0F
2C10: 28 0F       jr   z,$2C21
2C12: BE          cp   (hl)
2C13: 20 08       jr   nz,$2C1D
2C15: 2C          inc  l
2C16: 35          dec  (hl)
2C17: 20 0E       jr   nz,$2C27
2C19: 2C          inc  l
2C1A: 77          ld   (hl),a
2C1B: 18 0A       jr   $2C27
2C1D: 77          ld   (hl),a
2C1E: 2C          inc  l
2C1F: 18 04       jr   $2C25
2C21: 2C          inc  l
2C22: 2C          inc  l
2C23: 77          ld   (hl),a
2C24: 2D          dec  l
2C25: 36 03       ld   (hl),$03
2C27: 11 42 D0    ld   de,$D042
2C2A: 1A          ld   a,(de)
2C2B: 1D          dec  e
2C2C: E6 03       and  $03
2C2E: 28 0A       jr   z,$2C3A
2C30: 3D          dec  a
2C31: C0          ret  nz
2C32: 1A          ld   a,(de)
2C33: FE 0A       cp   $0A
2C35: C8          ret  z
2C36: FE 0B       cp   $0B
2C38: C8          ret  z
2C39: 37          scf
2C3A: 08          ex   af,af'
2C3B: E6 0F       and  $0F
2C3D: 2E 10       ld   l,$10
2C3F: BE          cp   (hl)
2C40: 28 22       jr   z,$2C64
2C42: 77          ld   (hl),a
2C43: 2C          inc  l
2C44: 36 02       ld   (hl),$02
2C46: 18 5D       jr   $2CA5
2C48: 1A          ld   a,(de)
2C49: E6 01       and  $01
2C4B: 1C          inc  e
2C4C: 12          ld   (de),a
2C4D: 1C          inc  e
2C4E: 36 02       ld   (hl),$02
2C50: 3C          inc  a
2C51: 18 4A       jr   $2C9D
2C53: 36 01       ld   (hl),$01
2C55: 08          ex   af,af'
2C56: FE 04       cp   $04
2C58: 38 4B       jr   c,$2CA5
2C5A: 3E 01       ld   a,$01
2C5C: 28 01       jr   z,$2C5F
2C5E: 3D          dec  a
2C5F: 1D          dec  e
2C60: 12          ld   (de),a
2C61: 1C          inc  e
2C62: 18 41       jr   $2CA5
2C64: 2C          inc  l
2C65: 35          dec  (hl)
2C66: 20 3D       jr   nz,$2CA5
2C68: 08          ex   af,af'
2C69: 38 E8       jr   c,$2C53
2C6B: 1A          ld   a,(de)
2C6C: 1D          dec  e
2C6D: 47          ld   b,a
2C6E: E6 FE       and  $FE
2C70: 20 D6       jr   nz,$2C48
2C72: 78          ld   a,b
2C73: 12          ld   (de),a
2C74: 1C          inc  e
2C75: 08          ex   af,af'
2C76: A7          and  a
2C77: 28 2C       jr   z,$2CA5
2C79: CD F9 2C    call $2CF9
2C7C: 20 27       jr   nz,$2CA5
2C7E: 08          ex   af,af'
2C7F: 21 DF 2C    ld   hl,$2CDF
2C82: 87          add  a,a
2C83: 4F          ld   c,a
2C84: 06 00       ld   b,$00
2C86: 09          add  hl,bc
2C87: 7E          ld   a,(hl)
2C88: 23          inc  hl
2C89: 12          ld   (de),a
2C8A: E6 FE       and  $FE
2C8C: 20 0D       jr   nz,$2C9B
2C8E: 1A          ld   a,(de)
2C8F: 1D          dec  e
2C90: 12          ld   (de),a
2C91: 1C          inc  e
2C92: 1C          inc  e
2C93: 7E          ld   a,(hl)
2C94: 32 30 D0    ld   ($D030),a
2C97: EB          ex   de,hl
2C98: CB C6       set  0,(hl)
2C9A: C9          ret
2C9B: 1C          inc  e
2C9C: 7E          ld   a,(hl)
2C9D: 32 30 D0    ld   ($D030),a
2CA0: EB          ex   de,hl
2CA1: CB C6       set  0,(hl)
2CA3: EB          ex   de,hl
2CA4: 1D          dec  e
2CA5: 1A          ld   a,(de)
2CA6: E6 FE       and  $FE
2CA8: C0          ret  nz
2CA9: 3A 16 D0    ld   a,($D016)
2CAC: A7          and  a
2CAD: C0          ret  nz
2CAE: 21 14 D0    ld   hl,$D014
2CB1: 7E          ld   a,(hl)
2CB2: A7          and  a
2CB3: C8          ret  z
2CB4: CD F9 2C    call $2CF9
2CB7: C0          ret  nz
2CB8: 1A          ld   a,(de)
2CB9: 06 00       ld   b,$00
2CBB: 70          ld   (hl),b
2CBC: 4F          ld   c,a
2CBD: 08          ex   af,af'
2CBE: FE 01       cp   $01
2CC0: 20 08       jr   nz,$2CCA
2CC2: 08          ex   af,af'
2CC3: 3A 15 D0    ld   a,($D015)
2CC6: A7          and  a
2CC7: 28 13       jr   z,$2CDC
2CC9: 08          ex   af,af'
2CCA: 21 E5 2C    ld   hl,$2CE5
2CCD: 87          add  a,a
2CCE: 81          add  a,c
2CCF: 87          add  a,a
2CD0: 4F          ld   c,a
2CD1: 09          add  hl,bc
2CD2: ED A0       ldi
2CD4: EB          ex   de,hl
2CD5: CB C6       set  0,(hl)
2CD7: 1A          ld   a,(de)
2CD8: 32 30 D0    ld   ($D030),a
2CDB: C9          ret
2CDC: 08          ex   af,af'
2CDD: C6 02       add  a,$02
2CDF: 18 E9       jr   $2CCA
2CE1: 00          nop
2CE2: 01 01 02    ld   bc,$0201
2CE5: 0B          dec  bc
2CE6: 08          ex   af,af'
2CE7: 0A          ld   a,(bc)
2CE8: 07          rlca
2CE9: 05          dec  b
2CEA: 0F          rrca
2CEB: 09          add  hl,bc
2CEC: 10 02       djnz $2CF0
2CEE: 0B          dec  bc
2CEF: 06 0D       ld   b,$0D
2CF1: 04          inc  b
2CF2: 09          add  hl,bc
2CF3: 08          ex   af,af'
2CF4: 0A          ld   a,(bc)
2CF5: 03          inc  bc
2CF6: 0C          inc  c
2CF7: 07          rlca
2CF8: 0E D9       ld   c,$D9
2CFA: 01 00 04    ld   bc,$0400
2CFD: 1F          rra
2CFE: 30 02       jr   nc,$2D02
2D00: 0C          inc  c
2D01: 50          ld   d,b
2D02: 10 F9       djnz $2CFD
2D04: 7A          ld   a,d
2D05: 08          ex   af,af'
2D06: 79          ld   a,c
2D07: FE 01       cp   $01
2D09: D9          exx
2D0A: C9          ret
2D0B: 3E 01       ld   a,$01
2D0D: 18 70       jr   $2D7F
2D0F: 3E 01       ld   a,$01
2D11: C3 96 2D    jp   $2D96
2D14: FE 1A       cp   $1A
2D16: DA EB 2D    jp   c,$2DEB
2D19: 78          ld   a,b
2D1A: E6 07       and  $07
2D1C: C2 EB 2D    jp   nz,$2DEB
2D1F: CB 58       bit  3,b
2D21: 3E 18       ld   a,$18
2D23: 20 02       jr   nz,$2D27
2D25: 3E 30       ld   a,$30
2D27: 32 15 D0    ld   ($D015),a
2D2A: 4F          ld   c,a
2D2B: 3E 1A       ld   a,$1A
2D2D: C3 B6 2D    jp   $2DB6
2D30: 20 F3       jr   nz,$2D25
2D32: CB 7A       bit  7,d
2D34: 20 EF       jr   nz,$2D25
2D36: 3E 06       ld   a,$06
2D38: 32 93 D0    ld   ($D093),a
2D3B: ED 5F       ld   a,r
2D3D: E6 02       and  $02
2D3F: C6 1A       add  a,$1A
2D41: CD 28 12    call $1228
2D44: 0E 0A       ld   c,$0A
2D46: CD B8 0B    call $0BB8
2D49: 18 DA       jr   $2D25
2D4B: 2C          inc  l
2D4C: 7E          ld   a,(hl)
2D4D: 18 48       jr   $2D97
2D4F: 3D          dec  a
2D50: 18 11       jr   $2D63
2D52: ED 73 76 FF ld   ($FF76),sp
2D56: 3A D1 D7    ld   a,($D7D1)
2D59: 47          ld   b,a
2D5A: 2A 02 D0    ld   hl,($D002)
2D5D: 7C          ld   a,h
2D5E: A7          and  a
2D5F: 20 EE       jr   nz,$2D4F
2D61: 37          scf
2D62: 7D          ld   a,l
2D63: 32 03 D0    ld   ($D003),a
2D66: 21 67 D0    ld   hl,$D067
2D69: 7E          ld   a,(hl)
2D6A: CE 00       adc  a,$00
2D6C: 36 00       ld   (hl),$00
2D6E: 28 10       jr   z,$2D80
2D70: 2C          inc  l
2D71: 4E          ld   c,(hl)
2D72: 2C          inc  l
2D73: 86          add  a,(hl)
2D74: 28 95       jr   z,$2D0B
2D76: FA 0B 2D    jp   m,$2D0B
2D79: 38 04       jr   c,$2D7F
2D7B: B9          cp   c
2D7C: 38 01       jr   c,$2D7F
2D7E: 7E          ld   a,(hl)
2D7F: 77          ld   (hl),a
2D80: 2E 47       ld   l,$47
2D82: 7E          ld   a,(hl)
2D83: A7          and  a
2D84: 28 C5       jr   z,$2D4B
2D86: 36 00       ld   (hl),$00
2D88: 2C          inc  l
2D89: 86          add  a,(hl)
2D8A: CA 0F 2D    jp   z,$2D0F
2D8D: FA 0F 2D    jp   m,$2D0F
2D90: FE 1E       cp   $1E
2D92: 38 02       jr   c,$2D96
2D94: 3E 1E       ld   a,$1E
2D96: 77          ld   (hl),a
2D97: 2C          inc  l
2D98: BE          cp   (hl)
2D99: CA 14 2D    jp   z,$2D14
2D9C: 11 01 FF    ld   de,$FF01
2D9F: 38 03       jr   c,$2DA4
2DA1: 11 07 01    ld   de,$0107
2DA4: 78          ld   a,b
2DA5: A3          and  e
2DA6: 20 43       jr   nz,$2DEB
2DA8: 7E          ld   a,(hl)
2DA9: 82          add  a,d
2DAA: 77          ld   (hl),a
2DAB: FE 1A       cp   $1A
2DAD: D2 30 2D    jp   nc,$2D30
2DB0: AF          xor  a
2DB1: 32 15 D0    ld   ($D015),a
2DB4: 4F          ld   c,a
2DB5: 7E          ld   a,(hl)
2DB6: 87          add  a,a
2DB7: 47          ld   b,a
2DB8: 87          add  a,a
2DB9: 87          add  a,a
2DBA: 5F          ld   e,a
2DBB: 16 00       ld   d,$00
2DBD: 21 BC 00    ld   hl,$00BC
2DC0: 19          add  hl,de
2DC1: 22 04 F0    ld   ($F004),hl
2DC4: 22 06 F0    ld   ($F006),hl
2DC7: 58          ld   e,b
2DC8: 21 4C F1    ld   hl,$F14C
2DCB: 19          add  hl,de
2DCC: F9          ld   sp,hl
2DCD: 59          ld   e,c
2DCE: 21 4D 2E    ld   hl,$2E4D
2DD1: 19          add  hl,de
2DD2: 06 06       ld   b,$06
2DD4: 5E          ld   e,(hl)
2DD5: 23          inc  hl
2DD6: 56          ld   d,(hl)
2DD7: 23          inc  hl
2DD8: D5          push de
2DD9: 10 F9       djnz $2DD4
2DDB: EB          ex   de,hl
2DDC: 21 8C 00    ld   hl,$008C
2DDF: 39          add  hl,sp
2DE0: F9          ld   sp,hl
2DE1: EB          ex   de,hl
2DE2: 06 06       ld   b,$06
2DE4: 5E          ld   e,(hl)
2DE5: 23          inc  hl
2DE6: 56          ld   d,(hl)
2DE7: 23          inc  hl
2DE8: D5          push de
2DE9: 10 F9       djnz $2DE4
2DEB: 3A D1 D7    ld   a,($D7D1)
2DEE: 0F          rrca
2DEF: 38 0B       jr   c,$2DFC
2DF1: 21 24 D0    ld   hl,$D024
2DF4: 11 9C DE    ld   de,$DE9C
2DF7: 01 02 84    ld   bc,$8402
2DFA: 18 09       jr   $2E05
2DFC: 21 22 D0    ld   hl,$D022
2DFF: 11 A6 DE    ld   de,$DEA6
2E02: 01 FE 04    ld   bc,$04FE
2E05: 7E          ld   a,(hl)
2E06: 2C          inc  l
2E07: BE          cp   (hl)
2E08: 28 3E       jr   z,$2E48
2E0A: 38 03       jr   c,$2E0F
2E0C: 34          inc  (hl)
2E0D: 18 01       jr   $2E10
2E0F: 35          dec  (hl)
2E10: 08          ex   af,af'
2E11: 7E          ld   a,(hl)
2E12: 6F          ld   l,a
2E13: CB 3D       srl  l
2E15: CB 3D       srl  l
2E17: CB 85       res  0,l
2E19: 26 00       ld   h,$00
2E1B: CB 78       bit  7,b
2E1D: 20 03       jr   nz,$2E22
2E1F: 19          add  hl,de
2E20: 18 04       jr   $2E26
2E22: EB          ex   de,hl
2E23: A7          and  a
2E24: ED 52       sbc  hl,de
2E26: E6 07       and  $07
2E28: 20 10       jr   nz,$2E3A
2E2A: 08          ex   af,af'
2E2B: 3E 00       ld   a,$00
2E2D: 38 0B       jr   c,$2E3A
2E2F: 59          ld   e,c
2E30: CB 79       bit  7,c
2E32: 16 00       ld   d,$00
2E34: 28 01       jr   z,$2E37
2E36: 15          dec  d
2E37: 19          add  hl,de
2E38: 3E 08       ld   a,$08
2E3A: C6 F3       add  a,$F3
2E3C: 4F          ld   c,a
2E3D: 11 40 00    ld   de,$0040
2E40: F9          ld   sp,hl
2E41: C5          push bc
2E42: 19          add  hl,de
2E43: F9          ld   sp,hl
2E44: C5          push bc
2E45: 19          add  hl,de
2E46: F9          ld   sp,hl
2E47: C5          push bc
2E48: ED 7B 76 FF ld   sp,($FF76)
2E4C: C9          ret
2E4D: FF          rst  $38
2E4E: 1D          dec  e
2E4F: 07          rlca
2E50: 1D          dec  e
2E51: 06 1D       ld   b,$1D
2E53: 05          dec  b
2E54: 1D          dec  e
2E55: 04          inc  b
2E56: 1D          dec  e
2E57: FF          rst  $38
2E58: 1D          dec  e
2E59: FF          rst  $38
2E5A: 1D          dec  e
2E5B: 14          inc  d
2E5C: 1D          dec  e
2E5D: 13          inc  de
2E5E: 1D          dec  e
2E5F: 12          ld   (de),a
2E60: 1D          dec  e
2E61: 11 1D FF    ld   de,$FF1D
2E64: 1D          dec  e
2E65: 08          ex   af,af'
2E66: 21 07 1D    ld   hl,$1D07
2E69: 06 1D       ld   b,$1D
2E6B: 05          dec  b
2E6C: 1D          dec  e
2E6D: 04          inc  b
2E6E: 1D          dec  e
2E6F: FF          rst  $38
2E70: 1D          dec  e
2E71: 09          add  hl,bc
2E72: 21 14 1D    ld   hl,$1D14
2E75: 13          inc  de
2E76: 1D          dec  e
2E77: 12          ld   (de),a
2E78: 1D          dec  e
2E79: 11 1D FF    ld   de,$FF1D
2E7C: 1D          dec  e
2E7D: 08          ex   af,af'
2E7E: 21 03 1D    ld   hl,$1D03
2E81: 02          ld   (bc),a
2E82: 1D          dec  e
2E83: 01 1D 00    ld   bc,$001D
2E86: 1D          dec  e
2E87: FF          rst  $38
2E88: 1D          dec  e
2E89: 09          add  hl,bc
2E8A: 21 10 1D    ld   hl,$1D10
2E8D: 0F          rrca
2E8E: 1D          dec  e
2E8F: 0E 1D       ld   c,$1D
2E91: 0D          dec  c
2E92: 1D          dec  e
2E93: FF          rst  $38
2E94: 1D          dec  e
2E95: CD 17 2F    call $2F17
2E98: 3A 70 D0    ld   a,($D070)
2E9B: 3D          dec  a
2E9C: 20 0B       jr   nz,$2EA9
2E9E: DD 21 70 D0 ld   ix,$D070
2EA2: FD 21 F2 DF ld   iy,$DFF2
2EA6: CD 3B 2F    call $2F3B
2EA9: 3A 6C D0    ld   a,($D06C)
2EAC: 3D          dec  a
2EAD: 20 0B       jr   nz,$2EBA
2EAF: DD 21 6C D0 ld   ix,$D06C
2EB3: FD 21 F4 DF ld   iy,$DFF4
2EB7: CD 3B 2F    call $2F3B
2EBA: 3A 74 D0    ld   a,($D074)
2EBD: 3D          dec  a
2EBE: 20 0B       jr   nz,$2ECB
2EC0: DD 21 74 D0 ld   ix,$D074
2EC4: FD 21 FA DF ld   iy,$DFFA
2EC8: CD 3B 2F    call $2F3B
2ECB: 3A 78 D0    ld   a,($D078)
2ECE: 3D          dec  a
2ECF: C0          ret  nz
2ED0: DD 21 78 D0 ld   ix,$D078
2ED4: FD 21 F0 DF ld   iy,$DFF0
2ED8: C3 3B 2F    jp   $2F3B
2EDB: CD BA 2E    call $2EBA
2EDE: 21 80 D0    ld   hl,$D080
2EE1: 7E          ld   a,(hl)
2EE2: A7          and  a
2EE3: 28 22       jr   z,$2F07
2EE5: 2C          inc  l
2EE6: 4E          ld   c,(hl)
2EE7: 2C          inc  l
2EE8: 7E          ld   a,(hl)
2EE9: A7          and  a
2EEA: C8          ret  z
2EEB: 21 0A F0    ld   hl,$F00A
2EEE: 7E          ld   a,(hl)
2EEF: FA 01 2F    jp   m,$2F01
2EF2: 06 B0       ld   b,$B0
2EF4: 81          add  a,c
2EF5: B8          cp   b
2EF6: 38 01       jr   c,$2EF9
2EF8: 78          ld   a,b
2EF9: 06 16       ld   b,$16
2EFB: 77          ld   (hl),a
2EFC: 2C          inc  l
2EFD: 2C          inc  l
2EFE: 10 FB       djnz $2EFB
2F00: C9          ret
2F01: 91          sub  c
2F02: 30 F5       jr   nc,$2EF9
2F04: AF          xor  a
2F05: 18 F2       jr   $2EF9
2F07: 2E 82       ld   l,$82
2F09: ED 5F       ld   a,r
2F0B: E6 03       and  $03
2F0D: 28 03       jr   z,$2F12
2F0F: D6 02       sub  $02
2F11: 77          ld   (hl),a
2F12: 2C          inc  l
2F13: 7E          ld   a,(hl)
2F14: A7          and  a
2F15: 20 CE       jr   nz,$2EE5
2F17: 3A 7C D0    ld   a,($D07C)
2F1A: 3D          dec  a
2F1B: C0          ret  nz
2F1C: 2A 0A F0    ld   hl,($F00A)
2F1F: ED 5B 7E D0 ld   de,($D07E)
2F23: 47          ld   b,a
2F24: 3A 7D D0    ld   a,($D07D)
2F27: CD 61 2F    call $2F61
2F2A: 21 0A F0    ld   hl,$F00A
2F2D: 06 19       ld   b,$19
2F2F: 7B          ld   a,e
2F30: 30 C9       jr   nc,$2EFB
2F32: AF          xor  a
2F33: 32 7C D0    ld   ($D07C),a
2F36: 3A 7E D0    ld   a,($D07E)
2F39: 18 C0       jr   $2EFB
2F3B: 47          ld   b,a
2F3C: FD 6E 00    ld   l,(iy+$00)
2F3F: FD 66 01    ld   h,(iy+$01)
2F42: DD 5E 02    ld   e,(ix+$02)
2F45: DD 56 03    ld   d,(ix+$03)
2F48: DD 7E 01    ld   a,(ix+$01)
2F4B: CD 61 2F    call $2F61
2F4E: 30 0A       jr   nc,$2F5A
2F50: DD 36 00 00 ld   (ix+$00),$00
2F54: DD 5E 02    ld   e,(ix+$02)
2F57: DD 56 03    ld   d,(ix+$03)
2F5A: FD 73 00    ld   (iy+$00),e
2F5D: FD 72 01    ld   (iy+$01),d
2F60: C9          ret
2F61: 4F          ld   c,a
2F62: 07          rlca
2F63: 30 07       jr   nc,$2F6C
2F65: 05          dec  b
2F66: 09          add  hl,bc
2F67: EB          ex   de,hl
2F68: ED 52       sbc  hl,de
2F6A: 3F          ccf
2F6B: C9          ret
2F6C: 09          add  hl,bc
2F6D: EB          ex   de,hl
2F6E: ED 52       sbc  hl,de
2F70: C9          ret
2F71: 21 BC D0    ld   hl,$D0BC
2F74: 7E          ld   a,(hl)
2F75: A7          and  a
2F76: 28 03       jr   z,$2F7B
2F78: 35          dec  (hl)
2F79: 18 1C       jr   $2F97
2F7B: 2C          inc  l
2F7C: 7E          ld   a,(hl)
2F7D: 32 BC D0    ld   ($D0BC),a
2F80: 2C          inc  l
2F81: 7E          ld   a,(hl)
2F82: 2C          inc  l
2F83: BE          cp   (hl)
2F84: 28 11       jr   z,$2F97
2F86: 3E 10       ld   a,$10
2F88: 30 02       jr   nc,$2F8C
2F8A: 3E F0       ld   a,$F0
2F8C: 86          add  a,(hl)
2F8D: 77          ld   (hl),a
2F8E: 3A C9 D7    ld   a,($D7C9)
2F91: E6 0F       and  $0F
2F93: B6          or   (hl)
2F94: 32 C9 D7    ld   ($D7C9),a
2F97: 2E C1       ld   l,$C1
2F99: 7E          ld   a,(hl)
2F9A: A7          and  a
2F9B: C8          ret  z
2F9C: 2C          inc  l
2F9D: 7E          ld   a,(hl)
2F9E: A7          and  a
2F9F: 28 23       jr   z,$2FC4
2FA1: 3A C0 D0    ld   a,($D0C0)
2FA4: A7          and  a
2FA5: 20 1D       jr   nz,$2FC4
2FA7: 7E          ld   a,(hl)
2FA8: 36 00       ld   (hl),$00
2FAA: 2D          dec  l
2FAB: 77          ld   (hl),a
2FAC: 2E C3       ld   l,$C3
2FAE: 36 02       ld   (hl),$02
2FB0: 2C          inc  l
2FB1: 36 00       ld   (hl),$00
2FB3: 2C          inc  l
2FB4: 36 00       ld   (hl),$00
2FB6: 2C          inc  l
2FB7: C6 BF       add  a,$BF
2FB9: 5F          ld   e,a
2FBA: 16 01       ld   d,$01
2FBC: EB          ex   de,hl
2FBD: ED A0       ldi
2FBF: ED A0       ldi
2FC1: C9          ret
2FC2: 35          dec  (hl)
2FC3: C9          ret
2FC4: 06 00       ld   b,$00
2FC6: 2C          inc  l
2FC7: 7E          ld   a,(hl)
2FC8: A7          and  a
2FC9: 20 F7       jr   nz,$2FC2
2FCB: 2C          inc  l
2FCC: 4E          ld   c,(hl)
2FCD: 34          inc  (hl)
2FCE: EB          ex   de,hl
2FCF: 2A C6 D0    ld   hl,($D0C6)
2FD2: 09          add  hl,bc
2FD3: 7E          ld   a,(hl)
2FD4: 23          inc  hl
2FD5: A7          and  a
2FD6: F2 29 30    jp   p,$3029
2FD9: FE E0       cp   $E0
2FDB: 30 17       jr   nc,$2FF4
2FDD: FE 90       cp   $90
2FDF: 38 74       jr   c,$3055
2FE1: FE A0       cp   $A0
2FE3: 38 75       jr   c,$305A
2FE5: E6 0F       and  $0F
2FE7: 4F          ld   c,a
2FE8: ED 5F       ld   a,r
2FEA: E6 0F       and  $0F
2FEC: 47          ld   b,a
2FED: 79          ld   a,c
2FEE: B8          cp   b
2FEF: 30 CE       jr   nc,$2FBF
2FF1: EB          ex   de,hl
2FF2: 34          inc  (hl)
2FF3: C9          ret
2FF4: 28 10       jr   z,$3006
2FF6: FE F0       cp   $F0
2FF8: 38 11       jr   c,$300B
2FFA: 28 14       jr   z,$3010
2FFC: FE FE       cp   $FE
2FFE: 38 1C       jr   c,$301C
3000: E6 01       and  $01
3002: 32 C0 D0    ld   ($D0C0),a
3005: C9          ret
3006: ED A0       ldi
3008: 1C          inc  e
3009: 18 B2       jr   $2FBD
300B: E6 0F       and  $0F
300D: 1C          inc  e
300E: 12          ld   (de),a
300F: C9          ret
3010: EB          ex   de,hl
3011: 2C          inc  l
3012: 35          dec  (hl)
3013: 20 03       jr   nz,$3018
3015: 2D          dec  l
3016: 34          inc  (hl)
3017: C9          ret
3018: 1A          ld   a,(de)
3019: 2D          dec  l
301A: 77          ld   (hl),a
301B: C9          ret
301C: 3D          dec  a
301D: E6 07       and  $07
301F: 87          add  a,a
3020: 87          add  a,a
3021: 87          add  a,a
3022: 87          add  a,a
3023: 4F          ld   c,a
3024: ED 5F       ld   a,r
3026: E6 0F       and  $0F
3028: B1          or   c
3029: 87          add  a,a
302A: 4F          ld   c,a
302B: 3A 5B D0    ld   a,($D05B)
302E: A7          and  a
302F: 20 21       jr   nz,$3052
3031: 21 42 31    ld   hl,$3142
3034: 09          add  hl,bc
3035: 09          add  hl,bc
3036: 5E          ld   e,(hl)
3037: 23          inc  hl
3038: 56          ld   d,(hl)
3039: 23          inc  hl
303A: D5          push de
303B: DD E1       pop  ix
303D: 5E          ld   e,(hl)
303E: 23          inc  hl
303F: 7E          ld   a,(hl)
3040: F6 F0       or   $F0
3042: 57          ld   d,a
3043: 7E          ld   a,(hl)
3044: 1F          rra
3045: 1F          rra
3046: 1F          rra
3047: 1F          rra
3048: E6 0F       and  $0F
304A: 47          ld   b,a
304B: 21 80 FF    ld   hl,$FF80
304E: EB          ex   de,hl
304F: C3 BD 29    jp   $29BD
3052: EB          ex   de,hl
3053: 35          dec  (hl)
3054: C9          ret
3055: E6 0F       and  $0F
3057: 1D          dec  e
3058: 12          ld   (de),a
3059: C9          ret
305A: E6 0F       and  $0F
305C: 4F          ld   c,a
305D: 3A 49 D0    ld   a,($D049)
3060: 2F          cpl
3061: 0F          rrca
3062: 0F          rrca
3063: 0F          rrca
3064: E6 03       and  $03
3066: 6F          ld   l,a
3067: ED 5F       ld   a,r
3069: A5          and  l
306A: 81          add  a,c
306B: 18 EA       jr   $3057
306D: 8F          adc  a,a
306E: 8F          adc  a,a
306F: 67          ld   h,a
3070: 03          inc  bc
3071: 17          rla
3072: 5F          ld   e,a
3073: 43          ld   b,e
3074: 31 41 29    ld   sp,$2941
3077: 4D          ld   c,l
3078: 66          ld   h,(hl)
3079: 30 16       jr   nc,$3091
307B: 45          ld   b,l
307C: 3D          dec  a
307D: 03          inc  bc
307E: 13          inc  de
307F: 39          add  hl,sp
3080: 19          add  hl,de
3081: 5E          ld   e,(hl)
3082: 28 40       jr   z,$30C4
3084: 02          ld   (bc),a
3085: 17          rla
3086: 4C          ld   c,h
3087: 38 42       jr   c,$30CB
3089: 65          ld   h,l
308A: 16 29       ld   d,$29
308C: 43          ld   b,e
308D: 41          ld   b,c
308E: 17          rla
308F: 31 0D 4D    ld   sp,$4D0D
3092: 30 16       jr   nc,$30AA
3094: 44          ld   b,h
3095: 28 64       jr   z,$30FB
3097: 59          ld   e,c
3098: 09          add  hl,bc
3099: 01 25 17    ld   bc,$1725
309C: 08          ex   af,af'
309D: 1D          dec  e
309E: 81          add  a,c
309F: 33          inc  sp
30A0: 5A          ld   e,d
30A1: 37          scf
30A2: 58          ld   e,b
30A3: E4 07 42    call po,$4207
30A6: 17          rla
30A7: 06 38       ld   b,$38
30A9: 3D          dec  a
30AA: 41          ld   b,c
30AB: 28 03       jr   z,$30B0
30AD: 40          ld   b,b
30AE: 16 3C       ld   d,$3C
30B0: 29          add  hl,hl
30B1: 02          ld   (bc),a
30B2: 39          add  hl,sp
30B3: F0          ret  p
30B4: 37          scf
30B5: E0          ret  po
30B6: 04          inc  b
30B7: B9          cp   c
30B8: 30 FF       jr   nc,$30B9
30BA: 79          ld   a,c
30BB: 7A          ld   a,d
30BC: FE 55       cp   $55
30BE: 57          ld   d,a
30BF: F1          pop  af
30C0: 51          ld   d,c
30C1: 53          ld   d,e
30C2: 90          sub  b
30C3: F2 50 52    jp   p,$5250
30C6: F4 F3 54    call p,$54F3
30C9: 56          ld   d,(hl)
30CA: F1          pop  af
30CB: 90          sub  b
30CC: F3          di
30CD: F4 F2 90    call p,$90F2
30D0: F1          pop  af
30D1: AF          xor  a
30D2: 04          inc  b
30D3: 6B          ld   l,e
30D4: 6D          ld   l,l
30D5: F1          pop  af
30D6: F2 A1 0F    jp   p,$0FA1
30D9: F1          pop  af
30DA: 6A          ld   l,d
30DB: 6C          ld   l,h
30DC: F3          di
30DD: F5          push af
30DE: F4 F5 AF    call p,$AFF5
30E1: 00          nop
30E2: FF          rst  $38
30E3: A8          xor  b
30E4: 1A          ld   a,(de)
30E5: 63          ld   h,e
30E6: F3          di
30E7: F2 F1 62    jp   p,$62F1
30EA: FE AF       cp   $AF
30EC: 00          nop
30ED: 65          ld   h,l
30EE: F4 F5 F1    call p,$F1F5
30F1: 64          ld   h,h
30F2: FE AF       cp   $AF
30F4: 00          nop
30F5: 6E          ld   l,(hl)
30F6: 70          ld   (hl),b
30F7: F1          pop  af
30F8: F2 A1 0D    jp   p,$0DA1
30FB: F4 6F 71    call p,$716F
30FE: F3          di
30FF: F5          push af
3100: AF          xor  a
3101: 00          nop
3102: FF          rst  $38
3103: A8          xor  b
3104: 18 5F       jr   $3165
3106: F3          di
3107: F2 F1 5E    jp   p,$5EF1
310A: FE AF       cp   $AF
310C: 00          nop
310D: 61          ld   h,c
310E: F4 F5 F1    call p,$F1F5
3111: 60          ld   h,b
3112: FE AF       cp   $AF
3114: 00          nop
3115: 78          ld   a,b
3116: 0A          ld   a,(bc)
3117: 73          ld   (hl),e
3118: F5          push af
3119: 77          ld   (hl),a
311A: 08          ex   af,af'
311B: 72          ld   (hl),d
311C: F3          di
311D: 79          ld   a,c
311E: 06 A8       ld   b,$A8
3120: 1A          ld   a,(de)
3121: 59          ld   e,c
3122: F4 F3 11    call p,$11F3
3125: 76          halt
3126: 5A          ld   e,d
3127: 61          ld   h,c
3128: 10 58       djnz $3182
312A: F5          push af
312B: 60          ld   h,b
312C: 74          ld   (hl),h
312D: AF          xor  a
312E: 0A          ld   a,(bc)
312F: 67          ld   h,a
3130: 69          ld   l,c
3131: 79          ld   a,c
3132: F3          di
3133: F5          push af
3134: 5C          ld   e,h
3135: 66          ld   h,(hl)
3136: 68          ld   l,b
3137: 77          ld   (hl),a
3138: 5D          ld   e,l
3139: F4 5B 5F    call p,$5F5B
313C: F3          di
313D: F4 F5 5E    call p,$5EF5
3140: AF          xor  a
3141: 0A          ld   a,(bc)
3142: A8          xor  b
3143: 34          inc  (hl)
3144: 2D          dec  l
3145: 38 AE       jr   c,$30F5
3147: 34          inc  (hl)
3148: 2D          dec  l
3149: 38 A8       jr   c,$30F3
314B: 34          inc  (hl)
314C: 45          ld   b,l
314D: 38 AE       jr   c,$30FD
314F: 34          inc  (hl)
3150: 45          ld   b,l
3151: 38 A8       jr   c,$30FB
3153: 34          inc  (hl)
3154: 5D          ld   e,l
3155: 38 AE       jr   c,$3105
3157: 34          inc  (hl)
3158: 5D          ld   e,l
3159: 38 B4       jr   c,$310F
315B: 34          inc  (hl)
315C: 33          inc  sp
315D: 38 BA       jr   c,$3119
315F: 34          inc  (hl)
3160: 33          inc  sp
3161: 38 B4       jr   c,$3117
3163: 34          inc  (hl)
3164: 4B          ld   c,e
3165: 38 BA       jr   c,$3121
3167: 34          inc  (hl)
3168: 4B          ld   c,e
3169: 38 B4       jr   c,$311F
316B: 34          inc  (hl)
316C: 63          ld   h,e
316D: 38 BA       jr   c,$3129
316F: 34          inc  (hl)
3170: 63          ld   h,e
3171: 38 C0       jr   c,$3133
3173: 34          inc  (hl)
3174: 39          add  hl,sp
3175: 48          ld   c,b
3176: C8          ret  z
3177: 34          inc  (hl)
3178: 39          add  hl,sp
3179: 48          ld   c,b
317A: C0          ret  nz
317B: 34          inc  (hl)
317C: 51          ld   d,c
317D: 48          ld   c,b
317E: C8          ret  z
317F: 34          inc  (hl)
3180: 51          ld   d,c
3181: 48          ld   c,b
3182: D0          ret  nc
3183: 34          inc  (hl)
3184: A9          xor  c
3185: 26 D4       ld   h,$D4
3187: 34          inc  (hl)
3188: A9          xor  c
3189: 26 D0       ld   h,$D0
318B: 34          inc  (hl)
318C: C1          pop  bc
318D: 26 D4       ld   h,$D4
318F: 34          inc  (hl)
3190: C1          pop  bc
3191: 26 D0       ld   h,$D0
3193: 34          inc  (hl)
3194: D9          exx
3195: 26 D4       ld   h,$D4
3197: 34          inc  (hl)
3198: D9          exx
3199: 26 D8       ld   h,$D8
319B: 34          inc  (hl)
319C: B5          or   l
319D: 26 DC       ld   h,$DC
319F: 34          inc  (hl)
31A0: B5          or   l
31A1: 26 D8       ld   h,$D8
31A3: 34          inc  (hl)
31A4: CD 26 DC    call $DC26
31A7: 34          inc  (hl)
31A8: CD 26 D8    call $D826
31AB: 34          inc  (hl)
31AC: E5          push hl
31AD: 26 DC       ld   h,$DC
31AF: 34          inc  (hl)
31B0: E5          push hl
31B1: 26 E0       ld   h,$E0
31B3: 34          inc  (hl)
31B4: 37          scf
31B5: 36 E6       ld   (hl),$E6
31B7: 34          inc  (hl)
31B8: 37          scf
31B9: 36 E0       ld   (hl),$E0
31BB: 34          inc  (hl)
31BC: 4F          ld   c,a
31BD: 36 E6       ld   (hl),$E6
31BF: 34          inc  (hl)
31C0: 4F          ld   c,a
31C1: 36 EC       ld   (hl),$EC
31C3: 34          inc  (hl)
31C4: AD          xor  l
31C5: 35          dec  (hl)
31C6: F2 34 AD    jp   p,$AD34
31C9: 35          dec  (hl)
31CA: EC 34 DD    call pe,$DD34
31CD: 35          dec  (hl)
31CE: F2 34 DD    jp   p,$DD34
31D1: 35          dec  (hl)
31D2: F8          ret  m
31D3: 34          inc  (hl)
31D4: CB 35       sll  l
31D6: FE 34       cp   $34
31D8: CB 35       sll  l
31DA: F8          ret  m
31DB: 34          inc  (hl)
31DC: E3          ex   (sp),hl
31DD: 35          dec  (hl)
31DE: FE 34       cp   $34
31E0: E3          ex   (sp),hl
31E1: 35          dec  (hl)
31E2: 04          inc  b
31E3: 35          dec  (hl)
31E4: BB          cp   e
31E5: 35          dec  (hl)
31E6: 0A          ld   a,(bc)
31E7: 35          dec  (hl)
31E8: BB          cp   e
31E9: 35          dec  (hl)
31EA: 04          inc  b
31EB: 35          dec  (hl)
31EC: D3 35       out  ($35),a
31EE: 0A          ld   a,(bc)
31EF: 35          dec  (hl)
31F0: D3 35       out  ($35),a
31F2: 45          ld   b,l
31F3: 35          dec  (hl)
31F4: 15          dec  d
31F5: 3A 4B 35    ld   a,($354B)
31F8: 15          dec  d
31F9: 3A 89 35    ld   a,($3589)
31FC: 79          ld   a,c
31FD: 3A 8F 35    ld   a,($358F)
3200: 79          ld   a,c
3201: 3A 10 35    ld   a,($3510)
3204: 33          inc  sp
3205: 24          inc  h
3206: 14          inc  d
3207: 35          dec  (hl)
3208: 33          inc  sp
3209: 24          inc  h
320A: 10 35       djnz $3241
320C: 4B          ld   c,e
320D: 24          inc  h
320E: 14          inc  d
320F: 35          dec  (hl)
3210: 4B          ld   c,e
3211: 24          inc  h
3212: 10 35       djnz $3249
3214: 63          ld   h,e
3215: 24          inc  h
3216: 14          inc  d
3217: 35          dec  (hl)
3218: 63          ld   h,e
3219: 24          inc  h
321A: 18 35       jr   $3251
321C: 2B          dec  hl
321D: 24          inc  h
321E: 1C          inc  e
321F: 35          dec  (hl)
3220: 2B          dec  hl
3221: 24          inc  h
3222: 18 35       jr   $3259
3224: 43          ld   b,e
3225: 24          inc  h
3226: 1C          inc  e
3227: 35          dec  (hl)
3228: 43          ld   b,e
3229: 24          inc  h
322A: 18 35       jr   $3261
322C: 5B          ld   e,e
322D: 24          inc  h
322E: 1C          inc  e
322F: 35          dec  (hl)
3230: 5B          ld   e,e
3231: 24          inc  h
3232: 79          ld   a,c
3233: 35          dec  (hl)
3234: 97          sub  a
3235: 35          dec  (hl)
3236: 7F          ld   a,a
3237: 35          dec  (hl)
3238: 97          sub  a
3239: 35          dec  (hl)
323A: BB          cp   e
323B: 35          dec  (hl)
323C: F7          rst  $30
323D: 35          dec  (hl)
323E: C1          pop  bc
323F: 35          dec  (hl)
3240: F7          rst  $30
3241: 35          dec  (hl)
3242: 2C          inc  l
3243: 35          dec  (hl)
3244: 9D          sbc  a,l
3245: 12          ld   (de),a
3246: 20 35       jr   nz,$327D
3248: 9D          sbc  a,l
3249: 12          ld   (de),a
324A: 38 35       jr   c,$3281
324C: AF          xor  a
324D: 12          ld   (de),a
324E: 2C          inc  l
324F: 35          dec  (hl)
3250: AF          xor  a
3251: 12          ld   (de),a
3252: 20 35       jr   nz,$3289
3254: C3 12 2C    jp   $2C12
3257: 35          dec  (hl)
3258: C3 12 38    jp   $3812
325B: 35          dec  (hl)
325C: D5          push de
325D: 12          ld   (de),a
325E: 20 35       jr   nz,$3295
3260: D5          push de
3261: 12          ld   (de),a
3262: 2C          inc  l
3263: 35          dec  (hl)
3264: E9          jp   (hl)
3265: 12          ld   (de),a
3266: 20 35       jr   nz,$329D
3268: E9          jp   (hl)
3269: 12          ld   (de),a
326A: 38 35       jr   c,$32A1
326C: FD          db   $fd
326D: 12          ld   (de),a
326E: 20 35       jr   nz,$32A5
3270: FD          db   $fd
3271: 12          ld   (de),a
3272: 20 35       jr   nz,$32A9
3274: B9          cp   c
3275: 12          ld   (de),a
3276: 38 35       jr   c,$32AD
3278: B9          cp   c
3279: 12          ld   (de),a
327A: 2C          inc  l
327B: 35          dec  (hl)
327C: DF          rst  $18
327D: 12          ld   (de),a
327E: 38 35       jr   c,$32B5
3280: DF          rst  $18
3281: 12          ld   (de),a
3282: 57          ld   d,a
3283: 35          dec  (hl)
3284: 1D          dec  e
3285: 49          ld   c,c
3286: 65          ld   h,l
3287: 35          dec  (hl)
3288: 1D          dec  e
3289: 49          ld   c,c
328A: 99          sbc  a,c
328B: 35          dec  (hl)
328C: 75          ld   (hl),l
328D: 49          ld   c,c
328E: A7          and  a
328F: 35          dec  (hl)
3290: 75          ld   (hl),l
3291: 49          ld   c,c
3292: 75          ld   (hl),l
3293: 35          dec  (hl)
3294: 9D          sbc  a,l
3295: 16 77       ld   d,$77
3297: 35          dec  (hl)
3298: 9D          sbc  a,l
3299: 16 B7       ld   d,$B7
329B: 35          dec  (hl)
329C: F1          pop  af
329D: 16 B9       ld   d,$B9
329F: 35          dec  (hl)
32A0: F1          pop  af
32A1: 16 17       ld   d,$17
32A3: 36 37       ld   (hl),$37
32A5: 38 23       jr   c,$32CA
32A7: 36 37       ld   (hl),$37
32A9: 38 2F       jr   c,$32DA
32AB: 36 37       ld   (hl),$37
32AD: 38 17       jr   c,$32C6
32AF: 36 4F       ld   (hl),$4F
32B1: 38 23       jr   c,$32D6
32B3: 36 4F       ld   (hl),$4F
32B5: 38 2F       jr   c,$32E6
32B7: 36 4F       ld   (hl),$4F
32B9: 38 3B       jr   c,$32F6
32BB: 36 39       ld   (hl),$39
32BD: 15          dec  d
32BE: 3D          dec  a
32BF: 36 39       ld   (hl),$39
32C1: 15          dec  d
32C2: 3B          dec  sp
32C3: 36 51       ld   (hl),$51
32C5: 15          dec  d
32C6: 3D          dec  a
32C7: 36 51       ld   (hl),$51
32C9: 15          dec  d
32CA: 3F          ccf
32CB: 36 B5       ld   (hl),$B5
32CD: 13          inc  de
32CE: 41          ld   b,c
32CF: 36 B5       ld   (hl),$B5
32D1: 13          inc  de
32D2: 3F          ccf
32D3: 36 D7       ld   (hl),$D7
32D5: 13          inc  de
32D6: 41          ld   b,c
32D7: 36 D7       ld   (hl),$D7
32D9: 13          inc  de
32DA: 43          ld   b,e
32DB: 36 1D       ld   (hl),$1D
32DD: 25          dec  h
32DE: 47          ld   b,a
32DF: 36 1D       ld   (hl),$1D
32E1: 25          dec  h
32E2: 4B          ld   c,e
32E3: 36 71       ld   (hl),$71
32E5: 25          dec  h
32E6: 4F          ld   c,a
32E7: 36 71       ld   (hl),$71
32E9: 25          dec  h
32EA: 61          ld   h,c
32EB: 35          dec  (hl)
32EC: 1D          dec  e
32ED: 27          daa
32EE: C7          rst  $00
32EF: 35          dec  (hl)
32F0: 1D          dec  e
32F1: 27          daa
32F2: A3          and  e
32F3: 35          dec  (hl)
32F4: 75          ld   (hl),l
32F5: 27          daa
32F6: CF          rst  $08
32F7: 35          dec  (hl)
32F8: 75          ld   (hl),l
32F9: 27          daa
32FA: D7          rst  $10
32FB: 35          dec  (hl)
32FC: 9D          sbc  a,l
32FD: 69          ld   l,c
32FE: EF          rst  $28
32FF: 35          dec  (hl)
3300: 99          sbc  a,c
3301: 49          ld   c,c
3302: F7          rst  $30
3303: 35          dec  (hl)
3304: F5          push af
3305: 69          ld   l,c
3306: 0F          rrca
3307: 36 F5       ld   (hl),$F5
3309: 49          ld   c,c
330A: 53          ld   d,e
330B: 36 47       ld   (hl),$47
330D: 58          ld   e,b
330E: 53          ld   d,e
330F: 36 5F       ld   (hl),$5F
3311: 58          ld   e,b
3312: 6A          ld   l,d
3313: 36 3B       ld   (hl),$3B
3315: 58          ld   e,b
3316: 82          add  a,d
3317: 36 3B       ld   (hl),$3B
3319: 58          ld   e,b
331A: 6A          ld   l,d
331B: 36 53       ld   (hl),$53
331D: 58          ld   e,b
331E: 82          add  a,d
331F: 36 53       ld   (hl),$53
3321: 58          ld   e,b
3322: 98          sbc  a,b
3323: 36 2D       ld   (hl),$2D
3325: 58          ld   e,b
3326: 53          ld   d,e
3327: 35          dec  (hl)
3328: 9D          sbc  a,l
3329: 79          ld   a,c
332A: 95          sub  l
332B: 35          dec  (hl)
332C: F5          push af
332D: 79          ld   a,c
332E: 21 3C D0    ld   hl,$D03C
3331: 7E          ld   a,(hl)
3332: A7          and  a
3333: C8          ret  z
3334: 06 00       ld   b,$00
3336: 70          ld   (hl),b
3337: 2C          inc  l
3338: 7E          ld   a,(hl)
3339: 87          add  a,a
333A: 86          add  a,(hl)
333B: 21 D9 77    ld   hl,$77D9
333E: 4F          ld   c,a
333F: 09          add  hl,bc
3340: 5E          ld   e,(hl)
3341: 23          inc  hl
3342: 56          ld   d,(hl)
3343: EB          ex   de,hl
3344: 13          inc  de
3345: 1A          ld   a,(de)
3346: 07          rlca
3347: 32 FC DF    ld   ($DFFC),a
334A: A7          and  a
334B: 1F          rra
334C: D9          exx
334D: 47          ld   b,a
334E: 11 40 00    ld   de,$0040
3351: D9          exx
3352: 7E          ld   a,(hl)
3353: 08          ex   af,af'
3354: 23          inc  hl
3355: 7E          ld   a,(hl)
3356: D9          exx
3357: 67          ld   h,a
3358: 08          ex   af,af'
3359: 6F          ld   l,a
335A: ED 73 76 FF ld   ($FF76),sp
335E: DD 21 76 33 ld   ix,$3376
3362: C3 6F 33    jp   $336F
3365: ED 7B 76 FF ld   sp,($FF76)
3369: C9          ret
336A: D9          exx
336B: 05          dec  b
336C: 28 F7       jr   z,$3365
336E: 19          add  hl,de
336F: F9          ld   sp,hl
3370: D9          exx
3371: 23          inc  hl
3372: 5E          ld   e,(hl)
3373: 23          inc  hl
3374: 56          ld   d,(hl)
3375: 23          inc  hl
3376: 7E          ld   a,(hl)
3377: A7          and  a
3378: 28 F0       jr   z,$336A
337A: 23          inc  hl
337B: FA C5 33    jp   m,$33C5
337E: CB 6F       bit  5,a
3380: C2 AE 33    jp   nz,$33AE
3383: CB 67       bit  4,a
3385: C2 99 33    jp   nz,$3399
3388: 4E          ld   c,(hl)
3389: 23          inc  hl
338A: 46          ld   b,(hl)
338B: 23          inc  hl
338C: 3D          dec  a
338D: 08          ex   af,af'
338E: 1A          ld   a,(de)
338F: 13          inc  de
3390: F5          push af
3391: C5          push bc
3392: 0B          dec  bc
3393: 08          ex   af,af'
3394: C2 8C 33    jp   nz,$338C
3397: DD E9       jp   (ix)
3399: E6 0F       and  $0F
339B: 28 22       jr   z,$33BF
339D: 4E          ld   c,(hl)
339E: 23          inc  hl
339F: 46          ld   b,(hl)
33A0: 23          inc  hl
33A1: 3D          dec  a
33A2: 08          ex   af,af'
33A3: 1A          ld   a,(de)
33A4: 13          inc  de
33A5: F5          push af
33A6: C5          push bc
33A7: 03          inc  bc
33A8: 08          ex   af,af'
33A9: C2 A1 33    jp   nz,$33A1
33AC: DD E9       jp   (ix)
33AE: CB 67       bit  4,a
33B0: C2 B9 33    jp   nz,$33B9
33B3: E6 0F       and  $0F
33B5: 4E          ld   c,(hl)
33B6: C3 8B 33    jp   $338B
33B9: E6 0F       and  $0F
33BB: 4E          ld   c,(hl)
33BC: C3 A0 33    jp   $33A0
33BF: 7E          ld   a,(hl)
33C0: 23          inc  hl
33C1: 66          ld   h,(hl)
33C2: 6F          ld   l,a
33C3: DD E9       jp   (ix)
33C5: CB 6F       bit  5,a
33C7: C2 FB 33    jp   nz,$33FB
33CA: CB 67       bit  4,a
33CC: C2 E9 33    jp   nz,$33E9
33CF: E6 0F       and  $0F
33D1: 08          ex   af,af'
33D2: 78          ld   a,b
33D3: ED 47       ld   i,a
33D5: 3E 3F       ld   a,$3F
33D7: 08          ex   af,af'
33D8: 01 00 00    ld   bc,$0000
33DB: 3D          dec  a
33DC: 08          ex   af,af'
33DD: 13          inc  de
33DE: F5          push af
33DF: C5          push bc
33E0: 08          ex   af,af'
33E1: C2 DB 33    jp   nz,$33DB
33E4: ED 57       ld   a,i
33E6: 47          ld   b,a
33E7: DD E9       jp   (ix)
33E9: E6 0F       and  $0F
33EB: 3D          dec  a
33EC: 08          ex   af,af'
33ED: 1A          ld   a,(de)
33EE: 13          inc  de
33EF: F5          push af
33F0: 4E          ld   c,(hl)
33F1: 23          inc  hl
33F2: 46          ld   b,(hl)
33F3: 23          inc  hl
33F4: C5          push bc
33F5: 08          ex   af,af'
33F6: C2 EB 33    jp   nz,$33EB
33F9: DD E9       jp   (ix)
33FB: E6 0F       and  $0F
33FD: 3D          dec  a
33FE: 08          ex   af,af'
33FF: 1A          ld   a,(de)
3400: 13          inc  de
3401: F5          push af
3402: 4E          ld   c,(hl)
3403: 23          inc  hl
3404: C5          push bc
3405: 08          ex   af,af'
3406: C2 FD 33    jp   nz,$33FD
3409: DD E9       jp   (ix)
340B: 21 5B D0    ld   hl,$D05B
340E: 7E          ld   a,(hl)
340F: A7          and  a
3410: C8          ret  z
3411: 3D          dec  a
3412: 32 F6 DF    ld   ($DFF6),a
3415: 06 00       ld   b,$00
3417: 70          ld   (hl),b
3418: 2C          inc  l
3419: 7E          ld   a,(hl)
341A: 87          add  a,a
341B: 2C          inc  l
341C: 56          ld   d,(hl)
341D: 2A 5E D0    ld   hl,($D05E)
3420: 4F          ld   c,a
3421: 09          add  hl,bc
3422: 7E          ld   a,(hl)
3423: 23          inc  hl
3424: 66          ld   h,(hl)
3425: 6F          ld   l,a
3426: 7E          ld   a,(hl)
3427: 08          ex   af,af'
3428: 23          inc  hl
3429: 7E          ld   a,(hl)
342A: 23          inc  hl
342B: E5          push hl
342C: FD E1       pop  iy
342E: D9          exx
342F: 67          ld   h,a
3430: 08          ex   af,af'
3431: 6F          ld   l,a
3432: 11 40 00    ld   de,$0040
3435: ED 73 76 FF ld   ($FF76),sp
3439: DD 21 68 34 ld   ix,$3468
343D: FD 46 00    ld   b,(iy+$00)
3440: C3 55 34    jp   $3455
3443: ED 7B 76 FF ld   sp,($FF76)
3447: C9          ret
3448: D9          exx
3449: ED 52       sbc  hl,de
344B: 10 18       djnz $3465
344D: FD 7E 00    ld   a,(iy+$00)
3450: A7          and  a
3451: CA 43 34    jp   z,$3443
3454: 47          ld   b,a
3455: FD 23       inc  iy
3457: F9          ld   sp,hl
3458: D9          exx
3459: FD 6E 00    ld   l,(iy+$00)
345C: FD 23       inc  iy
345E: FD 66 00    ld   h,(iy+$00)
3461: FD 23       inc  iy
3463: DD E9       jp   (ix)
3465: F9          ld   sp,hl
3466: D9          exx
3467: 23          inc  hl
3468: 7E          ld   a,(hl)
3469: A7          and  a
346A: 28 DC       jr   z,$3448
346C: 23          inc  hl
346D: FA 86 34    jp   m,$3486
3470: CB 67       bit  4,a
3472: 20 0D       jr   nz,$3481
3474: 4E          ld   c,(hl)
3475: 23          inc  hl
3476: 46          ld   b,(hl)
3477: 23          inc  hl
3478: D5          push de
3479: C5          push bc
347A: 0B          dec  bc
347B: 3D          dec  a
347C: C2 78 34    jp   nz,$3478
347F: DD E9       jp   (ix)
3481: E6 0F       and  $0F
3483: C3 78 34    jp   $3478
3486: CB 67       bit  4,a
3488: C2 9A 34    jp   nz,$349A
348B: E6 0F       and  $0F
348D: D9          exx
348E: 5A          ld   e,d
348F: D5          push de
3490: D5          push de
3491: 3D          dec  a
3492: C2 8F 34    jp   nz,$348F
3495: 1E 40       ld   e,$40
3497: D9          exx
3498: DD E9       jp   (ix)
349A: E6 0F       and  $0F
349C: 4E          ld   c,(hl)
349D: 23          inc  hl
349E: 46          ld   b,(hl)
349F: 23          inc  hl
34A0: D5          push de
34A1: C5          push bc
34A2: 3D          dec  a
34A3: C2 9C 34    jp   nz,$349C
34A6: DD E9       jp   (ix)
34A8: 54          ld   d,h
34A9: 83          add  a,e
34AA: 54          ld   d,h
34AB: 65          ld   h,l
34AC: 54          ld   d,h
34AD: 47          ld   b,a
34AE: 54          ld   d,h
34AF: F9          ld   sp,hl
34B0: 54          ld   d,h
34B1: F5          push af
34B2: 54          ld   d,h
34B3: F1          pop  af
34B4: 53          ld   d,e
34B5: 86          add  a,(hl)
34B6: 53          ld   d,e
34B7: 68          ld   l,b
34B8: 53          ld   d,e
34B9: 4A          ld   c,d
34BA: 53          ld   d,e
34BB: ED 53 EA 53 ld   ($53EA),de
34BF: E4 51 89    call po,$8951
34C2: 51          ld   d,c
34C3: 6B          ld   l,e
34C4: 51          ld   d,c
34C5: 4D          ld   c,l
34C6: 51          ld   d,c
34C7: 2F          cpl
34C8: 51          ld   d,c
34C9: E7          rst  $20
34CA: 51          ld   d,c
34CB: E6 51       and  $51
34CD: E1          pop  hl
34CE: 51          ld   d,c
34CF: E0          ret  po
34D0: 51          ld   d,c
34D1: 27          daa
34D2: 51          ld   d,c
34D3: 09          add  hl,bc
34D4: 51          ld   d,c
34D5: DF          rst  $18
34D6: 51          ld   d,c
34D7: DA 52 2D    jp   c,$2D52
34DA: 51          ld   d,c
34DB: 0F          rrca
34DC: 52          ld   d,d
34DD: D9          exx
34DE: 51          ld   d,c
34DF: D7          rst  $10
34E0: 51          ld   d,c
34E1: 10 51       djnz $3534
34E3: F7          rst  $30
34E4: 51          ld   d,c
34E5: DF          rst  $18
34E6: 51          ld   d,c
34E7: D6 51       sub  $51
34E9: FB          ei
34EA: 51          ld   d,c
34EB: 8E          adc  a,(hl)
34EC: 52          ld   d,d
34ED: F2 52 DA    jp   p,$DA52
34F0: 52          ld   d,d
34F1: C2 52 7E    jp   nz,$7E52
34F4: 52          ld   d,d
34F5: 7C          ld   a,h
34F6: 52          ld   d,d
34F7: 7A          ld   a,d
34F8: 51          ld   d,c
34F9: F5          push af
34FA: 51          ld   d,c
34FB: DD          db   $dd
34FC: 51          ld   d,c
34FD: C5          push bc
34FE: 51          ld   d,c
34FF: 6C          ld   l,h
3500: 51          ld   d,c
3501: 6B          ld   l,e
3502: 51          ld   d,c
3503: 6A          ld   l,d
3504: 51          ld   d,c
3505: F9          ld   sp,hl
3506: 51          ld   d,c
3507: E1          pop  hl
3508: 51          ld   d,c
3509: C9          ret
350A: 51          ld   d,c
350B: 69          ld   l,c
350C: 51          ld   d,c
350D: 68          ld   l,b
350E: 51          ld   d,c
350F: 67          ld   h,a
3510: 51          ld   d,c
3511: AD          xor  l
3512: 51          ld   d,c
3513: 9B          sbc  a,e
3514: 51          ld   d,c
3515: 56          ld   d,(hl)
3516: 51          ld   d,c
3517: 55          ld   d,l
3518: 51          ld   d,c
3519: AF          xor  a
351A: 51          ld   d,c
351B: 9D          sbc  a,l
351C: 51          ld   d,c
351D: 54          ld   d,h
351E: 51          ld   d,c
351F: 53          ld   d,e
3520: 20 16       jr   nz,$3538
3522: D8          ret  c
3523: 77          ld   (hl),a
3524: 52          ld   d,d
3525: 52          ld   d,d
3526: 78          ld   a,b
3527: 78          ld   a,b
3528: 76          halt
3529: 74          ld   (hl),h
352A: 52          ld   d,d
352B: 00          nop
352C: 20 16       jr   nz,$3544
352E: D8          ret  c
352F: 78          ld   a,b
3530: 6F          ld   l,a
3531: 6F          ld   l,a
3532: 52          ld   d,d
3533: 78          ld   a,b
3534: 77          ld   (hl),a
3535: 52          ld   d,d
3536: 77          ld   (hl),a
3537: 00          nop
3538: 20 16       jr   nz,$3550
353A: D6 52       sub  $52
353C: 78          ld   a,b
353D: 76          halt
353E: 78          ld   a,b
353F: 74          ld   (hl),h
3540: 52          ld   d,d
3541: 52          ld   d,d
3542: 77          ld   (hl),a
3543: 51          ld   d,c
3544: 78          ld   a,b
3545: 52          ld   d,d
3546: BC          cp   h
3547: 52          ld   d,d
3548: B0          or   b
3549: 52          ld   d,d
354A: A3          and  e
354B: 52          ld   d,d
354C: D0          ret  nc
354D: 52          ld   d,d
354E: CE 41       adc  a,$41
3550: A3          and  e
3551: 51          ld   d,c
3552: D5          push de
3553: 42          ld   b,d
3554: BF          cp   a
3555: 52          ld   d,d
3556: B2          or   d
3557: 41          ld   b,c
3558: BE          cp   (hl)
3559: 53          ld   d,e
355A: A6          and  (hl)
355B: 54          ld   d,h
355C: 99          sbc  a,c
355D: 54          ld   d,h
355E: 7B          ld   a,e
355F: 54          ld   d,h
3560: 5D          ld   e,l
3561: 54          ld   d,h
3562: 3F          ccf
3563: 54          ld   d,h
3564: 21 41 BE    ld   hl,$BE41
3567: 41          ld   b,c
3568: A6          and  (hl)
3569: 52          ld   d,d
356A: CC 41 99    call z,$9941
356D: 53          ld   d,e
356E: C5          push bc
356F: 54          ld   d,h
3570: B8          cp   b
3571: 42          ld   b,d
3572: B4          or   h
3573: 52          ld   d,d
3574: 5B          ld   e,e
3575: 52          ld   d,d
3576: 21 52 AC    ld   hl,$AC52
3579: 52          ld   d,d
357A: E7          rst  $20
357B: 52          ld   d,d
357C: CF          rst  $08
357D: 52          ld   d,d
357E: B7          or   a
357F: 52          ld   d,d
3580: 51          ld   d,c
3581: 41          ld   b,c
3582: CF          rst  $08
3583: 51          ld   d,c
3584: 4F          ld   c,a
3585: 41          ld   b,c
3586: B7          or   a
3587: 51          ld   d,c
3588: 4E          ld   c,(hl)
3589: 72          ld   (hl),d
358A: BB          cp   e
358B: 72          ld   (hl),d
358C: AF          xor  a
358D: 71          ld   (hl),c
358E: A2          and  d
358F: 72          ld   (hl),d
3590: CF          rst  $08
3591: 72          ld   (hl),d
3592: CD 71 D5    call $D571
3595: 62          ld   h,d
3596: B1          or   c
3597: 72          ld   (hl),d
3598: BE          cp   (hl)
3599: 63          ld   h,e
359A: A4          and  h
359B: 71          ld   (hl),c
359C: BE          cp   (hl)
359D: 74          ld   (hl),h
359E: 96          sub  (hl)
359F: 74          ld   (hl),h
35A0: 78          ld   a,b
35A1: 74          ld   (hl),h
35A2: 5A          ld   e,d
35A3: 74          ld   (hl),h
35A4: 3C          inc  a
35A5: 74          ld   (hl),h
35A6: 1E 62       ld   e,$62
35A8: CB 61       bit  4,c
35AA: A6          and  (hl)
35AB: 71          ld   (hl),c
35AC: BE          cp   (hl)
35AD: 63          ld   h,e
35AE: C3 71 99    jp   $9971
35B1: 74          ld   (hl),h
35B2: B5          or   l
35B3: 62          ld   h,d
35B4: 5A          ld   e,d
35B5: 72          ld   (hl),d
35B6: B3          or   e
35B7: 72          ld   (hl),d
35B8: 20 72       jr   nz,$362C
35BA: AB          xor  e
35BB: 72          ld   (hl),d
35BC: E6 71       and  $71
35BE: CE 71       adc  a,$71
35C0: B6          or   (hl)
35C1: 72          ld   (hl),d
35C2: 50          ld   d,b
35C3: 71          ld   (hl),c
35C4: 4F          ld   c,a
35C5: 71          ld   (hl),c
35C6: 4E          ld   c,(hl)
35C7: 42          ld   b,d
35C8: 3F          ccf
35C9: 41          ld   b,c
35CA: C2 51 3C    jp   nz,$3C51
35CD: 54          ld   d,h
35CE: AC          xor  h
35CF: 61          ld   h,c
35D0: 3C          inc  a
35D1: 61          ld   h,c
35D2: C2 72 3E    jp   nz,$3E72
35D5: 74          ld   (hl),h
35D6: A9          xor  c
35D7: 42          ld   b,d
35D8: BF          cp   a
35D9: 52          ld   d,d
35DA: C1          pop  bc
35DB: 41          ld   b,c
35DC: BE          cp   (hl)
35DD: 53          ld   d,e
35DE: 9F          sbc  a,a
35DF: 54          ld   d,h
35E0: 91          sub  c
35E1: 54          ld   d,h
35E2: 73          ld   (hl),e
35E3: 41          ld   b,c
35E4: 5D          ld   e,l
35E5: 42          ld   b,d
35E6: A8          xor  b
35E7: 51          ld   d,c
35E8: 5A          ld   e,d
35E9: 41          ld   b,c
35EA: 3F          ccf
35EB: 42          ld   b,d
35EC: 9C          sbc  a,h
35ED: 51          ld   d,c
35EE: 3C          inc  a
35EF: 52          ld   d,d
35F0: 8D          adc  a,l
35F1: 52          ld   d,d
35F2: 6F          ld   l,a
35F3: 52          ld   d,d
35F4: 55          ld   d,l
35F5: 52          ld   d,d
35F6: 53          ld   d,e
35F7: 62          ld   h,d
35F8: C0          ret  nz
35F9: 72          ld   (hl),d
35FA: BE          cp   (hl)
35FB: 63          ld   h,e
35FC: 9D          sbc  a,l
35FD: 71          ld   (hl),c
35FE: BE          cp   (hl)
35FF: 74          ld   (hl),h
3600: 8E          adc  a,(hl)
3601: 74          ld   (hl),h
3602: 70          ld   (hl),b
3603: 61          ld   h,c
3604: 5A          ld   e,d
3605: 62          ld   h,d
3606: A7          and  a
3607: 71          ld   (hl),c
3608: 5D          ld   e,l
3609: 61          ld   h,c
360A: 3C          inc  a
360B: 62          ld   h,d
360C: 9B          sbc  a,e
360D: 71          ld   (hl),c
360E: 3F          ccf
360F: 72          ld   (hl),d
3610: 8C          adc  a,h
3611: 72          ld   (hl),d
3612: 6E          ld   l,(hl)
3613: 72          ld   (hl),d
3614: 54          ld   d,h
3615: 72          ld   (hl),d
3616: 52          ld   d,d
3617: 03          inc  bc
3618: 88          adc  a,b
3619: 0B          dec  bc
361A: 00          nop
361B: 03          inc  bc
361C: 6A          ld   l,d
361D: 0B          dec  bc
361E: 00          nop
361F: 03          inc  bc
3620: 4C          ld   c,h
3621: 0B          dec  bc
3622: 00          nop
3623: 03          inc  bc
3624: 37          scf
3625: 0B          dec  bc
3626: 00          nop
3627: 03          inc  bc
3628: 34          inc  (hl)
3629: 0B          dec  bc
362A: 00          nop
362B: 03          inc  bc
362C: 19          add  hl,de
362D: 0B          dec  bc
362E: 00          nop
362F: 03          inc  bc
3630: 4D          ld   c,l
3631: 0A          ld   a,(bc)
3632: 00          nop
3633: 03          inc  bc
3634: 4A          ld   c,d
3635: 0A          ld   a,(bc)
3636: 00          nop
3637: 03          inc  bc
3638: 47          ld   b,a
3639: 0A          ld   a,(bc)
363A: 00          nop
363B: 51          ld   d,c
363C: E0          ret  po
363D: 51          ld   d,c
363E: 44          ld   b,h
363F: 51          ld   d,c
3640: 9C          sbc  a,h
3641: 51          ld   d,c
3642: 43          ld   b,e
3643: 52          ld   d,d
3644: D2 52 BA    jp   nc,$BA52
3647: 52          ld   d,d
3648: 42          ld   b,d
3649: 52          ld   d,d
364A: 40          ld   b,b
364B: 72          ld   (hl),d
364C: D1          pop  de
364D: 72          ld   (hl),d
364E: B9          cp   c
364F: 72          ld   (hl),d
3650: 41          ld   b,c
3651: 72          ld   (hl),d
3652: 3F          ccf
3653: 06 3E       ld   b,$3E
3655: 0A          ld   a,(bc)
3656: 00          nop
3657: 06 38       ld   b,$38
3659: 0A          ld   a,(bc)
365A: 00          nop
365B: 06 32       ld   b,$32
365D: 0A          ld   a,(bc)
365E: 00          nop
365F: 06 2C       ld   b,$2C
3661: 0E 00       ld   c,$00
3663: 04          inc  b
3664: 0C          inc  c
3665: 0F          rrca
3666: 02          ld   (bc),a
3667: 26 0E       ld   h,$0E
3669: 00          nop
366A: 20 0B       jr   nz,$3677
366C: D2 8A E7    jp   nc,$E78A
366F: 00          nop
3670: D2 6C E6    jp   nc,$E66C
3673: 00          nop
3674: D2 4E E1    jp   nc,$E14E
3677: 00          nop
3678: 20 0F       jr   nz,$3689
367A: D2 30 E0    jp   nc,$E030
367D: 00          nop
367E: D2 12 11    jp   nc,$1112
3681: 00          nop
3682: 02          ld   (bc),a
3683: 24          inc  h
3684: 0A          ld   a,(bc)
3685: 00          nop
3686: 02          ld   (bc),a
3687: 22 0A 00    ld   ($000A),hl
368A: 02          ld   (bc),a
368B: 20 0A       jr   nz,$3697
368D: 00          nop
368E: 02          ld   (bc),a
368F: 1E 0E       ld   e,$0E
3691: 00          nop
3692: 92          sub  d
3693: 12          ld   (de),a
3694: 0F          rrca
3695: 1C          inc  e
3696: 0E 00       ld   c,$00
3698: 03          inc  bc
3699: F9          ld   sp,hl
369A: 0B          dec  bc
369B: 91          sub  c
369C: 3A 0E 00    ld   a,($000E)
369F: 03          inc  bc
36A0: F5          push af
36A1: 0B          dec  bc
36A2: 91          sub  c
36A3: 34          inc  (hl)
36A4: 0E 00       ld   c,$00
36A6: 03          inc  bc
36A7: F1          pop  af
36A8: 0B          dec  bc
36A9: 91          sub  c
36AA: 2E 0E       ld   l,$0E
36AC: 00          nop
36AD: 03          inc  bc
36AE: 29          add  hl,hl
36AF: 0F          rrca
36B0: 91          sub  c
36B1: 28 0E       jr   z,$36C1
36B3: 00          nop
36B4: 03          inc  bc
36B5: 0B          dec  bc
36B6: 0F          rrca
36B7: 91          sub  c
36B8: 26 0E       ld   h,$0E
36BA: 00          nop
36BB: BA          cp   d
36BC: FD          db   $fd
36BD: 01 20 44    ld   bc,$4420
36C0: DA 17 12    jp   c,$1217
36C3: 20 FF       jr   nz,$36C4
36C5: 18 1D       jr   $36E4
36C7: FF          rst  $38
36C8: 20 18       jr   nz,$36E2
36CA: 11 00 BA    ld   de,$BA00
36CD: FD          db   $fd
36CE: 02          ld   (bc),a
36CF: 20 44       jr   nz,$3715
36D1: F5          push af
36D2: FF          rst  $38
36D3: D5          push de
36D4: 11 0C 1D    ld   de,$1D0C
36D7: 0A          ld   a,(bc)
36D8: 20 00       jr   nz,$36DA
36DA: DA FF 29    jp   c,$29FF
36DD: FF          rst  $38
36DE: 0E 22       ld   c,$22
36E0: 0E FF       ld   c,$FF
36E2: 1C          inc  e
36E3: 12          ld   (de),a
36E4: 11 00 BA    ld   de,$BA00
36E7: FD          db   $fd
36E8: 01 20 44    ld   bc,$4420
36EB: DA 29 FF    jp   c,$FF29
36EE: 10 17       djnz $3707
36F0: 12          ld   (de),a
36F1: 14          inc  d
36F2: 0C          inc  c
36F3: 18 15       jr   $370A
36F5: 0B          dec  bc
36F6: 00          nop
36F7: B0          or   b
36F8: FD          db   $fd
36F9: 01 20 44    ld   bc,$4420
36FC: D5          push de
36FD: 0E 10       ld   c,$10
36FF: 0D          dec  c
3700: 18 0D       jr   $370F
3702: 00          nop
3703: 3A FE 01    ld   a,($01FE)
3706: 20 44       jr   nz,$374C
3708: DA 29 FF    jp   c,$FF29
370B: 1D          dec  e
370C: 0F          rrca
370D: 0E 15       ld   c,$15
370F: FF          rst  $38
3710: 0D          dec  c
3711: 17          rla
3712: 0A          ld   a,(bc)
3713: 00          nop
3714: B4          or   h
3715: FD          db   $fd
3716: 02          ld   (bc),a
3717: 20 44       jr   nz,$375D
3719: D7          rst  $10
371A: 18 20       jr   $373C
371C: 1D          dec  e
371D: 24          inc  h
371E: 0E 17       ld   c,$17
3720: 18 00       jr   $3722
3722: D7          rst  $10
3723: 29          add  hl,hl
3724: FF          rst  $38
3725: 11 0C 17    ld   de,$170C
3728: 1E 19       ld   e,$19
372A: 00          nop
372B: BC          cp   h
372C: FD          db   $fd
372D: 01 20 44    ld   bc,$4420
3730: DB 1C       in   a,($1C)
3732: 1C          inc  e
3733: 18 1B       jr   $3750
3735: 0C          inc  c
3736: FF          rst  $38
3737: 1D          dec  e
3738: 11 10 12    ld   de,$1210
373B: 1B          dec  de
373C: 00          nop
373D: B6          or   (hl)
373E: FD          db   $fd
373F: 01 20 44    ld   bc,$4420
3742: D8          ret  c
3743: 1D          dec  e
3744: 1E 0C       ld   e,$0C
3746: 1B          dec  de
3747: 0E 19       ld   c,$19
3749: 19          add  hl,de
374A: 1E 00       ld   e,$00
374C: 3C          inc  a
374D: FD          db   $fd
374E: 03          inc  bc
374F: 00          nop
3750: 20 07       jr   nz,$3759
3752: FC FF 30    call m,$30FF
3755: 4F          ld   c,a
3756: 37          scf
3757: 80          add  a,b
3758: F0          ret  p
3759: 1E 8F       ld   e,$8F
375B: 8F          adc  a,a
375C: 82          add  a,d
375D: 20 02       jr   nz,$3761
375F: FF          rst  $38
3760: 00          nop
3761: FD          db   $fd
3762: 00          nop
3763: 20 00       jr   nz,$3765
3765: F2 C4 F2    jp   p,$F2C4
3768: 00          nop
3769: 00          nop
376A: FF          rst  $38
376B: FF          rst  $38
376C: FF          rst  $38
376D: FF          rst  $38
376E: FF          rst  $38
376F: FF          rst  $38
3770: FF          rst  $38
3771: FF          rst  $38
3772: F4 FF 30    call p,$30FF
3775: 69          ld   l,c
3776: 37          scf
3777: CE F3       adc  a,$F3
3779: 08          ex   af,af'
377A: 20 34       jr   nz,$37B0
377C: F3          di
377D: FF          rst  $38
377E: DF          rst  $18
377F: 15          dec  d
3780: 18 1B       jr   $379D
3782: 1D          dec  e
3783: 17          rla
3784: 18 0C       jr   $3792
3786: FF          rst  $38
3787: 22 0B FF    ld   ($FF0B),hl
378A: 1C          inc  e
378B: 15          dec  d
378C: 0A          ld   a,(bc)
378D: 12          ld   (de),a
378E: DB 1D       in   a,($1D)
3790: 12          ld   (de),a
3791: 17          rla
3792: 12          ld   (de),a
3793: FF          rst  $38
3794: 1D          dec  e
3795: 0C          inc  c
3796: 0E 15       ld   c,$15
3798: 0E 1C       ld   c,$1C
379A: F3          di
379B: FF          rst  $38
379C: 00          nop
379D: 00          nop
379E: F2 FF DF    jp   p,$DFFF
37A1: 29          add  hl,hl
37A2: FF          rst  $38
37A3: 1D          dec  e
37A4: 17          rla
37A5: 12          ld   (de),a
37A6: 1B          dec  de
37A7: 19          add  hl,de
37A8: FF          rst  $38
37A9: 18 1D       jr   $37C8
37AB: FF          rst  $38
37AC: 17          rla
37AD: 18 1D       jr   $37CC
37AF: 1D          dec  e
37B0: DC 1E 0B    call c,$0B1E
37B3: FF          rst  $38
37B4: 1C          inc  e
37B5: 1C          inc  e
37B6: 0E 1B       ld   c,$1B
37B8: 19          add  hl,de
37B9: FF          rst  $38
37BA: 0D          dec  c
37BB: 17          rla
37BC: 0A          ld   a,(bc)
37BD: F3          di
37BE: FF          rst  $38
37BF: 00          nop
37C0: 00          nop
37C1: 00          nop
37C2: 00          nop
37C3: 00          nop
37C4: 20 2C       jr   nz,$37F2
37C6: F7          rst  $30
37C7: FF          rst  $38
37C8: D5          push de
37C9: 28 FF       jr   z,$37CA
37CB: 28 FF       jr   z,$37CC
37CD: 28 20       jr   z,$37EF
37CF: 30 DD       jr   nc,$37AE
37D1: FF          rst  $38
37D2: 25          dec  h
37D3: FF          rst  $38
37D4: 22 1B 1D    ld   ($1D1B),hl
37D7: 17          rla
37D8: 0E FF       ld   c,$FF
37DA: 0A          ld   a,(bc)
37DB: 0B          dec  bc
37DC: 1F          rra
37DD: 20 F7       jr   nz,$37D6
37DF: FF          rst  $38
37E0: 00          nop
37E1: C6 FC       add  a,$FC
37E3: 03          inc  bc
37E4: 84          add  a,h
37E5: 02          ld   (bc),a
37E6: 2F          cpl
37E7: 24          inc  h
37E8: 02          ld   (bc),a
37E9: 2D          dec  l
37EA: 2C          inc  l
37EB: 00          nop
37EC: 00          nop
37ED: 20 30       jr   nz,$381F
37EF: F2 FF 00    jp   p,$00FF
37F2: CE F3       adc  a,$F3
37F4: 10 20       djnz $3816
37F6: 2C          inc  l
37F7: F8          ret  m
37F8: FF          rst  $38
37F9: F5          push af
37FA: 2B          dec  hl
37FB: DB 10       in   a,($10)
37FD: 17          rla
37FE: 12          ld   (de),a
37FF: 0C          inc  c
3800: 1E 0D       ld   e,$0D
3802: 18 1B       jr   $381F
3804: 1D          dec  e
3805: 17          rla
3806: 12          ld   (de),a
3807: F8          ret  m
3808: FF          rst  $38
3809: 00          nop
380A: 00          nop
380B: F5          push af
380C: FF          rst  $38
380D: F3          di
380E: 2B          dec  hl
380F: DF          rst  $18
3810: 1B          dec  de
3811: 0E 17       ld   c,$17
3813: 1B          dec  de
3814: 18 0C       jr   $3822
3816: FF          rst  $38
3817: 1D          dec  e
3818: 0F          rrca
3819: 0E 15       ld   c,$15
381B: FF          rst  $38
381C: 0E 11       ld   c,$11
381E: 1D          dec  e
381F: D3 FF       out  ($FF),a
3821: 17          rla
3822: 12          ld   (de),a
3823: F6 FF       or   $FF
3825: 00          nop
3826: 00          nop
3827: F6 FF       or   $FF
3829: D7          rst  $10
382A: 2A 1C 0D    ld   hl,($0D1C)
382D: 17          rla
382E: 1E 18       ld   e,$18
3830: 19          add  hl,de
3831: F5          push af
3832: FF          rst  $38
3833: D8          ret  c
3834: 10 17       djnz $384D
3836: 12          ld   (de),a
3837: 11 10 12    ld   de,$1210
383A: 0E 20       ld   c,$20
383C: F6 FF       or   $FF
383E: 00          nop
383F: 00          nop
3840: FF          rst  $38
3841: FF          rst  $38
3842: F7          rst  $30
3843: FF          rst  $38
3844: D4 16 18    call nc,$1816
3847: 1B          dec  de
3848: 0F          rrca
3849: F6 FF       or   $FF
384B: 00          nop
384C: 00          nop
384D: 00          nop
384E: 20 24       jr   nz,$3874
3850: F3          di
3851: FF          rst  $38
3852: DF          rst  $18
3853: 2B          dec  hl
3854: 0C          inc  c
3855: 18 1C       jr   $3873
3857: 1C          inc  e
3858: 0A          ld   a,(bc)
3859: FF          rst  $38
385A: 10 17       djnz $3873
385C: 12          ld   (de),a
385D: 21 18 0B    ld   hl,$0B18
3860: FF          rst  $38
3861: 18 DA       jr   $383D
3863: 0E 0D       ld   c,$0D
3865: 12          ld   (de),a
3866: 1F          rra
3867: FF          rst  $38
3868: 0D          dec  c
3869: 15          dec  d
386A: 1B          dec  de
386B: 18 20       jr   $388D
386D: F4 FF 00    call p,$00FF
3870: 00          nop
3871: 00          nop
3872: 00          nop
3873: F4 FF 20    call p,$20FF
3876: 1C          inc  e
3877: FF          rst  $38
3878: FF          rst  $38
3879: F9          ld   sp,hl
387A: FF          rst  $38
387B: 20 24       jr   nz,$38A1
387D: F4 FF 30    call p,$30FF
3880: 72          ld   (hl),d
3881: 38 8E       jr   c,$3811
3883: 20 2C       jr   nz,$38B1
3885: D3 02       out  ($02),a
3887: 01 01 00    ld   bc,$0001
388A: 00          nop
388B: 85          add  a,l
388C: F3          di
388D: 2B          dec  hl
388E: DD          db   $dd
388F: FF          rst  $38
3890: 0E 0C       ld   c,$0C
3892: 17          rla
3893: 0A          ld   a,(bc)
3894: 1B          dec  de
3895: 0F          rrca
3896: 2A 1C 12    ld   hl,($121C)
3899: 1B          dec  de
389A: 0A          ld   a,(bc)
389B: 19          add  hl,de
389C: 00          nop
389D: 00          nop
389E: 00          nop
389F: 00          nop
38A0: 00          nop
38A1: 00          nop
38A2: 00          nop
38A3: 00          nop
38A4: 8B          adc  a,e
38A5: 20 1C       jr   nz,$38C3
38A7: D9          exx
38A8: 0E 18       ld   c,$18
38AA: 13          inc  de
38AB: FF          rst  $38
38AC: 1C          inc  e
38AD: 1C          inc  e
38AE: 0A          ld   a,(bc)
38AF: 15          dec  d
38B0: 10 00       djnz $38B2
38B2: 8E          adc  a,(hl)
38B3: 20 2C       jr   nz,$38E1
38B5: D3 06       out  ($06),a
38B7: 07          rlca
38B8: 01 00 00    ld   bc,$0000
38BB: 8C          adc  a,h
38BC: F3          di
38BD: 2B          dec  hl
38BE: D5          push de
38BF: FF          rst  $38
38C0: 0A          ld   a,(bc)
38C1: 0B          dec  bc
38C2: 1E 0C       ld   e,$0C
38C4: 00          nop
38C5: 00          nop
38C6: 00          nop
38C7: 00          nop
38C8: 00          nop
38C9: 00          nop
38CA: 00          nop
38CB: 00          nop
38CC: 88          adc  a,b
38CD: 20 1C       jr   nz,$38EB
38CF: DF          rst  $18
38D0: 0E 17       ld   c,$17
38D2: 0A          ld   a,(bc)
38D3: 0C          inc  c
38D4: 12          ld   (de),a
38D5: 1B          dec  de
38D6: 1B          dec  de
38D7: 1E 11       ld   e,$11
38D9: FF          rst  $38
38DA: 17          rla
38DB: 18 1D       jr   $38FA
38DD: 1C          inc  e
38DE: 12          ld   (de),a
38DF: D1          pop  de
38E0: 19          add  hl,de
38E1: 00          nop
38E2: 8E          adc  a,(hl)
38E3: 20 2C       jr   nz,$3911
38E5: D3 05       out  ($05),a
38E7: 03          inc  bc
38E8: 02          ld   (bc),a
38E9: 00          nop
38EA: 00          nop
38EB: 85          add  a,l
38EC: F3          di
38ED: 2B          dec  hl
38EE: DD          db   $dd
38EF: FF          rst  $38
38F0: 22 15 0A    ld   ($0A15),hl
38F3: 1D          dec  e
38F4: 12          ld   (de),a
38F5: 2A 12 15    ld   hl,($1512)
38F8: 18 19       jr   $3913
38FA: 0A          ld   a,(bc)
38FB: 17          rla
38FC: 00          nop
38FD: 00          nop
38FE: 00          nop
38FF: 00          nop
3900: 00          nop
3901: 00          nop
3902: 00          nop
3903: 00          nop
3904: 8A          adc  a,d
3905: 20 1C       jr   nz,$3923
3907: DB 0A       in   a,($0A)
3909: 1D          dec  e
390A: 1C          inc  e
390B: 0A          ld   a,(bc)
390C: 19          add  hl,de
390D: FF          rst  $38
390E: 0A          ld   a,(bc)
390F: 23          inc  hl
3910: 23          inc  hl
3911: 12          ld   (de),a
3912: 19          add  hl,de
3913: 00          nop
3914: 8E          adc  a,(hl)
3915: 20 2C       jr   nz,$3943
3917: D3 00       out  ($00),a
3919: 01 02 00    ld   bc,$0002
391C: 00          nop
391D: 87          add  a,a
391E: DE 2B       sbc  a,$2B
3920: 22 2B 17    ld   ($172B),hl
3923: FF          rst  $38
3924: 2A 17 22    ld   hl,($2217)
3927: 15          dec  d
3928: 14          inc  d
3929: 18 18       jr   $3943
392B: 1B          dec  de
392C: 0B          dec  bc
392D: 00          nop
392E: 00          nop
392F: 00          nop
3930: 00          nop
3931: 00          nop
3932: 00          nop
3933: 00          nop
3934: 00          nop
3935: 8B          adc  a,e
3936: 20 1C       jr   nz,$3954
3938: D9          exx
3939: 14          inc  d
393A: 0C          inc  c
393B: 12          ld   (de),a
393C: 1E 1A       ld   e,$1A
393E: FF          rst  $38
393F: 0D          dec  c
3940: 12          ld   (de),a
3941: 14          inc  d
3942: 00          nop
3943: 8E          adc  a,(hl)
3944: 20 2C       jr   nz,$3972
3946: D3 08       out  ($08),a
3948: 09          add  hl,bc
3949: 02          ld   (bc),a
394A: 00          nop
394B: 00          nop
394C: 85          add  a,l
394D: DF          rst  $18
394E: 22 0E 14    ld   ($140E),hl
3951: 1B          dec  de
3952: 1E 1D       ld   e,$1D
3954: FF          rst  $38
3955: 2A 15 1E    ld   hl,($1E15)
3958: 0B          dec  bc
3959: 17          rla
395A: 0A          ld   a,(bc)
395B: 1D          dec  e
395C: 1C          inc  e
395D: D1          pop  de
395E: 12          ld   (de),a
395F: 00          nop
3960: 00          nop
3961: 00          nop
3962: 00          nop
3963: 00          nop
3964: 00          nop
3965: 00          nop
3966: 00          nop
3967: 8B          adc  a,e
3968: 20 1C       jr   nz,$3986
396A: D9          exx
396B: 15          dec  d
396C: 15          dec  d
396D: 1E 0B       ld   e,$0B
396F: FF          rst  $38
3970: 0D          dec  c
3971: 15          dec  d
3972: 0A          ld   a,(bc)
3973: 0B          dec  bc
3974: 00          nop
3975: 8E          adc  a,(hl)
3976: 20 2C       jr   nz,$39A4
3978: D3 02       out  ($02),a
397A: 01 03 00    ld   bc,$0003
397D: 00          nop
397E: 84          add  a,h
397F: DF          rst  $18
3980: 2B          dec  hl
3981: 0A          ld   a,(bc)
3982: 19          add  hl,de
3983: FF          rst  $38
3984: 2A 0A 12    ld   hl,($120A)
3987: 11 19 15    ld   de,$1519
398A: 0E 0D       ld   c,$0D
398C: 0A          ld   a,(bc)
398D: 15          dec  d
398E: 12          ld   (de),a
398F: D2 11 19    jp   nc,$1911
3992: 00          nop
3993: 00          nop
3994: 00          nop
3995: 00          nop
3996: 00          nop
3997: 00          nop
3998: 00          nop
3999: 00          nop
399A: 8A          adc  a,d
399B: 20 1C       jr   nz,$39B9
399D: DB 17       in   a,($17)
399F: 0A          ld   a,(bc)
39A0: 16 0D       ld   d,$0D
39A2: 17          rla
39A3: 0A          ld   a,(bc)
39A4: 1C          inc  e
39A5: FF          rst  $38
39A6: 2B          dec  hl
39A7: 1B          dec  de
39A8: 16 00       ld   d,$00
39AA: 88          adc  a,b
39AB: 20 24       jr   nz,$39D1
39AD: D1          pop  de
39AE: 09          add  hl,bc
39AF: DF          rst  $18
39B0: FF          rst  $38
39B1: FF          rst  $38
39B2: 1B          dec  de
39B3: 0E 0B       ld   c,$0B
39B5: 16 1E       ld   d,$1E
39B7: 17          rla
39B8: FF          rst  $38
39B9: 0D          dec  c
39BA: 0E 14       ld   c,$14
39BC: 17          rla
39BD: 0A          ld   a,(bc)
39BE: 1B          dec  de
39BF: 00          nop
39C0: 88          adc  a,b
39C1: 20 24       jr   nz,$39E7
39C3: D1          pop  de
39C4: 07          rlca
39C5: 30 AF       jr   nc,$3976
39C7: 39          add  hl,sp
39C8: 88          adc  a,b
39C9: 20 24       jr   nz,$39EF
39CB: D1          pop  de
39CC: 05          dec  b
39CD: 30 AF       jr   nc,$397E
39CF: 39          add  hl,sp
39D0: 88          adc  a,b
39D1: 20 24       jr   nz,$39F7
39D3: D1          pop  de
39D4: 03          inc  bc
39D5: 30 AF       jr   nc,$3986
39D7: 39          add  hl,sp
39D8: 88          adc  a,b
39D9: 20 24       jr   nz,$39FF
39DB: D1          pop  de
39DC: 02          ld   (bc),a
39DD: 30 AF       jr   nc,$398E
39DF: 39          add  hl,sp
39E0: 8B          adc  a,e
39E1: 20 24       jr   nz,$3A07
39E3: DA 0D 0E    jp   c,$0E0D
39E6: 14          inc  d
39E7: 17          rla
39E8: 0A          ld   a,(bc)
39E9: 1B          dec  de
39EA: FF          rst  $38
39EB: 19          add  hl,de
39EC: 18 1D       jr   $3A0B
39EE: 00          nop
39EF: 8C          adc  a,h
39F0: 20 24       jr   nz,$3A16
39F2: D8          ret  c
39F3: 17          rla
39F4: 18 12       jr   $3A08
39F6: 19          add  hl,de
39F7: 16 0A       ld   d,$0A
39F9: 11 0C 00    ld   de,$000C
39FC: 80          add  a,b
39FD: F2 1A 20    jp   p,$201A
3A00: 17          rla
3A01: FF          rst  $38
3A02: FF          rst  $38
3A03: FF          rst  $38
3A04: FF          rst  $38
3A05: FF          rst  $38
3A06: FF          rst  $38
3A07: FF          rst  $38
3A08: FF          rst  $38
3A09: F4 FF 00    call p,$00FF
3A0C: 81          add  a,c
3A0D: 18 6D       jr   $3A7C
3A0F: 96          sub  (hl)
3A10: 91          sub  c
3A11: 75          ld   (hl),l
3A12: AA          xor  d
3A13: 02          ld   (bc),a
3A14: 77          ld   (hl),a
3A15: 16 03       ld   d,$03
3A17: 78          ld   a,b
3A18: 16 03       ld   d,$03
3A1A: 78          ld   a,b
3A1B: 16 03       ld   d,$03
3A1D: 78          ld   a,b
3A1E: 16 03       ld   d,$03
3A20: 78          ld   a,b
3A21: 16 03       ld   d,$03
3A23: 78          ld   a,b
3A24: 16 03       ld   d,$03
3A26: 78          ld   a,b
3A27: 16 03       ld   d,$03
3A29: 78          ld   a,b
3A2A: 16 03       ld   d,$03
3A2C: 78          ld   a,b
3A2D: 16 03       ld   d,$03
3A2F: 78          ld   a,b
3A30: 16 03       ld   d,$03
3A32: 78          ld   a,b
3A33: 16 03       ld   d,$03
3A35: 78          ld   a,b
3A36: 16 03       ld   d,$03
3A38: 78          ld   a,b
3A39: 16 91       ld   d,$91
3A3B: 75          ld   (hl),l
3A3C: 2A 08 74    ld   hl,($7408)
3A3F: 16 00       ld   d,$00
3A41: 81          add  a,c
3A42: 18 7F       jr   $3AC3
3A44: 96          sub  (hl)
3A45: 92          sub  d
3A46: 87          add  a,a
3A47: AA          xor  d
3A48: 88          adc  a,b
3A49: 96          sub  (hl)
3A4A: 12          ld   (de),a
3A4B: 89          adc  a,c
3A4C: BE          cp   (hl)
3A4D: 02          ld   (bc),a
3A4E: 8C          adc  a,h
3A4F: 16 03       ld   d,$03
3A51: 8D          adc  a,l
3A52: 16 03       ld   d,$03
3A54: 8D          adc  a,l
3A55: 16 03       ld   d,$03
3A57: 8D          adc  a,l
3A58: 16 03       ld   d,$03
3A5A: 8D          adc  a,l
3A5B: 16 03       ld   d,$03
3A5D: 8D          adc  a,l
3A5E: 16 03       ld   d,$03
3A60: 8D          adc  a,l
3A61: 16 03       ld   d,$03
3A63: 8D          adc  a,l
3A64: 16 03       ld   d,$03
3A66: 8D          adc  a,l
3A67: 16 03       ld   d,$03
3A69: 8D          adc  a,l
3A6A: 16 03       ld   d,$03
3A6C: 8D          adc  a,l
3A6D: 16 02       ld   d,$02
3A6F: 8A          adc  a,d
3A70: 1A          ld   a,(de)
3A71: 92          sub  d
3A72: 88          adc  a,b
3A73: 16 87       ld   d,$87
3A75: 2A 08 86    ld   hl,($8608)
3A78: 16 00       ld   d,$00
3A7A: 81          add  a,c
3A7B: 17          rla
3A7C: 8F          adc  a,a
3A7D: 96          sub  (hl)
3A7E: 93          sub  e
3A7F: 96          sub  (hl)
3A80: 92          sub  d
3A81: 97          sub  a
3A82: AA          xor  d
3A83: 98          sbc  a,b
3A84: 92          sub  d
3A85: 02          ld   (bc),a
3A86: 58          ld   e,b
3A87: 3E 02       ld   a,$02
3A89: 9C          sbc  a,h
3A8A: 12          ld   (de),a
3A8B: 06 A0       ld   b,$A0
3A8D: 12          ld   (de),a
3A8E: 06 A0       ld   b,$A0
3A90: 12          ld   (de),a
3A91: 06 A0       ld   b,$A0
3A93: 12          ld   (de),a
3A94: 06 A0       ld   b,$A0
3A96: 12          ld   (de),a
3A97: 06 A0       ld   b,$A0
3A99: 12          ld   (de),a
3A9A: 02          ld   (bc),a
3A9B: 9A          sbc  a,d
3A9C: 1A          ld   a,(de)
3A9D: 93          sub  e
3A9E: 98          sbc  a,b
3A9F: 12          ld   (de),a
3AA0: 97          sub  a
3AA1: 2A 96 12    ld   hl,($1296)
3AA4: 07          rlca
3AA5: 95          sub  l
3AA6: 16 00       ld   d,$00
3AA8: 81          add  a,c
3AA9: 13          inc  de
3AAA: A1          and  c
3AAB: 96          sub  (hl)
3AAC: 15          dec  d
3AAD: A4          and  h
3AAE: 92          sub  d
3AAF: 92          sub  d
3AB0: A9          xor  c
3AB1: AA          xor  d
3AB2: AA          xor  d
3AB3: 92          sub  d
3AB4: 02          ld   (bc),a
3AB5: 5A          ld   e,d
3AB6: 3E 02       ld   a,$02
3AB8: AE          xor  (hl)
3AB9: 12          ld   (de),a
3ABA: 06 B2       ld   b,$B2
3ABC: 12          ld   (de),a
3ABD: 06 B2       ld   b,$B2
3ABF: 12          ld   (de),a
3AC0: 06 B2       ld   b,$B2
3AC2: 12          ld   (de),a
3AC3: 06 B2       ld   b,$B2
3AC5: 12          ld   (de),a
3AC6: 06 B2       ld   b,$B2
3AC8: 12          ld   (de),a
3AC9: 02          ld   (bc),a
3ACA: AC          xor  h
3ACB: 1A          ld   a,(de)
3ACC: 92          sub  d
3ACD: AA          xor  d
3ACE: 12          ld   (de),a
3ACF: A9          xor  c
3AD0: 2A 05 A8    ld   hl,($A805)
3AD3: 12          ld   (de),a
3AD4: 03          inc  bc
3AD5: A3          and  e
3AD6: 16 00       ld   d,$00
3AD8: 81          add  a,c
3AD9: 18 B3       jr   $3A8E
3ADB: 92          sub  d
3ADC: 92          sub  d
3ADD: BB          cp   e
3ADE: AA          xor  d
3ADF: BC          cp   h
3AE0: 92          sub  d
3AE1: 02          ld   (bc),a
3AE2: 5C          ld   e,h
3AE3: 3E 08       ld   a,$08
3AE5: C6 0E       add  a,$0E
3AE7: 0C          inc  c
3AE8: CA 0E 0C    jp   z,$0C0E
3AEB: CA 0E 02    jp   z,$020E
3AEE: BE          cp   (hl)
3AEF: 1A          ld   a,(de)
3AF0: 92          sub  d
3AF1: BC          cp   h
3AF2: 12          ld   (de),a
3AF3: BB          cp   e
3AF4: 2A 08 BA    ld   hl,($BA08)
3AF7: 12          ld   (de),a
3AF8: 00          nop
3AF9: 81          add  a,c
3AFA: 18 CB       jr   $3AC7
3AFC: 92          sub  d
3AFD: 92          sub  d
3AFE: D3 AA       out  ($AA),a
3B00: D4 8E 02    call nc,$028E
3B03: 5E          ld   e,(hl)
3B04: 3E 08       ld   a,$08
3B06: DE 0E       sbc  a,$0E
3B08: 0C          inc  c
3B09: E2 0E 0C    jp   po,$0C0E
3B0C: E2 0E 02    jp   po,$020E
3B0F: D6 1A       sub  $1A
3B11: 92          sub  d
3B12: D4 0E D3    call nc,$D30E
3B15: 2A 08 D2    ld   hl,($D208)
3B18: 12          ld   (de),a
3B19: 00          nop
3B1A: 81          add  a,c
3B1B: 16 E3       ld   d,$E3
3B1D: 92          sub  d
3B1E: 12          ld   (de),a
3B1F: E9          jp   (hl)
3B20: 8E          adc  a,(hl)
3B21: 92          sub  d
3B22: EB          ex   de,hl
3B23: AA          xor  d
3B24: EC 8E 02    call pe,$028E
3B27: 60          ld   h,b
3B28: 3E 08       ld   a,$08
3B2A: F6 0E       or   $0E
3B2C: 0C          inc  c
3B2D: FA 0E 0C    jp   m,$0C0E
3B30: FA 0E 02    jp   m,$020E
3B33: EE 1A       xor  $1A
3B35: 92          sub  d
3B36: EC 0E EB    call pe,$EB0E
3B39: 2A 02 EA    ld   hl,($EA02)
3B3C: 0E 06       ld   c,$06
3B3E: E8          ret  pe
3B3F: 12          ld   (de),a
3B40: 00          nop
3B41: 81          add  a,c
3B42: 14          inc  d
3B43: FC 92 14    call m,$1492
3B46: 00          nop
3B47: 8F          adc  a,a
3B48: 92          sub  d
3B49: 04          inc  b
3B4A: AB          xor  e
3B4B: 05          dec  b
3B4C: 8F          adc  a,a
3B4D: 02          ld   (bc),a
3B4E: 62          ld   h,d
3B4F: 3E 08       ld   a,$08
3B51: 0F          rrca
3B52: 0F          rrca
3B53: 0C          inc  c
3B54: 13          inc  de
3B55: 0F          rrca
3B56: 0C          inc  c
3B57: 13          inc  de
3B58: 0F          rrca
3B59: 02          ld   (bc),a
3B5A: 07          rlca
3B5B: 1B          dec  de
3B5C: 92          sub  d
3B5D: 05          dec  b
3B5E: 0F          rrca
3B5F: 04          inc  b
3B60: 2B          dec  hl
3B61: 04          inc  b
3B62: 03          inc  bc
3B63: 0F          rrca
3B64: 04          inc  b
3B65: FF          rst  $38
3B66: 12          ld   (de),a
3B67: 00          nop
3B68: 81          add  a,c
3B69: 12          ld   (de),a
3B6A: 1A          ld   a,(de)
3B6B: 93          sub  e
3B6C: 16 1C       ld   d,$1C
3B6E: 8F          adc  a,a
3B6F: 92          sub  d
3B70: 22 AB 23    ld   ($23AB),hl
3B73: 8F          adc  a,a
3B74: 02          ld   (bc),a
3B75: 64          ld   h,h
3B76: 3E 08       ld   a,$08
3B78: 2D          dec  l
3B79: 0F          rrca
3B7A: 0C          inc  c
3B7B: 31 0F 0C    ld   sp,$0C0F
3B7E: 31 0F 02    ld   sp,$020F
3B81: 25          dec  h
3B82: 1B          dec  de
3B83: 92          sub  d
3B84: 23          inc  hl
3B85: 0F          rrca
3B86: 22 2B 06    ld   ($062B),hl
3B89: 21 0F 02    ld   hl,$020F
3B8C: 1B          dec  de
3B8D: 13          inc  de
3B8E: 00          nop
3B8F: 81          add  a,c
3B90: 18 38       jr   $3BCA
3B92: 8F          adc  a,a
3B93: 92          sub  d
3B94: 40          ld   b,b
3B95: AB          xor  e
3B96: 41          ld   b,c
3B97: 8F          adc  a,a
3B98: 02          ld   (bc),a
3B99: 66          ld   h,(hl)
3B9A: 3E 08       ld   a,$08
3B9C: 4B          ld   c,e
3B9D: 0B          dec  bc
3B9E: 0C          inc  c
3B9F: 4F          ld   c,a
3BA0: 0B          dec  bc
3BA1: 0C          inc  c
3BA2: 4F          ld   c,a
3BA3: 0B          dec  bc
3BA4: 02          ld   (bc),a
3BA5: 43          ld   b,e
3BA6: 1B          dec  de
3BA7: 92          sub  d
3BA8: 41          ld   b,c
3BA9: 0F          rrca
3BAA: 40          ld   b,b
3BAB: 2B          dec  hl
3BAC: 08          ex   af,af'
3BAD: 3F          ccf
3BAE: 0F          rrca
3BAF: 00          nop
3BB0: 81          add  a,c
3BB1: 18 56       jr   $3C09
3BB3: 8F          adc  a,a
3BB4: 92          sub  d
3BB5: 5E          ld   e,(hl)
3BB6: AB          xor  e
3BB7: 5F          ld   e,a
3BB8: 8F          adc  a,a
3BB9: 12          ld   (de),a
3BBA: 60          ld   h,b
3BBB: BF          cp   a
3BBC: 08          ex   af,af'
3BBD: 69          ld   l,c
3BBE: 0B          dec  bc
3BBF: 0C          inc  c
3BC0: 6D          ld   l,l
3BC1: 0B          dec  bc
3BC2: 0C          inc  c
3BC3: 6D          ld   l,l
3BC4: 0B          dec  bc
3BC5: 02          ld   (bc),a
3BC6: 61          ld   h,c
3BC7: 1B          dec  de
3BC8: 92          sub  d
3BC9: 5F          ld   e,a
3BCA: 0F          rrca
3BCB: 5E          ld   e,(hl)
3BCC: 2B          dec  hl
3BCD: 08          ex   af,af'
3BCE: 5D          ld   e,l
3BCF: 0F          rrca
3BD0: 00          nop
3BD1: 81          add  a,c
3BD2: 18 74       jr   $3C48
3BD4: 8F          adc  a,a
3BD5: 92          sub  d
3BD6: 7C          ld   a,h
3BD7: AB          xor  e
3BD8: 7D          ld   a,l
3BD9: 8F          adc  a,a
3BDA: 0A          ld   a,(bc)
3BDB: 89          adc  a,c
3BDC: 0B          dec  bc
3BDD: 0C          inc  c
3BDE: 8B          adc  a,e
3BDF: 0B          dec  bc
3BE0: 0C          inc  c
3BE1: 8B          adc  a,e
3BE2: 0B          dec  bc
3BE3: 03          inc  bc
3BE4: 7F          ld   a,a
3BE5: 0F          rrca
3BE6: 91          sub  c
3BE7: 7C          ld   a,h
3BE8: 2B          dec  hl
3BE9: 08          ex   af,af'
3BEA: 7B          ld   a,e
3BEB: 0F          rrca
3BEC: 00          nop
3BED: 8F          adc  a,a
3BEE: 8A          adc  a,d
3BEF: 20 07       jr   nz,$3BF8
3BF1: FF          rst  $38
3BF2: FF          rst  $38
3BF3: F7          rst  $30
3BF4: FF          rst  $38
3BF5: 02          ld   (bc),a
3BF6: BF          cp   a
3BF7: 07          rlca
3BF8: D1          pop  de
3BF9: 99          sbc  a,c
3BFA: 07          rlca
3BFB: 98          sbc  a,b
3BFC: 0F          rrca
3BFD: 00          nop
3BFE: 8F          adc  a,a
3BFF: 8A          adc  a,d
3C00: 20 07       jr   nz,$3C09
3C02: FF          rst  $38
3C03: FF          rst  $38
3C04: F8          ret  m
3C05: FF          rst  $38
3C06: 02          ld   (bc),a
3C07: BF          cp   a
3C08: 07          rlca
3C09: D1          pop  de
3C0A: A6          and  (hl)
3C0B: 06 A5       ld   b,$A5
3C0D: 0F          rrca
3C0E: 00          nop
3C0F: 8F          adc  a,a
3C10: 8A          adc  a,d
3C11: 20 07       jr   nz,$3C1A
3C13: FF          rst  $38
3C14: FF          rst  $38
3C15: F9          ld   sp,hl
3C16: FF          rst  $38
3C17: 02          ld   (bc),a
3C18: BF          cp   a
3C19: 07          rlca
3C1A: D1          pop  de
3C1B: B2          or   d
3C1C: 05          dec  b
3C1D: B1          or   c
3C1E: 0F          rrca
3C1F: 00          nop
3C20: 8F          adc  a,a
3C21: 8A          adc  a,d
3C22: 20 07       jr   nz,$3C2B
3C24: FF          rst  $38
3C25: FF          rst  $38
3C26: FA FF 03    jp   m,$03FF
3C29: BF          cp   a
3C2A: 07          rlca
3C2B: 04          inc  b
3C2C: BC          cp   h
3C2D: 0F          rrca
3C2E: 00          nop
3C2F: 8F          adc  a,a
3C30: 8A          adc  a,d
3C31: 20 07       jr   nz,$3C3A
3C33: FF          rst  $38
3C34: FF          rst  $38
3C35: FB          ei
3C36: FF          rst  $38
3C37: D3 CA       out  ($CA),a
3C39: D4 C9 03    call nc,$03C9
3C3C: C8          ret  z
3C3D: 0F          rrca
3C3E: 00          nop
3C3F: 8F          adc  a,a
3C40: 8A          adc  a,d
3C41: 20 07       jr   nz,$3C4A
3C43: FF          rst  $38
3C44: FF          rst  $38
3C45: FC FF D3    call m,$D3FF
3C48: DE D4       sbc  a,$D4
3C4A: D3 02       out  ($02),a
3C4C: D2 0F 00    jp   nc,$000F
3C4F: 8F          adc  a,a
3C50: 8A          adc  a,d
3C51: 20 07       jr   nz,$3C5A
3C53: FF          rst  $38
3C54: FF          rst  $38
3C55: FD          db   $fd
3C56: FF          rst  $38
3C57: 03          inc  bc
3C58: DE 07       sbc  a,$07
3C5A: 91          sub  c
3C5B: DB 0F       in   a,($0F)
3C5D: 00          nop
3C5E: 8F          adc  a,a
3C5F: 8A          adc  a,d
3C60: 20 07       jr   nz,$3C69
3C62: FF          rst  $38
3C63: FF          rst  $38
3C64: FE FF       cp   $FF
3C66: D3 FB       out  ($FB),a
3C68: FA E5 00    jp   m,$00E5
3C6B: 8F          adc  a,a
3C6C: 8A          adc  a,d
3C6D: 20 07       jr   nz,$3C76
3C6F: FF          rst  $38
3C70: FF          rst  $38
3C71: FF          rst  $38
3C72: FF          rst  $38
3C73: D2 FB FA    jp   nc,$FAFB
3C76: 00          nop
3C77: 8F          adc  a,a
3C78: 8A          adc  a,d
3C79: 20 07       jr   nz,$3C82
3C7B: FF          rst  $38
3C7C: FF          rst  $38
3C7D: FF          rst  $38
3C7E: FF          rst  $38
3C7F: F1          pop  af
3C80: FF          rst  $38
3C81: D1          pop  de
3C82: FB          ei
3C83: 00          nop
3C84: 85          add  a,l
3C85: 20 07       jr   nz,$3C8E
3C87: FF          rst  $38
3C88: FF          rst  $38
3C89: FF          rst  $38
3C8A: FF          rst  $38
3C8B: FF          rst  $38
3C8C: FF          rst  $38
3C8D: F7          rst  $30
3C8E: FF          rst  $38
3C8F: 30 83       jr   nc,$3C14
3C91: 3C          inc  a
3C92: 80          add  a,b
3C93: F1          pop  af
3C94: 02          ld   (bc),a
3C95: 91          sub  c
3C96: 08          ex   af,af'
3C97: 21 20 1D    ld   hl,$1D20
3C9A: FC FF 05    call m,$05FF
3C9D: 1E 21       ld   e,$21
3C9F: 20 1D       jr   nz,$3CBE
3CA1: F8          ret  m
3CA2: FF          rst  $38
3CA3: 04          inc  b
3CA4: 07          rlca
3CA5: 1D          dec  e
3CA6: F9          ld   sp,hl
3CA7: FF          rst  $38
3CA8: 20 21       jr   nz,$3CCB
3CAA: FF          rst  $38
3CAB: 08          ex   af,af'
3CAC: FA 08 00    jp   m,$0008
3CAF: 91          sub  c
3CB0: 09          add  hl,bc
3CB1: 21 20 1D    ld   hl,$1D20
3CB4: FC FF 05    call m,$05FF
3CB7: 23          inc  hl
3CB8: 21 20 1D    ld   hl,$1D20
3CBB: F8          ret  m
3CBC: FF          rst  $38
3CBD: 04          inc  b
3CBE: 14          inc  d
3CBF: 1D          dec  e
3CC0: F9          ld   sp,hl
3CC1: FF          rst  $38
3CC2: 20 21       jr   nz,$3CE5
3CC4: FF          rst  $38
3CC5: 09          add  hl,bc
3CC6: FA 09 00    jp   m,$0009
3CC9: 0D          dec  c
3CCA: 14          inc  d
3CCB: 3D          dec  a
3CCC: FE F8       cp   $F8
3CCE: 0D          dec  c
3CCF: 91          sub  c
3CD0: 3D          dec  a
3CD1: E2 F8 0D    jp   po,$0DF8
3CD4: 4B          ld   c,e
3CD5: 3E E2       ld   a,$E2
3CD7: F8          ret  m
3CD8: 0D          dec  c
3CD9: 91          sub  c
3CDA: 3D          dec  a
3CDB: E4 F8 0D    call po,$0DF8
3CDE: 91          sub  c
3CDF: 3D          dec  a
3CE0: E6 F8       and  $F8
3CE2: 0D          dec  c
3CE3: 91          sub  c
3CE4: 3D          dec  a
3CE5: E8          ret  pe
3CE6: F8          ret  m
3CE7: 0D          dec  c
3CE8: 91          sub  c
3CE9: 3D          dec  a
3CEA: EA F8 0D    jp   pe,$0DF8
3CED: 91          sub  c
3CEE: 3D          dec  a
3CEF: EC F8 0D    call pe,$0DF8
3CF2: 91          sub  c
3CF3: 3D          dec  a
3CF4: EE F8       xor  $F8
3CF6: 0D          dec  c
3CF7: 91          sub  c
3CF8: 3D          dec  a
3CF9: F0          ret  p
3CFA: F8          ret  m
3CFB: 0D          dec  c
3CFC: 91          sub  c
3CFD: 3D          dec  a
3CFE: F2 F8 0D    jp   p,$0DF8
3D01: 91          sub  c
3D02: 3D          dec  a
3D03: F4 F8 0D    call p,$0DF8
3D06: 91          sub  c
3D07: 3D          dec  a
3D08: F6 F8       or   $F8
3D0A: 0D          dec  c
3D0B: 91          sub  c
3D0C: 3D          dec  a
3D0D: F8          ret  m
3D0E: F8          ret  m
3D0F: 0D          dec  c
3D10: 91          sub  c
3D11: 3D          dec  a
3D12: FA F8 17    jp   m,$17F8
3D15: 92          sub  d
3D16: 8F          adc  a,a
3D17: 91          sub  c
3D18: 99          sbc  a,c
3D19: 87          add  a,a
3D1A: 12          ld   (de),a
3D1B: BE          cp   (hl)
3D1C: 87          add  a,a
3D1D: 20 07       jr   nz,$3D26
3D1F: F4 FF 00    call p,$00FF
3D22: 16 A0       ld   d,$A0
3D24: 8F          adc  a,a
3D25: 91          sub  c
3D26: A6          and  (hl)
3D27: 87          add  a,a
3D28: 12          ld   (de),a
3D29: BE          cp   (hl)
3D2A: 87          add  a,a
3D2B: 20 07       jr   nz,$3D34
3D2D: F5          push af
3D2E: FF          rst  $38
3D2F: 00          nop
3D30: 15          dec  d
3D31: AD          xor  l
3D32: 8F          adc  a,a
3D33: 91          sub  c
3D34: B2          or   d
3D35: 87          add  a,a
3D36: 12          ld   (de),a
3D37: BE          cp   (hl)
3D38: 87          add  a,a
3D39: 20 07       jr   nz,$3D42
3D3B: F6 FF       or   $FF
3D3D: 00          nop
3D3E: 14          inc  d
3D3F: B9          cp   c
3D40: 8F          adc  a,a
3D41: 13          inc  de
3D42: BD          cp   l
3D43: 87          add  a,a
3D44: 20 07       jr   nz,$3D4D
3D46: F7          rst  $30
3D47: FF          rst  $38
3D48: 00          nop
3D49: 13          inc  de
3D4A: C6 8F       add  a,$8F
3D4C: 20 87       jr   nz,$3CD5
3D4E: D3 C9       out  ($C9),a
3D50: D4 CA 20    call nc,$20CA
3D53: 07          rlca
3D54: F8          ret  m
3D55: FF          rst  $38
3D56: 00          nop
3D57: 12          ld   (de),a
3D58: D1          pop  de
3D59: 8F          adc  a,a
3D5A: 12          ld   (de),a
3D5B: D3 87       out  ($87),a
3D5D: D1          pop  de
3D5E: DE 20       sbc  a,$20
3D60: 07          rlca
3D61: F9          ld   sp,hl
3D62: FF          rst  $38
3D63: 00          nop
3D64: 91          sub  c
3D65: DB 8F       in   a,($8F)
3D67: 13          inc  de
3D68: DC 87 20    call c,$2087
3D6B: 07          rlca
3D6C: FA FF 00    jp   m,$00FF
3D6F: 20 87       jr   nz,$3CF8
3D71: D3 E5       out  ($E5),a
3D73: FA FB 20    jp   m,$20FB
3D76: 07          rlca
3D77: FB          ei
3D78: FF          rst  $38
3D79: 00          nop
3D7A: 20 87       jr   nz,$3D03
3D7C: D2 FA FB    jp   nc,$FBFA
3D7F: 20 07       jr   nz,$3D88
3D81: FC FF 00    call m,$00FF
3D84: 91          sub  c
3D85: FB          ei
3D86: 87          add  a,a
3D87: 20 07       jr   nz,$3D90
3D89: FD          db   $fd
3D8A: FF          rst  $38
3D8B: 00          nop
3D8C: FE FF       cp   $FF
3D8E: 30 8B       jr   nc,$3D1B
3D90: 3D          dec  a
3D91: 20 07       jr   nz,$3D9A
3D93: F2 FF 04    jp   p,$04FF
3D96: 35          dec  (hl)
3D97: 38 20       jr   c,$3DB9
3D99: 07          rlca
3D9A: F6 FF       or   $FF
3D9C: 00          nop
3D9D: F2 FF 91    jp   p,$91FF
3DA0: 37          scf
3DA1: 38 F2       jr   c,$3D95
3DA3: FE D1       cp   $D1
3DA5: 36 20       ld   (hl),$20
3DA7: 07          rlca
3DA8: F6 FF       or   $FF
3DAA: 00          nop
3DAB: F2 FF 20    jp   p,$20FF
3DAE: 38 F2       jr   c,$3DA2
3DB0: FE 03       cp   $03
3DB2: 3A 38 20    ld   a,($2038)
3DB5: 07          rlca
3DB6: F5          push af
3DB7: FF          rst  $38
3DB8: 00          nop
3DB9: F2 FF 20    jp   p,$20FF
3DBC: 38 D2       jr   c,$3D90
3DBE: 3E FE       ld   a,$FE
3DC0: 03          inc  bc
3DC1: 3D          dec  a
3DC2: 38 20       jr   c,$3DE4
3DC4: 07          rlca
3DC5: F5          push af
3DC6: FF          rst  $38
3DC7: 00          nop
3DC8: F1          pop  af
3DC9: FF          rst  $38
3DCA: 06 44       ld   b,$44
3DCC: 38 20       jr   c,$3DEE
3DCE: 07          rlca
3DCF: F5          push af
3DD0: FF          rst  $38
3DD1: 00          nop
3DD2: 07          rlca
3DD3: 4B          ld   c,e
3DD4: 38 20       jr   c,$3DF6
3DD6: 07          rlca
3DD7: F5          push af
3DD8: FF          rst  $38
3DD9: 00          nop
3DDA: 09          add  hl,bc
3DDB: 54          ld   d,h
3DDC: 38 20       jr   c,$3DFE
3DDE: 07          rlca
3DDF: F3          di
3DE0: FF          rst  $38
3DE1: 00          nop
3DE2: 91          sub  c
3DE3: 5B          ld   e,e
3DE4: 38 F2       jr   c,$3DD8
3DE6: FC 03 5A    call m,$5A03
3DE9: 38 D1       jr   c,$3DBC
3DEB: FF          rst  $38
3DEC: 03          inc  bc
3DED: 57          ld   d,a
3DEE: 38 20       jr   c,$3E10
3DF0: 07          rlca
3DF1: F2 FF 00    jp   p,$00FF
3DF4: 91          sub  c
3DF5: 62          ld   h,d
3DF6: 38 F2       jr   c,$3DEA
3DF8: FC 03 61    call m,$6103
3DFB: 38 D1       jr   c,$3DCE
3DFD: FF          rst  $38
3DFE: 03          inc  bc
3DFF: 5E          ld   e,(hl)
3E00: 38 20       jr   c,$3E22
3E02: 07          rlca
3E03: F2 FF 00    jp   p,$00FF
3E06: 20 38       jr   nz,$3E40
3E08: F2 FC 02    jp   p,$02FC
3E0B: 66          ld   h,(hl)
3E0C: 38 F2       jr   c,$3E00
3E0E: FC D1 FF    call m,$FFD1
3E11: 02          ld   (bc),a
3E12: 64          ld   h,h
3E13: 38 20       jr   c,$3E35
3E15: 07          rlca
3E16: F3          di
3E17: FF          rst  $38
3E18: 00          nop
3E19: 20 38       jr   nz,$3E53
3E1B: F3          di
3E1C: FC D3 6A    call m,$6AD3
3E1F: FC 5F 03    call m,$035F
3E22: 69          ld   l,c
3E23: 38 20       jr   c,$3E45
3E25: 07          rlca
3E26: F3          di
3E27: FF          rst  $38
3E28: 00          nop
3E29: 20 38       jr   nz,$3E63
3E2B: F3          di
3E2C: FC D3 6D    call m,$6DD3
3E2F: FC 54 02    call m,$0254
3E32: 6C          ld   l,h
3E33: 38 20       jr   c,$3E55
3E35: 07          rlca
3E36: F4 FF 00    call p,$00FF
3E39: 20 38       jr   nz,$3E73
3E3B: D2 73 FC    jp   nc,$FC73
3E3E: 02          ld   (bc),a
3E3F: 72          ld   (hl),d
3E40: 38 D1       jr   c,$3E13
3E42: FC 03 70    call m,$7003
3E45: 38 20       jr   c,$3E67
3E47: 07          rlca
3E48: F4 FF 00    call p,$00FF
3E4B: 91          sub  c
3E4C: FF          rst  $38
3E4D: 07          rlca
3E4E: 04          inc  b
3E4F: 35          dec  (hl)
3E50: 38 20       jr   c,$3E72
3E52: 07          rlca
3E53: F6 FF       or   $FF
3E55: 00          nop
3E56: D1          pop  de
3E57: FF          rst  $38
3E58: 91          sub  c
3E59: 37          scf
3E5A: 38 F2       jr   c,$3E4E
3E5C: FE D1       cp   $D1
3E5E: 36 20       ld   (hl),$20
3E60: 07          rlca
3E61: F6 FF       or   $FF
3E63: 00          nop
3E64: D1          pop  de
3E65: FF          rst  $38
3E66: 20 38       jr   nz,$3EA0
3E68: F2 FE 03    jp   p,$03FE
3E6B: 3A 38 20    ld   a,($2038)
3E6E: 07          rlca
3E6F: F5          push af
3E70: FF          rst  $38
3E71: 00          nop
3E72: D1          pop  de
3E73: FF          rst  $38
3E74: 20 38       jr   nz,$3EAE
3E76: D2 3E FE    jp   nc,$FE3E
3E79: 03          inc  bc
3E7A: 3D          dec  a
3E7B: 38 20       jr   c,$3E9D
3E7D: 07          rlca
3E7E: F5          push af
3E7F: FF          rst  $38
3E80: 00          nop
3E81: 03          inc  bc
3E82: 44          ld   b,h
3E83: 38 04       jr   c,$3E89
3E85: 77          ld   (hl),a
3E86: 38 20       jr   c,$3EA8
3E88: 07          rlca
3E89: F4 FF 00    call p,$00FF
3E8C: 03          inc  bc
3E8D: 4A          ld   c,d
3E8E: 38 07       jr   c,$3E97
3E90: 7E          ld   a,(hl)
3E91: 38 91       jr   c,$3E24
3E93: FF          rst  $38
3E94: 07          rlca
3E95: 00          nop
3E96: 02          ld   (bc),a
3E97: 53          ld   d,e
3E98: 38 09       jr   c,$3EA3
3E9A: 87          add  a,a
3E9B: 38 00       jr   c,$3E9D
3E9D: 20 38       jr   nz,$3ED7
3E9F: F2 FC D1    jp   p,$D1FC
3EA2: 5A          ld   e,d
3EA3: 08          ex   af,af'
3EA4: 8F          adc  a,a
3EA5: 38 00       jr   c,$3EA7
3EA7: 20 38       jr   nz,$3EE1
3EA9: F2 FC D3    jp   p,$D3FC
3EAC: 61          ld   h,c
3EAD: 96          sub  (hl)
3EAE: FC 06 95    call m,$9506
3EB1: 38 00       jr   c,$3EB3
3EB3: 91          sub  c
3EB4: 52          ld   d,d
3EB5: 38 02       jr   c,$3EB9
3EB7: 66          ld   h,(hl)
3EB8: 38 D3       jr   c,$3E8D
3EBA: 99          sbc  a,c
3EBB: FC FC 02    call m,$02FC
3EBE: 98          sbc  a,b
3EBF: 38 20       jr   c,$3EE1
3EC1: 07          rlca
3EC2: F3          di
3EC3: FF          rst  $38
3EC4: 00          nop
3EC5: 20 38       jr   nz,$3EFF
3EC7: F2 FC D5    jp   p,$D5FC
3ECA: 6A          ld   l,d
3ECB: 9B          sbc  a,e
3ECC: FC FC 9A    call m,$9AFC
3ECF: 20 07       jr   nz,$3ED8
3ED1: F4 FF 00    call p,$00FF
3ED4: 20 38       jr   nz,$3F0E
3ED6: F2 FC D1    jp   p,$D1FC
3ED9: 6D          ld   l,l
3EDA: 03          inc  bc
3EDB: 9E          sbc  a,(hl)
3EDC: 38 20       jr   c,$3EFE
3EDE: 07          rlca
3EDF: F5          push af
3EE0: FF          rst  $38
3EE1: 00          nop
3EE2: 20 38       jr   nz,$3F1C
3EE4: D2 FC 72    jp   nc,$72FC
3EE7: 02          ld   (bc),a
3EE8: A0          and  b
3EE9: 38 20       jr   c,$3F0B
3EEB: 07          rlca
3EEC: F7          rst  $30
3EED: FF          rst  $38
3EEE: 00          nop
3EEF: 80          add  a,b
3EF0: D8          ret  c
3EF1: 18 00       jr   $3EF3
3EF3: 20 44       jr   nz,$3F39
3EF5: FF          rst  $38
3EF6: FE FF       cp   $FF
3EF8: FE F2       cp   $F2
3EFA: FE 30       cp   $30
3EFC: F2 3E B4    jp   p,$B43E
3EFF: D8          ret  c
3F00: 13          inc  de
3F01: 02          ld   (bc),a
3F02: D5          push de
3F03: 44          ld   b,h
3F04: FF          rst  $38
3F05: D4 F2 D4    call nc,$D4F2
3F08: 91          sub  c
3F09: D5          push de
3F0A: C4 00 91    call nz,$9100
3F0D: D6 44       sub  $44
3F0F: 12          ld   (de),a
3F10: C8          ret  z
3F11: FF          rst  $38
3F12: 0F          rrca
3F13: D7          rst  $10
3F14: 7F          ld   a,a
3F15: D1          pop  de
3F16: C8          ret  z
3F17: 91          sub  c
3F18: D6 C4       sub  $C4
3F1A: 00          nop
3F1B: 91          sub  c
3F1C: D6 44       sub  $44
3F1E: 12          ld   (de),a
3F1F: D8          ret  c
3F20: FF          rst  $38
3F21: 0F          rrca
3F22: E7          rst  $20
3F23: 7F          ld   a,a
3F24: D1          pop  de
3F25: D8          ret  c
3F26: 91          sub  c
3F27: D6 C4       sub  $C4
3F29: 00          nop
3F2A: 91          sub  c
3F2B: D6 44       sub  $44
3F2D: 19          add  hl,de
3F2E: E8          ret  pe
3F2F: FF          rst  $38
3F30: 09          add  hl,bc
3F31: F0          ret  p
3F32: 7F          ld   a,a
3F33: 91          sub  c
3F34: D6 C4       sub  $C4
3F36: 00          nop
3F37: 91          sub  c
3F38: D7          rst  $10
3F39: 44          ld   b,h
3F3A: FF          rst  $38
3F3B: 89          adc  a,c
3F3C: F3          di
3F3D: 89          adc  a,c
3F3E: 91          sub  c
3F3F: D7          rst  $10
3F40: C4 00 91    call nz,$9100
3F43: D6 44       sub  $44
3F45: 20 18       jr   nz,$3F5F
3F47: D6 FF       sub  $FF
3F49: 0E 1B       ld   c,$1B
3F4B: 18 0C       jr   $3F59
3F4D: 1C          inc  e
3F4E: F3          di
3F4F: FF          rst  $38
3F50: D9          exx
3F51: 0E 16       ld   c,$16
3F53: 0A          ld   a,(bc)
3F54: 17          rla
3F55: FF          rst  $38
3F56: 2B          dec  hl
3F57: 18 17       jr   $3F70
3F59: FF          rst  $38
3F5A: 91          sub  c
3F5B: D6 C4       sub  $C4
3F5D: 00          nop
3F5E: 91          sub  c
3F5F: D7          rst  $10
3F60: 44          ld   b,h
3F61: FF          rst  $38
3F62: 89          adc  a,c
3F63: F3          di
3F64: 89          adc  a,c
3F65: 91          sub  c
3F66: D7          rst  $10
3F67: C4 00 91    call nz,$9100
3F6A: D6 44       sub  $44
3F6C: 20 04       jr   nz,$3F72
3F6E: F8          ret  m
3F6F: FF          rst  $38
3F70: 20 64       jr   nz,$3FD6
3F72: F5          push af
3F73: FF          rst  $38
3F74: 20 14       jr   nz,$3F8A
3F76: F5          push af
3F77: FF          rst  $38
3F78: 91          sub  c
3F79: D6 C4       sub  $C4
3F7B: 30 68       jr   nc,$3FE5
3F7D: 3F          ccf
3F7E: 80          add  a,b
3F7F: DD 09       add  ix,bc
3F81: 86          add  a,(hl)
3F82: 91          sub  c
3F83: D8          ret  c
3F84: 44          ld   b,h
3F85: FF          rst  $38
3F86: D9          exx
3F87: F3          di
3F88: D9          exx
3F89: 91          sub  c
3F8A: D8          ret  c
3F8B: C4 00 00    call nz,$0000
3F8E: 00          nop
3F8F: 00          nop
3F90: 20 10       jr   nz,$3FA2
3F92: FF          rst  $38
3F93: DE FF       sbc  a,$FF
3F95: DE F2       sbc  a,$F2
3F97: DE 00       sbc  a,$00
3F99: 20 04       jr   nz,$3F9F
3F9B: FF          rst  $38
3F9C: FB          ei
3F9D: FF          rst  $38
3F9E: FB          ei
3F9F: F2 FB 00    jp   p,$00FB
3FA2: FF          rst  $38
3FA3: FB          ei
3FA4: FF          rst  $38
3FA5: FB          ei
3FA6: F2 FB 00    jp   p,$00FB
3FA9: FF          rst  $38
3FAA: FB          ei
3FAB: FF          rst  $38
3FAC: FB          ei
3FAD: F2 FB 00    jp   p,$00FB
3FB0: 20 10       jr   nz,$3FC2
3FB2: FF          rst  $38
3FB3: DE FF       sbc  a,$FF
3FB5: DE F2       sbc  a,$F2
3FB7: DE 00       sbc  a,$00
3FB9: 80          add  a,b
3FBA: F0          ret  p
3FBB: 1E 8F       ld   e,$8F
3FBD: 8F          adc  a,a
3FBE: 82          add  a,d
3FBF: 20 01       jr   nz,$3FC2
3FC1: FF          rst  $38
3FC2: 00          nop
3FC3: FF          rst  $38
3FC4: 00          nop
3FC5: F2 00 20    jp   p,$2000
3FC8: 04          inc  b
3FC9: 30 69       jr   nc,$4034
3FCB: 37          scf
3FCC: CE F2       adc  a,$F2
3FCE: 16 20       ld   d,$20
3FD0: 04          inc  b
3FD1: DF          rst  $18
3FD2: FF          rst  $38
3FD3: 0E 1B       ld   c,$1B
3FD5: 18 0C       jr   $3FE3
3FD7: 1C          inc  e
3FD8: FF          rst  $38
3FD9: FF          rst  $38
3FDA: 0E 16       ld   c,$16
3FDC: 0A          ld   a,(bc)
3FDD: 17          rla
3FDE: 2B          dec  hl
3FDF: 18 17       jr   $3FF8
3FE1: 82          add  a,d
3FE2: DE 0E       sbc  a,$0E
3FE4: 1B          dec  de
3FE5: 18 0C       jr   $3FF3
3FE7: 1C          inc  e
3FE8: FF          rst  $38
3FE9: FF          rst  $38
3FEA: 0E 16       ld   c,$16
3FEC: 0A          ld   a,(bc)
3FED: 17          rla
3FEE: 2B          dec  hl
3FEF: 18 17       jr   $4008
3FF1: 00          nop
3FF2: 00          nop
3FF3: 20 44       jr   nz,$4039
3FF5: FF          rst  $38
3FF6: FF          rst  $38
3FF7: 82          add  a,d
3FF8: 20 48       jr   nz,$4042
3FFA: FE FF       cp   $FF
3FFC: 00          nop
3FFD: 20 48       jr   nz,$4047
3FFF: FF          rst  $38
4000: FF          rst  $38
4001: 82          add  a,d
4002: 20 44       jr   nz,$4048
4004: FE FF       cp   $FF
4006: 30 F2       jr   nc,$3FFA
4008: 3F          ccf
4009: 4E          ld   c,(hl)
400A: FD          db   $fd
400B: 03          inc  bc
400C: 83          add  a,e
400D: 0F          rrca
400E: B9          cp   c
400F: 40          ld   b,b
4010: 05          dec  b
4011: AA          xor  d
4012: 40          ld   b,b
4013: 81          add  a,c
4014: 05          dec  b
4015: A5          and  l
4016: 40          ld   b,b
4017: 83          add  a,e
4018: 00          nop
4019: 83          add  a,e
401A: 0F          rrca
401B: D2 40 05    jp   nc,$0540
401E: C3 40 81    jp   $8140
4021: 05          dec  b
4022: BE          cp   (hl)
4023: 40          ld   b,b
4024: 83          add  a,e
4025: 30 3E       jr   nc,$4065
4027: 40          ld   b,b
4028: 4E          ld   c,(hl)
4029: FD          db   $fd
402A: 03          inc  bc
402B: 89          adc  a,c
402C: 08          ex   af,af'
402D: AD          xor  l
402E: 40          ld   b,b
402F: 81          add  a,c
4030: 05          dec  b
4031: A5          and  l
4032: 40          ld   b,b
4033: 89          adc  a,c
4034: 00          nop
4035: 89          adc  a,c
4036: 08          ex   af,af'
4037: C6 40       add  a,$40
4039: 81          add  a,c
403A: 05          dec  b
403B: BE          cp   (hl)
403C: 40          ld   b,b
403D: 89          adc  a,c
403E: 00          nop
403F: 20 24       jr   nz,$4065
4041: FF          rst  $38
4042: FF          rst  $38
4043: FF          rst  $38
4044: FF          rst  $38
4045: F2 FF 00    jp   p,$00FF
4048: CE F3       adc  a,$F3
404A: 07          rlca
404B: 20 24       jr   nz,$4071
404D: F7          rst  $30
404E: FF          rst  $38
404F: D5          push de
4050: 17          rla
4051: 12          ld   (de),a
4052: 18 0C       jr   $4060
4054: FF          rst  $38
4055: 20 2C       jr   nz,$4083
4057: F3          di
4058: FF          rst  $38
4059: 20 24       jr   nz,$407F
405B: D9          exx
405C: 25          dec  h
405D: FF          rst  $38
405E: FF          rst  $38
405F: 1D          dec  e
4060: 12          ld   (de),a
4061: 0D          dec  c
4062: 0E 1B       ld   c,$1B
4064: 0C          inc  c
4065: F8          ret  m
4066: FF          rst  $38
4067: 00          nop
4068: 20 2C       jr   nz,$4096
406A: F6 E1       or   $E1
406C: FF          rst  $38
406D: 24          inc  h
406E: F4 24 F7    call p,$F724
4071: E1          pop  hl
4072: 00          nop
4073: 00          nop
4074: 00          nop
4075: 00          nop
4076: 00          nop
4077: 20 2C       jr   nz,$40A5
4079: F7          rst  $30
407A: FF          rst  $38
407B: D5          push de
407C: 17          rla
407D: 12          ld   (de),a
407E: 18 0C       jr   $408C
4080: FF          rst  $38
4081: 20 24       jr   nz,$40A7
4083: F3          di
4084: FF          rst  $38
4085: 20 2C       jr   nz,$40B3
4087: DB 25       in   a,($25)
4089: FF          rst  $38
408A: FF          rst  $38
408B: 22 0A 15    ld   ($150A),hl
408E: 19          add  hl,de
408F: FF          rst  $38
4090: 20 0E       jr   nz,$40A0
4092: 17          rla
4093: F6 FF       or   $FF
4095: 00          nop
4096: CE F8       adc  a,$F8
4098: 01 20 2C    ld   bc,$2C20
409B: F7          rst  $30
409C: FF          rst  $38
409D: D5          push de
409E: 17          rla
409F: 12          ld   (de),a
40A0: 18 0C       jr   $40AE
40A2: FF          rst  $38
40A3: 20 24       jr   nz,$40C9
40A5: F3          di
40A6: FF          rst  $38
40A7: 20 2C       jr   nz,$40D5
40A9: DB 25       in   a,($25)
40AB: FF          rst  $38
40AC: FF          rst  $38
40AD: FF          rst  $38
40AE: 11 0C 1D    ld   de,$1D0C
40B1: 0A          ld   a,(bc)
40B2: 16 0E       ld   d,$0E
40B4: 1B          dec  de
40B5: F6 FF       or   $FF
40B7: 00          nop
40B8: 4E          ld   c,(hl)
40B9: FA 0A 00    jp   m,$000A
40BC: 20 20       jr   nz,$40DE
40BE: FF          rst  $38
40BF: FF          rst  $38
40C0: FF          rst  $38
40C1: FF          rst  $38
40C2: F2 FF 30    jp   p,$30FF
40C5: BB          cp   e
40C6: 40          ld   b,b
40C7: 4E          ld   c,(hl)
40C8: FC 01 20    call m,$2001
40CB: 1C          inc  e
40CC: F3          di
40CD: FF          rst  $38
40CE: DF          rst  $18
40CF: 29          add  hl,hl
40D0: 29          add  hl,hl
40D1: FF          rst  $38
40D2: 17          rla
40D3: 12          ld   (de),a
40D4: 18 0C       jr   $40E2
40D6: FF          rst  $38
40D7: 0E 1B       ld   c,$1B
40D9: 18 16       jr   $40F1
40DB: FF          rst  $38
40DC: 0E 17       ld   c,$17
40DE: D9          exx
40DF: 18 FF       jr   $40E0
40E1: 1D          dec  e
40E2: 12          ld   (de),a
40E3: 1C          inc  e
40E4: 18 19       jr   $40FF
40E6: 0E 0D       ld   c,$0D
40E8: 00          nop
40E9: CE FB       adc  a,$FB
40EB: 02          ld   (bc),a
40EC: 20 1C       jr   nz,$410A
40EE: F9          ld   sp,hl
40EF: FF          rst  $38
40F0: DF          rst  $18
40F1: 1B          dec  de
40F2: 18 0F       jr   $4103
40F4: FF          rst  $38
40F5: 1D          dec  e
40F6: 1B          dec  de
40F7: 0A          ld   a,(bc)
40F8: 1D          dec  e
40F9: 1C          inc  e
40FA: FF          rst  $38
40FB: 1C          inc  e
40FC: 1C          inc  e
40FD: 0E 1B       ld   c,$1B
40FF: 19          add  hl,de
4100: F8          ret  m
4101: FF          rst  $38
4102: 00          nop
4103: FF          rst  $38
4104: FF          rst  $38
4105: FF          rst  $38
4106: FF          rst  $38
4107: F2 FF 00    jp   p,$00FF
410A: BA          cp   d
410B: FC 05 20    call m,$2005
410E: 20 D9       jr   nz,$40E9
4110: FF          rst  $38
4111: 22 0A 15    ld   ($150A),hl
4114: 19          add  hl,de
4115: FF          rst  $38
4116: 20 0E       jr   nz,$4126
4118: 17          rla
4119: 00          nop
411A: 00          nop
411B: F3          di
411C: FF          rst  $38
411D: D1          pop  de
411E: FB          ei
411F: 91          sub  c
4120: FB          ei
4121: A0          and  b
4122: 00          nop
4123: 20 20       jr   nz,$4145
4125: F3          di
4126: FF          rst  $38
4127: D1          pop  de
4128: FB          ei
4129: 91          sub  c
412A: FB          ei
412B: A0          and  b
412C: 00          nop
412D: 20 20       jr   nz,$414F
412F: F3          di
4130: FF          rst  $38
4131: D1          pop  de
4132: FA 91 FA    jp   m,$FA91
4135: A0          and  b
4136: 00          nop
4137: CA FC 05    jp   z,$05FC
413A: 20 20       jr   nz,$415C
413C: D7          rst  $10
413D: 11 0C 1D    ld   de,$1D0C
4140: 0A          ld   a,(bc)
4141: 16 0E       ld   d,$0E
4143: 1B          dec  de
4144: 30 19       jr   nc,$415F
4146: 41          ld   b,c
4147: CE FA       adc  a,$FA
4149: 09          add  hl,bc
414A: 20 20       jr   nz,$416C
414C: FF          rst  $38
414D: FF          rst  $38
414E: FF          rst  $38
414F: FF          rst  $38
4150: F2 FF 00    jp   p,$00FF
4153: 20 20       jr   nz,$4175
4155: FF          rst  $38
4156: FF          rst  $38
4157: FF          rst  $38
4158: FF          rst  $38
4159: F2 FF 00    jp   p,$00FF
415C: FF          rst  $38
415D: FF          rst  $38
415E: DA 29 29    jp   c,$2929
4161: FF          rst  $38
4162: 11 0C 1D    ld   de,$1D0C
4165: 0A          ld   a,(bc)
4166: 16 0E       ld   d,$0E
4168: 1B          dec  de
4169: F7          rst  $30
416A: FF          rst  $38
416B: 00          nop
416C: 20 20       jr   nz,$418E
416E: FF          rst  $38
416F: FF          rst  $38
4170: FF          rst  $38
4171: FF          rst  $38
4172: F2 FF 00    jp   p,$00FF
4175: 20 1C       jr   nz,$4193
4177: F4 FF DF    call p,$DFFF
417A: 0E 16       ld   c,$16
417C: 12          ld   (de),a
417D: 1D          dec  e
417E: FF          rst  $38
417F: 17          rla
4180: 12          ld   (de),a
4181: FF          rst  $38
4182: 1C          inc  e
4183: 17          rla
4184: 12          ld   (de),a
4185: 18 0C       jr   $4193
4187: FF          rst  $38
4188: 1D          dec  e
4189: D6 12       sub  $12
418B: 1C          inc  e
418C: 18 19       jr   $41A7
418E: 0E 0D       ld   c,$0D
4190: F7          rst  $30
4191: FF          rst  $38
4192: 00          nop
4193: 20 20       jr   nz,$41B5
4195: FF          rst  $38
4196: FF          rst  $38
4197: FF          rst  $38
4198: FF          rst  $38
4199: F2 FF 30    jp   p,$30FF
419C: 92          sub  d
419D: 41          ld   b,c
419E: 40          ld   b,b
419F: D8          ret  c
41A0: 1E 20       ld   e,$20
41A2: C7          rst  $00
41A3: FF          rst  $38
41A4: C7          rst  $00
41A5: FF          rst  $38
41A6: C7          rst  $00
41A7: F2 C7 00    jp   p,$00C7
41AA: 20 00       jr   nz,$41AC
41AC: FF          rst  $38
41AD: FF          rst  $38
41AE: FF          rst  $38
41AF: FF          rst  $38
41B0: F2 FF 30    jp   p,$30FF
41B3: A9          xor  c
41B4: 41          ld   b,c
41B5: F0          ret  p
41B6: DA 12 20    jp   c,$2012
41B9: 1C          inc  e
41BA: D1          pop  de
41BB: 8B          adc  a,e
41BC: F5          push af
41BD: FF          rst  $38
41BE: D4 0A 0B    call nc,$0B0A
41C1: 1F          rra
41C2: 20 F5       jr   nz,$41B9
41C4: FF          rst  $38
41C5: D1          pop  de
41C6: 8B          adc  a,e
41C7: 00          nop
41C8: D1          pop  de
41C9: 8B          adc  a,e
41CA: 20 44       jr   nz,$4210
41CC: DE FF       sbc  a,$FF
41CE: 0E 16       ld   c,$16
41D0: 0A          ld   a,(bc)
41D1: 0F          rrca
41D2: FF          rst  $38
41D3: 0F          rrca
41D4: 18 FF       jr   $41D5
41D6: 15          dec  d
41D7: 15          dec  d
41D8: 0A          ld   a,(bc)
41D9: 11 FF 91    ld   de,$91FF
41DC: 8B          adc  a,e
41DD: 1C          inc  e
41DE: 00          nop
41DF: D1          pop  de
41E0: 8E          adc  a,(hl)
41E1: FE 89       cp   $89
41E3: 91          sub  c
41E4: 8E          adc  a,(hl)
41E5: 9C          sbc  a,h
41E6: 00          nop
41E7: 91          sub  c
41E8: 8B          adc  a,e
41E9: 1C          inc  e
41EA: 20 18       jr   nz,$4204
41EC: DE 0E       sbc  a,$0E
41EE: 1B          dec  de
41EF: 18 0C       jr   $41FD
41F1: 1C          inc  e
41F2: FF          rst  $38
41F3: FF          rst  $38
41F4: 0E 16       ld   c,$16
41F6: 0A          ld   a,(bc)
41F7: 17          rla
41F8: 2B          dec  hl
41F9: 18 17       jr   $4212
41FB: 91          sub  c
41FC: 8B          adc  a,e
41FD: 1C          inc  e
41FE: 00          nop
41FF: D1          pop  de
4200: 8E          adc  a,(hl)
4201: FE 89       cp   $89
4203: 91          sub  c
4204: 8E          adc  a,(hl)
4205: 9C          sbc  a,h
4206: 00          nop
4207: 91          sub  c
4208: 8B          adc  a,e
4209: 1C          inc  e
420A: 20 14       jr   nz,$4220
420C: F2 FF D1    jp   p,$D1FF
420F: B0          or   b
4210: F3          di
4211: FF          rst  $38
4212: 20 64       jr   nz,$4278
4214: F2 FF D1    jp   p,$D1FF
4217: B0          or   b
4218: F2 FF 20    jp   p,$20FF
421B: 20 D3       jr   nz,$41F0
421D: FF          rst  $38
421E: B0          or   b
421F: FF          rst  $38
4220: 91          sub  c
4221: 8B          adc  a,e
4222: 1C          inc  e
4223: 00          nop
4224: 91          sub  c
4225: 8B          adc  a,e
4226: 1C          inc  e
4227: 20 14       jr   nz,$423D
4229: F6 FF       or   $FF
422B: 20 64       jr   nz,$4291
422D: F5          push af
422E: FF          rst  $38
422F: 20 20       jr   nz,$4251
4231: F3          di
4232: FF          rst  $38
4233: 91          sub  c
4234: 8B          adc  a,e
4235: 1C          inc  e
4236: 30 23       jr   nc,$425B
4238: 42          ld   b,d
4239: 70          ld   (hl),b
423A: DE 05       sbc  a,$05
423C: 91          sub  c
423D: 8B          adc  a,e
423E: 1C          inc  e
423F: 20 44       jr   nz,$4285
4241: F6 FF       or   $FF
4243: 20 04       jr   nz,$4249
4245: F5          push af
4246: FF          rst  $38
4247: 20 44       jr   nz,$428D
4249: F3          di
424A: FF          rst  $38
424B: 91          sub  c
424C: 8B          adc  a,e
424D: 1C          inc  e
424E: 00          nop
424F: 00          nop
4250: 00          nop
4251: 00          nop
4252: D1          pop  de
4253: 90          sub  b
4254: FE 89       cp   $89
4256: 91          sub  c
4257: 90          sub  b
4258: 9C          sbc  a,h
4259: 00          nop
425A: 28 DC       jr   z,$4238
425C: 04          inc  b
425D: 02          ld   (bc),a
425E: 9F          sbc  a,a
425F: 18 02       jr   $4263
4261: BB          cp   e
4262: 18 04       jr   $4268
4264: 7E          ld   a,(hl)
4265: 18 00       jr   $4267
4267: D2 9D 98    jp   nc,$989D
426A: 02          ld   (bc),a
426B: 9C          sbc  a,h
426C: 18 D1       jr   $423F
426E: FF          rst  $38
426F: 03          inc  bc
4270: 9A          sbc  a,d
4271: 18 00       jr   $4273
4273: D5          push de
4274: 97          sub  a
4275: 86          add  a,(hl)
4276: 9C          sbc  a,h
4277: 96          sub  (hl)
4278: FF          rst  $38
4279: 03          inc  bc
427A: 88          adc  a,b
427B: 18 00       jr   $427D
427D: D2 85 D2    jp   nc,$D285
4280: 06 84       ld   b,$84
4282: 18 00       jr   $4284
4284: B0          or   b
4285: D8          ret  c
4286: 08          ex   af,af'
4287: 02          ld   (bc),a
4288: 8A          adc  a,d
4289: 14          inc  d
428A: FD          db   $fd
428B: 89          adc  a,c
428C: 91          sub  c
428D: 8A          adc  a,d
428E: 94          sub  h
428F: 00          nop
4290: 91          sub  c
4291: 8B          adc  a,e
4292: 14          inc  d
4293: 20 10       jr   nz,$42A5
4295: F8          ret  m
4296: FF          rst  $38
4297: D6 24       sub  $24
4299: FF          rst  $38
429A: 19          add  hl,de
429B: 18 1D       jr   $42BA
429D: FF          rst  $38
429E: 91          sub  c
429F: 8B          adc  a,e
42A0: 14          inc  d
42A1: 00          nop
42A2: 91          sub  c
42A3: 8C          adc  a,h
42A4: 14          inc  d
42A5: F8          ret  m
42A6: 89          adc  a,c
42A7: D1          pop  de
42A8: 8D          adc  a,l
42A9: F5          push af
42AA: 89          adc  a,c
42AB: 91          sub  c
42AC: 8C          adc  a,h
42AD: 94          sub  h
42AE: 00          nop
42AF: 91          sub  c
42B0: 8B          adc  a,e
42B1: 14          inc  d
42B2: DF          rst  $18
42B3: FF          rst  $38
42B4: 0E 1B       ld   c,$1B
42B6: 18 0C       jr   $42C4
42B8: 1C          inc  e
42B9: FF          rst  $38
42BA: FF          rst  $38
42BB: 8B          adc  a,e
42BC: 1C          inc  e
42BD: 1E 17       ld   e,$17
42BF: 18 0B       jr   $42CC
42C1: 8B          adc  a,e
42C2: 00          nop
42C3: 91          sub  c
42C4: 8E          adc  a,(hl)
42C5: 14          inc  d
42C6: F8          ret  m
42C7: 89          adc  a,c
42C8: D1          pop  de
42C9: 8F          adc  a,a
42CA: F5          push af
42CB: 89          adc  a,c
42CC: 91          sub  c
42CD: 8E          adc  a,(hl)
42CE: 94          sub  h
42CF: 00          nop
42D0: 20 14       jr   nz,$42E6
42D2: D3 8B       out  ($8B),a
42D4: FF          rst  $38
42D5: 30 F6       jr   nc,$42CD
42D7: FF          rst  $38
42D8: D2 8B 30    jp   nc,$308B
42DB: F4 FF D1    call p,$D1FF
42DE: 8B          adc  a,e
42DF: 00          nop
42E0: D3 8B       out  ($8B),a
42E2: FF          rst  $38
42E3: 31 F6 FF    ld   sp,$FFF6
42E6: D2 8B 31    jp   nc,$318B
42E9: F4 FF D1    call p,$D1FF
42EC: 8B          adc  a,e
42ED: 00          nop
42EE: D1          pop  de
42EF: 90          sub  b
42F0: F8          ret  m
42F1: 89          adc  a,c
42F2: D1          pop  de
42F3: 91          sub  c
42F4: F5          push af
42F5: 89          adc  a,c
42F6: 91          sub  c
42F7: 90          sub  b
42F8: 94          sub  h
42F9: 00          nop
42FA: B0          or   b
42FB: DA 0E 91    jp   c,$910E
42FE: 93          sub  e
42FF: 1C          inc  e
4300: FE 92       cp   $92
4302: 91          sub  c
4303: 93          sub  e
4304: 9C          sbc  a,h
4305: 00          nop
4306: 91          sub  c
4307: 8B          adc  a,e
4308: 1C          inc  e
4309: F3          di
430A: FF          rst  $38
430B: D1          pop  de
430C: FD          db   $fd
430D: 06 71       ld   b,$71
430F: 1C          inc  e
4310: D1          pop  de
4311: FD          db   $fd
4312: F3          di
4313: FF          rst  $38
4314: D1          pop  de
4315: 8B          adc  a,e
4316: 00          nop
4317: D1          pop  de
4318: 8B          adc  a,e
4319: F3          di
431A: FF          rst  $38
431B: D1          pop  de
431C: 72          ld   (hl),d
431D: 07          rlca
431E: 78          ld   a,b
431F: 1C          inc  e
4320: F3          di
4321: FF          rst  $38
4322: D1          pop  de
4323: 8B          adc  a,e
4324: 00          nop
4325: D1          pop  de
4326: 8B          adc  a,e
4327: 20 24       jr   nz,$434D
4329: F8          ret  m
432A: FF          rst  $38
432B: D1          pop  de
432C: 79          ld   a,c
432D: F5          push af
432E: FF          rst  $38
432F: 91          sub  c
4330: 8B          adc  a,e
4331: 1C          inc  e
4332: 00          nop
4333: D1          pop  de
4334: 8B          adc  a,e
4335: 20 24       jr   nz,$435B
4337: F8          ret  m
4338: FF          rst  $38
4339: D1          pop  de
433A: 7A          ld   a,d
433B: F5          push af
433C: FF          rst  $38
433D: 91          sub  c
433E: 8B          adc  a,e
433F: 1C          inc  e
4340: 00          nop
4341: D1          pop  de
4342: 90          sub  b
4343: FE 89       cp   $89
4345: 91          sub  c
4346: 90          sub  b
4347: 9C          sbc  a,h
4348: 00          nop
4349: 20 18       jr   nz,$4363
434B: F4 FF 08    call p,$08FF
434E: BD          cp   l
434F: 18 F4       jr   $4345
4351: FF          rst  $38
4352: 00          nop
4353: F4 FF 08    call p,$08FF
4356: C5          push bc
4357: 18 F4       jr   $434D
4359: FF          rst  $38
435A: 00          nop
435B: F4 FF 08    call p,$08FF
435E: CD 18 F4    call $F418
4361: FF          rst  $38
4362: 00          nop
4363: F4 FF 04    call p,$04FF
4366: D3 18       out  ($18),a
4368: D3 FF       out  ($FF),a
436A: CF          rst  $08
436B: CE F5       adc  a,$F5
436D: FF          rst  $38
436E: 00          nop
436F: 91          sub  c
4370: 8A          adc  a,d
4371: 1C          inc  e
4372: FE 89       cp   $89
4374: 91          sub  c
4375: 8A          adc  a,d
4376: 9C          sbc  a,h
4377: 00          nop
4378: 91          sub  c
4379: 8B          adc  a,e
437A: 1C          inc  e
437B: 20 24       jr   nz,$43A1
437D: D9          exx
437E: FF          rst  $38
437F: 45          ld   b,l
4380: 44          ld   b,h
4381: 45          ld   b,l
4382: 44          ld   b,h
4383: B4          or   h
4384: 51          ld   d,c
4385: 50          ld   d,b
4386: FF          rst  $38
4387: 05          dec  b
4388: AA          xor  d
4389: 24          inc  h
438A: 91          sub  c
438B: 8B          adc  a,e
438C: 1C          inc  e
438D: 00          nop
438E: D1          pop  de
438F: 8B          adc  a,e
4390: 20 24       jr   nz,$43B6
4392: D9          exx
4393: FF          rst  $38
4394: 47          ld   b,a
4395: 46          ld   b,(hl)
4396: 47          ld   b,a
4397: 46          ld   b,(hl)
4398: B5          or   l
4399: 53          ld   d,e
439A: 52          ld   d,d
439B: FF          rst  $38
439C: 05          dec  b
439D: AF          xor  a
439E: 24          inc  h
439F: 91          sub  c
43A0: 8B          adc  a,e
43A1: 1C          inc  e
43A2: 00          nop
43A3: D1          pop  de
43A4: 90          sub  b
43A5: FE 89       cp   $89
43A7: 91          sub  c
43A8: 90          sub  b
43A9: 9C          sbc  a,h
43AA: 00          nop
43AB: 40          ld   b,b
43AC: DE 06       sbc  a,$06
43AE: 20 04       jr   nz,$43B4
43B0: FD          db   $fd
43B1: FF          rst  $38
43B2: D6 1C       sub  $1C
43B4: 1E 1D       ld   e,$1D
43B6: 0A          ld   a,(bc)
43B7: 1D          dec  e
43B8: 1C          inc  e
43B9: FD          db   $fd
43BA: FF          rst  $38
43BB: 00          nop
43BC: 20 90       jr   nz,$434E
43BE: FA DE D1    jp   m,$D1DE
43C1: DF          rst  $18
43C2: 03          inc  bc
43C3: E2 04 20    jp   po,$2004
43C6: 0C          inc  c
43C7: F4 FF 03    call p,$03FF
43CA: E2 04 91    jp   po,$9104
43CD: DF          rst  $18
43CE: 10 FA       djnz $43CA
43D0: DE 00       sbc  a,$00
43D2: 20 04       jr   nz,$43D8
43D4: FE FB       cp   $FB
43D6: 02          ld   (bc),a
43D7: E6 0C       and  $0C
43D9: 02          ld   (bc),a
43DA: E4 08 20    call po,$2008
43DD: 84          add  a,h
43DE: FE FB       cp   $FB
43E0: 00          nop
43E1: 20 04       jr   nz,$43E7
43E3: FE FB       cp   $FB
43E5: 02          ld   (bc),a
43E6: EA 0C 02    jp   pe,$020C
43E9: E8          ret  pe
43EA: 08          ex   af,af'
43EB: 20 84       jr   nz,$4371
43ED: FE FB       cp   $FB
43EF: 00          nop
43F0: 20 04       jr   nz,$43F6
43F2: FE FB       cp   $FB
43F4: 02          ld   (bc),a
43F5: EE 0C       xor  $0C
43F7: 02          ld   (bc),a
43F8: EC 08 20    call pe,$2008
43FB: 84          add  a,h
43FC: FE FB       cp   $FB
43FE: 00          nop
43FF: 20 10       jr   nz,$4411
4401: FE DE       cp   $DE
4403: 02          ld   (bc),a
4404: F2 0C 02    jp   p,$020C
4407: F0          ret  p
4408: 08          ex   af,af'
4409: 20 10       jr   nz,$441B
440B: FE DE       cp   $DE
440D: 00          nop
440E: C0          ret  nz
440F: D8          ret  c
4410: 04          inc  b
4411: 30 17       jr   nc,$442A
4413: 44          ld   b,h
4414: C0          ret  nz
4415: D8          ret  c
4416: 16 91       ld   d,$91
4418: FF          rst  $38
4419: 28 06       jr   z,$4421
441B: 8E          adc  a,(hl)
441C: 2A 91 FF    ld   hl,($FF91)
441F: 28 00       jr   z,$4421
4421: 08          ex   af,af'
4422: 96          sub  (hl)
4423: 2A 00 20    ld   hl,($2000)
4426: 28 F8       jr   z,$4420
4428: FF          rst  $38
4429: 00          nop
442A: 08          ex   af,af'
442B: 5C          ld   e,h
442C: 29          add  hl,hl
442D: 00          nop
442E: D1          pop  de
442F: FF          rst  $38
4430: 05          dec  b
4431: 04          inc  b
4432: 35          dec  (hl)
4433: F2 FF 00    jp   p,$00FF
4436: 06 0A       ld   b,$0A
4438: 35          dec  (hl)
4439: F2 FF 00    jp   p,$00FF
443C: 04          inc  b
443D: 11 35 91    ld   de,$9135
4440: 0D          dec  c
4441: 2D          dec  l
4442: 02          ld   (bc),a
4443: 0C          inc  c
4444: 35          dec  (hl)
4445: D1          pop  de
4446: FF          rst  $38
4447: 00          nop
4448: 93          sub  e
4449: 17          rla
444A: 35          dec  (hl)
444B: FC 34 16    call m,$1634
444E: 35          dec  (hl)
444F: 03          inc  bc
4450: 15          dec  d
4451: 2D          dec  l
4452: 91          sub  c
4453: 12          ld   (de),a
4454: 35          dec  (hl)
4455: D1          pop  de
4456: FF          rst  $38
4457: 00          nop
4458: 02          ld   (bc),a
4459: 1E 35       ld   e,$35
445B: 04          inc  b
445C: 1C          inc  e
445D: 31 91 18    ld   sp,$1891
4460: 35          dec  (hl)
4461: D1          pop  de
4462: FF          rst  $38
4463: 00          nop
4464: 02          ld   (bc),a
4465: 25          dec  h
4466: 35          dec  (hl)
4467: 04          inc  b
4468: 23          inc  hl
4469: 31 91 1F    ld   sp,$1F91
446C: 35          dec  (hl)
446D: D1          pop  de
446E: FF          rst  $38
446F: 00          nop
4470: 02          ld   (bc),a
4471: 2B          dec  hl
4472: 35          dec  (hl)
4473: 04          inc  b
4474: 29          add  hl,hl
4475: 31 F2 FF    ld   sp,$FFF2
4478: 00          nop
4479: 02          ld   (bc),a
447A: 31 35 04    ld   sp,$0435
447D: 2F          cpl
447E: 31 F2 FF    ld   sp,$FFF2
4481: 00          nop
4482: 02          ld   (bc),a
4483: 37          scf
4484: 35          dec  (hl)
4485: 04          inc  b
4486: 35          dec  (hl)
4487: 31 F2 FF    ld   sp,$FFF2
448A: 00          nop
448B: D1          pop  de
448C: FF          rst  $38
448D: 05          dec  b
448E: 3E 31       ld   a,$31
4490: 02          ld   (bc),a
4491: 39          add  hl,sp
4492: 79          ld   a,c
4493: 00          nop
4494: 05          dec  b
4495: 44          ld   b,h
4496: 31 93 3F    ld   sp,$3F93
4499: 79          ld   a,c
449A: FC 78 DB    call m,$DB78
449D: 79          ld   a,c
449E: 00          nop
449F: 92          sub  d
44A0: 49          ld   c,c
44A1: 31 FD 30    ld   sp,$30FD
44A4: 02          ld   (bc),a
44A5: 48          ld   c,b
44A6: 31 02 46    ld   sp,$4602
44A9: 79          ld   a,c
44AA: 92          sub  d
44AB: FC 78 DB    call m,$DB78
44AE: 79          ld   a,c
44AF: 00          nop
44B0: 07          rlca
44B1: 50          ld   d,b
44B2: 79          ld   a,c
44B3: D1          pop  de
44B4: DB 00       in   a,($00)
44B6: 92          sub  d
44B7: CC 79 FC    call z,$FC79
44BA: 78          ld   a,b
44BB: 04          inc  b
44BC: 54          ld   d,h
44BD: 79          ld   a,c
44BE: 92          sub  d
44BF: FC 78 DB    call m,$DB78
44C2: 79          ld   a,c
44C3: 00          nop
44C4: 20 28       jr   nz,$44EE
44C6: F8          ret  m
44C7: FF          rst  $38
44C8: 30 C3       jr   nc,$448D
44CA: 44          ld   b,h
44CB: 91          sub  c
44CC: FF          rst  $38
44CD: 28 06       jr   z,$44D5
44CF: 8E          adc  a,(hl)
44D0: 2A 91 FF    ld   hl,($FF91)
44D3: 28 00       jr   z,$44D5
44D5: 08          ex   af,af'
44D6: 96          sub  (hl)
44D7: 2A 00 91    ld   hl,($9100)
44DA: FF          rst  $38
44DB: 28 06       jr   z,$44E3
44DD: 7E          ld   a,(hl)
44DE: 2A 91 FF    ld   hl,($FF91)
44E1: 28 00       jr   z,$44E3
44E3: D1          pop  de
44E4: FF          rst  $38
44E5: 06 84       ld   b,$84
44E7: 2A 91 FF    ld   hl,($FF91)
44EA: 28 00       jr   z,$44EC
44EC: 91          sub  c
44ED: FF          rst  $38
44EE: 28 06       jr   z,$44F6
44F0: 7E          ld   a,(hl)
44F1: 2A 91 FF    ld   hl,($FF91)
44F4: 28 00       jr   z,$44F6
44F6: 92          sub  d
44F7: FF          rst  $38
44F8: 28 85       jr   z,$447F
44FA: 2A 05 83    ld   hl,($8305)
44FD: 2A 91 FF    ld   hl,($FF91)
4500: 28 00       jr   z,$4502
4502: 91          sub  c
4503: FF          rst  $38
4504: 28 06       jr   z,$450C
4506: 7E          ld   a,(hl)
4507: 2A 91 FF    ld   hl,($FF91)
450A: 28 00       jr   z,$450C
450C: 92          sub  d
450D: FF          rst  $38
450E: 28 86       jr   z,$4496
4510: 2A 05 83    ld   hl,($8305)
4513: 2A 91 FF    ld   hl,($FF91)
4516: 28 00       jr   z,$4518
4518: 91          sub  c
4519: FF          rst  $38
451A: 28 06       jr   z,$4522
451C: 7E          ld   a,(hl)
451D: 2A 91 FF    ld   hl,($FF91)
4520: 28 00       jr   z,$4522
4522: 92          sub  d
4523: FF          rst  $38
4524: 28 87       jr   z,$44AD
4526: 2A 05 83    ld   hl,($8305)
4529: 2A 91 FF    ld   hl,($FF91)
452C: 28 00       jr   z,$452E
452E: 91          sub  c
452F: FF          rst  $38
4530: 28 06       jr   z,$4538
4532: 7E          ld   a,(hl)
4533: 2A 91 FF    ld   hl,($FF91)
4536: 28 00       jr   z,$4538
4538: 92          sub  d
4539: FF          rst  $38
453A: 28 88       jr   z,$44C4
453C: 2A 05 83    ld   hl,($8305)
453F: 2A 91 FF    ld   hl,($FF91)
4542: 28 00       jr   z,$4544
4544: 91          sub  c
4545: FF          rst  $38
4546: 28 06       jr   z,$454E
4548: 62          ld   h,d
4549: 29          add  hl,hl
454A: F1          pop  af
454B: FF          rst  $38
454C: 00          nop
454D: 08          ex   af,af'
454E: 6A          ld   l,d
454F: 29          add  hl,hl
4550: 00          nop
4551: 20 28       jr   nz,$457B
4553: F2 FF 04    jp   p,$04FF
4556: 78          ld   a,b
4557: 2A 20 28    ld   hl,($2820)
455A: F2 FF 00    jp   p,$00FF
455D: D1          pop  de
455E: FF          rst  $38
455F: 06 7E       ld   b,$7E
4561: 2A 91 FF    ld   hl,($FF91)
4564: 28 00       jr   z,$4566
4566: 91          sub  c
4567: FF          rst  $38
4568: 48          ld   c,b
4569: 06 70       ld   b,$70
456B: 4D          ld   c,l
456C: 91          sub  c
456D: FF          rst  $38
456E: 48          ld   c,b
456F: 00          nop
4570: D1          pop  de
4571: FF          rst  $38
4572: 03          inc  bc
4573: 75          ld   (hl),l
4574: 4D          ld   c,l
4575: 91          sub  c
4576: FC 4C 02    call m,$024C
4579: 72          ld   (hl),d
457A: 4D          ld   c,l
457B: 91          sub  c
457C: FF          rst  $38
457D: 4C          ld   c,h
457E: 00          nop
457F: D1          pop  de
4580: FF          rst  $38
4581: 02          ld   (bc),a
4582: 77          ld   (hl),a
4583: 4D          ld   c,l
4584: 20 4C       jr   nz,$45D2
4586: F3          di
4587: FC 92 D2    call m,$D292
458A: 4D          ld   c,l
458B: FF          rst  $38
458C: 4C          ld   c,h
458D: 00          nop
458E: 02          ld   (bc),a
458F: 7E          ld   a,(hl)
4590: 4D          ld   c,l
4591: 05          dec  b
4592: 7C          ld   a,h
4593: 49          ld   c,c
4594: 91          sub  c
4595: FF          rst  $38
4596: 48          ld   c,b
4597: 00          nop
4598: 02          ld   (bc),a
4599: E9          jp   (hl)
459A: 49          ld   c,c
459B: 03          inc  bc
459C: E7          rst  $20
459D: 51          ld   d,c
459E: 02          ld   (bc),a
459F: E4 49 91    call po,$9149
45A2: FF          rst  $38
45A3: 48          ld   c,b
45A4: 00          nop
45A5: D1          pop  de
45A6: FF          rst  $38
45A7: 04          inc  b
45A8: EF          rst  $28
45A9: 51          ld   d,c
45AA: 93          sub  e
45AB: EB          ex   de,hl
45AC: 4D          ld   c,l
45AD: EA 51 FF    jp   pe,$FF51
45B0: 50          ld   d,b
45B1: 00          nop
45B2: D1          pop  de
45B3: FF          rst  $38
45B4: 04          inc  b
45B5: F5          push af
45B6: 51          ld   d,c
45B7: 93          sub  e
45B8: F1          pop  af
45B9: 4D          ld   c,l
45BA: F0          ret  p
45BB: 49          ld   c,c
45BC: FF          rst  $38
45BD: 48          ld   c,b
45BE: 00          nop
45BF: 91          sub  c
45C0: FF          rst  $38
45C1: 50          ld   d,b
45C2: 04          inc  b
45C3: FC 51 03    call m,$0351
45C6: F8          ret  m
45C7: 4D          ld   c,l
45C8: 00          nop
45C9: 91          sub  c
45CA: FF          rst  $38
45CB: 50          ld   d,b
45CC: 05          dec  b
45CD: 06 52       ld   b,$52
45CF: 02          ld   (bc),a
45D0: 01 4A 00    ld   bc,$004A
45D3: 91          sub  c
45D4: FF          rst  $38
45D5: 50          ld   d,b
45D6: 07          rlca
45D7: 0D          dec  c
45D8: 52          ld   d,d
45D9: 00          nop
45DA: 91          sub  c
45DB: FF          rst  $38
45DC: 50          ld   d,b
45DD: 07          rlca
45DE: 14          inc  d
45DF: 52          ld   d,d
45E0: 00          nop
45E1: 02          ld   (bc),a
45E2: 1C          inc  e
45E3: 56          ld   d,(hl)
45E4: 03          inc  bc
45E5: 1A          ld   a,(de)
45E6: 52          ld   d,d
45E7: 03          inc  bc
45E8: 17          rla
45E9: 56          ld   d,(hl)
45EA: 00          nop
45EB: 06 22       ld   b,$22
45ED: 56          ld   d,(hl)
45EE: 92          sub  d
45EF: FC 54 DB    call m,$DB54
45F2: 55          ld   d,l
45F3: 00          nop
45F4: 91          sub  c
45F5: CC 55 05    call z,$0555
45F8: 27          daa
45F9: 56          ld   d,(hl)
45FA: 92          sub  d
45FB: FC 54 DB    call m,$DB54
45FE: 55          ld   d,l
45FF: 00          nop
4600: 20 60       jr   nz,$4662
4602: F8          ret  m
4603: FF          rst  $38
4604: 00          nop
4605: D1          pop  de
4606: FF          rst  $38
4607: 06 9E       ld   b,$9E
4609: 62          ld   h,d
460A: 91          sub  c
460B: FF          rst  $38
460C: 60          ld   h,b
460D: 00          nop
460E: 20 60       jr   nz,$4670
4610: F8          ret  m
4611: FF          rst  $38
4612: 30 0D       jr   nc,$4621
4614: 46          ld   b,(hl)
4615: 20 58       jr   nz,$466F
4617: F2 FF 04    jp   p,$04FF
461A: 2B          dec  hl
461B: 5A          ld   e,d
461C: 20 58       jr   nz,$4676
461E: F2 FF 00    jp   p,$00FF
4621: 92          sub  d
4622: FF          rst  $38
4623: 58          ld   e,b
4624: DC 59 20    call c,$2059
4627: 58          ld   e,b
4628: F3          di
4629: FE 02       cp   $02
462B: FE 59       cp   $59
462D: 91          sub  c
462E: FF          rst  $38
462F: 58          ld   e,b
4630: 00          nop
4631: 91          sub  c
4632: 2D          dec  l
4633: 5A          ld   e,d
4634: 20 58       jr   nz,$468E
4636: F5          push af
4637: FE 92       cp   $92
4639: 2C          inc  l
463A: 5A          ld   e,d
463B: FF          rst  $38
463C: 58          ld   e,b
463D: 00          nop
463E: 05          dec  b
463F: 33          inc  sp
4640: 5A          ld   e,d
4641: 20 58       jr   nz,$469B
4643: F2 FE 91    jp   p,$91FE
4646: 2E 5A       ld   l,$5A
4648: 00          nop
4649: 06 3A       ld   b,$3A
464B: 5A          ld   e,d
464C: 92          sub  d
464D: FE 58       cp   $58
464F: 34          inc  (hl)
4650: 5A          ld   e,d
4651: 00          nop
4652: 91          sub  c
4653: FF          rst  $38
4654: 58          ld   e,b
4655: 07          rlca
4656: 41          ld   b,c
4657: 5A          ld   e,d
4658: 00          nop
4659: 91          sub  c
465A: FF          rst  $38
465B: 58          ld   e,b
465C: 07          rlca
465D: 48          ld   c,b
465E: 5A          ld   e,d
465F: 00          nop
4660: 91          sub  c
4661: FF          rst  $38
4662: 58          ld   e,b
4663: 06 4E       ld   b,$4E
4665: 5A          ld   e,d
4666: 91          sub  c
4667: FF          rst  $38
4668: 58          ld   e,b
4669: 00          nop
466A: F2 FF 06    jp   p,$06FF
466D: 54          ld   d,h
466E: 5A          ld   e,d
466F: 00          nop
4670: 02          ld   (bc),a
4671: 5B          ld   e,e
4672: 5E          ld   e,(hl)
4673: 05          dec  b
4674: 59          ld   e,c
4675: 5A          ld   e,d
4676: 91          sub  c
4677: DB 59       in   a,($59)
4679: 00          nop
467A: 92          sub  d
467B: CC 5D 61    call z,$615D
467E: 5E          ld   e,(hl)
467F: 03          inc  bc
4680: 60          ld   h,b
4681: 5A          ld   e,d
4682: 02          ld   (bc),a
4683: 5D          ld   e,l
4684: 5E          ld   e,(hl)
4685: 91          sub  c
4686: DB 5D       in   a,($5D)
4688: 00          nop
4689: 92          sub  d
468A: CC 5D 67    call z,$675D
468D: 5E          ld   e,(hl)
468E: 02          ld   (bc),a
468F: 66          ld   h,(hl)
4690: 5A          ld   e,d
4691: 03          inc  bc
4692: 64          ld   h,h
4693: 5E          ld   e,(hl)
4694: 91          sub  c
4695: DB 5D       in   a,($5D)
4697: 00          nop
4698: 02          ld   (bc),a
4699: 6D          ld   l,l
469A: 5E          ld   e,(hl)
469B: 91          sub  c
469C: FD 5C       ld   e,iyh
469E: 04          inc  b
469F: 6B          ld   l,e
46A0: 5E          ld   e,(hl)
46A1: 91          sub  c
46A2: DB 5D       in   a,($5D)
46A4: 00          nop
46A5: 02          ld   (bc),a
46A6: 74          ld   (hl),h
46A7: 5E          ld   e,(hl)
46A8: 91          sub  c
46A9: FD 5C       ld   e,iyh
46AB: 05          dec  b
46AC: 72          ld   (hl),d
46AD: 5E          ld   e,(hl)
46AE: 00          nop
46AF: 20 60       jr   nz,$4711
46B1: F8          ret  m
46B2: FF          rst  $38
46B3: 00          nop
46B4: D1          pop  de
46B5: FF          rst  $38
46B6: 06 A4       ld   b,$A4
46B8: 62          ld   h,d
46B9: 91          sub  c
46BA: FF          rst  $38
46BB: 60          ld   h,b
46BC: 00          nop
46BD: D1          pop  de
46BE: FF          rst  $38
46BF: 07          rlca
46C0: AB          xor  e
46C1: 62          ld   h,d
46C2: 30 0D       jr   nc,$46D1
46C4: 46          ld   b,(hl)
46C5: 20 3D       jr   nz,$4704
46C7: F2 FF 04    jp   p,$04FF
46CA: 82          add  a,d
46CB: 3D          dec  a
46CC: F2 FF 00    jp   p,$00FF
46CF: D2 FF 87    jp   nc,$87FF
46D2: 03          inc  bc
46D3: 86          add  a,(hl)
46D4: 39          add  hl,sp
46D5: 91          sub  c
46D6: 83          add  a,e
46D7: 3D          dec  a
46D8: F2 FF 00    jp   p,$00FF
46DB: D2 FF 8D    jp   nc,$8DFF
46DE: 04          inc  b
46DF: 8C          adc  a,h
46E0: 39          add  hl,sp
46E1: 91          sub  c
46E2: 88          adc  a,b
46E3: 3D          dec  a
46E4: D1          pop  de
46E5: FF          rst  $38
46E6: 00          nop
46E7: D1          pop  de
46E8: 95          sub  l
46E9: 05          dec  b
46EA: 94          sub  h
46EB: 39          add  hl,sp
46EC: 02          ld   (bc),a
46ED: 8F          adc  a,a
46EE: 3D          dec  a
46EF: 00          nop
46F0: 06 9D       ld   b,$9D
46F2: 3D          dec  a
46F3: 91          sub  c
46F4: 97          sub  a
46F5: 39          add  hl,sp
46F6: 91          sub  c
46F7: 96          sub  (hl)
46F8: 3D          dec  a
46F9: 00          nop
46FA: D1          pop  de
46FB: A5          and  l
46FC: 06 A4       ld   b,$A4
46FE: 39          add  hl,sp
46FF: 91          sub  c
4700: 9E          sbc  a,(hl)
4701: 3D          dec  a
4702: 00          nop
4703: 08          ex   af,af'
4704: AD          xor  l
4705: 3D          dec  a
4706: 00          nop
4707: 08          ex   af,af'
4708: B5          or   l
4709: 3D          dec  a
470A: 00          nop
470B: D1          pop  de
470C: FF          rst  $38
470D: 02          ld   (bc),a
470E: BC          cp   h
470F: 3D          dec  a
4710: 04          inc  b
4711: BA          cp   d
4712: 39          add  hl,sp
4713: 91          sub  c
4714: B6          or   (hl)
4715: 3D          dec  a
4716: 00          nop
4717: 02          ld   (bc),a
4718: C4 41 06    call nz,$0641
471B: C2 3D 00    jp   nz,$003D
471E: 03          inc  bc
471F: CC 41 05    call z,$0541
4722: C9          ret
4723: 3D          dec  a
4724: 00          nop
4725: 91          sub  c
4726: CC 41 02    call z,$0241
4729: D1          pop  de
472A: 41          ld   b,c
472B: 91          sub  c
472C: CF          rst  $08
472D: 3D          dec  a
472E: 20 3C       jr   nz,$476C
4730: F2 FD 02    jp   p,$02FD
4733: CE 3D       adc  a,$3D
4735: 00          nop
4736: 03          inc  bc
4737: DA 41 91    jp   c,$9141
473A: D7          rst  $10
473B: 3D          dec  a
473C: 04          inc  b
473D: D6 41       sub  $41
473F: 00          nop
4740: 03          inc  bc
4741: E2 41 91    jp   po,$9141
4744: DF          rst  $18
4745: 3D          dec  a
4746: 02          ld   (bc),a
4747: DE 41       sbc  a,$41
4749: 92          sub  d
474A: FC 40 DB    call m,$DB40
474D: 41          ld   b,c
474E: 00          nop
474F: 20 60       jr   nz,$47B1
4751: F8          ret  m
4752: FF          rst  $38
4753: 00          nop
4754: D1          pop  de
4755: FF          rst  $38
4756: 06 B9       ld   b,$B9
4758: 62          ld   h,d
4759: 91          sub  c
475A: FF          rst  $38
475B: 60          ld   h,b
475C: 30 0D       jr   nc,$476B
475E: 46          ld   b,(hl)
475F: 20 70       jr   nz,$47D1
4761: F2 FF 05    jp   p,$05FF
4764: 29          add  hl,hl
4765: 73          ld   (hl),e
4766: 91          sub  c
4767: FF          rst  $38
4768: 70          ld   (hl),b
4769: 00          nop
476A: 02          ld   (bc),a
476B: 2C          inc  l
476C: 73          ld   (hl),e
476D: 20 70       jr   nz,$47DF
476F: F5          push af
4770: FE 91       cp   $91
4772: 2A 73 00    ld   hl,($0073)
4775: D1          pop  de
4776: 2E 20       ld   l,$20
4778: 70          ld   (hl),b
4779: F6 FE       or   $FE
477B: 91          sub  c
477C: 2D          dec  l
477D: 73          ld   (hl),e
477E: 00          nop
477F: D1          pop  de
4780: 30 20       jr   nc,$47A2
4782: 70          ld   (hl),b
4783: F3          di
4784: FE 02       cp   $02
4786: FF          rst  $38
4787: 72          ld   (hl),d
4788: 92          sub  d
4789: FE 70       cp   $70
478B: 2F          cpl
478C: 73          ld   (hl),e
478D: 00          nop
478E: 06 37       ld   b,$37
4790: 73          ld   (hl),e
4791: 92          sub  d
4792: FE 70       cp   $70
4794: 31 73 00    ld   sp,$0073
4797: 08          ex   af,af'
4798: 3F          ccf
4799: 73          ld   (hl),e
479A: 00          nop
479B: 08          ex   af,af'
479C: 47          ld   b,a
479D: 73          ld   (hl),e
479E: 00          nop
479F: 91          sub  c
47A0: FF          rst  $38
47A1: 70          ld   (hl),b
47A2: 06 4D       ld   b,$4D
47A4: 73          ld   (hl),e
47A5: 91          sub  c
47A6: FF          rst  $38
47A7: 70          ld   (hl),b
47A8: 00          nop
47A9: D1          pop  de
47AA: FF          rst  $38
47AB: 05          dec  b
47AC: 52          ld   d,d
47AD: 73          ld   (hl),e
47AE: 20 70       jr   nz,$4820
47B0: F2 FF 00    jp   p,$00FF
47B3: 02          ld   (bc),a
47B4: 59          ld   e,c
47B5: 77          ld   (hl),a
47B6: 05          dec  b
47B7: 57          ld   d,a
47B8: 73          ld   (hl),e
47B9: 91          sub  c
47BA: FF          rst  $38
47BB: 70          ld   (hl),b
47BC: 00          nop
47BD: 02          ld   (bc),a
47BE: 61          ld   h,c
47BF: 77          ld   (hl),a
47C0: 06 5F       ld   b,$5F
47C2: 73          ld   (hl),e
47C3: 00          nop
47C4: 92          sub  d
47C5: CC 75 67    call z,$6775
47C8: 77          ld   (hl),a
47C9: 03          inc  bc
47CA: 66          ld   h,(hl)
47CB: 73          ld   (hl),e
47CC: 02          ld   (bc),a
47CD: 63          ld   h,e
47CE: 77          ld   (hl),a
47CF: 91          sub  c
47D0: DB 75       in   a,($75)
47D2: 00          nop
47D3: 02          ld   (bc),a
47D4: 6E          ld   l,(hl)
47D5: 77          ld   (hl),a
47D6: 02          ld   (bc),a
47D7: 6C          ld   l,h
47D8: 73          ld   (hl),e
47D9: 03          inc  bc
47DA: 6A          ld   l,d
47DB: 77          ld   (hl),a
47DC: 91          sub  c
47DD: DB 75       in   a,($75)
47DF: 00          nop
47E0: 92          sub  d
47E1: CC 75 74    call z,$7475
47E4: 77          ld   (hl),a
47E5: 02          ld   (bc),a
47E6: 73          ld   (hl),e
47E7: 73          ld   (hl),e
47E8: 03          inc  bc
47E9: 71          ld   (hl),c
47EA: 77          ld   (hl),a
47EB: 91          sub  c
47EC: DB 75       in   a,($75)
47EE: 00          nop
47EF: 20 60       jr   nz,$4851
47F1: F8          ret  m
47F2: FF          rst  $38
47F3: 00          nop
47F4: D1          pop  de
47F5: FF          rst  $38
47F6: 06 BF       ld   b,$BF
47F8: 62          ld   h,d
47F9: 91          sub  c
47FA: FF          rst  $38
47FB: 60          ld   h,b
47FC: 30 0D       jr   nc,$480B
47FE: 46          ld   b,(hl)
47FF: 91          sub  c
4800: FF          rst  $38
4801: 50          ld   d,b
4802: 05          dec  b
4803: 79          ld   a,c
4804: 53          ld   d,e
4805: 20 50       jr   nz,$4857
4807: F2 FF 00    jp   p,$00FF
480A: D1          pop  de
480B: FF          rst  $38
480C: 02          ld   (bc),a
480D: 7E          ld   a,(hl)
480E: 53          ld   d,e
480F: 91          sub  c
4810: FE 50       cp   $50
4812: 03          inc  bc
4813: 7C          ld   a,h
4814: 53          ld   d,e
4815: 91          sub  c
4816: FF          rst  $38
4817: 50          ld   d,b
4818: 00          nop
4819: D1          pop  de
481A: FF          rst  $38
481B: 05          dec  b
481C: 84          add  a,h
481D: 53          ld   d,e
481E: 92          sub  d
481F: FE 50       cp   $50
4821: 7F          ld   a,a
4822: 53          ld   d,e
4823: 00          nop
4824: 93          sub  e
4825: FF          rst  $38
4826: 50          ld   d,b
4827: 89          adc  a,c
4828: 53          ld   d,e
4829: FC 50 03    call m,$0350
482C: 88          adc  a,b
482D: 53          ld   d,e
482E: 92          sub  d
482F: FE 50       cp   $50
4831: 85          add  a,l
4832: 53          ld   d,e
4833: 00          nop
4834: 91          sub  c
4835: FF          rst  $38
4836: 50          ld   d,b
4837: 07          rlca
4838: 90          sub  b
4839: 53          ld   d,e
483A: 00          nop
483B: 91          sub  c
483C: FF          rst  $38
483D: 50          ld   d,b
483E: 06 96       ld   b,$96
4840: 53          ld   d,e
4841: 91          sub  c
4842: FF          rst  $38
4843: 50          ld   d,b
4844: 00          nop
4845: D1          pop  de
4846: FF          rst  $38
4847: 06 9C       ld   b,$9C
4849: 53          ld   d,e
484A: 91          sub  c
484B: FF          rst  $38
484C: 50          ld   d,b
484D: 00          nop
484E: D1          pop  de
484F: FF          rst  $38
4850: 06 A2       ld   b,$A2
4852: 53          ld   d,e
4853: 91          sub  c
4854: FF          rst  $38
4855: 50          ld   d,b
4856: 00          nop
4857: 92          sub  d
4858: A9          xor  c
4859: 57          ld   d,a
485A: FF          rst  $38
485B: 50          ld   d,b
485C: 06 A8       ld   b,$A8
485E: 53          ld   d,e
485F: 00          nop
4860: 92          sub  d
4861: CC 55 B0    call z,$B055
4864: 57          ld   d,a
4865: 06 AF       ld   b,$AF
4867: 53          ld   d,e
4868: 00          nop
4869: 92          sub  d
486A: CC 55 B7    call z,$B755
486D: 57          ld   d,a
486E: 06 B6       ld   b,$B6
4870: 53          ld   d,e
4871: 00          nop
4872: 91          sub  c
4873: CC 55 05    call z,$0555
4876: BC          cp   h
4877: 57          ld   d,a
4878: 92          sub  d
4879: FD 54       ld   d,iyh
487B: CD 55 00    call $0055
487E: D1          pop  de
487F: CC 07 C3    call z,$C307
4882: 57          ld   d,a
4883: 00          nop
4884: D1          pop  de
4885: C7          rst  $00
4886: 20 54       jr   nz,$48DC
4888: F2 FD 03    jp   p,$03FD
488B: C6 57       add  a,$57
488D: 92          sub  d
488E: FC 54 DB    call m,$DB54
4891: 55          ld   d,l
4892: 00          nop
4893: 20 60       jr   nz,$48F5
4895: F8          ret  m
4896: FF          rst  $38
4897: 00          nop
4898: 08          ex   af,af'
4899: C7          rst  $00
489A: 62          ld   h,d
489B: 30 0D       jr   nc,$48AA
489D: 46          ld   b,(hl)
489E: 20 68       jr   nz,$4908
48A0: F2 FF 05    jp   p,$05FF
48A3: CC 6A 91    call z,$916A
48A6: FF          rst  $38
48A7: 68          ld   l,b
48A8: 00          nop
48A9: 02          ld   (bc),a
48AA: D0          ret  nc
48AB: 6A          ld   l,d
48AC: 20 68       jr   nz,$4916
48AE: F2 FE 91    jp   p,$91FE
48B1: CE 6A       adc  a,$6A
48B3: 20 68       jr   nz,$491D
48B5: F2 FE 91    jp   p,$91FE
48B8: CD 6A 00    call $006A
48BB: 06 D7       ld   b,$D7
48BD: 6A          ld   l,d
48BE: 92          sub  d
48BF: FE 68       cp   $68
48C1: D1          pop  de
48C2: 6A          ld   l,d
48C3: 00          nop
48C4: 08          ex   af,af'
48C5: DF          rst  $18
48C6: 6A          ld   l,d
48C7: 00          nop
48C8: 08          ex   af,af'
48C9: E7          rst  $20
48CA: 6A          ld   l,d
48CB: 00          nop
48CC: 08          ex   af,af'
48CD: EF          rst  $28
48CE: 6A          ld   l,d
48CF: 00          nop
48D0: 08          ex   af,af'
48D1: F7          rst  $30
48D2: 6A          ld   l,d
48D3: 00          nop
48D4: 91          sub  c
48D5: FF          rst  $38
48D6: 68          ld   l,b
48D7: 06 FD       ld   b,$FD
48D9: 6A          ld   l,d
48DA: 91          sub  c
48DB: DB 69       in   a,($69)
48DD: 00          nop
48DE: 07          rlca
48DF: 06 6B       ld   b,$6B
48E1: 91          sub  c
48E2: DB 69       in   a,($69)
48E4: 00          nop
48E5: 04          inc  b
48E6: 0D          dec  c
48E7: 6B          ld   l,e
48E8: 91          sub  c
48E9: FD 68       ld   iyl,b
48EB: 03          inc  bc
48EC: 09          add  hl,bc
48ED: 6B          ld   l,e
48EE: 00          nop
48EF: 07          rlca
48F0: 14          inc  d
48F1: 6B          ld   l,e
48F2: 91          sub  c
48F3: CD 69 00    call $0069
48F6: 91          sub  c
48F7: 14          inc  d
48F8: 6F          ld   l,a
48F9: 06 1A       ld   b,$1A
48FB: 6F          ld   l,a
48FC: 91          sub  c
48FD: DB 6D       in   a,($6D)
48FF: 00          nop
4900: 92          sub  d
4901: CC 6D 1F    call z,$1F6D
4904: 6F          ld   l,a
4905: 02          ld   (bc),a
4906: 1E 6B       ld   e,$6B
4908: 02          ld   (bc),a
4909: 1C          inc  e
490A: 6F          ld   l,a
490B: 92          sub  d
490C: FC 6C DB    call m,$DB6C
490F: 6D          ld   l,l
4910: 00          nop
4911: 94          sub  h
4912: CC 6D 24    call z,$246D
4915: 6F          ld   l,a
4916: FD 6C       ld   iyl,iyh
4918: 23          inc  hl
4919: 6B          ld   l,e
491A: 03          inc  bc
491B: 22 6F 91    ld   ($916F),hl
491E: DB 6D       in   a,($6D)
4920: 00          nop
4921: 20 60       jr   nz,$4983
4923: F8          ret  m
4924: FF          rst  $38
4925: 00          nop
4926: F3          di
4927: FF          rst  $38
4928: 02          ld   (bc),a
4929: AD          xor  l
492A: 62          ld   h,d
492B: 20 60       jr   nz,$498D
492D: F3          di
492E: FF          rst  $38
492F: 00          nop
4930: D1          pop  de
4931: FF          rst  $38
4932: 06 B3       ld   b,$B3
4934: 62          ld   h,d
4935: 91          sub  c
4936: FF          rst  $38
4937: 60          ld   h,b
4938: 30 0D       jr   nc,$4947
493A: 46          ld   b,(hl)
493B: DC D9 02    call c,$02D9
493E: 20 14       jr   nz,$4954
4940: F4 30 D1    call p,$D130
4943: 36 00       ld   (hl),$00
4945: F4 31 D1    call p,$D131
4948: 37          scf
4949: 00          nop
494A: 20 20       jr   nz,$496C
494C: F8          ret  m
494D: FF          rst  $38
494E: 00          nop
494F: 20 20       jr   nz,$4971
4951: D1          pop  de
4952: A1          and  c
4953: F7          rst  $30
4954: A0          and  b
4955: 00          nop
4956: 20 20       jr   nz,$4978
4958: D1          pop  de
4959: A3          and  e
495A: F7          rst  $30
495B: A2          and  d
495C: 00          nop
495D: D1          pop  de
495E: A5          and  l
495F: F7          rst  $30
4960: A4          and  h
4961: 00          nop
4962: 30 4F       jr   nc,$49B3
4964: 49          ld   c,c
4965: A5          and  l
4966: 4B          ld   c,e
4967: AB          xor  e
4968: 4B          ld   c,e
4969: B4          or   h
496A: 4B          ld   c,e
496B: BD          cp   l
496C: 4B          ld   c,e
496D: C6 4B       add  a,$4B
496F: CF          rst  $08
4970: 4B          ld   c,e
4971: DB 4B       in   a,($4B)
4973: E1          pop  hl
4974: 4B          ld   c,e
4975: ED 4B F6 4B ld   bc,($4BF6)
4979: FC 4B 05    call m,$054B
497C: 4C          ld   c,h
497D: 0B          dec  bc
497E: 4C          ld   c,h
497F: 11 4C 1D    ld   de,$1D4C
4982: 4C          ld   c,h
4983: 29          add  hl,hl
4984: 4C          ld   c,h
4985: 32 4C 3B    ld   ($3B4C),a
4988: 4C          ld   c,h
4989: 44          ld   b,h
498A: 4C          ld   c,h
498B: 4D          ld   c,l
498C: 4C          ld   c,h
498D: 53          ld   d,e
498E: 4C          ld   c,h
498F: 59          ld   e,c
4990: 4C          ld   c,h
4991: 62          ld   h,d
4992: 4C          ld   c,h
4993: 68          ld   l,b
4994: 4C          ld   c,h
4995: 71          ld   (hl),c
4996: 4C          ld   c,h
4997: 7A          ld   a,d
4998: 4C          ld   c,h
4999: 83          add  a,e
499A: 4C          ld   c,h
499B: 89          adc  a,c
499C: 4C          ld   c,h
499D: 92          sub  d
499E: 4C          ld   c,h
499F: A1          and  c
49A0: 4C          ld   c,h
49A1: AA          xor  d
49A2: 4C          ld   c,h
49A3: B3          or   e
49A4: 4C          ld   c,h
49A5: BC          cp   h
49A6: 4C          ld   c,h
49A7: C2 4C C8    jp   nz,$C84C
49AA: 4C          ld   c,h
49AB: CE 4C       adc  a,$4C
49AD: D7          rst  $10
49AE: 4C          ld   c,h
49AF: A5          and  l
49B0: 4B          ld   c,e
49B1: E0          ret  po
49B2: 4C          ld   c,h
49B3: EC 4C F8    call pe,$F84C
49B6: 4C          ld   c,h
49B7: A5          and  l
49B8: 4B          ld   c,e
49B9: A5          and  l
49BA: 4B          ld   c,e
49BB: A5          and  l
49BC: 4B          ld   c,e
49BD: A5          and  l
49BE: 4B          ld   c,e
49BF: A5          and  l
49C0: 4B          ld   c,e
49C1: A5          and  l
49C2: 4B          ld   c,e
49C3: A5          and  l
49C4: 4B          ld   c,e
49C5: 9A          sbc  a,d
49C6: 55          ld   d,l
49C7: A3          and  e
49C8: 55          ld   d,l
49C9: A9          xor  c
49CA: 55          ld   d,l
49CB: B5          or   l
49CC: 55          ld   d,l
49CD: BE          cp   (hl)
49CE: 55          ld   d,l
49CF: CD 55 9A    call $9A55
49D2: 55          ld   d,l
49D3: D9          exx
49D4: 55          ld   d,l
49D5: E5          push hl
49D6: 55          ld   d,l
49D7: EB          ex   de,hl
49D8: 55          ld   d,l
49D9: F4 55 FA    call p,$FA55
49DC: 55          ld   d,l
49DD: 00          nop
49DE: 56          ld   d,(hl)
49DF: A3          and  e
49E0: 55          ld   d,l
49E1: B5          or   l
49E2: 55          ld   d,l
49E3: 06 56       ld   b,$56
49E5: 0F          rrca
49E6: 56          ld   d,(hl)
49E7: 18 56       jr   $4A3F
49E9: 21 56 2D    ld   hl,$2D56
49EC: 56          ld   d,(hl)
49ED: 33          inc  sp
49EE: 56          ld   d,(hl)
49EF: 39          add  hl,sp
49F0: 56          ld   d,(hl)
49F1: 42          ld   b,d
49F2: 56          ld   d,(hl)
49F3: 48          ld   c,b
49F4: 56          ld   d,(hl)
49F5: 4E          ld   c,(hl)
49F6: 56          ld   d,(hl)
49F7: 57          ld   d,a
49F8: 56          ld   d,(hl)
49F9: 63          ld   h,e
49FA: 56          ld   d,(hl)
49FB: 69          ld   l,c
49FC: 56          ld   d,(hl)
49FD: 6F          ld   l,a
49FE: 56          ld   d,(hl)
49FF: 78          ld   a,b
4A00: 56          ld   d,(hl)
4A01: 78          ld   a,b
4A02: 56          ld   d,(hl)
4A03: 7E          ld   a,(hl)
4A04: 56          ld   d,(hl)
4A05: 87          add  a,a
4A06: 56          ld   d,(hl)
4A07: 8D          adc  a,l
4A08: 56          ld   d,(hl)
4A09: 93          sub  e
4A0A: 56          ld   d,(hl)
4A0B: 99          sbc  a,c
4A0C: 56          ld   d,(hl)
4A0D: A2          and  d
4A0E: 56          ld   d,(hl)
4A0F: AB          xor  e
4A10: 56          ld   d,(hl)
4A11: 9A          sbc  a,d
4A12: 55          ld   d,l
4A13: 9A          sbc  a,d
4A14: 55          ld   d,l
4A15: 9A          sbc  a,d
4A16: 55          ld   d,l
4A17: 9A          sbc  a,d
4A18: 55          ld   d,l
4A19: 9A          sbc  a,d
4A1A: 55          ld   d,l
4A1B: 9A          sbc  a,d
4A1C: 55          ld   d,l
4A1D: 9A          sbc  a,d
4A1E: 55          ld   d,l
4A1F: 9A          sbc  a,d
4A20: 55          ld   d,l
4A21: 9A          sbc  a,d
4A22: 55          ld   d,l
4A23: 9A          sbc  a,d
4A24: 55          ld   d,l
4A25: 00          nop
4A26: 5F          ld   e,a
4A27: 06 5F       ld   b,$5F
4A29: 0F          rrca
4A2A: 5F          ld   e,a
4A2B: 18 5F       jr   $4A8C
4A2D: 21 5F 2A    ld   hl,$2A5F
4A30: 5F          ld   e,a
4A31: 00          nop
4A32: 5F          ld   e,a
4A33: 0F          rrca
4A34: 5F          ld   e,a
4A35: 36 5F       ld   (hl),$5F
4A37: 3C          inc  a
4A38: 5F          ld   e,a
4A39: 45          ld   b,l
4A3A: 5F          ld   e,a
4A3B: 4B          ld   c,e
4A3C: 5F          ld   e,a
4A3D: 51          ld   d,c
4A3E: 5F          ld   e,a
4A3F: 57          ld   d,a
4A40: 5F          ld   e,a
4A41: 60          ld   h,b
4A42: 5F          ld   e,a
4A43: 69          ld   l,c
4A44: 5F          ld   e,a
4A45: 75          ld   (hl),l
4A46: 5F          ld   e,a
4A47: 81          add  a,c
4A48: 5F          ld   e,a
4A49: 8A          adc  a,d
4A4A: 5F          ld   e,a
4A4B: 93          sub  e
4A4C: 5F          ld   e,a
4A4D: 99          sbc  a,c
4A4E: 5F          ld   e,a
4A4F: 9F          sbc  a,a
4A50: 5F          ld   e,a
4A51: A8          xor  b
4A52: 5F          ld   e,a
4A53: AE          xor  (hl)
4A54: 5F          ld   e,a
4A55: B4          or   h
4A56: 5F          ld   e,a
4A57: BD          cp   l
4A58: 5F          ld   e,a
4A59: C6 5F       add  a,$5F
4A5B: CC 5F D2    call z,$D25F
4A5E: 5F          ld   e,a
4A5F: DB 5F       in   a,($5F)
4A61: E4 5F ED    call po,$ED5F
4A64: 5F          ld   e,a
4A65: F6 5F       or   $5F
4A67: FC 5F 05    call m,$055F
4A6A: 60          ld   h,b
4A6B: 0E 60       ld   c,$60
4A6D: 17          rla
4A6E: 60          ld   h,b
4A6F: 20 60       jr   nz,$4AD1
4A71: 00          nop
4A72: 5F          ld   e,a
4A73: 00          nop
4A74: 5F          ld   e,a
4A75: 00          nop
4A76: 5F          ld   e,a
4A77: 00          nop
4A78: 5F          ld   e,a
4A79: 00          nop
4A7A: 5F          ld   e,a
4A7B: 00          nop
4A7C: 5F          ld   e,a
4A7D: 00          nop
4A7E: 5F          ld   e,a
4A7F: 00          nop
4A80: 5F          ld   e,a
4A81: 00          nop
4A82: 5F          ld   e,a
4A83: 00          nop
4A84: 5F          ld   e,a
4A85: 76          halt
4A86: 68          ld   l,b
4A87: 7F          ld   a,a
4A88: 68          ld   l,b
4A89: 8E          adc  a,(hl)
4A8A: 68          ld   l,b
4A8B: 9A          sbc  a,d
4A8C: 68          ld   l,b
4A8D: A9          xor  c
4A8E: 68          ld   l,b
4A8F: B8          cp   b
4A90: 68          ld   l,b
4A91: 76          halt
4A92: 68          ld   l,b
4A93: C7          rst  $00
4A94: 68          ld   l,b
4A95: D6 68       sub  $68
4A97: E2 68 EB    jp   po,$EB68
4A9A: 68          ld   l,b
4A9B: F7          rst  $30
4A9C: 68          ld   l,b
4A9D: 00          nop
4A9E: 69          ld   l,c
4A9F: 09          add  hl,bc
4AA0: 69          ld   l,c
4AA1: 18 69       jr   $4B0C
4AA3: 27          daa
4AA4: 69          ld   l,c
4AA5: 33          inc  sp
4AA6: 69          ld   l,c
4AA7: 3F          ccf
4AA8: 69          ld   l,c
4AA9: 4B          ld   c,e
4AAA: 69          ld   l,c
4AAB: 57          ld   d,a
4AAC: 69          ld   l,c
4AAD: 60          ld   h,b
4AAE: 69          ld   l,c
4AAF: 69          ld   l,c
4AB0: 69          ld   l,c
4AB1: 76          halt
4AB2: 68          ld   l,b
4AB3: 76          halt
4AB4: 68          ld   l,b
4AB5: 75          ld   (hl),l
4AB6: 69          ld   l,c
4AB7: 81          add  a,c
4AB8: 69          ld   l,c
4AB9: 8D          adc  a,l
4ABA: 69          ld   l,c
4ABB: 96          sub  (hl)
4ABC: 69          ld   l,c
4ABD: 9F          sbc  a,a
4ABE: 69          ld   l,c
4ABF: AE          xor  (hl)
4AC0: 69          ld   l,c
4AC1: BA          cp   d
4AC2: 69          ld   l,c
4AC3: C6 69       add  a,$69
4AC5: D2 69 DB    jp   nc,$DB69
4AC8: 69          ld   l,c
4AC9: E7          rst  $20
4ACA: 69          ld   l,c
4ACB: F3          di
4ACC: 69          ld   l,c
4ACD: FF          rst  $38
4ACE: 69          ld   l,c
4ACF: 76          halt
4AD0: 68          ld   l,b
4AD1: 0B          dec  bc
4AD2: 6A          ld   l,d
4AD3: 17          rla
4AD4: 6A          ld   l,d
4AD5: 26 6A       ld   h,$6A
4AD7: 76          halt
4AD8: 68          ld   l,b
4AD9: 76          halt
4ADA: 68          ld   l,b
4ADB: 76          halt
4ADC: 68          ld   l,b
4ADD: 76          halt
4ADE: 68          ld   l,b
4ADF: 76          halt
4AE0: 68          ld   l,b
4AE1: 76          halt
4AE2: 68          ld   l,b
4AE3: 76          halt
4AE4: 68          ld   l,b
4AE5: BB          cp   e
4AE6: 6D          ld   l,l
4AE7: C7          rst  $00
4AE8: 6D          ld   l,l
4AE9: D0          ret  nc
4AEA: 6D          ld   l,l
4AEB: DF          rst  $18
4AEC: 6D          ld   l,l
4AED: EB          ex   de,hl
4AEE: 6D          ld   l,l
4AEF: F7          rst  $30
4AF0: 6D          ld   l,l
4AF1: BB          cp   e
4AF2: 6D          ld   l,l
4AF3: 03          inc  bc
4AF4: 6E          ld   l,(hl)
4AF5: 0F          rrca
4AF6: 6E          ld   l,(hl)
4AF7: 18 6E       jr   $4B67
4AF9: 24          inc  h
4AFA: 6E          ld   l,(hl)
4AFB: 2D          dec  l
4AFC: 6E          ld   l,(hl)
4AFD: 36 6E       ld   (hl),$6E
4AFF: C7          rst  $00
4B00: 6D          ld   l,l
4B01: DF          rst  $18
4B02: 6D          ld   l,l
4B03: 3F          ccf
4B04: 6E          ld   l,(hl)
4B05: 4B          ld   c,e
4B06: 6E          ld   l,(hl)
4B07: 57          ld   d,a
4B08: 6E          ld   l,(hl)
4B09: 66          ld   h,(hl)
4B0A: 6E          ld   l,(hl)
4B0B: 78          ld   a,b
4B0C: 6E          ld   l,(hl)
4B0D: 81          add  a,c
4B0E: 6E          ld   l,(hl)
4B0F: 8A          adc  a,d
4B10: 6E          ld   l,(hl)
4B11: 96          sub  (hl)
4B12: 6E          ld   l,(hl)
4B13: 9F          sbc  a,a
4B14: 6E          ld   l,(hl)
4B15: AB          xor  e
4B16: 6E          ld   l,(hl)
4B17: B7          or   a
4B18: 6E          ld   l,(hl)
4B19: C6 6E       add  a,$6E
4B1B: CF          rst  $08
4B1C: 6E          ld   l,(hl)
4B1D: D8          ret  c
4B1E: 6E          ld   l,(hl)
4B1F: E4 6E E4    call po,$E46E
4B22: 6E          ld   l,(hl)
4B23: ED 6E       im   0
4B25: F9          ld   sp,hl
4B26: 6E          ld   l,(hl)
4B27: 02          ld   (bc),a
4B28: 6F          ld   l,a
4B29: 0E 6F       ld   c,$6F
4B2B: 1A          ld   a,(de)
4B2C: 6F          ld   l,a
4B2D: 26 6F       ld   h,$6F
4B2F: 35          dec  (hl)
4B30: 6F          ld   l,a
4B31: BB          cp   e
4B32: 6D          ld   l,l
4B33: BB          cp   e
4B34: 6D          ld   l,l
4B35: BB          cp   e
4B36: 6D          ld   l,l
4B37: BB          cp   e
4B38: 6D          ld   l,l
4B39: BB          cp   e
4B3A: 6D          ld   l,l
4B3B: BB          cp   e
4B3C: 6D          ld   l,l
4B3D: BB          cp   e
4B3E: 6D          ld   l,l
4B3F: BB          cp   e
4B40: 6D          ld   l,l
4B41: BB          cp   e
4B42: 6D          ld   l,l
4B43: BB          cp   e
4B44: 6D          ld   l,l
4B45: 9A          sbc  a,d
4B46: 72          ld   (hl),d
4B47: A3          and  e
4B48: 72          ld   (hl),d
4B49: AF          xor  a
4B4A: 72          ld   (hl),d
4B4B: BB          cp   e
4B4C: 72          ld   (hl),d
4B4D: C7          rst  $00
4B4E: 72          ld   (hl),d
4B4F: D0          ret  nc
4B50: 72          ld   (hl),d
4B51: 9A          sbc  a,d
4B52: 72          ld   (hl),d
4B53: AF          xor  a
4B54: 72          ld   (hl),d
4B55: DF          rst  $18
4B56: 72          ld   (hl),d
4B57: E8          ret  pe
4B58: 72          ld   (hl),d
4B59: F4 72 FD    call p,$FD72
4B5C: 72          ld   (hl),d
4B5D: 06 73       ld   b,$73
4B5F: 0F          rrca
4B60: 73          ld   (hl),e
4B61: 1E 73       ld   e,$73
4B63: 2D          dec  l
4B64: 73          ld   (hl),e
4B65: 3C          inc  a
4B66: 73          ld   (hl),e
4B67: 4B          ld   c,e
4B68: 73          ld   (hl),e
4B69: 57          ld   d,a
4B6A: 73          ld   (hl),e
4B6B: 63          ld   h,e
4B6C: 73          ld   (hl),e
4B6D: 6C          ld   l,h
4B6E: 73          ld   (hl),e
4B6F: 75          ld   (hl),l
4B70: 73          ld   (hl),e
4B71: 81          add  a,c
4B72: 73          ld   (hl),e
4B73: 8A          adc  a,d
4B74: 73          ld   (hl),e
4B75: 93          sub  e
4B76: 73          ld   (hl),e
4B77: 9F          sbc  a,a
4B78: 73          ld   (hl),e
4B79: AB          xor  e
4B7A: 73          ld   (hl),e
4B7B: B4          or   h
4B7C: 73          ld   (hl),e
4B7D: BD          cp   l
4B7E: 73          ld   (hl),e
4B7F: C9          ret
4B80: 73          ld   (hl),e
4B81: D5          push de
4B82: 73          ld   (hl),e
4B83: E1          pop  hl
4B84: 73          ld   (hl),e
4B85: ED 73 F6 73 ld   ($73F6),sp
4B89: 02          ld   (bc),a
4B8A: 74          ld   (hl),h
4B8B: 0E 74       ld   c,$74
4B8D: 1A          ld   a,(de)
4B8E: 74          ld   (hl),h
4B8F: 26 74       ld   h,$74
4B91: 9A          sbc  a,d
4B92: 72          ld   (hl),d
4B93: 9A          sbc  a,d
4B94: 72          ld   (hl),d
4B95: 9A          sbc  a,d
4B96: 72          ld   (hl),d
4B97: 9A          sbc  a,d
4B98: 72          ld   (hl),d
4B99: 9A          sbc  a,d
4B9A: 72          ld   (hl),d
4B9B: 9A          sbc  a,d
4B9C: 72          ld   (hl),d
4B9D: 9A          sbc  a,d
4B9E: 72          ld   (hl),d
4B9F: 9A          sbc  a,d
4BA0: 72          ld   (hl),d
4BA1: 9A          sbc  a,d
4BA2: 72          ld   (hl),d
4BA3: 9A          sbc  a,d
4BA4: 72          ld   (hl),d
4BA5: F4 E5 11    call p,$11E5
4BA8: 07          rlca
4BA9: 4D          ld   c,l
4BAA: 00          nop
4BAB: F4 E5 07    call p,$07E5
4BAE: 07          rlca
4BAF: 4D          ld   c,l
4BB0: 0A          ld   a,(bc)
4BB1: 61          ld   h,c
4BB2: 4D          ld   c,l
4BB3: 00          nop
4BB4: F4 E5 07    call p,$07E5
4BB7: 91          sub  c
4BB8: 4D          ld   c,l
4BB9: 0A          ld   a,(bc)
4BBA: 27          daa
4BBB: 4D          ld   c,l
4BBC: 00          nop
4BBD: F4 E5 07    call p,$07E5
4BC0: 91          sub  c
4BC1: 4D          ld   c,l
4BC2: 0A          ld   a,(bc)
4BC3: 61          ld   h,c
4BC4: 4D          ld   c,l
4BC5: 00          nop
4BC6: F4 E5 08    call p,$08E5
4BC9: 07          rlca
4BCA: 4D          ld   c,l
4BCB: 09          add  hl,bc
4BCC: AF          xor  a
4BCD: 4D          ld   c,l
4BCE: 00          nop
4BCF: F4 E5 07    call p,$07E5
4BD2: 07          rlca
4BD3: 4D          ld   c,l
4BD4: 06 FC       ld   b,$FC
4BD6: 4D          ld   c,l
4BD7: 04          inc  b
4BD8: 4F          ld   c,a
4BD9: 4D          ld   c,l
4BDA: 00          nop
4BDB: 00          nop
4BDC: E5          push hl
4BDD: 08          ex   af,af'
4BDE: 2F          cpl
4BDF: 4E          ld   c,(hl)
4BE0: 00          nop
4BE1: F4 E5 07    call p,$07E5
4BE4: 91          sub  c
4BE5: 4D          ld   c,l
4BE6: 06 FC       ld   b,$FC
4BE8: 4D          ld   c,l
4BE9: 04          inc  b
4BEA: 4F          ld   c,a
4BEB: 4D          ld   c,l
4BEC: 00          nop
4BED: F4 E5 07    call p,$07E5
4BF0: 89          adc  a,c
4BF1: 4E          ld   c,(hl)
4BF2: 0A          ld   a,(bc)
4BF3: 61          ld   h,c
4BF4: 4E          ld   c,(hl)
4BF5: 00          nop
4BF6: F4 E5 11    call p,$11E5
4BF9: 89          adc  a,c
4BFA: 4E          ld   c,(hl)
4BFB: 00          nop
4BFC: F4 E5 0F    call p,$0FE5
4BFF: D9          exx
4C00: 4E          ld   c,(hl)
4C01: 02          ld   (bc),a
4C02: 7B          ld   a,e
4C03: 54          ld   d,h
4C04: 00          nop
4C05: F4 E5 11    call p,$11E5
4C08: 32 4F 00    ld   ($004F),a
4C0B: F4 E5 11    call p,$11E5
4C0E: 93          sub  e
4C0F: 4F          ld   c,a
4C10: 00          nop
4C11: F4 E5 07    call p,$07E5
4C14: 07          rlca
4C15: 4D          ld   c,l
4C16: 07          rlca
4C17: F3          di
4C18: 4F          ld   c,a
4C19: 03          inc  bc
4C1A: 83          add  a,e
4C1B: 4D          ld   c,l
4C1C: 00          nop
4C1D: F4 E5 07    call p,$07E5
4C20: 91          sub  c
4C21: 4D          ld   c,l
4C22: 07          rlca
4C23: F3          di
4C24: 4F          ld   c,a
4C25: 03          inc  bc
4C26: 83          add  a,e
4C27: 4D          ld   c,l
4C28: 00          nop
4C29: F4 E5 07    call p,$07E5
4C2C: 91          sub  c
4C2D: 4D          ld   c,l
4C2E: 0A          ld   a,(bc)
4C2F: 20 50       jr   nz,$4C81
4C31: 00          nop
4C32: F4 E5 07    call p,$07E5
4C35: 07          rlca
4C36: 4D          ld   c,l
4C37: 0A          ld   a,(bc)
4C38: 20 50       jr   nz,$4C8A
4C3A: 00          nop
4C3B: F4 E5 07    call p,$07E5
4C3E: 07          rlca
4C3F: 4D          ld   c,l
4C40: 0A          ld   a,(bc)
4C41: 61          ld   h,c
4C42: 50          ld   d,b
4C43: 00          nop
4C44: F4 E5 07    call p,$07E5
4C47: 91          sub  c
4C48: 4D          ld   c,l
4C49: 0A          ld   a,(bc)
4C4A: 61          ld   h,c
4C4B: 50          ld   d,b
4C4C: 00          nop
4C4D: F4 E5 11    call p,$11E5
4C50: A5          and  l
4C51: 50          ld   d,b
4C52: 00          nop
4C53: F4 E5 11    call p,$11E5
4C56: 09          add  hl,bc
4C57: 51          ld   d,c
4C58: 00          nop
4C59: F4 E5 0E    call p,$0EE5
4C5C: 60          ld   h,b
4C5D: 51          ld   d,c
4C5E: 03          inc  bc
4C5F: 7B          ld   a,e
4C60: 54          ld   d,h
4C61: 00          nop
4C62: 80          add  a,b
4C63: E5          push hl
4C64: 13          inc  de
4C65: AC          xor  h
4C66: 51          ld   d,c
4C67: 00          nop
4C68: 80          add  a,b
4C69: E5          push hl
4C6A: 07          rlca
4C6B: AC          xor  h
4C6C: 51          ld   d,c
4C6D: 0C          inc  c
4C6E: 15          dec  d
4C6F: 52          ld   d,d
4C70: 00          nop
4C71: F4 E5 07    call p,$07E5
4C74: 91          sub  c
4C75: 4D          ld   c,l
4C76: 0A          ld   a,(bc)
4C77: AC          xor  h
4C78: 52          ld   d,d
4C79: 00          nop
4C7A: F4 E5 07    call p,$07E5
4C7D: 89          adc  a,c
4C7E: 4E          ld   c,(hl)
4C7F: 0A          ld   a,(bc)
4C80: AC          xor  h
4C81: 52          ld   d,d
4C82: 00          nop
4C83: F4 E5 11    call p,$11E5
4C86: E1          pop  hl
4C87: 52          ld   d,d
4C88: 00          nop
4C89: F4 E5 0F    call p,$0FE5
4C8C: 38 53       jr   c,$4CE1
4C8E: 02          ld   (bc),a
4C8F: 7B          ld   a,e
4C90: 54          ld   d,h
4C91: 00          nop
4C92: F4 E5 01    call p,$01E5
4C95: 7B          ld   a,e
4C96: 54          ld   d,h
4C97: 08          ex   af,af'
4C98: 89          adc  a,c
4C99: 4E          ld   c,(hl)
4C9A: 07          rlca
4C9B: 5C          ld   e,h
4C9C: 53          ld   d,e
4C9D: 01 7B 54    ld   bc,$547B
4CA0: 00          nop
4CA1: F4 E5 07    call p,$07E5
4CA4: 89          adc  a,c
4CA5: 4E          ld   c,(hl)
4CA6: 0A          ld   a,(bc)
4CA7: 80          add  a,b
4CA8: 53          ld   d,e
4CA9: 00          nop
4CAA: F4 E5 07    call p,$07E5
4CAD: 91          sub  c
4CAE: 4D          ld   c,l
4CAF: 0A          ld   a,(bc)
4CB0: 80          add  a,b
4CB1: 53          ld   d,e
4CB2: 00          nop
4CB3: F4 E5 0B    call p,$0BE5
4CB6: E1          pop  hl
4CB7: 52          ld   d,d
4CB8: 06 BC       ld   b,$BC
4CBA: 53          ld   d,e
4CBB: 00          nop
4CBC: F4 E5 11    call p,$11E5
4CBF: D2 53 00    jp   nc,$0053
4CC2: F4 E5 11    call p,$11E5
4CC5: 31 54 00    ld   sp,$0054
4CC8: F8          ret  m
4CC9: E5          push hl
4CCA: 11 83 54    ld   de,$5483
4CCD: 00          nop
4CCE: F8          ret  m
4CCF: E5          push hl
4CD0: 0B          dec  bc
4CD1: C4 54 06    call nz,$0654
4CD4: B6          or   (hl)
4CD5: 54          ld   d,h
4CD6: 00          nop
4CD7: F4 E5 0E    call p,$0EE5
4CDA: 10 55       djnz $4D31
4CDC: 03          inc  bc
4CDD: 7B          ld   a,e
4CDE: 54          ld   d,h
4CDF: 00          nop
4CE0: F4 E5 08    call p,$08E5
4CE3: 07          rlca
4CE4: 4D          ld   c,l
4CE5: 04          inc  b
4CE6: AF          xor  a
4CE7: 4D          ld   c,l
4CE8: 05          dec  b
4CE9: 49          ld   c,c
4CEA: 4D          ld   c,l
4CEB: 00          nop
4CEC: F4 E5 08    call p,$08E5
4CEF: 07          rlca
4CF0: 4D          ld   c,l
4CF1: 05          dec  b
4CF2: 5E          ld   e,(hl)
4CF3: 55          ld   d,l
4CF4: 04          inc  b
4CF5: 4F          ld   c,a
4CF6: 4D          ld   c,l
4CF7: 00          nop
4CF8: F4 E5 07    call p,$07E5
4CFB: 91          sub  c
4CFC: 4D          ld   c,l
4CFD: 01 91 55    ld   bc,$5591
4D00: 05          dec  b
4D01: 5E          ld   e,(hl)
4D02: 55          ld   d,l
4D03: 04          inc  b
4D04: 4F          ld   c,a
4D05: 4D          ld   c,l
4D06: 00          nop
4D07: 83          add  a,e
4D08: 02          ld   (bc),a
4D09: 2B          dec  hl
4D0A: 05          dec  b
4D0B: 81          add  a,c
4D0C: 12          ld   (de),a
4D0D: 82          add  a,d
4D0E: 00          nop
4D0F: 82          add  a,d
4D10: 16 82       ld   d,$82
4D12: 00          nop
4D13: 83          add  a,e
4D14: 15          dec  d
4D15: 82          add  a,d
4D16: 00          nop
4D17: 84          add  a,h
4D18: 15          dec  d
4D19: 81          add  a,c
4D1A: 00          nop
4D1B: 83          add  a,e
4D1C: 15          dec  d
4D1D: 82          add  a,d
4D1E: 00          nop
4D1F: 83          add  a,e
4D20: 15          dec  d
4D21: 82          add  a,d
4D22: 00          nop
4D23: 83          add  a,e
4D24: 15          dec  d
4D25: 82          add  a,d
4D26: 00          nop
4D27: 83          add  a,e
4D28: 04          inc  b
4D29: 08          ex   af,af'
4D2A: 05          dec  b
4D2B: 83          add  a,e
4D2C: 00          nop
4D2D: 83          add  a,e
4D2E: 15          dec  d
4D2F: 82          add  a,d
4D30: 00          nop
4D31: 83          add  a,e
4D32: 02          ld   (bc),a
4D33: A8          xor  b
4D34: 19          add  hl,de
4D35: 03          inc  bc
4D36: FF          rst  $38
4D37: 04          inc  b
4D38: 82          add  a,d
4D39: 00          nop
4D3A: 83          add  a,e
4D3B: 02          ld   (bc),a
4D3C: A6          and  (hl)
4D3D: 19          add  hl,de
4D3E: 03          inc  bc
4D3F: FC 04 82    call m,$8204
4D42: 00          nop
4D43: 83          add  a,e
4D44: 04          inc  b
4D45: A4          and  h
4D46: 19          add  hl,de
4D47: 83          add  a,e
4D48: 00          nop
4D49: 84          add  a,h
4D4A: 02          ld   (bc),a
4D4B: A0          and  b
4D4C: 19          add  hl,de
4D4D: 84          add  a,h
4D4E: 00          nop
4D4F: 84          add  a,h
4D50: 03          inc  bc
4D51: F9          ld   sp,hl
4D52: 04          inc  b
4D53: 83          add  a,e
4D54: 00          nop
4D55: 83          add  a,e
4D56: 14          inc  d
4D57: 83          add  a,e
4D58: 00          nop
4D59: 83          add  a,e
4D5A: 14          inc  d
4D5B: 83          add  a,e
4D5C: 00          nop
4D5D: 84          add  a,h
4D5E: 13          inc  de
4D5F: 83          add  a,e
4D60: 00          nop
4D61: 83          add  a,e
4D62: 04          inc  b
4D63: 4C          ld   c,h
4D64: 05          dec  b
4D65: 83          add  a,e
4D66: 00          nop
4D67: 83          add  a,e
4D68: 04          inc  b
4D69: B1          or   c
4D6A: 19          add  hl,de
4D6B: 83          add  a,e
4D6C: 00          nop
4D6D: 83          add  a,e
4D6E: 15          dec  d
4D6F: 82          add  a,d
4D70: 00          nop
4D71: 83          add  a,e
4D72: 05          dec  b
4D73: 48          ld   c,b
4D74: 05          dec  b
4D75: 82          add  a,d
4D76: 00          nop
4D77: 83          add  a,e
4D78: 15          dec  d
4D79: 82          add  a,d
4D7A: 00          nop
4D7B: 83          add  a,e
4D7C: 15          dec  d
4D7D: 82          add  a,d
4D7E: 00          nop
4D7F: 83          add  a,e
4D80: 15          dec  d
4D81: 82          add  a,d
4D82: 00          nop
4D83: 84          add  a,h
4D84: 03          inc  bc
4D85: 34          inc  (hl)
4D86: 05          dec  b
4D87: 83          add  a,e
4D88: 00          nop
4D89: 84          add  a,h
4D8A: 13          inc  de
4D8B: 83          add  a,e
4D8C: 00          nop
4D8D: 84          add  a,h
4D8E: 13          inc  de
4D8F: 83          add  a,e
4D90: 00          nop
4D91: 84          add  a,h
4D92: 03          inc  bc
4D93: 65          ld   h,l
4D94: 05          dec  b
4D95: 83          add  a,e
4D96: 00          nop
4D97: 84          add  a,h
4D98: 13          inc  de
4D99: 83          add  a,e
4D9A: 00          nop
4D9B: 84          add  a,h
4D9C: 13          inc  de
4D9D: 83          add  a,e
4D9E: 00          nop
4D9F: 85          add  a,l
4DA0: 12          ld   (de),a
4DA1: 83          add  a,e
4DA2: 00          nop
4DA3: 83          add  a,e
4DA4: 15          dec  d
4DA5: 82          add  a,d
4DA6: 00          nop
4DA7: 83          add  a,e
4DA8: 15          dec  d
4DA9: 82          add  a,d
4DAA: 00          nop
4DAB: 83          add  a,e
4DAC: 14          inc  d
4DAD: 83          add  a,e
4DAE: 00          nop
4DAF: 83          add  a,e
4DB0: 03          inc  bc
4DB1: 04          inc  b
4DB2: 05          dec  b
4DB3: 91          sub  c
4DB4: 60          ld   h,b
4DB5: 08          ex   af,af'
4DB6: 02          ld   (bc),a
4DB7: 2F          cpl
4DB8: 1A          ld   a,(de)
4DB9: 81          add  a,c
4DBA: 00          nop
4DBB: 83          add  a,e
4DBC: 02          ld   (bc),a
4DBD: A8          xor  b
4DBE: 19          add  hl,de
4DBF: 04          inc  b
4DC0: 5F          ld   e,a
4DC1: 08          ex   af,af'
4DC2: 81          add  a,c
4DC3: 00          nop
4DC4: 83          add  a,e
4DC5: 02          ld   (bc),a
4DC6: A6          and  (hl)
4DC7: 19          add  hl,de
4DC8: 02          ld   (bc),a
4DC9: 2D          dec  l
4DCA: 1A          ld   a,(de)
4DCB: 02          ld   (bc),a
4DCC: 5B          ld   e,e
4DCD: 08          ex   af,af'
4DCE: 81          add  a,c
4DCF: 00          nop
4DD0: 83          add  a,e
4DD1: 03          inc  bc
4DD2: A4          and  h
4DD3: 19          add  hl,de
4DD4: 03          inc  bc
4DD5: 59          ld   e,c
4DD6: 08          ex   af,af'
4DD7: 81          add  a,c
4DD8: 00          nop
4DD9: 84          add  a,h
4DDA: 02          ld   (bc),a
4DDB: 31 1A 84    ld   sp,$841A
4DDE: 00          nop
4DDF: 84          add  a,h
4DE0: 02          ld   (bc),a
4DE1: 65          ld   h,l
4DE2: 08          ex   af,af'
4DE3: 84          add  a,h
4DE4: 00          nop
4DE5: 83          add  a,e
4DE6: 11 02 D9    ld   de,$D902
4DE9: 07          rlca
4DEA: 01 62 08    ld   bc,$0862
4DED: 83          add  a,e
4DEE: 00          nop
4DEF: 83          add  a,e
4DF0: 11 03 D4    ld   de,$D403
4DF3: 07          rlca
4DF4: 83          add  a,e
4DF5: 00          nop
4DF6: 83          add  a,e
4DF7: 03          inc  bc
4DF8: 7B          ld   a,e
4DF9: 05          dec  b
4DFA: 84          add  a,h
4DFB: 00          nop
4DFC: 83          add  a,e
4DFD: 02          ld   (bc),a
4DFE: 4D          ld   c,l
4DFF: 08          ex   af,af'
4E00: 02          ld   (bc),a
4E01: 06 05       ld   b,$05
4E03: 83          add  a,e
4E04: 00          nop
4E05: 83          add  a,e
4E06: 05          dec  b
4E07: 4B          ld   c,e
4E08: 08          ex   af,af'
4E09: 82          add  a,d
4E0A: 00          nop
4E0B: 83          add  a,e
4E0C: 02          ld   (bc),a
4E0D: 2B          dec  hl
4E0E: 1A          ld   a,(de)
4E0F: 03          inc  bc
4E10: 46          ld   b,(hl)
4E11: 08          ex   af,af'
4E12: 82          add  a,d
4E13: 00          nop
4E14: 83          add  a,e
4E15: 02          ld   (bc),a
4E16: A6          and  (hl)
4E17: 19          add  hl,de
4E18: 03          inc  bc
4E19: 43          ld   b,e
4E1A: 08          ex   af,af'
4E1B: 82          add  a,d
4E1C: 00          nop
4E1D: 83          add  a,e
4E1E: 03          inc  bc
4E1F: A4          and  h
4E20: 19          add  hl,de
4E21: 02          ld   (bc),a
4E22: 40          ld   b,b
4E23: 08          ex   af,af'
4E24: 82          add  a,d
4E25: 00          nop
4E26: 84          add  a,h
4E27: 02          ld   (bc),a
4E28: A0          and  b
4E29: 19          add  hl,de
4E2A: 02          ld   (bc),a
4E2B: 3E 08       ld   a,$08
4E2D: 82          add  a,d
4E2E: 00          nop
4E2F: 84          add  a,h
4E30: 08          ex   af,af'
4E31: FC 1B 84    call m,$841B
4E34: 00          nop
4E35: 84          add  a,h
4E36: 18 84       jr   $4DBC
4E38: 00          nop
4E39: 87          add  a,a
4E3A: 01 73 13    ld   bc,$1373
4E3D: 88          adc  a,b
4E3E: 00          nop
4E3F: 86          add  a,(hl)
4E40: 16 84       ld   d,$84
4E42: 00          nop
4E43: 1F          rra
4E44: 11 00 07    ld   de,$0700
4E47: EC 1B 05    call pe,$051B
4E4A: 5C          ld   e,h
4E4B: 13          inc  de
4E4C: 04          inc  b
4E4D: E5          push hl
4E4E: 1B          dec  de
4E4F: 00          nop
4E50: 13          inc  de
4E51: 82          add  a,d
4E52: 07          rlca
4E53: 57          ld   d,a
4E54: 13          inc  de
4E55: 81          add  a,c
4E56: 03          inc  bc
4E57: DE 1B       sbc  a,$1B
4E59: 00          nop
4E5A: 11 87 04    ld   de,$0487
4E5D: 50          ld   d,b
4E5E: 13          inc  de
4E5F: 84          add  a,h
4E60: 00          nop
4E61: 83          add  a,e
4E62: 04          inc  b
4E63: DD          db   $dd
4E64: 05          dec  b
4E65: 83          add  a,e
4E66: 00          nop
4E67: 83          add  a,e
4E68: 15          dec  d
4E69: 82          add  a,d
4E6A: 00          nop
4E6B: 83          add  a,e
4E6C: 15          dec  d
4E6D: 82          add  a,d
4E6E: 00          nop
4E6F: 83          add  a,e
4E70: 15          dec  d
4E71: 82          add  a,d
4E72: 00          nop
4E73: 83          add  a,e
4E74: 15          dec  d
4E75: 82          add  a,d
4E76: 00          nop
4E77: 83          add  a,e
4E78: 14          inc  d
4E79: 83          add  a,e
4E7A: 00          nop
4E7B: 84          add  a,h
4E7C: 13          inc  de
4E7D: 83          add  a,e
4E7E: 00          nop
4E7F: 84          add  a,h
4E80: 13          inc  de
4E81: 83          add  a,e
4E82: 00          nop
4E83: 84          add  a,h
4E84: 13          inc  de
4E85: 83          add  a,e
4E86: 00          nop
4E87: 8A          adc  a,d
4E88: 00          nop
4E89: 83          add  a,e
4E8A: 02          ld   (bc),a
4E8B: F9          ld   sp,hl
4E8C: 05          dec  b
4E8D: 81          add  a,c
4E8E: 11 83 00    ld   de,$0083
4E91: 83          add  a,e
4E92: 12          ld   (de),a
4E93: 81          add  a,c
4E94: 12          ld   (de),a
4E95: 82          add  a,d
4E96: 00          nop
4E97: 83          add  a,e
4E98: 15          dec  d
4E99: 82          add  a,d
4E9A: 00          nop
4E9B: 83          add  a,e
4E9C: 14          inc  d
4E9D: 83          add  a,e
4E9E: 00          nop
4E9F: 83          add  a,e
4EA0: 14          inc  d
4EA1: 83          add  a,e
4EA2: 00          nop
4EA3: 83          add  a,e
4EA4: 14          inc  d
4EA5: 83          add  a,e
4EA6: 00          nop
4EA7: 83          add  a,e
4EA8: 14          inc  d
4EA9: 83          add  a,e
4EAA: 00          nop
4EAB: 83          add  a,e
4EAC: 04          inc  b
4EAD: B8          cp   b
4EAE: 05          dec  b
4EAF: 83          add  a,e
4EB0: 00          nop
4EB1: 83          add  a,e
4EB2: 04          inc  b
4EB3: C8          ret  z
4EB4: 19          add  hl,de
4EB5: 83          add  a,e
4EB6: 00          nop
4EB7: 83          add  a,e
4EB8: 16 81       ld   d,$81
4EBA: 00          nop
4EBB: 83          add  a,e
4EBC: 06 B4       ld   b,$B4
4EBE: 05          dec  b
4EBF: 81          add  a,c
4EC0: 00          nop
4EC1: 83          add  a,e
4EC2: 15          dec  d
4EC3: 82          add  a,d
4EC4: 00          nop
4EC5: 83          add  a,e
4EC6: 14          inc  d
4EC7: 83          add  a,e
4EC8: 00          nop
4EC9: 85          add  a,l
4ECA: 13          inc  de
4ECB: 82          add  a,d
4ECC: 00          nop
4ECD: 85          add  a,l
4ECE: 13          inc  de
4ECF: 82          add  a,d
4ED0: 00          nop
4ED1: 85          add  a,l
4ED2: 13          inc  de
4ED3: 82          add  a,d
4ED4: 00          nop
4ED5: 85          add  a,l
4ED6: 13          inc  de
4ED7: 82          add  a,d
4ED8: 00          nop
4ED9: 82          add  a,d
4EDA: 04          inc  b
4EDB: 13          inc  de
4EDC: 07          rlca
4EDD: 84          add  a,h
4EDE: 00          nop
4EDF: 82          add  a,d
4EE0: 14          inc  d
4EE1: 84          add  a,h
4EE2: 00          nop
4EE3: 82          add  a,d
4EE4: 15          dec  d
4EE5: 83          add  a,e
4EE6: 00          nop
4EE7: 83          add  a,e
4EE8: 14          inc  d
4EE9: 83          add  a,e
4EEA: 00          nop
4EEB: 82          add  a,d
4EEC: 06 9E       ld   b,$9E
4EEE: 09          add  hl,bc
4EEF: 82          add  a,d
4EF0: 00          nop
4EF1: 82          add  a,d
4EF2: 06 FD       ld   b,$FD
4EF4: 06 82       ld   b,$82
4EF6: 00          nop
4EF7: 82          add  a,d
4EF8: 16 82       ld   d,$82
4EFA: 00          nop
4EFB: 82          add  a,d
4EFC: 12          ld   (de),a
4EFD: 91          sub  c
4EFE: 14          inc  d
4EFF: 00          nop
4F00: 02          ld   (bc),a
4F01: EF          rst  $28
4F02: 06 83       ld   b,$83
4F04: 00          nop
4F05: 82          add  a,d
4F06: 02          ld   (bc),a
4F07: FE 19       cp   $19
4F09: 03          inc  bc
4F0A: ED          db   $ed
4F0B: 06 83       ld   b,$83
4F0D: 00          nop
4F0E: 82          add  a,d
4F0F: 05          dec  b
4F10: FC 19 83    call m,$8319
4F13: 00          nop
4F14: 82          add  a,d
4F15: 12          ld   (de),a
4F16: 03          inc  bc
4F17: EA 06 83    jp   pe,$8306
4F1A: 00          nop
4F1B: 83          add  a,e
4F1C: 14          inc  d
4F1D: 83          add  a,e
4F1E: 00          nop
4F1F: 83          add  a,e
4F20: 14          inc  d
4F21: 83          add  a,e
4F22: 00          nop
4F23: 83          add  a,e
4F24: 12          ld   (de),a
4F25: 92          sub  d
4F26: 7A          ld   a,d
4F27: 05          dec  b
4F28: DD          db   $dd
4F29: 06 83       ld   b,$83
4F2B: 00          nop
4F2C: 85          add  a,l
4F2D: 91          sub  c
4F2E: DC 06 84    call c,$8406
4F31: 00          nop
4F32: 83          add  a,e
4F33: 02          ld   (bc),a
4F34: 52          ld   d,d
4F35: 07          rlca
4F36: 85          add  a,l
4F37: 00          nop
4F38: 83          add  a,e
4F39: 12          ld   (de),a
4F3A: 81          add  a,c
4F3B: 12          ld   (de),a
4F3C: 82          add  a,d
4F3D: 00          nop
4F3E: 82          add  a,d
4F3F: 16 82       ld   d,$82
4F41: 00          nop
4F42: 82          add  a,d
4F43: 16 82       ld   d,$82
4F45: 00          nop
4F46: 82          add  a,d
4F47: 16 82       ld   d,$82
4F49: 00          nop
4F4A: 82          add  a,d
4F4B: 03          inc  bc
4F4C: 8B          adc  a,e
4F4D: 05          dec  b
4F4E: 91          sub  c
4F4F: 14          inc  d
4F50: 00          nop
4F51: 02          ld   (bc),a
4F52: 2D          dec  l
4F53: 07          rlca
4F54: 82          add  a,d
4F55: 00          nop
4F56: 83          add  a,e
4F57: 05          dec  b
4F58: 34          inc  (hl)
4F59: 07          rlca
4F5A: 82          add  a,d
4F5B: 00          nop
4F5C: 84          add  a,h
4F5D: 12          ld   (de),a
4F5E: 02          ld   (bc),a
4F5F: E3          ex   (sp),hl
4F60: 19          add  hl,de
4F61: 82          add  a,d
4F62: 00          nop
4F63: 82          add  a,d
4F64: 06 0C       ld   b,$0C
4F66: 1A          ld   a,(de)
4F67: 82          add  a,d
4F68: 00          nop
4F69: 82          add  a,d
4F6A: 02          ld   (bc),a
4F6B: 2B          dec  hl
4F6C: 07          rlca
4F6D: 04          inc  b
4F6E: 06 1A       ld   b,$1A
4F70: 82          add  a,d
4F71: 00          nop
4F72: 82          add  a,d
4F73: 02          ld   (bc),a
4F74: 29          add  hl,hl
4F75: 07          rlca
4F76: 03          inc  bc
4F77: 02          ld   (bc),a
4F78: 1A          ld   a,(de)
4F79: 83          add  a,e
4F7A: 00          nop
4F7B: 82          add  a,d
4F7C: 05          dec  b
4F7D: 27          daa
4F7E: 07          rlca
4F7F: 83          add  a,e
4F80: 00          nop
4F81: 84          add  a,h
4F82: 14          inc  d
4F83: 82          add  a,d
4F84: 00          nop
4F85: 84          add  a,h
4F86: 14          inc  d
4F87: 82          add  a,d
4F88: 00          nop
4F89: 84          add  a,h
4F8A: 14          inc  d
4F8B: 82          add  a,d
4F8C: 00          nop
4F8D: 85          add  a,l
4F8E: 13          inc  de
4F8F: 82          add  a,d
4F90: 00          nop
4F91: 8A          adc  a,d
4F92: 00          nop
4F93: 84          add  a,h
4F94: 02          ld   (bc),a
4F95: 95          sub  l
4F96: 07          rlca
4F97: 81          add  a,c
4F98: 12          ld   (de),a
4F99: 81          add  a,c
4F9A: 00          nop
4F9B: 84          add  a,h
4F9C: 15          dec  d
4F9D: 81          add  a,c
4F9E: 00          nop
4F9F: 83          add  a,e
4FA0: 16 81       ld   d,$81
4FA2: 00          nop
4FA3: 83          add  a,e
4FA4: 15          dec  d
4FA5: 82          add  a,d
4FA6: 00          nop
4FA7: 83          add  a,e
4FA8: 16 81       ld   d,$81
4FAA: 00          nop
4FAB: 83          add  a,e
4FAC: 16 81       ld   d,$81
4FAE: 00          nop
4FAF: 83          add  a,e
4FB0: 15          dec  d
4FB1: 82          add  a,d
4FB2: 00          nop
4FB3: 82          add  a,d
4FB4: 12          ld   (de),a
4FB5: 05          dec  b
4FB6: 19          add  hl,de
4FB7: 1A          ld   a,(de)
4FB8: 81          add  a,c
4FB9: 00          nop
4FBA: 81          add  a,c
4FBB: 03          inc  bc
4FBC: 6E          ld   l,(hl)
4FBD: 07          rlca
4FBE: 81          add  a,c
4FBF: 04          inc  b
4FC0: 14          inc  d
4FC1: 1A          ld   a,(de)
4FC2: 81          add  a,c
4FC3: 00          nop
4FC4: 81          add  a,c
4FC5: 03          inc  bc
4FC6: 6B          ld   l,e
4FC7: 07          rlca
4FC8: 81          add  a,c
4FC9: 04          inc  b
4FCA: 10 1A       djnz $4FE6
4FCC: 81          add  a,c
4FCD: 00          nop
4FCE: 81          add  a,c
4FCF: 02          ld   (bc),a
4FD0: 68          ld   l,b
4FD1: 07          rlca
4FD2: 82          add  a,d
4FD3: 14          inc  d
4FD4: 81          add  a,c
4FD5: 00          nop
4FD6: 84          add  a,h
4FD7: 14          inc  d
4FD8: 82          add  a,d
4FD9: 00          nop
4FDA: 84          add  a,h
4FDB: 15          dec  d
4FDC: 81          add  a,c
4FDD: 00          nop
4FDE: 85          add  a,l
4FDF: 12          ld   (de),a
4FE0: 92          sub  d
4FE1: 7A          ld   a,d
4FE2: 05          dec  b
4FE3: 57          ld   d,a
4FE4: 07          rlca
4FE5: 81          add  a,c
4FE6: 00          nop
4FE7: 85          add  a,l
4FE8: 03          inc  bc
4FE9: 56          ld   d,(hl)
4FEA: 07          rlca
4FEB: 82          add  a,d
4FEC: 00          nop
4FED: 86          add  a,(hl)
4FEE: 11 83 00    ld   de,$0083
4FF1: 8A          adc  a,d
4FF2: 00          nop
4FF3: 83          add  a,e
4FF4: 04          inc  b
4FF5: 4C          ld   c,h
4FF6: 05          dec  b
4FF7: 83          add  a,e
4FF8: 00          nop
4FF9: 83          add  a,e
4FFA: 91          sub  c
4FFB: B4          or   h
4FFC: 19          add  hl,de
4FFD: 03          inc  bc
4FFE: B0          or   b
4FFF: 19          add  hl,de
5000: 83          add  a,e
5001: 00          nop
5002: 83          add  a,e
5003: 02          ld   (bc),a
5004: 9C          sbc  a,h
5005: 08          ex   af,af'
5006: 91          sub  c
5007: AB          xor  e
5008: 19          add  hl,de
5009: 02          ld   (bc),a
500A: B3          or   e
500B: 19          add  hl,de
500C: 82          add  a,d
500D: 00          nop
500E: 83          add  a,e
500F: 05          dec  b
5010: 78          ld   a,b
5011: 05          dec  b
5012: 82          add  a,d
5013: 00          nop
5014: 83          add  a,e
5015: 15          dec  d
5016: 82          add  a,d
5017: 00          nop
5018: 83          add  a,e
5019: 15          dec  d
501A: 82          add  a,d
501B: 00          nop
501C: 84          add  a,h
501D: 14          inc  d
501E: 82          add  a,d
501F: 00          nop
5020: 83          add  a,e
5021: 03          inc  bc
5022: 99          sbc  a,c
5023: 05          dec  b
5024: 91          sub  c
5025: 49          ld   c,c
5026: 05          dec  b
5027: 83          add  a,e
5028: 00          nop
5029: 82          add  a,d
502A: 06 3A       ld   b,$3A
502C: 07          rlca
502D: 82          add  a,d
502E: 00          nop
502F: 82          add  a,d
5030: 02          ld   (bc),a
5031: 96          sub  (hl)
5032: 05          dec  b
5033: 91          sub  c
5034: 14          inc  d
5035: 00          nop
5036: 03          inc  bc
5037: 94          sub  h
5038: 05          dec  b
5039: 82          add  a,d
503A: 00          nop
503B: 82          add  a,d
503C: 16 82       ld   d,$82
503E: 00          nop
503F: 83          add  a,e
5040: 03          inc  bc
5041: B9          cp   c
5042: 19          add  hl,de
5043: 02          ld   (bc),a
5044: 88          adc  a,b
5045: 05          dec  b
5046: 82          add  a,d
5047: 00          nop
5048: 84          add  a,h
5049: 02          ld   (bc),a
504A: B6          or   (hl)
504B: 19          add  hl,de
504C: 02          ld   (bc),a
504D: 86          add  a,(hl)
504E: 05          dec  b
504F: 82          add  a,d
5050: 00          nop
5051: 84          add  a,h
5052: 13          inc  de
5053: 83          add  a,e
5054: 00          nop
5055: 84          add  a,h
5056: 13          inc  de
5057: 83          add  a,e
5058: 00          nop
5059: 84          add  a,h
505A: 13          inc  de
505B: 83          add  a,e
505C: 00          nop
505D: 84          add  a,h
505E: 13          inc  de
505F: 83          add  a,e
5060: 00          nop
5061: 83          add  a,e
5062: 03          inc  bc
5063: 55          ld   d,l
5064: 06 92       ld   b,$92
5066: 05          dec  b
5067: 05          dec  b
5068: DF          rst  $18
5069: 19          add  hl,de
506A: 82          add  a,d
506B: 00          nop
506C: 83          add  a,e
506D: 04          inc  b
506E: DE 19       sbc  a,$19
5070: 02          ld   (bc),a
5071: 52          ld   d,d
5072: 06 81       ld   b,$81
5074: 00          nop
5075: 83          add  a,e
5076: 04          inc  b
5077: 8F          adc  a,a
5078: 1A          ld   a,(de)
5079: 02          ld   (bc),a
507A: 4F          ld   c,a
507B: 06 81       ld   b,$81
507D: 00          nop
507E: 82          add  a,d
507F: 17          rla
5080: 81          add  a,c
5081: 00          nop
5082: 81          add  a,c
5083: 15          dec  d
5084: 02          ld   (bc),a
5085: D7          rst  $10
5086: 19          add  hl,de
5087: 82          add  a,d
5088: 00          nop
5089: 82          add  a,d
508A: 06 41       ld   b,$41
508C: 06 82       ld   b,$82
508E: 00          nop
508F: 85          add  a,l
5090: 13          inc  de
5091: 82          add  a,d
5092: 00          nop
5093: 85          add  a,l
5094: 13          inc  de
5095: 82          add  a,d
5096: 00          nop
5097: 85          add  a,l
5098: 11 91 7A    ld   de,$7A91
509B: 05          dec  b
509C: 01 34 06    ld   bc,$0634
509F: 82          add  a,d
50A0: 00          nop
50A1: 85          add  a,l
50A2: 13          inc  de
50A3: 82          add  a,d
50A4: 00          nop
50A5: 84          add  a,h
50A6: 04          inc  b
50A7: 93          sub  e
50A8: 06 82       ld   b,$82
50AA: 00          nop
50AB: 84          add  a,h
50AC: 12          ld   (de),a
50AD: 81          add  a,c
50AE: 12          ld   (de),a
50AF: 81          add  a,c
50B0: 00          nop
50B1: 84          add  a,h
50B2: 15          dec  d
50B3: 81          add  a,c
50B4: 00          nop
50B5: 84          add  a,h
50B6: 12          ld   (de),a
50B7: 02          ld   (bc),a
50B8: EC 19 82    call pe,$8219
50BB: 00          nop
50BC: 84          add  a,h
50BD: 12          ld   (de),a
50BE: 03          inc  bc
50BF: 84          add  a,h
50C0: 06 81       ld   b,$81
50C2: 00          nop
50C3: 84          add  a,h
50C4: 15          dec  d
50C5: 81          add  a,c
50C6: 00          nop
50C7: 84          add  a,h
50C8: 15          dec  d
50C9: 81          add  a,c
50CA: 00          nop
50CB: 83          add  a,e
50CC: 02          ld   (bc),a
50CD: E8          ret  pe
50CE: 19          add  hl,de
50CF: 04          inc  b
50D0: 77          ld   (hl),a
50D1: 06 81       ld   b,$81
50D3: 00          nop
50D4: 83          add  a,e
50D5: 13          inc  de
50D6: 91          sub  c
50D7: 14          inc  d
50D8: 00          nop
50D9: 01 68 06    ld   bc,$0668
50DC: 82          add  a,d
50DD: 00          nop
50DE: 83          add  a,e
50DF: 15          dec  d
50E0: 82          add  a,d
50E1: 00          nop
50E2: 83          add  a,e
50E3: 05          dec  b
50E4: 6D          ld   l,l
50E5: 06 82       ld   b,$82
50E7: 00          nop
50E8: 83          add  a,e
50E9: 05          dec  b
50EA: BE          cp   (hl)
50EB: 19          add  hl,de
50EC: 82          add  a,d
50ED: 00          nop
50EE: 83          add  a,e
50EF: 03          inc  bc
50F0: 70          ld   (hl),b
50F1: 06 02       ld   b,$02
50F3: E1          pop  hl
50F4: 19          add  hl,de
50F5: 82          add  a,d
50F6: 00          nop
50F7: 83          add  a,e
50F8: 03          inc  bc
50F9: 62          ld   h,d
50FA: 06 84       ld   b,$84
50FC: 00          nop
50FD: 83          add  a,e
50FE: 13          inc  de
50FF: 84          add  a,h
5100: 00          nop
5101: 82          add  a,d
5102: 14          inc  d
5103: 84          add  a,h
5104: 00          nop
5105: 83          add  a,e
5106: 13          inc  de
5107: 84          add  a,h
5108: 00          nop
5109: 84          add  a,h
510A: 02          ld   (bc),a
510B: DB 06       in   a,($06)
510D: 84          add  a,h
510E: 00          nop
510F: 84          add  a,h
5110: 14          inc  d
5111: 82          add  a,d
5112: 00          nop
5113: 83          add  a,e
5114: 15          dec  d
5115: 82          add  a,d
5116: 00          nop
5117: 83          add  a,e
5118: 15          dec  d
5119: 82          add  a,d
511A: 00          nop
511B: 82          add  a,d
511C: 15          dec  d
511D: 83          add  a,e
511E: 00          nop
511F: 82          add  a,d
5120: 15          dec  d
5121: 83          add  a,e
5122: 00          nop
5123: 82          add  a,d
5124: 15          dec  d
5125: 83          add  a,e
5126: 00          nop
5127: 83          add  a,e
5128: 14          inc  d
5129: 83          add  a,e
512A: 00          nop
512B: 83          add  a,e
512C: 14          inc  d
512D: 83          add  a,e
512E: 00          nop
512F: 82          add  a,d
5130: 12          ld   (de),a
5131: 03          inc  bc
5132: F5          push af
5133: 19          add  hl,de
5134: 83          add  a,e
5135: 00          nop
5136: 82          add  a,d
5137: 02          ld   (bc),a
5138: B2          or   d
5139: 06 03       ld   b,$03
513B: F2 19 83    jp   p,$8319
513E: 00          nop
513F: 81          add  a,c
5140: 03          inc  bc
5141: B0          or   b
5142: 06 03       ld   b,$03
5144: EF          rst  $28
5145: 19          add  hl,de
5146: 83          add  a,e
5147: 00          nop
5148: 03          inc  bc
5149: AD          xor  l
514A: 06 81       ld   b,$81
514C: 13          inc  de
514D: 83          add  a,e
514E: 00          nop
514F: 17          rla
5150: 83          add  a,e
5151: 00          nop
5152: 81          add  a,c
5153: 11 81 14    ld   de,$1481
5156: 83          add  a,e
5157: 00          nop
5158: 83          add  a,e
5159: 14          inc  d
515A: 83          add  a,e
515B: 00          nop
515C: 83          add  a,e
515D: 14          inc  d
515E: 83          add  a,e
515F: 00          nop
5160: 82          add  a,d
5161: 02          ld   (bc),a
5162: 30 06       jr   nc,$516A
5164: 81          add  a,c
5165: 12          ld   (de),a
5166: 83          add  a,e
5167: 00          nop
5168: 82          add  a,d
5169: 15          dec  d
516A: 83          add  a,e
516B: 00          nop
516C: 82          add  a,d
516D: 15          dec  d
516E: 83          add  a,e
516F: 00          nop
5170: 83          add  a,e
5171: 13          inc  de
5172: 02          ld   (bc),a
5173: D5          push de
5174: 19          add  hl,de
5175: 82          add  a,d
5176: 00          nop
5177: 82          add  a,d
5178: 04          inc  b
5179: 1F          rra
517A: 06 02       ld   b,$02
517C: D3 19       out  ($19),a
517E: 82          add  a,d
517F: 00          nop
5180: 82          add  a,d
5181: 05          dec  b
5182: 1B          dec  de
5183: 06 83       ld   b,$83
5185: 00          nop
5186: 82          add  a,d
5187: 14          inc  d
5188: 84          add  a,h
5189: 00          nop
518A: 82          add  a,d
518B: 11 05 D1    ld   de,$D105
518E: 19          add  hl,de
518F: 82          add  a,d
5190: 00          nop
5191: 82          add  a,d
5192: 14          inc  d
5193: 02          ld   (bc),a
5194: 11 06 82    ld   de,$8206
5197: 00          nop
5198: 82          add  a,d
5199: 16 82       ld   d,$82
519B: 00          nop
519C: 83          add  a,e
519D: 15          dec  d
519E: 82          add  a,d
519F: 00          nop
51A0: 83          add  a,e
51A1: 15          dec  d
51A2: 82          add  a,d
51A3: 00          nop
51A4: 84          add  a,h
51A5: 13          inc  de
51A6: 83          add  a,e
51A7: 00          nop
51A8: 84          add  a,h
51A9: 13          inc  de
51AA: 83          add  a,e
51AB: 00          nop
51AC: 85          add  a,l
51AD: 04          inc  b
51AE: 4C          ld   c,h
51AF: 13          inc  de
51B0: 91          sub  c
51B1: 50          ld   d,b
51B2: 06 02       ld   b,$02
51B4: 48          ld   c,b
51B5: 13          inc  de
51B6: 84          add  a,h
51B7: 00          nop
51B8: 85          add  a,l
51B9: 12          ld   (de),a
51BA: 91          sub  c
51BB: 50          ld   d,b
51BC: 06 03       ld   b,$03
51BE: 44          ld   b,h
51BF: 13          inc  de
51C0: 85          add  a,l
51C1: 00          nop
51C2: 85          add  a,l
51C3: 16 85       ld   d,$85
51C5: 00          nop
51C6: 86          add  a,(hl)
51C7: 14          inc  d
51C8: 86          add  a,(hl)
51C9: 00          nop
51CA: 86          add  a,(hl)
51CB: 14          inc  d
51CC: 86          add  a,(hl)
51CD: 00          nop
51CE: 85          add  a,l
51CF: 16 85       ld   d,$85
51D1: 00          nop
51D2: 85          add  a,l
51D3: 16 85       ld   d,$85
51D5: 00          nop
51D6: 84          add  a,h
51D7: 18 84       jr   $515D
51D9: 00          nop
51DA: 83          add  a,e
51DB: 1A          ld   a,(de)
51DC: 83          add  a,e
51DD: 00          nop
51DE: 83          add  a,e
51DF: 1A          ld   a,(de)
51E0: 83          add  a,e
51E1: 00          nop
51E2: 83          add  a,e
51E3: 16 82       ld   d,$82
51E5: 12          ld   (de),a
51E6: 83          add  a,e
51E7: 00          nop
51E8: 83          add  a,e
51E9: 12          ld   (de),a
51EA: 81          add  a,c
51EB: 14          inc  d
51EC: 81          add  a,c
51ED: 12          ld   (de),a
51EE: 83          add  a,e
51EF: 00          nop
51F0: 83          add  a,e
51F1: 12          ld   (de),a
51F2: 81          add  a,c
51F3: 14          inc  d
51F4: 81          add  a,c
51F5: 12          ld   (de),a
51F6: 83          add  a,e
51F7: 00          nop
51F8: 82          add  a,d
51F9: 13          inc  de
51FA: 81          add  a,c
51FB: 14          inc  d
51FC: 81          add  a,c
51FD: 13          inc  de
51FE: 82          add  a,d
51FF: 00          nop
5200: 82          add  a,d
5201: 1C          inc  e
5202: 82          add  a,d
5203: 00          nop
5204: 82          add  a,d
5205: 1C          inc  e
5206: 82          add  a,d
5207: 00          nop
5208: 83          add  a,e
5209: 16 81       ld   d,$81
520B: 13          inc  de
520C: 83          add  a,e
520D: 00          nop
520E: 83          add  a,e
520F: 13          inc  de
5210: 8A          adc  a,d
5211: 00          nop
5212: 81          add  a,c
5213: 8F          adc  a,a
5214: 00          nop
5215: 85          add  a,l
5216: 91          sub  c
5217: C5          push bc
5218: 12          ld   (de),a
5219: 04          inc  b
521A: 25          dec  h
521B: 13          inc  de
521C: 02          ld   (bc),a
521D: C4 12 84    call nz,$8412
5220: 00          nop
5221: 84          add  a,h
5222: 12          ld   (de),a
5223: 04          inc  b
5224: 1C          inc  e
5225: 13          inc  de
5226: 02          ld   (bc),a
5227: C0          ret  nz
5228: 12          ld   (de),a
5229: 84          add  a,h
522A: 00          nop
522B: 84          add  a,h
522C: 12          ld   (de),a
522D: 04          inc  b
522E: 12          ld   (de),a
522F: 13          inc  de
5230: 03          inc  bc
5231: BC          cp   h
5232: 12          ld   (de),a
5233: 83          add  a,e
5234: 00          nop
5235: 83          add  a,e
5236: 13          inc  de
5237: 03          inc  bc
5238: 08          ex   af,af'
5239: 13          inc  de
523A: 81          add  a,c
523B: 03          inc  bc
523C: B6          or   (hl)
523D: 12          ld   (de),a
523E: 83          add  a,e
523F: 00          nop
5240: 83          add  a,e
5241: 12          ld   (de),a
5242: 81          add  a,c
5243: 04          inc  b
5244: 01 13 81    ld   bc,$8113
5247: 02          ld   (bc),a
5248: B1          or   c
5249: 12          ld   (de),a
524A: 83          add  a,e
524B: 00          nop
524C: 83          add  a,e
524D: 12          ld   (de),a
524E: 81          add  a,c
524F: 04          inc  b
5250: F9          ld   sp,hl
5251: 12          ld   (de),a
5252: 81          add  a,c
5253: 02          ld   (bc),a
5254: AD          xor  l
5255: 12          ld   (de),a
5256: 83          add  a,e
5257: 00          nop
5258: 83          add  a,e
5259: 12          ld   (de),a
525A: 81          add  a,c
525B: 04          inc  b
525C: F0          ret  p
525D: 12          ld   (de),a
525E: 81          add  a,c
525F: 02          ld   (bc),a
5260: A9          xor  c
5261: 12          ld   (de),a
5262: 83          add  a,e
5263: 00          nop
5264: 83          add  a,e
5265: 12          ld   (de),a
5266: 82          add  a,d
5267: 02          ld   (bc),a
5268: A5          and  l
5269: 12          ld   (de),a
526A: 82          add  a,d
526B: 02          ld   (bc),a
526C: A3          and  e
526D: 12          ld   (de),a
526E: 83          add  a,e
526F: 00          nop
5270: 83          add  a,e
5271: 91          sub  c
5272: F3          di
5273: 12          ld   (de),a
5274: 02          ld   (bc),a
5275: A0          and  b
5276: 12          ld   (de),a
5277: 85          add  a,l
5278: 12          ld   (de),a
5279: 01 EA 12    ld   bc,$12EA
527C: 82          add  a,d
527D: 00          nop
527E: 83          add  a,e
527F: 11 02 9C    ld   de,$9C02
5282: 12          ld   (de),a
5283: 04          inc  b
5284: E5          push hl
5285: 12          ld   (de),a
5286: 03          inc  bc
5287: 9A          sbc  a,d
5288: 12          ld   (de),a
5289: 01 DE 12    ld   bc,$12DE
528C: 82          add  a,d
528D: 00          nop
528E: 83          add  a,e
528F: 11 02 97    ld   de,$9702
5292: 12          ld   (de),a
5293: 04          inc  b
5294: D9          exx
5295: 12          ld   (de),a
5296: 03          inc  bc
5297: 95          sub  l
5298: 12          ld   (de),a
5299: 91          sub  c
529A: D2 12 82    jp   nc,$8212
529D: 00          nop
529E: 84          add  a,h
529F: 02          ld   (bc),a
52A0: 92          sub  d
52A1: 12          ld   (de),a
52A2: 81          add  a,c
52A3: 02          ld   (bc),a
52A4: CD 12 81    call $8112
52A7: 03          inc  bc
52A8: 90          sub  b
52A9: 12          ld   (de),a
52AA: 83          add  a,e
52AB: 00          nop
52AC: 83          add  a,e
52AD: 04          inc  b
52AE: 7F          ld   a,a
52AF: 08          ex   af,af'
52B0: 83          add  a,e
52B1: 00          nop
52B2: 83          add  a,e
52B3: 16 81       ld   d,$81
52B5: 00          nop
52B6: 83          add  a,e
52B7: 16 81       ld   d,$81
52B9: 00          nop
52BA: 83          add  a,e
52BB: 02          ld   (bc),a
52BC: 3D          dec  a
52BD: 1A          ld   a,(de)
52BE: 03          inc  bc
52BF: 6F          ld   l,a
52C0: 08          ex   af,af'
52C1: 82          add  a,d
52C2: 00          nop
52C3: 83          add  a,e
52C4: 05          dec  b
52C5: 3B          dec  sp
52C6: 1A          ld   a,(de)
52C7: 82          add  a,d
52C8: 00          nop
52C9: 83          add  a,e
52CA: 15          dec  d
52CB: 82          add  a,d
52CC: 00          nop
52CD: 85          add  a,l
52CE: 03          inc  bc
52CF: 6C          ld   l,h
52D0: 08          ex   af,af'
52D1: 82          add  a,d
52D2: 00          nop
52D3: 85          add  a,l
52D4: 14          inc  d
52D5: 81          add  a,c
52D6: 00          nop
52D7: 85          add  a,l
52D8: 04          inc  b
52D9: 17          rla
52DA: 08          ex   af,af'
52DB: 81          add  a,c
52DC: 00          nop
52DD: 85          add  a,l
52DE: 14          inc  d
52DF: 81          add  a,c
52E0: 00          nop
52E1: 81          add  a,c
52E2: 02          ld   (bc),a
52E3: 3C          inc  a
52E4: 08          ex   af,af'
52E5: 82          add  a,d
52E6: 12          ld   (de),a
52E7: 83          add  a,e
52E8: 00          nop
52E9: 81          add  a,c
52EA: 12          ld   (de),a
52EB: 82          add  a,d
52EC: 12          ld   (de),a
52ED: 83          add  a,e
52EE: 00          nop
52EF: 82          add  a,d
52F0: 15          dec  d
52F1: 83          add  a,e
52F2: 00          nop
52F3: 82          add  a,d
52F4: 14          inc  d
52F5: 84          add  a,h
52F6: 00          nop
52F7: 81          add  a,c
52F8: 15          dec  d
52F9: 84          add  a,h
52FA: 00          nop
52FB: 81          add  a,c
52FC: 15          dec  d
52FD: 84          add  a,h
52FE: 00          nop
52FF: 82          add  a,d
5300: 14          inc  d
5301: 84          add  a,h
5302: 00          nop
5303: 82          add  a,d
5304: 16 82       ld   d,$82
5306: 00          nop
5307: 82          add  a,d
5308: 06 9A       ld   b,$9A
530A: 08          ex   af,af'
530B: 82          add  a,d
530C: 00          nop
530D: 81          add  a,c
530E: 13          inc  de
530F: 04          inc  b
5310: 4B          ld   c,e
5311: 1A          ld   a,(de)
5312: 82          add  a,d
5313: 00          nop
5314: 81          add  a,c
5315: 03          inc  bc
5316: 91          sub  c
5317: 08          ex   af,af'
5318: 04          inc  b
5319: 47          ld   b,a
531A: 1A          ld   a,(de)
531B: 82          add  a,d
531C: 00          nop
531D: 84          add  a,h
531E: 14          inc  d
531F: 82          add  a,d
5320: 00          nop
5321: 85          add  a,l
5322: 12          ld   (de),a
5323: 02          ld   (bc),a
5324: 8E          adc  a,(hl)
5325: 08          ex   af,af'
5326: 81          add  a,c
5327: 00          nop
5328: 86          add  a,(hl)
5329: 13          inc  de
532A: 81          add  a,c
532B: 00          nop
532C: 86          add  a,(hl)
532D: 13          inc  de
532E: 81          add  a,c
532F: 00          nop
5330: 86          add  a,(hl)
5331: 13          inc  de
5332: 81          add  a,c
5333: 00          nop
5334: 85          add  a,l
5335: 14          inc  d
5336: 81          add  a,c
5337: 00          nop
5338: 8A          adc  a,d
5339: 00          nop
533A: 83          add  a,e
533B: 02          ld   (bc),a
533C: 0F          rrca
533D: 08          ex   af,af'
533E: 82          add  a,d
533F: 12          ld   (de),a
5340: 81          add  a,c
5341: 00          nop
5342: 83          add  a,e
5343: 12          ld   (de),a
5344: 81          add  a,c
5345: 13          inc  de
5346: 81          add  a,c
5347: 00          nop
5348: 83          add  a,e
5349: 16 81       ld   d,$81
534B: 00          nop
534C: 83          add  a,e
534D: 15          dec  d
534E: 82          add  a,d
534F: 00          nop
5350: 83          add  a,e
5351: 15          dec  d
5352: 82          add  a,d
5353: 00          nop
5354: 83          add  a,e
5355: 15          dec  d
5356: 82          add  a,d
5357: 00          nop
5358: 83          add  a,e
5359: 14          inc  d
535A: 83          add  a,e
535B: 00          nop
535C: 82          add  a,d
535D: 02          ld   (bc),a
535E: ED          db   $ed
535F: 07          rlca
5360: 03          inc  bc
5361: 29          add  hl,hl
5362: 1A          ld   a,(de)
5363: 02          ld   (bc),a
5364: EB          ex   de,hl
5365: 07          rlca
5366: 81          add  a,c
5367: 00          nop
5368: 82          add  a,d
5369: 17          rla
536A: 81          add  a,c
536B: 00          nop
536C: 82          add  a,d
536D: 17          rla
536E: 81          add  a,c
536F: 00          nop
5370: 83          add  a,e
5371: 15          dec  d
5372: 82          add  a,d
5373: 00          nop
5374: 83          add  a,e
5375: 15          dec  d
5376: 82          add  a,d
5377: 00          nop
5378: 84          add  a,h
5379: 13          inc  de
537A: 83          add  a,e
537B: 00          nop
537C: 85          add  a,l
537D: 12          ld   (de),a
537E: 83          add  a,e
537F: 00          nop
5380: 82          add  a,d
5381: 06 CC       ld   b,$CC
5383: 07          rlca
5384: 82          add  a,d
5385: 00          nop
5386: 82          add  a,d
5387: 17          rla
5388: 81          add  a,c
5389: 00          nop
538A: 82          add  a,d
538B: 17          rla
538C: 81          add  a,c
538D: 00          nop
538E: 83          add  a,e
538F: 93          sub  e
5390: 1E 1A       ld   e,$1A
5392: 64          ld   h,h
5393: 18 26       jr   $53BB
5395: 1A          ld   a,(de)
5396: 03          inc  bc
5397: B8          cp   b
5398: 07          rlca
5399: 81          add  a,c
539A: 00          nop
539B: 83          add  a,e
539C: 04          inc  b
539D: 25          dec  h
539E: 1A          ld   a,(de)
539F: 83          add  a,e
53A0: 00          nop
53A1: 84          add  a,h
53A2: 02          ld   (bc),a
53A3: B5          or   l
53A4: 07          rlca
53A5: 84          add  a,h
53A6: 00          nop
53A7: 83          add  a,e
53A8: 12          ld   (de),a
53A9: 03          inc  bc
53AA: 21 1A 82    ld   hl,$821A
53AD: 00          nop
53AE: 83          add  a,e
53AF: 04          inc  b
53B0: B1          or   c
53B1: 07          rlca
53B2: 83          add  a,e
53B3: 00          nop
53B4: 83          add  a,e
53B5: 14          inc  d
53B6: 83          add  a,e
53B7: 00          nop
53B8: 83          add  a,e
53B9: 13          inc  de
53BA: 84          add  a,h
53BB: 00          nop
53BC: 84          add  a,h
53BD: 04          inc  b
53BE: 1D          dec  e
53BF: 1A          ld   a,(de)
53C0: 82          add  a,d
53C1: 00          nop
53C2: 85          add  a,l
53C3: 05          dec  b
53C4: A6          and  (hl)
53C5: 07          rlca
53C6: 00          nop
53C7: 86          add  a,(hl)
53C8: 14          inc  d
53C9: 00          nop
53CA: 86          add  a,(hl)
53CB: 14          inc  d
53CC: 00          nop
53CD: 86          add  a,(hl)
53CE: 14          inc  d
53CF: 00          nop
53D0: 8A          adc  a,d
53D1: 00          nop
53D2: 84          add  a,h
53D3: 02          ld   (bc),a
53D4: CB 08       rrc  b
53D6: 84          add  a,h
53D7: 00          nop
53D8: 84          add  a,h
53D9: 12          ld   (de),a
53DA: 81          add  a,c
53DB: 13          inc  de
53DC: 00          nop
53DD: 84          add  a,h
53DE: 16 00       ld   d,$00
53E0: 85          add  a,l
53E1: 13          inc  de
53E2: 82          add  a,d
53E3: 00          nop
53E4: 84          add  a,h
53E5: 14          inc  d
53E6: 82          add  a,d
53E7: 00          nop
53E8: 84          add  a,h
53E9: 16 00       ld   d,$00
53EB: 84          add  a,h
53EC: 16 00       ld   d,$00
53EE: 84          add  a,h
53EF: 13          inc  de
53F0: 81          add  a,c
53F1: 12          ld   (de),a
53F2: 00          nop
53F3: 84          add  a,h
53F4: 11 04 60    ld   de,$6004
53F7: 1A          ld   a,(de)
53F8: 81          add  a,c
53F9: 00          nop
53FA: 84          add  a,h
53FB: 15          dec  d
53FC: 81          add  a,c
53FD: 00          nop
53FE: 84          add  a,h
53FF: 15          dec  d
5400: 81          add  a,c
5401: 00          nop
5402: 84          add  a,h
5403: 12          ld   (de),a
5404: 91          sub  c
5405: 43          ld   b,e
5406: 19          add  hl,de
5407: 02          ld   (bc),a
5408: 50          ld   d,b
5409: 1A          ld   a,(de)
540A: 81          add  a,c
540B: 00          nop
540C: 85          add  a,l
540D: 13          inc  de
540E: 82          add  a,d
540F: 00          nop
5410: 85          add  a,l
5411: 03          inc  bc
5412: A5          and  l
5413: 08          ex   af,af'
5414: 82          add  a,d
5415: 00          nop
5416: 85          add  a,l
5417: 11 92 7A    ld   de,$7A92
541A: 05          dec  b
541B: A1          and  c
541C: 08          ex   af,af'
541D: 82          add  a,d
541E: 00          nop
541F: 84          add  a,h
5420: 94          sub  h
5421: 98          sbc  a,b
5422: 09          add  hl,bc
5423: 7A          ld   a,d
5424: 05          dec  b
5425: 7A          ld   a,d
5426: 05          dec  b
5427: 97          sub  a
5428: 09          add  hl,bc
5429: 82          add  a,d
542A: 00          nop
542B: 84          add  a,h
542C: 04          inc  b
542D: A0          and  b
542E: 08          ex   af,af'
542F: 82          add  a,d
5430: 00          nop
5431: 85          add  a,l
5432: 01 FC 08    ld   bc,$08FC
5435: 84          add  a,h
5436: 00          nop
5437: 85          add  a,l
5438: 12          ld   (de),a
5439: 83          add  a,e
543A: 00          nop
543B: 84          add  a,h
543C: 13          inc  de
543D: 83          add  a,e
543E: 00          nop
543F: 83          add  a,e
5440: 14          inc  d
5441: 83          add  a,e
5442: 00          nop
5443: 81          add  a,c
5444: 16 83       ld   d,$83
5446: 00          nop
5447: 81          add  a,c
5448: 17          rla
5449: 82          add  a,d
544A: 00          nop
544B: 82          add  a,d
544C: 18 00       jr   $544E
544E: 82          add  a,d
544F: 18 00       jr   $5451
5451: 83          add  a,e
5452: 04          inc  b
5453: 70          ld   (hl),b
5454: 1A          ld   a,(de)
5455: 02          ld   (bc),a
5456: D5          push de
5457: 08          ex   af,af'
5458: 81          add  a,c
5459: 00          nop
545A: 83          add  a,e
545B: 06 6C       ld   b,$6C
545D: 1A          ld   a,(de)
545E: 81          add  a,c
545F: 00          nop
5460: 82          add  a,d
5461: 02          ld   (bc),a
5462: D3 08       out  ($08),a
5464: 91          sub  c
5465: 64          ld   h,h
5466: 18 04       jr   $546C
5468: 66          ld   h,(hl)
5469: 1A          ld   a,(de)
546A: 81          add  a,c
546B: 00          nop
546C: 82          add  a,d
546D: 03          inc  bc
546E: D1          pop  de
546F: 08          ex   af,af'
5470: 02          ld   (bc),a
5471: 62          ld   h,d
5472: 1A          ld   a,(de)
5473: 83          add  a,e
5474: 00          nop
5475: 82          add  a,d
5476: 03          inc  bc
5477: CE 08       adc  a,$08
5479: 85          add  a,l
547A: 00          nop
547B: 8A          adc  a,d
547C: 00          nop
547D: 8A          adc  a,d
547E: 00          nop
547F: 8A          adc  a,d
5480: 00          nop
5481: 8A          adc  a,d
5482: 00          nop
5483: 8C          adc  a,h
5484: 00          nop
5485: 83          add  a,e
5486: 03          inc  bc
5487: 31 09 86    ld   sp,$8609
548A: 00          nop
548B: 83          add  a,e
548C: 13          inc  de
548D: 83          add  a,e
548E: 13          inc  de
548F: 00          nop
5490: 83          add  a,e
5491: 13          inc  de
5492: 02          ld   (bc),a
5493: 74          ld   (hl),h
5494: 1A          ld   a,(de)
5495: 04          inc  b
5496: 25          dec  h
5497: 09          add  hl,bc
5498: 00          nop
5499: 83          add  a,e
549A: 18 81       jr   $541D
549C: 00          nop
549D: 83          add  a,e
549E: 16 83       ld   d,$83
54A0: 00          nop
54A1: 12          ld   (de),a
54A2: 02          ld   (bc),a
54A3: 72          ld   (hl),d
54A4: 1A          ld   a,(de)
54A5: 05          dec  b
54A6: 11 09 83    ld   de,$8309
54A9: 00          nop
54AA: 81          add  a,c
54AB: 17          rla
54AC: 84          add  a,h
54AD: 00          nop
54AE: 82          add  a,d
54AF: 16 84       ld   d,$84
54B1: 00          nop
54B2: 82          add  a,d
54B3: 13          inc  de
54B4: 87          add  a,a
54B5: 00          nop
54B6: 8C          adc  a,h
54B7: 00          nop
54B8: 8C          adc  a,h
54B9: 00          nop
54BA: 8C          adc  a,h
54BB: 00          nop
54BC: 8C          adc  a,h
54BD: 00          nop
54BE: 8C          adc  a,h
54BF: 00          nop
54C0: 8C          adc  a,h
54C1: 00          nop
54C2: 8C          adc  a,h
54C3: 00          nop
54C4: 8C          adc  a,h
54C5: 00          nop
54C6: 84          add  a,h
54C7: 02          ld   (bc),a
54C8: 96          sub  (hl)
54C9: 09          add  hl,bc
54CA: 86          add  a,(hl)
54CB: 00          nop
54CC: 84          add  a,h
54CD: 13          inc  de
54CE: 91          sub  c
54CF: 89          adc  a,c
54D0: 1A          ld   a,(de)
54D1: 02          ld   (bc),a
54D2: 8B          adc  a,e
54D3: 1A          ld   a,(de)
54D4: 01 91 09    ld   bc,$0991
54D7: 81          add  a,c
54D8: 00          nop
54D9: 84          add  a,h
54DA: 17          rla
54DB: 81          add  a,c
54DC: 00          nop
54DD: 82          add  a,d
54DE: 02          ld   (bc),a
54DF: 89          adc  a,c
54E0: 1A          ld   a,(de)
54E1: 07          rlca
54E2: 89          adc  a,c
54E3: 09          add  hl,bc
54E4: 81          add  a,c
54E5: 00          nop
54E6: 82          add  a,d
54E7: 17          rla
54E8: 83          add  a,e
54E9: 00          nop
54EA: 82          add  a,d
54EB: 14          inc  d
54EC: 93          sub  e
54ED: C1          pop  bc
54EE: 04          inc  b
54EF: C1          pop  bc
54F0: 04          inc  b
54F1: 77          ld   (hl),a
54F2: 09          add  hl,bc
54F3: 83          add  a,e
54F4: 00          nop
54F5: 83          add  a,e
54F6: 02          ld   (bc),a
54F7: 87          add  a,a
54F8: 1A          ld   a,(de)
54F9: 04          inc  b
54FA: 76          halt
54FB: 09          add  hl,bc
54FC: 83          add  a,e
54FD: 00          nop
54FE: 83          add  a,e
54FF: 11 02 85    ld   de,$8502
5502: 1A          ld   a,(de)
5503: 02          ld   (bc),a
5504: 71          ld   (hl),c
5505: 09          add  hl,bc
5506: 84          add  a,h
5507: 00          nop
5508: 83          add  a,e
5509: 14          inc  d
550A: 85          add  a,l
550B: 00          nop
550C: 83          add  a,e
550D: 12          ld   (de),a
550E: 87          add  a,a
550F: 00          nop
5510: 82          add  a,d
5511: 03          inc  bc
5512: 69          ld   l,c
5513: 09          add  hl,bc
5514: 82          add  a,d
5515: 12          ld   (de),a
5516: 81          add  a,c
5517: 00          nop
5518: 83          add  a,e
5519: 11 82 13    ld   de,$1382
551C: 81          add  a,c
551D: 00          nop
551E: 82          add  a,d
551F: 12          ld   (de),a
5520: 81          add  a,c
5521: 14          inc  d
5522: 81          add  a,c
5523: 00          nop
5524: 81          add  a,c
5525: 17          rla
5526: 82          add  a,d
5527: 00          nop
5528: 81          add  a,c
5529: 17          rla
552A: 82          add  a,d
552B: 00          nop
552C: 81          add  a,c
552D: 17          rla
552E: 82          add  a,d
552F: 00          nop
5530: 82          add  a,d
5531: 16 82       ld   d,$82
5533: 00          nop
5534: 83          add  a,e
5535: 02          ld   (bc),a
5536: 83          add  a,e
5537: 1A          ld   a,(de)
5538: 02          ld   (bc),a
5539: 3F          ccf
553A: 09          add  hl,bc
553B: 83          add  a,e
553C: 00          nop
553D: 82          add  a,d
553E: 06 81       ld   b,$81
5540: 1A          ld   a,(de)
5541: 82          add  a,d
5542: 00          nop
5543: 82          add  a,d
5544: 15          dec  d
5545: 83          add  a,e
5546: 00          nop
5547: 81          add  a,c
5548: 03          inc  bc
5549: 3D          dec  a
554A: 09          add  hl,bc
554B: 02          ld   (bc),a
554C: 76          halt
554D: 1A          ld   a,(de)
554E: 84          add  a,h
554F: 00          nop
5550: 81          add  a,c
5551: 04          inc  b
5552: 3A 09 85    ld   a,($8509)
5555: 00          nop
5556: 81          add  a,c
5557: 13          inc  de
5558: 86          add  a,(hl)
5559: 00          nop
555A: 81          add  a,c
555B: 12          ld   (de),a
555C: 87          add  a,a
555D: 00          nop
555E: 83          add  a,e
555F: 03          inc  bc
5560: 04          inc  b
5561: 05          dec  b
5562: 91          sub  c
5563: 56          ld   d,(hl)
5564: 08          ex   af,af'
5565: 83          add  a,e
5566: 00          nop
5567: 83          add  a,e
5568: 02          ld   (bc),a
5569: A8          xor  b
556A: 19          add  hl,de
556B: 91          sub  c
556C: 5F          ld   e,a
556D: 08          ex   af,af'
556E: 02          ld   (bc),a
556F: 55          ld   d,l
5570: 08          ex   af,af'
5571: 82          add  a,d
5572: 00          nop
5573: 83          add  a,e
5574: 02          ld   (bc),a
5575: A6          and  (hl)
5576: 19          add  hl,de
5577: 91          sub  c
5578: 2D          dec  l
5579: 1A          ld   a,(de)
557A: 02          ld   (bc),a
557B: 53          ld   d,e
557C: 08          ex   af,af'
557D: 82          add  a,d
557E: 00          nop
557F: 83          add  a,e
5580: 03          inc  bc
5581: A4          and  h
5582: 19          add  hl,de
5583: 02          ld   (bc),a
5584: 51          ld   d,c
5585: 08          ex   af,af'
5586: 82          add  a,d
5587: 00          nop
5588: 84          add  a,h
5589: 02          ld   (bc),a
558A: A0          and  b
558B: 19          add  hl,de
558C: 02          ld   (bc),a
558D: 4F          ld   c,a
558E: 08          ex   af,af'
558F: 82          add  a,d
5590: 00          nop
5591: 83          add  a,e
5592: 03          inc  bc
5593: 08          ex   af,af'
5594: 05          dec  b
5595: 91          sub  c
5596: 49          ld   c,c
5597: 05          dec  b
5598: 83          add  a,e
5599: 00          nop
559A: F4 E5 06    call p,$06E5
559D: EB          ex   de,hl
559E: 56          ld   d,(hl)
559F: 0A          ld   a,(bc)
55A0: B4          or   h
55A1: 56          ld   d,(hl)
55A2: 00          nop
55A3: F4 E5 10    call p,$10E5
55A6: EB          ex   de,hl
55A7: 56          ld   d,(hl)
55A8: 00          nop
55A9: F4 E5 06    call p,$06E5
55AC: 42          ld   b,d
55AD: 57          ld   d,a
55AE: 01 39 57    ld   bc,$5739
55B1: 09          add  hl,bc
55B2: BD          cp   l
55B3: 56          ld   d,(hl)
55B4: 00          nop
55B5: F4 E5 07    call p,$07E5
55B8: 42          ld   b,d
55B9: 57          ld   d,a
55BA: 09          add  hl,bc
55BB: 09          add  hl,bc
55BC: 57          ld   d,a
55BD: 00          nop
55BE: F4 E5 06    call p,$06E5
55C1: EB          ex   de,hl
55C2: 56          ld   d,(hl)
55C3: 06 B4       ld   b,$B4
55C5: 56          ld   d,(hl)
55C6: 02          ld   (bc),a
55C7: 64          ld   h,h
55C8: 57          ld   d,a
55C9: 02          ld   (bc),a
55CA: DF          rst  $18
55CB: 56          ld   d,(hl)
55CC: 00          nop
55CD: F4 E5 07    call p,$07E5
55D0: EB          ex   de,hl
55D1: 56          ld   d,(hl)
55D2: 04          inc  b
55D3: 79          ld   a,c
55D4: 57          ld   d,a
55D5: 05          dec  b
55D6: CF          rst  $08
55D7: 56          ld   d,(hl)
55D8: 00          nop
55D9: F4 E5 07    call p,$07E5
55DC: 42          ld   b,d
55DD: 57          ld   d,a
55DE: 04          inc  b
55DF: 79          ld   a,c
55E0: 57          ld   d,a
55E1: 05          dec  b
55E2: CF          rst  $08
55E3: 56          ld   d,(hl)
55E4: 00          nop
55E5: F4 E5 10    call p,$10E5
55E8: 9B          sbc  a,e
55E9: 57          ld   d,a
55EA: 00          nop
55EB: F4 E5 07    call p,$07E5
55EE: 9B          sbc  a,e
55EF: 57          ld   d,a
55F0: 09          add  hl,bc
55F1: F4 57 00    call p,$0057
55F4: F4 E5 10    call p,$10E5
55F7: 1F          rra
55F8: 58          ld   e,b
55F9: 00          nop
55FA: F4 E5 10    call p,$10E5
55FD: 78          ld   a,b
55FE: 58          ld   e,b
55FF: 00          nop
5600: F4 E5 10    call p,$10E5
5603: CF          rst  $08
5604: 58          ld   e,b
5605: 00          nop
5606: F4 E5 07    call p,$07E5
5609: 42          ld   b,d
560A: 57          ld   d,a
560B: 09          add  hl,bc
560C: 36 59       ld   (hl),$59
560E: 00          nop
560F: F4 E5 07    call p,$07E5
5612: EB          ex   de,hl
5613: 56          ld   d,(hl)
5614: 09          add  hl,bc
5615: 36 59       ld   (hl),$59
5617: 00          nop
5618: F4 E5 06    call p,$06E5
561B: EB          ex   de,hl
561C: 56          ld   d,(hl)
561D: 0A          ld   a,(bc)
561E: 73          ld   (hl),e
561F: 59          ld   e,c
5620: 00          nop
5621: F4 E5 06    call p,$06E5
5624: 42          ld   b,d
5625: 57          ld   d,a
5626: 01 B3 59    ld   bc,$59B3
5629: 09          add  hl,bc
562A: 7E          ld   a,(hl)
562B: 59          ld   e,c
562C: 00          nop
562D: F4 E5 10    call p,$10E5
5630: BC          cp   h
5631: 59          ld   e,c
5632: 00          nop
5633: F4 E5 10    call p,$10E5
5636: 22 5A 00    ld   ($005A),hl
5639: F4 E5 0D    call p,$0DE5
563C: 79          ld   a,c
563D: 5A          ld   e,d
563E: 03          inc  bc
563F: 7B          ld   a,e
5640: 54          ld   d,h
5641: 00          nop
5642: F4 E5 10    call p,$10E5
5645: BB          cp   e
5646: 5A          ld   e,d
5647: 00          nop
5648: F4 E5 11    call p,$11E5
564B: 29          add  hl,hl
564C: 5B          ld   e,e
564D: 00          nop
564E: F4 E5 07    call p,$07E5
5651: 42          ld   b,d
5652: 57          ld   d,a
5653: 09          add  hl,bc
5654: 90          sub  b
5655: 5B          ld   e,e
5656: 00          nop
5657: F4 E5 07    call p,$07E5
565A: 9B          sbc  a,e
565B: 57          ld   d,a
565C: 01 C0 5B    ld   bc,$5BC0
565F: 08          ex   af,af'
5660: 99          sbc  a,c
5661: 5B          ld   e,e
5662: 00          nop
5663: F4 E5 10    call p,$10E5
5666: C9          ret
5667: 5B          ld   e,e
5668: 00          nop
5669: F4 E5 11    call p,$11E5
566C: 27          daa
566D: 5C          ld   e,h
566E: 00          nop
566F: F4 E5 07    call p,$07E5
5672: 77          ld   (hl),a
5673: 5A          ld   e,d
5674: 0A          ld   a,(bc)
5675: 52          ld   d,d
5676: 5C          ld   e,h
5677: 00          nop
5678: F4 E5 11    call p,$11E5
567B: 8A          adc  a,d
567C: 5C          ld   e,h
567D: 00          nop
567E: F4 E5 08    call p,$08E5
5681: C9          ret
5682: 5B          ld   e,e
5683: 09          add  hl,bc
5684: F3          di
5685: 5C          ld   e,h
5686: 00          nop
5687: F4 E5 11    call p,$11E5
568A: 30 5D       jr   nc,$56E9
568C: 00          nop
568D: F8          ret  m
568E: E5          push hl
568F: 10 8D       djnz $561E
5691: 5D          ld   e,l
5692: 00          nop
5693: 00          nop
5694: E6 10       and  $10
5696: E0          ret  po
5697: 5D          ld   e,l
5698: 00          nop
5699: 00          nop
569A: E6 0D       and  $0D
569C: 52          ld   d,d
569D: 5E          ld   e,(hl)
569E: 03          inc  bc
569F: 40          ld   b,b
56A0: 5E          ld   e,(hl)
56A1: 00          nop
56A2: F4 E5 0D    call p,$0DE5
56A5: B3          or   e
56A6: 5E          ld   e,(hl)
56A7: 03          inc  bc
56A8: 7B          ld   a,e
56A9: 54          ld   d,h
56AA: 00          nop
56AB: F4 E5 06    call p,$06E5
56AE: EB          ex   de,hl
56AF: 56          ld   d,(hl)
56B0: 0B          dec  bc
56B1: B4          or   h
56B2: 56          ld   d,(hl)
56B3: 00          nop
56B4: 83          add  a,e
56B5: 91          sub  c
56B6: C7          rst  $00
56B7: 09          add  hl,bc
56B8: 04          inc  b
56B9: 0C          inc  c
56BA: 0A          ld   a,(bc)
56BB: 82          add  a,d
56BC: 00          nop
56BD: 83          add  a,e
56BE: 05          dec  b
56BF: AC          xor  h
56C0: 0E 82       ld   c,$82
56C2: 00          nop
56C3: 83          add  a,e
56C4: 15          dec  d
56C5: 82          add  a,d
56C6: 00          nop
56C7: 83          add  a,e
56C8: 15          dec  d
56C9: 82          add  a,d
56CA: 00          nop
56CB: 83          add  a,e
56CC: 15          dec  d
56CD: 82          add  a,d
56CE: 00          nop
56CF: 83          add  a,e
56D0: 05          dec  b
56D1: 18 1B       jr   $56EE
56D3: 82          add  a,d
56D4: 00          nop
56D5: 84          add  a,h
56D6: 03          inc  bc
56D7: 98          sbc  a,b
56D8: 0E 83       ld   c,$83
56DA: 00          nop
56DB: 84          add  a,h
56DC: 14          inc  d
56DD: 82          add  a,d
56DE: 00          nop
56DF: 84          add  a,h
56E0: 04          inc  b
56E1: 91          sub  c
56E2: 0E 82       ld   c,$82
56E4: 00          nop
56E5: 84          add  a,h
56E6: 14          inc  d
56E7: 82          add  a,d
56E8: 00          nop
56E9: 8A          adc  a,d
56EA: 00          nop
56EB: 83          add  a,e
56EC: 02          ld   (bc),a
56ED: E1          pop  hl
56EE: 09          add  hl,bc
56EF: 85          add  a,l
56F0: 00          nop
56F1: 83          add  a,e
56F2: 15          dec  d
56F3: 82          add  a,d
56F4: 00          nop
56F5: 83          add  a,e
56F6: 15          dec  d
56F7: 82          add  a,d
56F8: 00          nop
56F9: 84          add  a,h
56FA: 14          inc  d
56FB: 82          add  a,d
56FC: 00          nop
56FD: 83          add  a,e
56FE: 15          dec  d
56FF: 82          add  a,d
5700: 00          nop
5701: 83          add  a,e
5702: 15          dec  d
5703: 82          add  a,d
5704: 00          nop
5705: 83          add  a,e
5706: 15          dec  d
5707: 82          add  a,d
5708: 00          nop
5709: 83          add  a,e
570A: 04          inc  b
570B: C2 09 83    jp   nz,$8309
570E: 00          nop
570F: 83          add  a,e
5710: 06 A1       ld   b,$A1
5712: 1A          ld   a,(de)
5713: 81          add  a,c
5714: 00          nop
5715: 83          add  a,e
5716: 02          ld   (bc),a
5717: BE          cp   (hl)
5718: 09          add  hl,bc
5719: 02          ld   (bc),a
571A: F6 1A       or   $1A
571C: 02          ld   (bc),a
571D: BC          cp   h
571E: 09          add  hl,bc
571F: 81          add  a,c
5720: 00          nop
5721: 83          add  a,e
5722: 16 81       ld   d,$81
5724: 00          nop
5725: 83          add  a,e
5726: 16 81       ld   d,$81
5728: 00          nop
5729: 84          add  a,h
572A: 15          dec  d
572B: 81          add  a,c
572C: 00          nop
572D: 84          add  a,h
572E: 14          inc  d
572F: 82          add  a,d
5730: 00          nop
5731: 84          add  a,h
5732: 14          inc  d
5733: 82          add  a,d
5734: 00          nop
5735: 85          add  a,l
5736: 13          inc  de
5737: 82          add  a,d
5738: 00          nop
5739: 83          add  a,e
573A: 03          inc  bc
573B: E6 09       and  $09
573D: 02          ld   (bc),a
573E: A0          and  b
573F: 0A          ld   a,(bc)
5740: 82          add  a,d
5741: 00          nop
5742: 84          add  a,h
5743: 03          inc  bc
5744: F9          ld   sp,hl
5745: 09          add  hl,bc
5746: 83          add  a,e
5747: 00          nop
5748: 84          add  a,h
5749: 13          inc  de
574A: 83          add  a,e
574B: 00          nop
574C: 84          add  a,h
574D: 13          inc  de
574E: 83          add  a,e
574F: 00          nop
5750: 84          add  a,h
5751: 04          inc  b
5752: FA 1A 82    jp   m,$821A
5755: 00          nop
5756: 83          add  a,e
5757: 05          dec  b
5758: F0          ret  p
5759: 09          add  hl,bc
575A: 82          add  a,d
575B: 00          nop
575C: 83          add  a,e
575D: 15          dec  d
575E: 82          add  a,d
575F: 00          nop
5760: 83          add  a,e
5761: 14          inc  d
5762: 83          add  a,e
5763: 00          nop
5764: 84          add  a,h
5765: 91          sub  c
5766: 98          sbc  a,b
5767: 0E 02       ld   c,$02
5769: 9E          sbc  a,(hl)
576A: 0A          ld   a,(bc)
576B: 83          add  a,e
576C: 00          nop
576D: 84          add  a,h
576E: 91          sub  c
576F: 95          sub  l
5770: 0E 02       ld   c,$02
5772: 9C          sbc  a,h
5773: 0A          ld   a,(bc)
5774: 91          sub  c
5775: 92          sub  d
5776: 0E 82       ld   c,$82
5778: 00          nop
5779: 83          add  a,e
577A: 04          inc  b
577B: 07          rlca
577C: 0A          ld   a,(bc)
577D: 02          ld   (bc),a
577E: A9          xor  c
577F: 1A          ld   a,(de)
5780: 81          add  a,c
5781: 00          nop
5782: 82          add  a,d
5783: 12          ld   (de),a
5784: 05          dec  b
5785: 03          inc  bc
5786: 0A          ld   a,(bc)
5787: 81          add  a,c
5788: 00          nop
5789: 82          add  a,d
578A: 04          inc  b
578B: A5          and  l
578C: 1A          ld   a,(de)
578D: 03          inc  bc
578E: FE 09       cp   $09
5790: 81          add  a,c
5791: 00          nop
5792: 83          add  a,e
5793: 03          inc  bc
5794: 1B          dec  de
5795: 1B          dec  de
5796: 02          ld   (bc),a
5797: FB          ei
5798: 09          add  hl,bc
5799: 82          add  a,d
579A: 00          nop
579B: 83          add  a,e
579C: 02          ld   (bc),a
579D: 48          ld   c,b
579E: 0A          ld   a,(bc)
579F: 81          add  a,c
57A0: 12          ld   (de),a
57A1: 82          add  a,d
57A2: 00          nop
57A3: 82          add  a,d
57A4: 13          inc  de
57A5: 81          add  a,c
57A6: 12          ld   (de),a
57A7: 82          add  a,d
57A8: 00          nop
57A9: 82          add  a,d
57AA: 16 82       ld   d,$82
57AC: 00          nop
57AD: 83          add  a,e
57AE: 11 02 B3    ld   de,$B302
57B1: 1A          ld   a,(de)
57B2: 01 38 0A    ld   bc,$0A38
57B5: 83          add  a,e
57B6: 00          nop
57B7: 83          add  a,e
57B8: 14          inc  d
57B9: 83          add  a,e
57BA: 00          nop
57BB: 83          add  a,e
57BC: 15          dec  d
57BD: 82          add  a,d
57BE: 00          nop
57BF: 83          add  a,e
57C0: 15          dec  d
57C1: 82          add  a,d
57C2: 00          nop
57C3: 83          add  a,e
57C4: 15          dec  d
57C5: 82          add  a,d
57C6: 00          nop
57C7: 83          add  a,e
57C8: 15          dec  d
57C9: 82          add  a,d
57CA: 00          nop
57CB: 83          add  a,e
57CC: 15          dec  d
57CD: 82          add  a,d
57CE: 00          nop
57CF: 83          add  a,e
57D0: 02          ld   (bc),a
57D1: B1          or   c
57D2: 1A          ld   a,(de)
57D3: 03          inc  bc
57D4: 1A          ld   a,(de)
57D5: 0A          ld   a,(bc)
57D6: 82          add  a,d
57D7: 00          nop
57D8: 83          add  a,e
57D9: 02          ld   (bc),a
57DA: AF          xor  a
57DB: 1A          ld   a,(de)
57DC: 03          inc  bc
57DD: 17          rla
57DE: 0A          ld   a,(bc)
57DF: 82          add  a,d
57E0: 00          nop
57E1: 83          add  a,e
57E2: 02          ld   (bc),a
57E3: AD          xor  l
57E4: 1A          ld   a,(de)
57E5: 03          inc  bc
57E6: 14          inc  d
57E7: 0A          ld   a,(bc)
57E8: 82          add  a,d
57E9: 00          nop
57EA: 85          add  a,l
57EB: 13          inc  de
57EC: 82          add  a,d
57ED: 00          nop
57EE: 85          add  a,l
57EF: 12          ld   (de),a
57F0: 83          add  a,e
57F1: 00          nop
57F2: 8A          adc  a,d
57F3: 00          nop
57F4: 83          add  a,e
57F5: 04          inc  b
57F6: 65          ld   h,l
57F7: 0A          ld   a,(bc)
57F8: 83          add  a,e
57F9: 00          nop
57FA: 83          add  a,e
57FB: 04          inc  b
57FC: C1          pop  bc
57FD: 1A          ld   a,(de)
57FE: 83          add  a,e
57FF: 00          nop
5800: 83          add  a,e
5801: 16 81       ld   d,$81
5803: 00          nop
5804: 82          add  a,d
5805: 14          inc  d
5806: 03          inc  bc
5807: 61          ld   h,c
5808: 0A          ld   a,(bc)
5809: 81          add  a,c
580A: 00          nop
580B: 82          add  a,d
580C: 16 82       ld   d,$82
580E: 00          nop
580F: 83          add  a,e
5810: 15          dec  d
5811: 82          add  a,d
5812: 00          nop
5813: 84          add  a,h
5814: 14          inc  d
5815: 82          add  a,d
5816: 00          nop
5817: 84          add  a,h
5818: 14          inc  d
5819: 82          add  a,d
581A: 00          nop
581B: 85          add  a,l
581C: 13          inc  de
581D: 82          add  a,d
581E: 00          nop
581F: 82          add  a,d
5820: 02          ld   (bc),a
5821: 58          ld   e,b
5822: 0C          inc  c
5823: 81          add  a,c
5824: 11 84 00    ld   de,$0084
5827: 82          add  a,d
5828: 14          inc  d
5829: 84          add  a,h
582A: 00          nop
582B: 82          add  a,d
582C: 15          dec  d
582D: 83          add  a,e
582E: 00          nop
582F: 83          add  a,e
5830: 14          inc  d
5831: 83          add  a,e
5832: 00          nop
5833: 82          add  a,d
5834: 15          dec  d
5835: 83          add  a,e
5836: 00          nop
5837: 82          add  a,d
5838: 16 82       ld   d,$82
583A: 00          nop
583B: 82          add  a,d
583C: 16 82       ld   d,$82
583E: 00          nop
583F: 82          add  a,d
5840: 16 82       ld   d,$82
5842: 00          nop
5843: 82          add  a,d
5844: 02          ld   (bc),a
5845: 42          ld   b,d
5846: 1B          dec  de
5847: 02          ld   (bc),a
5848: 31 0C 92    ld   sp,$920C
584B: 14          inc  d
584C: 00          nop
584D: 2F          cpl
584E: 0C          inc  c
584F: 82          add  a,d
5850: 00          nop
5851: 82          add  a,d
5852: 03          inc  bc
5853: 40          ld   b,b
5854: 1B          dec  de
5855: 03          inc  bc
5856: 2E 0C       ld   l,$0C
5858: 82          add  a,d
5859: 00          nop
585A: 82          add  a,d
585B: 03          inc  bc
585C: 3D          dec  a
585D: 1B          dec  de
585E: 03          inc  bc
585F: 2B          dec  hl
5860: 0C          inc  c
5861: 82          add  a,d
5862: 00          nop
5863: 82          add  a,d
5864: 03          inc  bc
5865: 3A 1B 03    ld   a,($031B)
5868: 28 0C       jr   z,$5876
586A: 82          add  a,d
586B: 00          nop
586C: 84          add  a,h
586D: 14          inc  d
586E: 82          add  a,d
586F: 00          nop
5870: 85          add  a,l
5871: 13          inc  de
5872: 82          add  a,d
5873: 00          nop
5874: 8A          adc  a,d
5875: 00          nop
5876: 8A          adc  a,d
5877: 00          nop
5878: 83          add  a,e
5879: 02          ld   (bc),a
587A: 92          sub  d
587B: 0C          inc  c
587C: 85          add  a,l
587D: 00          nop
587E: 83          add  a,e
587F: 12          ld   (de),a
5880: 81          add  a,c
5881: 12          ld   (de),a
5882: 82          add  a,d
5883: 00          nop
5884: 83          add  a,e
5885: 15          dec  d
5886: 82          add  a,d
5887: 00          nop
5888: 83          add  a,e
5889: 15          dec  d
588A: 82          add  a,d
588B: 00          nop
588C: 83          add  a,e
588D: 15          dec  d
588E: 82          add  a,d
588F: 00          nop
5890: 82          add  a,d
5891: 16 82       ld   d,$82
5893: 00          nop
5894: 83          add  a,e
5895: 12          ld   (de),a
5896: 91          sub  c
5897: 14          inc  d
5898: 00          nop
5899: 02          ld   (bc),a
589A: 75          ld   (hl),l
589B: 0C          inc  c
589C: 82          add  a,d
589D: 00          nop
589E: 83          add  a,e
589F: 15          dec  d
58A0: 82          add  a,d
58A1: 00          nop
58A2: 84          add  a,h
58A3: 12          ld   (de),a
58A4: 03          inc  bc
58A5: 4C          ld   c,h
58A6: 1B          dec  de
58A7: 81          add  a,c
58A8: 00          nop
58A9: 83          add  a,e
58AA: 02          ld   (bc),a
58AB: 6C          ld   l,h
58AC: 0C          inc  c
58AD: 04          inc  b
58AE: 49          ld   c,c
58AF: 1B          dec  de
58B0: 81          add  a,c
58B1: 00          nop
58B2: 83          add  a,e
58B3: 02          ld   (bc),a
58B4: 6A          ld   l,d
58B5: 0C          inc  c
58B6: 03          inc  bc
58B7: 45          ld   b,l
58B8: 1B          dec  de
58B9: 82          add  a,d
58BA: 00          nop
58BB: 83          add  a,e
58BC: 05          dec  b
58BD: 68          ld   l,b
58BE: 0C          inc  c
58BF: 82          add  a,d
58C0: 00          nop
58C1: 84          add  a,h
58C2: 14          inc  d
58C3: 82          add  a,d
58C4: 00          nop
58C5: 84          add  a,h
58C6: 14          inc  d
58C7: 82          add  a,d
58C8: 00          nop
58C9: 84          add  a,h
58CA: 13          inc  de
58CB: 83          add  a,e
58CC: 00          nop
58CD: 8A          adc  a,d
58CE: 00          nop
58CF: 84          add  a,h
58D0: 02          ld   (bc),a
58D1: C7          rst  $00
58D2: 0C          inc  c
58D3: 84          add  a,h
58D4: 00          nop
58D5: 84          add  a,h
58D6: 12          ld   (de),a
58D7: 81          add  a,c
58D8: 12          ld   (de),a
58D9: 81          add  a,c
58DA: 00          nop
58DB: 83          add  a,e
58DC: 16 81       ld   d,$81
58DE: 00          nop
58DF: 83          add  a,e
58E0: 15          dec  d
58E1: 82          add  a,d
58E2: 00          nop
58E3: 83          add  a,e
58E4: 13          inc  de
58E5: 92          sub  d
58E6: 7A          ld   a,d
58E7: 05          dec  b
58E8: B3          or   e
58E9: 0C          inc  c
58EA: 82          add  a,d
58EB: 00          nop
58EC: 83          add  a,e
58ED: 05          dec  b
58EE: B2          or   d
58EF: 0C          inc  c
58F0: 82          add  a,d
58F1: 00          nop
58F2: 84          add  a,h
58F3: 14          inc  d
58F4: 82          add  a,d
58F5: 00          nop
58F6: 83          add  a,e
58F7: 02          ld   (bc),a
58F8: 5E          ld   e,(hl)
58F9: 1B          dec  de
58FA: 91          sub  c
58FB: A9          xor  c
58FC: 0C          inc  c
58FD: 02          ld   (bc),a
58FE: 5C          ld   e,h
58FF: 1B          dec  de
5900: 82          add  a,d
5901: 00          nop
5902: 82          add  a,d
5903: 02          ld   (bc),a
5904: A8          xor  b
5905: 0C          inc  c
5906: 05          dec  b
5907: 5A          ld   e,d
5908: 1B          dec  de
5909: 81          add  a,c
590A: 00          nop
590B: 81          add  a,c
590C: 03          inc  bc
590D: A6          and  (hl)
590E: 0C          inc  c
590F: 05          dec  b
5910: 55          ld   d,l
5911: 1B          dec  de
5912: 81          add  a,c
5913: 00          nop
5914: 81          add  a,c
5915: 92          sub  d
5916: 14          inc  d
5917: 00          nop
5918: A3          and  e
5919: 0C          inc  c
591A: 82          add  a,d
591B: 04          inc  b
591C: 50          ld   d,b
591D: 1B          dec  de
591E: 81          add  a,c
591F: 00          nop
5920: 81          add  a,c
5921: 02          ld   (bc),a
5922: A2          and  d
5923: 0C          inc  c
5924: 81          add  a,c
5925: 14          inc  d
5926: 82          add  a,d
5927: 00          nop
5928: 84          add  a,h
5929: 14          inc  d
592A: 82          add  a,d
592B: 00          nop
592C: 84          add  a,h
592D: 14          inc  d
592E: 82          add  a,d
592F: 00          nop
5930: 85          add  a,l
5931: 12          ld   (de),a
5932: 83          add  a,e
5933: 00          nop
5934: 8A          adc  a,d
5935: 00          nop
5936: 83          add  a,e
5937: 04          inc  b
5938: 7F          ld   a,a
5939: 0B          dec  bc
593A: 83          add  a,e
593B: 00          nop
593C: 83          add  a,e
593D: 16 81       ld   d,$81
593F: 00          nop
5940: 83          add  a,e
5941: 12          ld   (de),a
5942: 92          sub  d
5943: 14          inc  d
5944: 00          nop
5945: C1          pop  bc
5946: 04          inc  b
5947: 02          ld   (bc),a
5948: 73          ld   (hl),e
5949: 0B          dec  bc
594A: 81          add  a,c
594B: 00          nop
594C: 83          add  a,e
594D: 14          inc  d
594E: 92          sub  d
594F: 14          inc  d
5950: 00          nop
5951: 6D          ld   l,l
5952: 0B          dec  bc
5953: 81          add  a,c
5954: 00          nop
5955: 83          add  a,e
5956: 03          inc  bc
5957: F2 1A 03    jp   p,$031A
595A: 6C          ld   l,h
595B: 0B          dec  bc
595C: 81          add  a,c
595D: 00          nop
595E: 83          add  a,e
595F: 02          ld   (bc),a
5960: EF          rst  $28
5961: 1A          ld   a,(de)
5962: 03          inc  bc
5963: 69          ld   l,c
5964: 0B          dec  bc
5965: 82          add  a,d
5966: 00          nop
5967: 85          add  a,l
5968: 14          inc  d
5969: 81          add  a,c
596A: 00          nop
596B: 85          add  a,l
596C: 14          inc  d
596D: 81          add  a,c
596E: 00          nop
596F: 86          add  a,(hl)
5970: 12          ld   (de),a
5971: 82          add  a,d
5972: 00          nop
5973: 83          add  a,e
5974: 03          inc  bc
5975: C7          rst  $00
5976: 09          add  hl,bc
5977: 92          sub  d
5978: 08          ex   af,af'
5979: 0A          ld   a,(bc)
597A: C3 09 82    jp   $8209
597D: 00          nop
597E: 82          add  a,d
597F: 05          dec  b
5980: A3          and  e
5981: 0B          dec  bc
5982: 83          add  a,e
5983: 00          nop
5984: 82          add  a,d
5985: 05          dec  b
5986: 13          inc  de
5987: 1B          dec  de
5988: 83          add  a,e
5989: 00          nop
598A: 82          add  a,d
598B: 03          inc  bc
598C: 9E          sbc  a,(hl)
598D: 0B          dec  bc
598E: 02          ld   (bc),a
598F: F4 1A 02    call p,$021A
5992: 9B          sbc  a,e
5993: 0B          dec  bc
5994: 81          add  a,c
5995: 00          nop
5996: 82          add  a,d
5997: 17          rla
5998: 81          add  a,c
5999: 00          nop
599A: 82          add  a,d
599B: 17          rla
599C: 81          add  a,c
599D: 00          nop
599E: 83          add  a,e
599F: 02          ld   (bc),a
59A0: AB          xor  e
59A1: 1A          ld   a,(de)
59A2: 02          ld   (bc),a
59A3: 8B          adc  a,e
59A4: 0B          dec  bc
59A5: 83          add  a,e
59A6: 00          nop
59A7: 84          add  a,h
59A8: 14          inc  d
59A9: 82          add  a,d
59AA: 00          nop
59AB: 84          add  a,h
59AC: 14          inc  d
59AD: 82          add  a,d
59AE: 00          nop
59AF: 85          add  a,l
59B0: 12          ld   (de),a
59B1: 83          add  a,e
59B2: 00          nop
59B3: 83          add  a,e
59B4: 03          inc  bc
59B5: E6 09       and  $09
59B7: 91          sub  c
59B8: E2 09 83    jp   po,$8309
59BB: 00          nop
59BC: 83          add  a,e
59BD: 02          ld   (bc),a
59BE: DF          rst  $18
59BF: 0B          dec  bc
59C0: 85          add  a,l
59C1: 00          nop
59C2: 83          add  a,e
59C3: 14          inc  d
59C4: 83          add  a,e
59C5: 00          nop
59C6: 83          add  a,e
59C7: 14          inc  d
59C8: 83          add  a,e
59C9: 00          nop
59CA: 83          add  a,e
59CB: 14          inc  d
59CC: 83          add  a,e
59CD: 00          nop
59CE: 83          add  a,e
59CF: 02          ld   (bc),a
59D0: 26 1B       ld   h,$1B
59D2: 03          inc  bc
59D3: D1          pop  de
59D4: 0B          dec  bc
59D5: 82          add  a,d
59D6: 00          nop
59D7: 83          add  a,e
59D8: 15          dec  d
59D9: 82          add  a,d
59DA: 00          nop
59DB: 83          add  a,e
59DC: 15          dec  d
59DD: 82          add  a,d
59DE: 00          nop
59DF: 84          add  a,h
59E0: 14          inc  d
59E1: 82          add  a,d
59E2: 00          nop
59E3: 84          add  a,h
59E4: 12          ld   (de),a
59E5: 02          ld   (bc),a
59E6: 24          inc  h
59E7: 1B          dec  de
59E8: 82          add  a,d
59E9: 00          nop
59EA: 83          add  a,e
59EB: 02          ld   (bc),a
59EC: BE          cp   (hl)
59ED: 0B          dec  bc
59EE: 91          sub  c
59EF: 14          inc  d
59F0: 00          nop
59F1: 02          ld   (bc),a
59F2: BC          cp   h
59F3: 0B          dec  bc
59F4: 82          add  a,d
59F5: 00          nop
59F6: 83          add  a,e
59F7: 12          ld   (de),a
59F8: 92          sub  d
59F9: 14          inc  d
59FA: 00          nop
59FB: B8          cp   b
59FC: 0B          dec  bc
59FD: 02          ld   (bc),a
59FE: 22 1B 81    ld   ($811B),hl
5A01: 00          nop
5A02: 83          add  a,e
5A03: 04          inc  b
5A04: B7          or   a
5A05: 0B          dec  bc
5A06: 02          ld   (bc),a
5A07: 20 1B       jr   nz,$5A24
5A09: 81          add  a,c
5A0A: 00          nop
5A0B: 83          add  a,e
5A0C: 02          ld   (bc),a
5A0D: B3          or   e
5A0E: 0B          dec  bc
5A0F: 03          inc  bc
5A10: 1E 1B       ld   e,$1B
5A12: 82          add  a,d
5A13: 00          nop
5A14: 83          add  a,e
5A15: 04          inc  b
5A16: B1          or   c
5A17: 0B          dec  bc
5A18: 83          add  a,e
5A19: 00          nop
5A1A: 83          add  a,e
5A1B: 13          inc  de
5A1C: 84          add  a,h
5A1D: 00          nop
5A1E: 83          add  a,e
5A1F: 13          inc  de
5A20: 84          add  a,h
5A21: 00          nop
5A22: 85          add  a,l
5A23: 02          ld   (bc),a
5A24: 1E 0C       ld   e,$0C
5A26: 83          add  a,e
5A27: 00          nop
5A28: 85          add  a,l
5A29: 12          ld   (de),a
5A2A: 81          add  a,c
5A2B: 11 81 00    ld   de,$0081
5A2E: 84          add  a,h
5A2F: 15          dec  d
5A30: 81          add  a,c
5A31: 00          nop
5A32: 84          add  a,h
5A33: 15          dec  d
5A34: 81          add  a,c
5A35: 00          nop
5A36: 83          add  a,e
5A37: 15          dec  d
5A38: 82          add  a,d
5A39: 00          nop
5A3A: 83          add  a,e
5A3B: 15          dec  d
5A3C: 82          add  a,d
5A3D: 00          nop
5A3E: 82          add  a,d
5A3F: 16 82       ld   d,$82
5A41: 00          nop
5A42: 82          add  a,d
5A43: 15          dec  d
5A44: 83          add  a,e
5A45: 00          nop
5A46: 82          add  a,d
5A47: 12          ld   (de),a
5A48: 03          inc  bc
5A49: 36 1B       ld   (hl),$1B
5A4B: 83          add  a,e
5A4C: 00          nop
5A4D: 81          add  a,c
5A4E: 91          sub  c
5A4F: F8          ret  m
5A50: 0B          dec  bc
5A51: 05          dec  b
5A52: 33          inc  sp
5A53: 1B          dec  de
5A54: 83          add  a,e
5A55: 00          nop
5A56: 03          inc  bc
5A57: F7          rst  $30
5A58: 0B          dec  bc
5A59: 04          inc  b
5A5A: 2E 1B       ld   l,$1B
5A5C: 83          add  a,e
5A5D: 00          nop
5A5E: 03          inc  bc
5A5F: F4 0B 04    call p,$040B
5A62: 2A 1B 83    ld   hl,($831B)
5A65: 00          nop
5A66: 06 F1       ld   b,$F1
5A68: 0B          dec  bc
5A69: 84          add  a,h
5A6A: 00          nop
5A6B: 83          add  a,e
5A6C: 14          inc  d
5A6D: 83          add  a,e
5A6E: 00          nop
5A6F: 83          add  a,e
5A70: 14          inc  d
5A71: 83          add  a,e
5A72: 00          nop
5A73: 83          add  a,e
5A74: 14          inc  d
5A75: 83          add  a,e
5A76: 00          nop
5A77: 8A          adc  a,d
5A78: 00          nop
5A79: 83          add  a,e
5A7A: 02          ld   (bc),a
5A7B: 00          nop
5A7C: 0D          dec  c
5A7D: 85          add  a,l
5A7E: 00          nop
5A7F: 83          add  a,e
5A80: 12          ld   (de),a
5A81: 81          add  a,c
5A82: 12          ld   (de),a
5A83: 82          add  a,d
5A84: 00          nop
5A85: 83          add  a,e
5A86: 15          dec  d
5A87: 82          add  a,d
5A88: 00          nop
5A89: 83          add  a,e
5A8A: 14          inc  d
5A8B: 02          ld   (bc),a
5A8C: 62          ld   h,d
5A8D: 1B          dec  de
5A8E: 81          add  a,c
5A8F: 00          nop
5A90: 83          add  a,e
5A91: 05          dec  b
5A92: F1          pop  af
5A93: 0C          inc  c
5A94: 82          add  a,d
5A95: 00          nop
5A96: 83          add  a,e
5A97: 15          dec  d
5A98: 82          add  a,d
5A99: 00          nop
5A9A: 83          add  a,e
5A9B: 15          dec  d
5A9C: 82          add  a,d
5A9D: 00          nop
5A9E: 83          add  a,e
5A9F: 16 81       ld   d,$81
5AA1: 00          nop
5AA2: 83          add  a,e
5AA3: 16 81       ld   d,$81
5AA5: 00          nop
5AA6: 82          add  a,d
5AA7: 02          ld   (bc),a
5AA8: 60          ld   h,b
5AA9: 1B          dec  de
5AAA: 04          inc  b
5AAB: D6 0C       sub  $0C
5AAD: 82          add  a,d
5AAE: 00          nop
5AAF: 83          add  a,e
5AB0: 15          dec  d
5AB1: 82          add  a,d
5AB2: 00          nop
5AB3: 84          add  a,h
5AB4: 14          inc  d
5AB5: 82          add  a,d
5AB6: 00          nop
5AB7: 85          add  a,l
5AB8: 12          ld   (de),a
5AB9: 83          add  a,e
5ABA: 00          nop
5ABB: 82          add  a,d
5ABC: 02          ld   (bc),a
5ABD: 3A 0D 82    ld   a,($820D)
5AC0: 11 83 00    ld   de,$0083
5AC3: 82          add  a,d
5AC4: 12          ld   (de),a
5AC5: 82          add  a,d
5AC6: 12          ld   (de),a
5AC7: 82          add  a,d
5AC8: 00          nop
5AC9: 82          add  a,d
5ACA: 16 82       ld   d,$82
5ACC: 00          nop
5ACD: 83          add  a,e
5ACE: 11 02 6E    ld   de,$6E02
5AD1: 1B          dec  de
5AD2: 01 2C 0D    ld   bc,$0D2C
5AD5: 83          add  a,e
5AD6: 00          nop
5AD7: 83          add  a,e
5AD8: 15          dec  d
5AD9: 82          add  a,d
5ADA: 00          nop
5ADB: 83          add  a,e
5ADC: 15          dec  d
5ADD: 82          add  a,d
5ADE: 00          nop
5ADF: 83          add  a,e
5AE0: 15          dec  d
5AE1: 82          add  a,d
5AE2: 00          nop
5AE3: 83          add  a,e
5AE4: 13          inc  de
5AE5: 02          ld   (bc),a
5AE6: 6C          ld   l,h
5AE7: 1B          dec  de
5AE8: 82          add  a,d
5AE9: 00          nop
5AEA: 83          add  a,e
5AEB: 02          ld   (bc),a
5AEC: 19          add  hl,de
5AED: 0D          dec  c
5AEE: 04          inc  b
5AEF: 6A          ld   l,d
5AF0: 1B          dec  de
5AF1: 81          add  a,c
5AF2: 00          nop
5AF3: 83          add  a,e
5AF4: 04          inc  b
5AF5: 17          rla
5AF6: 0D          dec  c
5AF7: 02          ld   (bc),a
5AF8: 66          ld   h,(hl)
5AF9: 1B          dec  de
5AFA: 81          add  a,c
5AFB: 00          nop
5AFC: 83          add  a,e
5AFD: 04          inc  b
5AFE: 13          inc  de
5AFF: 0D          dec  c
5B00: 02          ld   (bc),a
5B01: 64          ld   h,h
5B02: 1B          dec  de
5B03: 81          add  a,c
5B04: 00          nop
5B05: 84          add  a,h
5B06: 04          inc  b
5B07: 0F          rrca
5B08: 0D          dec  c
5B09: 82          add  a,d
5B0A: 00          nop
5B0B: 84          add  a,h
5B0C: 92          sub  d
5B0D: 0A          ld   a,(bc)
5B0E: 0D          dec  c
5B0F: 14          inc  d
5B10: 00          nop
5B11: 03          inc  bc
5B12: 09          add  hl,bc
5B13: 0D          dec  c
5B14: 81          add  a,c
5B15: 00          nop
5B16: 86          add  a,(hl)
5B17: 13          inc  de
5B18: 81          add  a,c
5B19: 00          nop
5B1A: 86          add  a,(hl)
5B1B: 11 92 7A    ld   de,$7A92
5B1E: 05          dec  b
5B1F: 02          ld   (bc),a
5B20: 0D          dec  c
5B21: 81          add  a,c
5B22: 00          nop
5B23: 87          add  a,a
5B24: 91          sub  c
5B25: 01 0D 82    ld   bc,$820D
5B28: 00          nop
5B29: 82          add  a,d
5B2A: 03          inc  bc
5B2B: 78          ld   a,b
5B2C: 0D          dec  c
5B2D: 81          add  a,c
5B2E: 12          ld   (de),a
5B2F: 82          add  a,d
5B30: 00          nop
5B31: 82          add  a,d
5B32: 12          ld   (de),a
5B33: 82          add  a,d
5B34: 12          ld   (de),a
5B35: 82          add  a,d
5B36: 00          nop
5B37: 82          add  a,d
5B38: 16 82       ld   d,$82
5B3A: 00          nop
5B3B: 82          add  a,d
5B3C: 14          inc  d
5B3D: 84          add  a,h
5B3E: 00          nop
5B3F: 82          add  a,d
5B40: 15          dec  d
5B41: 83          add  a,e
5B42: 00          nop
5B43: 83          add  a,e
5B44: 14          inc  d
5B45: 83          add  a,e
5B46: 00          nop
5B47: 83          add  a,e
5B48: 14          inc  d
5B49: 83          add  a,e
5B4A: 00          nop
5B4B: 84          add  a,h
5B4C: 13          inc  de
5B4D: 83          add  a,e
5B4E: 00          nop
5B4F: 83          add  a,e
5B50: 12          ld   (de),a
5B51: 03          inc  bc
5B52: 7E          ld   a,(hl)
5B53: 1B          dec  de
5B54: 82          add  a,d
5B55: 00          nop
5B56: 83          add  a,e
5B57: 02          ld   (bc),a
5B58: 53          ld   d,e
5B59: 0D          dec  c
5B5A: 03          inc  bc
5B5B: 7B          ld   a,e
5B5C: 1B          dec  de
5B5D: 82          add  a,d
5B5E: 00          nop
5B5F: 83          add  a,e
5B60: 02          ld   (bc),a
5B61: 51          ld   d,c
5B62: 0D          dec  c
5B63: 03          inc  bc
5B64: 78          ld   a,b
5B65: 1B          dec  de
5B66: 82          add  a,d
5B67: 00          nop
5B68: 83          add  a,e
5B69: 14          inc  d
5B6A: 91          sub  c
5B6B: 4F          ld   c,a
5B6C: 0D          dec  c
5B6D: 82          add  a,d
5B6E: 00          nop
5B6F: 83          add  a,e
5B70: 03          inc  bc
5B71: 71          ld   (hl),c
5B72: 1B          dec  de
5B73: 03          inc  bc
5B74: 4E          ld   c,(hl)
5B75: 0D          dec  c
5B76: 81          add  a,c
5B77: 00          nop
5B78: 83          add  a,e
5B79: 16 81       ld   d,$81
5B7B: 00          nop
5B7C: 83          add  a,e
5B7D: 16 81       ld   d,$81
5B7F: 00          nop
5B80: 83          add  a,e
5B81: 93          sub  e
5B82: 3F          ccf
5B83: 0D          dec  c
5B84: 14          inc  d
5B85: 00          nop
5B86: 3E 0D       ld   a,$0D
5B88: 84          add  a,h
5B89: 00          nop
5B8A: 83          add  a,e
5B8B: 03          inc  bc
5B8C: 3D          dec  a
5B8D: 0D          dec  c
5B8E: 84          add  a,h
5B8F: 00          nop
5B90: 83          add  a,e
5B91: 04          inc  b
5B92: C2 09 02    jp   nz,$0209
5B95: CB 1A       rr   d
5B97: 81          add  a,c
5B98: 00          nop
5B99: 83          add  a,e
5B9A: 06 83       ld   b,$83
5B9C: 0A          ld   a,(bc)
5B9D: 81          add  a,c
5B9E: 00          nop
5B9F: 83          add  a,e
5BA0: 16 81       ld   d,$81
5BA2: 00          nop
5BA3: 83          add  a,e
5BA4: 16 81       ld   d,$81
5BA6: 00          nop
5BA7: 83          add  a,e
5BA8: 06 C9       ld   b,$C9
5BAA: 1A          ld   a,(de)
5BAB: 81          add  a,c
5BAC: 00          nop
5BAD: 84          add  a,h
5BAE: 12          ld   (de),a
5BAF: 03          inc  bc
5BB0: 71          ld   (hl),c
5BB1: 0A          ld   a,(bc)
5BB2: 81          add  a,c
5BB3: 00          nop
5BB4: 86          add  a,(hl)
5BB5: 13          inc  de
5BB6: 81          add  a,c
5BB7: 00          nop
5BB8: 86          add  a,(hl)
5BB9: 13          inc  de
5BBA: 81          add  a,c
5BBB: 00          nop
5BBC: 86          add  a,(hl)
5BBD: 13          inc  de
5BBE: 81          add  a,c
5BBF: 00          nop
5BC0: 83          add  a,e
5BC1: 04          inc  b
5BC2: 87          add  a,a
5BC3: 0A          ld   a,(bc)
5BC4: 02          ld   (bc),a
5BC5: CB 1A       rr   d
5BC7: 81          add  a,c
5BC8: 00          nop
5BC9: 81          add  a,c
5BCA: 01 21 0B    ld   bc,$0B21
5BCD: 88          adc  a,b
5BCE: 00          nop
5BCF: 81          add  a,c
5BD0: 12          ld   (de),a
5BD1: 82          add  a,d
5BD2: 12          ld   (de),a
5BD3: 83          add  a,e
5BD4: 00          nop
5BD5: 81          add  a,c
5BD6: 16 83       ld   d,$83
5BD8: 00          nop
5BD9: 81          add  a,c
5BDA: 12          ld   (de),a
5BDB: 02          ld   (bc),a
5BDC: 92          sub  d
5BDD: 19          add  hl,de
5BDE: 02          ld   (bc),a
5BDF: 14          inc  d
5BE0: 0B          dec  bc
5BE1: 83          add  a,e
5BE2: 00          nop
5BE3: 82          add  a,d
5BE4: 15          dec  d
5BE5: 83          add  a,e
5BE6: 00          nop
5BE7: 82          add  a,d
5BE8: 15          dec  d
5BE9: 83          add  a,e
5BEA: 00          nop
5BEB: 82          add  a,d
5BEC: 15          dec  d
5BED: 83          add  a,e
5BEE: 00          nop
5BEF: 82          add  a,d
5BF0: 14          inc  d
5BF1: 84          add  a,h
5BF2: 00          nop
5BF3: 83          add  a,e
5BF4: 15          dec  d
5BF5: 82          add  a,d
5BF6: 00          nop
5BF7: 81          add  a,c
5BF8: 16 91       ld   d,$91
5BFA: 37          scf
5BFB: 1B          dec  de
5BFC: 82          add  a,d
5BFD: 00          nop
5BFE: 81          add  a,c
5BFF: 92          sub  d
5C00: F4 0A 14    call p,$140A
5C03: 00          nop
5C04: 03          inc  bc
5C05: F3          di
5C06: 0A          ld   a,(bc)
5C07: 02          ld   (bc),a
5C08: D4 1A 82    call nc,$821A
5C0B: 00          nop
5C0C: 81          add  a,c
5C0D: 03          inc  bc
5C0E: F0          ret  p
5C0F: 0A          ld   a,(bc)
5C10: 04          inc  b
5C11: D2 1A 82    jp   nc,$821A
5C14: 00          nop
5C15: 85          add  a,l
5C16: 13          inc  de
5C17: 82          add  a,d
5C18: 00          nop
5C19: 85          add  a,l
5C1A: 04          inc  b
5C1B: ED          db   $ed
5C1C: 0A          ld   a,(bc)
5C1D: 81          add  a,c
5C1E: 00          nop
5C1F: 86          add  a,(hl)
5C20: 13          inc  de
5C21: 81          add  a,c
5C22: 00          nop
5C23: 86          add  a,(hl)
5C24: 13          inc  de
5C25: 81          add  a,c
5C26: 00          nop
5C27: 8A          adc  a,d
5C28: 00          nop
5C29: 83          add  a,e
5C2A: 02          ld   (bc),a
5C2B: E3          ex   (sp),hl
5C2C: 0A          ld   a,(bc)
5C2D: 82          add  a,d
5C2E: 12          ld   (de),a
5C2F: 81          add  a,c
5C30: 00          nop
5C31: 83          add  a,e
5C32: 12          ld   (de),a
5C33: 82          add  a,d
5C34: 12          ld   (de),a
5C35: 81          add  a,c
5C36: 00          nop
5C37: 83          add  a,e
5C38: 16 81       ld   d,$81
5C3A: 00          nop
5C3B: 83          add  a,e
5C3C: 12          ld   (de),a
5C3D: 02          ld   (bc),a
5C3E: E7          rst  $20
5C3F: 1A          ld   a,(de)
5C40: 02          ld   (bc),a
5C41: D3 0A       out  ($0A),a
5C43: 81          add  a,c
5C44: 00          nop
5C45: 83          add  a,e
5C46: 13          inc  de
5C47: 02          ld   (bc),a
5C48: E5          push hl
5C49: 1A          ld   a,(de)
5C4A: 82          add  a,d
5C4B: 00          nop
5C4C: 83          add  a,e
5C4D: 05          dec  b
5C4E: CE 0A       adc  a,$0A
5C50: 82          add  a,d
5C51: 00          nop
5C52: 83          add  a,e
5C53: 05          dec  b
5C54: C9          ret
5C55: 0A          ld   a,(bc)
5C56: 82          add  a,d
5C57: 00          nop
5C58: 83          add  a,e
5C59: 14          inc  d
5C5A: 81          add  a,c
5C5B: 11 81 00    ld   de,$0081
5C5E: 81          add  a,c
5C5F: 14          inc  d
5C60: 02          ld   (bc),a
5C61: E3          ex   (sp),hl
5C62: 1A          ld   a,(de)
5C63: 02          ld   (bc),a
5C64: BB          cp   e
5C65: 0A          ld   a,(bc)
5C66: 81          add  a,c
5C67: 00          nop
5C68: 81          add  a,c
5C69: 18 81       jr   $5BEC
5C6B: 00          nop
5C6C: 82          add  a,d
5C6D: 03          inc  bc
5C6E: E1          pop  hl
5C6F: 1A          ld   a,(de)
5C70: 04          inc  b
5C71: B1          or   c
5C72: 0A          ld   a,(bc)
5C73: 81          add  a,c
5C74: 00          nop
5C75: 82          add  a,d
5C76: 02          ld   (bc),a
5C77: DE 1A       sbc  a,$1A
5C79: 04          inc  b
5C7A: AD          xor  l
5C7B: 0A          ld   a,(bc)
5C7C: 82          add  a,d
5C7D: 00          nop
5C7E: 83          add  a,e
5C7F: 15          dec  d
5C80: 82          add  a,d
5C81: 00          nop
5C82: 84          add  a,h
5C83: 14          inc  d
5C84: 82          add  a,d
5C85: 00          nop
5C86: 8A          adc  a,d
5C87: 00          nop
5C88: 8A          adc  a,d
5C89: 00          nop
5C8A: 83          add  a,e
5C8B: 02          ld   (bc),a
5C8C: 5C          ld   e,h
5C8D: 0B          dec  bc
5C8E: 81          add  a,c
5C8F: 12          ld   (de),a
5C90: 82          add  a,d
5C91: 00          nop
5C92: 82          add  a,d
5C93: 13          inc  de
5C94: 82          add  a,d
5C95: 12          ld   (de),a
5C96: 81          add  a,c
5C97: 00          nop
5C98: 83          add  a,e
5C99: 16 81       ld   d,$81
5C9B: 00          nop
5C9C: 83          add  a,e
5C9D: 11 03 0E    ld   de,$0E03
5CA0: 1B          dec  de
5CA1: 01 4C 0B    ld   bc,$0B4C
5CA4: 82          add  a,d
5CA5: 00          nop
5CA6: 83          add  a,e
5CA7: 15          dec  d
5CA8: 82          add  a,d
5CA9: 00          nop
5CAA: 83          add  a,e
5CAB: 13          inc  de
5CAC: 92          sub  d
5CAD: 7A          ld   a,d
5CAE: 05          dec  b
5CAF: 43          ld   b,e
5CB0: 0B          dec  bc
5CB1: 82          add  a,d
5CB2: 00          nop
5CB3: 83          add  a,e
5CB4: 05          dec  b
5CB5: 42          ld   b,d
5CB6: 0B          dec  bc
5CB7: 82          add  a,d
5CB8: 00          nop
5CB9: 82          add  a,d
5CBA: 17          rla
5CBB: 81          add  a,c
5CBC: 00          nop
5CBD: 82          add  a,d
5CBE: 17          rla
5CBF: 81          add  a,c
5CC0: 00          nop
5CC1: 82          add  a,d
5CC2: 13          inc  de
5CC3: 02          ld   (bc),a
5CC4: 0B          dec  bc
5CC5: 1B          dec  de
5CC6: 02          ld   (bc),a
5CC7: 2C          inc  l
5CC8: 0B          dec  bc
5CC9: 81          add  a,c
5CCA: 00          nop
5CCB: 82          add  a,d
5CCC: 05          dec  b
5CCD: 09          add  hl,bc
5CCE: 1B          dec  de
5CCF: 02          ld   (bc),a
5CD0: 2A 0B 81    ld   hl,($810B)
5CD3: 00          nop
5CD4: 83          add  a,e
5CD5: 05          dec  b
5CD6: 04          inc  b
5CD7: 1B          dec  de
5CD8: 82          add  a,d
5CD9: 00          nop
5CDA: 84          add  a,h
5CDB: 13          inc  de
5CDC: 83          add  a,e
5CDD: 00          nop
5CDE: 84          add  a,h
5CDF: 91          sub  c
5CE0: 28 0B       jr   z,$5CED
5CE2: 02          ld   (bc),a
5CE3: FC 1A 83    call m,$831A
5CE6: 00          nop
5CE7: 84          add  a,h
5CE8: 03          inc  bc
5CE9: 27          daa
5CEA: 0B          dec  bc
5CEB: 83          add  a,e
5CEC: 00          nop
5CED: 84          add  a,h
5CEE: 13          inc  de
5CEF: 83          add  a,e
5CF0: 00          nop
5CF1: 8A          adc  a,d
5CF2: 00          nop
5CF3: 83          add  a,e
5CF4: 91          sub  c
5CF5: 96          sub  (hl)
5CF6: 0A          ld   a,(bc)
5CF7: 04          inc  b
5CF8: FE 0A       cp   $0A
5CFA: 82          add  a,d
5CFB: 00          nop
5CFC: 81          add  a,c
5CFD: 03          inc  bc
5CFE: 02          ld   (bc),a
5CFF: 07          rlca
5D00: 03          inc  bc
5D01: F7          rst  $30
5D02: 0A          ld   a,(bc)
5D03: 91          sub  c
5D04: 37          scf
5D05: 1B          dec  de
5D06: 82          add  a,d
5D07: 00          nop
5D08: 81          add  a,c
5D09: 91          sub  c
5D0A: 14          inc  d
5D0B: 00          nop
5D0C: 04          inc  b
5D0D: A7          and  a
5D0E: 0B          dec  bc
5D0F: 02          ld   (bc),a
5D10: D4 1A 82    call nc,$821A
5D13: 00          nop
5D14: 81          add  a,c
5D15: 02          ld   (bc),a
5D16: FF          rst  $38
5D17: 06 07       ld   b,$07
5D19: 98          sbc  a,b
5D1A: 1A          ld   a,(de)
5D1B: 00          nop
5D1C: 84          add  a,h
5D1D: 12          ld   (de),a
5D1E: 04          inc  b
5D1F: 95          sub  l
5D20: 0A          ld   a,(bc)
5D21: 00          nop
5D22: 85          add  a,l
5D23: 14          inc  d
5D24: 81          add  a,c
5D25: 00          nop
5D26: 86          add  a,(hl)
5D27: 13          inc  de
5D28: 81          add  a,c
5D29: 00          nop
5D2A: 86          add  a,(hl)
5D2B: 13          inc  de
5D2C: 81          add  a,c
5D2D: 00          nop
5D2E: 8A          adc  a,d
5D2F: 00          nop
5D30: 82          add  a,d
5D31: 02          ld   (bc),a
5D32: AF          xor  a
5D33: 0D          dec  c
5D34: 86          add  a,(hl)
5D35: 00          nop
5D36: 82          add  a,d
5D37: 12          ld   (de),a
5D38: 84          add  a,h
5D39: 11 81 00    ld   de,$0081
5D3C: 82          add  a,d
5D3D: 12          ld   (de),a
5D3E: 83          add  a,e
5D3F: 12          ld   (de),a
5D40: 81          add  a,c
5D41: 00          nop
5D42: 83          add  a,e
5D43: 12          ld   (de),a
5D44: 81          add  a,c
5D45: 13          inc  de
5D46: 81          add  a,c
5D47: 00          nop
5D48: 83          add  a,e
5D49: 15          dec  d
5D4A: 82          add  a,d
5D4B: 00          nop
5D4C: 82          add  a,d
5D4D: 11 03 95    ld   de,$9503
5D50: 1B          dec  de
5D51: 02          ld   (bc),a
5D52: 9B          sbc  a,e
5D53: 0D          dec  c
5D54: 82          add  a,d
5D55: 00          nop
5D56: 82          add  a,d
5D57: 14          inc  d
5D58: 02          ld   (bc),a
5D59: 92          sub  d
5D5A: 1B          dec  de
5D5B: 82          add  a,d
5D5C: 00          nop
5D5D: 81          add  a,c
5D5E: 07          rlca
5D5F: 95          sub  l
5D60: 0D          dec  c
5D61: 82          add  a,d
5D62: 00          nop
5D63: 18 82       jr   $5CE7
5D65: 00          nop
5D66: 17          rla
5D67: 83          add  a,e
5D68: 00          nop
5D69: 07          rlca
5D6A: 90          sub  b
5D6B: 1B          dec  de
5D6C: 83          add  a,e
5D6D: 00          nop
5D6E: 12          ld   (de),a
5D6F: 91          sub  c
5D70: 64          ld   h,h
5D71: 18 03       jr   $5D76
5D73: 87          add  a,a
5D74: 1B          dec  de
5D75: 84          add  a,h
5D76: 00          nop
5D77: 81          add  a,c
5D78: 14          inc  d
5D79: 85          add  a,l
5D7A: 00          nop
5D7B: 02          ld   (bc),a
5D7C: 7F          ld   a,a
5D7D: 0D          dec  c
5D7E: 02          ld   (bc),a
5D7F: 80          add  a,b
5D80: 1B          dec  de
5D81: 86          add  a,(hl)
5D82: 00          nop
5D83: 03          inc  bc
5D84: 7D          ld   a,l
5D85: 0D          dec  c
5D86: 87          add  a,a
5D87: 00          nop
5D88: 12          ld   (de),a
5D89: 88          adc  a,b
5D8A: 00          nop
5D8B: 8A          adc  a,d
5D8C: 00          nop
5D8D: 8B          adc  a,e
5D8E: 00          nop
5D8F: 82          add  a,d
5D90: 04          inc  b
5D91: E7          rst  $20
5D92: 0D          dec  c
5D93: 85          add  a,l
5D94: 00          nop
5D95: 15          dec  d
5D96: 92          sub  d
5D97: 50          ld   d,b
5D98: 06 DE       ld   b,$DE
5D9A: 0D          dec  c
5D9B: 82          add  a,d
5D9C: 02          ld   (bc),a
5D9D: DD          db   $dd
5D9E: 0D          dec  c
5D9F: 00          nop
5DA0: 15          dec  d
5DA1: 91          sub  c
5DA2: 50          ld   d,b
5DA3: 06 05       ld   b,$05
5DA5: D6 0D       sub  $0D
5DA7: 00          nop
5DA8: 1B          dec  de
5DA9: 00          nop
5DAA: 12          ld   (de),a
5DAB: 02          ld   (bc),a
5DAC: 9C          sbc  a,h
5DAD: 1B          dec  de
5DAE: 06 C4       ld   b,$C4
5DB0: 0D          dec  c
5DB1: 81          add  a,c
5DB2: 00          nop
5DB3: 03          inc  bc
5DB4: 9A          sbc  a,d
5DB5: 1B          dec  de
5DB6: 03          inc  bc
5DB7: BE          cp   (hl)
5DB8: 0D          dec  c
5DB9: 85          add  a,l
5DBA: 00          nop
5DBB: 02          ld   (bc),a
5DBC: 97          sub  a
5DBD: 1B          dec  de
5DBE: 04          inc  b
5DBF: BB          cp   e
5DC0: 0D          dec  c
5DC1: 85          add  a,l
5DC2: 00          nop
5DC3: 81          add  a,c
5DC4: 15          dec  d
5DC5: 85          add  a,l
5DC6: 00          nop
5DC7: 82          add  a,d
5DC8: 11 92 7A    ld   de,$7A92
5DCB: 05          dec  b
5DCC: B1          or   c
5DCD: 0D          dec  c
5DCE: 86          add  a,(hl)
5DCF: 00          nop
5DD0: 83          add  a,e
5DD1: 91          sub  c
5DD2: B0          or   b
5DD3: 0D          dec  c
5DD4: 87          add  a,a
5DD5: 00          nop
5DD6: 8B          adc  a,e
5DD7: 00          nop
5DD8: 8B          adc  a,e
5DD9: 00          nop
5DDA: 8B          adc  a,e
5DDB: 00          nop
5DDC: 8B          adc  a,e
5DDD: 00          nop
5DDE: 8B          adc  a,e
5DDF: 00          nop
5DE0: 87          add  a,a
5DE1: 02          ld   (bc),a
5DE2: 23          inc  hl
5DE3: 0E 87       ld   c,$87
5DE5: 00          nop
5DE6: 87          add  a,a
5DE7: 11 91 50    ld   de,$5091
5DEA: 06 84       ld   b,$84
5DEC: 03          inc  bc
5DED: 20 0E       jr   nz,$5DFD
5DEF: 00          nop
5DF0: 86          add  a,(hl)
5DF1: 12          ld   (de),a
5DF2: 92          sub  d
5DF3: 50          ld   d,b
5DF4: 06 1B       ld   b,$1B
5DF6: 0E 02       ld   c,$02
5DF8: B4          or   h
5DF9: 1B          dec  de
5DFA: 03          inc  bc
5DFB: 1A          ld   a,(de)
5DFC: 0E 91       ld   c,$91
5DFE: 50          ld   d,b
5DFF: 06 00       ld   b,$00
5E01: 86          add  a,(hl)
5E02: 02          ld   (bc),a
5E03: 17          rla
5E04: 0E 91       ld   c,$91
5E06: 50          ld   d,b
5E07: 06 07       ld   b,$07
5E09: 15          dec  d
5E0A: 0E 00       ld   c,$00
5E0C: 12          ld   (de),a
5E0D: 83          add  a,e
5E0E: 15          dec  d
5E0F: 02          ld   (bc),a
5E10: B2          or   d
5E11: 1B          dec  de
5E12: 04          inc  b
5E13: 07          rlca
5E14: 0E 00       ld   c,$00
5E16: 13          inc  de
5E17: 03          inc  bc
5E18: B0          or   b
5E19: 1B          dec  de
5E1A: 07          rlca
5E1B: 00          nop
5E1C: 0E 81       ld   c,$81
5E1E: 11 81 00    ld   de,$0081
5E21: 13          inc  de
5E22: 04          inc  b
5E23: AD          xor  l
5E24: 1B          dec  de
5E25: 06 F5       ld   b,$F5
5E27: 0D          dec  c
5E28: 83          add  a,e
5E29: 00          nop
5E2A: 83          add  a,e
5E2B: 02          ld   (bc),a
5E2C: A9          xor  c
5E2D: 1B          dec  de
5E2E: 91          sub  c
5E2F: EF          rst  $28
5E30: 0D          dec  c
5E31: 05          dec  b
5E32: A7          and  a
5E33: 1B          dec  de
5E34: 85          add  a,l
5E35: 00          nop
5E36: 84          add  a,h
5E37: 04          inc  b
5E38: EE 0D       xor  $0D
5E3A: 88          adc  a,b
5E3B: 00          nop
5E3C: 85          add  a,l
5E3D: 13          inc  de
5E3E: 88          adc  a,b
5E3F: 00          nop
5E40: 8F          adc  a,a
5E41: 81          add  a,c
5E42: 00          nop
5E43: 8F          adc  a,a
5E44: 81          add  a,c
5E45: 00          nop
5E46: 8F          adc  a,a
5E47: 81          add  a,c
5E48: 00          nop
5E49: 8F          adc  a,a
5E4A: 81          add  a,c
5E4B: 00          nop
5E4C: 8F          adc  a,a
5E4D: 81          add  a,c
5E4E: 00          nop
5E4F: 8F          adc  a,a
5E50: 81          add  a,c
5E51: 00          nop
5E52: 8F          adc  a,a
5E53: 81          add  a,c
5E54: 00          nop
5E55: 85          add  a,l
5E56: 03          inc  bc
5E57: 54          ld   d,h
5E58: 0E 92       ld   c,$92
5E5A: C4 1B C4    call nz,$C41B
5E5D: 1B          dec  de
5E5E: 86          add  a,(hl)
5E5F: 00          nop
5E60: 84          add  a,h
5E61: 07          rlca
5E62: 51          ld   d,c
5E63: 0E 85       ld   c,$85
5E65: 00          nop
5E66: 84          add  a,h
5E67: 16 86       ld   d,$86
5E69: 00          nop
5E6A: 84          add  a,h
5E6B: 16 86       ld   d,$86
5E6D: 00          nop
5E6E: 84          add  a,h
5E6F: 17          rla
5E70: 85          add  a,l
5E71: 00          nop
5E72: 84          add  a,h
5E73: 15          dec  d
5E74: 02          ld   (bc),a
5E75: C3 1B 85    jp   $851B
5E78: 00          nop
5E79: 83          add  a,e
5E7A: 03          inc  bc
5E7B: 32 0E 02    ld   ($020E),a
5E7E: C1          pop  bc
5E7F: 1B          dec  de
5E80: 91          sub  c
5E81: 2F          cpl
5E82: 0E 02       ld   c,$02
5E84: BF          cp   a
5E85: 1B          dec  de
5E86: 85          add  a,l
5E87: 00          nop
5E88: 83          add  a,e
5E89: 15          dec  d
5E8A: 02          ld   (bc),a
5E8B: 2E 0E       ld   l,$0E
5E8D: 86          add  a,(hl)
5E8E: 00          nop
5E8F: 84          add  a,h
5E90: 02          ld   (bc),a
5E91: B8          cp   b
5E92: 1B          dec  de
5E93: 91          sub  c
5E94: 43          ld   b,e
5E95: 19          add  hl,de
5E96: 03          inc  bc
5E97: 2C          inc  l
5E98: 0E 86       ld   c,$86
5E9A: 00          nop
5E9B: 85          add  a,l
5E9C: 02          ld   (bc),a
5E9D: B6          or   (hl)
5E9E: 1B          dec  de
5E9F: 03          inc  bc
5EA0: 29          add  hl,hl
5EA1: 0E 86       ld   c,$86
5EA3: 00          nop
5EA4: 87          add  a,a
5EA5: 11 92 7A    ld   de,$7A92
5EA8: 05          dec  b
5EA9: 25          dec  h
5EAA: 0E 86       ld   c,$86
5EAC: 00          nop
5EAD: 88          adc  a,b
5EAE: 91          sub  c
5EAF: 24          inc  h
5EB0: 0E 87       ld   c,$87
5EB2: 00          nop
5EB3: 82          add  a,d
5EB4: 02          ld   (bc),a
5EB5: 89          adc  a,c
5EB6: 0E 86       ld   c,$86
5EB8: 00          nop
5EB9: 82          add  a,d
5EBA: 12          ld   (de),a
5EBB: 81          add  a,c
5EBC: 13          inc  de
5EBD: 82          add  a,d
5EBE: 00          nop
5EBF: 82          add  a,d
5EC0: 15          dec  d
5EC1: 83          add  a,e
5EC2: 00          nop
5EC3: 83          add  a,e
5EC4: 15          dec  d
5EC5: 82          add  a,d
5EC6: 00          nop
5EC7: 83          add  a,e
5EC8: 15          dec  d
5EC9: 82          add  a,d
5ECA: 00          nop
5ECB: 82          add  a,d
5ECC: 16 82       ld   d,$82
5ECE: 00          nop
5ECF: 82          add  a,d
5ED0: 15          dec  d
5ED1: 83          add  a,e
5ED2: 00          nop
5ED3: 82          add  a,d
5ED4: 16 82       ld   d,$82
5ED6: 00          nop
5ED7: 82          add  a,d
5ED8: 11 03 D0    ld   de,$D003
5EDB: 1B          dec  de
5EDC: 02          ld   (bc),a
5EDD: 61          ld   h,c
5EDE: 0E 82       ld   c,$82
5EE0: 00          nop
5EE1: 82          add  a,d
5EE2: 04          inc  b
5EE3: CD 1B 02    call $021B
5EE6: 5F          ld   e,a
5EE7: 0E 82       ld   c,$82
5EE9: 00          nop
5EEA: 83          add  a,e
5EEB: 03          inc  bc
5EEC: C9          ret
5EED: 1B          dec  de
5EEE: 03          inc  bc
5EEF: 5D          ld   e,l
5EF0: 0E 81       ld   c,$81
5EF2: 00          nop
5EF3: 83          add  a,e
5EF4: 02          ld   (bc),a
5EF5: C6 1B       add  a,$1B
5EF7: 04          inc  b
5EF8: 5A          ld   e,d
5EF9: 0E 81       ld   c,$81
5EFB: 00          nop
5EFC: 86          add  a,(hl)
5EFD: 12          ld   (de),a
5EFE: 82          add  a,d
5EFF: 00          nop
5F00: F4 E5 10    call p,$10E5
5F03: 26 60       ld   h,$60
5F05: 00          nop
5F06: F4 E5 07    call p,$07E5
5F09: 26 60       ld   h,$60
5F0B: 09          add  hl,bc
5F0C: 80          add  a,b
5F0D: 60          ld   h,b
5F0E: 00          nop
5F0F: F4 E5 07    call p,$07E5
5F12: AF          xor  a
5F13: 60          ld   h,b
5F14: 09          add  hl,bc
5F15: 46          ld   b,(hl)
5F16: 60          ld   h,b
5F17: 00          nop
5F18: F4 E5 07    call p,$07E5
5F1B: AF          xor  a
5F1C: 60          ld   h,b
5F1D: 09          add  hl,bc
5F1E: 80          add  a,b
5F1F: 60          ld   h,b
5F20: 00          nop
5F21: F4 E5 0B    call p,$0BE5
5F24: 26 60       ld   h,$60
5F26: 05          dec  b
5F27: CD 60 00    call $0060
5F2A: F4 E5 07    call p,$07E5
5F2D: 26 60       ld   h,$60
5F2F: 05          dec  b
5F30: 05          dec  b
5F31: 61          ld   h,c
5F32: 04          inc  b
5F33: 68          ld   l,b
5F34: 60          ld   h,b
5F35: 00          nop
5F36: F4 E5 10    call p,$10E5
5F39: 3E 61       ld   a,$61
5F3B: 00          nop
5F3C: F4 E5 07    call p,$07E5
5F3F: 3E 61       ld   a,$61
5F41: 09          add  hl,bc
5F42: 91          sub  c
5F43: 61          ld   h,c
5F44: 00          nop
5F45: F4 E5 10    call p,$10E5
5F48: C7          rst  $00
5F49: 61          ld   h,c
5F4A: 00          nop
5F4B: F4 E5 10    call p,$10E5
5F4E: 1B          dec  de
5F4F: 62          ld   h,d
5F50: 00          nop
5F51: F4 E5 10    call p,$10E5
5F54: 7A          ld   a,d
5F55: 62          ld   h,d
5F56: 00          nop
5F57: F4 E5 07    call p,$07E5
5F5A: 26 60       ld   h,$60
5F5C: 09          add  hl,bc
5F5D: DB 62       in   a,($62)
5F5F: 00          nop
5F60: F4 E5 07    call p,$07E5
5F63: AF          xor  a
5F64: 60          ld   h,b
5F65: 09          add  hl,bc
5F66: DB 62       in   a,($62)
5F68: 00          nop
5F69: F4 E5 07    call p,$07E5
5F6C: AF          xor  a
5F6D: 60          ld   h,b
5F6E: 06 22       ld   b,$22
5F70: 63          ld   h,e
5F71: 03          inc  bc
5F72: 0F          rrca
5F73: 63          ld   h,e
5F74: 00          nop
5F75: F4 E5 07    call p,$07E5
5F78: 26 60       ld   h,$60
5F7A: 06 22       ld   b,$22
5F7C: 63          ld   h,e
5F7D: 03          inc  bc
5F7E: 0F          rrca
5F7F: 63          ld   h,e
5F80: 00          nop
5F81: F4 E5 07    call p,$07E5
5F84: 26 60       ld   h,$60
5F86: 09          add  hl,bc
5F87: 5C          ld   e,h
5F88: 63          ld   h,e
5F89: 00          nop
5F8A: F4 E5 07    call p,$07E5
5F8D: AF          xor  a
5F8E: 60          ld   h,b
5F8F: 09          add  hl,bc
5F90: 5C          ld   e,h
5F91: 63          ld   h,e
5F92: 00          nop
5F93: F4 E5 10    call p,$10E5
5F96: 9C          sbc  a,h
5F97: 63          ld   h,e
5F98: 00          nop
5F99: F4 E5 10    call p,$10E5
5F9C: 00          nop
5F9D: 64          ld   h,h
5F9E: 00          nop
5F9F: F4 E5 0C    call p,$0CE5
5FA2: 58          ld   e,b
5FA3: 64          ld   h,h
5FA4: 04          inc  b
5FA5: 7B          ld   a,e
5FA6: 54          ld   d,h
5FA7: 00          nop
5FA8: F4 E5 10    call p,$10E5
5FAB: 9D          sbc  a,l
5FAC: 64          ld   h,h
5FAD: 00          nop
5FAE: F4 E5 11    call p,$11E5
5FB1: 02          ld   (bc),a
5FB2: 65          ld   h,l
5FB3: 00          nop
5FB4: F4 E5 07    call p,$07E5
5FB7: AF          xor  a
5FB8: 60          ld   h,b
5FB9: 09          add  hl,bc
5FBA: 67          ld   h,a
5FBB: 65          ld   h,l
5FBC: 00          nop
5FBD: F4 E5 07    call p,$07E5
5FC0: 3E 61       ld   a,$61
5FC2: 09          add  hl,bc
5FC3: 67          ld   h,a
5FC4: 65          ld   h,l
5FC5: 00          nop
5FC6: F4 E5 10    call p,$10E5
5FC9: 97          sub  a
5FCA: 65          ld   h,l
5FCB: 00          nop
5FCC: F4 E5 11    call p,$11E5
5FCF: F2 65 00    jp   p,$0065
5FD2: F4 E5 09    call p,$09E5
5FD5: 5D          ld   e,l
5FD6: 66          ld   h,(hl)
5FD7: 08          ex   af,af'
5FD8: 27          daa
5FD9: 66          ld   h,(hl)
5FDA: 00          nop
5FDB: F4 E5 07    call p,$07E5
5FDE: 3E 61       ld   a,$61
5FE0: 0A          ld   a,(bc)
5FE1: 89          adc  a,c
5FE2: 66          ld   h,(hl)
5FE3: 00          nop
5FE4: F4 E5 07    call p,$07E5
5FE7: AF          xor  a
5FE8: 60          ld   h,b
5FE9: 0A          ld   a,(bc)
5FEA: 89          adc  a,c
5FEB: 66          ld   h,(hl)
5FEC: 00          nop
5FED: F4 E5 09    call p,$09E5
5FF0: 97          sub  a
5FF1: 65          ld   h,l
5FF2: 08          ex   af,af'
5FF3: CD 66 00    call $0066
5FF6: F4 E5 10    call p,$10E5
5FF9: 09          add  hl,bc
5FFA: 67          ld   h,a
5FFB: 00          nop
5FFC: F4 E5 0D    call p,$0DE5
5FFF: 5D          ld   e,l
6000: 67          ld   h,a
6001: 03          inc  bc
6002: 7B          ld   a,e
6003: 54          ld   d,h
6004: 00          nop
6005: F8          ret  m
6006: E5          push hl
6007: 0A          ld   a,(bc)
6008: AB          xor  e
6009: 67          ld   h,a
600A: 06 B6       ld   b,$B6
600C: 54          ld   d,h
600D: 00          nop
600E: F8          ret  m
600F: E5          push hl
6010: 0A          ld   a,(bc)
6011: E2 67 06    jp   po,$0667
6014: B6          or   (hl)
6015: 54          ld   d,h
6016: 00          nop
6017: F4 E5 0D    call p,$0DE5
601A: 20 68       jr   nz,$6084
601C: 03          inc  bc
601D: 7B          ld   a,e
601E: 54          ld   d,h
601F: 00          nop
6020: F4 E5 11    call p,$11E5
6023: 26 60       ld   h,$60
6025: 00          nop
6026: 83          add  a,e
6027: 02          ld   (bc),a
6028: 65          ld   h,l
6029: 00          nop
602A: 81          add  a,c
602B: 12          ld   (de),a
602C: 82          add  a,d
602D: 00          nop
602E: 82          add  a,d
602F: 16 82       ld   d,$82
6031: 00          nop
6032: 82          add  a,d
6033: 16 82       ld   d,$82
6035: 00          nop
6036: 83          add  a,e
6037: 16 81       ld   d,$81
6039: 00          nop
603A: 83          add  a,e
603B: 16 81       ld   d,$81
603D: 00          nop
603E: 83          add  a,e
603F: 16 81       ld   d,$81
6041: 00          nop
6042: 83          add  a,e
6043: 15          dec  d
6044: 82          add  a,d
6045: 00          nop
6046: 83          add  a,e
6047: 06 1D       ld   b,$1D
6049: 00          nop
604A: 81          add  a,c
604B: 00          nop
604C: 82          add  a,d
604D: 17          rla
604E: 81          add  a,c
604F: 00          nop
6050: 82          add  a,d
6051: 03          inc  bc
6052: 0D          dec  c
6053: 18 04       jr   $6059
6055: 10 00       djnz $6057
6057: 81          add  a,c
6058: 00          nop
6059: 82          add  a,d
605A: 04          inc  b
605B: 0A          ld   a,(bc)
605C: 18 03       jr   $6061
605E: 0C          inc  c
605F: 00          nop
6060: 81          add  a,c
6061: 00          nop
6062: 82          add  a,d
6063: 07          rlca
6064: 06 18       ld   b,$18
6066: 81          add  a,c
6067: 00          nop
6068: 83          add  a,e
6069: 05          dec  b
606A: 09          add  hl,bc
606B: 00          nop
606C: 82          add  a,d
606D: 00          nop
606E: 84          add  a,h
606F: 14          inc  d
6070: 82          add  a,d
6071: 00          nop
6072: 84          add  a,h
6073: 04          inc  b
6074: 59          ld   e,c
6075: 02          ld   (bc),a
6076: 82          add  a,d
6077: 00          nop
6078: 85          add  a,l
6079: 03          inc  bc
607A: 9B          sbc  a,e
607B: 18 82       jr   $5FFF
607D: 00          nop
607E: 8A          adc  a,d
607F: 00          nop
6080: 83          add  a,e
6081: 04          inc  b
6082: 39          add  hl,sp
6083: 00          nop
6084: 91          sub  c
6085: 3A 00 82    ld   a,($8200)
6088: 00          nop
6089: 83          add  a,e
608A: 06 1D       ld   b,$1D
608C: 18 81       jr   $600F
608E: 00          nop
608F: 83          add  a,e
6090: 16 81       ld   d,$81
6092: 00          nop
6093: 82          add  a,d
6094: 07          rlca
6095: 35          dec  (hl)
6096: 00          nop
6097: 81          add  a,c
6098: 00          nop
6099: 83          add  a,e
609A: 16 81       ld   d,$81
609C: 00          nop
609D: 83          add  a,e
609E: 16 81       ld   d,$81
60A0: 00          nop
60A1: 84          add  a,h
60A2: 15          dec  d
60A3: 81          add  a,c
60A4: 00          nop
60A5: 85          add  a,l
60A6: 03          inc  bc
60A7: 11 18 82    ld   de,$8218
60AA: 00          nop
60AB: 86          add  a,(hl)
60AC: 11 83 00    ld   de,$0083
60AF: 84          add  a,h
60B0: 03          inc  bc
60B1: 81          add  a,c
60B2: 00          nop
60B3: 83          add  a,e
60B4: 00          nop
60B5: 84          add  a,h
60B6: 13          inc  de
60B7: 83          add  a,e
60B8: 00          nop
60B9: 84          add  a,h
60BA: 13          inc  de
60BB: 83          add  a,e
60BC: 00          nop
60BD: 84          add  a,h
60BE: 14          inc  d
60BF: 82          add  a,d
60C0: 00          nop
60C1: 83          add  a,e
60C2: 15          dec  d
60C3: 82          add  a,d
60C4: 00          nop
60C5: 83          add  a,e
60C6: 15          dec  d
60C7: 82          add  a,d
60C8: 00          nop
60C9: 83          add  a,e
60CA: 15          dec  d
60CB: 82          add  a,d
60CC: 00          nop
60CD: 82          add  a,d
60CE: 02          ld   (bc),a
60CF: 06 18       ld   b,$18
60D1: 04          inc  b
60D2: 9E          sbc  a,(hl)
60D3: 19          add  hl,de
60D4: 91          sub  c
60D5: 00          nop
60D6: 18 81       jr   $6059
60D8: 00          nop
60D9: 83          add  a,e
60DA: 95          sub  l
60DB: 09          add  hl,bc
60DC: 00          nop
60DD: D9          exx
60DE: 01 86 03    ld   bc,$0386
60E1: 85          add  a,l
60E2: 03          inc  bc
60E3: D8          ret  c
60E4: 01 82 00    ld   bc,$0082
60E7: 84          add  a,h
60E8: 94          sub  h
60E9: D7          rst  $10
60EA: 01 81 03    ld   bc,$0381
60ED: 80          add  a,b
60EE: 03          inc  bc
60EF: D6 01       sub  $01
60F1: 82          add  a,d
60F2: 00          nop
60F3: 84          add  a,h
60F4: 94          sub  h
60F5: 90          sub  b
60F6: 19          add  hl,de
60F7: 7D          ld   a,l
60F8: 03          inc  bc
60F9: 7C          ld   a,h
60FA: 03          inc  bc
60FB: 74          ld   (hl),h
60FC: 18 82       jr   $6080
60FE: 00          nop
60FF: 85          add  a,l
6100: 02          ld   (bc),a
6101: 07          rlca
6102: 19          add  hl,de
6103: 83          add  a,e
6104: 00          nop
6105: 83          add  a,e
6106: 03          inc  bc
6107: 3E 00       ld   a,$00
6109: 03          inc  bc
610A: B5          or   l
610B: 0E 81       ld   c,$81
610D: 00          nop
610E: 82          add  a,d
610F: 02          ld   (bc),a
6110: A6          and  (hl)
6111: 18 91       jr   $60A4
6113: 6D          ld   l,l
6114: 02          ld   (bc),a
6115: 04          inc  b
6116: B2          or   d
6117: 0E 81       ld   c,$81
6119: 00          nop
611A: 82          add  a,d
611B: 02          ld   (bc),a
611C: A4          and  h
611D: 18 91       jr   $60B0
611F: 6A          ld   l,d
6120: 02          ld   (bc),a
6121: 04          inc  b
6122: 9A          sbc  a,d
6123: 0A          ld   a,(bc)
6124: 81          add  a,c
6125: 00          nop
6126: 82          add  a,d
6127: 02          ld   (bc),a
6128: A0          and  b
6129: 18 03       jr   $612E
612B: 67          ld   h,a
612C: 02          ld   (bc),a
612D: 02          ld   (bc),a
612E: AE          xor  (hl)
612F: 0E 81       ld   c,$81
6131: 00          nop
6132: 82          add  a,d
6133: 03          inc  bc
6134: 9E          sbc  a,(hl)
6135: 18 02       jr   $6139
6137: 62          ld   h,d
6138: 02          ld   (bc),a
6139: 02          ld   (bc),a
613A: 01 18 81    ld   bc,$8118
613D: 00          nop
613E: 83          add  a,e
613F: 02          ld   (bc),a
6140: E3          ex   (sp),hl
6141: 00          nop
6142: 81          add  a,c
6143: 12          ld   (de),a
6144: 82          add  a,d
6145: 00          nop
6146: 82          add  a,d
6147: 13          inc  de
6148: 81          add  a,c
6149: 12          ld   (de),a
614A: 82          add  a,d
614B: 00          nop
614C: 83          add  a,e
614D: 15          dec  d
614E: 82          add  a,d
614F: 00          nop
6150: 83          add  a,e
6151: 15          dec  d
6152: 82          add  a,d
6153: 00          nop
6154: 83          add  a,e
6155: 15          dec  d
6156: 82          add  a,d
6157: 00          nop
6158: 83          add  a,e
6159: 15          dec  d
615A: 82          add  a,d
615B: 00          nop
615C: 83          add  a,e
615D: 15          dec  d
615E: 82          add  a,d
615F: 00          nop
6160: 83          add  a,e
6161: 06 A1       ld   b,$A1
6163: 00          nop
6164: 81          add  a,c
6165: 00          nop
6166: 83          add  a,e
6167: 16 81       ld   d,$81
6169: 00          nop
616A: 83          add  a,e
616B: 16 81       ld   d,$81
616D: 00          nop
616E: 83          add  a,e
616F: 02          ld   (bc),a
6170: 2A 18 04    ld   hl,($0418)
6173: 8F          adc  a,a
6174: 00          nop
6175: 81          add  a,c
6176: 00          nop
6177: 83          add  a,e
6178: 06 28       ld   b,$28
617A: 18 81       jr   $60FD
617C: 00          nop
617D: 83          add  a,e
617E: 06 8B       ld   b,$8B
6180: 00          nop
6181: 81          add  a,c
6182: 00          nop
6183: 84          add  a,h
6184: 14          inc  d
6185: 82          add  a,d
6186: 00          nop
6187: 85          add  a,l
6188: 03          inc  bc
6189: 22 18 82    ld   ($8218),hl
618C: 00          nop
618D: 85          add  a,l
618E: 12          ld   (de),a
618F: 83          add  a,e
6190: 00          nop
6191: 83          add  a,e
6192: 04          inc  b
6193: C1          pop  bc
6194: 00          nop
6195: 83          add  a,e
6196: 00          nop
6197: 83          add  a,e
6198: 05          dec  b
6199: 39          add  hl,sp
619A: 18 82       jr   $611E
619C: 00          nop
619D: 82          add  a,d
619E: 12          ld   (de),a
619F: 91          sub  c
61A0: BD          cp   l
61A1: 00          nop
61A2: 04          inc  b
61A3: 32 18 81    ld   ($8118),a
61A6: 00          nop
61A7: 82          add  a,d
61A8: 12          ld   (de),a
61A9: 05          dec  b
61AA: BC          cp   h
61AB: 00          nop
61AC: 81          add  a,c
61AD: 00          nop
61AE: 82          add  a,d
61AF: 02          ld   (bc),a
61B0: 2C          inc  l
61B1: 18 05       jr   $61B8
61B3: B7          or   a
61B4: 00          nop
61B5: 81          add  a,c
61B6: 00          nop
61B7: 83          add  a,e
61B8: 16 81       ld   d,$81
61BA: 00          nop
61BB: 84          add  a,h
61BC: 15          dec  d
61BD: 81          add  a,c
61BE: 00          nop
61BF: 85          add  a,l
61C0: 13          inc  de
61C1: 82          add  a,d
61C2: 00          nop
61C3: 85          add  a,l
61C4: 13          inc  de
61C5: 82          add  a,d
61C6: 00          nop
61C7: 82          add  a,d
61C8: 02          ld   (bc),a
61C9: 1F          rra
61CA: 01 81 11    ld   bc,$1181
61CD: 84          add  a,h
61CE: 00          nop
61CF: 82          add  a,d
61D0: 14          inc  d
61D1: 84          add  a,h
61D2: 00          nop
61D3: 82          add  a,d
61D4: 15          dec  d
61D5: 83          add  a,e
61D6: 00          nop
61D7: 83          add  a,e
61D8: 15          dec  d
61D9: 82          add  a,d
61DA: 00          nop
61DB: 82          add  a,d
61DC: 16 82       ld   d,$82
61DE: 00          nop
61DF: 82          add  a,d
61E0: 16 82       ld   d,$82
61E2: 00          nop
61E3: 82          add  a,d
61E4: 17          rla
61E5: 81          add  a,c
61E6: 00          nop
61E7: 82          add  a,d
61E8: 17          rla
61E9: 81          add  a,c
61EA: 00          nop
61EB: 82          add  a,d
61EC: 17          rla
61ED: 81          add  a,c
61EE: 00          nop
61EF: 82          add  a,d
61F0: 06 49       ld   b,$49
61F2: 18 82       jr   $6176
61F4: 00          nop
61F5: 82          add  a,d
61F6: 12          ld   (de),a
61F7: 02          ld   (bc),a
61F8: ED          db   $ed
61F9: 00          nop
61FA: 02          ld   (bc),a
61FB: 41          ld   b,c
61FC: 18 82       jr   $6180
61FE: 00          nop
61FF: 82          add  a,d
6200: 12          ld   (de),a
6201: 04          inc  b
6202: EB          ex   de,hl
6203: 00          nop
6204: 82          add  a,d
6205: 00          nop
6206: 84          add  a,h
6207: 13          inc  de
6208: 83          add  a,e
6209: 00          nop
620A: 84          add  a,h
620B: 02          ld   (bc),a
620C: 3D          dec  a
620D: 18 91       jr   $61A0
620F: E4 00 83    call po,$8300
6212: 00          nop
6213: 84          add  a,h
6214: 02          ld   (bc),a
6215: 3B          dec  sp
6216: 18 84       jr   $619C
6218: 00          nop
6219: 8A          adc  a,d
621A: 00          nop
621B: 83          add  a,e
621C: 02          ld   (bc),a
621D: 56          ld   d,(hl)
621E: 01 85 00    ld   bc,$0085
6221: 83          add  a,e
6222: 12          ld   (de),a
6223: 81          add  a,c
6224: 12          ld   (de),a
6225: 82          add  a,d
6226: 00          nop
6227: 83          add  a,e
6228: 16 81       ld   d,$81
622A: 00          nop
622B: 83          add  a,e
622C: 12          ld   (de),a
622D: 02          ld   (bc),a
622E: 5D          ld   e,l
622F: 18 02       jr   $6233
6231: 48          ld   c,b
6232: 01 81 00    ld   bc,$0081
6235: 83          add  a,e
6236: 15          dec  d
6237: 82          add  a,d
6238: 00          nop
6239: 82          add  a,d
623A: 17          rla
623B: 81          add  a,c
623C: 00          nop
623D: 83          add  a,e
623E: 16 81       ld   d,$81
6240: 00          nop
6241: 83          add  a,e
6242: 12          ld   (de),a
6243: 04          inc  b
6244: 73          ld   (hl),e
6245: 18 81       jr   $61C8
6247: 00          nop
6248: 83          add  a,e
6249: 06 5B       ld   b,$5B
624B: 18 81       jr   $61CE
624D: 00          nop
624E: 82          add  a,d
624F: 02          ld   (bc),a
6250: 32 01 05    ld   ($0501),a
6253: 55          ld   d,l
6254: 18 81       jr   $61D7
6256: 00          nop
6257: 82          add  a,d
6258: 02          ld   (bc),a
6259: 30 01       jr   nc,$625C
625B: 05          dec  b
625C: 50          ld   d,b
625D: 18 81       jr   $61E0
625F: 00          nop
6260: 82          add  a,d
6261: 02          ld   (bc),a
6262: 2E 01       ld   l,$01
6264: 02          ld   (bc),a
6265: 4B          ld   c,e
6266: 18 02       jr   $626A
6268: 2C          inc  l
6269: 01 82 00    ld   bc,$0082
626C: 84          add  a,h
626D: 14          inc  d
626E: 82          add  a,d
626F: 00          nop
6270: 84          add  a,h
6271: 14          inc  d
6272: 82          add  a,d
6273: 00          nop
6274: 85          add  a,l
6275: 13          inc  de
6276: 82          add  a,d
6277: 00          nop
6278: 8A          adc  a,d
6279: 00          nop
627A: 83          add  a,e
627B: 02          ld   (bc),a
627C: 9C          sbc  a,h
627D: 01 85 00    ld   bc,$0085
6280: 83          add  a,e
6281: 16 81       ld   d,$81
6283: 00          nop
6284: 83          add  a,e
6285: 16 81       ld   d,$81
6287: 00          nop
6288: 82          add  a,d
6289: 17          rla
628A: 81          add  a,c
628B: 00          nop
628C: 82          add  a,d
628D: 02          ld   (bc),a
628E: 6F          ld   l,a
628F: 18 05       jr   $6296
6291: 87          add  a,a
6292: 01 81 00    ld   bc,$0081
6295: 82          add  a,d
6296: 17          rla
6297: 81          add  a,c
6298: 00          nop
6299: 83          add  a,e
629A: 16 81       ld   d,$81
629C: 00          nop
629D: 81          add  a,c
629E: 14          inc  d
629F: 04          inc  b
62A0: 6D          ld   l,l
62A1: 18 81       jr   $6224
62A3: 00          nop
62A4: 92          sub  d
62A5: 71          ld   (hl),c
62A6: 01 14 00    ld   bc,$0014
62A9: 03          inc  bc
62AA: 70          ld   (hl),b
62AB: 01 04 69    ld   bc,$6904
62AE: 18 81       jr   $6231
62B0: 00          nop
62B1: 05          dec  b
62B2: 6D          ld   l,l
62B3: 01 04 65    ld   bc,$6504
62B6: 18 81       jr   $6239
62B8: 00          nop
62B9: 81          add  a,c
62BA: 02          ld   (bc),a
62BB: 68          ld   l,b
62BC: 01 81 13    ld   bc,$1381
62BF: 02          ld   (bc),a
62C0: 61          ld   h,c
62C1: 18 81       jr   $6244
62C3: 00          nop
62C4: 84          add  a,h
62C5: 04          inc  b
62C6: 63          ld   h,e
62C7: 01 82 00    ld   bc,$0082
62CA: 84          add  a,h
62CB: 14          inc  d
62CC: 82          add  a,d
62CD: 00          nop
62CE: 84          add  a,h
62CF: 14          inc  d
62D0: 82          add  a,d
62D1: 00          nop
62D2: 85          add  a,l
62D3: 11 02 5F    ld   de,$5F02
62D6: 18 82       jr   $625A
62D8: 00          nop
62D9: 8A          adc  a,d
62DA: 00          nop
62DB: 83          add  a,e
62DC: 05          dec  b
62DD: 3E 00       ld   a,$00
62DF: 82          add  a,d
62E0: 00          nop
62E1: 82          add  a,d
62E2: 02          ld   (bc),a
62E3: A6          and  (hl)
62E4: 18 03       jr   $62E9
62E6: 6D          ld   l,l
62E7: 02          ld   (bc),a
62E8: 83          add  a,e
62E9: 00          nop
62EA: 82          add  a,d
62EB: 02          ld   (bc),a
62EC: A4          and  h
62ED: 18 03       jr   $62F2
62EF: 6A          ld   l,d
62F0: 02          ld   (bc),a
62F1: 02          ld   (bc),a
62F2: A2          and  d
62F3: 18 81       jr   $6276
62F5: 00          nop
62F6: 82          add  a,d
62F7: 12          ld   (de),a
62F8: 05          dec  b
62F9: 67          ld   h,a
62FA: 02          ld   (bc),a
62FB: 81          add  a,c
62FC: 00          nop
62FD: 82          add  a,d
62FE: 03          inc  bc
62FF: 9E          sbc  a,(hl)
6300: 18 04       jr   $6306
6302: 62          ld   h,d
6303: 02          ld   (bc),a
6304: 81          add  a,c
6305: 00          nop
6306: 83          add  a,e
6307: 04          inc  b
6308: 09          add  hl,bc
6309: 00          nop
630A: 02          ld   (bc),a
630B: 5E          ld   e,(hl)
630C: 02          ld   (bc),a
630D: 81          add  a,c
630E: 00          nop
630F: 84          add  a,h
6310: 02          ld   (bc),a
6311: 04          inc  b
6312: 00          nop
6313: 03          inc  bc
6314: 5C          ld   e,h
6315: 02          ld   (bc),a
6316: 81          add  a,c
6317: 00          nop
6318: 84          add  a,h
6319: 14          inc  d
631A: 82          add  a,d
631B: 00          nop
631C: 85          add  a,l
631D: 03          inc  bc
631E: 9B          sbc  a,e
631F: 18 82       jr   $62A3
6321: 00          nop
6322: 83          add  a,e
6323: 04          inc  b
6324: 7F          ld   a,a
6325: 02          ld   (bc),a
6326: 91          sub  c
6327: 3A 00 82    ld   a,($8200)
632A: 00          nop
632B: 83          add  a,e
632C: 05          dec  b
632D: 7B          ld   a,e
632E: 02          ld   (bc),a
632F: 82          add  a,d
6330: 00          nop
6331: 83          add  a,e
6332: 12          ld   (de),a
6333: 91          sub  c
6334: 14          inc  d
6335: 00          nop
6336: 02          ld   (bc),a
6337: 74          ld   (hl),h
6338: 02          ld   (bc),a
6339: 91          sub  c
633A: A1          and  c
633B: 18 81       jr   $62BE
633D: 00          nop
633E: 83          add  a,e
633F: 05          dec  b
6340: 72          ld   (hl),d
6341: 02          ld   (bc),a
6342: 91          sub  c
6343: 63          ld   h,e
6344: 02          ld   (bc),a
6345: 81          add  a,c
6346: 00          nop
6347: 83          add  a,e
6348: 04          inc  b
6349: AC          xor  h
634A: 18 02       jr   $634E
634C: 60          ld   h,b
634D: 02          ld   (bc),a
634E: 81          add  a,c
634F: 00          nop
6350: 83          add  a,e
6351: 02          ld   (bc),a
6352: A8          xor  b
6353: 18 02       jr   $6357
6355: 07          rlca
6356: 00          nop
6357: 02          ld   (bc),a
6358: 5E          ld   e,(hl)
6359: 02          ld   (bc),a
635A: 81          add  a,c
635B: 00          nop
635C: 83          add  a,e
635D: 04          inc  b
635E: 9B          sbc  a,e
635F: 02          ld   (bc),a
6360: 91          sub  c
6361: 3A 00 82    ld   a,($8200)
6364: 00          nop
6365: 83          add  a,e
6366: 04          inc  b
6367: BE          cp   (hl)
6368: 18 83       jr   $62ED
636A: 00          nop
636B: 82          add  a,d
636C: 15          dec  d
636D: 02          ld   (bc),a
636E: 97          sub  a
636F: 02          ld   (bc),a
6370: 81          add  a,c
6371: 00          nop
6372: 81          add  a,c
6373: 02          ld   (bc),a
6374: B5          or   l
6375: 18 02       jr   $6379
6377: 95          sub  l
6378: 02          ld   (bc),a
6379: 02          ld   (bc),a
637A: B3          or   e
637B: 18 02       jr   $637F
637D: 93          sub  e
637E: 02          ld   (bc),a
637F: 81          add  a,c
6380: 00          nop
6381: 81          add  a,c
6382: 02          ld   (bc),a
6383: B1          or   c
6384: 18 06       jr   $638C
6386: 91          sub  c
6387: 02          ld   (bc),a
6388: 81          add  a,c
6389: 00          nop
638A: 82          add  a,d
638B: 16 82       ld   d,$82
638D: 00          nop
638E: 84          add  a,h
638F: 13          inc  de
6390: 83          add  a,e
6391: 00          nop
6392: 84          add  a,h
6393: 13          inc  de
6394: 83          add  a,e
6395: 00          nop
6396: 84          add  a,h
6397: 03          inc  bc
6398: AF          xor  a
6399: 18 83       jr   $631E
639B: 00          nop
639C: 84          add  a,h
639D: 02          ld   (bc),a
639E: D9          exx
639F: 02          ld   (bc),a
63A0: 84          add  a,h
63A1: 00          nop
63A2: 84          add  a,h
63A3: 14          inc  d
63A4: 82          add  a,d
63A5: 00          nop
63A6: 84          add  a,h
63A7: 14          inc  d
63A8: 82          add  a,d
63A9: 00          nop
63AA: 84          add  a,h
63AB: 13          inc  de
63AC: 02          ld   (bc),a
63AD: D0          ret  nc
63AE: 18 81       jr   $6331
63B0: 00          nop
63B1: 83          add  a,e
63B2: 06 CC       ld   b,$CC
63B4: 02          ld   (bc),a
63B5: 81          add  a,c
63B6: 00          nop
63B7: 83          add  a,e
63B8: 16 81       ld   d,$81
63BA: 00          nop
63BB: 83          add  a,e
63BC: 16 81       ld   d,$81
63BE: 00          nop
63BF: 82          add  a,d
63C0: 02          ld   (bc),a
63C1: CE 18       adc  a,$18
63C3: 04          inc  b
63C4: BA          cp   d
63C5: 02          ld   (bc),a
63C6: 82          add  a,d
63C7: 00          nop
63C8: 82          add  a,d
63C9: 13          inc  de
63CA: 91          sub  c
63CB: 14          inc  d
63CC: 00          nop
63CD: 03          inc  bc
63CE: B3          or   e
63CF: 02          ld   (bc),a
63D0: 81          add  a,c
63D1: 00          nop
63D2: 82          add  a,d
63D3: 13          inc  de
63D4: 91          sub  c
63D5: 14          inc  d
63D6: 00          nop
63D7: 03          inc  bc
63D8: AD          xor  l
63D9: 02          ld   (bc),a
63DA: 81          add  a,c
63DB: 00          nop
63DC: 82          add  a,d
63DD: 15          dec  d
63DE: 02          ld   (bc),a
63DF: CC 18 81    call z,$8118
63E2: 00          nop
63E3: 82          add  a,d
63E4: 17          rla
63E5: 81          add  a,c
63E6: 00          nop
63E7: 83          add  a,e
63E8: 03          inc  bc
63E9: A5          and  l
63EA: 02          ld   (bc),a
63EB: 02          ld   (bc),a
63EC: C3 18 82    jp   $8218
63EF: 00          nop
63F0: 83          add  a,e
63F1: 04          inc  b
63F2: A2          and  d
63F3: 02          ld   (bc),a
63F4: 83          add  a,e
63F5: 00          nop
63F6: 83          add  a,e
63F7: 13          inc  de
63F8: 84          add  a,h
63F9: 00          nop
63FA: 83          add  a,e
63FB: 03          inc  bc
63FC: C1          pop  bc
63FD: 18 84       jr   $6383
63FF: 00          nop
6400: 83          add  a,e
6401: 04          inc  b
6402: 1C          inc  e
6403: 03          inc  bc
6404: 83          add  a,e
6405: 00          nop
6406: 83          add  a,e
6407: 15          dec  d
6408: 82          add  a,d
6409: 00          nop
640A: 83          add  a,e
640B: 15          dec  d
640C: 82          add  a,d
640D: 00          nop
640E: 83          add  a,e
640F: 15          dec  d
6410: 82          add  a,d
6411: 00          nop
6412: 82          add  a,d
6413: 15          dec  d
6414: 83          add  a,e
6415: 00          nop
6416: 82          add  a,d
6417: 15          dec  d
6418: 83          add  a,e
6419: 00          nop
641A: 82          add  a,d
641B: 15          dec  d
641C: 83          add  a,e
641D: 00          nop
641E: 82          add  a,d
641F: 15          dec  d
6420: 83          add  a,e
6421: 00          nop
6422: 13          inc  de
6423: 04          inc  b
6424: E2 18 83    jp   po,$8318
6427: 00          nop
6428: 03          inc  bc
6429: F2 02 04    jp   p,$0402
642C: DE 18       sbc  a,$18
642E: 83          add  a,e
642F: 00          nop
6430: 02          ld   (bc),a
6431: EF          rst  $28
6432: 02          ld   (bc),a
6433: 03          inc  bc
6434: DA 18 92    jp   c,$9218
6437: 64          ld   h,h
6438: 18 D7       jr   $6411
643A: 18 83       jr   $63BF
643C: 00          nop
643D: 03          inc  bc
643E: ED          db   $ed
643F: 02          ld   (bc),a
6440: 04          inc  b
6441: D6 18       sub  $18
6443: 83          add  a,e
6444: 00          nop
6445: 06 EA       ld   b,$EA
6447: 02          ld   (bc),a
6448: 84          add  a,h
6449: 00          nop
644A: 16 84       ld   d,$84
644C: 00          nop
644D: 82          add  a,d
644E: 14          inc  d
644F: 84          add  a,h
6450: 00          nop
6451: 83          add  a,e
6452: 11 02 D2    ld   de,$D202
6455: 18 84       jr   $63DB
6457: 00          nop
6458: 83          add  a,e
6459: 01 D5 01    ld   bc,$01D5
645C: 86          add  a,(hl)
645D: 00          nop
645E: 82          add  a,d
645F: 15          dec  d
6460: 83          add  a,e
6461: 00          nop
6462: 82          add  a,d
6463: 16 82       ld   d,$82
6465: 00          nop
6466: 83          add  a,e
6467: 15          dec  d
6468: 82          add  a,d
6469: 00          nop
646A: 82          add  a,d
646B: 16 82       ld   d,$82
646D: 00          nop
646E: 82          add  a,d
646F: 17          rla
6470: 81          add  a,c
6471: 00          nop
6472: 82          add  a,d
6473: 15          dec  d
6474: 92          sub  d
6475: 14          inc  d
6476: 00          nop
6477: B2          or   d
6478: 01 81 00    ld   bc,$0081
647B: 82          add  a,d
647C: 07          rlca
647D: B1          or   c
647E: 01 81 00    ld   bc,$0081
6481: 82          add  a,d
6482: 03          inc  bc
6483: 9A          sbc  a,d
6484: 19          add  hl,de
6485: 04          inc  b
6486: AA          xor  d
6487: 01 81 00    ld   bc,$0081
648A: 82          add  a,d
648B: 02          ld   (bc),a
648C: 97          sub  a
648D: 19          add  hl,de
648E: 05          dec  b
648F: A6          and  (hl)
6490: 01 81 00    ld   bc,$0081
6493: 83          add  a,e
6494: 15          dec  d
6495: 82          add  a,d
6496: 00          nop
6497: 84          add  a,h
6498: 03          inc  bc
6499: 95          sub  l
649A: 19          add  hl,de
649B: 83          add  a,e
649C: 00          nop
649D: 83          add  a,e
649E: 02          ld   (bc),a
649F: 1B          dec  de
64A0: 02          ld   (bc),a
64A1: 85          add  a,l
64A2: 00          nop
64A3: 83          add  a,e
64A4: 12          ld   (de),a
64A5: 82          add  a,d
64A6: 12          ld   (de),a
64A7: 81          add  a,c
64A8: 00          nop
64A9: 83          add  a,e
64AA: 16 81       ld   d,$81
64AC: 00          nop
64AD: 83          add  a,e
64AE: 16 81       ld   d,$81
64B0: 00          nop
64B1: 83          add  a,e
64B2: 11 03 80    ld   de,$8003
64B5: 18 02       jr   $64B9
64B7: 08          ex   af,af'
64B8: 02          ld   (bc),a
64B9: 81          add  a,c
64BA: 00          nop
64BB: 83          add  a,e
64BC: 15          dec  d
64BD: 82          add  a,d
64BE: 00          nop
64BF: 83          add  a,e
64C0: 15          dec  d
64C1: 82          add  a,d
64C2: 00          nop
64C3: 83          add  a,e
64C4: 15          dec  d
64C5: 82          add  a,d
64C6: 00          nop
64C7: 82          add  a,d
64C8: 12          ld   (de),a
64C9: 02          ld   (bc),a
64CA: 7D          ld   a,l
64CB: 18 92       jr   $645F
64CD: 64          ld   h,h
64CE: 18 7B       jr   $654B
64D0: 18 82       jr   $6454
64D2: 00          nop
64D3: 82          add  a,d
64D4: 05          dec  b
64D5: F5          push af
64D6: 01 92 64    ld   bc,$6492
64D9: 18 7A       jr   $6555
64DB: 18 81       jr   $645E
64DD: 00          nop
64DE: 82          add  a,d
64DF: 04          inc  b
64E0: F0          ret  p
64E1: 01 03 79    ld   bc,$7903
64E4: 18 81       jr   $6467
64E6: 00          nop
64E7: 83          add  a,e
64E8: 03          inc  bc
64E9: EC 01 02    call pe,$0201
64EC: 76          halt
64ED: 18 82       jr   $6471
64EF: 00          nop
64F0: 83          add  a,e
64F1: 06 E9       ld   b,$E9
64F3: 01 81 00    ld   bc,$0081
64F6: 85          add  a,l
64F7: 14          inc  d
64F8: 81          add  a,c
64F9: 00          nop
64FA: 85          add  a,l
64FB: 14          inc  d
64FC: 81          add  a,c
64FD: 00          nop
64FE: 86          add  a,(hl)
64FF: 12          ld   (de),a
6500: 82          add  a,d
6501: 00          nop
6502: 82          add  a,d
6503: 03          inc  bc
6504: 55          ld   d,l
6505: 02          ld   (bc),a
6506: 82          add  a,d
6507: 11 82 00    ld   de,$0082
650A: 83          add  a,e
650B: 12          ld   (de),a
650C: 81          add  a,c
650D: 13          inc  de
650E: 81          add  a,c
650F: 00          nop
6510: 83          add  a,e
6511: 16 81       ld   d,$81
6513: 00          nop
6514: 83          add  a,e
6515: 14          inc  d
6516: 83          add  a,e
6517: 00          nop
6518: 83          add  a,e
6519: 15          dec  d
651A: 82          add  a,d
651B: 00          nop
651C: 83          add  a,e
651D: 15          dec  d
651E: 82          add  a,d
651F: 00          nop
6520: 83          add  a,e
6521: 15          dec  d
6522: 82          add  a,d
6523: 00          nop
6524: 84          add  a,h
6525: 12          ld   (de),a
6526: 02          ld   (bc),a
6527: 98          sbc  a,b
6528: 18 82       jr   $64AC
652A: 00          nop
652B: 84          add  a,h
652C: 15          dec  d
652D: 81          add  a,c
652E: 00          nop
652F: 83          add  a,e
6530: 02          ld   (bc),a
6531: 31 02 02    ld   sp,$0202
6534: 91          sub  c
6535: 18 92       jr   $64C9
6537: 64          ld   h,h
6538: 18 8F       jr   $64C9
653A: 18 81       jr   $64BD
653C: 00          nop
653D: 83          add  a,e
653E: 03          inc  bc
653F: 2F          cpl
6540: 02          ld   (bc),a
6541: 91          sub  c
6542: 64          ld   h,h
6543: 18 02       jr   $6547
6545: 8E          adc  a,(hl)
6546: 18 81       jr   $64C9
6548: 00          nop
6549: 84          add  a,h
654A: 15          dec  d
654B: 81          add  a,c
654C: 00          nop
654D: 84          add  a,h
654E: 13          inc  de
654F: 91          sub  c
6550: 2C          inc  l
6551: 02          ld   (bc),a
6552: 02          ld   (bc),a
6553: 84          add  a,h
6554: 18 00       jr   $6556
6556: 84          add  a,h
6557: 12          ld   (de),a
6558: 04          inc  b
6559: 2B          dec  hl
655A: 02          ld   (bc),a
655B: 00          nop
655C: 84          add  a,h
655D: 16 00       ld   d,$00
655F: 84          add  a,h
6560: 14          inc  d
6561: 82          add  a,d
6562: 00          nop
6563: 84          add  a,h
6564: 12          ld   (de),a
6565: 84          add  a,h
6566: 00          nop
6567: 83          add  a,e
6568: 04          inc  b
6569: 3C          inc  a
656A: 03          inc  bc
656B: 91          sub  c
656C: 3A 00 82    ld   a,($8200)
656F: 00          nop
6570: 83          add  a,e
6571: 06 38       ld   b,$38
6573: 03          inc  bc
6574: 81          add  a,c
6575: 00          nop
6576: 83          add  a,e
6577: 16 81       ld   d,$81
6579: 00          nop
657A: 83          add  a,e
657B: 15          dec  d
657C: 02          ld   (bc),a
657D: EF          rst  $28
657E: 18 00       jr   $6580
6580: 83          add  a,e
6581: 16 81       ld   d,$81
6583: 00          nop
6584: 83          add  a,e
6585: 15          dec  d
6586: 01 27 03    ld   bc,$0327
6589: 81          add  a,c
658A: 00          nop
658B: 85          add  a,l
658C: 14          inc  d
658D: 81          add  a,c
658E: 00          nop
658F: 86          add  a,(hl)
6590: 13          inc  de
6591: 81          add  a,c
6592: 00          nop
6593: 86          add  a,(hl)
6594: 13          inc  de
6595: 81          add  a,c
6596: 00          nop
6597: 81          add  a,c
6598: 02          ld   (bc),a
6599: 7A          ld   a,d
659A: 03          inc  bc
659B: 83          add  a,e
659C: 11 83 00    ld   de,$0083
659F: 81          add  a,c
65A0: 12          ld   (de),a
65A1: 83          add  a,e
65A2: 12          ld   (de),a
65A3: 82          add  a,d
65A4: 00          nop
65A5: 81          add  a,c
65A6: 17          rla
65A7: 82          add  a,d
65A8: 00          nop
65A9: 82          add  a,d
65AA: 11 03 05    ld   de,$0503
65AD: 19          add  hl,de
65AE: 91          sub  c
65AF: 6B          ld   l,e
65B0: 03          inc  bc
65B1: 83          add  a,e
65B2: 00          nop
65B3: 82          add  a,d
65B4: 02          ld   (bc),a
65B5: 02          ld   (bc),a
65B6: 19          add  hl,de
65B7: 03          inc  bc
65B8: 6A          ld   l,d
65B9: 03          inc  bc
65BA: 83          add  a,e
65BB: 00          nop
65BC: 82          add  a,d
65BD: 15          dec  d
65BE: 83          add  a,e
65BF: 00          nop
65C0: 82          add  a,d
65C1: 15          dec  d
65C2: 83          add  a,e
65C3: 00          nop
65C4: 82          add  a,d
65C5: 17          rla
65C6: 81          add  a,c
65C7: 00          nop
65C8: 81          add  a,c
65C9: 18 81       jr   $654C
65CB: 00          nop
65CC: 81          add  a,c
65CD: 16 02       ld   d,$02
65CF: 00          nop
65D0: 19          add  hl,de
65D1: 81          add  a,c
65D2: 00          nop
65D3: 81          add  a,c
65D4: 03          inc  bc
65D5: 48          ld   c,b
65D6: 03          inc  bc
65D7: 05          dec  b
65D8: FE 18       cp   $18
65DA: 81          add  a,c
65DB: 00          nop
65DC: 83          add  a,e
65DD: 16 81       ld   d,$81
65DF: 00          nop
65E0: 85          add  a,l
65E1: 14          inc  d
65E2: 81          add  a,c
65E3: 00          nop
65E4: 86          add  a,(hl)
65E5: 03          inc  bc
65E6: 45          ld   b,l
65E7: 03          inc  bc
65E8: 81          add  a,c
65E9: 00          nop
65EA: 86          add  a,(hl)
65EB: 13          inc  de
65EC: 81          add  a,c
65ED: 00          nop
65EE: 86          add  a,(hl)
65EF: 13          inc  de
65F0: 81          add  a,c
65F1: 00          nop
65F2: 8A          adc  a,d
65F3: 00          nop
65F4: 83          add  a,e
65F5: 02          ld   (bc),a
65F6: BB          cp   e
65F7: 03          inc  bc
65F8: 82          add  a,d
65F9: 12          ld   (de),a
65FA: 81          add  a,c
65FB: 00          nop
65FC: 82          add  a,d
65FD: 13          inc  de
65FE: 82          add  a,d
65FF: 12          ld   (de),a
6600: 81          add  a,c
6601: 00          nop
6602: 82          add  a,d
6603: 17          rla
6604: 81          add  a,c
6605: 00          nop
6606: 83          add  a,e
6607: 12          ld   (de),a
6608: 02          ld   (bc),a
6609: 16 19       ld   d,$19
660B: 01 A9 03    ld   bc,$03A9
660E: 82          add  a,d
660F: 00          nop
6610: 82          add  a,d
6611: 12          ld   (de),a
6612: 03          inc  bc
6613: 14          inc  d
6614: 19          add  hl,de
6615: 83          add  a,e
6616: 00          nop
6617: 82          add  a,d
6618: 06 A6       ld   b,$A6
661A: 03          inc  bc
661B: 82          add  a,d
661C: 00          nop
661D: 82          add  a,d
661E: 15          dec  d
661F: 83          add  a,e
6620: 00          nop
6621: 82          add  a,d
6622: 15          dec  d
6623: 81          add  a,c
6624: 11 81 00    ld   de,$0081
6627: 81          add  a,c
6628: 03          inc  bc
6629: 95          sub  l
662A: 03          inc  bc
662B: 03          inc  bc
662C: 11 19 02    ld   de,$0219
662F: 92          sub  d
6630: 03          inc  bc
6631: 81          add  a,c
6632: 00          nop
6633: 81          add  a,c
6634: 14          inc  d
6635: 02          ld   (bc),a
6636: 0E 19       ld   c,$19
6638: 02          ld   (bc),a
6639: 8C          adc  a,h
663A: 03          inc  bc
663B: 81          add  a,c
663C: 00          nop
663D: 81          add  a,c
663E: 18 81       jr   $65C1
6640: 00          nop
6641: 82          add  a,d
6642: 02          ld   (bc),a
6643: 0C          inc  c
6644: 19          add  hl,de
6645: 05          dec  b
6646: 82          add  a,d
6647: 03          inc  bc
6648: 81          add  a,c
6649: 00          nop
664A: 82          add  a,d
664B: 03          inc  bc
664C: 0A          ld   a,(bc)
664D: 19          add  hl,de
664E: 03          inc  bc
664F: 7D          ld   a,l
6650: 03          inc  bc
6651: 82          add  a,d
6652: 00          nop
6653: 85          add  a,l
6654: 02          ld   (bc),a
6655: 07          rlca
6656: 19          add  hl,de
6657: 83          add  a,e
6658: 00          nop
6659: 8A          adc  a,d
665A: 00          nop
665B: 8A          adc  a,d
665C: 00          nop
665D: 8A          adc  a,d
665E: 00          nop
665F: 82          add  a,d
6660: 02          ld   (bc),a
6661: E3          ex   (sp),hl
6662: 00          nop
6663: 81          add  a,c
6664: 12          ld   (de),a
6665: 83          add  a,e
6666: 00          nop
6667: 81          add  a,c
6668: 13          inc  de
6669: 81          add  a,c
666A: 12          ld   (de),a
666B: 83          add  a,e
666C: 00          nop
666D: 82          add  a,d
666E: 15          dec  d
666F: 83          add  a,e
6670: 00          nop
6671: 82          add  a,d
6672: 15          dec  d
6673: 83          add  a,e
6674: 00          nop
6675: 82          add  a,d
6676: 15          dec  d
6677: 83          add  a,e
6678: 00          nop
6679: 82          add  a,d
667A: 15          dec  d
667B: 83          add  a,e
667C: 00          nop
667D: 82          add  a,d
667E: 15          dec  d
667F: 83          add  a,e
6680: 00          nop
6681: 82          add  a,d
6682: 14          inc  d
6683: 82          add  a,d
6684: 91          sub  c
6685: 96          sub  (hl)
6686: 03          inc  bc
6687: 81          add  a,c
6688: 00          nop
6689: 82          add  a,d
668A: 05          dec  b
668B: D8          ret  c
668C: 03          inc  bc
668D: 02          ld   (bc),a
668E: 27          daa
668F: 19          add  hl,de
6690: 81          add  a,c
6691: 00          nop
6692: 81          add  a,c
6693: 04          inc  b
6694: D3 03       out  ($03),a
6696: 02          ld   (bc),a
6697: 25          dec  h
6698: 19          add  hl,de
6699: 02          ld   (bc),a
669A: CF          rst  $08
669B: 03          inc  bc
669C: 81          add  a,c
669D: 00          nop
669E: 82          add  a,d
669F: 17          rla
66A0: 81          add  a,c
66A1: 00          nop
66A2: 82          add  a,d
66A3: 02          ld   (bc),a
66A4: 23          inc  hl
66A5: 19          add  hl,de
66A6: 91          sub  c
66A7: 64          ld   h,h
66A8: 18 04       jr   $66AE
66AA: C6 03       add  a,$03
66AC: 81          add  a,c
66AD: 00          nop
66AE: 82          add  a,d
66AF: 06 21       ld   b,$21
66B1: 19          add  hl,de
66B2: 82          add  a,d
66B3: 00          nop
66B4: 84          add  a,h
66B5: 13          inc  de
66B6: 83          add  a,e
66B7: 00          nop
66B8: 84          add  a,h
66B9: 91          sub  c
66BA: C2 03 02    jp   nz,$0203
66BD: 18 19       jr   $66D8
66BF: 83          add  a,e
66C0: 00          nop
66C1: 84          add  a,h
66C2: 03          inc  bc
66C3: C1          pop  bc
66C4: 03          inc  bc
66C5: 83          add  a,e
66C6: 00          nop
66C7: 84          add  a,h
66C8: 13          inc  de
66C9: 83          add  a,e
66CA: 00          nop
66CB: 8A          adc  a,d
66CC: 00          nop
66CD: 81          add  a,c
66CE: 02          ld   (bc),a
66CF: 4E          ld   c,(hl)
66D0: 03          inc  bc
66D1: 91          sub  c
66D2: E2 03 03    jp   po,$0303
66D5: 4B          ld   c,e
66D6: 03          inc  bc
66D7: 02          ld   (bc),a
66D8: 00          nop
66D9: 19          add  hl,de
66DA: 81          add  a,c
66DB: 00          nop
66DC: 81          add  a,c
66DD: 02          ld   (bc),a
66DE: 48          ld   c,b
66DF: 03          inc  bc
66E0: 91          sub  c
66E1: E1          pop  hl
66E2: 03          inc  bc
66E3: 05          dec  b
66E4: FE 18       cp   $18
66E6: 81          add  a,c
66E7: 00          nop
66E8: 83          add  a,e
66E9: 03          inc  bc
66EA: 35          dec  (hl)
66EB: 19          add  hl,de
66EC: 03          inc  bc
66ED: F6 18       or   $18
66EF: 81          add  a,c
66F0: 00          nop
66F1: 83          add  a,e
66F2: 07          rlca
66F3: 32 19 00    ld   ($0019),a
66F6: 85          add  a,l
66F7: 12          ld   (de),a
66F8: 03          inc  bc
66F9: E0          ret  po
66FA: 03          inc  bc
66FB: 00          nop
66FC: 86          add  a,(hl)
66FD: 14          inc  d
66FE: 00          nop
66FF: 87          add  a,a
6700: 02          ld   (bc),a
6701: 29          add  hl,hl
6702: 19          add  hl,de
6703: 91          sub  c
6704: D9          exx
6705: 03          inc  bc
6706: 00          nop
6707: 8A          adc  a,d
6708: 00          nop
6709: 83          add  a,e
670A: 02          ld   (bc),a
670B: 13          inc  de
670C: 04          inc  b
670D: 81          add  a,c
670E: 12          ld   (de),a
670F: 82          add  a,d
6710: 00          nop
6711: 83          add  a,e
6712: 12          ld   (de),a
6713: 81          add  a,c
6714: 13          inc  de
6715: 81          add  a,c
6716: 00          nop
6717: 83          add  a,e
6718: 15          dec  d
6719: 82          add  a,d
671A: 00          nop
671B: 84          add  a,h
671C: 14          inc  d
671D: 82          add  a,d
671E: 00          nop
671F: 84          add  a,h
6720: 14          inc  d
6721: 82          add  a,d
6722: 00          nop
6723: 83          add  a,e
6724: 17          rla
6725: 00          nop
6726: 83          add  a,e
6727: 17          rla
6728: 00          nop
6729: 83          add  a,e
672A: 17          rla
672B: 00          nop
672C: 83          add  a,e
672D: 12          ld   (de),a
672E: 04          inc  b
672F: 53          ld   d,e
6730: 19          add  hl,de
6731: 91          sub  c
6732: E6 03       and  $03
6734: 00          nop
6735: 84          add  a,h
6736: 05          dec  b
6737: 4F          ld   c,a
6738: 19          add  hl,de
6739: 81          add  a,c
673A: 00          nop
673B: 84          add  a,h
673C: 15          dec  d
673D: 81          add  a,c
673E: 00          nop
673F: 84          add  a,h
6740: 15          dec  d
6741: 81          add  a,c
6742: 00          nop
6743: 85          add  a,l
6744: 14          inc  d
6745: 81          add  a,c
6746: 00          nop
6747: 85          add  a,l
6748: 91          sub  c
6749: E5          push hl
674A: 03          inc  bc
674B: 02          ld   (bc),a
674C: 3C          inc  a
674D: 19          add  hl,de
674E: 82          add  a,d
674F: 00          nop
6750: 85          add  a,l
6751: 12          ld   (de),a
6752: 02          ld   (bc),a
6753: E4 03 81    call po,$8103
6756: 00          nop
6757: 85          add  a,l
6758: 03          inc  bc
6759: 38 19       jr   c,$6774
675B: 82          add  a,d
675C: 00          nop
675D: 84          add  a,h
675E: 02          ld   (bc),a
675F: 45          ld   b,l
6760: 04          inc  b
6761: 84          add  a,h
6762: 00          nop
6763: 84          add  a,h
6764: 12          ld   (de),a
6765: 84          add  a,h
6766: 00          nop
6767: 83          add  a,e
6768: 14          inc  d
6769: 83          add  a,e
676A: 00          nop
676B: 82          add  a,d
676C: 14          inc  d
676D: 84          add  a,h
676E: 00          nop
676F: 81          add  a,c
6770: 16 83       ld   d,$83
6772: 00          nop
6773: 81          add  a,c
6774: 17          rla
6775: 82          add  a,d
6776: 00          nop
6777: 81          add  a,c
6778: 19          add  hl,de
6779: 00          nop
677A: 81          add  a,c
677B: 19          add  hl,de
677C: 00          nop
677D: 82          add  a,d
677E: 02          ld   (bc),a
677F: 6A          ld   l,d
6780: 19          add  hl,de
6781: 02          ld   (bc),a
6782: 1A          ld   a,(de)
6783: 04          inc  b
6784: 91          sub  c
6785: 64          ld   h,h
6786: 18 03       jr   $678B
6788: 18 04       jr   $678E
678A: 00          nop
678B: 82          add  a,d
678C: 07          rlca
678D: 68          ld   l,b
678E: 19          add  hl,de
678F: 81          add  a,c
6790: 00          nop
6791: 82          add  a,d
6792: 11 91 43    ld   de,$4391
6795: 19          add  hl,de
6796: 05          dec  b
6797: 60          ld   h,b
6798: 19          add  hl,de
6799: 81          add  a,c
679A: 00          nop
679B: 82          add  a,d
679C: 91          sub  c
679D: 15          dec  d
679E: 04          inc  b
679F: 05          dec  b
67A0: 5B          ld   e,e
67A1: 19          add  hl,de
67A2: 82          add  a,d
67A3: 00          nop
67A4: 82          add  a,d
67A5: 13          inc  de
67A6: 91          sub  c
67A7: 14          inc  d
67A8: 04          inc  b
67A9: 84          add  a,h
67AA: 00          nop
67AB: 8C          adc  a,h
67AC: 00          nop
67AD: 84          add  a,h
67AE: 02          ld   (bc),a
67AF: 7C          ld   a,h
67B0: 04          inc  b
67B1: 86          add  a,(hl)
67B2: 00          nop
67B3: 83          add  a,e
67B4: 13          inc  de
67B5: 83          add  a,e
67B6: 13          inc  de
67B7: 00          nop
67B8: 83          add  a,e
67B9: 19          add  hl,de
67BA: 00          nop
67BB: 83          add  a,e
67BC: 19          add  hl,de
67BD: 00          nop
67BE: 1A          ld   a,(de)
67BF: 82          add  a,d
67C0: 00          nop
67C1: 12          ld   (de),a
67C2: 02          ld   (bc),a
67C3: 6F          ld   l,a
67C4: 19          add  hl,de
67C5: 05          dec  b
67C6: 56          ld   d,(hl)
67C7: 04          inc  b
67C8: 83          add  a,e
67C9: 00          nop
67CA: 14          inc  d
67CB: 91          sub  c
67CC: 64          ld   h,h
67CD: 18 04       jr   $67D3
67CF: 4D          ld   c,l
67D0: 04          inc  b
67D1: 83          add  a,e
67D2: 00          nop
67D3: 82          add  a,d
67D4: 02          ld   (bc),a
67D5: 6D          ld   l,l
67D6: 19          add  hl,de
67D7: 04          inc  b
67D8: 49          ld   c,c
67D9: 04          inc  b
67DA: 84          add  a,h
67DB: 00          nop
67DC: 83          add  a,e
67DD: 91          sub  c
67DE: 6B          ld   l,e
67DF: 19          add  hl,de
67E0: 88          adc  a,b
67E1: 00          nop
67E2: 8C          adc  a,h
67E3: 00          nop
67E4: 84          add  a,h
67E5: 03          inc  bc
67E6: EB          ex   de,hl
67E7: 04          inc  b
67E8: 85          add  a,l
67E9: 00          nop
67EA: 83          add  a,e
67EB: 14          inc  d
67EC: 81          add  a,c
67ED: 13          inc  de
67EE: 81          add  a,c
67EF: 00          nop
67F0: 83          add  a,e
67F1: 18 81       jr   $6774
67F3: 00          nop
67F4: 81          add  a,c
67F5: 1A          ld   a,(de)
67F6: 81          add  a,c
67F7: 00          nop
67F8: 81          add  a,c
67F9: 19          add  hl,de
67FA: 82          add  a,d
67FB: 00          nop
67FC: 81          add  a,c
67FD: 17          rla
67FE: 92          sub  d
67FF: C1          pop  bc
6800: 04          inc  b
6801: BF          cp   a
6802: 04          inc  b
6803: 82          add  a,d
6804: 00          nop
6805: 82          add  a,d
6806: 91          sub  c
6807: BE          cp   (hl)
6808: 04          inc  b
6809: 02          ld   (bc),a
680A: 8F          adc  a,a
680B: 19          add  hl,de
680C: 04          inc  b
680D: BD          cp   l
680E: 04          inc  b
680F: 83          add  a,e
6810: 00          nop
6811: 82          add  a,d
6812: 03          inc  bc
6813: 8D          adc  a,l
6814: 19          add  hl,de
6815: 04          inc  b
6816: B9          cp   c
6817: 04          inc  b
6818: 83          add  a,e
6819: 00          nop
681A: 82          add  a,d
681B: 06 8A       ld   b,$8A
681D: 19          add  hl,de
681E: 84          add  a,h
681F: 00          nop
6820: 82          add  a,d
6821: 03          inc  bc
6822: B5          or   l
6823: 04          inc  b
6824: 82          add  a,d
6825: 12          ld   (de),a
6826: 81          add  a,c
6827: 00          nop
6828: 83          add  a,e
6829: 12          ld   (de),a
682A: 82          add  a,d
682B: 12          ld   (de),a
682C: 81          add  a,c
682D: 00          nop
682E: 82          add  a,d
682F: 17          rla
6830: 81          add  a,c
6831: 00          nop
6832: 19          add  hl,de
6833: 81          add  a,c
6834: 00          nop
6835: 18 82       jr   $67B9
6837: 00          nop
6838: 15          dec  d
6839: 91          sub  c
683A: C1          pop  bc
683B: 04          inc  b
683C: 02          ld   (bc),a
683D: 8F          adc  a,a
683E: 04          inc  b
683F: 82          add  a,d
6840: 00          nop
6841: 81          add  a,c
6842: 17          rla
6843: 82          add  a,d
6844: 00          nop
6845: 82          add  a,d
6846: 02          ld   (bc),a
6847: 84          add  a,h
6848: 19          add  hl,de
6849: 04          inc  b
684A: 86          add  a,(hl)
684B: 04          inc  b
684C: 82          add  a,d
684D: 00          nop
684E: 81          add  a,c
684F: 07          rlca
6850: 82          add  a,d
6851: 19          add  hl,de
6852: 82          add  a,d
6853: 00          nop
6854: 81          add  a,c
6855: 02          ld   (bc),a
6856: 82          add  a,d
6857: 04          inc  b
6858: 91          sub  c
6859: 64          ld   h,h
685A: 18 03       jr   $685F
685C: 7B          ld   a,e
685D: 19          add  hl,de
685E: 83          add  a,e
685F: 00          nop
6860: 81          add  a,c
6861: 02          ld   (bc),a
6862: 80          add  a,b
6863: 04          inc  b
6864: 04          inc  b
6865: 78          ld   a,b
6866: 19          add  hl,de
6867: 83          add  a,e
6868: 00          nop
6869: 81          add  a,c
686A: 02          ld   (bc),a
686B: 7E          ld   a,(hl)
686C: 04          inc  b
686D: 02          ld   (bc),a
686E: 74          ld   (hl),h
686F: 19          add  hl,de
6870: 85          add  a,l
6871: 00          nop
6872: 81          add  a,c
6873: 13          inc  de
6874: 86          add  a,(hl)
6875: 00          nop
6876: F4 E5 0C    call p,$0CE5
6879: 07          rlca
687A: 4D          ld   c,l
687B: 05          dec  b
687C: 38 6A       jr   c,$68E8
687E: 00          nop
687F: F4 E5 07    call p,$07E5
6882: 07          rlca
6883: 4D          ld   c,l
6884: 05          dec  b
6885: 61          ld   h,c
6886: 4D          ld   c,l
6887: 02          ld   (bc),a
6888: 54          ld   d,h
6889: 6A          ld   l,d
688A: 03          inc  bc
688B: 44          ld   b,h
688C: 6A          ld   l,d
688D: 00          nop
688E: F4 E5 07    call p,$07E5
6891: 91          sub  c
6892: 4D          ld   c,l
6893: 05          dec  b
6894: 27          daa
6895: 4D          ld   c,l
6896: 05          dec  b
6897: 38 6A       jr   c,$6903
6899: 00          nop
689A: F4 E5 07    call p,$07E5
689D: 91          sub  c
689E: 4D          ld   c,l
689F: 05          dec  b
68A0: 61          ld   h,c
68A1: 4D          ld   c,l
68A2: 02          ld   (bc),a
68A3: 54          ld   d,h
68A4: 6A          ld   l,d
68A5: 03          inc  bc
68A6: 44          ld   b,h
68A7: 6A          ld   l,d
68A8: 00          nop
68A9: F4 E5 08    call p,$08E5
68AC: 07          rlca
68AD: 4D          ld   c,l
68AE: 04          inc  b
68AF: AF          xor  a
68B0: 4D          ld   c,l
68B1: 03          inc  bc
68B2: 6A          ld   l,d
68B3: 6A          ld   l,d
68B4: 02          ld   (bc),a
68B5: 4A          ld   c,d
68B6: 6A          ld   l,d
68B7: 00          nop
68B8: F4 E5 07    call p,$07E5
68BB: 07          rlca
68BC: 4D          ld   c,l
68BD: 05          dec  b
68BE: FC 4D 01    call m,$014D
68C1: 86          add  a,(hl)
68C2: 6A          ld   l,d
68C3: 04          inc  b
68C4: 3E 6A       ld   a,$6A
68C6: 00          nop
68C7: F4 E5 07    call p,$07E5
68CA: 91          sub  c
68CB: 4D          ld   c,l
68CC: 05          dec  b
68CD: FC 4D 01    call m,$014D
68D0: 86          add  a,(hl)
68D1: 6A          ld   l,d
68D2: 04          inc  b
68D3: 3E 6A       ld   a,$6A
68D5: 00          nop
68D6: F4 E5 07    call p,$07E5
68D9: 89          adc  a,c
68DA: 4E          ld   c,(hl)
68DB: 04          inc  b
68DC: 61          ld   h,c
68DD: 4E          ld   c,(hl)
68DE: 06 91       ld   b,$91
68E0: 6A          ld   l,d
68E1: 00          nop
68E2: F4 E5 0D    call p,$0DE5
68E5: 89          adc  a,c
68E6: 4E          ld   c,(hl)
68E7: 04          inc  b
68E8: BA          cp   d
68E9: 6A          ld   l,d
68EA: 00          nop
68EB: F4 E5 09    call p,$09E5
68EE: D9          exx
68EF: 4E          ld   c,(hl)
68F0: 06 CC       ld   b,$CC
68F2: 6A          ld   l,d
68F3: 02          ld   (bc),a
68F4: 7B          ld   a,e
68F5: 54          ld   d,h
68F6: 00          nop
68F7: F4 E5 0B    call p,$0BE5
68FA: 32 4F 06    ld   ($064F),a
68FD: F8          ret  m
68FE: 6A          ld   l,d
68FF: 00          nop
6900: F4 E5 0A    call p,$0AE5
6903: 93          sub  e
6904: 4F          ld   c,a
6905: 07          rlca
6906: 1A          ld   a,(de)
6907: 6B          ld   l,e
6908: 00          nop
6909: F4 E5 07    call p,$07E5
690C: 07          rlca
690D: 4D          ld   c,l
690E: 05          dec  b
690F: F3          di
6910: 4F          ld   c,a
6911: 02          ld   (bc),a
6912: 4C          ld   c,h
6913: 6B          ld   l,e
6914: 03          inc  bc
6915: 44          ld   b,h
6916: 6A          ld   l,d
6917: 00          nop
6918: F4 E5 07    call p,$07E5
691B: 91          sub  c
691C: 4D          ld   c,l
691D: 05          dec  b
691E: F3          di
691F: 4F          ld   c,a
6920: 02          ld   (bc),a
6921: 4C          ld   c,h
6922: 6B          ld   l,e
6923: 03          inc  bc
6924: 44          ld   b,h
6925: 6A          ld   l,d
6926: 00          nop
6927: F4 E5 07    call p,$07E5
692A: 91          sub  c
692B: 4D          ld   c,l
692C: 05          dec  b
692D: 20 50       jr   nz,$697F
692F: 05          dec  b
6930: 61          ld   h,c
6931: 6B          ld   l,e
6932: 00          nop
6933: F4 E5 07    call p,$07E5
6936: 07          rlca
6937: 4D          ld   c,l
6938: 05          dec  b
6939: 20 50       jr   nz,$698B
693B: 05          dec  b
693C: 61          ld   h,c
693D: 6B          ld   l,e
693E: 00          nop
693F: F4 E5 07    call p,$07E5
6942: 07          rlca
6943: 4D          ld   c,l
6944: 04          inc  b
6945: 61          ld   h,c
6946: 50          ld   d,b
6947: 06 7F       ld   b,$7F
6949: 6B          ld   l,e
694A: 00          nop
694B: F4 E5 07    call p,$07E5
694E: 91          sub  c
694F: 4D          ld   c,l
6950: 04          inc  b
6951: 61          ld   h,c
6952: 50          ld   d,b
6953: 06 7F       ld   b,$7F
6955: 6B          ld   l,e
6956: 00          nop
6957: F4 E5 0B    call p,$0BE5
695A: A5          and  l
695B: 50          ld   d,b
695C: 06 B2       ld   b,$B2
695E: 6B          ld   l,e
695F: 00          nop
6960: F4 E5 0C    call p,$0CE5
6963: 09          add  hl,bc
6964: 51          ld   d,c
6965: 05          dec  b
6966: DF          rst  $18
6967: 6B          ld   l,e
6968: 00          nop
6969: F4 E5 08    call p,$08E5
696C: 60          ld   h,b
696D: 51          ld   d,c
696E: 06 15       ld   b,$15
6970: 6C          ld   l,h
6971: 03          inc  bc
6972: 7B          ld   a,e
6973: 54          ld   d,h
6974: 00          nop
6975: F4 E5 07    call p,$07E5
6978: 91          sub  c
6979: 4D          ld   c,l
697A: 05          dec  b
697B: AC          xor  h
697C: 52          ld   d,d
697D: 05          dec  b
697E: 51          ld   d,c
697F: 6C          ld   l,h
6980: 00          nop
6981: F4 E5 07    call p,$07E5
6984: 89          adc  a,c
6985: 4E          ld   c,(hl)
6986: 05          dec  b
6987: AC          xor  h
6988: 52          ld   d,d
6989: 05          dec  b
698A: 51          ld   d,c
698B: 6C          ld   l,h
698C: 00          nop
698D: F4 E5 0C    call p,$0CE5
6990: E1          pop  hl
6991: 52          ld   d,d
6992: 05          dec  b
6993: 6A          ld   l,d
6994: 6C          ld   l,h
6995: 00          nop
6996: F4 E5 09    call p,$09E5
6999: 38 53       jr   c,$69EE
699B: 08          ex   af,af'
699C: 8B          adc  a,e
699D: 6C          ld   l,h
699E: 00          nop
699F: F4 E5 01    call p,$01E5
69A2: 7B          ld   a,e
69A3: 54          ld   d,h
69A4: 08          ex   af,af'
69A5: 89          adc  a,c
69A6: 4E          ld   c,(hl)
69A7: 01 5C 53    ld   bc,$535C
69AA: 07          rlca
69AB: 8B          adc  a,e
69AC: 6C          ld   l,h
69AD: 00          nop
69AE: F4 E5 07    call p,$07E5
69B1: 89          adc  a,c
69B2: 4E          ld   c,(hl)
69B3: 05          dec  b
69B4: 80          add  a,b
69B5: 53          ld   d,e
69B6: 05          dec  b
69B7: BD          cp   l
69B8: 6C          ld   l,h
69B9: 00          nop
69BA: F4 E5 07    call p,$07E5
69BD: 91          sub  c
69BE: 4D          ld   c,l
69BF: 05          dec  b
69C0: 80          add  a,b
69C1: 53          ld   d,e
69C2: 05          dec  b
69C3: BD          cp   l
69C4: 6C          ld   l,h
69C5: 00          nop
69C6: F4 E5 0B    call p,$0BE5
69C9: E1          pop  hl
69CA: 52          ld   d,d
69CB: 01 BC 53    ld   bc,$53BC
69CE: 05          dec  b
69CF: DE 6C       sbc  a,$6C
69D1: 00          nop
69D2: F4 E5 0C    call p,$0CE5
69D5: D2 53 05    jp   nc,$0553
69D8: F6 6C       or   $6C
69DA: 00          nop
69DB: F4 E5 0A    call p,$0AE5
69DE: 31 54 04    ld   sp,$0454
69E1: 20 6D       jr   nz,$6A50
69E3: 03          inc  bc
69E4: 7B          ld   a,e
69E5: 54          ld   d,h
69E6: 00          nop
69E7: F8          ret  m
69E8: E5          push hl
69E9: 07          rlca
69EA: 83          add  a,e
69EB: 54          ld   d,h
69EC: 03          inc  bc
69ED: 4A          ld   c,d
69EE: 6D          ld   l,l
69EF: 07          rlca
69F0: B6          or   (hl)
69F1: 54          ld   d,h
69F2: 00          nop
69F3: F8          ret  m
69F4: E5          push hl
69F5: 08          ex   af,af'
69F6: C4 54 04    call nz,$0454
69F9: 65          ld   h,l
69FA: 6D          ld   l,l
69FB: 05          dec  b
69FC: B6          or   (hl)
69FD: 54          ld   d,h
69FE: 00          nop
69FF: F4 E5 09    call p,$09E5
6A02: 10 55       djnz $6A59
6A04: 05          dec  b
6A05: 8A          adc  a,d
6A06: 6D          ld   l,l
6A07: 03          inc  bc
6A08: 7B          ld   a,e
6A09: 54          ld   d,h
6A0A: 00          nop
6A0B: F4 E5 08    call p,$08E5
6A0E: 07          rlca
6A0F: 4D          ld   c,l
6A10: 04          inc  b
6A11: AF          xor  a
6A12: 4D          ld   c,l
6A13: 05          dec  b
6A14: 38 6A       jr   c,$6A80
6A16: 00          nop
6A17: F4 E5 08    call p,$08E5
6A1A: 07          rlca
6A1B: 4D          ld   c,l
6A1C: 04          inc  b
6A1D: 5E          ld   e,(hl)
6A1E: 55          ld   d,l
6A1F: 01 B0 6D    ld   bc,$6DB0
6A22: 04          inc  b
6A23: 3E 6A       ld   a,$6A
6A25: 00          nop
6A26: F4 E5 07    call p,$07E5
6A29: 91          sub  c
6A2A: 4D          ld   c,l
6A2B: 01 91 55    ld   bc,$5591
6A2E: 04          inc  b
6A2F: 5E          ld   e,(hl)
6A30: 55          ld   d,l
6A31: 01 B0 6D    ld   bc,$6DB0
6A34: 04          inc  b
6A35: 3E 6A       ld   a,$6A
6A37: 00          nop
6A38: 84          add  a,h
6A39: 03          inc  bc
6A3A: 3E 11       ld   a,$11
6A3C: 83          add  a,e
6A3D: 00          nop
6A3E: 84          add  a,h
6A3F: 03          inc  bc
6A40: 3B          dec  sp
6A41: 11 83 00    ld   de,$0083
6A44: 84          add  a,h
6A45: 03          inc  bc
6A46: 38 11       jr   c,$6A59
6A48: 83          add  a,e
6A49: 00          nop
6A4A: 84          add  a,h
6A4B: 04          inc  b
6A4C: 35          dec  (hl)
6A4D: 11 82 00    ld   de,$0082
6A50: 84          add  a,h
6A51: 13          inc  de
6A52: 83          add  a,e
6A53: 00          nop
6A54: 83          add  a,e
6A55: 02          ld   (bc),a
6A56: 3E 05       ld   a,$05
6A58: 02          ld   (bc),a
6A59: 43          ld   b,e
6A5A: 11 01 3A    ld   de,$3A01
6A5D: 05          dec  b
6A5E: 82          add  a,d
6A5F: 00          nop
6A60: 83          add  a,e
6A61: 11 03 41    ld   de,$4103
6A64: 11 91 35    ld   de,$3591
6A67: 05          dec  b
6A68: 82          add  a,d
6A69: 00          nop
6A6A: 84          add  a,h
6A6B: 93          sub  e
6A6C: 3E 11       ld   a,$11
6A6E: 8D          adc  a,l
6A6F: 12          ld   (de),a
6A70: 3C          inc  a
6A71: 11 83 00    ld   de,$0083
6A74: 84          add  a,h
6A75: 91          sub  c
6A76: 3B          dec  sp
6A77: 11 02 8C    ld   de,$8C02
6A7A: 12          ld   (de),a
6A7B: 83          add  a,e
6A7C: 00          nop
6A7D: 84          add  a,h
6A7E: 91          sub  c
6A7F: 38 11       jr   c,$6A92
6A81: 02          ld   (bc),a
6A82: 8A          adc  a,d
6A83: 12          ld   (de),a
6A84: 83          add  a,e
6A85: 00          nop
6A86: 84          add  a,h
6A87: 02          ld   (bc),a
6A88: 3E 11       ld   a,$11
6A8A: 92          sub  d
6A8B: 87          add  a,a
6A8C: 12          ld   (de),a
6A8D: 3D          dec  a
6A8E: 08          ex   af,af'
6A8F: 82          add  a,d
6A90: 00          nop
6A91: 83          add  a,e
6A92: 02          ld   (bc),a
6A93: CA 05 02    jp   z,$0205
6A96: 7C          ld   a,h
6A97: 11 01 C6    ld   de,$C601
6A9A: 05          dec  b
6A9B: 82          add  a,d
6A9C: 00          nop
6A9D: 83          add  a,e
6A9E: 11 03 7A    ld   de,$7A03
6AA1: 11 83 00    ld   de,$0083
6AA4: 84          add  a,h
6AA5: 13          inc  de
6AA6: 83          add  a,e
6AA7: 00          nop
6AA8: 83          add  a,e
6AA9: 15          dec  d
6AAA: 82          add  a,d
6AAB: 00          nop
6AAC: 84          add  a,h
6AAD: 11 91 7A    ld   de,$7A91
6AB0: 05          dec  b
6AB1: 02          ld   (bc),a
6AB2: 6E          ld   l,(hl)
6AB3: 11 82 00    ld   de,$0082
6AB6: 84          add  a,h
6AB7: 13          inc  de
6AB8: 83          add  a,e
6AB9: 00          nop
6ABA: 85          add  a,l
6ABB: 03          inc  bc
6ABC: 69          ld   l,c
6ABD: 11 82 00    ld   de,$0082
6AC0: 85          add  a,l
6AC1: 14          inc  d
6AC2: 81          add  a,c
6AC3: 00          nop
6AC4: 85          add  a,l
6AC5: 14          inc  d
6AC6: 81          add  a,c
6AC7: 00          nop
6AC8: 85          add  a,l
6AC9: 14          inc  d
6ACA: 81          add  a,c
6ACB: 00          nop
6ACC: 82          add  a,d
6ACD: 02          ld   (bc),a
6ACE: FC 19 03    call m,$0319
6AD1: C3 11 83    jp   $8311
6AD4: 00          nop
6AD5: 82          add  a,d
6AD6: 02          ld   (bc),a
6AD7: F7          rst  $30
6AD8: 19          add  hl,de
6AD9: 03          inc  bc
6ADA: C0          ret  nz
6ADB: 11 83 00    ld   de,$0083
6ADE: 83          add  a,e
6ADF: 14          inc  d
6AE0: 83          add  a,e
6AE1: 00          nop
6AE2: 83          add  a,e
6AE3: 14          inc  d
6AE4: 83          add  a,e
6AE5: 00          nop
6AE6: 83          add  a,e
6AE7: 94          sub  h
6AE8: B5          or   l
6AE9: 11 7A 05    ld   de,$057A
6AEC: 7A          ld   a,d
6AED: 05          dec  b
6AEE: B4          or   h
6AEF: 11 83 00    ld   de,$0083
6AF2: 84          add  a,h
6AF3: 02          ld   (bc),a
6AF4: B3          or   e
6AF5: 11 84 00    ld   de,$0084
6AF8: 82          add  a,d
6AF9: 02          ld   (bc),a
6AFA: 27          daa
6AFB: 07          rlca
6AFC: 03          inc  bc
6AFD: D5          push de
6AFE: 11 83 00    ld   de,$0083
6B01: 84          add  a,h
6B02: 14          inc  d
6B03: 82          add  a,d
6B04: 00          nop
6B05: 84          add  a,h
6B06: 14          inc  d
6B07: 82          add  a,d
6B08: 00          nop
6B09: 84          add  a,h
6B0A: 12          ld   (de),a
6B0B: 92          sub  d
6B0C: 7A          ld   a,d
6B0D: 05          dec  b
6B0E: C8          ret  z
6B0F: 11 82 00    ld   de,$0082
6B12: 84          add  a,h
6B13: 04          inc  b
6B14: C7          rst  $00
6B15: 11 82 00    ld   de,$0082
6B18: 8A          adc  a,d
6B19: 00          nop
6B1A: 81          add  a,c
6B1B: 02          ld   (bc),a
6B1C: 68          ld   l,b
6B1D: 07          rlca
6B1E: 82          add  a,d
6B1F: 11 02 E6    ld   de,$E602
6B22: 11 91 63    ld   de,$6391
6B25: 07          rlca
6B26: 81          add  a,c
6B27: 00          nop
6B28: 84          add  a,h
6B29: 05          dec  b
6B2A: E4 11 81    call po,$8111
6B2D: 00          nop
6B2E: 84          add  a,h
6B2F: 13          inc  de
6B30: 92          sub  d
6B31: 7A          ld   a,d
6B32: 05          dec  b
6B33: DC 11 81    call c,$8111
6B36: 00          nop
6B37: 85          add  a,l
6B38: 02          ld   (bc),a
6B39: DB 11       in   a,($11)
6B3B: 92          sub  d
6B3C: 7A          ld   a,d
6B3D: 05          dec  b
6B3E: D9          exx
6B3F: 11 81 00    ld   de,$0081
6B42: 85          add  a,l
6B43: 03          inc  bc
6B44: D8          ret  c
6B45: 11 82 00    ld   de,$0082
6B48: 8A          adc  a,d
6B49: 00          nop
6B4A: 8A          adc  a,d
6B4B: 00          nop
6B4C: 83          add  a,e
6B4D: 91          sub  c
6B4E: 6E          ld   l,(hl)
6B4F: 05          dec  b
6B50: 03          inc  bc
6B51: 49          ld   c,c
6B52: 11 91 6A    ld   de,$6A91
6B55: 05          dec  b
6B56: 82          add  a,d
6B57: 00          nop
6B58: 84          add  a,h
6B59: 03          inc  bc
6B5A: 46          ld   b,(hl)
6B5B: 11 91 66    ld   de,$6691
6B5E: 05          dec  b
6B5F: 82          add  a,d
6B60: 00          nop
6B61: 84          add  a,h
6B62: 91          sub  c
6B63: B6          or   (hl)
6B64: 19          add  hl,de
6B65: 02          ld   (bc),a
6B66: 5A          ld   e,d
6B67: 11 91 85    ld   de,$8591
6B6A: 05          dec  b
6B6B: 82          add  a,d
6B6C: 00          nop
6B6D: 84          add  a,h
6B6E: 03          inc  bc
6B6F: 58          ld   e,b
6B70: 11 83 00    ld   de,$0083
6B73: 84          add  a,h
6B74: 14          inc  d
6B75: 82          add  a,d
6B76: 00          nop
6B77: 84          add  a,h
6B78: 14          inc  d
6B79: 82          add  a,d
6B7A: 00          nop
6B7B: 84          add  a,h
6B7C: 14          inc  d
6B7D: 82          add  a,d
6B7E: 00          nop
6B7F: 81          add  a,c
6B80: 04          inc  b
6B81: 46          ld   b,(hl)
6B82: 06 03       ld   b,$03
6B84: A0          and  b
6B85: 11 82 00    ld   de,$0082
6B88: 82          add  a,d
6B89: 03          inc  bc
6B8A: 41          ld   b,c
6B8B: 06 03       ld   b,$03
6B8D: 9D          sbc  a,l
6B8E: 11 82 00    ld   de,$0082
6B91: 85          add  a,l
6B92: 14          inc  d
6B93: 81          add  a,c
6B94: 00          nop
6B95: 84          add  a,h
6B96: 11 91 7A    ld   de,$7A91
6B99: 05          dec  b
6B9A: 03          inc  bc
6B9B: 95          sub  l
6B9C: 11 81 00    ld   de,$0081
6B9F: 84          add  a,h
6BA0: 11 94 7A    ld   de,$7A94
6BA3: 05          dec  b
6BA4: 7A          ld   a,d
6BA5: 05          dec  b
6BA6: 7A          ld   a,d
6BA7: 05          dec  b
6BA8: 91          sub  c
6BA9: 11 81 00    ld   de,$0081
6BAC: 85          add  a,l
6BAD: 03          inc  bc
6BAE: 90          sub  b
6BAF: 11 82 00    ld   de,$0082
6BB2: 83          add  a,e
6BB3: 02          ld   (bc),a
6BB4: 8D          adc  a,l
6BB5: 11 03 BC    ld   de,$BC03
6BB8: 19          add  hl,de
6BB9: 82          add  a,d
6BBA: 00          nop
6BBB: 83          add  a,e
6BBC: 03          inc  bc
6BBD: 8B          adc  a,e
6BBE: 11 02 E1    ld   de,$E102
6BC1: 19          add  hl,de
6BC2: 82          add  a,d
6BC3: 00          nop
6BC4: 83          add  a,e
6BC5: 03          inc  bc
6BC6: 88          adc  a,b
6BC7: 11 84 00    ld   de,$0084
6BCA: 82          add  a,d
6BCB: 14          inc  d
6BCC: 84          add  a,h
6BCD: 00          nop
6BCE: 82          add  a,d
6BCF: 11 93 7A    ld   de,$7A93
6BD2: 05          dec  b
6BD3: 7A          ld   a,d
6BD4: 05          dec  b
6BD5: 80          add  a,b
6BD6: 11 84 00    ld   de,$0084
6BD9: 83          add  a,e
6BDA: 03          inc  bc
6BDB: 7F          ld   a,a
6BDC: 11 84 00    ld   de,$0084
6BDF: 03          inc  bc
6BE0: AD          xor  l
6BE1: 06 81       ld   b,$81
6BE3: 03          inc  bc
6BE4: B1          or   c
6BE5: 11 83 00    ld   de,$0083
6BE8: 03          inc  bc
6BE9: A7          and  a
6BEA: 06 03       ld   b,$03
6BEC: AE          xor  (hl)
6BED: 11 92 7A    ld   de,$7A92
6BF0: 05          dec  b
6BF1: AB          xor  e
6BF2: 11 82 00    ld   de,$0082
6BF5: 81          add  a,c
6BF6: 91          sub  c
6BF7: A0          and  b
6BF8: 06 81       ld   b,$81
6BFA: 03          inc  bc
6BFB: AA          xor  d
6BFC: 11 92 7A    ld   de,$7A92
6BFF: 05          dec  b
6C00: A7          and  a
6C01: 11 82 00    ld   de,$0082
6C04: 84          add  a,h
6C05: 02          ld   (bc),a
6C06: A6          and  (hl)
6C07: 11 92 7A    ld   de,$7A92
6C0A: 05          dec  b
6C0B: A4          and  h
6C0C: 11 82 00    ld   de,$0082
6C0F: 84          add  a,h
6C10: 03          inc  bc
6C11: A3          and  e
6C12: 11 83 00    ld   de,$0083
6C15: 82          add  a,d
6C16: 03          inc  bc
6C17: CC 19 91    call z,$9119
6C1A: 07          rlca
6C1B: 12          ld   (de),a
6C1C: 02          ld   (bc),a
6C1D: 11 06 82    ld   de,$8206
6C20: 00          nop
6C21: 82          add  a,d
6C22: 12          ld   (de),a
6C23: 03          inc  bc
6C24: 06 12       ld   b,$12
6C26: 01 0A 06    ld   bc,$060A
6C29: 82          add  a,d
6C2A: 00          nop
6C2B: 83          add  a,e
6C2C: 11 03 03    ld   de,$0303
6C2F: 12          ld   (de),a
6C30: 01 05 06    ld   bc,$0605
6C33: 82          add  a,d
6C34: 00          nop
6C35: 83          add  a,e
6C36: 11 03 00    ld   de,$0003
6C39: 12          ld   (de),a
6C3A: 91          sub  c
6C3B: 00          nop
6C3C: 06 82       ld   b,$82
6C3E: 00          nop
6C3F: 84          add  a,h
6C40: 94          sub  h
6C41: FD          db   $fd
6C42: 11 7A 05    ld   de,$057A
6C45: 7A          ld   a,d
6C46: 05          dec  b
6C47: FC 11 82    call m,$8211
6C4A: 00          nop
6C4B: 84          add  a,h
6C4C: 03          inc  bc
6C4D: FB          ei
6C4E: 11 83 00    ld   de,$0083
6C51: 83          add  a,e
6C52: 02          ld   (bc),a
6C53: 36 1A       ld   (hl),$1A
6C55: 03          inc  bc
6C56: F8          ret  m
6C57: 11 82 00    ld   de,$0082
6C5A: 85          add  a,l
6C5B: 13          inc  de
6C5C: 82          add  a,d
6C5D: 00          nop
6C5E: 85          add  a,l
6C5F: 14          inc  d
6C60: 81          add  a,c
6C61: 00          nop
6C62: 85          add  a,l
6C63: 14          inc  d
6C64: 81          add  a,c
6C65: 00          nop
6C66: 85          add  a,l
6C67: 14          inc  d
6C68: 81          add  a,c
6C69: 00          nop
6C6A: 85          add  a,l
6C6B: 04          inc  b
6C6C: 86          add  a,(hl)
6C6D: 12          ld   (de),a
6C6E: 81          add  a,c
6C6F: 00          nop
6C70: 85          add  a,l
6C71: 15          dec  d
6C72: 00          nop
6C73: 85          add  a,l
6C74: 13          inc  de
6C75: 92          sub  d
6C76: 7A          ld   a,d
6C77: 05          dec  b
6C78: 7A          ld   a,d
6C79: 12          ld   (de),a
6C7A: 00          nop
6C7B: 86          add  a,(hl)
6C7C: 02          ld   (bc),a
6C7D: 79          ld   a,c
6C7E: 12          ld   (de),a
6C7F: 92          sub  d
6C80: 7A          ld   a,d
6C81: 05          dec  b
6C82: 77          ld   (hl),a
6C83: 12          ld   (de),a
6C84: 00          nop
6C85: 86          add  a,(hl)
6C86: 03          inc  bc
6C87: 76          halt
6C88: 12          ld   (de),a
6C89: 81          add  a,c
6C8A: 00          nop
6C8B: 82          add  a,d
6C8C: 03          inc  bc
6C8D: E9          jp   (hl)
6C8E: 07          rlca
6C8F: 02          ld   (bc),a
6C90: 1C          inc  e
6C91: 12          ld   (de),a
6C92: 02          ld   (bc),a
6C93: E4 07 81    call po,$8107
6C96: 00          nop
6C97: 82          add  a,d
6C98: 12          ld   (de),a
6C99: 03          inc  bc
6C9A: 1A          ld   a,(de)
6C9B: 12          ld   (de),a
6C9C: 02          ld   (bc),a
6C9D: DD          db   $dd
6C9E: 07          rlca
6C9F: 81          add  a,c
6CA0: 00          nop
6CA1: 83          add  a,e
6CA2: 11 04 17    ld   de,$1704
6CA5: 12          ld   (de),a
6CA6: 82          add  a,d
6CA7: 00          nop
6CA8: 83          add  a,e
6CA9: 91          sub  c
6CAA: D6 07       sub  $07
6CAC: 04          inc  b
6CAD: 13          inc  de
6CAE: 12          ld   (de),a
6CAF: 82          add  a,d
6CB0: 00          nop
6CB1: 84          add  a,h
6CB2: 14          inc  d
6CB3: 82          add  a,d
6CB4: 00          nop
6CB5: 84          add  a,h
6CB6: 14          inc  d
6CB7: 82          add  a,d
6CB8: 00          nop
6CB9: 8A          adc  a,d
6CBA: 00          nop
6CBB: 8A          adc  a,d
6CBC: 00          nop
6CBD: 84          add  a,h
6CBE: 93          sub  e
6CBF: 2E 12       ld   l,$12
6CC1: B4          or   h
6CC2: 07          rlca
6CC3: 2D          dec  l
6CC4: 12          ld   (de),a
6CC5: 83          add  a,e
6CC6: 00          nop
6CC7: 83          add  a,e
6CC8: 05          dec  b
6CC9: 2C          inc  l
6CCA: 12          ld   (de),a
6CCB: 82          add  a,d
6CCC: 00          nop
6CCD: 83          add  a,e
6CCE: 14          inc  d
6CCF: 83          add  a,e
6CD0: 00          nop
6CD1: 83          add  a,e
6CD2: 91          sub  c
6CD3: 7A          ld   a,d
6CD4: 05          dec  b
6CD5: 03          inc  bc
6CD6: 23          inc  hl
6CD7: 12          ld   (de),a
6CD8: 83          add  a,e
6CD9: 00          nop
6CDA: 83          add  a,e
6CDB: 14          inc  d
6CDC: 83          add  a,e
6CDD: 00          nop
6CDE: 85          add  a,l
6CDF: 05          dec  b
6CE0: 3E 12       ld   a,$12
6CE2: 00          nop
6CE3: 85          add  a,l
6CE4: 15          dec  d
6CE5: 00          nop
6CE6: 85          add  a,l
6CE7: 11 91 7A    ld   de,$7A91
6CEA: 05          dec  b
6CEB: 02          ld   (bc),a
6CEC: 33          inc  sp
6CED: 12          ld   (de),a
6CEE: 81          add  a,c
6CEF: 00          nop
6CF0: 85          add  a,l
6CF1: 13          inc  de
6CF2: 82          add  a,d
6CF3: 00          nop
6CF4: 8A          adc  a,d
6CF5: 00          nop
6CF6: 85          add  a,l
6CF7: 02          ld   (bc),a
6CF8: 4E          ld   c,(hl)
6CF9: 1A          ld   a,(de)
6CFA: 01 4A 12    ld   bc,$124A
6CFD: 82          add  a,d
6CFE: 00          nop
6CFF: 85          add  a,l
6D00: 13          inc  de
6D01: 82          add  a,d
6D02: 00          nop
6D03: 84          add  a,h
6D04: 11 93 7A    ld   de,$7A93
6D07: 05          dec  b
6D08: 7A          ld   a,d
6D09: 05          dec  b
6D0A: 45          ld   b,l
6D0B: 12          ld   (de),a
6D0C: 82          add  a,d
6D0D: 00          nop
6D0E: 84          add  a,h
6D0F: 94          sub  h
6D10: 44          ld   b,h
6D11: 12          ld   (de),a
6D12: 7A          ld   a,d
6D13: 05          dec  b
6D14: 7A          ld   a,d
6D15: 05          dec  b
6D16: 43          ld   b,e
6D17: 12          ld   (de),a
6D18: 82          add  a,d
6D19: 00          nop
6D1A: 84          add  a,h
6D1B: 04          inc  b
6D1C: 42          ld   b,d
6D1D: 12          ld   (de),a
6D1E: 82          add  a,d
6D1F: 00          nop
6D20: 81          add  a,c
6D21: 03          inc  bc
6D22: 73          ld   (hl),e
6D23: 12          ld   (de),a
6D24: 91          sub  c
6D25: 64          ld   h,h
6D26: 18 04       jr   $6D2C
6D28: 66          ld   h,(hl)
6D29: 1A          ld   a,(de)
6D2A: 81          add  a,c
6D2B: 00          nop
6D2C: 81          add  a,c
6D2D: 92          sub  d
6D2E: 70          ld   (hl),b
6D2F: 12          ld   (de),a
6D30: 7A          ld   a,d
6D31: 05          dec  b
6D32: 02          ld   (bc),a
6D33: 6F          ld   l,a
6D34: 12          ld   (de),a
6D35: 02          ld   (bc),a
6D36: 62          ld   h,d
6D37: 1A          ld   a,(de)
6D38: 83          add  a,e
6D39: 00          nop
6D3A: 81          add  a,c
6D3B: 93          sub  e
6D3C: 6D          ld   l,l
6D3D: 12          ld   (de),a
6D3E: 7A          ld   a,d
6D3F: 05          dec  b
6D40: 7A          ld   a,d
6D41: 05          dec  b
6D42: 86          add  a,(hl)
6D43: 00          nop
6D44: 81          add  a,c
6D45: 03          inc  bc
6D46: 6C          ld   l,h
6D47: 12          ld   (de),a
6D48: 86          add  a,(hl)
6D49: 00          nop
6D4A: 81          add  a,c
6D4B: 91          sub  c
6D4C: 0C          inc  c
6D4D: 09          add  hl,bc
6D4E: 02          ld   (bc),a
6D4F: 69          ld   l,c
6D50: 12          ld   (de),a
6D51: 04          inc  b
6D52: 09          add  hl,bc
6D53: 09          add  hl,bc
6D54: 84          add  a,h
6D55: 00          nop
6D56: 82          add  a,d
6D57: 03          inc  bc
6D58: 67          ld   h,a
6D59: 12          ld   (de),a
6D5A: 03          inc  bc
6D5B: 02          ld   (bc),a
6D5C: 09          add  hl,bc
6D5D: 84          add  a,h
6D5E: 00          nop
6D5F: 82          add  a,d
6D60: 03          inc  bc
6D61: 64          ld   h,h
6D62: 12          ld   (de),a
6D63: 87          add  a,a
6D64: 00          nop
6D65: 83          add  a,e
6D66: 91          sub  c
6D67: 61          ld   h,c
6D68: 12          ld   (de),a
6D69: 02          ld   (bc),a
6D6A: 85          add  a,l
6D6B: 1A          ld   a,(de)
6D6C: 02          ld   (bc),a
6D6D: 71          ld   (hl),c
6D6E: 09          add  hl,bc
6D6F: 84          add  a,h
6D70: 00          nop
6D71: 83          add  a,e
6D72: 03          inc  bc
6D73: 60          ld   h,b
6D74: 12          ld   (de),a
6D75: 91          sub  c
6D76: 6C          ld   l,h
6D77: 09          add  hl,bc
6D78: 85          add  a,l
6D79: 00          nop
6D7A: 83          add  a,e
6D7B: 93          sub  e
6D7C: 5D          ld   e,l
6D7D: 12          ld   (de),a
6D7E: 7A          ld   a,d
6D7F: 05          dec  b
6D80: 5C          ld   e,h
6D81: 12          ld   (de),a
6D82: 86          add  a,(hl)
6D83: 00          nop
6D84: 83          add  a,e
6D85: 02          ld   (bc),a
6D86: 5B          ld   e,e
6D87: 12          ld   (de),a
6D88: 87          add  a,a
6D89: 00          nop
6D8A: 82          add  a,d
6D8B: 02          ld   (bc),a
6D8C: 59          ld   e,c
6D8D: 12          ld   (de),a
6D8E: 03          inc  bc
6D8F: 79          ld   a,c
6D90: 1A          ld   a,(de)
6D91: 83          add  a,e
6D92: 00          nop
6D93: 81          add  a,c
6D94: 03          inc  bc
6D95: 57          ld   d,a
6D96: 12          ld   (de),a
6D97: 02          ld   (bc),a
6D98: 76          halt
6D99: 1A          ld   a,(de)
6D9A: 84          add  a,h
6D9B: 00          nop
6D9C: 04          inc  b
6D9D: 54          ld   d,h
6D9E: 12          ld   (de),a
6D9F: 86          add  a,(hl)
6DA0: 00          nop
6DA1: 11 93 7A    ld   de,$7A93
6DA4: 05          dec  b
6DA5: 7A          ld   a,d
6DA6: 05          dec  b
6DA7: 4F          ld   c,a
6DA8: 12          ld   (de),a
6DA9: 86          add  a,(hl)
6DAA: 00          nop
6DAB: 04          inc  b
6DAC: 4E          ld   c,(hl)
6DAD: 12          ld   (de),a
6DAE: 86          add  a,(hl)
6DAF: 00          nop
6DB0: 84          add  a,h
6DB1: 02          ld   (bc),a
6DB2: 3E 11       ld   a,$11
6DB4: 92          sub  d
6DB5: 88          adc  a,b
6DB6: 12          ld   (de),a
6DB7: 4E          ld   c,(hl)
6DB8: 08          ex   af,af'
6DB9: 82          add  a,d
6DBA: 00          nop
6DBB: F4 E5 06    call p,$06E5
6DBE: EB          ex   de,hl
6DBF: 56          ld   d,(hl)
6DC0: 05          dec  b
6DC1: B4          or   h
6DC2: 56          ld   d,(hl)
6DC3: 05          dec  b
6DC4: 41          ld   b,c
6DC5: 6F          ld   l,a
6DC6: 00          nop
6DC7: F4 E5 0B    call p,$0BE5
6DCA: EB          ex   de,hl
6DCB: 56          ld   d,(hl)
6DCC: 05          dec  b
6DCD: 63          ld   h,e
6DCE: 6F          ld   l,a
6DCF: 00          nop
6DD0: F4 E5 06    call p,$06E5
6DD3: 42          ld   b,d
6DD4: 57          ld   d,a
6DD5: 01 39 57    ld   bc,$5739
6DD8: 04          inc  b
6DD9: BD          cp   l
6DDA: 56          ld   d,(hl)
6DDB: 05          dec  b
6DDC: 41          ld   b,c
6DDD: 6F          ld   l,a
6DDE: 00          nop
6DDF: F4 E5 07    call p,$07E5
6DE2: 42          ld   b,d
6DE3: 57          ld   d,a
6DE4: 04          inc  b
6DE5: 09          add  hl,bc
6DE6: 57          ld   d,a
6DE7: 05          dec  b
6DE8: 63          ld   h,e
6DE9: 6F          ld   l,a
6DEA: 00          nop
6DEB: F4 E5 06    call p,$06E5
6DEE: EB          ex   de,hl
6DEF: 56          ld   d,(hl)
6DF0: 05          dec  b
6DF1: B4          or   h
6DF2: 56          ld   d,(hl)
6DF3: 05          dec  b
6DF4: 87          add  a,a
6DF5: 6F          ld   l,a
6DF6: 00          nop
6DF7: F4 E5 07    call p,$07E5
6DFA: EB          ex   de,hl
6DFB: 56          ld   d,(hl)
6DFC: 04          inc  b
6DFD: 79          ld   a,c
6DFE: 57          ld   d,a
6DFF: 05          dec  b
6E00: 41          ld   b,c
6E01: 6F          ld   l,a
6E02: 00          nop
6E03: F4 E5 07    call p,$07E5
6E06: 42          ld   b,d
6E07: 57          ld   d,a
6E08: 04          inc  b
6E09: 79          ld   a,c
6E0A: 57          ld   d,a
6E0B: 05          dec  b
6E0C: 41          ld   b,c
6E0D: 6F          ld   l,a
6E0E: 00          nop
6E0F: F4 E5 09    call p,$09E5
6E12: 9B          sbc  a,e
6E13: 57          ld   d,a
6E14: 07          rlca
6E15: B9          cp   c
6E16: 6F          ld   l,a
6E17: 00          nop
6E18: F4 E5 07    call p,$07E5
6E1B: 9B          sbc  a,e
6E1C: 57          ld   d,a
6E1D: 05          dec  b
6E1E: F4 57 04    call p,$0457
6E21: EC 6F 00    call pe,$006F
6E24: F4 E5 09    call p,$09E5
6E27: 1F          rra
6E28: 58          ld   e,b
6E29: 07          rlca
6E2A: 06 70       ld   b,$70
6E2C: 00          nop
6E2D: F4 E5 0A    call p,$0AE5
6E30: 78          ld   a,b
6E31: 58          ld   e,b
6E32: 06 30       ld   b,$30
6E34: 70          ld   (hl),b
6E35: 00          nop
6E36: F4 E5 0B    call p,$0BE5
6E39: CF          rst  $08
6E3A: 58          ld   e,b
6E3B: 05          dec  b
6E3C: 58          ld   e,b
6E3D: 70          ld   (hl),b
6E3E: 00          nop
6E3F: F4 E5 07    call p,$07E5
6E42: 42          ld   b,d
6E43: 57          ld   d,a
6E44: 04          inc  b
6E45: 36 59       ld   (hl),$59
6E47: 05          dec  b
6E48: 75          ld   (hl),l
6E49: 70          ld   (hl),b
6E4A: 00          nop
6E4B: F4 E5 07    call p,$07E5
6E4E: EB          ex   de,hl
6E4F: 56          ld   d,(hl)
6E50: 04          inc  b
6E51: 36 59       ld   (hl),$59
6E53: 05          dec  b
6E54: 75          ld   (hl),l
6E55: 70          ld   (hl),b
6E56: 00          nop
6E57: F4 E5 06    call p,$06E5
6E5A: EB          ex   de,hl
6E5B: 56          ld   d,(hl)
6E5C: 05          dec  b
6E5D: 73          ld   (hl),e
6E5E: 59          ld   e,c
6E5F: 02          ld   (bc),a
6E60: 96          sub  (hl)
6E61: 70          ld   (hl),b
6E62: 03          inc  bc
6E63: 53          ld   d,e
6E64: 6F          ld   l,a
6E65: 00          nop
6E66: F4 E5 06    call p,$06E5
6E69: 42          ld   b,d
6E6A: 57          ld   d,a
6E6B: 01 B3 59    ld   bc,$59B3
6E6E: 04          inc  b
6E6F: 7E          ld   a,(hl)
6E70: 59          ld   e,c
6E71: 02          ld   (bc),a
6E72: 96          sub  (hl)
6E73: 70          ld   (hl),b
6E74: 03          inc  bc
6E75: 53          ld   d,e
6E76: 6F          ld   l,a
6E77: 00          nop
6E78: F4 E5 0B    call p,$0BE5
6E7B: BC          cp   h
6E7C: 59          ld   e,c
6E7D: 05          dec  b
6E7E: AB          xor  e
6E7F: 70          ld   (hl),b
6E80: 00          nop
6E81: F4 E5 0C    call p,$0CE5
6E84: 22 5A 04    ld   ($045A),hl
6E87: D3 70       out  ($70),a
6E89: 00          nop
6E8A: F4 E5 08    call p,$08E5
6E8D: 79          ld   a,c
6E8E: 5A          ld   e,d
6E8F: 05          dec  b
6E90: E9          jp   (hl)
6E91: 70          ld   (hl),b
6E92: 03          inc  bc
6E93: 7B          ld   a,e
6E94: 54          ld   d,h
6E95: 00          nop
6E96: F4 E5 0B    call p,$0BE5
6E99: BB          cp   e
6E9A: 5A          ld   e,d
6E9B: 05          dec  b
6E9C: 0F          rrca
6E9D: 71          ld   (hl),c
6E9E: 00          nop
6E9F: F4 E5 0B    call p,$0BE5
6EA2: 29          add  hl,hl
6EA3: 5B          ld   e,e
6EA4: 04          inc  b
6EA5: 2F          cpl
6EA6: 71          ld   (hl),c
6EA7: 02          ld   (bc),a
6EA8: 80          add  a,b
6EA9: 5B          ld   e,e
6EAA: 00          nop
6EAB: F4 E5 07    call p,$07E5
6EAE: 42          ld   b,d
6EAF: 57          ld   d,a
6EB0: 04          inc  b
6EB1: 90          sub  b
6EB2: 5B          ld   e,e
6EB3: 05          dec  b
6EB4: 53          ld   d,e
6EB5: 71          ld   (hl),c
6EB6: 00          nop
6EB7: F4 E5 07    call p,$07E5
6EBA: 9B          sbc  a,e
6EBB: 57          ld   d,a
6EBC: 01 C0 5B    ld   bc,$5BC0
6EBF: 03          inc  bc
6EC0: 99          sbc  a,c
6EC1: 5B          ld   e,e
6EC2: 05          dec  b
6EC3: 53          ld   d,e
6EC4: 71          ld   (hl),c
6EC5: 00          nop
6EC6: F4 E5 0C    call p,$0CE5
6EC9: C9          ret
6ECA: 5B          ld   e,e
6ECB: 04          inc  b
6ECC: 73          ld   (hl),e
6ECD: 71          ld   (hl),c
6ECE: 00          nop
6ECF: F4 E5 0A    call p,$0AE5
6ED2: 27          daa
6ED3: 5C          ld   e,h
6ED4: 07          rlca
6ED5: 85          add  a,l
6ED6: 71          ld   (hl),c
6ED7: 00          nop
6ED8: F4 E5 07    call p,$07E5
6EDB: 77          ld   (hl),a
6EDC: 5A          ld   e,d
6EDD: 03          inc  bc
6EDE: 52          ld   d,d
6EDF: 5C          ld   e,h
6EE0: 07          rlca
6EE1: 85          add  a,l
6EE2: 71          ld   (hl),c
6EE3: 00          nop
6EE4: F4 E5 0D    call p,$0DE5
6EE7: 8A          adc  a,d
6EE8: 5C          ld   e,h
6EE9: 04          inc  b
6EEA: B7          or   a
6EEB: 71          ld   (hl),c
6EEC: 00          nop
6EED: F4 E5 08    call p,$08E5
6EF0: C9          ret
6EF1: 5B          ld   e,e
6EF2: 03          inc  bc
6EF3: F3          di
6EF4: 5C          ld   e,h
6EF5: 06 C7       ld   b,$C7
6EF7: 71          ld   (hl),c
6EF8: 00          nop
6EF9: F4 E5 0D    call p,$0DE5
6EFC: 30 5D       jr   nc,$6F5B
6EFE: 04          inc  b
6EFF: EC 71 00    call pe,$0071
6F02: F8          ret  m
6F03: E5          push hl
6F04: 06 8D       ld   b,$8D
6F06: 5D          ld   e,l
6F07: 05          dec  b
6F08: FE 71       cp   $71
6F0A: 05          dec  b
6F0B: D6 5D       sub  $5D
6F0D: 00          nop
6F0E: 00          nop
6F0F: E6 08       and  $08
6F11: E0          ret  po
6F12: 5D          ld   e,l
6F13: 02          ld   (bc),a
6F14: 28 72       jr   z,$6F88
6F16: 06 40       ld   b,$40
6F18: 5E          ld   e,(hl)
6F19: 00          nop
6F1A: 00          nop
6F1B: E6 07       and  $07
6F1D: 52          ld   d,d
6F1E: 5E          ld   e,(hl)
6F1F: 06 32       ld   b,$32
6F21: 72          ld   (hl),d
6F22: 03          inc  bc
6F23: 40          ld   b,b
6F24: 5E          ld   e,(hl)
6F25: 00          nop
6F26: F4 E5 08    call p,$08E5
6F29: B3          or   e
6F2A: 5E          ld   e,(hl)
6F2B: 04          inc  b
6F2C: 6C          ld   l,h
6F2D: 72          ld   (hl),d
6F2E: 02          ld   (bc),a
6F2F: E0          ret  po
6F30: 6F          ld   l,a
6F31: 02          ld   (bc),a
6F32: 7B          ld   a,e
6F33: 54          ld   d,h
6F34: 00          nop
6F35: F4 E5 06    call p,$06E5
6F38: EB          ex   de,hl
6F39: 56          ld   d,(hl)
6F3A: 05          dec  b
6F3B: B4          or   h
6F3C: 56          ld   d,(hl)
6F3D: 06 41       ld   b,$41
6F3F: 6F          ld   l,a
6F40: 00          nop
6F41: 83          add  a,e
6F42: 91          sub  c
6F43: 18 1B       jr   $6F60
6F45: 03          inc  bc
6F46: 01 10 91    ld   bc,$9110
6F49: 14          inc  d
6F4A: 1B          dec  de
6F4B: 82          add  a,d
6F4C: 00          nop
6F4D: 84          add  a,h
6F4E: 04          inc  b
6F4F: FE 0F       cp   $0F
6F51: 82          add  a,d
6F52: 00          nop
6F53: 84          add  a,h
6F54: 04          inc  b
6F55: FA 0F 82    jp   m,$820F
6F58: 00          nop
6F59: 84          add  a,h
6F5A: 14          inc  d
6F5B: 82          add  a,d
6F5C: 00          nop
6F5D: 85          add  a,l
6F5E: 12          ld   (de),a
6F5F: 83          add  a,e
6F60: 00          nop
6F61: 8A          adc  a,d
6F62: 00          nop
6F63: 83          add  a,e
6F64: 03          inc  bc
6F65: B4          or   h
6F66: 09          add  hl,bc
6F67: 02          ld   (bc),a
6F68: 10 10       djnz $6F7A
6F6A: 01 AF 09    ld   bc,$09AF
6F6D: 81          add  a,c
6F6E: 00          nop
6F6F: 84          add  a,h
6F70: 11 03 0E    ld   de,$0E03
6F73: 10 91       djnz $6F06
6F75: AA          xor  d
6F76: 09          add  hl,bc
6F77: 81          add  a,c
6F78: 00          nop
6F79: 84          add  a,h
6F7A: 04          inc  b
6F7B: 0B          dec  bc
6F7C: 10 82       djnz $6F00
6F7E: 00          nop
6F7F: 85          add  a,l
6F80: 13          inc  de
6F81: 82          add  a,d
6F82: 00          nop
6F83: 85          add  a,l
6F84: 13          inc  de
6F85: 82          add  a,d
6F86: 00          nop
6F87: 83          add  a,e
6F88: 92          sub  d
6F89: 18 1B       jr   $6FA6
6F8B: 01 10 02    ld   bc,$0210
6F8E: 8A          adc  a,d
6F8F: 10 91       djnz $6F22
6F91: 14          inc  d
6F92: 1B          dec  de
6F93: 82          add  a,d
6F94: 00          nop
6F95: 84          add  a,h
6F96: 91          sub  c
6F97: FE 0F       cp   $0F
6F99: 02          ld   (bc),a
6F9A: 88          adc  a,b
6F9B: 10 01       djnz $6F9E
6F9D: FB          ei
6F9E: 0F          rrca
6F9F: 82          add  a,d
6FA0: 00          nop
6FA1: 84          add  a,h
6FA2: 11 02 86    ld   de,$8602
6FA5: 10 01       djnz $6FA8
6FA7: F7          rst  $30
6FA8: 0F          rrca
6FA9: 82          add  a,d
6FAA: 00          nop
6FAB: 84          add  a,h
6FAC: 11 02 84    ld   de,$8402
6FAF: 10 01       djnz $6FB2
6FB1: F3          di
6FB2: 0F          rrca
6FB3: 82          add  a,d
6FB4: 00          nop
6FB5: 85          add  a,l
6FB6: 12          ld   (de),a
6FB7: 83          add  a,e
6FB8: 00          nop
6FB9: 83          add  a,e
6FBA: 02          ld   (bc),a
6FBB: 1F          rra
6FBC: 0A          ld   a,(bc)
6FBD: 02          ld   (bc),a
6FBE: 22 10 91    ld   ($9110),hl
6FC1: 1B          dec  de
6FC2: 0A          ld   a,(bc)
6FC3: 82          add  a,d
6FC4: 00          nop
6FC5: 83          add  a,e
6FC6: 02          ld   (bc),a
6FC7: B1          or   c
6FC8: 1A          ld   a,(de)
6FC9: 03          inc  bc
6FCA: 20 10       jr   nz,$6FDC
6FCC: 82          add  a,d
6FCD: 00          nop
6FCE: 83          add  a,e
6FCF: 91          sub  c
6FD0: AF          xor  a
6FD1: 1A          ld   a,(de)
6FD2: 04          inc  b
6FD3: 1D          dec  e
6FD4: 10 82       djnz $6F58
6FD6: 00          nop
6FD7: 83          add  a,e
6FD8: 91          sub  c
6FD9: AD          xor  l
6FDA: 1A          ld   a,(de)
6FDB: 04          inc  b
6FDC: 19          add  hl,de
6FDD: 10 82       djnz $6F61
6FDF: 00          nop
6FE0: 85          add  a,l
6FE1: 03          inc  bc
6FE2: 15          dec  d
6FE3: 10 82       djnz $6F67
6FE5: 00          nop
6FE6: 85          add  a,l
6FE7: 12          ld   (de),a
6FE8: 83          add  a,e
6FE9: 00          nop
6FEA: 8A          adc  a,d
6FEB: 00          nop
6FEC: 83          add  a,e
6FED: 03          inc  bc
6FEE: 58          ld   e,b
6FEF: 0A          ld   a,(bc)
6FF0: 02          ld   (bc),a
6FF1: 2E 10       ld   l,$10
6FF3: 82          add  a,d
6FF4: 00          nop
6FF5: 84          add  a,h
6FF6: 91          sub  c
6FF7: 53          ld   d,e
6FF8: 0A          ld   a,(bc)
6FF9: 03          inc  bc
6FFA: 2C          inc  l
6FFB: 10 82       djnz $6F7F
6FFD: 00          nop
6FFE: 84          add  a,h
6FFF: 14          inc  d
7000: 82          add  a,d
7001: 00          nop
7002: 85          add  a,l
7003: 13          inc  de
7004: 82          add  a,d
7005: 00          nop
7006: 82          add  a,d
7007: 02          ld   (bc),a
7008: 40          ld   b,b
7009: 1B          dec  de
700A: 03          inc  bc
700B: C0          ret  nz
700C: 10 91       djnz $6F9F
700E: 2C          inc  l
700F: 0C          inc  c
7010: 82          add  a,d
7011: 00          nop
7012: 82          add  a,d
7013: 02          ld   (bc),a
7014: 3D          dec  a
7015: 1B          dec  de
7016: 03          inc  bc
7017: BD          cp   l
7018: 10 83       djnz $6F9D
701A: 00          nop
701B: 82          add  a,d
701C: 91          sub  c
701D: 3A 1B 04    ld   a,($041B)
7020: BA          cp   d
7021: 10 83       djnz $6FA6
7023: 00          nop
7024: 84          add  a,h
7025: 13          inc  de
7026: 83          add  a,e
7027: 00          nop
7028: 84          add  a,h
7029: 13          inc  de
702A: 83          add  a,e
702B: 00          nop
702C: 8A          adc  a,d
702D: 00          nop
702E: 8A          adc  a,d
702F: 00          nop
7030: 83          add  a,e
7031: 91          sub  c
7032: 6A          ld   l,d
7033: 0C          inc  c
7034: 02          ld   (bc),a
7035: CE 10       adc  a,$10
7037: 02          ld   (bc),a
7038: 44          ld   b,h
7039: 1B          dec  de
703A: 82          add  a,d
703B: 00          nop
703C: 83          add  a,e
703D: 91          sub  c
703E: 68          ld   l,b
703F: 0C          inc  c
7040: 03          inc  bc
7041: CC 10 91    call z,$9110
7044: 64          ld   h,h
7045: 0C          inc  c
7046: 82          add  a,d
7047: 00          nop
7048: 84          add  a,h
7049: 03          inc  bc
704A: C9          ret
704B: 10 83       djnz $6FD0
704D: 00          nop
704E: 84          add  a,h
704F: 13          inc  de
7050: 83          add  a,e
7051: 00          nop
7052: 84          add  a,h
7053: 13          inc  de
7054: 83          add  a,e
7055: 00          nop
7056: 8A          adc  a,d
7057: 00          nop
7058: 81          add  a,c
7059: 02          ld   (bc),a
705A: A2          and  d
705B: 0C          inc  c
705C: 81          add  a,c
705D: 03          inc  bc
705E: DB 10       in   a,($10)
7060: 91          sub  c
7061: 9D          sbc  a,l
7062: 0C          inc  c
7063: 82          add  a,d
7064: 00          nop
7065: 84          add  a,h
7066: 04          inc  b
7067: D8          ret  c
7068: 10 82       djnz $6FEC
706A: 00          nop
706B: 84          add  a,h
706C: 14          inc  d
706D: 82          add  a,d
706E: 00          nop
706F: 85          add  a,l
7070: 12          ld   (de),a
7071: 83          add  a,e
7072: 00          nop
7073: 8A          adc  a,d
7074: 00          nop
7075: 83          add  a,e
7076: 02          ld   (bc),a
7077: F2 1A 03    jp   p,$031A
707A: 82          add  a,d
707B: 10 91       djnz $700E
707D: 6A          ld   l,d
707E: 0B          dec  bc
707F: 81          add  a,c
7080: 00          nop
7081: 83          add  a,e
7082: 02          ld   (bc),a
7083: EF          rst  $28
7084: 1A          ld   a,(de)
7085: 03          inc  bc
7086: 7F          ld   a,a
7087: 10 82       djnz $700B
7089: 00          nop
708A: 85          add  a,l
708B: 14          inc  d
708C: 81          add  a,c
708D: 00          nop
708E: 85          add  a,l
708F: 14          inc  d
7090: 81          add  a,c
7091: 00          nop
7092: 86          add  a,(hl)
7093: 12          ld   (de),a
7094: 82          add  a,d
7095: 00          nop
7096: 82          add  a,d
7097: 03          inc  bc
7098: 92          sub  d
7099: 0B          dec  bc
709A: 02          ld   (bc),a
709B: 93          sub  e
709C: 10 02       djnz $70A0
709E: 8D          adc  a,l
709F: 0B          dec  bc
70A0: 81          add  a,c
70A1: 00          nop
70A2: 83          add  a,e
70A3: 91          sub  c
70A4: AB          xor  e
70A5: 1A          ld   a,(de)
70A6: 04          inc  b
70A7: 91          sub  c
70A8: 10 82       djnz $702C
70AA: 00          nop
70AB: 83          add  a,e
70AC: 02          ld   (bc),a
70AD: A1          and  c
70AE: 10 02       djnz $70B2
70B0: B5          or   l
70B1: 0B          dec  bc
70B2: 02          ld   (bc),a
70B3: 20 1B       jr   nz,$70D0
70B5: 81          add  a,c
70B6: 00          nop
70B7: 83          add  a,e
70B8: 03          inc  bc
70B9: 9F          sbc  a,a
70BA: 10 02       djnz $70BE
70BC: 1D          dec  e
70BD: 1B          dec  de
70BE: 82          add  a,d
70BF: 00          nop
70C0: 83          add  a,e
70C1: 03          inc  bc
70C2: 9C          sbc  a,h
70C3: 10 91       djnz $7056
70C5: AE          xor  (hl)
70C6: 0B          dec  bc
70C7: 83          add  a,e
70C8: 00          nop
70C9: 83          add  a,e
70CA: 03          inc  bc
70CB: 99          sbc  a,c
70CC: 10 84       djnz $7052
70CE: 00          nop
70CF: 83          add  a,e
70D0: 13          inc  de
70D1: 84          add  a,h
70D2: 00          nop
70D3: 03          inc  bc
70D4: F1          pop  af
70D5: 0B          dec  bc
70D6: 03          inc  bc
70D7: B0          or   b
70D8: 10 84       djnz $705E
70DA: 00          nop
70DB: 83          add  a,e
70DC: 04          inc  b
70DD: AD          xor  l
70DE: 10 83       djnz $7063
70E0: 00          nop
70E1: 83          add  a,e
70E2: 14          inc  d
70E3: 83          add  a,e
70E4: 00          nop
70E5: 83          add  a,e
70E6: 14          inc  d
70E7: 83          add  a,e
70E8: 00          nop
70E9: 83          add  a,e
70EA: 02          ld   (bc),a
70EB: DC 0C 02    call c,$020C
70EE: EC 10 02    call pe,$0210
70F1: D8          ret  c
70F2: 0C          inc  c
70F3: 81          add  a,c
70F4: 00          nop
70F5: 82          add  a,d
70F6: 02          ld   (bc),a
70F7: 60          ld   h,b
70F8: 1B          dec  de
70F9: 04          inc  b
70FA: EA 10 82    jp   pe,$8210
70FD: 00          nop
70FE: 83          add  a,e
70FF: 91          sub  c
7100: D2 0C 04    jp   nc,$040C
7103: E6 10       and  $10
7105: 82          add  a,d
7106: 00          nop
7107: 84          add  a,h
7108: 14          inc  d
7109: 82          add  a,d
710A: 00          nop
710B: 85          add  a,l
710C: 13          inc  de
710D: 82          add  a,d
710E: 00          nop
710F: 84          add  a,h
7110: 02          ld   (bc),a
7111: 0F          rrca
7112: 0D          dec  c
7113: 02          ld   (bc),a
7114: FA 10 82    jp   m,$8210
7117: 00          nop
7118: 84          add  a,h
7119: 92          sub  d
711A: 0A          ld   a,(bc)
711B: 0D          dec  c
711C: 14          inc  d
711D: 00          nop
711E: 03          inc  bc
711F: F8          ret  m
7120: 10 81       djnz $70A3
7122: 00          nop
7123: 85          add  a,l
7124: 14          inc  d
7125: 81          add  a,c
7126: 00          nop
7127: 86          add  a,(hl)
7128: 13          inc  de
7129: 81          add  a,c
712A: 00          nop
712B: 86          add  a,(hl)
712C: 12          ld   (de),a
712D: 82          add  a,d
712E: 00          nop
712F: 83          add  a,e
7130: 03          inc  bc
7131: 75          ld   (hl),l
7132: 1B          dec  de
7133: 02          ld   (bc),a
7134: 08          ex   af,af'
7135: 11 82 00    ld   de,$0082
7138: 83          add  a,e
7139: 02          ld   (bc),a
713A: 71          ld   (hl),c
713B: 1B          dec  de
713C: 04          inc  b
713D: 06 11       ld   b,$11
713F: 81          add  a,c
7140: 00          nop
7141: 83          add  a,e
7142: 02          ld   (bc),a
7143: 4B          ld   c,e
7144: 0D          dec  c
7145: 04          inc  b
7146: 02          ld   (bc),a
7147: 11 81 00    ld   de,$0081
714A: 83          add  a,e
714B: 02          ld   (bc),a
714C: 45          ld   b,l
714D: 0D          dec  c
714E: 04          inc  b
714F: FE 10       cp   $10
7151: 81          add  a,c
7152: 00          nop
7153: 83          add  a,e
7154: 04          inc  b
7155: C9          ret
7156: 1A          ld   a,(de)
7157: 92          sub  d
7158: 3B          dec  sp
7159: 10 C4       djnz $711F
715B: 1A          ld   a,(de)
715C: 81          add  a,c
715D: 00          nop
715E: 84          add  a,h
715F: 02          ld   (bc),a
7160: C3 1A 03    jp   $031A
7163: 3A 10 81    ld   a,($8110)
7166: 00          nop
7167: 86          add  a,(hl)
7168: 13          inc  de
7169: 81          add  a,c
716A: 00          nop
716B: 86          add  a,(hl)
716C: 13          inc  de
716D: 81          add  a,c
716E: 00          nop
716F: 86          add  a,(hl)
7170: 13          inc  de
7171: 81          add  a,c
7172: 00          nop
7173: 85          add  a,l
7174: 03          inc  bc
7175: 49          ld   c,c
7176: 10 82       djnz $70FA
7178: 00          nop
7179: 85          add  a,l
717A: 14          inc  d
717B: 81          add  a,c
717C: 00          nop
717D: 85          add  a,l
717E: 14          inc  d
717F: 81          add  a,c
7180: 00          nop
7181: 86          add  a,(hl)
7182: 13          inc  de
7183: 81          add  a,c
7184: 00          nop
7185: 81          add  a,c
7186: 04          inc  b
7187: B9          cp   c
7188: 0A          ld   a,(bc)
7189: 02          ld   (bc),a
718A: 59          ld   e,c
718B: 10 02       djnz $718F
718D: B3          or   e
718E: 0A          ld   a,(bc)
718F: 81          add  a,c
7190: 00          nop
7191: 82          add  a,d
7192: 03          inc  bc
7193: E1          pop  hl
7194: 1A          ld   a,(de)
7195: 03          inc  bc
7196: 57          ld   d,a
7197: 10 91       djnz $712A
7199: AE          xor  (hl)
719A: 0A          ld   a,(bc)
719B: 81          add  a,c
719C: 00          nop
719D: 82          add  a,d
719E: 02          ld   (bc),a
719F: DE 1A       sbc  a,$1A
71A1: 04          inc  b
71A2: 54          ld   d,h
71A3: 10 82       djnz $7127
71A5: 00          nop
71A6: 83          add  a,e
71A7: 91          sub  c
71A8: A9          xor  c
71A9: 0A          ld   a,(bc)
71AA: 04          inc  b
71AB: 50          ld   d,b
71AC: 10 82       djnz $7130
71AE: 00          nop
71AF: 85          add  a,l
71B0: 13          inc  de
71B1: 82          add  a,d
71B2: 00          nop
71B3: 8A          adc  a,d
71B4: 00          nop
71B5: 8A          adc  a,d
71B6: 00          nop
71B7: 84          add  a,h
71B8: 03          inc  bc
71B9: 72          ld   (hl),d
71BA: 10 83       djnz $713F
71BC: 00          nop
71BD: 84          add  a,h
71BE: 13          inc  de
71BF: 83          add  a,e
71C0: 00          nop
71C1: 84          add  a,h
71C2: 13          inc  de
71C3: 83          add  a,e
71C4: 00          nop
71C5: 8A          adc  a,d
71C6: 00          nop
71C7: 81          add  a,c
71C8: 02          ld   (bc),a
71C9: FF          rst  $38
71CA: 06 04       ld   b,$04
71CC: 98          sbc  a,b
71CD: 1A          ld   a,(de)
71CE: 03          inc  bc
71CF: 69          ld   l,c
71D0: 10 00       djnz $71D2
71D2: 84          add  a,h
71D3: 02          ld   (bc),a
71D4: 91          sub  c
71D5: 1A          ld   a,(de)
71D6: 04          inc  b
71D7: 66          ld   h,(hl)
71D8: 10 00       djnz $71DA
71DA: 85          add  a,l
71DB: 91          sub  c
71DC: 91          sub  c
71DD: 0A          ld   a,(bc)
71DE: 04          inc  b
71DF: 62          ld   h,d
71E0: 10 00       djnz $71E2
71E2: 86          add  a,(hl)
71E3: 13          inc  de
71E4: 81          add  a,c
71E5: 00          nop
71E6: 86          add  a,(hl)
71E7: 12          ld   (de),a
71E8: 82          add  a,d
71E9: 00          nop
71EA: 8A          adc  a,d
71EB: 00          nop
71EC: 03          inc  bc
71ED: 11 11 91    ld   de,$9111
71F0: 7F          ld   a,a
71F1: 1B          dec  de
71F2: 86          add  a,(hl)
71F3: 00          nop
71F4: 03          inc  bc
71F5: 0E 11       ld   c,$11
71F7: 87          add  a,a
71F8: 00          nop
71F9: 13          inc  de
71FA: 87          add  a,a
71FB: 00          nop
71FC: 8A          adc  a,d
71FD: 00          nop
71FE: 02          ld   (bc),a
71FF: 9A          sbc  a,d
7200: 1B          dec  de
7201: 03          inc  bc
7202: 20 11       jr   nz,$7215
7204: 91          sub  c
7205: BC          cp   h
7206: 0D          dec  c
7207: 85          add  a,l
7208: 00          nop
7209: 02          ld   (bc),a
720A: 97          sub  a
720B: 1B          dec  de
720C: 03          inc  bc
720D: 1D          dec  e
720E: 11 01 B8    ld   de,$B801
7211: 0D          dec  c
7212: 85          add  a,l
7213: 00          nop
7214: 81          add  a,c
7215: 11 03 1A    ld   de,$1A03
7218: 11 91 B3    ld   de,$B391
721B: 0D          dec  c
721C: 85          add  a,l
721D: 00          nop
721E: 82          add  a,d
721F: 03          inc  bc
7220: 17          rla
7221: 11 86 00    ld   de,$0086
7224: 82          add  a,d
7225: 13          inc  de
7226: 86          add  a,(hl)
7227: 00          nop
7228: 84          add  a,h
7229: 04          inc  b
722A: 28 11       jr   z,$723D
722C: 88          adc  a,b
722D: 00          nop
722E: 84          add  a,h
722F: 14          inc  d
7230: 88          adc  a,b
7231: 00          nop
7232: 83          add  a,e
7233: 03          inc  bc
7234: 32 0E 02    ld   ($020E),a
7237: C1          pop  bc
7238: 1B          dec  de
7239: 91          sub  c
723A: 2C          inc  l
723B: 11 02 BF    ld   de,$BF02
723E: 1B          dec  de
723F: 85          add  a,l
7240: 00          nop
7241: 83          add  a,e
7242: 14          inc  d
7243: 93          sub  e
7244: 2B          dec  hl
7245: 11 1F 10    ld   de,$101F
7248: 2A 11 86    ld   hl,($8611)
724B: 00          nop
724C: 84          add  a,h
724D: 02          ld   (bc),a
724E: B8          cp   b
724F: 1B          dec  de
7250: 91          sub  c
7251: 43          ld   b,e
7252: 19          add  hl,de
7253: 02          ld   (bc),a
7254: 1C          inc  e
7255: 10 91       djnz $71E8
7257: 29          add  hl,hl
7258: 11 86 00    ld   de,$0086
725B: 85          add  a,l
725C: 02          ld   (bc),a
725D: B6          or   (hl)
725E: 1B          dec  de
725F: 03          inc  bc
7260: 18 10       jr   $7272
7262: 86          add  a,(hl)
7263: 00          nop
7264: 87          add  a,a
7265: 13          inc  de
7266: 86          add  a,(hl)
7267: 00          nop
7268: 87          add  a,a
7269: 12          ld   (de),a
726A: 87          add  a,a
726B: 00          nop
726C: 82          add  a,d
726D: 91          sub  c
726E: 62          ld   h,d
726F: 0E 02       ld   c,$02
7271: D0          ret  nc
7272: 1B          dec  de
7273: 02          ld   (bc),a
7274: 2E 11       ld   l,$11
7276: 83          add  a,e
7277: 00          nop
7278: 82          add  a,d
7279: 03          inc  bc
727A: CD 1B 93    call $931B
727D: 2B          dec  hl
727E: 11 1F 10    ld   de,$101F
7281: 2A 11 82    ld   hl,($8211)
7284: 00          nop
7285: 83          add  a,e
7286: 02          ld   (bc),a
7287: C9          ret
7288: 1B          dec  de
7289: 02          ld   (bc),a
728A: 1C          inc  e
728B: 10 91       djnz $721E
728D: 29          add  hl,hl
728E: 11 82 00    ld   de,$0082
7291: 83          add  a,e
7292: 02          ld   (bc),a
7293: C6 1B       add  a,$1B
7295: 03          inc  bc
7296: 18 10       jr   $72A8
7298: 82          add  a,d
7299: 00          nop
729A: F4 E5 0B    call p,$0BE5
729D: 26 60       ld   h,$60
729F: 05          dec  b
72A0: 2F          cpl
72A1: 74          ld   (hl),h
72A2: 00          nop
72A3: F4 E5 07    call p,$07E5
72A6: 26 60       ld   h,$60
72A8: 03          inc  bc
72A9: 80          add  a,b
72AA: 60          ld   h,b
72AB: 06 54       ld   b,$54
72AD: 74          ld   (hl),h
72AE: 00          nop
72AF: F4 E5 07    call p,$07E5
72B2: AF          xor  a
72B3: 60          ld   h,b
72B4: 04          inc  b
72B5: 46          ld   b,(hl)
72B6: 60          ld   h,b
72B7: 05          dec  b
72B8: 2F          cpl
72B9: 74          ld   (hl),h
72BA: 00          nop
72BB: F4 E5 07    call p,$07E5
72BE: AF          xor  a
72BF: 60          ld   h,b
72C0: 03          inc  bc
72C1: 80          add  a,b
72C2: 60          ld   h,b
72C3: 06 54       ld   b,$54
72C5: 74          ld   (hl),h
72C6: 00          nop
72C7: F4 E5 0B    call p,$0BE5
72CA: 26 60       ld   h,$60
72CC: 05          dec  b
72CD: 89          adc  a,c
72CE: 74          ld   (hl),h
72CF: 00          nop
72D0: F4 E5 07    call p,$07E5
72D3: 26 60       ld   h,$60
72D5: 04          inc  b
72D6: 05          dec  b
72D7: 61          ld   h,c
72D8: 01 C2 74    ld   bc,$74C2
72DB: 04          inc  b
72DC: 3B          dec  sp
72DD: 74          ld   (hl),h
72DE: 00          nop
72DF: F4 E5 0B    call p,$0BE5
72E2: 3E 61       ld   a,$61
72E4: 05          dec  b
72E5: D0          ret  nc
72E6: 74          ld   (hl),h
72E7: 00          nop
72E8: F4 E5 07    call p,$07E5
72EB: 3E 61       ld   a,$61
72ED: 05          dec  b
72EE: 91          sub  c
72EF: 61          ld   h,c
72F0: 04          inc  b
72F1: F6 74       or   $74
72F3: 00          nop
72F4: F4 E5 0A    call p,$0AE5
72F7: C7          rst  $00
72F8: 61          ld   h,c
72F9: 06 17       ld   b,$17
72FB: 75          ld   (hl),l
72FC: 00          nop
72FD: F4 E5 0B    call p,$0BE5
7300: 1B          dec  de
7301: 62          ld   h,d
7302: 05          dec  b
7303: 38 75       jr   c,$737A
7305: 00          nop
7306: F4 E5 0A    call p,$0AE5
7309: 7A          ld   a,d
730A: 62          ld   h,d
730B: 06 51       ld   b,$51
730D: 75          ld   (hl),l
730E: 00          nop
730F: F4 E5 07    call p,$07E5
7312: 26 60       ld   h,$60
7314: 04          inc  b
7315: DB 62       in   a,($62)
7317: 03          inc  bc
7318: 75          ld   (hl),l
7319: 75          ld   (hl),l
731A: 02          ld   (bc),a
731B: 48          ld   c,b
731C: 74          ld   (hl),h
731D: 00          nop
731E: F4 E5 07    call p,$07E5
7321: AF          xor  a
7322: 60          ld   h,b
7323: 04          inc  b
7324: DB 62       in   a,($62)
7326: 03          inc  bc
7327: 75          ld   (hl),l
7328: 75          ld   (hl),l
7329: 02          ld   (bc),a
732A: 48          ld   c,b
732B: 74          ld   (hl),h
732C: 00          nop
732D: F4 E5 07    call p,$07E5
7330: AF          xor  a
7331: 60          ld   h,b
7332: 04          inc  b
7333: 22 63 03    ld   ($0363),hl
7336: 9C          sbc  a,h
7337: 75          ld   (hl),l
7338: 02          ld   (bc),a
7339: 48          ld   c,b
733A: 74          ld   (hl),h
733B: 00          nop
733C: F4 E5 07    call p,$07E5
733F: 26 60       ld   h,$60
7341: 04          inc  b
7342: 22 63 03    ld   ($0363),hl
7345: 9C          sbc  a,h
7346: 75          ld   (hl),l
7347: 02          ld   (bc),a
7348: 48          ld   c,b
7349: 74          ld   (hl),h
734A: 00          nop
734B: F4 E5 07    call p,$07E5
734E: 26 60       ld   h,$60
7350: 04          inc  b
7351: 5C          ld   e,h
7352: 63          ld   h,e
7353: 05          dec  b
7354: C2 75 00    jp   nz,$0075
7357: F4 E5 07    call p,$07E5
735A: AF          xor  a
735B: 60          ld   h,b
735C: 04          inc  b
735D: 5C          ld   e,h
735E: 63          ld   h,e
735F: 05          dec  b
7360: C2 75 00    jp   nz,$0075
7363: F4 E5 0B    call p,$0BE5
7366: 9C          sbc  a,h
7367: 63          ld   h,e
7368: 05          dec  b
7369: E4 75 00    call po,$0075
736C: F4 E5 0B    call p,$0BE5
736F: 00          nop
7370: 64          ld   h,h
7371: 05          dec  b
7372: 07          rlca
7373: 76          halt
7374: 00          nop
7375: F4 E5 07    call p,$07E5
7378: 58          ld   e,b
7379: 64          ld   h,h
737A: 05          dec  b
737B: 2A 76 04    ld   hl,($0476)
737E: 7B          ld   a,e
737F: 54          ld   d,h
7380: 00          nop
7381: F4 E5 0B    call p,$0BE5
7384: 9D          sbc  a,l
7385: 64          ld   h,h
7386: 05          dec  b
7387: 5B          ld   e,e
7388: 76          halt
7389: 00          nop
738A: F4 E5 0B    call p,$0BE5
738D: 02          ld   (bc),a
738E: 65          ld   h,l
738F: 06 79       ld   b,$79
7391: 76          halt
7392: 00          nop
7393: F4 E5 07    call p,$07E5
7396: AF          xor  a
7397: 60          ld   h,b
7398: 04          inc  b
7399: 67          ld   h,a
739A: 65          ld   h,l
739B: 05          dec  b
739C: A7          and  a
739D: 76          halt
739E: 00          nop
739F: F4 E5 07    call p,$07E5
73A2: 3E 61       ld   a,$61
73A4: 04          inc  b
73A5: 67          ld   h,a
73A6: 65          ld   h,l
73A7: 05          dec  b
73A8: A7          and  a
73A9: 76          halt
73AA: 00          nop
73AB: F4 E5 0C    call p,$0CE5
73AE: 97          sub  a
73AF: 65          ld   h,l
73B0: 04          inc  b
73B1: C5          push bc
73B2: 76          halt
73B3: 00          nop
73B4: F4 E5 0A    call p,$0AE5
73B7: F2 65 07    jp   p,$0765
73BA: DA 76 00    jp   c,$0076
73BD: F4 E5 09    call p,$09E5
73C0: 5D          ld   e,l
73C1: 66          ld   h,(hl)
73C2: 01 27 66    ld   bc,$6627
73C5: 07          rlca
73C6: DA 76 00    jp   c,$0076
73C9: F4 E5 07    call p,$07E5
73CC: 3E 61       ld   a,$61
73CE: 04          inc  b
73CF: 89          adc  a,c
73D0: 66          ld   h,(hl)
73D1: 06 0D       ld   b,$0D
73D3: 77          ld   (hl),a
73D4: 00          nop
73D5: F4 E5 07    call p,$07E5
73D8: AF          xor  a
73D9: 60          ld   h,b
73DA: 04          inc  b
73DB: 89          adc  a,c
73DC: 66          ld   h,(hl)
73DD: 06 0D       ld   b,$0D
73DF: 77          ld   (hl),a
73E0: 00          nop
73E1: F4 E5 09    call p,$09E5
73E4: 97          sub  a
73E5: 65          ld   h,l
73E6: 03          inc  bc
73E7: CD 66 05    call $0566
73EA: 2F          cpl
73EB: 77          ld   (hl),a
73EC: 00          nop
73ED: F4 E5 0C    call p,$0CE5
73F0: 09          add  hl,bc
73F1: 67          ld   h,a
73F2: 04          inc  b
73F3: 48          ld   c,b
73F4: 77          ld   (hl),a
73F5: 00          nop
73F6: F4 E5 0B    call p,$0BE5
73F9: 5D          ld   e,l
73FA: 67          ld   h,a
73FB: 03          inc  bc
73FC: 64          ld   h,h
73FD: 77          ld   (hl),a
73FE: 02          ld   (bc),a
73FF: 7B          ld   a,e
7400: 54          ld   d,h
7401: 00          nop
7402: F8          ret  m
7403: E5          push hl
7404: 07          rlca
7405: AB          xor  e
7406: 67          ld   h,a
7407: 03          inc  bc
7408: 77          ld   (hl),a
7409: 77          ld   (hl),a
740A: 06 B6       ld   b,$B6
740C: 54          ld   d,h
740D: 00          nop
740E: F8          ret  m
740F: E5          push hl
7410: 07          rlca
7411: E2 67 04    jp   po,$0467
7414: 9
