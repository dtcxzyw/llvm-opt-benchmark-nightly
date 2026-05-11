inline.NumInlined: 81
inline.NumDeleted: 23
begin_hunk_0_@cff_parse_font_matrix:bb.a
  br i1 %i.cu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cv = or disjoint i64 %i.ct, -9223372036854775808
  %i.cw = icmp samesign ult i64 %i.cv, %i.co
  %i.cx = sub nsw i64 %i.co, %i.ct
  %spec.select110 = select i1 %i.cw, i64 %i.cx, i64 -9223372036854775808
end_hunk_0
begin_hunk_1_@cff_parse_font_matrix:bb.a
  br label %.preheader.2.sink.split

bb.aa:                                            ; preds = %bb.y
  %i.dp = or disjoint i64 %i.dk, -9223372036854775808
  %i.dq = icmp samesign ult i64 %i.dp, %i.de
  %i.dr = sub nsw i64 %i.de, %i.dk
  %spec.select113 = select i1 %i.dq, i64 %i.dr, i64 -9223372036854775808
end_hunk_1
begin_hunk_2_@cff_parse_font_matrix:bb.a
  br label %.preheader.3.sink.split

bb.ad:                                            ; preds = %bb.ab
  %i.eg = or disjoint i64 %i.eb, -9223372036854775808
  %i.eh = icmp samesign ult i64 %i.eg, %i.dv
  %i.ei = sub nsw i64 %i.dv, %i.eb
  %spec.select115 = select i1 %i.eh, i64 %i.ei, i64 -9223372036854775808
end_hunk_2
begin_hunk_3_@cff_parse_font_matrix:bb.a
  br label %.preheader.4.sink.split

bb.ag:                                            ; preds = %bb.ae
  %i.ex = or disjoint i64 %i.es, -9223372036854775808
  %i.ey = icmp samesign ult i64 %i.ex, %i.em
  %i.ez = sub nsw i64 %i.em, %i.es
  %spec.select117 = select i1 %i.ey, i64 %i.ez, i64 -9223372036854775808
end_hunk_3
begin_hunk_4_@cff_parse_font_matrix:bb.a
  br label %.preheader.5.sink.split

bb.aj:                                            ; preds = %bb.ah
  %i.fo = or disjoint i64 %i.fj, -9223372036854775808
  %i.fp = icmp samesign ult i64 %i.fo, %i.fd
  %i.fq = sub nsw i64 %i.fd, %i.fj
  %spec.select119 = select i1 %i.fp, i64 %i.fq, i64 -9223372036854775808
end_hunk_4
begin_hunk_5_@cff_parse_font_matrix:bb.a
  br label %.sink.split

bb.am:                                            ; preds = %bb.ak
  %i.gf = or disjoint i64 %i.ga, -9223372036854775808
  %i.gg = icmp samesign ult i64 %i.gf, %i.fu
  %i.gh = sub nsw i64 %i.fu, %i.ga
  %spec.select121 = select i1 %i.gg, i64 %i.gh, i64 -9223372036854775808
end_hunk_5
