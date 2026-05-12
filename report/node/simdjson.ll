inline.NumInlined: 1198
inline.NumDeleted: 372
begin_hunk_0_@_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.pn = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.po = add nuw nsw i64 %i.pn, 9                ; 2 uses
  %i.pp = lshr i64 %.sroa.7.1.i, %i.po            ; 6 uses
  %.neg = add nsw i64 %i.pn, -1
  %.neg1761 = xor i64 %i.oo, 1087
  %.neg.a = add nsw i64 %.neg1761, %i.on
  %i.pq = add nsw i64 %.neg.a, %.neg              ; 4 uses
  %i.pr = icmp slt i64 %i.pq, 1
  br i1 %i.pr, label %bb.bk, label %bb.bn, !prof !60

bb.bk:                                            ; preds = %bb.bj
  %2 = icmp slt i64 %i.pq, -62
  br i1 %2, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
end_hunk_0
begin_hunk_1_@_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %select.unfold.sink.split

bb.bm:                                            ; preds = %bb.bk
  %i.pt = sub nsw i64 1, %i.pq
  %i.pu = lshr i64 %i.pp, %i.pt                   ; 2 uses
  %i.pv = and i64 %i.pu, 1
  %i.pw = add nuw nsw i64 %i.pv, %i.pu            ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.amd = lshr i64 %.sroa.7.1.i.i, 63            ; 2 uses
  %i.ame = add nuw nsw i64 %i.amd, 9              ; 2 uses
  %i.amf = lshr i64 %.sroa.7.1.i.i, %i.ame        ; 6 uses
  %.neg1888 = add nsw i64 %i.amd, -1
  %.neg1765 = xor i64 %i.ale, 1087
  %.neg1888.a = add nsw i64 %.neg1765, %i.ald
  %i.amg = add nsw i64 %.neg1888.a, %.neg1888     ; 4 uses
  %i.amh = icmp slt i64 %i.amg, 1
  br i1 %i.amh, label %bb.ep, label %bb.es, !prof !60

bb.ep:                                            ; preds = %bb.eo
  %3 = icmp slt i64 %i.amg, -62
  br i1 %3, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
end_hunk_2
begin_hunk_3_@_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit

bb.er:                                            ; preds = %bb.ep
  %i.amj = sub nsw i64 1, %i.amg
  %i.amk = lshr i64 %i.amf, %i.amj                ; 2 uses
  %i.aml = and i64 %i.amk, 1
  %i.amm = add nuw nsw i64 %i.aml, %i.amk         ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.ble = lshr i64 %.sroa.7.1.i.i132, 63         ; 2 uses
  %i.blf = add nuw nsw i64 %i.ble, 9              ; 2 uses
  %i.blg = lshr i64 %.sroa.7.1.i.i132, %i.blf     ; 6 uses
  %.neg1890 = add nsw i64 %i.ble, -1
  %.neg1769 = xor i64 %i.bkf, 1087
  %.neg1891 = add nsw i64 %.neg1769, %i.bke
  %i.blh = add nsw i64 %.neg1891, %.neg1890       ; 4 uses
  %i.bli = icmp slt i64 %i.blh, 1
  br i1 %i.bli, label %bb.ie, label %bb.ih, !prof !60

bb.ie:                                            ; preds = %bb.id
  %4 = icmp slt i64 %i.blh, -62
  br i1 %4, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
end_hunk_4
begin_hunk_5_@_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit195

bb.ig:                                            ; preds = %bb.ie
  %i.blk = sub nsw i64 1, %i.blh
  %i.bll = lshr i64 %i.blg, %i.blk                ; 2 uses
  %i.blm = and i64 %i.bll, 1
  %i.bln = add nuw nsw i64 %i.blm, %i.bll         ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN8simdjson7haswell25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.oz = lshr i64 %.sroa.7.1.i.i, 63             ; 2 uses
  %i.pa = add nuw nsw i64 %i.oz, 9                ; 2 uses
  %i.pb = lshr i64 %.sroa.7.1.i.i, %i.pa          ; 6 uses
  %.neg = add nsw i64 %i.oz, -1
  %.neg1544 = xor i64 %i.oa, 1087
  %.neg.a = add nsw i64 %.neg1544, %i.nz
  %i.pc = add nsw i64 %.neg.a, %.neg              ; 4 uses
  %i.pd = icmp slt i64 %i.pc, 1
  br i1 %i.pd, label %bb.bk, label %bb.bn, !prof !60

