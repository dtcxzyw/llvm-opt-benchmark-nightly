inline.NumInlined: 496
inline.NumDeleted: 172
begin_hunk_0_@_ZN4absl13time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1EEEEEERKNSF_IlSG_ILl1ELl1000000000000000EEEERKNS1_9time_zoneE:bb.a

bb.ko:                                            ; preds = %.lr.ph1133
  %i.aol = mul nsw i32 %.05397.i1132, 10          ; 2 uses
  %i.aom = or disjoint i32 %i.aoi, -2147483648
  %i.aon = icmp slt i32 %i.aol, %i.aom
  br i1 %i.aon, label %select.unfold.i, label %bb.kp

end_hunk_0
begin_hunk_1_@_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_:bb.a

bb.g:                                             ; preds = %bb.f
  %i.k = mul nsw i32 %.05397, 10                  ; 2 uses
  %i.l = or disjoint i32 %i.h, -2147483648
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %select.unfold, label %bb.h

end_hunk_1
begin_hunk_2_@_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_:bb.a
bb.k:                                             ; preds = %bb.j
  %i.be = mul nsw i64 %.05396.i, 10               ; 2 uses
  %i.bf = sext i32 %i.bb to i64                   ; 2 uses
  %i.bg = or disjoint i64 %i.bf, -9223372036854775808
  %i.bh = icmp slt i64 %i.be, %i.bg
  br i1 %i.bh, label %select.unfold.i, label %bb.l

end_hunk_2
begin_hunk_3_@_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_:bb.a
  %i.ce = ptrtoint ptr %memchr.i315.peel to i64
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = sub i32 %i.cf, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.ch = or disjoint i32 %i.cg, -2147483648
  %i.ci = icmp sgt i32 %i.cg, 9                   ; 3 uses
  %i.cj = icmp slt i32 %i.cd, %i.ch
  %brmerge = select i1 %i.ci, i1 true, i1 %i.cj
  %.mux = select i1 %i.ci, i32 %i.bz, i32 -2147483640
  %.mux1579 = select i1 %i.ci, i1 true, i1 false
  br i1 %brmerge, label %select.unfold.i316, label %select.unfold.i316.loopexit.loopexit.split.loop.exit1575
end_hunk_3
begin_hunk_4_@_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_:bb.a
  %i.dg = ptrtoint ptr %memchr.i336.peel to i64
  %i.dh = trunc i64 %i.dg to i32
  %i.di = sub i32 %i.dh, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.dj = or disjoint i32 %i.di, -2147483648
  %i.dk = icmp sgt i32 %i.di, 9                   ; 3 uses
  %i.dl = icmp slt i32 %i.df, %i.dj
  %brmerge1580 = select i1 %i.dk, i1 true, i1 %i.dl
  %.mux1581 = select i1 %i.dk, i32 %i.db, i32 -2147483640
  %.mux1582 = select i1 %i.dk, i1 true, i1 false
  br i1 %brmerge1580, label %select.unfold.i338, label %select.unfold.i338.loopexit.loopexit.split.loop.exit1559
end_hunk_4
begin_hunk_5_@_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_:bb.a
bb.ad:                                            ; preds = %bb.ac
  %i.ed = mul nsw i64 %.05396.i363, 10            ; 2 uses
  %i.ee = sext i32 %i.ea to i64                   ; 2 uses
  %i.ef = or disjoint i64 %i.ee, -9223372036854775808
  %i.eg = icmp slt i64 %i.ed, %i.ef
  br i1 %i.eg, label %select.unfold.i367, label %bb.ae

