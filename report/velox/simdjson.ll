inline.NumInlined: 1113
inline.NumDeleted: 361
begin_hunk_0_@_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.oc = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.od = add nuw nsw i64 %i.oc, 9                ; 2 uses
  %i.oe = lshr i64 %.sroa.7.1.i, %i.od            ; 6 uses
  %reass.sub = sub nsw i64 %i.nc, %i.nd
  %.neg.a = add nsw i64 %reass.sub, %i.oc         ; 4 uses
  %i.of = add nsw i64 %.neg.a, 1086
  %i.og = icmp slt i64 %.neg.a, -1085
  br i1 %i.og, label %bb.be, label %bb.bh, !prof !104

bb.be:                                            ; preds = %bb.bd
  %2 = icmp samesign ult i64 %.neg.a, -1148
  br i1 %2, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
end_hunk_0
begin_hunk_1_@_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %select.unfold.sink.split

bb.bg:                                            ; preds = %bb.be
  %i.oi = sub nuw nsw i64 -1085, %.neg.a
  %i.oj = lshr i64 %i.oe, %i.oi                   ; 2 uses
  %i.ok = and i64 %i.oj, 1
  %i.ol = add nuw nsw i64 %i.ok, %i.oj            ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.akk = lshr i64 %.sroa.7.1.i.i, 63            ; 2 uses
  %i.akl = add nuw nsw i64 %i.akk, 9              ; 2 uses
  %i.akm = lshr i64 %.sroa.7.1.i.i, %i.akl        ; 6 uses
  %reass.sub1589 = sub nsw i64 %i.ajk, %i.ajl
  %.neg1588.a = add nsw i64 %reass.sub1589, %i.akk ; 4 uses
  %i.akn = add nsw i64 %.neg1588.a, 1086
  %i.ako = icmp slt i64 %.neg1588.a, -1085
  br i1 %i.ako, label %bb.ei, label %bb.el, !prof !104

bb.ei:                                            ; preds = %bb.eh
  %3 = icmp samesign ult i64 %.neg1588.a, -1148
  br i1 %3, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
end_hunk_2
begin_hunk_3_@_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit

bb.ek:                                            ; preds = %bb.ei
  %i.akq = sub nuw nsw i64 -1085, %.neg1588.a
  %i.akr = lshr i64 %i.akm, %i.akq                ; 2 uses
  %i.aks = and i64 %i.akr, 1
  %i.akt = add nuw nsw i64 %i.aks, %i.akr         ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.bjc = lshr i64 %.sroa.7.1.i.i149, 63         ; 2 uses
  %i.bjd = add nuw nsw i64 %i.bjc, 9              ; 2 uses
  %i.bje = lshr i64 %.sroa.7.1.i.i149, %i.bjd     ; 6 uses
  %reass.sub1592 = sub nsw i64 %i.bic, %i.bid
  %.neg1591 = add nsw i64 %reass.sub1592, %i.bjc  ; 4 uses
  %i.bjf = add nsw i64 %.neg1591, 1086
  %i.bjg = icmp slt i64 %.neg1591, -1085
  br i1 %i.bjg, label %bb.hw, label %bb.hz, !prof !104

bb.hw:                                            ; preds = %bb.hv
  %4 = icmp samesign ult i64 %.neg1591, -1148
  br i1 %4, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
end_hunk_4
begin_hunk_5_@_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit215

bb.hy:                                            ; preds = %bb.hw
  %i.bji = sub nuw nsw i64 -1085, %.neg1591
  %i.bjj = lshr i64 %i.bje, %i.bji                ; 2 uses
  %i.bjk = and i64 %i.bjj, 1
  %i.bjl = add nuw nsw i64 %i.bjk, %i.bjj         ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN8simdjson7haswell25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.nx = lshr i64 %.sroa.7.1.i.i, 63             ; 2 uses
  %i.ny = add nuw nsw i64 %i.nx, 9                ; 2 uses
  %i.nz = lshr i64 %.sroa.7.1.i.i, %i.ny          ; 6 uses
  %reass.sub = sub nsw i64 %i.mx, %i.my
  %.neg.a = add nsw i64 %reass.sub, %i.nx         ; 4 uses
  %i.oa = add nsw i64 %.neg.a, 1086
  %i.ob = icmp slt i64 %.neg.a, -1085
  br i1 %i.ob, label %bb.bj, label %bb.bm, !prof !104