bb.bk:                                            ; preds = %bb.bj
  %2 = icmp slt i64 %i.pc, -62
  br i1 %2, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
end_hunk_6
begin_hunk_7_@_ZN8simdjson7haswell25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %select.unfold.sink.split

bb.bm:                                            ; preds = %bb.bk
  %i.pf = sub nsw i64 1, %i.pc
  %i.pg = lshr i64 %i.pb, %i.pf                   ; 2 uses
  %i.ph = and i64 %i.pg, 1
  %i.pi = add nuw nsw i64 %i.ph, %i.pg            ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN8simdjson7haswell25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.alp = lshr i64 %.sroa.7.1.i.i.i, 63          ; 2 uses
  %i.alq = add nuw nsw i64 %i.alp, 9              ; 2 uses
  %i.alr = lshr i64 %.sroa.7.1.i.i.i, %i.alq      ; 6 uses
  %.neg1671 = add nsw i64 %i.alp, -1
  %.neg1548 = xor i64 %i.akq, 1087
  %.neg1671.a = add nsw i64 %.neg1548, %i.akp
  %i.als = add nsw i64 %.neg1671.a, %.neg1671     ; 4 uses
  %i.alt = icmp slt i64 %i.als, 1
  br i1 %i.alt, label %bb.ep, label %bb.es, !prof !60

bb.ep:                                            ; preds = %bb.eo
  %3 = icmp slt i64 %i.als, -62
  br i1 %3, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
end_hunk_8
begin_hunk_9_@_ZN8simdjson7haswell25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit.i

bb.er:                                            ; preds = %bb.ep
  %i.alv = sub nsw i64 1, %i.als
  %i.alw = lshr i64 %i.alr, %i.alv                ; 2 uses
  %i.alx = and i64 %i.alw, 1
  %i.aly = add nuw nsw i64 %i.alx, %i.alw         ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN8simdjson7haswell25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.bkq = lshr i64 %.sroa.7.1.i.i300.i, 63       ; 2 uses
  %i.bkr = add nuw nsw i64 %i.bkq, 9              ; 2 uses
  %i.bks = lshr i64 %.sroa.7.1.i.i300.i, %i.bkr   ; 6 uses
  %.neg1673 = add nsw i64 %i.bkq, -1
  %.neg1552 = xor i64 %i.bjr, 1087
  %.neg1674 = add nsw i64 %.neg1552, %i.bjq
  %i.bkt = add nsw i64 %.neg1674, %.neg1673       ; 4 uses
  %i.bku = icmp slt i64 %i.bkt, 1
  br i1 %i.bku, label %bb.ie, label %bb.ih, !prof !60

bb.ie:                                            ; preds = %bb.id
  %4 = icmp slt i64 %i.bkt, -62
  br i1 %4, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
end_hunk_10
begin_hunk_11_@_ZN8simdjson7haswell25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit363.i

bb.ig:                                            ; preds = %bb.ie
  %i.bkw = sub nsw i64 1, %i.bkt
  %i.bkx = lshr i64 %i.bks, %i.bkw                ; 2 uses
  %i.bky = and i64 %i.bkx, 1
  %i.bkz = add nuw nsw i64 %i.bky, %i.bkx         ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.pj = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.pk = add nuw nsw i64 %i.pj, 9                ; 2 uses
  %i.pl = lshr i64 %.sroa.7.1.i, %i.pk            ; 6 uses
  %.neg = add nsw i64 %i.pj, -1
  %.neg1622 = xor i64 %i.ok, 1087
  %.neg.a = add nsw i64 %.neg1622, %i.oj
  %i.pm = add nsw i64 %.neg.a, %.neg              ; 4 uses
  %i.pn = icmp slt i64 %i.pm, 1
  br i1 %i.pn, label %bb.bk, label %bb.bn, !prof !60