end_hunk_5
begin_hunk_6_@_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_:bb.a
  %i.fg = ptrtoint ptr %memchr.i395.peel to i64
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = sub i32 %i.fh, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.fj = or disjoint i32 %i.fi, -2147483648
  %i.fk = icmp sgt i32 %i.fi, 9                   ; 3 uses
  %i.fl = icmp slt i32 %i.ff, %i.fj
  %brmerge1583 = select i1 %i.fk, i1 true, i1 %i.fl
  %.mux1584 = select i1 %i.fk, i32 %i.fb, i32 -2147483640
  %.mux1585 = select i1 %i.fk, i1 true, i1 false
  br i1 %brmerge1583, label %select.unfold.i397, label %select.unfold.i397.loopexit.loopexit.split.loop.exit1527
end_hunk_6
begin_hunk_7_@_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_:bb.a
  %i.gl = ptrtoint ptr %memchr.i426.peel to i64
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = sub i32 %i.gm, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.go = or disjoint i32 %i.gn, -2147483648
  %i.gp = icmp sgt i32 %i.gn, 9                   ; 3 uses
  %i.gq = icmp slt i32 %i.gk, %i.go
  %brmerge1586 = select i1 %i.gp, i1 true, i1 %i.gq
  %.mux1587 = select i1 %i.gp, i32 %i.gg, i32 -2147483640
  %.mux1588 = select i1 %i.gp, i1 true, i1 false
  br i1 %brmerge1586, label %select.unfold.i428, label %select.unfold.i428.loopexit.loopexit.split.loop.exit1543
end_hunk_7
begin_hunk_8_@_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_:bb.a

bb.aw:                                            ; preds = %bb.av
  %i.hi = mul nsw i32 %.05397.i454, 10            ; 2 uses
  %i.hj = or disjoint i32 %i.hf, -2147483648
  %i.hk = icmp slt i32 %i.hi, %i.hj
  br i1 %i.hk, label %select.unfold.i459, label %bb.ax

end_hunk_8
begin_hunk_9_@_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_:bb.a

bb.bd:                                            ; preds = %bb.bc
  %i.id = mul nsw i32 %.05397.i485, 10            ; 2 uses
  %i.ie = or disjoint i32 %i.ia, -2147483648
  %i.if = icmp slt i32 %i.id, %i.ie
  br i1 %i.if, label %select.unfold.i490, label %bb.be

end_hunk_9
begin_hunk_10_@_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_:bb.a

bb.bk:                                            ; preds = %bb.bj
  %i.iy = mul nsw i32 %.05397.i516, 10            ; 2 uses
  %i.iz = or disjoint i32 %i.iv, -2147483648
  %i.ja = icmp slt i32 %i.iy, %i.iz
  br i1 %i.ja, label %select.unfold.i521, label %bb.bl

end_hunk_10
begin_hunk_11_@_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_:bb.a

bb.bs:                                            ; preds = %bb.br
  %i.jv = mul nsw i32 %.05397.i547, 10            ; 2 uses
  %i.jw = or disjoint i32 %i.js, -2147483648
  %i.jx = icmp slt i32 %i.jv, %i.jw
  br i1 %i.jx, label %select.unfold.i552, label %bb.bt

end_hunk_11
begin_hunk_12_@_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_:bb.a
  %i.ku = ptrtoint ptr %memchr.i581.peel to i64
  %i.kv = trunc i64 %i.ku to i32
  %i.kw = sub i32 %i.kv, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.kx = or disjoint i32 %i.kw, -2147483648
  %i.ky = icmp sgt i32 %i.kw, 9                   ; 3 uses
  %i.kz = icmp slt i32 %i.kt, %i.kx
  %brmerge1589 = select i1 %i.ky, i1 true, i1 %i.kz
  %.mux1590 = select i1 %i.ky, i32 %i.kp, i32 -2147483640
  %.mux1591 = select i1 %i.ky, i1 true, i1 false
  br i1 %brmerge1589, label %select.unfold.i583, label %select.unfold.i583.loopexit.loopexit.split.loop.exit1511
