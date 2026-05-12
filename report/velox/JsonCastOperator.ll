inline.NumInlined: 36272
inline.NumDeleted: 7699
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE0EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  %i.ji = add nuw nsw i64 %i.jh, 9                ; 2 uses
  %i.jj = lshr i64 %.sroa.7.1.i.i.i, %i.ji        ; 6 uses
  %reass.sub.i.i = sub nsw i64 %i.ih, %i.ii
  %.neg.i.i = add nsw i64 %reass.sub.i.i, 1086
  %i.jk = add nsw i64 %.neg.i.i, %i.jh            ; 4 uses
  %i.jl = icmp slt i64 %i.jk, 1
  br i1 %i.jl, label %bb.as, label %bb.av, !prof !38

bb.as:                                            ; preds = %bb.ar
  %4 = icmp slt i64 %i.jk, -62
  br i1 %4, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE0EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i

bb.au:                                            ; preds = %bb.as
  %i.jn = sub nsw i64 1, %i.jk
  %i.jo = lshr i64 %i.jj, %i.jn                   ; 2 uses
  %i.jp = and i64 %i.jo, 1
  %i.jq = add nuw nsw i64 %i.jp, %i.jo            ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE3EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  %i.ht = add nuw nsw i64 %i.hs, 9                ; 2 uses
  %i.hu = lshr i64 %.sroa.7.1.i.i.i.i, %i.ht      ; 6 uses
  %reass.sub.i.i.i = sub nsw i64 %i.gs, %i.gt
  %.neg.i.i.i = add nsw i64 %reass.sub.i.i.i, 1086
  %i.hv = add nsw i64 %.neg.i.i.i, %i.hs          ; 4 uses
  %i.hw = icmp slt i64 %i.hv, 1
  br i1 %i.hw, label %bb.al, label %bb.ao, !prof !38

bb.al:                                            ; preds = %bb.ak
  %4 = icmp slt i64 %i.hv, -62
  br i1 %4, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE3EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.hy = sub nsw i64 1, %i.hv
  %i.hz = lshr i64 %i.hu, %i.hy                   ; 2 uses
  %i.ia = and i64 %i.hz, 1
  %i.ib = add nuw nsw i64 %i.ia, %i.hz            ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE1EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  %i.ht = add nuw nsw i64 %i.hs, 9                ; 2 uses
  %i.hu = lshr i64 %.sroa.7.1.i.i.i.i, %i.ht      ; 6 uses
  %reass.sub.i.i.i = sub nsw i64 %i.gs, %i.gt
  %.neg.i.i.i = add nsw i64 %reass.sub.i.i.i, 1086
  %i.hv = add nsw i64 %.neg.i.i.i, %i.hs          ; 4 uses
  %i.hw = icmp slt i64 %i.hv, 1
  br i1 %i.hw, label %bb.al, label %bb.ao, !prof !38

bb.al:                                            ; preds = %bb.ak
  %4 = icmp slt i64 %i.hv, -62
  br i1 %4, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE1EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.hy = sub nsw i64 1, %i.hv
  %i.hz = lshr i64 %i.hu, %i.hy                   ; 2 uses
  %i.ia = and i64 %i.hz, 1
  %i.ib = add nuw nsw i64 %i.ia, %i.hz            ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE2EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  %i.ht = add nuw nsw i64 %i.hs, 9                ; 2 uses
  %i.hu = lshr i64 %.sroa.7.1.i.i.i.i, %i.ht      ; 6 uses
  %reass.sub.i.i.i = sub nsw i64 %i.gs, %i.gt
  %.neg.i.i.i = add nsw i64 %reass.sub.i.i.i, 1086
  %i.hv = add nsw i64 %.neg.i.i.i, %i.hs          ; 4 uses
  %i.hw = icmp slt i64 %i.hv, 1
  br i1 %i.hw, label %bb.al, label %bb.ao, !prof !38