bb.bk:                                            ; preds = %bb.bj
  %2 = icmp slt i64 %i.pm, -62
  br i1 %2, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
end_hunk_12
begin_hunk_13_@_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %select.unfold.sink.split

bb.bm:                                            ; preds = %bb.bk
  %i.pp = sub nsw i64 1, %i.pm
  %i.pq = lshr i64 %i.pl, %i.pp                   ; 2 uses
  %i.pr = and i64 %i.pq, 1
  %i.ps = add nuw nsw i64 %i.pr, %i.pq            ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.alr = lshr i64 %.sroa.7.1.i.i, 63            ; 2 uses
  %i.als = add nuw nsw i64 %i.alr, 9              ; 2 uses
  %i.alt = lshr i64 %.sroa.7.1.i.i, %i.als        ; 6 uses
  %.neg1749 = add nsw i64 %i.alr, -1
  %.neg1626 = xor i64 %i.aks, 1087
  %.neg1749.a = add nsw i64 %.neg1626, %i.akr
  %i.alu = add nsw i64 %.neg1749.a, %.neg1749     ; 4 uses
  %i.alv = icmp slt i64 %i.alu, 1
  br i1 %i.alv, label %bb.ep, label %bb.es, !prof !60

bb.ep:                                            ; preds = %bb.eo
  %3 = icmp slt i64 %i.alu, -62
  br i1 %3, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
end_hunk_14
begin_hunk_15_@_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit

bb.er:                                            ; preds = %bb.ep
  %i.alx = sub nsw i64 1, %i.alu
  %i.aly = lshr i64 %i.alt, %i.alx                ; 2 uses
  %i.alz = and i64 %i.aly, 1
  %i.ama = add nuw nsw i64 %i.alz, %i.aly         ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.bkl = lshr i64 %.sroa.7.1.i.i130, 63         ; 2 uses
  %i.bkm = add nuw nsw i64 %i.bkl, 9              ; 2 uses
  %i.bkn = lshr i64 %.sroa.7.1.i.i130, %i.bkm     ; 6 uses
  %.neg1751 = add nsw i64 %i.bkl, -1
  %.neg1630 = xor i64 %i.bjm, 1087
  %.neg1752 = add nsw i64 %.neg1630, %i.bjl
  %i.bko = add nsw i64 %.neg1752, %.neg1751       ; 4 uses
  %i.bkp = icmp slt i64 %i.bko, 1
  br i1 %i.bkp, label %bb.ie, label %bb.ih, !prof !60

bb.ie:                                            ; preds = %bb.id
  %4 = icmp slt i64 %i.bko, -62
  br i1 %4, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
end_hunk_16
begin_hunk_17_@_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit191

bb.ig:                                            ; preds = %bb.ie
  %i.bkr = sub nsw i64 1, %i.bko
  %i.bks = lshr i64 %i.bkn, %i.bkr                ; 2 uses
  %i.bkt = and i64 %i.bks, 1
  %i.bku = add nuw nsw i64 %i.bkt, %i.bks         ; 2 uses
end_hunk_17
begin_hunk_18_@_ZN8simdjson7icelake25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.ov = lshr i64 %.sroa.7.1.i.i, 63             ; 2 uses
  %i.ow = add nuw nsw i64 %i.ov, 9                ; 2 uses
  %i.ox = lshr i64 %.sroa.7.1.i.i, %i.ow          ; 6 uses
  %.neg = add nsw i64 %i.ov, -1
  %.neg1409 = xor i64 %i.nw, 1087
  %.neg.a = add nsw i64 %.neg1409, %i.nv
  %i.oy = add nsw i64 %.neg.a, %.neg              ; 4 uses
  %i.oz = icmp slt i64 %i.oy, 1
  br i1 %i.oz, label %bb.bk, label %bb.bn, !prof !60

