Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/RingId?download=true
inline.NumInlined: 1560
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f:bb.a
  %i.ms = load i32, ptr %i.aci, align 4, !tbaa !15 ; 3 uses
  %i.mt = icmp sgt i32 %i.ms, 1
  br i1 %i.mt, label %bb.hu, label %bb.hv, !prof !11

bb.hu:                                            ; preds = %bb.ht
  %i.mu = add nsw i32 %i.ms, -1
  store i32 %i.mu, ptr %i.aci, align 4, !tbaa !15
  br label %lean_dec.exit1332

bb.hv:                                            ; preds = %bb.ht
  %.not.i1400 = icmp eq i32 %i.ms, 0
  br i1 %.not.i1400, label %lean_dec.exit1332, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aci) #5
  br label %lean_dec.exit1332

lean_dec.exit1332:                                ; preds = %bb.hw, %bb.hv, %bb.hu, %lean_dec.exit1334
  %i.mv = load i32, ptr %i.dd, align 4, !tbaa !15 ; 3 uses
  %i.mw = icmp sgt i32 %i.mv, 1
  br i1 %i.mw, label %bb.hx, label %bb.hy, !prof !11

bb.hx:                                            ; preds = %lean_dec.exit1332
  %i.mx = add nsw i32 %i.mv, -1
  store i32 %i.mx, ptr %i.dd, align 4, !tbaa !15
  br label %lean_dec_ref.exit1583

bb.hy:                                            ; preds = %lean_dec.exit1332
  %.not.i1582 = icmp eq i32 %i.mv, 0
  br i1 %.not.i1582, label %lean_dec_ref.exit1583, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dd) #5
  br label %lean_dec_ref.exit1583

lean_dec_ref.exit1583:                            ; preds = %bb.hx, %bb.hy, %bb.hz
  %i.my = load i32, ptr %i.cy, align 4, !tbaa !15 ; 3 uses
  %i.mz = icmp sgt i32 %i.my, 1
  br i1 %i.mz, label %bb.ia, label %bb.ib, !prof !11

bb.ia:                                            ; preds = %lean_dec_ref.exit1583
  %i.na = add nsw i32 %i.my, -1
  store i32 %i.na, ptr %i.cy, align 4, !tbaa !15
  br label %lean_dec_ref.exit1581

bb.ib:                                            ; preds = %lean_dec_ref.exit1583
  %.not.i1580 = icmp eq i32 %i.my, 0
  br i1 %.not.i1580, label %lean_dec_ref.exit1581, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cy) #5
  br label %lean_dec_ref.exit1581

lean_dec_ref.exit1581:                            ; preds = %bb.ia, %bb.ib, %bb.ic
  %i.nb = load i32, ptr %i.ct, align 4, !tbaa !15 ; 3 uses
  %i.nc = icmp sgt i32 %i.nb, 1
  br i1 %i.nc, label %bb.id, label %bb.ie, !prof !11

bb.id:                                            ; preds = %lean_dec_ref.exit1581
  %i.nd = add nsw i32 %i.nb, -1
  store i32 %i.nd, ptr %i.ct, align 4, !tbaa !15
  br label %lean_dec_ref.exit1579

bb.ie:                                            ; preds = %lean_dec_ref.exit1581
  %.not.i1578 = icmp eq i32 %i.nb, 0
  br i1 %.not.i1578, label %lean_dec_ref.exit1579, label %bb.if

bb.if:                                            ; preds = %bb.ie
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ct) #5
  br label %lean_dec_ref.exit1579

lean_dec_ref.exit1579:                            ; preds = %bb.id, %bb.ie, %bb.if
  %i.ne = ptrtoint ptr %.0912 to i64
  %i.nf = and i64 %i.ne, 1
  %.not.i1780 = icmp eq i64 %i.nf, 0
  br i1 %.not.i1780, label %bb.ig, label %lean_del_object.exit1781

bb.ig:                                            ; preds = %lean_dec_ref.exit1579
  tail call void @lean_free_object(ptr noundef nonnull %.0912) #5
  br label %lean_del_object.exit1781

lean_del_object.exit1781:                         ; preds = %lean_dec_ref.exit1579, %bb.ig
  br i1 %.not.i1649, label %bb.ih, label %lean_dec.exit1330

bb.ih:                                            ; preds = %lean_del_object.exit1781
  %i.ng = load i32, ptr %i.bj, align 4, !tbaa !15 ; 3 uses
  %i.nh = icmp sgt i32 %i.ng, 1
  br i1 %i.nh, label %bb.ii, label %bb.ij, !prof !11

bb.ii:                                            ; preds = %bb.ih
  %i.ni = add nsw i32 %i.ng, -1
  store i32 %i.ni, ptr %i.bj, align 4, !tbaa !15
  br label %lean_dec.exit1330

bb.ij:                                            ; preds = %bb.ih
  %.not.i1402 = icmp eq i32 %i.ng, 0
  br i1 %.not.i1402, label %lean_dec.exit1330, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #5
  br label %lean_dec.exit1330

lean_dec.exit1330:                                ; preds = %bb.ik, %bb.ij, %bb.ii, %lean_del_object.exit1781
  br i1 %.not.i1676, label %bb.il, label %lean_dec.exit1328

bb.il:                                            ; preds = %lean_dec.exit1330
  %i.nj = load i32, ptr %i.m, align 4, !tbaa !15  ; 3 uses
  %i.nk = icmp sgt i32 %i.nj, 1
  br i1 %i.nk, label %bb.im, label %bb.in, !prof !11

bb.im:                                            ; preds = %bb.il
  %i.nl = add nsw i32 %i.nj, -1
  store i32 %i.nl, ptr %i.m, align 4, !tbaa !15
  br label %lean_dec.exit1328

bb.in:                                            ; preds = %bb.il
  %.not.i1404 = icmp eq i32 %i.nj, 0
  br i1 %.not.i1404, label %lean_dec.exit1328, label %bb.io

bb.io:                                            ; preds = %bb.in
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.m) #5
  br label %lean_dec.exit1328

lean_dec.exit1328:                                ; preds = %bb.io, %bb.in, %bb.im, %lean_dec.exit1330
  %i.nm = load i32, ptr %0, align 4, !tbaa !15    ; 3 uses
  %i.nn = icmp sgt i32 %i.nm, 1
  br i1 %i.nn, label %bb.ip, label %bb.iq, !prof !11

bb.ip:                                            ; preds = %lean_dec.exit1328
  %i.no = add nsw i32 %i.nm, -1
  store i32 %i.no, ptr %0, align 4, !tbaa !15
  br label %lean_dec_ref.exit1577

bb.iq:                                            ; preds = %lean_dec.exit1328
  %.not.i1576 = icmp eq i32 %i.nm, 0
  br i1 %.not.i1576, label %lean_dec_ref.exit1577, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit1577

lean_dec_ref.exit1577:                            ; preds = %bb.ip, %bb.iq, %bb.ir
  %i.np = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !13 ; 5 uses
  %.val1666 = load i32, ptr %i.hs, align 8, !tbaa !15
  %i.nr = icmp eq i32 %.val1666, 1
  br i1 %i.nr, label %lean_dec.exit1340, label %bb.is

bb.is:                                            ; preds = %lean_dec_ref.exit1577
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = and i64 %i.ns, 1
  %.not.i1639 = icmp eq i64 %i.nt, 0
  br i1 %.not.i1639, label %bb.it, label %lean_inc.exit1640

bb.it:                                            ; preds = %bb.is
  %.val.i.i1782 = load i32, ptr %i.nq, align 4, !tbaa !15 ; 3 uses
  %i.nu = icmp sgt i32 %.val.i.i1782, 0
  br i1 %i.nu, label %bb.iu, label %bb.iv, !prof !11

bb.iu:                                            ; preds = %bb.it
  %i.nv = add nuw i32 %.val.i.i1782, 1
  store i32 %i.nv, ptr %i.nq, align 4, !tbaa !15
  br label %lean_inc.exit1640