bb.bj:                                            ; preds = %bb.bi
  %2 = icmp samesign ult i64 %.neg.a, -1148
  br i1 %2, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
end_hunk_6
begin_hunk_7_@_ZN8simdjson7haswell25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %select.unfold.sink.split

bb.bl:                                            ; preds = %bb.bj
  %i.od = sub nuw nsw i64 -1085, %.neg.a
  %i.oe = lshr i64 %i.nz, %i.od                   ; 2 uses
  %i.of = and i64 %i.oe, 1
  %i.og = add nuw nsw i64 %i.of, %i.oe            ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN8simdjson7haswell25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.akf = lshr i64 %.sroa.7.1.i.i.i, 63          ; 2 uses
  %i.akg = add nuw nsw i64 %i.akf, 9              ; 2 uses
  %i.akh = lshr i64 %.sroa.7.1.i.i.i, %i.akg      ; 6 uses
  %reass.sub1353 = sub nsw i64 %i.ajf, %i.ajg
  %.neg1352.a = add nsw i64 %reass.sub1353, %i.akf ; 4 uses
  %i.aki = add nsw i64 %.neg1352.a, 1086
  %i.akj = icmp slt i64 %.neg1352.a, -1085
  br i1 %i.akj, label %bb.en, label %bb.eq, !prof !104

bb.en:                                            ; preds = %bb.em
  %3 = icmp samesign ult i64 %.neg1352.a, -1148
  br i1 %3, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
end_hunk_8
begin_hunk_9_@_ZN8simdjson7haswell25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit.i

bb.ep:                                            ; preds = %bb.en
  %i.akl = sub nuw nsw i64 -1085, %.neg1352.a
  %i.akm = lshr i64 %i.akh, %i.akl                ; 2 uses
  %i.akn = and i64 %i.akm, 1
  %i.ako = add nuw nsw i64 %i.akn, %i.akm         ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN8simdjson7haswell25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.bix = lshr i64 %.sroa.7.1.i.i317.i, 63       ; 2 uses
  %i.biy = add nuw nsw i64 %i.bix, 9              ; 2 uses
  %i.biz = lshr i64 %.sroa.7.1.i.i317.i, %i.biy   ; 6 uses
  %reass.sub1356 = sub nsw i64 %i.bhx, %i.bhy
  %.neg1355 = add nsw i64 %reass.sub1356, %i.bix  ; 4 uses
  %i.bja = add nsw i64 %.neg1355, 1086
  %i.bjb = icmp slt i64 %.neg1355, -1085
  br i1 %i.bjb, label %bb.ib, label %bb.ie, !prof !104

bb.ib:                                            ; preds = %bb.ia
  %4 = icmp samesign ult i64 %.neg1355, -1148
  br i1 %4, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
end_hunk_10
begin_hunk_11_@_ZN8simdjson7haswell25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit383.i

bb.id:                                            ; preds = %bb.ib
  %i.bjd = sub nuw nsw i64 -1085, %.neg1355
  %i.bje = lshr i64 %i.biz, %i.bjd                ; 2 uses
  %i.bjf = and i64 %i.bje, 1
  %i.bjg = add nuw nsw i64 %i.bjf, %i.bje         ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.ny = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.nz = add nuw nsw i64 %i.ny, 9                ; 2 uses
  %i.oa = lshr i64 %.sroa.7.1.i, %i.nz            ; 6 uses
  %reass.sub = sub nsw i64 %i.my, %i.mz
  %.neg.a = add nsw i64 %reass.sub, %i.ny         ; 4 uses
  %i.ob = add nsw i64 %.neg.a, 1086
  %i.oc = icmp slt i64 %.neg.a, -1085
  br i1 %i.oc, label %bb.bf, label %bb.bi, !prof !104

