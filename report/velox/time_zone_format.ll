inline.NumInlined: 498
inline.NumDeleted: 172
begin_hunk_0_@_ZN4absl12lts_2024011613time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a

bb.ka:                                            ; preds = %.lr.ph1412
  %i.ana = mul nsw i32 %.05397.i1411, 10          ; 2 uses
  %i.anb = or disjoint i32 %i.amx, -2147483648
  %i.anc = icmp slt i32 %i.ana, %i.anb
  br i1 %i.anc, label %select.unfold.i, label %bb.kb

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_:bb.a

bb.g:                                             ; preds = %bb.f
  %i.k = mul nsw i32 %.05397, 10                  ; 2 uses
  %i.l = or disjoint i32 %i.h, -2147483648
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %select.unfold, label %bb.h

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2024011613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a
bb.k:                                             ; preds = %bb.j
  %i.be = mul nsw i64 %.05396.i, 10               ; 2 uses
  %i.bf = sext i32 %i.bb to i64                   ; 2 uses
  %i.bg = or disjoint i64 %i.bf, -9223372036854775808
  %i.bh = icmp slt i64 %i.be, %i.bg
  br i1 %i.bh, label %select.unfold.i, label %bb.l

end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2024011613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a
  %i.cf = ptrtoint ptr %memchr.i324.peel to i64
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = sub i32 %i.cg, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.ci = or disjoint i32 %i.ch, -2147483648
  %i.cj = icmp sgt i32 %i.ch, 9                   ; 3 uses
  %i.ck = icmp slt i32 %i.ce, %i.ci
  %brmerge = select i1 %i.cj, i1 true, i1 %i.ck
  %.mux = select i1 %i.cj, i32 %i.ca, i32 -2147483640
  %.mux1464 = select i1 %i.cj, i1 true, i1 false
  br i1 %brmerge, label %select.unfold.i325, label %select.unfold.i325.loopexit.loopexit.split.loop.exit1460
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2024011613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a
  %i.dh = ptrtoint ptr %memchr.i345.peel to i64
  %i.di = trunc i64 %i.dh to i32
  %i.dj = sub i32 %i.di, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.dk = or disjoint i32 %i.dj, -2147483648
  %i.dl = icmp sgt i32 %i.dj, 9                   ; 3 uses
  %i.dm = icmp slt i32 %i.dg, %i.dk
  %brmerge1465 = select i1 %i.dl, i1 true, i1 %i.dm
  %.mux1466 = select i1 %i.dl, i32 %i.dc, i32 -2147483640
  %.mux1467 = select i1 %i.dl, i1 true, i1 false
  br i1 %brmerge1465, label %select.unfold.i347, label %select.unfold.i347.loopexit.loopexit.split.loop.exit1444
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2024011613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a

bb.ae:                                            ; preds = %bb.ad
  %i.ee = mul nsw i32 %.05397.i373, 10            ; 2 uses
  %i.ef = or disjoint i32 %i.eb, -2147483648
  %i.eg = icmp slt i32 %i.ee, %i.ef
  br i1 %i.eg, label %select.unfold.i378, label %bb.af

end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2024011613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a

bb.al:                                            ; preds = %bb.ak
  %i.ez = mul nsw i32 %.05397.i404, 10            ; 2 uses
  %i.fa = or disjoint i32 %i.ew, -2147483648
  %i.fb = icmp slt i32 %i.ez, %i.fa
  br i1 %i.fb, label %select.unfold.i409, label %bb.am

end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2024011613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a

bb.as:                                            ; preds = %bb.ar
  %i.fu = mul nsw i32 %.05397.i435, 10            ; 2 uses
  %i.fv = or disjoint i32 %i.fr, -2147483648
  %i.fw = icmp slt i32 %i.fu, %i.fv
  br i1 %i.fw, label %select.unfold.i440, label %bb.at

end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2024011613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a

bb.ba:                                            ; preds = %bb.az
  %i.gr = mul nsw i32 %.05397.i466, 10            ; 2 uses
  %i.gs = or disjoint i32 %i.go, -2147483648
  %i.gt = icmp slt i32 %i.gr, %i.gs
  br i1 %i.gt, label %select.unfold.i471, label %bb.bb

end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2024011613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a
  %i.hq = ptrtoint ptr %memchr.i500.peel to i64
  %i.hr = trunc i64 %i.hq to i32
  %i.hs = sub i32 %i.hr, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.ht = or disjoint i32 %i.hs, -2147483648
  %i.hu = icmp sgt i32 %i.hs, 9                   ; 3 uses
  %i.hv = icmp slt i32 %i.hp, %i.ht
  %brmerge1468 = select i1 %i.hu, i1 true, i1 %i.hv
  %.mux1469 = select i1 %i.hu, i32 %i.hl, i32 -2147483640
  %.mux1470 = select i1 %i.hu, i1 true, i1 false
  br i1 %brmerge1468, label %select.unfold.i502, label %select.unfold.i502.loopexit.loopexit.split.loop.exit1428
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2024011613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a
  %i.iq = ptrtoint ptr %memchr.i531.peel to i64
  %i.ir = trunc i64 %i.iq to i32
  %i.is = sub i32 %i.ir, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.it = or disjoint i32 %i.is, -2147483648
  %i.iu = icmp sgt i32 %i.is, 9                   ; 3 uses
  %i.iv = icmp slt i32 %i.ip, %i.it
  %brmerge1471 = select i1 %i.iu, i1 true, i1 %i.iv
  %.mux1472 = select i1 %i.iu, i32 %i.il, i32 -2147483640
  %.mux1473 = select i1 %i.iu, i1 true, i1 false
  br i1 %brmerge1471, label %select.unfold.i533, label %select.unfold.i533.loopexit.loopexit.split.loop.exit1412