bb.iv:                                            ; preds = %bb.it
  %.not.i.i1783 = icmp eq i32 %.val.i.i1782, 0
  br i1 %.not.i.i1783, label %lean_inc.exit1640, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.nw = atomicrmw add ptr %i.nq, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1640

lean_inc.exit1640:                                ; preds = %bb.iw, %bb.iv, %bb.iu, %bb.is
  br i1 %.not.i1755, label %bb.ix, label %bb.jb

bb.ix:                                            ; preds = %lean_inc.exit1640
  %i.nx = load i32, ptr %i.hs, align 8, !tbaa !15 ; 3 uses
  %i.ny = icmp sgt i32 %i.nx, 1
  br i1 %i.ny, label %bb.iy, label %bb.iz, !prof !11

bb.iy:                                            ; preds = %bb.ix
  %i.nz = add nsw i32 %i.nx, -1
  store i32 %i.nz, ptr %i.hs, align 8, !tbaa !15
  br label %bb.jb

bb.iz:                                            ; preds = %bb.ix
  %.not.i1406 = icmp eq i32 %i.nx, 0
  br i1 %.not.i1406, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hs) #5
  br label %bb.jb

bb.jb:                                            ; preds = %lean_inc.exit1640, %bb.iy, %bb.iz, %bb.ja
  %i.oa = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit1340.sink.split

bb.jc:                                            ; preds = %bb.mw, %bb.mx
  %.0.i1839 = phi i32 [ %i.to, %bb.mw ], [ %i.tq, %bb.mx ]
  %i.ob = icmp eq i32 %.0.i1839, 0
  %l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__24_value.l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__25_value = select i1 %i.ob, ptr @l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__24_value, ptr @l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__25_value ; 3 uses
  %.val.i.i1785 = load i32, ptr %l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__24_value.l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__25_value, align 8, !tbaa !15 ; 2 uses
  %11 = icmp sgt i32 %.val.i.i1785, 0
  br i1 %11, label %lean_inc_ref.exit1787, label %12, !prof !11

12:                                               ; preds = %bb.jc
  %.not.i.i1786 = icmp eq i32 %.val.i.i1785, 0
  br i1 %.not.i.i1786, label %lean_inc_ref.exit1787, label %13

13:                                               ; preds = %12
  %14 = atomicrmw add ptr %l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__24_value.l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__25_value, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1787

lean_inc_ref.exit1787:                            ; preds = %bb.jc, %12, %13
  br i1 %i.by, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %lean_inc_ref.exit1787
  %i.oc = getelementptr inbounds nuw i8, ptr %.0926, i64 4 ; 2 uses
  %i.od = load i32, ptr %i.oc, align 4
  %i.oe = and i32 %i.od, 16777215
  %i.of = or disjoint i32 %i.oe, 50331648
  store i32 %i.of, ptr %i.oc, align 4
  br label %bb.jf

bb.je:                                            ; preds = %lean_inc_ref.exit1787
  %i.og = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 1, i32 noundef 0)
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %bb.jd
  %.sink2299 = phi ptr [ %i.og, %bb.je ], [ %.0926, %bb.jd ] ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.sink2299, i64 8
  store ptr %l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__24_value.l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__25_value, ptr %i.oh, align 8, !tbaa !13
  %i.oi = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull %.sink2299) #5
  %.val.i.i1788 = load i32, ptr %.0.i1836, align 4, !tbaa !15 ; 3 uses
  %i.oj = icmp sgt i32 %.val.i.i1788, 0
  br i1 %i.oj, label %bb.jg, label %bb.jh, !prof !11

bb.jg:                                            ; preds = %bb.jf
  %i.ok = add nuw i32 %.val.i.i1788, 1
  store i32 %i.ok, ptr %.0.i1836, align 4, !tbaa !15
  br label %lean_inc_ref.exit1790

bb.jh:                                            ; preds = %bb.jf
  %.not.i.i1789 = icmp eq i32 %.val.i.i1788, 0
  br i1 %.not.i.i1789, label %lean_inc_ref.exit1790, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.ol = atomicrmw add ptr %.0.i1836, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1790

lean_inc_ref.exit1790:                            ; preds = %bb.jg, %bb.jh, %bb.ji
  %i.om = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  store ptr %.0.i1836, ptr %i.on, align 8, !tbaa !13
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  store ptr %i.oi, ptr %i.oo, align 8, !tbaa !13
  %i.op = tail call ptr @l_Lean_addTrace___at___00__private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f_spec__1___redArg(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__6_value, ptr noundef nonnull %i.om, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) ; 9 uses
  %i.oq = ptrtoint ptr %i.op to i64               ; 2 uses
  %i.or = and i64 %i.oq, 1
  %.not.i1791 = icmp eq i64 %i.or, 0              ; 2 uses
  br i1 %.not.i1791, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %lean_inc_ref.exit1790
  %i.os = lshr i64 %i.oq, 1
  %i.ot = trunc i64 %i.os to i32
  br label %lean_obj_tag.exit1794

bb.jk:                                            ; preds = %lean_inc_ref.exit1790
  %i.ou = getelementptr i8, ptr %i.op, i64 4
  %.val.i1793 = load i32, ptr %i.ou, align 4
  %i.ov = lshr i32 %.val.i1793, 24
  br label %lean_obj_tag.exit1794

lean_obj_tag.exit1794:                            ; preds = %bb.jj, %bb.jk
  %.0.i1792 = phi i32 [ %i.ot, %bb.jj ], [ %i.ov, %bb.jk ]
  %i.ow = icmp eq i32 %.0.i1792, 0
  br i1 %i.ow, label %lean_dec.exit1312, label %bb.jl

bb.jl:                                            ; preds = %lean_obj_tag.exit1794
  br i1 %.not.i1629, label %bb.jm, label %lean_dec.exit1324

bb.jm:                                            ; preds = %bb.jl
  %i.ox = load i32, ptr %i.sm, align 4, !tbaa !15 ; 3 uses
  %i.oy = icmp sgt i32 %i.ox, 1
  br i1 %i.oy, label %bb.jn, label %bb.jo, !prof !11

bb.jn:                                            ; preds = %bb.jm
  %i.oz = add nsw i32 %i.ox, -1
  store i32 %i.oz, ptr %i.sm, align 4, !tbaa !15
  br label %lean_dec.exit1324

bb.jo:                                            ; preds = %bb.jm
  %.not.i1408 = icmp eq i32 %i.ox, 0
  br i1 %.not.i1408, label %lean_dec.exit1324, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sm) #5
  br label %lean_dec.exit1324

lean_dec.exit1324:                                ; preds = %bb.jp, %bb.jo, %bb.jn, %bb.jl
  br i1 %.not.i1617, label %bb.jq, label %lean_dec.exit1322

bb.jq:                                            ; preds = %lean_dec.exit1324
  %i.pa = load i32, ptr %i.abn, align 4, !tbaa !15 ; 3 uses
  %i.pb = icmp sgt i32 %i.pa, 1
  br i1 %i.pb, label %bb.jr, label %bb.js, !prof !11

bb.jr:                                            ; preds = %bb.jq
  %i.pc = add nsw i32 %i.pa, -1
  store i32 %i.pc, ptr %i.abn, align 4, !tbaa !15
  br label %lean_dec.exit1322

bb.js:                                            ; preds = %bb.jq
  %.not.i1410 = icmp eq i32 %i.pa, 0
  br i1 %.not.i1410, label %lean_dec.exit1322, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.abn) #5
  br label %lean_dec.exit1322

lean_dec.exit1322:                                ; preds = %bb.jt, %bb.js, %bb.jr, %lean_dec.exit1324
  br i1 %.not.i1635, label %bb.ju, label %lean_dec.exit1320