bb.bk:                                            ; preds = %bb.bj
  %2 = icmp slt i64 %i.oy, -62
  br i1 %2, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
end_hunk_18
begin_hunk_19_@_ZN8simdjson7icelake25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %select.unfold.sink.split

bb.bm:                                            ; preds = %bb.bk
  %i.pb = sub nsw i64 1, %i.oy
  %i.pc = lshr i64 %i.ox, %i.pb                   ; 2 uses
  %i.pd = and i64 %i.pc, 1
  %i.pe = add nuw nsw i64 %i.pd, %i.pc            ; 2 uses
end_hunk_19
begin_hunk_20_@_ZN8simdjson7icelake25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.ald = lshr i64 %.sroa.7.1.i.i.i, 63          ; 2 uses
  %i.ale = add nuw nsw i64 %i.ald, 9              ; 2 uses
  %i.alf = lshr i64 %.sroa.7.1.i.i.i, %i.ale      ; 6 uses
  %.neg1536 = add nsw i64 %i.ald, -1
  %.neg1413 = xor i64 %i.ake, 1087
  %.neg1536.a = add nsw i64 %.neg1413, %i.akd
  %i.alg = add nsw i64 %.neg1536.a, %.neg1536     ; 4 uses
  %i.alh = icmp slt i64 %i.alg, 1
  br i1 %i.alh, label %bb.ep, label %bb.es, !prof !60

bb.ep:                                            ; preds = %bb.eo
  %3 = icmp slt i64 %i.alg, -62
  br i1 %3, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
end_hunk_20
begin_hunk_21_@_ZN8simdjson7icelake25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit.i

bb.er:                                            ; preds = %bb.ep
  %i.alj = sub nsw i64 1, %i.alg
  %i.alk = lshr i64 %i.alf, %i.alj                ; 2 uses
  %i.all = and i64 %i.alk, 1
  %i.alm = add nuw nsw i64 %i.all, %i.alk         ; 2 uses
end_hunk_21
begin_hunk_22_@_ZN8simdjson7icelake25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.bjx = lshr i64 %.sroa.7.1.i.i298.i, 63       ; 2 uses
  %i.bjy = add nuw nsw i64 %i.bjx, 9              ; 2 uses
  %i.bjz = lshr i64 %.sroa.7.1.i.i298.i, %i.bjy   ; 6 uses
  %.neg1538 = add nsw i64 %i.bjx, -1
  %.neg1417 = xor i64 %i.biy, 1087
  %.neg1539 = add nsw i64 %.neg1417, %i.bix
  %i.bka = add nsw i64 %.neg1539, %.neg1538       ; 4 uses
  %i.bkb = icmp slt i64 %i.bka, 1
  br i1 %i.bkb, label %bb.ie, label %bb.ih, !prof !60

bb.ie:                                            ; preds = %bb.id
  %4 = icmp slt i64 %i.bka, -62
  br i1 %4, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
end_hunk_22
begin_hunk_23_@_ZN8simdjson7icelake25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit359.i

bb.ig:                                            ; preds = %bb.ie
  %i.bkd = sub nsw i64 1, %i.bka
  %i.bke = lshr i64 %i.bjz, %i.bkd                ; 2 uses
  %i.bkf = and i64 %i.bke, 1
  %i.bkg = add nuw nsw i64 %i.bkf, %i.bke         ; 2 uses
end_hunk_23
begin_hunk_24_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.pm = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.pn = add nuw nsw i64 %i.pm, 9                ; 2 uses
  %i.po = lshr i64 %.sroa.7.1.i, %i.pn            ; 6 uses
  %.neg = add nsw i64 %i.pm, -1
  %.neg1565 = xor i64 %i.on, 1087
  %.neg.a = add nsw i64 %.neg1565, %i.om
  %i.pp = add nsw i64 %.neg.a, %.neg              ; 4 uses
  %i.pq = icmp slt i64 %i.pp, 1
  br i1 %i.pq, label %bb.bl, label %bb.bo, !prof !60

