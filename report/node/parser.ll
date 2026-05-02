inline.NumInlined: 10283
inline.NumDeleted: 2685
begin_hunk_0_@_ZN2v88internal10ParserBaseINS0_6ParserEE21ParseClassLiteralBodyERNS3_9ClassInfoEPKNS0_12AstRawStringEiNS0_5Token5ValueE:bb.a
  %i.bl = phi i8 [ %i.bk, %bb.h ], [ %i.be, %switch.lookup ] ; 2 uses
  %i.bm = load i8, ptr %i.m, align 8, !range !6, !noundef !7
  %i.bn = and i8 %i.bm, %i.at
  %6 = icmp ne i8 %i.bn, 0
  %i.bo = load i8, ptr %i.u, align 2, !range !6, !noundef !7
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.j, label %bb.l, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.bq = shl nuw nsw i8 %i.bg, 3
  %7 = xor i8 %i.bq, 8
  %i.br = select i1 %switch.masked, i8 %7, i8 0
  %i.bs = and i8 %switch.downshift, %i.bg
  %.not71 = icmp eq i8 %i.bs, 0
  %.mask = and i8 %i.bl, 2
  %i.bt = select i1 %.not71, i8 %.mask, i8 2
  %.masked = and i8 %i.bl, -3
  %i.bu = or i8 %.masked, %i.br
  %i.bv = or disjoint i8 %i.bu, %i.bt
end_hunk_0