bb.ju:                                            ; preds = %lean_dec.exit1322
  %i.pd = load i32, ptr %i.rd, align 4, !tbaa !15 ; 3 uses
  %i.pe = icmp sgt i32 %i.pd, 1
  br i1 %i.pe, label %bb.jv, label %bb.jw, !prof !11

bb.jv:                                            ; preds = %bb.ju
  %i.pf = add nsw i32 %i.pd, -1
  store i32 %i.pf, ptr %i.rd, align 4, !tbaa !15
  br label %lean_dec.exit1320

bb.jw:                                            ; preds = %bb.ju
  %.not.i1412 = icmp eq i32 %i.pd, 0
  br i1 %.not.i1412, label %lean_dec.exit1320, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.rd) #5
  br label %lean_dec.exit1320

lean_dec.exit1320:                                ; preds = %bb.jx, %bb.jw, %bb.jv, %lean_dec.exit1322
  br i1 %.not.i1613, label %bb.jy, label %lean_dec.exit1318

bb.jy:                                            ; preds = %lean_dec.exit1320
  %i.pg = load i32, ptr %i.aci, align 4, !tbaa !15 ; 3 uses
  %i.ph = icmp sgt i32 %i.pg, 1
  br i1 %i.ph, label %bb.jz, label %bb.ka, !prof !11

bb.jz:                                            ; preds = %bb.jy
  %i.pi = add nsw i32 %i.pg, -1
  store i32 %i.pi, ptr %i.aci, align 4, !tbaa !15
  br label %lean_dec.exit1318

bb.ka:                                            ; preds = %bb.jy
  %.not.i1414 = icmp eq i32 %i.pg, 0
  br i1 %.not.i1414, label %lean_dec.exit1318, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aci) #5
  br label %lean_dec.exit1318

lean_dec.exit1318:                                ; preds = %bb.kb, %bb.ka, %bb.jz, %lean_dec.exit1320
  %i.pj = load i32, ptr %i.dd, align 4, !tbaa !15 ; 3 uses
  %i.pk = icmp sgt i32 %i.pj, 1
  br i1 %i.pk, label %bb.kc, label %bb.kd, !prof !11

bb.kc:                                            ; preds = %lean_dec.exit1318
  %i.pl = add nsw i32 %i.pj, -1
  store i32 %i.pl, ptr %i.dd, align 4, !tbaa !15
  br label %lean_dec_ref.exit1575

bb.kd:                                            ; preds = %lean_dec.exit1318
  %.not.i1574 = icmp eq i32 %i.pj, 0
  br i1 %.not.i1574, label %lean_dec_ref.exit1575, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dd) #5
  br label %lean_dec_ref.exit1575

lean_dec_ref.exit1575:                            ; preds = %bb.kc, %bb.kd, %bb.ke
  %i.pm = load i32, ptr %i.cy, align 4, !tbaa !15 ; 3 uses
  %i.pn = icmp sgt i32 %i.pm, 1
  br i1 %i.pn, label %bb.kf, label %bb.kg, !prof !11

bb.kf:                                            ; preds = %lean_dec_ref.exit1575
  %i.po = add nsw i32 %i.pm, -1
  store i32 %i.po, ptr %i.cy, align 4, !tbaa !15
  br label %lean_dec_ref.exit1573

bb.kg:                                            ; preds = %lean_dec_ref.exit1575
  %.not.i1572 = icmp eq i32 %i.pm, 0
  br i1 %.not.i1572, label %lean_dec_ref.exit1573, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cy) #5
  br label %lean_dec_ref.exit1573

lean_dec_ref.exit1573:                            ; preds = %bb.kf, %bb.kg, %bb.kh
  %i.pp = load i32, ptr %i.ct, align 4, !tbaa !15 ; 3 uses
  %i.pq = icmp sgt i32 %i.pp, 1
  br i1 %i.pq, label %bb.ki, label %bb.kj, !prof !11

bb.ki:                                            ; preds = %lean_dec_ref.exit1573
  %i.pr = add nsw i32 %i.pp, -1
  store i32 %i.pr, ptr %i.ct, align 4, !tbaa !15
  br label %lean_dec_ref.exit1571

bb.kj:                                            ; preds = %lean_dec_ref.exit1573
  %.not.i1570 = icmp eq i32 %i.pp, 0
  br i1 %.not.i1570, label %lean_dec_ref.exit1571, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ct) #5
  br label %lean_dec_ref.exit1571

lean_dec_ref.exit1571:                            ; preds = %bb.ki, %bb.kj, %bb.kk
  %i.ps = ptrtoint ptr %.0912 to i64
  %i.pt = and i64 %i.ps, 1
  %.not.i1795 = icmp eq i64 %i.pt, 0
  br i1 %.not.i1795, label %bb.kl, label %lean_del_object.exit1796

bb.kl:                                            ; preds = %lean_dec_ref.exit1571
  tail call void @lean_free_object(ptr noundef nonnull %.0912) #5
  br label %lean_del_object.exit1796
end_hunk_0
begin_hunk_1_@l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f:bb.a
  br label %lean_dec.exit1282

bb.qv:                                            ; preds = %bb.qt
  %.not.i1450 = icmp eq i32 %i.xf, 0
  br i1 %.not.i1450, label %lean_dec.exit1282, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aci) #5
  br label %lean_dec.exit1282

lean_dec.exit1282:                                ; preds = %bb.qw, %bb.qv, %bb.qu, %lean_dec.exit1284
  %i.xi = load i32, ptr %i.dd, align 4, !tbaa !15 ; 3 uses
  %i.xj = icmp sgt i32 %i.xi, 1
  br i1 %i.xj, label %bb.qx, label %bb.qy, !prof !11

bb.qx:                                            ; preds = %lean_dec.exit1282
  %i.xk = add nsw i32 %i.xi, -1
  store i32 %i.xk, ptr %i.dd, align 4, !tbaa !15
  br label %lean_dec_ref.exit1551

bb.qy:                                            ; preds = %lean_dec.exit1282
  %.not.i1550 = icmp eq i32 %i.xi, 0
  br i1 %.not.i1550, label %lean_dec_ref.exit1551, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dd) #5
  br label %lean_dec_ref.exit1551

lean_dec_ref.exit1551:                            ; preds = %bb.qx, %bb.qy, %bb.qz
  %i.xl = load i32, ptr %i.cy, align 4, !tbaa !15 ; 3 uses
  %i.xm = icmp sgt i32 %i.xl, 1
  br i1 %i.xm, label %bb.ra, label %bb.rb, !prof !11

bb.ra:                                            ; preds = %lean_dec_ref.exit1551
  %i.xn = add nsw i32 %i.xl, -1
  store i32 %i.xn, ptr %i.cy, align 4, !tbaa !15
  br label %lean_dec_ref.exit1549

bb.rb:                                            ; preds = %lean_dec_ref.exit1551
  %.not.i1548 = icmp eq i32 %i.xl, 0
  br i1 %.not.i1548, label %lean_dec_ref.exit1549, label %bb.rc

bb.rc:                                            ; preds = %bb.rb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cy) #5
  br label %lean_dec_ref.exit1549

lean_dec_ref.exit1549:                            ; preds = %bb.ra, %bb.rb, %bb.rc
  %i.xo = load i32, ptr %i.ct, align 4, !tbaa !15 ; 3 uses
  %i.xp = icmp sgt i32 %i.xo, 1
  br i1 %i.xp, label %bb.rd, label %bb.re, !prof !11

bb.rd:                                            ; preds = %lean_dec_ref.exit1549
  %i.xq = add nsw i32 %i.xo, -1
  store i32 %i.xq, ptr %i.ct, align 4, !tbaa !15
  br label %lean_dec_ref.exit1547

bb.re:                                            ; preds = %lean_dec_ref.exit1549
  %.not.i1546 = icmp eq i32 %i.xo, 0
  br i1 %.not.i1546, label %lean_dec_ref.exit1547, label %bb.rf