end_hunk_12
begin_hunk_13_@_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_:bb.a
  %i.lu = ptrtoint ptr %memchr.i612.peel to i64
  %i.lv = trunc i64 %i.lu to i32
  %i.lw = sub i32 %i.lv, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.lx = or disjoint i32 %i.lw, -2147483648
  %i.ly = icmp sgt i32 %i.lw, 9                   ; 3 uses
  %i.lz = icmp slt i32 %i.lt, %i.lx
  %brmerge1592 = select i1 %i.ly, i1 true, i1 %i.lz
  %.mux1593 = select i1 %i.ly, i32 %i.lp, i32 -2147483640
  %.mux1594 = select i1 %i.ly, i1 true, i1 false
  br i1 %brmerge1592, label %select.unfold.i614, label %select.unfold.i614.loopexit.loopexit.split.loop.exit1495
end_hunk_13
begin_hunk_14_@_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_:bb.a
  %i.mu = ptrtoint ptr %memchr.i643.peel to i64
  %i.mv = trunc i64 %i.mu to i32
  %i.mw = sub i32 %i.mv, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.mx = or disjoint i32 %i.mw, -2147483648
  %i.my = icmp sgt i32 %i.mw, 9                   ; 3 uses
  %i.mz = icmp slt i32 %i.mt, %i.mx
  %brmerge1595 = select i1 %i.my, i1 true, i1 %i.mz
  %.mux1596 = select i1 %i.my, i32 %i.mp, i32 -2147483640
  %.mux1597 = select i1 %i.my, i1 true, i1 false
  br i1 %brmerge1595, label %select.unfold.i645, label %select.unfold.i645.loopexit.loopexit.split.loop.exit1479
end_hunk_14
begin_hunk_15_@_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_:bb.a
  %i.nu = ptrtoint ptr %memchr.i674.peel to i64
  %i.nv = trunc i64 %i.nu to i32
  %i.nw = sub i32 %i.nv, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.nx = or disjoint i32 %i.nw, -2147483648
  %i.ny = icmp sgt i32 %i.nw, 9                   ; 3 uses
  %i.nz = icmp slt i32 %i.nt, %i.nx
  %brmerge1598 = select i1 %i.ny, i1 true, i1 %i.nz
  %.mux1599 = select i1 %i.ny, i32 %i.np, i32 -2147483640
  %.mux1600 = select i1 %i.ny, i1 true, i1 false
  br i1 %brmerge1598, label %select.unfold.i676, label %select.unfold.i676.loopexit.loopexit.split.loop.exit1431
end_hunk_15
begin_hunk_16_@_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_:bb.a
  %i.ox = ptrtoint ptr %memchr.i705.peel to i64
  %i.oy = trunc i64 %i.ox to i32
  %i.oz = sub i32 %i.oy, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.pa = or disjoint i32 %i.oz, -2147483648
  %i.pb = icmp sgt i32 %i.oz, 9                   ; 3 uses
  %i.pc = icmp slt i32 %i.ow, %i.pa
  %brmerge1601 = select i1 %i.pb, i1 true, i1 %i.pc
  %.mux1602 = select i1 %i.pb, i32 %i.os, i32 -2147483640
  %.mux1603 = select i1 %i.pb, i1 true, i1 false
  br i1 %brmerge1601, label %select.unfold.i707, label %select.unfold.i707.loopexit.loopexit.split.loop.exit1447
end_hunk_16
begin_hunk_17_@_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_:bb.a
  %i.qa = ptrtoint ptr %memchr.i736.peel to i64
  %i.qb = trunc i64 %i.qa to i32
  %i.qc = sub i32 %i.qb, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.qd = or disjoint i32 %i.qc, -2147483648
  %i.qe = icmp sgt i32 %i.qc, 9                   ; 3 uses
  %i.qf = icmp slt i32 %i.pz, %i.qd
  %brmerge1604 = select i1 %i.qe, i1 true, i1 %i.qf
  %.mux1605 = select i1 %i.qe, i32 %i.pv, i32 -2147483640
  %.mux1606 = select i1 %i.qe, i1 true, i1 false
  br i1 %brmerge1604, label %select.unfold.i738, label %select.unfold.i738.loopexit.loopexit.split.loop.exit1463