bb.bl:                                            ; preds = %bb.bk
  %2 = icmp slt i64 %i.pp, -62
  br i1 %2, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
end_hunk_24
begin_hunk_25_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %select.unfold.sink.split

bb.bn:                                            ; preds = %bb.bl
  %i.ps = sub nsw i64 1, %i.pp
  %i.pt = lshr i64 %i.po, %i.ps                   ; 2 uses
  %i.pu = and i64 %i.pt, 1
  %i.pv = add nuw nsw i64 %i.pu, %i.pt            ; 2 uses
end_hunk_25
begin_hunk_26_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.ama = lshr i64 %.sroa.7.1.i.i, 63            ; 2 uses
  %i.amb = add nuw nsw i64 %i.ama, 9              ; 2 uses
  %i.amc = lshr i64 %.sroa.7.1.i.i, %i.amb        ; 6 uses
  %.neg1657 = add nsw i64 %i.ama, -1
  %.neg1569 = xor i64 %i.alb, 1087
  %.neg1657.a = add nsw i64 %.neg1569, %i.ala
  %i.amd = add nsw i64 %.neg1657.a, %.neg1657     ; 4 uses
  %i.ame = icmp slt i64 %i.amd, 1
  br i1 %i.ame, label %bb.es, label %bb.ev, !prof !60

bb.es:                                            ; preds = %bb.er
  %3 = icmp slt i64 %i.amd, -62
  br i1 %3, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
end_hunk_26
begin_hunk_27_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit

bb.eu:                                            ; preds = %bb.es
  %i.amg = sub nsw i64 1, %i.amd
  %i.amh = lshr i64 %i.amc, %i.amg                ; 2 uses
  %i.ami = and i64 %i.amh, 1
  %i.amj = add nuw nsw i64 %i.ami, %i.amh         ; 2 uses
end_hunk_27
begin_hunk_28_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.bkz = lshr i64 %.sroa.7.1.i.i132, 63         ; 2 uses
  %i.bla = add nuw nsw i64 %i.bkz, 9              ; 2 uses
  %i.blb = lshr i64 %.sroa.7.1.i.i132, %i.bla     ; 6 uses
  %.neg1659 = add nsw i64 %i.bkz, -1
  %.neg1573 = xor i64 %i.bka, 1087
  %.neg1660 = add nsw i64 %.neg1573, %i.bjz
  %i.blc = add nsw i64 %.neg1660, %.neg1659       ; 4 uses
  %i.bld = icmp slt i64 %i.blc, 1
  br i1 %i.bld, label %bb.ij, label %bb.im, !prof !60

bb.ij:                                            ; preds = %bb.ii
  %4 = icmp slt i64 %i.blc, -62
  br i1 %4, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
end_hunk_28
begin_hunk_29_@_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit195

bb.il:                                            ; preds = %bb.ij
  %i.blf = sub nsw i64 1, %i.blc
  %i.blg = lshr i64 %i.blb, %i.blf                ; 2 uses
  %i.blh = and i64 %i.blg, 1
  %i.bli = add nuw nsw i64 %i.blh, %i.blg         ; 2 uses
end_hunk_29
begin_hunk_30_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.oy = lshr i64 %.sroa.7.1.i.i, 63             ; 2 uses
  %i.oz = add nuw nsw i64 %i.oy, 9                ; 2 uses
  %i.pa = lshr i64 %.sroa.7.1.i.i, %i.oz          ; 6 uses
  %.neg = add nsw i64 %i.oy, -1
  %.neg1348 = xor i64 %i.nz, 1087
  %.neg.a = add nsw i64 %.neg1348, %i.ny
  %i.pb = add nsw i64 %.neg.a, %.neg              ; 4 uses
  %i.pc = icmp slt i64 %i.pb, 1
  br i1 %i.pc, label %bb.bl, label %bb.bo, !prof !60