bb.rf:                                            ; preds = %bb.re
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ct) #5
  br label %lean_dec_ref.exit1547

lean_dec_ref.exit1547:                            ; preds = %bb.rd, %bb.re, %bb.rf
  %i.xr = ptrtoint ptr %.0926 to i64
  %i.xs = and i64 %i.xr, 1
  %.not.i1856 = icmp eq i64 %i.xs, 0
  br i1 %.not.i1856, label %bb.rg, label %lean_del_object.exit1857

bb.rg:                                            ; preds = %lean_dec_ref.exit1547
  tail call void @lean_free_object(ptr noundef nonnull %.0926) #5
  br label %lean_del_object.exit1857

lean_del_object.exit1857:                         ; preds = %lean_dec_ref.exit1547, %bb.rg
  %i.xt = ptrtoint ptr %.0912 to i64
  %i.xu = and i64 %i.xt, 1
  %.not.i1858 = icmp eq i64 %i.xu, 0
  br i1 %.not.i1858, label %bb.rh, label %lean_del_object.exit1859

bb.rh:                                            ; preds = %lean_del_object.exit1857
  tail call void @lean_free_object(ptr noundef nonnull %.0912) #5
  br label %lean_del_object.exit1859

lean_del_object.exit1859:                         ; preds = %lean_del_object.exit1857, %bb.rh
  br i1 %.not.i1649, label %bb.ri, label %lean_dec.exit1280

bb.ri:                                            ; preds = %lean_del_object.exit1859
  %i.xv = load i32, ptr %i.bj, align 4, !tbaa !15 ; 3 uses
  %i.xw = icmp sgt i32 %i.xv, 1
  br i1 %i.xw, label %bb.rj, label %bb.rk, !prof !11

bb.rj:                                            ; preds = %bb.ri
  %i.xx = add nsw i32 %i.xv, -1
  store i32 %i.xx, ptr %i.bj, align 4, !tbaa !15
  br label %lean_dec.exit1280

bb.rk:                                            ; preds = %bb.ri
  %.not.i1452 = icmp eq i32 %i.xv, 0
  br i1 %.not.i1452, label %lean_dec.exit1280, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #5
  br label %lean_dec.exit1280

lean_dec.exit1280:                                ; preds = %bb.rl, %bb.rk, %bb.rj, %lean_del_object.exit1859
  br i1 %.not.i1676, label %bb.rm, label %lean_dec.exit1278

bb.rm:                                            ; preds = %lean_dec.exit1280
  %i.xy = load i32, ptr %i.m, align 4, !tbaa !15  ; 3 uses
  %i.xz = icmp sgt i32 %i.xy, 1
  br i1 %i.xz, label %bb.rn, label %bb.ro, !prof !11

bb.rn:                                            ; preds = %bb.rm
  %i.ya = add nsw i32 %i.xy, -1
  store i32 %i.ya, ptr %i.m, align 4, !tbaa !15
  br label %lean_dec.exit1278

bb.ro:                                            ; preds = %bb.rm
  %.not.i1454 = icmp eq i32 %i.xy, 0
  br i1 %.not.i1454, label %lean_dec.exit1278, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.m) #5
  br label %lean_dec.exit1278

lean_dec.exit1278:                                ; preds = %bb.rp, %bb.ro, %bb.rn, %lean_dec.exit1280
  %i.yb = load i32, ptr %0, align 4, !tbaa !15    ; 3 uses
  %i.yc = icmp sgt i32 %i.yb, 1
  br i1 %i.yc, label %bb.rq, label %bb.rr, !prof !11

bb.rq:                                            ; preds = %lean_dec.exit1278
  %i.yd = add nsw i32 %i.yb, -1
  store i32 %i.yd, ptr %0, align 4, !tbaa !15
  br label %lean_dec_ref.exit1545

bb.rr:                                            ; preds = %lean_dec.exit1278
  %.not.i1544 = icmp eq i32 %i.yb, 0
  br i1 %.not.i1544, label %lean_dec_ref.exit1545, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit1545

lean_dec_ref.exit1545:                            ; preds = %bb.rq, %bb.rr, %bb.rs
  %i.ye = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !13 ; 5 uses
  %.val1662 = load i32, ptr %i.qu, align 8, !tbaa !15
  %i.yg = icmp eq i32 %.val1662, 1
  br i1 %i.yg, label %lean_dec.exit1340, label %bb.rt

bb.rt:                                            ; preds = %lean_dec_ref.exit1545
  %i.yh = ptrtoint ptr %i.yf to i64
  %i.yi = and i64 %i.yh, 1
  %.not.i1623 = icmp eq i64 %i.yi, 0
  br i1 %.not.i1623, label %bb.ru, label %lean_inc.exit1624

bb.ru:                                            ; preds = %bb.rt
  %.val.i.i1860 = load i32, ptr %i.yf, align 4, !tbaa !15 ; 3 uses
  %i.yj = icmp sgt i32 %.val.i.i1860, 0
  br i1 %i.yj, label %bb.rv, label %bb.rw, !prof !11

bb.rv:                                            ; preds = %bb.ru
  %i.yk = add nuw i32 %.val.i.i1860, 1
  store i32 %i.yk, ptr %i.yf, align 4, !tbaa !15
  br label %lean_inc.exit1624

bb.rw:                                            ; preds = %bb.ru
  %.not.i.i1861 = icmp eq i32 %.val.i.i1860, 0
  br i1 %.not.i.i1861, label %lean_inc.exit1624, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.yl = atomicrmw add ptr %i.yf, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1624

lean_inc.exit1624:                                ; preds = %bb.rx, %bb.rw, %bb.rv, %bb.rt
  br i1 %.not.i1803, label %bb.ry, label %bb.sc

bb.ry:                                            ; preds = %lean_inc.exit1624
  %i.ym = load i32, ptr %i.qu, align 8, !tbaa !15 ; 3 uses
  %i.yn = icmp sgt i32 %i.ym, 1
  br i1 %i.yn, label %bb.rz, label %bb.sa, !prof !11

bb.rz:                                            ; preds = %bb.ry
  %i.yo = add nsw i32 %i.ym, -1
  store i32 %i.yo, ptr %i.qu, align 8, !tbaa !15
  br label %bb.sc

bb.sa:                                            ; preds = %bb.ry
  %.not.i1456 = icmp eq i32 %i.ym, 0
  br i1 %.not.i1456, label %bb.sc, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qu) #5
  br label %bb.sc

bb.sc:                                            ; preds = %lean_inc.exit1624, %bb.rz, %bb.sa, %bb.sb
  %i.yp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit1340.sink.split

15:                                               ; preds = %bb.vu, %bb.vv
  %.0.i1919 = phi i32 [ %i.ads, %bb.vu ], [ %i.adu, %bb.vv ]
  %16 = icmp eq i32 %.0.i1919, 0
  %l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__24_value.l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__25_value1230 = select i1 %16, ptr @l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__24_value, ptr @l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__25_value ; 3 uses
  %.val.i.i1863 = load i32, ptr %l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__24_value.l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__25_value1230, align 8, !tbaa !15 ; 2 uses
  %17 = icmp sgt i32 %.val.i.i1863, 0
  br i1 %17, label %lean_inc_ref.exit1865, label %18, !prof !11

18:                                               ; preds = %15
  %.not.i.i1864 = icmp eq i32 %.val.i.i1863, 0
  br i1 %.not.i.i1864, label %lean_inc_ref.exit1865, label %19

19:                                               ; preds = %18
  %20 = atomicrmw add ptr %l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__24_value.l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__25_value1230, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1865