bb.al:                                            ; preds = %bb.ak
  %4 = icmp slt i64 %i.hv, -62
  br i1 %4, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE2EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.hy = sub nsw i64 1, %i.hv
  %i.hz = lshr i64 %i.hu, %i.hy                   ; 2 uses
  %i.ia = and i64 %i.hz, 1
  %i.ib = add nuw nsw i64 %i.ia, %i.hz            ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE4EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  %i.ht = add nuw nsw i64 %i.hs, 9                ; 2 uses
  %i.hu = lshr i64 %.sroa.7.1.i.i.i.i, %i.ht      ; 6 uses
  %reass.sub.i.i.i = sub nsw i64 %i.gs, %i.gt
  %.neg.i.i.i = add nsw i64 %reass.sub.i.i.i, 1086
  %i.hv = add nsw i64 %.neg.i.i.i, %i.hs          ; 4 uses
  %i.hw = icmp slt i64 %i.hv, 1
  br i1 %i.hw, label %bb.al, label %bb.ao, !prof !38

bb.al:                                            ; preds = %bb.ak
  %4 = icmp slt i64 %i.hv, -62
  br i1 %4, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE4EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.hy = sub nsw i64 1, %i.hv
  %i.hz = lshr i64 %i.hu, %i.hy                   ; 2 uses
  %i.ia = and i64 %i.hz, 1
  %i.ib = add nuw nsw i64 %i.ia, %i.hz            ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE5EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  %i.gb = add nuw nsw i64 %i.ga, 9                ; 2 uses
  %i.gc = lshr i64 %.sroa.7.1.i.i.i.i.i, %i.gb    ; 6 uses
  %reass.sub.i.i.i = sub nsw i64 %i.fa, %i.fb
  %.neg341.i.i.i = add nsw i64 %reass.sub.i.i.i, 1086
  %i.gd = add nsw i64 %.neg341.i.i.i, %i.ga       ; 4 uses
  %i.ge = icmp slt i64 %i.gd, 1
  br i1 %i.ge, label %bb.ag, label %bb.aj, !prof !38

bb.ag:                                            ; preds = %bb.af
  %4 = icmp slt i64 %i.gd, -62
  br i1 %4, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
end_hunk_10
begin_hunk_11_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE5EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  br label %bb.an

bb.ai:                                            ; preds = %bb.ag
  %i.gg = sub nsw i64 1, %i.gd
  %i.gh = lshr i64 %i.gc, %i.gg                   ; 2 uses
  %i.gi = and i64 %i.gh, 1
  %i.gj = add nuw nsw i64 %i.gi, %i.gh            ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE6EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  %i.gb = add nuw nsw i64 %i.ga, 9                ; 2 uses
  %i.gc = lshr i64 %.sroa.7.1.i.i.i.i.i, %i.gb    ; 6 uses
  %reass.sub.i.i.i = sub nsw i64 %i.fa, %i.fb
  %.neg344.i.i.i = add nsw i64 %reass.sub.i.i.i, 1086
  %i.gd = add nsw i64 %.neg344.i.i.i, %i.ga       ; 4 uses
  %i.ge = icmp slt i64 %i.gd, 1
  br i1 %i.ge, label %bb.ag, label %bb.aj, !prof !38

bb.ag:                                            ; preds = %bb.af
  %4 = icmp slt i64 %i.gd, -62
  br i1 %4, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
end_hunk_12
begin_hunk_13_@_ZN8facebook5velox12_GLOBAL__N_118castFromJsonOneRowILNS0_8TypeKindE6EEEN8simdjson10error_codeENS4_18padded_string_viewERNS0_4exec12VectorWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEvEE:bb.a
  br label %bb.an