bb.bl:                                            ; preds = %bb.bk
  %2 = icmp slt i64 %i.pb, -62
  br i1 %2, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
end_hunk_30
begin_hunk_31_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %select.unfold.sink.split

bb.bn:                                            ; preds = %bb.bl
  %i.pe = sub nsw i64 1, %i.pb
  %i.pf = lshr i64 %i.pa, %i.pe                   ; 2 uses
  %i.pg = and i64 %i.pf, 1
  %i.ph = add nuw nsw i64 %i.pg, %i.pf            ; 2 uses
end_hunk_31
begin_hunk_32_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.alm = lshr i64 %.sroa.7.1.i.i.i, 63          ; 2 uses
  %i.aln = add nuw nsw i64 %i.alm, 9              ; 2 uses
  %i.alo = lshr i64 %.sroa.7.1.i.i.i, %i.aln      ; 6 uses
  %.neg1440 = add nsw i64 %i.alm, -1
  %.neg1352 = xor i64 %i.akn, 1087
  %.neg1440.a = add nsw i64 %.neg1352, %i.akm
  %i.alp = add nsw i64 %.neg1440.a, %.neg1440     ; 4 uses
  %i.alq = icmp slt i64 %i.alp, 1
  br i1 %i.alq, label %bb.es, label %bb.ev, !prof !60

bb.es:                                            ; preds = %bb.er
  %3 = icmp slt i64 %i.alp, -62
  br i1 %3, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
end_hunk_32
begin_hunk_33_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit.i

bb.eu:                                            ; preds = %bb.es
  %i.als = sub nsw i64 1, %i.alp
  %i.alt = lshr i64 %i.alo, %i.als                ; 2 uses
  %i.alu = and i64 %i.alt, 1
  %i.alv = add nuw nsw i64 %i.alu, %i.alt         ; 2 uses
end_hunk_33
begin_hunk_34_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.bkl = lshr i64 %.sroa.7.1.i.i300.i, 63       ; 2 uses
  %i.bkm = add nuw nsw i64 %i.bkl, 9              ; 2 uses
  %i.bkn = lshr i64 %.sroa.7.1.i.i300.i, %i.bkm   ; 6 uses
  %.neg1442 = add nsw i64 %i.bkl, -1
  %.neg1356 = xor i64 %i.bjm, 1087
  %.neg1443 = add nsw i64 %.neg1356, %i.bjl
  %i.bko = add nsw i64 %.neg1443, %.neg1442       ; 4 uses
  %i.bkp = icmp slt i64 %i.bko, 1
  br i1 %i.bkp, label %bb.ij, label %bb.im, !prof !60

bb.ij:                                            ; preds = %bb.ii
  %4 = icmp slt i64 %i.bko, -62
  br i1 %4, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
end_hunk_34
begin_hunk_35_@_ZN8simdjson8westmere25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator15visit_primitiveINS2_12tape_builderEEENS_10error_codeERT_PKh.exit363.i

bb.il:                                            ; preds = %bb.ij
  %i.bkr = sub nsw i64 1, %i.bko
  %i.bks = lshr i64 %i.bkn, %i.bkr                ; 2 uses
  %i.bkt = and i64 %i.bks, 1
  %i.bku = add nuw nsw i64 %i.bkt, %i.bks         ; 2 uses
end_hunk_35
begin_hunk_36_@_ZN8simdjson8fallback25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.ou = lshr i64 %.sroa.7.1.i, 63               ; 2 uses
  %i.ov = add nuw nsw i64 %i.ou, 9                ; 2 uses
  %i.ow = lshr i64 %.sroa.7.1.i, %i.ov            ; 6 uses
  %.neg = add nsw i64 %i.ou, -1
  %.neg1329 = xor i64 %i.nv, 1087
  %.neg.a = add nsw i64 %.neg1329, %i.nu
  %i.ox = add nsw i64 %.neg.a, %.neg              ; 4 uses
  %i.oy = icmp slt i64 %i.ox, 1
  br i1 %i.oy, label %bb.bk, label %bb.bn, !prof !60