bb.bf:                                            ; preds = %bb.be
  %2 = icmp samesign ult i64 %.neg.a, -1148
  br i1 %2, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
end_hunk_12
begin_hunk_13_@_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %select.unfold.sink.split

bb.bh:                                            ; preds = %bb.bf
  %i.oe = sub nuw nsw i64 -1085, %.neg.a
  %i.of = lshr i64 %i.oa, %i.oe                   ; 2 uses
  %i.og = and i64 %i.of, 1
  %i.oh = add nuw nsw i64 %i.og, %i.of            ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.ajy = lshr i64 %.sroa.7.1.i.i, 63            ; 2 uses
  %i.ajz = add nuw nsw i64 %i.ajy, 9              ; 2 uses
  %i.aka = lshr i64 %.sroa.7.1.i.i, %i.ajz        ; 6 uses
  %reass.sub1710 = sub nsw i64 %i.aiy, %i.aiz
  %.neg1709.a = add nsw i64 %reass.sub1710, %i.ajy ; 4 uses
  %i.akb = add nsw i64 %.neg1709.a, 1086
  %i.akc = icmp slt i64 %.neg1709.a, -1085
  br i1 %i.akc, label %bb.ej, label %bb.em, !prof !104

bb.ej:                                            ; preds = %bb.ei
  %3 = icmp samesign ult i64 %.neg1709.a, -1148
  br i1 %3, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
end_hunk_14
begin_hunk_15_@_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit

bb.el:                                            ; preds = %bb.ej
  %i.ake = sub nuw nsw i64 -1085, %.neg1709.a
  %i.akf = lshr i64 %i.aka, %i.ake                ; 2 uses
  %i.akg = and i64 %i.akf, 1
  %i.akh = add nuw nsw i64 %i.akg, %i.akf         ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.bij = lshr i64 %.sroa.7.1.i.i140, 63         ; 2 uses
  %i.bik = add nuw nsw i64 %i.bij, 9              ; 2 uses
  %i.bil = lshr i64 %.sroa.7.1.i.i140, %i.bik     ; 6 uses
  %reass.sub1713 = sub nsw i64 %i.bhj, %i.bhk
  %.neg1712 = add nsw i64 %reass.sub1713, %i.bij  ; 4 uses
  %i.bim = add nsw i64 %.neg1712, 1086
  %i.bin = icmp slt i64 %.neg1712, -1085
  br i1 %i.bin, label %bb.hx, label %bb.ia, !prof !104

bb.hx:                                            ; preds = %bb.hw
  %4 = icmp samesign ult i64 %.neg1712, -1148
  br i1 %4, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
end_hunk_16
begin_hunk_17_@_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit202

bb.hz:                                            ; preds = %bb.hx
  %i.bip = sub nuw nsw i64 -1085, %.neg1712
  %i.biq = lshr i64 %i.bil, %i.bip                ; 2 uses
  %i.bir = and i64 %i.biq, 1
  %i.bis = add nuw nsw i64 %i.bir, %i.biq         ; 2 uses
end_hunk_17
begin_hunk_18_@_ZN8simdjson7icelake25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.nt = lshr i64 %.sroa.7.1.i.i, 63             ; 2 uses
  %i.nu = add nuw nsw i64 %i.nt, 9                ; 2 uses
  %i.nv = lshr i64 %.sroa.7.1.i.i, %i.nu          ; 6 uses
  %reass.sub = sub nsw i64 %i.mt, %i.mu
  %.neg.a = add nsw i64 %reass.sub, %i.nt         ; 4 uses
  %i.nw = add nsw i64 %.neg.a, 1086
  %i.nx = icmp slt i64 %.neg.a, -1085
  br i1 %i.nx, label %bb.bj, label %bb.bm, !prof !104