bb.ai:                                            ; preds = %bb.ag
  %i.gg = sub nsw i64 1, %i.gd
  %i.gh = lshr i64 %i.gc, %i.gg                   ; 2 uses
  %i.gi = and i64 %i.gh, 1
  %i.gj = add nuw nsw i64 %i.gi, %i.gh            ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.ge = add nuw nsw i64 %i.gd, 9                ; 2 uses
  %i.gf = lshr i64 %.sroa.7.1.i.i.i, %i.ge        ; 6 uses
  %reass.sub.i = sub nsw i64 %i.fd, %i.fe
  %.neg.i = add nsw i64 %reass.sub.i, 1086
  %i.gg = add nsw i64 %.neg.i, %i.gd              ; 4 uses
  %i.gh = icmp slt i64 %i.gg, 1
  br i1 %i.gh, label %bb.ab, label %bb.ae, !prof !38

bb.ab:                                            ; preds = %bb.aa
  %2 = icmp slt i64 %i.gg, -62
  br i1 %2, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
end_hunk_14
begin_hunk_15_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE0EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.gj = sub nsw i64 1, %i.gg
  %i.gk = lshr i64 %i.gf, %i.gj                   ; 2 uses
  %i.gl = and i64 %i.gk, 1
  %i.gm = add nuw nsw i64 %i.gl, %i.gk            ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.fc = add nuw nsw i64 %i.fb, 9                ; 2 uses
  %i.fd = lshr i64 %.sroa.7.1.i.i.i.i, %i.fc      ; 6 uses
  %reass.sub.i.i = sub nsw i64 %i.eb, %i.ec
  %.neg.i.i = add nsw i64 %reass.sub.i.i, 1086
  %i.fe = add nsw i64 %.neg.i.i, %i.fb            ; 4 uses
  %i.ff = icmp slt i64 %i.fe, 1
  br i1 %i.ff, label %bb.ab, label %bb.ae, !prof !38

bb.ab:                                            ; preds = %bb.aa
  %3 = icmp slt i64 %i.fe, -62
  br i1 %3, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
end_hunk_16
begin_hunk_17_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE3EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fh = sub nsw i64 1, %i.fe
  %i.fi = lshr i64 %i.fd, %i.fh                   ; 2 uses
  %i.fj = and i64 %i.fi, 1
  %i.fk = add nuw nsw i64 %i.fj, %i.fi            ; 2 uses
end_hunk_17
begin_hunk_18_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.fc = add nuw nsw i64 %i.fb, 9                ; 2 uses
  %i.fd = lshr i64 %.sroa.7.1.i.i.i.i, %i.fc      ; 6 uses
  %reass.sub.i.i = sub nsw i64 %i.eb, %i.ec
  %.neg.i.i = add nsw i64 %reass.sub.i.i, 1086
  %i.fe = add nsw i64 %.neg.i.i, %i.fb            ; 4 uses
  %i.ff = icmp slt i64 %i.fe, 1
  br i1 %i.ff, label %bb.ab, label %bb.ae, !prof !38

bb.ab:                                            ; preds = %bb.aa
  %3 = icmp slt i64 %i.fe, -62
  br i1 %3, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
end_hunk_18
begin_hunk_19_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE1EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fh = sub nsw i64 1, %i.fe
  %i.fi = lshr i64 %i.fd, %i.fh                   ; 2 uses
  %i.fj = and i64 %i.fi, 1
  %i.fk = add nuw nsw i64 %i.fj, %i.fi            ; 2 uses
end_hunk_19
begin_hunk_20_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.fc = add nuw nsw i64 %i.fb, 9                ; 2 uses
  %i.fd = lshr i64 %.sroa.7.1.i.i.i.i, %i.fc      ; 6 uses
  %reass.sub.i.i = sub nsw i64 %i.eb, %i.ec
  %.neg.i.i = add nsw i64 %reass.sub.i.i, 1086
  %i.fe = add nsw i64 %.neg.i.i, %i.fb            ; 4 uses
  %i.ff = icmp slt i64 %i.fe, 1
  br i1 %i.ff, label %bb.ab, label %bb.ae, !prof !38