bb.bk:                                            ; preds = %bb.bj
  %2 = icmp slt i64 %i.ox, -62
  br i1 %2, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
end_hunk_36
begin_hunk_37_@_ZN8simdjson8fallback25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.thread

bb.bm:                                            ; preds = %bb.bk
  %i.pa = sub nsw i64 1, %i.ox
  %i.pb = lshr i64 %i.ow, %i.pa                   ; 2 uses
  %i.pc = and i64 %i.pb, 1
  %i.pd = add nuw nsw i64 %i.pc, %i.pb            ; 2 uses
end_hunk_37
begin_hunk_38_@_ZN8simdjson8fallback25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.ajn = lshr i64 %.sroa.7.1.i.i, 63            ; 2 uses
  %i.ajo = add nuw nsw i64 %i.ajn, 9              ; 2 uses
  %i.ajp = lshr i64 %.sroa.7.1.i.i, %i.ajo        ; 6 uses
  %.neg1416 = add nsw i64 %i.ajn, -1
  %.neg1333 = xor i64 %i.aio, 1087
  %.neg1416.a = add nsw i64 %.neg1333, %i.ain
  %i.ajq = add nsw i64 %.neg1416.a, %.neg1416     ; 4 uses
  %i.ajr = icmp slt i64 %i.ajq, 1
  br i1 %i.ajr, label %bb.er, label %bb.eu, !prof !60

bb.er:                                            ; preds = %bb.eq
  %3 = icmp slt i64 %i.ajq, -62
  br i1 %3, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
end_hunk_38
begin_hunk_39_@_ZN8simdjson8fallback25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.et:                                            ; preds = %bb.er
  %i.ajt = sub nsw i64 1, %i.ajq
  %i.aju = lshr i64 %i.ajp, %i.ajt                ; 2 uses
  %i.ajv = and i64 %i.aju, 1
  %i.ajw = add nuw nsw i64 %i.ajv, %i.aju         ; 2 uses
end_hunk_39
begin_hunk_40_@_ZN8simdjson8fallback25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  %i.bgt = lshr i64 %.sroa.7.1.i.i125, 63         ; 2 uses
  %i.bgu = add nuw nsw i64 %i.bgt, 9              ; 2 uses
  %i.bgv = lshr i64 %.sroa.7.1.i.i125, %i.bgu     ; 6 uses
  %.neg1418 = add nsw i64 %i.bgt, -1
  %.neg1337 = xor i64 %i.bfu, 1087
  %.neg1419 = add nsw i64 %.neg1337, %i.bft
  %i.bgw = add nsw i64 %.neg1419, %.neg1418       ; 4 uses
  %i.bgx = icmp slt i64 %i.bgw, 1
  br i1 %i.bgx, label %bb.ii, label %bb.il, !prof !60

bb.ii:                                            ; preds = %bb.ih
  %4 = icmp slt i64 %i.bgw, -62
  br i1 %4, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
end_hunk_40
begin_hunk_41_@_ZN8simdjson8fallback25dom_parser_implementation6stage2ERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i130.thread

bb.ik:                                            ; preds = %bb.ii
  %i.bgz = sub nsw i64 1, %i.bgw
  %i.bha = lshr i64 %i.bgv, %i.bgz                ; 2 uses
  %i.bhb = and i64 %i.bha, 1
  %i.bhc = add nuw nsw i64 %i.bhb, %i.bha         ; 2 uses