bb.bj:                                            ; preds = %bb.bi
  %2 = icmp samesign ult i64 %.neg.a, -1148
  br i1 %2, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
end_hunk_18
begin_hunk_19_@_ZN8simdjson7icelake25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %select.unfold.sink.split

bb.bl:                                            ; preds = %bb.bj
  %i.nz = sub nuw nsw i64 -1085, %.neg.a
  %i.oa = lshr i64 %i.nv, %i.nz                   ; 2 uses
  %i.ob = and i64 %i.oa, 1
  %i.oc = add nuw nsw i64 %i.ob, %i.oa            ; 2 uses
end_hunk_19
begin_hunk_20_@_ZN8simdjson7icelake25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.ajt = lshr i64 %.sroa.7.1.i.i.i, 63          ; 2 uses
  %i.aju = add nuw nsw i64 %i.ajt, 9              ; 2 uses
  %i.ajv = lshr i64 %.sroa.7.1.i.i.i, %i.aju      ; 6 uses
  %reass.sub1487 = sub nsw i64 %i.ait, %i.aiu
  %.neg1486.a = add nsw i64 %reass.sub1487, %i.ajt ; 4 uses
  %i.ajw = add nsw i64 %.neg1486.a, 1086
  %i.ajx = icmp slt i64 %.neg1486.a, -1085
  br i1 %i.ajx, label %bb.en, label %bb.eq, !prof !104

bb.en:                                            ; preds = %bb.em
  %3 = icmp samesign ult i64 %.neg1486.a, -1148
  br i1 %3, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
end_hunk_20
begin_hunk_21_@_ZN8simdjson7icelake25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit.i

bb.ep:                                            ; preds = %bb.en
  %i.ajz = sub nuw nsw i64 -1085, %.neg1486.a
  %i.aka = lshr i64 %i.ajv, %i.ajz                ; 2 uses
  %i.akb = and i64 %i.aka, 1
  %i.akc = add nuw nsw i64 %i.akb, %i.aka         ; 2 uses
end_hunk_21
begin_hunk_22_@_ZN8simdjson7icelake25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.bie = lshr i64 %.sroa.7.1.i.i308.i, 63       ; 2 uses
  %i.bif = add nuw nsw i64 %i.bie, 9              ; 2 uses
  %i.big = lshr i64 %.sroa.7.1.i.i308.i, %i.bif   ; 6 uses
  %reass.sub1490 = sub nsw i64 %i.bhe, %i.bhf
  %.neg1489 = add nsw i64 %reass.sub1490, %i.bie  ; 4 uses
  %i.bih = add nsw i64 %.neg1489, 1086
  %i.bii = icmp slt i64 %.neg1489, -1085
  br i1 %i.bii, label %bb.ib, label %bb.ie, !prof !104

bb.ib:                                            ; preds = %bb.ia
  %4 = icmp samesign ult i64 %.neg1489, -1148
  br i1 %4, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
end_hunk_22
begin_hunk_23_@_ZN8simdjson7icelake25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit370.i

bb.id:                                            ; preds = %bb.ib
  %i.bik = sub nuw nsw i64 -1085, %.neg1489
  %i.bil = lshr i64 %i.big, %i.bik                ; 2 uses
  %i.bim = and i64 %i.bil, 1
  %i.bin = add nuw nsw i64 %i.bim, %i.bil         ; 2 uses
