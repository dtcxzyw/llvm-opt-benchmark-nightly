inline.NumInlined: 5486
inline.NumDeleted: 881
begin_hunk_0_@_ZN2v88internal10ParserBaseINS0_9PreParserEE21ParseClassLiteralBodyERNS3_9ClassInfoENS0_19PreParserIdentifierEiNS0_5Token5ValueE:bb.a
  br i1 %i.ay, label %switch.lookup69, label %bb.k, !prof !5

switch.lookup69:                                  ; preds = %bb.i
  %7 = xor i8 %i.ar, -1
  %i.az = shl nsw i8 %7, 3
  %8 = and i8 %i.az, 8
  %i.ba = select i1 %switch.masked, i8 %8, i8 0
  %i.bb = and i8 %switch.downshift, %i.ar
  %9 = trunc nuw i8 %i.bb to i1
  %.mask = and i8 %i.aw, 2
  %10 = icmp ne i8 %.mask, 0
  %11 = or i1 %10, %9
  %i.bc = select i1 %11, i8 2, i8 0
  %.masked = and i8 %i.aw, -3
  %i.bd = or i8 %.masked, %i.ba
  %i.be = or disjoint i8 %i.bd, %i.bc
end_hunk_0