lean_inc_ref.exit1865:                            ; preds = %15, %18, %19
  %i.yq = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  store ptr %l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__24_value.l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__25_value1230, ptr %i.yr, align 8, !tbaa !13
  %i.ys = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull %i.yq) #5
  %.val.i.i1866 = load i32, ptr %.0.i1916, align 4, !tbaa !15 ; 3 uses
  %i.yt = icmp sgt i32 %.val.i.i1866, 0
  br i1 %i.yt, label %bb.sd, label %bb.se, !prof !11

bb.sd:                                            ; preds = %lean_inc_ref.exit1865
  %i.yu = add nuw i32 %.val.i.i1866, 1
  store i32 %i.yu, ptr %.0.i1916, align 4, !tbaa !15
  br label %lean_inc_ref.exit1868

bb.se:                                            ; preds = %lean_inc_ref.exit1865
  %.not.i.i1867 = icmp eq i32 %.val.i.i1866, 0
  br i1 %.not.i.i1867, label %lean_inc_ref.exit1868, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.yv = atomicrmw add ptr %.0.i1916, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1868

lean_inc_ref.exit1868:                            ; preds = %bb.sd, %bb.se, %bb.sf
  %i.yw = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  store ptr %.0.i1916, ptr %i.yx, align 8, !tbaa !13
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  store ptr %i.ys, ptr %i.yy, align 8, !tbaa !13
  %i.yz = tail call ptr @l_Lean_addTrace___at___00__private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f_spec__1___redArg(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__6_value, ptr noundef nonnull %i.yw, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) ; 9 uses
  %i.za = ptrtoint ptr %i.yz to i64               ; 2 uses
  %i.zb = and i64 %i.za, 1
  %.not.i1869 = icmp eq i64 %i.zb, 0              ; 2 uses
  br i1 %.not.i1869, label %bb.sh, label %bb.sg

bb.sg:                                            ; preds = %lean_inc_ref.exit1868
  %i.zc = lshr i64 %i.za, 1
  %i.zd = trunc i64 %i.zc to i32
  br label %lean_obj_tag.exit1872

bb.sh:                                            ; preds = %lean_inc_ref.exit1868
  %i.ze = getelementptr i8, ptr %i.yz, i64 4
  %.val.i1871 = load i32, ptr %i.ze, align 4
  %i.zf = lshr i32 %.val.i1871, 24
  br label %lean_obj_tag.exit1872

lean_obj_tag.exit1872:                            ; preds = %bb.sg, %bb.sh
  %.0.i1870 = phi i32 [ %i.zd, %bb.sg ], [ %i.zf, %bb.sh ]
  %i.zg = icmp eq i32 %.0.i1870, 0
  br i1 %i.zg, label %lean_dec.exit1266, label %bb.si

bb.si:                                            ; preds = %lean_obj_tag.exit1872
  br i1 %.not.i1617, label %bb.sj, label %lean_dec.exit1274

bb.sj:                                            ; preds = %bb.si
  %i.zh = load i32, ptr %i.abn, align 4, !tbaa !15 ; 3 uses
  %i.zi = icmp sgt i32 %i.zh, 1
  br i1 %i.zi, label %bb.sk, label %bb.sl, !prof !11

bb.sk:                                            ; preds = %bb.sj
  %i.zj = add nsw i32 %i.zh, -1
  store i32 %i.zj, ptr %i.abn, align 4, !tbaa !15
  br label %lean_dec.exit1274

bb.sl:                                            ; preds = %bb.sj
  %.not.i1458 = icmp eq i32 %i.zh, 0
  br i1 %.not.i1458, label %lean_dec.exit1274, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.abn) #5
  br label %lean_dec.exit1274

lean_dec.exit1274:                                ; preds = %bb.sm, %bb.sl, %bb.sk, %bb.si
  br i1 %.not.i1613, label %bb.sn, label %lean_dec.exit1272

bb.sn:                                            ; preds = %lean_dec.exit1274
  %i.zk = load i32, ptr %i.aci, align 4, !tbaa !15 ; 3 uses
  %i.zl = icmp sgt i32 %i.zk, 1
  br i1 %i.zl, label %bb.so, label %bb.sp, !prof !11

bb.so:                                            ; preds = %bb.sn
  %i.zm = add nsw i32 %i.zk, -1
  store i32 %i.zm, ptr %i.aci, align 4, !tbaa !15
  br label %lean_dec.exit1272

bb.sp:                                            ; preds = %bb.sn
  %.not.i1460 = icmp eq i32 %i.zk, 0
  br i1 %.not.i1460, label %lean_dec.exit1272, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aci) #5
  br label %lean_dec.exit1272

lean_dec.exit1272:                                ; preds = %bb.sq, %bb.sp, %bb.so, %lean_dec.exit1274
  %i.zn = load i32, ptr %i.dd, align 4, !tbaa !15 ; 3 uses
  %i.zo = icmp sgt i32 %i.zn, 1
  br i1 %i.zo, label %bb.sr, label %bb.ss, !prof !11

bb.sr:                                            ; preds = %lean_dec.exit1272
  %i.zp = add nsw i32 %i.zn, -1
  store i32 %i.zp, ptr %i.dd, align 4, !tbaa !15
  br label %lean_dec_ref.exit1543

bb.ss:                                            ; preds = %lean_dec.exit1272
  %.not.i1542 = icmp eq i32 %i.zn, 0
  br i1 %.not.i1542, label %lean_dec_ref.exit1543, label %bb.st

bb.st:                                            ; preds = %bb.ss
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dd) #5
  br label %lean_dec_ref.exit1543

lean_dec_ref.exit1543:                            ; preds = %bb.sr, %bb.ss, %bb.st
  %i.zq = load i32, ptr %i.cy, align 4, !tbaa !15 ; 3 uses
  %i.zr = icmp sgt i32 %i.zq, 1
  br i1 %i.zr, label %bb.su, label %bb.sv, !prof !11

bb.su:                                            ; preds = %lean_dec_ref.exit1543
  %i.zs = add nsw i32 %i.zq, -1
  store i32 %i.zs, ptr %i.cy, align 4, !tbaa !15
  br label %lean_dec_ref.exit1541

bb.sv:                                            ; preds = %lean_dec_ref.exit1543
  %.not.i1540 = icmp eq i32 %i.zq, 0
  br i1 %.not.i1540, label %lean_dec_ref.exit1541, label %bb.sw

bb.sw:                                            ; preds = %bb.sv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cy) #5
  br label %lean_dec_ref.exit1541

lean_dec_ref.exit1541:                            ; preds = %bb.su, %bb.sv, %bb.sw
  %i.zt = load i32, ptr %i.ct, align 4, !tbaa !15 ; 3 uses
  %i.zu = icmp sgt i32 %i.zt, 1
  br i1 %i.zu, label %bb.sx, label %bb.sy, !prof !11

bb.sx:                                            ; preds = %lean_dec_ref.exit1541
  %i.zv = add nsw i32 %i.zt, -1
  store i32 %i.zv, ptr %i.ct, align 4, !tbaa !15
  br label %lean_dec_ref.exit1539

bb.sy:                                            ; preds = %lean_dec_ref.exit1541
  %.not.i1538 = icmp eq i32 %i.zt, 0
  br i1 %.not.i1538, label %lean_dec_ref.exit1539, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ct) #5
  br label %lean_dec_ref.exit1539

lean_dec_ref.exit1539:                            ; preds = %bb.sx, %bb.sy, %bb.sz
  %i.zw = ptrtoint ptr %.0926 to i64
  %i.zx = and i64 %i.zw, 1
  %.not.i1873 = icmp eq i64 %i.zx, 0
  br i1 %.not.i1873, label %bb.ta, label %lean_del_object.exit1874

bb.ta:                                            ; preds = %lean_dec_ref.exit1539
  tail call void @lean_free_object(ptr noundef nonnull %.0926) #5
  br label %lean_del_object.exit1874