end_hunk_23
begin_hunk_24_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.nu = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.nv = add nuw nsw i64 %i.nu, 9                ; 2 uses
  %i.nw = lshr i64 %.sroa.7.1.i, %i.nv            ; 6 uses
  %reass.sub = sub nsw i64 %i.mu, %i.mv
  %.neg.a = add nsw i64 %reass.sub, %i.nu         ; 4 uses
  %i.nx = add nsw i64 %.neg.a, 1086
  %i.ny = icmp slt i64 %.neg.a, -1085
  br i1 %i.ny, label %bb.bg, label %bb.bj, !prof !104

bb.bg:                                            ; preds = %bb.bf
  %2 = icmp samesign ult i64 %.neg.a, -1148
  br i1 %2, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
end_hunk_24
begin_hunk_25_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %select.unfold.sink.split

bb.bi:                                            ; preds = %bb.bg
  %i.oa = sub nuw nsw i64 -1085, %.neg.a
  %i.ob = lshr i64 %i.nw, %i.oa                   ; 2 uses
  %i.oc = and i64 %i.ob, 1
  %i.od = add nuw nsw i64 %i.oc, %i.ob            ; 2 uses
end_hunk_25
begin_hunk_26_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.ajm = lshr i64 %.sroa.7.1.i.i, 63            ; 2 uses
  %i.ajn = add nuw nsw i64 %i.ajm, 9              ; 2 uses
  %i.ajo = lshr i64 %.sroa.7.1.i.i, %i.ajn        ; 6 uses
  %reass.sub1618 = sub nsw i64 %i.aim, %i.ain
  %.neg1617.a = add nsw i64 %reass.sub1618, %i.ajm ; 4 uses
  %i.ajp = add nsw i64 %.neg1617.a, 1086
  %i.ajq = icmp slt i64 %.neg1617.a, -1085
  br i1 %i.ajq, label %bb.em, label %bb.ep, !prof !104

bb.em:                                            ; preds = %bb.el
  %3 = icmp samesign ult i64 %.neg1617.a, -1148
  br i1 %3, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
end_hunk_26
begin_hunk_27_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit

bb.eo:                                            ; preds = %bb.em
  %i.ajs = sub nuw nsw i64 -1085, %.neg1617.a
  %i.ajt = lshr i64 %i.ajo, %i.ajs                ; 2 uses
  %i.aju = and i64 %i.ajt, 1
  %i.ajv = add nuw nsw i64 %i.aju, %i.ajt         ; 2 uses
end_hunk_27
begin_hunk_28_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.bho = lshr i64 %.sroa.7.1.i.i142, 63         ; 2 uses
  %i.bhp = add nuw nsw i64 %i.bho, 9              ; 2 uses
  %i.bhq = lshr i64 %.sroa.7.1.i.i142, %i.bhp     ; 6 uses
  %reass.sub1621 = sub nsw i64 %i.bgo, %i.bgp
  %.neg1620 = add nsw i64 %reass.sub1621, %i.bho  ; 4 uses
  %i.bhr = add nsw i64 %.neg1620, 1086
  %i.bhs = icmp slt i64 %.neg1620, -1085
  br i1 %i.bhs, label %bb.ic, label %bb.if, !prof !104

bb.ic:                                            ; preds = %bb.ib
  %4 = icmp samesign ult i64 %.neg1620, -1148
  br i1 %4, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
end_hunk_28
begin_hunk_29_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit206

bb.ie:                                            ; preds = %bb.ic
  %i.bhu = sub nuw nsw i64 -1085, %.neg1620
  %i.bhv = lshr i64 %i.bhq, %i.bhu                ; 2 uses
  %i.bhw = and i64 %i.bhv, 1
  %i.bhx = add nuw nsw i64 %i.bhw, %i.bhv         ; 2 uses
end_hunk_29
begin_hunk_30_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.np = lshr i64 %.sroa.7.1.i.i, 63             ; 2 uses
  %i.nq = add nuw nsw i64 %i.np, 9                ; 2 uses
  %i.nr = lshr i64 %.sroa.7.1.i.i, %i.nq          ; 6 uses
  %reass.sub = sub nsw i64 %i.mp, %i.mq
  %.neg.a = add nsw i64 %reass.sub, %i.np         ; 4 uses
  %i.ns = add nsw i64 %.neg.a, 1086
  %i.nt = icmp slt i64 %.neg.a, -1085
  br i1 %i.nt, label %bb.bk, label %bb.bn, !prof !104