end_hunk_41
begin_hunk_42_@_ZN8simdjson8fallback25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.og = lshr i64 %.sroa.7.1.i.i, 63             ; 2 uses
  %i.oh = add nuw nsw i64 %i.og, 9                ; 2 uses
  %i.oi = lshr i64 %.sroa.7.1.i.i, %i.oh          ; 6 uses
  %.neg = add nsw i64 %i.og, -1
  %.neg1123 = xor i64 %i.nh, 1087
  %.neg.a = add nsw i64 %.neg1123, %i.ng
  %i.oj = add nsw i64 %.neg.a, %.neg              ; 4 uses
  %i.ok = icmp slt i64 %i.oj, 1
  br i1 %i.ok, label %bb.bk, label %bb.bn, !prof !60

bb.bk:                                            ; preds = %bb.bj
  %2 = icmp slt i64 %i.oj, -62
  br i1 %2, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
end_hunk_42
begin_hunk_43_@_ZN8simdjson8fallback25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.thread

bb.bm:                                            ; preds = %bb.bk
  %i.om = sub nsw i64 1, %i.oj
  %i.on = lshr i64 %i.oi, %i.om                   ; 2 uses
  %i.oo = and i64 %i.on, 1
  %i.op = add nuw nsw i64 %i.oo, %i.on            ; 2 uses
end_hunk_43
begin_hunk_44_@_ZN8simdjson8fallback25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.aiz = lshr i64 %.sroa.7.1.i.i.i, 63          ; 2 uses
  %i.aja = add nuw nsw i64 %i.aiz, 9              ; 2 uses
  %i.ajb = lshr i64 %.sroa.7.1.i.i.i, %i.aja      ; 6 uses
  %.neg1210 = add nsw i64 %i.aiz, -1
  %.neg1127 = xor i64 %i.aia, 1087
  %.neg1210.a = add nsw i64 %.neg1127, %i.ahz
  %i.ajc = add nsw i64 %.neg1210.a, %.neg1210     ; 4 uses
  %i.ajd = icmp slt i64 %i.ajc, 1
  br i1 %i.ajd, label %bb.er, label %bb.eu, !prof !60

bb.er:                                            ; preds = %bb.eq
  %3 = icmp slt i64 %i.ajc, -62
  br i1 %3, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
end_hunk_44
begin_hunk_45_@_ZN8simdjson8fallback25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i.i.thread

bb.et:                                            ; preds = %bb.er
  %i.ajf = sub nsw i64 1, %i.ajc
  %i.ajg = lshr i64 %i.ajb, %i.ajf                ; 2 uses
  %i.ajh = and i64 %i.ajg, 1
  %i.aji = add nuw nsw i64 %i.ajh, %i.ajg         ; 2 uses
end_hunk_45
begin_hunk_46_@_ZN8simdjson8fallback25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  %i.bgf = lshr i64 %.sroa.7.1.i.i293.i, 63       ; 2 uses
  %i.bgg = add nuw nsw i64 %i.bgf, 9              ; 2 uses
  %i.bgh = lshr i64 %.sroa.7.1.i.i293.i, %i.bgg   ; 6 uses
  %.neg1212 = add nsw i64 %i.bgf, -1
  %.neg1131 = xor i64 %i.bfg, 1087
  %.neg1213 = add nsw i64 %.neg1131, %i.bff
  %i.bgi = add nsw i64 %.neg1213, %.neg1212       ; 4 uses
  %i.bgj = icmp slt i64 %i.bgi, 1
  br i1 %i.bgj, label %bb.ii, label %bb.il, !prof !60

bb.ii:                                            ; preds = %bb.ih
  %4 = icmp slt i64 %i.bgi, -62
  br i1 %4, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
end_hunk_46
begin_hunk_47_@_ZN8simdjson8fallback25dom_parser_implementation11stage2_nextERNS_3dom8documentE:bb.a
  br label %_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_116compute_float_64ElmbRd.exit.i298.i.thread

bb.ik:                                            ; preds = %bb.ii
  %i.bgl = sub nsw i64 1, %i.bgi
  %i.bgm = lshr i64 %i.bgh, %i.bgl                ; 2 uses
  %i.bgn = and i64 %i.bgm, 1
  %i.bgo = add nuw nsw i64 %i.bgn, %i.bgm         ; 2 uses
end_hunk_47