lean_del_object.exit1874:                         ; preds = %lean_dec_ref.exit1539, %bb.ta
  %i.zy = ptrtoint ptr %.0912 to i64
  %i.zz = and i64 %i.zy, 1
  %.not.i1875 = icmp eq i64 %i.zz, 0
  br i1 %.not.i1875, label %bb.tb, label %lean_del_object.exit1876

bb.tb:                                            ; preds = %lean_del_object.exit1874
  tail call void @lean_free_object(ptr noundef nonnull %.0912) #5
  br label %lean_del_object.exit1876

lean_del_object.exit1876:                         ; preds = %lean_del_object.exit1874, %bb.tb
  br i1 %.not.i1649, label %bb.tc, label %lean_dec.exit1270

bb.tc:                                            ; preds = %lean_del_object.exit1876
  %i.aaa = load i32, ptr %i.bj, align 4, !tbaa !15 ; 3 uses
  %i.aab = icmp sgt i32 %i.aaa, 1
  br i1 %i.aab, label %bb.td, label %bb.te, !prof !11

bb.td:                                            ; preds = %bb.tc
  %i.aac = add nsw i32 %i.aaa, -1
  store i32 %i.aac, ptr %i.bj, align 4, !tbaa !15
  br label %lean_dec.exit1270

bb.te:                                            ; preds = %bb.tc
  %.not.i1462 = icmp eq i32 %i.aaa, 0
  br i1 %.not.i1462, label %lean_dec.exit1270, label %bb.tf

bb.tf:                                            ; preds = %bb.te
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #5
  br label %lean_dec.exit1270

lean_dec.exit1270:                                ; preds = %bb.tf, %bb.te, %bb.td, %lean_del_object.exit1876
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.ab, i32 noundef 2)
  br i1 %.not.i1676, label %bb.tg, label %lean_dec.exit1268

bb.tg:                                            ; preds = %lean_dec.exit1270
  %i.aad = load i32, ptr %i.m, align 4, !tbaa !15 ; 3 uses
  %i.aae = icmp sgt i32 %i.aad, 1
  br i1 %i.aae, label %bb.th, label %bb.ti, !prof !11

bb.th:                                            ; preds = %bb.tg
  %i.aaf = add nsw i32 %i.aad, -1
  store i32 %i.aaf, ptr %i.m, align 4, !tbaa !15
  br label %lean_dec.exit1268

end_hunk_1
begin_hunk_2_@l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f:bb.a
bb.up:                                            ; preds = %lean_inc.exit1618
  %i.abu = add nuw i32 %.val.i.i1896, 1
  store i32 %i.abu, ptr %0, align 4, !tbaa !15
  br label %lean_inc_ref.exit1898

bb.uq:                                            ; preds = %lean_inc.exit1618
  %.not.i.i1897 = icmp eq i32 %.val.i.i1896, 0
  br i1 %.not.i.i1897, label %lean_inc_ref.exit1898, label %bb.ur

bb.ur:                                            ; preds = %bb.uq
  %i.abv = atomicrmw add ptr %0, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1898

lean_inc_ref.exit1898:                            ; preds = %bb.up, %bb.uq, %bb.ur
  br i1 %.not.i1676, label %bb.us, label %lean_inc.exit1616

bb.us:                                            ; preds = %lean_inc_ref.exit1898
  %.val.i.i1899 = load i32, ptr %i.m, align 4, !tbaa !15 ; 3 uses
  %i.abw = icmp sgt i32 %.val.i.i1899, 0
  br i1 %i.abw, label %bb.ut, label %bb.uu, !prof !11

bb.ut:                                            ; preds = %bb.us
  %i.abx = add nuw i32 %.val.i.i1899, 1
  store i32 %i.abx, ptr %i.m, align 4, !tbaa !15
  br label %lean_inc.exit1616

bb.uu:                                            ; preds = %bb.us
  %.not.i.i1900 = icmp eq i32 %.val.i.i1899, 0
  br i1 %.not.i.i1900, label %lean_inc.exit1616, label %bb.uv

bb.uv:                                            ; preds = %bb.uu
  %i.aby = atomicrmw add ptr %i.m, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1616

lean_inc.exit1616:                                ; preds = %bb.uv, %bb.uu, %bb.ut, %lean_inc_ref.exit1898
  %i.abz = tail call ptr @l_Lean_Meta_Grind_Arith_getNoZeroDivInst_x3f___redArg(ptr noundef %i.m, ptr noundef nonnull %0, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) #5 ; 10 uses
  %i.aca = ptrtoint ptr %i.abz to i64             ; 2 uses
  %i.acb = and i64 %i.aca, 1
  %.not.i1902 = icmp eq i64 %i.acb, 0             ; 2 uses
  br i1 %.not.i1902, label %bb.ux, label %bb.uw

bb.uw:                                            ; preds = %lean_inc.exit1616
  %i.acc = lshr i64 %i.aca, 1
  %i.acd = trunc i64 %i.acc to i32
  br label %lean_obj_tag.exit1905

bb.ux:                                            ; preds = %lean_inc.exit1616
  %i.ace = getelementptr i8, ptr %i.abz, i64 4
  %.val.i1904 = load i32, ptr %i.ace, align 4
  %i.acf = lshr i32 %.val.i1904, 24
  br label %lean_obj_tag.exit1905

lean_obj_tag.exit1905:                            ; preds = %bb.uw, %bb.ux
  %.0.i1903 = phi i32 [ %i.acd, %bb.uw ], [ %i.acf, %bb.ux ]
  %i.acg = icmp eq i32 %.0.i1903, 0
  br i1 %i.acg, label %bb.uy, label %bb.xl

bb.uy:                                            ; preds = %lean_obj_tag.exit1905
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !13 ; 27 uses
  %i.acj = ptrtoint ptr %i.aci to i64             ; 2 uses
  %i.ack = and i64 %i.acj, 1
  %.not.i1613 = icmp eq i64 %i.ack, 0             ; 9 uses
  br i1 %.not.i1613, label %bb.uz, label %lean_inc.exit1614

bb.uz:                                            ; preds = %bb.uy
  %.val.i.i1906 = load i32, ptr %i.aci, align 4, !tbaa !15 ; 3 uses
  %i.acl = icmp sgt i32 %.val.i.i1906, 0
  br i1 %i.acl, label %bb.va, label %bb.vb, !prof !11

bb.va:                                            ; preds = %bb.uz
  %i.acm = add nuw i32 %.val.i.i1906, 1
  store i32 %i.acm, ptr %i.aci, align 4, !tbaa !15
  br label %lean_inc.exit1614

bb.vb:                                            ; preds = %bb.uz
  %.not.i.i1907 = icmp eq i32 %.val.i.i1906, 0
  br i1 %.not.i.i1907, label %lean_inc.exit1614, label %bb.vc

bb.vc:                                            ; preds = %bb.vb
  %i.acn = atomicrmw add ptr %i.aci, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1614

lean_inc.exit1614:                                ; preds = %bb.vc, %bb.vb, %bb.va, %bb.uy
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.abz, i32 noundef 1)
  %i.aco = load ptr, ptr %i.bt, align 8, !tbaa !13
  %i.acp = tail call ptr @l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___lam__0(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__6_value, ptr noundef %i.aco, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr noundef nonnull %9, ptr poison) ; 4 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !13 ; 7 uses
  %i.acs = ptrtoint ptr %i.acr to i64             ; 2 uses
  %i.act = and i64 %i.acs, 1
  %.not.i1611 = icmp eq i64 %i.act, 0             ; 2 uses
  br i1 %.not.i1611, label %bb.vd, label %lean_inc.exit1612

bb.vd:                                            ; preds = %lean_inc.exit1614
  %.val.i.i1909 = load i32, ptr %i.acr, align 4, !tbaa !15 ; 3 uses
  %i.acu = icmp sgt i32 %.val.i.i1909, 0
  br i1 %i.acu, label %bb.ve, label %bb.vf, !prof !11