bb.bk:                                            ; preds = %bb.bj
  %2 = icmp samesign ult i64 %.neg.a, -1148
  br i1 %2, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
end_hunk_30
begin_hunk_31_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %select.unfold.sink.split

bb.bm:                                            ; preds = %bb.bk
  %i.nv = sub nuw nsw i64 -1085, %.neg.a
  %i.nw = lshr i64 %i.nr, %i.nv                   ; 2 uses
  %i.nx = and i64 %i.nw, 1
  %i.ny = add nuw nsw i64 %i.nx, %i.nw            ; 2 uses
end_hunk_31
begin_hunk_32_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.ajh = lshr i64 %.sroa.7.1.i.i.i, 63          ; 2 uses
  %i.aji = add nuw nsw i64 %i.ajh, 9              ; 2 uses
  %i.ajj = lshr i64 %.sroa.7.1.i.i.i, %i.aji      ; 6 uses
  %reass.sub1391 = sub nsw i64 %i.aih, %i.aii
  %.neg1390.a = add nsw i64 %reass.sub1391, %i.ajh ; 4 uses
  %i.ajk = add nsw i64 %.neg1390.a, 1086
  %i.ajl = icmp slt i64 %.neg1390.a, -1085
  br i1 %i.ajl, label %bb.eq, label %bb.et, !prof !104

bb.eq:                                            ; preds = %bb.ep
  %3 = icmp samesign ult i64 %.neg1390.a, -1148
  br i1 %3, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
end_hunk_32
begin_hunk_33_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit.i

bb.es:                                            ; preds = %bb.eq
  %i.ajn = sub nuw nsw i64 -1085, %.neg1390.a
  %i.ajo = lshr i64 %i.ajj, %i.ajn                ; 2 uses
  %i.ajp = and i64 %i.ajo, 1
  %i.ajq = add nuw nsw i64 %i.ajp, %i.ajo         ; 2 uses
end_hunk_33
begin_hunk_34_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.bhj = lshr i64 %.sroa.7.1.i.i310.i, 63       ; 2 uses
  %i.bhk = add nuw nsw i64 %i.bhj, 9              ; 2 uses
  %i.bhl = lshr i64 %.sroa.7.1.i.i310.i, %i.bhk   ; 6 uses
  %reass.sub1394 = sub nsw i64 %i.bgj, %i.bgk
  %.neg1393 = add nsw i64 %reass.sub1394, %i.bhj  ; 4 uses
  %i.bhm = add nsw i64 %.neg1393, 1086
  %i.bhn = icmp slt i64 %.neg1393, -1085
  br i1 %i.bhn, label %bb.ig, label %bb.ij, !prof !104

bb.ig:                                            ; preds = %bb.if
  %4 = icmp samesign ult i64 %.neg1393, -1148
  br i1 %4, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
end_hunk_34
begin_hunk_35_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit374.i

bb.ii:                                            ; preds = %bb.ig
  %i.bhp = sub nuw nsw i64 -1085, %.neg1393
  %i.bhq = lshr i64 %i.bhl, %i.bhp                ; 2 uses
  %i.bhr = and i64 %i.bhq, 1
  %i.bhs = add nuw nsw i64 %i.bhr, %i.bhq         ; 2 uses
end_hunk_35
begin_hunk_36_@_ZN8simdjson8fallback25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.nc = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.nd = add nuw nsw i64 %i.nc, 9                ; 2 uses
  %i.ne = lshr i64 %.sroa.7.1.i, %i.nd            ; 6 uses
  %reass.sub = sub nsw i64 %i.mc, %i.md
  %.neg.a = add nsw i64 %reass.sub, %i.nc         ; 4 uses
  %i.nf = add nsw i64 %.neg.a, 1086
  %i.ng = icmp slt i64 %.neg.a, -1085
  br i1 %i.ng, label %bb.be, label %bb.bh, !prof !104

