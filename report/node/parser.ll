inline.NumInlined: 10283
inline.NumDeleted: 2685
begin_hunk_0_@_ZN2v88internal10ParserBaseINS0_6ParserEE21ParseClassLiteralBodyERNS3_9ClassInfoEPKNS0_12AstRawStringEiNS0_5Token5ValueE:bb.a
  %i.bl = phi i8 [ %i.bk, %bb.h ], [ %i.be, %switch.lookup ] ; 2 uses
  %i.bm = load i8, ptr %i.m, align 8, !range !6, !noundef !7
  %i.bn = and i8 %i.bm, %i.at
  %6 = trunc nuw i8 %i.bn to i1
  %i.bo = load i8, ptr %i.u, align 2, !range !6, !noundef !7
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.j, label %bb.l, !prof !5

bb.j:                                             ; preds = %bb.i
  %7 = xor i8 %i.bg, -1
  %i.bq = shl nsw i8 %7, 3
  %8 = and i8 %i.bq, 8
  %i.br = select i1 %switch.masked, i8 %8, i8 0
  %i.bs = and i8 %switch.downshift, %i.bg
  %9 = trunc nuw i8 %i.bs to i1
  %.mask = and i8 %i.bl, 2
  %10 = icmp ne i8 %.mask, 0
  %11 = or i1 %10, %9
  %i.bt = select i1 %11, i8 2, i8 0
  %.masked = and i8 %i.bl, -3
  %i.bu = or i8 %.masked, %i.br
  %i.bv = or disjoint i8 %i.bu, %i.bt
end_hunk_0