bb.ve:                                            ; preds = %bb.vd
  %i.acv = add nuw i32 %.val.i.i1909, 1
  store i32 %i.acv, ptr %i.acr, align 4, !tbaa !15
  br label %lean_inc.exit1612

bb.vf:                                            ; preds = %bb.vd
  %.not.i.i1910 = icmp eq i32 %.val.i.i1909, 0
  br i1 %.not.i.i1910, label %lean_inc.exit1612, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  %i.acw = atomicrmw add ptr %i.acr, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1612

lean_inc.exit1612:                                ; preds = %bb.vg, %bb.vf, %bb.ve, %lean_inc.exit1614
  %i.acx = load i32, ptr %i.acp, align 8, !tbaa !15 ; 3 uses
  %i.acy = icmp sgt i32 %i.acx, 1
  br i1 %i.acy, label %bb.vh, label %bb.vi, !prof !11

bb.vh:                                            ; preds = %lean_inc.exit1612
  %i.acz = add nsw i32 %i.acx, -1
  store i32 %i.acz, ptr %i.acp, align 8, !tbaa !15
  br label %lean_dec_ref.exit1535

bb.vi:                                            ; preds = %lean_inc.exit1612
  %.not.i1534 = icmp eq i32 %i.acx, 0
  br i1 %.not.i1534, label %lean_dec_ref.exit1535, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.acp) #5
  br label %lean_dec_ref.exit1535

lean_dec_ref.exit1535:                            ; preds = %bb.vh, %bb.vi, %bb.vj
  br i1 %.not.i1611, label %bb.vk, label %lean_dec.exit1264

bb.vk:                                            ; preds = %lean_dec_ref.exit1535
  %i.ada = load i32, ptr %i.acr, align 4, !tbaa !15 ; 3 uses
  %i.adb = icmp sgt i32 %i.ada, 1
  br i1 %i.adb, label %bb.vl, label %bb.vm, !prof !11

bb.vl:                                            ; preds = %bb.vk
  %i.adc = add nsw i32 %i.ada, -1
  store i32 %i.adc, ptr %i.acr, align 4, !tbaa !15
  br label %lean_dec.exit1264

bb.vm:                                            ; preds = %bb.vk
  %.not.i1468 = icmp eq i32 %i.ada, 0
  br i1 %.not.i1468, label %lean_dec.exit1264, label %bb.vn

bb.vn:                                            ; preds = %bb.vm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.acr) #5
  br label %lean_dec.exit1264

lean_dec.exit1264:                                ; preds = %bb.vn, %bb.vm, %bb.vl, %lean_dec_ref.exit1535
  %i.add = and i64 %i.acs, 510
  %i.ade = icmp eq i64 %i.add, 0
  br i1 %i.ade, label %lean_dec.exit1254.thread2030, label %bb.vo

bb.vo:                                            ; preds = %lean_dec.exit1264
  %i.adf = tail call ptr @l_Lean_Meta_Grind_updateLastTag(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) #5 ; 9 uses
  %i.adg = ptrtoint ptr %i.adf to i64             ; 2 uses
  %i.adh = and i64 %i.adg, 1
  %.not.i1912 = icmp eq i64 %i.adh, 0             ; 2 uses
  br i1 %.not.i1912, label %bb.vq, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  %i.adi = lshr i64 %i.adg, 1
  %i.adj = trunc i64 %i.adi to i32
  br label %lean_obj_tag.exit1915

bb.vq:                                            ; preds = %bb.vo
  %i.adk = getelementptr i8, ptr %i.adf, i64 4
  %.val.i1914 = load i32, ptr %i.adk, align 4
  %i.adl = lshr i32 %.val.i1914, 24
  br label %lean_obj_tag.exit1915

lean_obj_tag.exit1915:                            ; preds = %bb.vp, %bb.vq
  %.0.i1913 = phi i32 [ %i.adj, %bb.vp ], [ %i.adl, %bb.vq ]
  %i.adm = icmp eq i32 %.0.i1913, 0
  br i1 %i.adm, label %bb.vr, label %bb.vw

bb.vr:                                            ; preds = %lean_obj_tag.exit1915
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.adf, i32 noundef 1)
  %i.adn = load atomic i32, ptr @l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__27_once seq_cst, align 4, !tbaa !10
  %i.ado = icmp eq i32 %i.adn, 1
  br i1 %i.ado, label %bb.vs, label %bb.vt, !prof !11

bb.vs:                                            ; preds = %bb.vr
  %i.adp = load ptr, ptr @l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__27, align 8, !tbaa !13
  br label %lean_obj_once.exit1917

bb.vt:                                            ; preds = %bb.vr
  %i.adq = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__27, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__27_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_RingId_0__Lean_Meta_Grind_Arith_CommRing_getCommRingId_x3f_go_x3f___closed__27) #5
  br label %lean_obj_once.exit1917

lean_obj_once.exit1917:                           ; preds = %bb.vs, %bb.vt
  %.0.i1916 = phi ptr [ %i.adp, %bb.vs ], [ %i.adq, %bb.vt ] ; 4 uses
  br i1 %.not.i1613, label %bb.vv, label %bb.vu

bb.vu:                                            ; preds = %lean_obj_once.exit1917
  %i.adr = lshr i64 %i.acj, 1
  %i.ads = trunc i64 %i.adr to i32
  br label %15

bb.vv:                                            ; preds = %lean_obj_once.exit1917
  %i.adt = getelementptr i8, ptr %i.aci, i64 4
  %.val.i1920 = load i32, ptr %i.adt, align 4
  %i.adu = lshr i32 %.val.i1920, 24
  br label %15

bb.vw:                                            ; preds = %lean_obj_tag.exit1915
  br i1 %.not.i1613, label %bb.vx, label %lean_dec.exit1262

bb.vx:                                            ; preds = %bb.vw
  %i.adv = load i32, ptr %i.aci, align 4, !tbaa !15 ; 3 uses
  %i.adw = icmp sgt i32 %i.adv, 1
  br i1 %i.adw, label %bb.vy, label %bb.vz, !prof !11

bb.vy:                                            ; preds = %bb.vx
  %i.adx = add nsw i32 %i.adv, -1
  store i32 %i.adx, ptr %i.aci, align 4, !tbaa !15
  br label %lean_dec.exit1262

bb.vz:                                            ; preds = %bb.vx
  %.not.i1470 = icmp eq i32 %i.adv, 0
  br i1 %.not.i1470, label %lean_dec.exit1262, label %bb.wa

bb.wa:                                            ; preds = %bb.vz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aci) #5
  br label %lean_dec.exit1262

lean_dec.exit1262:                                ; preds = %bb.wa, %bb.vz, %bb.vy, %bb.vw
  br i1 %.not.i1617, label %bb.wb, label %lean_dec.exit1260

bb.wb:                                            ; preds = %lean_dec.exit1262
  %i.ady = load i32, ptr %i.abn, align 4, !tbaa !15 ; 3 uses
  %i.adz = icmp sgt i32 %i.ady, 1
  br i1 %i.adz, label %bb.wc, label %bb.wd, !prof !11

bb.wc:                                            ; preds = %bb.wb
  %i.aea = add nsw i32 %i.ady, -1
  store i32 %i.aea, ptr %i.abn, align 4, !tbaa !15
  br label %lean_dec.exit1260

bb.wd:                                            ; preds = %bb.wb
  %.not.i1472 = icmp eq i32 %i.ady, 0
  br i1 %.not.i1472, label %lean_dec.exit1260, label %bb.we

bb.we:                                            ; preds = %bb.wd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.abn) #5
  br label %lean_dec.exit1260

lean_dec.exit1260:                                ; preds = %bb.we, %bb.wd, %bb.wc, %lean_dec.exit1262
  %i.aeb = load i32, ptr %i.dd, align 4, !tbaa !15 ; 3 uses
  %i.aec = icmp sgt i32 %i.aeb, 1
  br i1 %i.aec, label %bb.wf, label %bb.wg, !prof !11