bb.be:                                            ; preds = %bb.bd
  %2 = icmp samesign ult i64 %.neg.a, -1148
  br i1 %2, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
end_hunk_36
begin_hunk_37_@_ZN8simdjson8fallback25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %.noexc87.thread

bb.bg:                                            ; preds = %bb.be
  %i.ni = sub nuw nsw i64 -1085, %.neg.a
  %i.nj = lshr i64 %i.ne, %i.ni                   ; 2 uses
  %i.nk = and i64 %i.nj, 1
  %i.nl = add nuw nsw i64 %i.nk, %i.nj            ; 2 uses
end_hunk_37
begin_hunk_38_@_ZN8simdjson8fallback25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.agz = lshr i64 %.sroa.7.1.i.i, 63            ; 2 uses
  %i.aha = add nuw nsw i64 %i.agz, 9              ; 2 uses
  %i.ahb = lshr i64 %.sroa.7.1.i.i, %i.aha        ; 6 uses
  %reass.sub1377 = sub nsw i64 %i.afz, %i.aga
  %.neg1376.a = add nsw i64 %reass.sub1377, %i.agz ; 4 uses
  %i.ahc = add nsw i64 %.neg1376.a, 1086
  %i.ahd = icmp slt i64 %.neg1376.a, -1085
  br i1 %i.ahd, label %bb.ej, label %bb.em, !prof !104

bb.ej:                                            ; preds = %bb.ei
  %3 = icmp samesign ult i64 %.neg1376.a, -1148
  br i1 %3, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
end_hunk_38
begin_hunk_39_@_ZN8simdjson8fallback25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.el:                                            ; preds = %bb.ej
  %i.ahf = sub nuw nsw i64 -1085, %.neg1376.a
  %i.ahg = lshr i64 %i.ahb, %i.ahf                ; 2 uses
  %i.ahh = and i64 %i.ahg, 1
  %i.ahi = add nuw nsw i64 %i.ahh, %i.ahg         ; 2 uses
end_hunk_39
begin_hunk_40_@_ZN8simdjson8fallback25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.bdi = lshr i64 %.sroa.7.1.i.i135, 63         ; 2 uses
  %i.bdj = add nuw nsw i64 %i.bdi, 9              ; 2 uses
  %i.bdk = lshr i64 %.sroa.7.1.i.i135, %i.bdj     ; 6 uses
  %reass.sub1380 = sub nsw i64 %i.bci, %i.bcj
  %.neg1379 = add nsw i64 %reass.sub1380, %i.bdi  ; 4 uses
  %i.bdl = add nsw i64 %.neg1379, 1086
  %i.bdm = icmp slt i64 %.neg1379, -1085
  br i1 %i.bdm, label %bb.hy, label %bb.ib, !prof !104

bb.hy:                                            ; preds = %bb.hx
  %4 = icmp samesign ult i64 %.neg1379, -1148
  br i1 %4, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
end_hunk_40
begin_hunk_41_@_ZN8simdjson8fallback25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i140.thread

bb.ia:                                            ; preds = %bb.hy
  %i.bdo = sub nuw nsw i64 -1085, %.neg1379
  %i.bdp = lshr i64 %i.bdk, %i.bdo                ; 2 uses
  %i.bdq = and i64 %i.bdp, 1
  %i.bdr = add nuw nsw i64 %i.bdq, %i.bdp         ; 2 uses