end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2024011613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a
  %i.jq = ptrtoint ptr %memchr.i562.peel to i64
  %i.jr = trunc i64 %i.jq to i32
  %i.js = sub i32 %i.jr, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.jt = or disjoint i32 %i.js, -2147483648
  %i.ju = icmp sgt i32 %i.js, 9                   ; 3 uses
  %i.jv = icmp slt i32 %i.jp, %i.jt
  %brmerge1474 = select i1 %i.ju, i1 true, i1 %i.jv
  %.mux1475 = select i1 %i.ju, i32 %i.jl, i32 -2147483640
  %.mux1476 = select i1 %i.ju, i1 true, i1 false
  br i1 %brmerge1474, label %select.unfold.i564, label %select.unfold.i564.loopexit.loopexit.split.loop.exit1396
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2024011613time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS2_9time_zoneEPNSt6chrono10time_pointINSF_3_V212system_clockENSF_8durationIlSt5ratioILl1ELl1EEEEEEPNSJ_IlSK_ILl1ELl1000000000000000EEEEPS9_:bb.a
bb.ch:                                            ; preds = %bb.cg
  %i.li = mul nsw i64 %.05396.i593, 10            ; 2 uses
  %i.lj = sext i32 %i.lf to i64                   ; 2 uses
  %i.lk = or disjoint i64 %i.lj, -9223372036854775808
  %i.ll = icmp slt i64 %i.li, %i.lk
  br i1 %i.ll, label %select.unfold.i597, label %bb.ci

end_hunk_12
begin_hunk_13_@_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS7_iT_S8_PS8_:bb.a
bb.g:                                             ; preds = %bb.f
  %i.m = mul nsw i64 %.05396, 10                  ; 2 uses
  %i.n = sext i32 %i.j to i64                     ; 2 uses
  %i.o = or disjoint i64 %i.n, -9223372036854775808
  %i.p = icmp slt i64 %i.m, %i.o
  br i1 %i.p, label %select.unfold, label %bb.h

end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS6_Pi:bb.a
  %i.r = ptrtoint ptr %memchr.i.peel to i64
  %i.s = trunc i64 %i.r to i32
  %i.t = sub i32 %i.s, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.u = or disjoint i32 %i.t, -2147483648
  %i.v = icmp sgt i32 %i.t, 9                     ; 3 uses
  %i.w = icmp slt i32 %i.q, %i.u
  %brmerge = select i1 %i.v, i1 true, i1 %i.w
  %.mux = select i1 %i.v, i32 %i.m, i32 -2147483640
  %.mux85 = select i1 %i.v, i1 true, i1 false
  br i1 %brmerge, label %select.unfold.i, label %select.unfold.i.loopexit.loopexit.split.loop.exit49
end_hunk_14
begin_hunk_15_@_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS6_Pi:bb.a
  %i.ax = ptrtoint ptr %memchr.i78.peel to i64
  %i.ay = trunc i64 %i.ax to i32
  %i.az = sub i32 %i.ay, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.ba = or disjoint i32 %i.az, -2147483648
  %i.bb = icmp sgt i32 %i.az, 9                   ; 3 uses
  %i.bc = icmp slt i32 %i.aw, %i.ba
  %brmerge86 = select i1 %i.bb, i1 true, i1 %i.bc
  %.mux87 = select i1 %i.bb, i32 %i.as, i32 -2147483640
  %.mux88 = select i1 %i.bb, i1 true, i1 false
  br i1 %brmerge86, label %select.unfold.i80, label %select.unfold.i80.loopexit.loopexit.split.loop.exit65
end_hunk_15
begin_hunk_16_@_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS6_Pi:bb.a
  %i.cd = ptrtoint ptr %memchr.i109.peel to i64
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = sub i32 %i.ce, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.cg = or disjoint i32 %i.cf, -2147483648
  %i.ch = icmp sgt i32 %i.cf, 9                   ; 3 uses
  %i.ci = icmp slt i32 %i.cc, %i.cg
  %brmerge89 = select i1 %i.ch, i1 true, i1 %i.ci
  %.mux90 = select i1 %i.ch, i32 %i.by, i32 -2147483640
  %.mux91 = select i1 %i.ch, i1 true, i1 false
  br i1 %brmerge89, label %select.unfold.i111, label %select.unfold.i111.loopexit.loopexit.split.loop.exit81
end_hunk_16