bb.wf:                                            ; preds = %lean_dec.exit1260
  %i.aed = add nsw i32 %i.aeb, -1
  store i32 %i.aed, ptr %i.dd, align 4, !tbaa !15
  br label %lean_dec_ref.exit1533

bb.wg:                                            ; preds = %lean_dec.exit1260
  %.not.i1532 = icmp eq i32 %i.aeb, 0
  br i1 %.not.i1532, label %lean_dec_ref.exit1533, label %bb.wh

bb.wh:                                            ; preds = %bb.wg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dd) #5
  br label %lean_dec_ref.exit1533

lean_dec_ref.exit1533:                            ; preds = %bb.wf, %bb.wg, %bb.wh
  %i.aee = load i32, ptr %i.cy, align 4, !tbaa !15 ; 3 uses
  %i.aef = icmp sgt i32 %i.aee, 1
  br i1 %i.aef, label %bb.wi, label %bb.wj, !prof !11

bb.wi:                                            ; preds = %lean_dec_ref.exit1533
  %i.aeg = add nsw i32 %i.aee, -1
  store i32 %i.aeg, ptr %i.cy, align 4, !tbaa !15
  br label %lean_dec_ref.exit1531

bb.wj:                                            ; preds = %lean_dec_ref.exit1533
  %.not.i1530 = icmp eq i32 %i.aee, 0
  br i1 %.not.i1530, label %lean_dec_ref.exit1531, label %bb.wk

bb.wk:                                            ; preds = %bb.wj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cy) #5
  br label %lean_dec_ref.exit1531

lean_dec_ref.exit1531:                            ; preds = %bb.wi, %bb.wj, %bb.wk
  %i.aeh = load i32, ptr %i.ct, align 4, !tbaa !15 ; 3 uses
  %i.aei = icmp sgt i32 %i.aeh, 1
  br i1 %i.aei, label %bb.wl, label %bb.wm, !prof !11

bb.wl:                                            ; preds = %lean_dec_ref.exit1531
  %i.aej = add nsw i32 %i.aeh, -1
  store i32 %i.aej, ptr %i.ct, align 4, !tbaa !15
  br label %lean_dec_ref.exit1529

bb.wm:                                            ; preds = %lean_dec_ref.exit1531
  %.not.i1528 = icmp eq i32 %i.aeh, 0
  br i1 %.not.i1528, label %lean_dec_ref.exit1529, label %bb.wn

bb.wn:                                            ; preds = %bb.wm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ct) #5
  br label %lean_dec_ref.exit1529

lean_dec_ref.exit1529:                            ; preds = %bb.wl, %bb.wm, %bb.wn
  %i.aek = ptrtoint ptr %.0926 to i64
  %i.ael = and i64 %i.aek, 1
  %.not.i1922 = icmp eq i64 %i.ael, 0
  br i1 %.not.i1922, label %bb.wo, label %lean_del_object.exit1923

bb.wo:                                            ; preds = %lean_dec_ref.exit1529
  tail call void @lean_free_object(ptr noundef nonnull %.0926) #5
  br label %lean_del_object.exit1923

lean_del_object.exit1923:                         ; preds = %lean_dec_ref.exit1529, %bb.wo
  %i.aem = ptrtoint ptr %.0912 to i64
  %i.aen = and i64 %i.aem, 1
  %.not.i1924 = icmp eq i64 %i.aen, 0
  br i1 %.not.i1924, label %bb.wp, label %lean_del_object.exit1925

bb.wp:                                            ; preds = %lean_del_object.exit1923
  tail call void @lean_free_object(ptr noundef nonnull %.0912) #5
  br label %lean_del_object.exit1925

lean_del_object.exit1925:                         ; preds = %lean_del_object.exit1923, %bb.wp
  br i1 %.not.i1649, label %bb.wq, label %lean_dec.exit1258

bb.wq:                                            ; preds = %lean_del_object.exit1925
  %i.aeo = load i32, ptr %i.bj, align 4, !tbaa !15 ; 3 uses
  %i.aep = icmp sgt i32 %i.aeo, 1
  br i1 %i.aep, label %bb.wr, label %bb.ws, !prof !11

bb.wr:                                            ; preds = %bb.wq
  %i.aeq = add nsw i32 %i.aeo, -1
  store i32 %i.aeq, ptr %i.bj, align 4, !tbaa !15
  br label %lean_dec.exit1258

bb.ws:                                            ; preds = %bb.wq
  %.not.i1474 = icmp eq i32 %i.aeo, 0
  br i1 %.not.i1474, label %lean_dec.exit1258, label %bb.wt

bb.wt:                                            ; preds = %bb.ws
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #5
  br label %lean_dec.exit1258

lean_dec.exit1258:                                ; preds = %bb.wt, %bb.ws, %bb.wr, %lean_del_object.exit1925
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.ab, i32 noundef 2)
  br i1 %.not.i1676, label %bb.wu, label %lean_dec.exit1256

bb.wu:                                            ; preds = %lean_dec.exit1258
  %i.aer = load i32, ptr %i.m, align 4, !tbaa !15 ; 3 uses
  %i.aes = icmp sgt i32 %i.aer, 1
  br i1 %i.aes, label %bb.wv, label %bb.ww, !prof !11

bb.wv:                                            ; preds = %bb.wu
  %i.aet = add nsw i32 %i.aer, -1
  store i32 %i.aet, ptr %i.m, align 4, !tbaa !15
  br label %lean_dec.exit1256

bb.ww:                                            ; preds = %bb.wu
  %.not.i1476 = icmp eq i32 %i.aer, 0
  br i1 %.not.i1476, label %lean_dec.exit1256, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.m) #5
  br label %lean_dec.exit1256

lean_dec.exit1256:                                ; preds = %bb.wx, %bb.ww, %bb.wv, %lean_dec.exit1258
  %i.aeu = load i32, ptr %0, align 4, !tbaa !15   ; 3 uses
  %i.aev = icmp sgt i32 %i.aeu, 1
  br i1 %i.aev, label %bb.wy, label %bb.wz, !prof !11

bb.wy:                                            ; preds = %lean_dec.exit1256
  %i.aew = add nsw i32 %i.aeu, -1
  store i32 %i.aew, ptr %0, align 4, !tbaa !15
  br label %lean_dec_ref.exit1527

bb.wz:                                            ; preds = %lean_dec.exit1256
  %.not.i1526 = icmp eq i32 %i.aeu, 0
  br i1 %.not.i1526, label %lean_dec_ref.exit1527, label %bb.xa

bb.xa:                                            ; preds = %bb.wz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit1527

lean_dec_ref.exit1527:                            ; preds = %bb.wy, %bb.wz, %bb.xa
  %i.aex = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !13 ; 5 uses
  %.val1660 = load i32, ptr %i.adf, align 8, !tbaa !15
  %i.aez = icmp eq i32 %.val1660, 1
  br i1 %i.aez, label %lean_dec.exit1340, label %bb.xb

bb.xb:                                            ; preds = %lean_dec_ref.exit1527
  %i.afa = ptrtoint ptr %i.aey to i64
  %i.afb = and i64 %i.afa, 1
  %.not.i1609 = icmp eq i64 %i.afb, 0
  br i1 %.not.i1609, label %bb.xc, label %lean_inc.exit1610

bb.xc:                                            ; preds = %bb.xb
  %.val.i.i1926 = load i32, ptr %i.aey, align 4, !tbaa !15 ; 3 uses
  %i.afc = icmp sgt i32 %.val.i.i1926, 0
  br i1 %i.afc, label %bb.xd, label %bb.xe, !prof !11

bb.xd:                                            ; preds = %bb.xc
  %i.afd = add nuw i32 %.val.i.i1926, 1
  store i32 %i.afd, ptr %i.aey, align 4, !tbaa !15
  br label %lean_inc.exit1610
end_hunk_2