end_hunk_41
begin_hunk_42_@_ZN8simdjson8fallback25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.mx = lshr i64 %.sroa.7.1.i.i, 63             ; 2 uses
  %i.my = add nuw nsw i64 %i.mx, 9                ; 2 uses
  %i.mz = lshr i64 %.sroa.7.1.i.i, %i.my          ; 6 uses
  %reass.sub = sub nsw i64 %i.lx, %i.ly
  %.neg.a = add nsw i64 %reass.sub, %i.mx         ; 4 uses
  %i.na = add nsw i64 %.neg.a, 1086
  %i.nb = icmp slt i64 %.neg.a, -1085
  br i1 %i.nb, label %bb.bi, label %bb.bl, !prof !104

bb.bi:                                            ; preds = %bb.bh
  %2 = icmp samesign ult i64 %.neg.a, -1148
  br i1 %2, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
end_hunk_42
begin_hunk_43_@_ZN8simdjson8fallback25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bk:                                            ; preds = %bb.bi
  %i.nd = sub nuw nsw i64 -1085, %.neg.a
  %i.ne = lshr i64 %i.mz, %i.nd                   ; 2 uses
  %i.nf = and i64 %i.ne, 1
  %i.ng = add nuw nsw i64 %i.nf, %i.ne            ; 2 uses
end_hunk_43
begin_hunk_44_@_ZN8simdjson8fallback25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.agu = lshr i64 %.sroa.7.1.i.i.i, 63          ; 2 uses
  %i.agv = add nuw nsw i64 %i.agu, 9              ; 2 uses
  %i.agw = lshr i64 %.sroa.7.1.i.i.i, %i.agv      ; 6 uses
  %reass.sub1161 = sub nsw i64 %i.afu, %i.afv
  %.neg1160.a = add nsw i64 %reass.sub1161, %i.agu ; 4 uses
  %i.agx = add nsw i64 %.neg1160.a, 1086
  %i.agy = icmp slt i64 %.neg1160.a, -1085
  br i1 %i.agy, label %bb.en, label %bb.eq, !prof !104

bb.en:                                            ; preds = %bb.em
  %3 = icmp samesign ult i64 %.neg1160.a, -1148
  br i1 %3, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
end_hunk_44
begin_hunk_45_@_ZN8simdjson8fallback25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

bb.ep:                                            ; preds = %bb.en
  %i.aha = sub nuw nsw i64 -1085, %.neg1160.a
  %i.ahb = lshr i64 %i.agw, %i.aha                ; 2 uses
  %i.ahc = and i64 %i.ahb, 1
  %i.ahd = add nuw nsw i64 %i.ahc, %i.ahb         ; 2 uses
end_hunk_45
begin_hunk_46_@_ZN8simdjson8fallback25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.bdd = lshr i64 %.sroa.7.1.i.i303.i, 63       ; 2 uses
  %i.bde = add nuw nsw i64 %i.bdd, 9              ; 2 uses
  %i.bdf = lshr i64 %.sroa.7.1.i.i303.i, %i.bde   ; 6 uses
  %reass.sub1164 = sub nsw i64 %i.bcd, %i.bce
  %.neg1163 = add nsw i64 %reass.sub1164, %i.bdd  ; 4 uses
  %i.bdg = add nsw i64 %.neg1163, 1086
  %i.bdh = icmp slt i64 %.neg1163, -1085
  br i1 %i.bdh, label %bb.ic, label %bb.if, !prof !104

bb.ic:                                            ; preds = %bb.ib
  %4 = icmp samesign ult i64 %.neg1163, -1148
  br i1 %4, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
end_hunk_46
begin_hunk_47_@_ZN8simdjson8fallback25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i308.i.thread

bb.ie:                                            ; preds = %bb.ic
  %i.bdj = sub nuw nsw i64 -1085, %.neg1163
  %i.bdk = lshr i64 %i.bdf, %i.bdj                ; 2 uses
  %i.bdl = and i64 %i.bdk, 1
  %i.bdm = add nuw nsw i64 %i.bdl, %i.bdk         ; 2 uses
end_hunk_47