bb.ab:                                            ; preds = %bb.aa
  %3 = icmp slt i64 %i.fe, -62
  br i1 %3, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
end_hunk_20
begin_hunk_21_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE2EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fh = sub nsw i64 1, %i.fe
  %i.fi = lshr i64 %i.fd, %i.fh                   ; 2 uses
  %i.fj = and i64 %i.fi, 1
  %i.fk = add nuw nsw i64 %i.fj, %i.fi            ; 2 uses
end_hunk_21
begin_hunk_22_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE4EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.fc = add nuw nsw i64 %i.fb, 9                ; 2 uses
  %i.fd = lshr i64 %.sroa.7.1.i.i.i.i, %i.fc      ; 6 uses
  %reass.sub.i.i = sub nsw i64 %i.eb, %i.ec
  %.neg.i.i = add nsw i64 %reass.sub.i.i, 1086
  %i.fe = add nsw i64 %.neg.i.i, %i.fb            ; 4 uses
  %i.ff = icmp slt i64 %i.fe, 1
  br i1 %i.ff, label %bb.ab, label %bb.ae, !prof !38

bb.ab:                                            ; preds = %bb.aa
  %3 = icmp slt i64 %i.fe, -62
  br i1 %3, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
end_hunk_22
begin_hunk_23_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE4EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12parse_numberINS0_8ondemand6numberEEENS_10error_codeEPKhRT_.exit.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fh = sub nsw i64 1, %i.fe
  %i.fi = lshr i64 %i.fd, %i.fh                   ; 2 uses
  %i.fj = and i64 %i.fi, 1
  %i.fk = add nuw nsw i64 %i.fj, %i.fi            ; 2 uses
end_hunk_23
begin_hunk_24_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE5EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.eo = add nuw nsw i64 %i.en, 9                ; 2 uses
  %i.ep = lshr i64 %.sroa.7.1.i.i.i.i.i, %i.eo    ; 6 uses
  %reass.sub.i.i = sub nsw i64 %i.dn, %i.do
  %.neg240.i.i = add nsw i64 %reass.sub.i.i, 1086
  %i.eq = add nsw i64 %.neg240.i.i, %i.en         ; 4 uses
  %i.er = icmp slt i64 %i.eq, 1
  br i1 %i.er, label %bb.x, label %bb.aa, !prof !38

bb.x:                                             ; preds = %bb.w
  %3 = icmp slt i64 %i.eq, -62
  br i1 %3, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
end_hunk_24
begin_hunk_25_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE5EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  %i.et = sub nsw i64 1, %i.eq
  %i.eu = lshr i64 %i.ep, %i.et                   ; 2 uses
  %i.ev = and i64 %i.eu, 1
  %i.ew = add nuw nsw i64 %i.ev, %i.eu            ; 2 uses
end_hunk_25
begin_hunk_26_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE6EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  %i.eo = add nuw nsw i64 %i.en, 9                ; 2 uses
  %i.ep = lshr i64 %.sroa.7.1.i.i.i.i.i, %i.eo    ; 6 uses
  %reass.sub.i.i = sub nsw i64 %i.dn, %i.do
  %.neg244.i.i = add nsw i64 %reass.sub.i.i, 1086
  %i.eq = add nsw i64 %.neg244.i.i, %i.en         ; 4 uses
  %i.er = icmp slt i64 %i.eq, 1
  br i1 %i.er, label %bb.x, label %bb.aa, !prof !38

bb.x:                                             ; preds = %bb.w
  %3 = icmp slt i64 %i.eq, -62
  br i1 %3, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
end_hunk_26
begin_hunk_27_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE6EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  %i.et = sub nsw i64 1, %i.eq
  %i.eu = lshr i64 %i.ep, %i.et                   ; 2 uses
  %i.ev = and i64 %i.eu, 1
  %i.ew = add nuw nsw i64 %i.ev, %i.eu            ; 2 uses
end_hunk_27