end_hunk_17
begin_hunk_18_@_ZN4absl13time_internal4cctz6detail5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS1_9time_zoneEPNSt6chrono10time_pointINSE_3_V212system_clockENSE_8durationIlSt5ratioILl1ELl1EEEEEEPNSI_IlSJ_ILl1ELl1000000000000000EEEEPS8_:bb.a
bb.dr:                                            ; preds = %bb.dq
  %i.rs = mul nsw i64 %.05396.i766, 10            ; 2 uses
  %i.rt = sext i32 %i.rp to i64                   ; 2 uses
  %i.ru = or disjoint i64 %i.rt, -9223372036854775808
  %i.rv = icmp slt i64 %i.rs, %i.ru
  br i1 %i.rv, label %select.unfold.i770, label %bb.ds

end_hunk_18
begin_hunk_19_@_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIlEEPKcS6_iT_S7_PS7_:bb.a
bb.g:                                             ; preds = %bb.f
  %i.m = mul nsw i64 %.05396, 10                  ; 2 uses
  %i.n = sext i32 %i.j to i64                     ; 2 uses
  %i.o = or disjoint i64 %i.n, -9223372036854775808
  %i.p = icmp slt i64 %i.m, %i.o
  br i1 %i.p, label %select.unfold, label %bb.h

end_hunk_19
begin_hunk_20_@_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS5_Pi:bb.a
  %i.r = ptrtoint ptr %memchr.i.peel to i64
  %i.s = trunc i64 %i.r to i32
  %i.t = sub i32 %i.s, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.u = or disjoint i32 %i.t, -2147483648
  %i.v = icmp sgt i32 %i.t, 9                     ; 3 uses
  %i.w = icmp slt i32 %i.q, %i.u
  %brmerge = select i1 %i.v, i1 true, i1 %i.w
  %.mux = select i1 %i.v, i32 %i.m, i32 -2147483640
  %.mux85 = select i1 %i.v, i1 true, i1 false
  br i1 %brmerge, label %select.unfold.i, label %select.unfold.i.loopexit.loopexit.split.loop.exit49
end_hunk_20
begin_hunk_21_@_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS5_Pi:bb.a
  %i.ax = ptrtoint ptr %memchr.i78.peel to i64
  %i.ay = trunc i64 %i.ax to i32
  %i.az = sub i32 %i.ay, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.ba = or disjoint i32 %i.az, -2147483648
  %i.bb = icmp sgt i32 %i.az, 9                   ; 3 uses
  %i.bc = icmp slt i32 %i.aw, %i.ba
  %brmerge86 = select i1 %i.bb, i1 true, i1 %i.bc
  %.mux87 = select i1 %i.bb, i32 %i.as, i32 -2147483640
  %.mux88 = select i1 %i.bb, i1 true, i1 false
  br i1 %brmerge86, label %select.unfold.i80, label %select.unfold.i80.loopexit.loopexit.split.loop.exit65
end_hunk_21
begin_hunk_22_@_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_111ParseOffsetEPKcS5_Pi:bb.a
  %i.cd = ptrtoint ptr %memchr.i109.peel to i64
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = sub i32 %i.ce, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.cg = or disjoint i32 %i.cf, -2147483648
  %i.ch = icmp sgt i32 %i.cf, 9                   ; 3 uses
  %i.ci = icmp slt i32 %i.cc, %i.cg
  %brmerge89 = select i1 %i.ch, i1 true, i1 %i.ci
  %.mux90 = select i1 %i.ch, i32 %i.by, i32 -2147483640
  %.mux91 = select i1 %i.ch, i1 true, i1 false
  br i1 %brmerge89, label %select.unfold.i111, label %select.unfold.i111.loopexit.loopexit.split.loop.exit81
end_hunk_22
