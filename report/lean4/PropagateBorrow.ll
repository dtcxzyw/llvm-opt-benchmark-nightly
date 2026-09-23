Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/PropagateBorrow?download=true
inline.NumInlined: 1642
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_analyzePropagatedBorrows_collectLetValue:bb.a
  %i.uj = add nsw i32 %i.uh, -1
  store i32 %i.uj, ptr %i.ue, align 4, !tbaa !14
  br label %lean_dec.exit.i1593

bb.ng:                                            ; preds = %bb.ne
  %.not.i7.i1596 = icmp eq i32 %i.uh, 0
  br i1 %.not.i7.i1596, label %lean_dec.exit.i1593, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ue) #6
  br label %lean_dec.exit.i1593

lean_dec.exit.i1593:                              ; preds = %bb.nh, %bb.ng, %bb.nf, %.preheader.i1590.preheader
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !12 ; 4 uses
  %i.um = ptrtoint ptr %i.ul to i64
  %i.un = and i64 %i.um, 1
  %.not.i.i1592.1 = icmp eq i64 %i.un, 0
  br i1 %.not.i.i1592.1, label %bb.ni, label %lean_dec.exit.i1593.1

bb.ni:                                            ; preds = %lean_dec.exit.i1593
  %i.uo = load i32, ptr %i.ul, align 4, !tbaa !14 ; 3 uses
  %i.up = icmp sgt i32 %i.uo, 1
  br i1 %i.up, label %bb.nl, label %bb.nj, !prof !15

bb.nj:                                            ; preds = %bb.ni
  %.not.i7.i1596.1 = icmp eq i32 %i.uo, 0
  br i1 %.not.i7.i1596.1, label %lean_dec.exit.i1593.1, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ul) #6
  br label %lean_dec.exit.i1593.1

bb.nl:                                            ; preds = %bb.ni
  %i.uq = add nsw i32 %i.uo, -1
  store i32 %i.uq, ptr %i.ul, align 4, !tbaa !14
  br label %lean_dec.exit.i1593.1

lean_dec.exit.i1593.1:                            ; preds = %bb.nl, %bb.nk, %bb.nj, %lean_dec.exit.i1593
  tail call void @lean_free_object(ptr noundef nonnull %1) #6
  br label %lean_dec_ref_known.exit1597

bb.nm:                                            ; preds = %lean_inc_ref.exit1587
  %i.ur = icmp sgt i32 %.val.i1588, 1
  br i1 %i.ur, label %bb.nn, label %bb.no, !prof !15

bb.nn:                                            ; preds = %bb.nm
  %i.us = add nsw i32 %.val.i1588, -1
  store i32 %i.us, ptr %1, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit1597

bb.no:                                            ; preds = %bb.nm
  %.not.i8.i1589 = icmp eq i32 %.val.i1588, 0
  br i1 %.not.i8.i1589, label %lean_dec_ref_known.exit1597, label %bb.np

bb.np:                                            ; preds = %bb.no
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref_known.exit1597

lean_dec_ref_known.exit1597:                      ; preds = %lean_dec.exit.i1593.1, %bb.nn, %bb.no, %bb.np
  %i.ut = tail call zeroext i8 @l_Lean_Compiler_LCNF_CtorInfo_isScalar(ptr noundef nonnull %i.tz) #6
  %i.uu = load i32, ptr %i.tz, align 4, !tbaa !14 ; 3 uses
  %i.uv = icmp sgt i32 %i.uu, 1
  br i1 %i.uv, label %bb.nq, label %bb.nr, !prof !15

bb.nq:                                            ; preds = %lean_dec_ref_known.exit1597
  %i.uw = add nsw i32 %i.uu, -1
  store i32 %i.uw, ptr %i.tz, align 4, !tbaa !14
  br label %lean_dec_ref.exit1393

bb.nr:                                            ; preds = %lean_dec_ref_known.exit1597
  %.not.i1392 = icmp eq i32 %i.uu, 0
  br i1 %.not.i1392, label %lean_dec_ref.exit1393, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.tz) #6
  br label %lean_dec_ref.exit1393

lean_dec_ref.exit1393:                            ; preds = %bb.nq, %bb.nr, %bb.ns
  %.not1898 = icmp eq i8 %i.ut, 0                 ; 3 uses
  %.1031 = select i1 %.not1898, i8 2, i8 1
  %i.ux = tail call ptr @lean_st_ref_take(ptr noundef %2) #6 ; 12 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8 ; 2 uses
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !12 ; 8 uses
  %.val.i.i1598 = load i32, ptr %i.uz, align 4, !tbaa !14 ; 3 uses
  %i.va = icmp sgt i32 %.val.i.i1598, 0
  br i1 %i.va, label %bb.nt, label %bb.nu, !prof !15

bb.nt:                                            ; preds = %lean_dec_ref.exit1393
  %i.vb = add nuw i32 %.val.i.i1598, 1
  store i32 %i.vb, ptr %i.uz, align 4, !tbaa !14
  br label %lean_inc_ref.exit1600

bb.nu:                                            ; preds = %lean_dec_ref.exit1393
  %.not.i.i1599 = icmp eq i32 %.val.i.i1598, 0
  br i1 %.not.i.i1599, label %lean_inc_ref.exit1600, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.vc = atomicrmw sub ptr %i.uz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1600

lean_inc_ref.exit1600:                            ; preds = %bb.nt, %bb.nu, %bb.nv
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !12 ; 2 uses
  %i.vf = getelementptr i8, ptr %i.ve, i64 8
  %.val.i1601 = load i64, ptr %i.vf, align 8, !tbaa !10
  %i.vg = and i64 %.val.i1601, 9223372036854775807
  %i.vh = tail call i64 @l_Lean_instHashableFVarId_hash(ptr noundef %0) #6 ; 2 uses
  %i.vi = lshr i64 %i.vh, 32
  %i.vj = xor i64 %i.vi, %i.vh                    ; 2 uses
  %i.vk = lshr i64 %i.vj, 16
  %i.vl = xor i64 %i.vk, %i.vj
  %i.vm = add nsw i64 %i.vg, -1
  %i.vn = and i64 %i.vl, %i.vm
  %i.vo = getelementptr inbounds nuw i8, ptr %i.ve, i64 24
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.vo, i64 %i.vn
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !12
  br label %lean_inc.exit.i.i1602

lean_inc.exit.i.i1602:                            ; preds = %bb.ny, %lean_inc_ref.exit1600
  %.013.i.i1603 = phi ptr [ %i.vq, %lean_inc_ref.exit1600 ], [ %i.wd, %bb.ny ] ; 5 uses
  %i.vr = ptrtoint ptr %.013.i.i1603 to i64       ; 2 uses
  %i.vs = and i64 %i.vr, 1
  %.not.i18.i.i1604 = icmp eq i64 %i.vs, 0
  br i1 %.not.i18.i.i1604, label %bb.nx, label %bb.nw

bb.nw:                                            ; preds = %lean_inc.exit.i.i1602
  %i.vt = lshr i64 %i.vr, 1
  %i.vu = trunc i64 %i.vt to i32
  br label %lean_obj_tag.exit.i.i1605

bb.nx:                                            ; preds = %lean_inc.exit.i.i1602
  %i.vv = getelementptr i8, ptr %.013.i.i1603, i64 4
  %.val.i.i.i1611 = load i32, ptr %i.vv, align 4
  %i.vw = lshr i32 %.val.i.i.i1611, 24
  br label %lean_obj_tag.exit.i.i1605

lean_obj_tag.exit.i.i1605:                        ; preds = %bb.nx, %bb.nw
  %.0.i.i.i1606 = phi i32 [ %i.vu, %bb.nw ], [ %i.vw, %bb.nx ]
  %i.vx = icmp eq i32 %.0.i.i.i1606, 0
  br i1 %i.vx, label %lean_dec.exit1050, label %bb.ny

bb.ny:                                            ; preds = %lean_obj_tag.exit.i.i1605
  %i.vy = getelementptr inbounds nuw i8, ptr %.013.i.i1603, i64 8
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !12
  %i.wa = getelementptr inbounds nuw i8, ptr %.013.i.i1603, i64 16
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !12 ; 8 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.013.i.i1603, i64 24
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !12
  %i.we = tail call zeroext i8 @l_Lean_instBEqFVarId_beq(ptr noundef %i.vz, ptr noundef %0) #6
  %i.wf = icmp eq i8 %i.we, 0
  br i1 %i.wf, label %lean_inc.exit.i.i1602, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.wg = ptrtoint ptr %i.wb to i64
  %i.wh = and i64 %i.wg, 1
  %.not.i.i.i1607 = icmp eq i64 %i.wh, 0
  br i1 %.not.i.i.i1607, label %bb.oa, label %lean_dec.exit1050

bb.oa:                                            ; preds = %bb.nz
  %.val.i.i19.i.i1609 = load i32, ptr %i.wb, align 4, !tbaa !14 ; 3 uses
  %i.wi = icmp sgt i32 %.val.i.i19.i.i1609, 0
  br i1 %i.wi, label %bb.ob, label %bb.oc, !prof !15

bb.ob:                                            ; preds = %bb.oa
  %i.wj = add nuw i32 %.val.i.i19.i.i1609, 1
  store i32 %i.wj, ptr %i.wb, align 4, !tbaa !14
  br label %lean_dec.exit1050

bb.oc:                                            ; preds = %bb.oa
  %.not.i.i20.i.i1610 = icmp eq i32 %.val.i.i19.i.i1609, 0
  br i1 %.not.i.i20.i.i1610, label %lean_dec.exit1050, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.wk = atomicrmw sub ptr %i.wb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_dec.exit1050

lean_dec.exit1050:                                ; preds = %lean_obj_tag.exit.i.i1605, %bb.od, %bb.oc, %bb.ob, %bb.nz
  %.2.i.i1608 = phi ptr [ %i.wb, %bb.od ], [ %i.wb, %bb.oc ], [ %i.wb, %bb.ob ], [ %i.wb, %bb.nz ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit.i.i1605 ] ; 4 uses
  %i.wl = ptrtoint ptr %.2.i.i1608 to i64         ; 2 uses
  %i.wm = lshr i64 %i.wl, 1
  %i.wn = trunc i64 %i.wm to i8                   ; 2 uses
  switch i8 %i.wn, label %bb.og [
    i8 0, label %l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_join.exit1616
    i8 1, label %bb.oe
    i8 2, label %bb.of
  ]

bb.oe:                                            ; preds = %lean_dec.exit1050
  %..i1615 = select i1 %.not1898, i8 3, i8 1
  br label %l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_join.exit1616

bb.of:                                            ; preds = %lean_dec.exit1050
  %.10.i1613 = select i1 %.not1898, i8 2, i8 3
  br label %l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_join.exit1616

bb.og:                                            ; preds = %lean_dec.exit1050
  br label %l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_join.exit1616

l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_join.exit1616: ; preds = %lean_dec.exit1050, %bb.oe, %bb.of, %bb.og
  %.0.i1614 = phi i8 [ 3, %bb.og ], [ %.10.i1613, %bb.of ], [ %..i1615, %bb.oe ], [ %.1031, %lean_dec.exit1050 ] ; 2 uses
  %i.wo = and i64 %i.wl, 1
  %.not.i1047 = icmp eq i64 %i.wo, 0
  br i1 %.not.i1047, label %bb.oh, label %lean_dec.exit1048

bb.oh:                                            ; preds = %l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_join.exit1616
  %i.wp = load i32, ptr %.2.i.i1608, align 4, !tbaa !14 ; 3 uses
  %i.wq = icmp sgt i32 %i.wp, 1
  br i1 %i.wq, label %bb.oi, label %bb.oj, !prof !15

bb.oi:                                            ; preds = %bb.oh
  %i.wr = add nsw i32 %i.wp, -1
  store i32 %i.wr, ptr %.2.i.i1608, align 4, !tbaa !14
  br label %lean_dec.exit1048

bb.oj:                                            ; preds = %bb.oh
  %.not.i1368 = icmp eq i32 %i.wp, 0
  br i1 %.not.i1368, label %lean_dec.exit1048, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.2.i.i1608) #6
  br label %lean_dec.exit1048

lean_dec.exit1048:                                ; preds = %bb.ok, %bb.oj, %bb.oi, %l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_join.exit1616
  switch i8 %i.wn, label %9 [
    i8 0, label %l_Lean_Compiler_LCNF_Ownedness_ctorIdx.exit.i1617
    i8 1, label %7
    i8 2, label %8
  ]

7:                                                ; preds = %lean_dec.exit1048
  br label %l_Lean_Compiler_LCNF_Ownedness_ctorIdx.exit.i1617

8:                                                ; preds = %lean_dec.exit1048
  br label %l_Lean_Compiler_LCNF_Ownedness_ctorIdx.exit.i1617

9:                                                ; preds = %lean_dec.exit1048
  br label %l_Lean_Compiler_LCNF_Ownedness_ctorIdx.exit.i1617

l_Lean_Compiler_LCNF_Ownedness_ctorIdx.exit.i1617: ; preds = %9, %8, %7, %lean_dec.exit1048
  %.0.i12.i1618 = phi ptr [ inttoptr (i64 7 to ptr), %9 ], [ inttoptr (i64 5 to ptr), %8 ], [ inttoptr (i64 3 to ptr), %7 ], [ inttoptr (i64 1 to ptr), %lean_dec.exit1048 ]
  switch i8 %.0.i1614, label %bb.om [
    i8 2, label %bb.ol
    i8 1, label %l_Lean_Compiler_LCNF_instBEqOwnedness_beq.exit1621
  ]

bb.ol:                                            ; preds = %l_Lean_Compiler_LCNF_Ownedness_ctorIdx.exit.i1617
  br label %l_Lean_Compiler_LCNF_instBEqOwnedness_beq.exit1621

bb.om:                                            ; preds = %l_Lean_Compiler_LCNF_Ownedness_ctorIdx.exit.i1617
  br label %l_Lean_Compiler_LCNF_instBEqOwnedness_beq.exit1621

l_Lean_Compiler_LCNF_instBEqOwnedness_beq.exit1621: ; preds = %l_Lean_Compiler_LCNF_Ownedness_ctorIdx.exit.i1617, %bb.ol, %bb.om
  %.0.i13.i1620 = phi ptr [ inttoptr (i64 7 to ptr), %bb.om ], [ inttoptr (i64 5 to ptr), %bb.ol ], [ inttoptr (i64 3 to ptr), %l_Lean_Compiler_LCNF_Ownedness_ctorIdx.exit.i1617 ]
  %.not1899 = icmp eq ptr %.0.i12.i1618, %.0.i13.i1620
  br i1 %.not1899, label %bb.acq, label %bb.ace

bb.on:                                            ; preds = %lean_obj_tag.exit
  %.val.i1622 = load i32, ptr %1, align 4, !tbaa !14 ; 4 uses
  %i.ws = icmp eq i32 %.val.i1622, 1
  br i1 %i.ws, label %.preheader.i1624, label %bb.ow

.preheader.i1624:                                 ; preds = %bb.on
  %i.wt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !12 ; 4 uses
  %i.wv = ptrtoint ptr %i.wu to i64
  %i.ww = and i64 %i.wv, 1
  %.not.i.i1626 = icmp eq i64 %i.ww, 0
  br i1 %.not.i.i1626, label %bb.oo, label %lean_dec.exit.i1627

bb.oo:                                            ; preds = %.preheader.i1624
  %i.wx = load i32, ptr %i.wu, align 4, !tbaa !14 ; 3 uses
  %i.wy = icmp sgt i32 %i.wx, 1
  br i1 %i.wy, label %bb.op, label %bb.oq, !prof !15

bb.op:                                            ; preds = %bb.oo
  %i.wz = add nsw i32 %i.wx, -1
  store i32 %i.wz, ptr %i.wu, align 4, !tbaa !14
  br label %lean_dec.exit.i1627

bb.oq:                                            ; preds = %bb.oo
  %.not.i7.i1630 = icmp eq i32 %i.wx, 0
  br i1 %.not.i7.i1630, label %lean_dec.exit.i1627, label %bb.or

bb.or:                                            ; preds = %bb.oq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.wu) #6
  br label %lean_dec.exit.i1627

lean_dec.exit.i1627:                              ; preds = %bb.or, %bb.oq, %bb.op, %.preheader.i1624
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !12 ; 4 uses
  %i.xc = ptrtoint ptr %i.xb to i64
  %i.xd = and i64 %i.xc, 1
  %.not.i.i1626.1 = icmp eq i64 %i.xd, 0
  br i1 %.not.i.i1626.1, label %bb.os, label %lean_dec.exit.i1627.1

bb.os:                                            ; preds = %lean_dec.exit.i1627
  %i.xe = load i32, ptr %i.xb, align 4, !tbaa !14 ; 3 uses
  %i.xf = icmp sgt i32 %i.xe, 1
  br i1 %i.xf, label %bb.ov, label %bb.ot, !prof !15

bb.ot:                                            ; preds = %bb.os
  %.not.i7.i1630.1 = icmp eq i32 %i.xe, 0
  br i1 %.not.i7.i1630.1, label %lean_dec.exit.i1627.1, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.xb) #6
  br label %lean_dec.exit.i1627.1

bb.ov:                                            ; preds = %bb.os
  %i.xg = add nsw i32 %i.xe, -1
  store i32 %i.xg, ptr %i.xb, align 4, !tbaa !14
  br label %lean_dec.exit.i1627.1

lean_dec.exit.i1627.1:                            ; preds = %bb.ov, %bb.ou, %bb.ot, %lean_dec.exit.i1627
  tail call void @lean_free_object(ptr noundef nonnull %1) #6
  br label %lean_dec_ref_known.exit1631

bb.ow:                                            ; preds = %bb.on
  %i.xh = icmp sgt i32 %.val.i1622, 1
  br i1 %i.xh, label %bb.ox, label %bb.oy, !prof !15

bb.ox:                                            ; preds = %bb.ow
  %i.xi = add nsw i32 %.val.i1622, -1
  store i32 %i.xi, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref_known.exit1631

bb.oy:                                            ; preds = %bb.ow
  %.not.i8.i1623 = icmp eq i32 %.val.i1622, 0
  br i1 %.not.i8.i1623, label %lean_dec_ref_known.exit1631, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref_known.exit1631

lean_dec_ref_known.exit1631:                      ; preds = %lean_dec.exit.i1627.1, %bb.ox, %bb.oy, %bb.oz
  %i.xj = tail call ptr @lean_st_ref_take(ptr noundef %2) #6 ; 9 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 8 ; 2 uses
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !12 ; 9 uses
  %.val.i.i1632 = load i32, ptr %i.xl, align 4, !tbaa !14 ; 3 uses
  %i.xm = icmp sgt i32 %.val.i.i1632, 0
  br i1 %i.xm, label %bb.pa, label %bb.pb, !prof !15

bb.pa:                                            ; preds = %lean_dec_ref_known.exit1631
  %i.xn = add nuw i32 %.val.i.i1632, 1
  store i32 %i.xn, ptr %i.xl, align 4, !tbaa !14
  br label %lean_inc_ref.exit1634

bb.pb:                                            ; preds = %lean_dec_ref_known.exit1631
  %.not.i.i1633 = icmp eq i32 %.val.i.i1632, 0
  br i1 %.not.i.i1633, label %lean_inc_ref.exit1634, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.xo = atomicrmw sub ptr %i.xl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1634

lean_inc_ref.exit1634:                            ; preds = %bb.pa, %bb.pb, %bb.pc
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xl, i64 16
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !12 ; 2 uses
  %i.xr = getelementptr i8, ptr %i.xq, i64 8
  %.val.i1635 = load i64, ptr %i.xr, align 8, !tbaa !10
  %i.xs = and i64 %.val.i1635, 9223372036854775807
  %i.xt = tail call i64 @l_Lean_instHashableFVarId_hash(ptr noundef %0) #6 ; 2 uses
  %i.xu = lshr i64 %i.xt, 32
  %i.xv = xor i64 %i.xu, %i.xt                    ; 2 uses
  %i.xw = lshr i64 %i.xv, 16
  %i.xx = xor i64 %i.xw, %i.xv
  %i.xy = add nsw i64 %i.xs, -1
  %i.xz = and i64 %i.xx, %i.xy
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xq, i64 24
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %i.ya, i64 %i.xz
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !12
  br label %lean_inc.exit.i.i1636

lean_inc.exit.i.i1636:                            ; preds = %bb.pf, %lean_inc_ref.exit1634
  %.013.i.i1637 = phi ptr [ %i.yc, %lean_inc_ref.exit1634 ], [ %i.yp, %bb.pf ] ; 5 uses
  %i.yd = ptrtoint ptr %.013.i.i1637 to i64       ; 2 uses
  %i.ye = and i64 %i.yd, 1
  %.not.i18.i.i1638 = icmp eq i64 %i.ye, 0
  br i1 %.not.i18.i.i1638, label %bb.pe, label %bb.pd

bb.pd:                                            ; preds = %lean_inc.exit.i.i1636
  %i.yf = lshr i64 %i.yd, 1
  %i.yg = trunc i64 %i.yf to i32
  br label %lean_obj_tag.exit.i.i1639

bb.pe:                                            ; preds = %lean_inc.exit.i.i1636
  %i.yh = getelementptr i8, ptr %.013.i.i1637, i64 4
  %.val.i.i.i1645 = load i32, ptr %i.yh, align 4
  %i.yi = lshr i32 %.val.i.i.i1645, 24
  br label %lean_obj_tag.exit.i.i1639

lean_obj_tag.exit.i.i1639:                        ; preds = %bb.pe, %bb.pd
  %.0.i.i.i1640 = phi i32 [ %i.yg, %bb.pd ], [ %i.yi, %bb.pe ]
  %i.yj = icmp eq i32 %.0.i.i.i1640, 0
  br i1 %i.yj, label %lean_dec.exit1128, label %bb.pf

bb.pf:                                            ; preds = %lean_obj_tag.exit.i.i1639
  %i.yk = getelementptr inbounds nuw i8, ptr %.013.i.i1637, i64 8
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !12
  %i.ym = getelementptr inbounds nuw i8, ptr %.013.i.i1637, i64 16
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !12 ; 8 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %.013.i.i1637, i64 24
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !12
  %i.yq = tail call zeroext i8 @l_Lean_instBEqFVarId_beq(ptr noundef %i.yl, ptr noundef %0) #6
  %i.yr = icmp eq i8 %i.yq, 0
  br i1 %i.yr, label %lean_inc.exit.i.i1636, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.ys = ptrtoint ptr %i.yn to i64
  %i.yt = and i64 %i.ys, 1
  %.not.i.i.i1641 = icmp eq i64 %i.yt, 0
  br i1 %.not.i.i.i1641, label %bb.ph, label %lean_dec.exit1128

bb.ph:                                            ; preds = %bb.pg
  %.val.i.i19.i.i1643 = load i32, ptr %i.yn, align 4, !tbaa !14 ; 3 uses
  %i.yu = icmp sgt i32 %.val.i.i19.i.i1643, 0
  br i1 %i.yu, label %bb.pi, label %bb.pj, !prof !15

bb.pi:                                            ; preds = %bb.ph
  %i.yv = add nuw i32 %.val.i.i19.i.i1643, 1
  store i32 %i.yv, ptr %i.yn, align 4, !tbaa !14
  br label %lean_dec.exit1128

bb.pj:                                            ; preds = %bb.ph
  %.not.i.i20.i.i1644 = icmp eq i32 %.val.i.i19.i.i1643, 0
  br i1 %.not.i.i20.i.i1644, label %lean_dec.exit1128, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.yw = atomicrmw sub ptr %i.yn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_dec.exit1128

lean_dec.exit1128:                                ; preds = %lean_obj_tag.exit.i.i1639, %bb.pk, %bb.pj, %bb.pi, %bb.pg
  %.2.i.i1642 = phi ptr [ %i.yn, %bb.pk ], [ %i.yn, %bb.pj ], [ %i.yn, %bb.pi ], [ %i.yn, %bb.pg ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit.i.i1639 ] ; 4 uses
  %i.yx = ptrtoint ptr %.2.i.i1642 to i64         ; 2 uses
  %i.yy = lshr i64 %i.yx, 1
  %i.yz = trunc i64 %i.yy to i8                   ; 2 uses
  %switch.and = and i8 %i.yz, -3
  %switch.selectcmp.a = icmp eq i8 %switch.and, 0 ; 2 uses
  %i.za = and i64 %i.yx, 1
  %.not.i1125 = icmp eq i64 %i.za, 0
  br i1 %.not.i1125, label %bb.pl, label %lean_dec.exit1126

bb.pl:                                            ; preds = %lean_dec.exit1128
  %i.zb = load i32, ptr %.2.i.i1642, align 4, !tbaa !14 ; 3 uses
  %i.zc = icmp sgt i32 %i.zb, 1
  br i1 %i.zc, label %bb.pm, label %bb.pn, !prof !15

bb.pm:                                            ; preds = %bb.pl
  %i.zd = add nsw i32 %i.zb, -1
  store i32 %i.zd, ptr %.2.i.i1642, align 4, !tbaa !14
  br label %lean_dec.exit1126

bb.pn:                                            ; preds = %bb.pl
  %.not.i1290 = icmp eq i32 %i.zb, 0
end_hunk_0
begin_hunk_1_@l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_analyzePropagatedBorrows_collectLetValue:bb.a
  br i1 %i.aqz, label %bb.zy, label %lean_alloc_ctor.exit1799

bb.zy:                                            ; preds = %bb.zx
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit1799:                         ; preds = %bb.zx
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqy, i64 4
  store i32 1, ptr %i.aqy, align 4, !tbaa !14
  store i32 65552, ptr %i.ara, align 4
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqy, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.arb, align 8, !tbaa !12
  br label %lean_dec_ref.exit1419.thread1841

bb.zz:                                            ; preds = %lean_obj_tag.exit
  br i1 %.not.i1440, label %bb.aaa, label %lean_dec.exit1064

bb.aaa:                                           ; preds = %bb.zz
  %i.arc = load i32, ptr %1, align 4, !tbaa !14   ; 3 uses
  %i.ard = icmp sgt i32 %i.arc, 1
  br i1 %i.ard, label %bb.aab, label %bb.aac, !prof !15

bb.aab:                                           ; preds = %bb.aaa
  %i.are = add nsw i32 %i.arc, -1
  store i32 %i.are, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit1064

bb.aac:                                           ; preds = %bb.aaa
  %.not.i1352 = icmp eq i32 %i.arc, 0
  br i1 %.not.i1352, label %lean_dec.exit1064, label %bb.aad

bb.aad:                                           ; preds = %bb.aac
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit1064

lean_dec.exit1064:                                ; preds = %bb.aad, %bb.aac, %bb.aab, %bb.zz
  %i.arf = ptrtoint ptr %0 to i64
  %i.arg = and i64 %i.arf, 1
  %.not.i1061 = icmp eq i64 %i.arg, 0
  br i1 %.not.i1061, label %bb.aae, label %lean_dec.exit1062

bb.aae:                                           ; preds = %lean_dec.exit1064
  %i.arh = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.ari = icmp sgt i32 %i.arh, 1
  br i1 %i.ari, label %bb.aaf, label %bb.aag, !prof !15

bb.aaf:                                           ; preds = %bb.aae
  %i.arj = add nsw i32 %i.arh, -1
  store i32 %i.arj, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit1062

bb.aag:                                           ; preds = %bb.aae
  %.not.i1354 = icmp eq i32 %i.arh, 0
  br i1 %.not.i1354, label %lean_dec.exit1062, label %bb.aah

bb.aah:                                           ; preds = %bb.aag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit1062

lean_dec.exit1062:                                ; preds = %bb.aah, %bb.aag, %bb.aaf, %lean_dec.exit1064
  %i.ark = load atomic i32, ptr @l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_analyzePropagatedBorrows_collectLetValue___closed__5_once seq_cst, align 4, !tbaa !19
  %i.arl = icmp eq i32 %i.ark, 1
  br i1 %i.arl, label %bb.aai, label %bb.aaj, !prof !15

bb.aai:                                           ; preds = %lean_dec.exit1062
  %i.arm = load ptr, ptr @l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_analyzePropagatedBorrows_collectLetValue___closed__5, align 8, !tbaa !12
  br label %lean_obj_once.exit

bb.aaj:                                           ; preds = %lean_dec.exit1062
  %i.arn = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_analyzePropagatedBorrows_collectLetValue___closed__5, ptr noundef nonnull @l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_analyzePropagatedBorrows_collectLetValue___closed__5_once, ptr noundef nonnull @_init_l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_analyzePropagatedBorrows_collectLetValue___closed__5) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.aai, %bb.aaj
  %.0.i1800 = phi ptr [ %i.arm, %bb.aai ], [ %i.arn, %bb.aaj ]
  %i.aro = tail call ptr @l_panic___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_analyzePropagatedBorrows_collectLetValue_spec__2(ptr noundef %.0.i1800, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %lean_dec_ref.exit1419.thread1841

bb.aak:                                           ; preds = %bb.mz, %bb.my, %bb.mx
  %.mask = and i64 %.val1439, 9223372036854775807
  %.not1903.not = icmp eq i64 %.mask, 0           ; 3 uses
  %.1030 = select i1 %.not1903.not, i8 1, i8 2
  %i.arp = tail call ptr @lean_st_ref_take(ptr noundef %2) #6 ; 12 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 8 ; 2 uses
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !12 ; 8 uses
  %.val.i.i1801 = load i32, ptr %i.arr, align 4, !tbaa !14 ; 3 uses
  %i.ars = icmp sgt i32 %.val.i.i1801, 0
  br i1 %i.ars, label %bb.aal, label %bb.aam, !prof !15

bb.aal:                                           ; preds = %bb.aak
  %i.art = add nuw i32 %.val.i.i1801, 1
  store i32 %i.art, ptr %i.arr, align 4, !tbaa !14
  br label %lean_inc_ref.exit1803

bb.aam:                                           ; preds = %bb.aak
  %.not.i.i1802 = icmp eq i32 %.val.i.i1801, 0
  br i1 %.not.i.i1802, label %lean_inc_ref.exit1803, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.aru = atomicrmw sub ptr %i.arr, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1803

lean_inc_ref.exit1803:                            ; preds = %bb.aal, %bb.aam, %bb.aan
  %i.arv = getelementptr inbounds nuw i8, ptr %i.arr, i64 16
  %i.arw = load ptr, ptr %i.arv, align 8, !tbaa !12 ; 2 uses
  %i.arx = getelementptr i8, ptr %i.arw, i64 8
  %.val.i1804 = load i64, ptr %i.arx, align 8, !tbaa !10
  %i.ary = and i64 %.val.i1804, 9223372036854775807
  %i.arz = tail call i64 @l_Lean_instHashableFVarId_hash(ptr noundef %0) #6 ; 2 uses
  %i.asa = lshr i64 %i.arz, 32
  %i.asb = xor i64 %i.asa, %i.arz                 ; 2 uses
  %i.asc = lshr i64 %i.asb, 16
  %i.asd = xor i64 %i.asc, %i.asb
  %i.ase = add nsw i64 %i.ary, -1
  %i.asf = and i64 %i.asd, %i.ase
  %i.asg = getelementptr inbounds nuw i8, ptr %i.arw, i64 24
  %i.ash = getelementptr inbounds nuw [8 x i8], ptr %i.asg, i64 %i.asf
  %i.asi = load ptr, ptr %i.ash, align 8, !tbaa !12
  br label %lean_inc.exit.i.i1805

lean_inc.exit.i.i1805:                            ; preds = %bb.aaq, %lean_inc_ref.exit1803
  %.013.i.i1806 = phi ptr [ %i.asi, %lean_inc_ref.exit1803 ], [ %i.asv, %bb.aaq ] ; 5 uses
  %i.asj = ptrtoint ptr %.013.i.i1806 to i64      ; 2 uses
  %i.ask = and i64 %i.asj, 1
  %.not.i18.i.i1807 = icmp eq i64 %i.ask, 0
  br i1 %.not.i18.i.i1807, label %bb.aap, label %bb.aao

bb.aao:                                           ; preds = %lean_inc.exit.i.i1805
  %i.asl = lshr i64 %i.asj, 1
  %i.asm = trunc i64 %i.asl to i32
  br label %lean_obj_tag.exit.i.i1808

bb.aap:                                           ; preds = %lean_inc.exit.i.i1805
  %i.asn = getelementptr i8, ptr %.013.i.i1806, i64 4
  %.val.i.i.i1814 = load i32, ptr %i.asn, align 4
  %i.aso = lshr i32 %.val.i.i.i1814, 24
  br label %lean_obj_tag.exit.i.i1808

lean_obj_tag.exit.i.i1808:                        ; preds = %bb.aap, %bb.aao
  %.0.i.i.i1809 = phi i32 [ %i.asm, %bb.aao ], [ %i.aso, %bb.aap ]
  %i.asp = icmp eq i32 %.0.i.i.i1809, 0
  br i1 %i.asp, label %lean_dec.exit1060, label %bb.aaq

bb.aaq:                                           ; preds = %lean_obj_tag.exit.i.i1808
  %i.asq = getelementptr inbounds nuw i8, ptr %.013.i.i1806, i64 8
  %i.asr = load ptr, ptr %i.asq, align 8, !tbaa !12
  %i.ass = getelementptr inbounds nuw i8, ptr %.013.i.i1806, i64 16
  %i.ast = load ptr, ptr %i.ass, align 8, !tbaa !12 ; 8 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %.013.i.i1806, i64 24
  %i.asv = load ptr, ptr %i.asu, align 8, !tbaa !12
  %i.asw = tail call zeroext i8 @l_Lean_instBEqFVarId_beq(ptr noundef %i.asr, ptr noundef %0) #6
  %i.asx = icmp eq i8 %i.asw, 0
  br i1 %i.asx, label %lean_inc.exit.i.i1805, label %bb.aar

bb.aar:                                           ; preds = %bb.aaq
  %i.asy = ptrtoint ptr %i.ast to i64
  %i.asz = and i64 %i.asy, 1
  %.not.i.i.i1810 = icmp eq i64 %i.asz, 0
  br i1 %.not.i.i.i1810, label %bb.aas, label %lean_dec.exit1060

bb.aas:                                           ; preds = %bb.aar
  %.val.i.i19.i.i1812 = load i32, ptr %i.ast, align 4, !tbaa !14 ; 3 uses
  %i.ata = icmp sgt i32 %.val.i.i19.i.i1812, 0
  br i1 %i.ata, label %bb.aat, label %bb.aau, !prof !15

bb.aat:                                           ; preds = %bb.aas
  %i.atb = add nuw i32 %.val.i.i19.i.i1812, 1
  store i32 %i.atb, ptr %i.ast, align 4, !tbaa !14
  br label %lean_dec.exit1060

bb.aau:                                           ; preds = %bb.aas
  %.not.i.i20.i.i1813 = icmp eq i32 %.val.i.i19.i.i1812, 0
  br i1 %.not.i.i20.i.i1813, label %lean_dec.exit1060, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  %i.atc = atomicrmw sub ptr %i.ast, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_dec.exit1060

lean_dec.exit1060:                                ; preds = %lean_obj_tag.exit.i.i1808, %bb.aav, %bb.aau, %bb.aat, %bb.aar
  %.2.i.i1811 = phi ptr [ %i.ast, %bb.aav ], [ %i.ast, %bb.aau ], [ %i.ast, %bb.aat ], [ %i.ast, %bb.aar ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit.i.i1808 ] ; 4 uses
  %i.atd = ptrtoint ptr %.2.i.i1811 to i64        ; 2 uses
  %i.ate = lshr i64 %i.atd, 1
  %i.atf = trunc i64 %i.ate to i8                 ; 2 uses
  switch i8 %i.atf, label %bb.aay [
    i8 0, label %l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_join.exit1819
    i8 1, label %bb.aaw
    i8 2, label %bb.aax
  ]

bb.aaw:                                           ; preds = %lean_dec.exit1060
  %..i1818 = select i1 %.not1903.not, i8 1, i8 3
  br label %l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_join.exit1819

bb.aax:                                           ; preds = %lean_dec.exit1060
  %.10.i1816 = select i1 %.not1903.not, i8 3, i8 2
  br label %l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_join.exit1819

bb.aay:                                           ; preds = %lean_dec.exit1060
  br label %l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_join.exit1819

l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_join.exit1819: ; preds = %lean_dec.exit1060, %bb.aaw, %bb.aax, %bb.aay
  %.0.i1817 = phi i8 [ 3, %bb.aay ], [ %.10.i1816, %bb.aax ], [ %..i1818, %bb.aaw ], [ %.1030, %lean_dec.exit1060 ] ; 2 uses
  %i.atg = and i64 %i.atd, 1
  %.not.i1057 = icmp eq i64 %i.atg, 0
  br i1 %.not.i1057, label %bb.aaz, label %lean_dec.exit1058

bb.aaz:                                           ; preds = %l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_join.exit1819
  %i.ath = load i32, ptr %.2.i.i1811, align 4, !tbaa !14 ; 3 uses
  %i.ati = icmp sgt i32 %i.ath, 1
  br i1 %i.ati, label %bb.aba, label %bb.abb, !prof !15

bb.aba:                                           ; preds = %bb.aaz
  %i.atj = add nsw i32 %i.ath, -1
  store i32 %i.atj, ptr %.2.i.i1811, align 4, !tbaa !14
  br label %lean_dec.exit1058

bb.abb:                                           ; preds = %bb.aaz
  %.not.i1358 = icmp eq i32 %i.ath, 0
  br i1 %.not.i1358, label %lean_dec.exit1058, label %bb.abc

bb.abc:                                           ; preds = %bb.abb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.2.i.i1811) #6
  br label %lean_dec.exit1058

lean_dec.exit1058:                                ; preds = %bb.abc, %bb.abb, %bb.aba, %l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_join.exit1819
  switch i8 %i.atf, label %12 [
    i8 0, label %l_Lean_Compiler_LCNF_Ownedness_ctorIdx.exit.i1820
    i8 1, label %10
    i8 2, label %11
  ]

10:                                               ; preds = %lean_dec.exit1058
  br label %l_Lean_Compiler_LCNF_Ownedness_ctorIdx.exit.i1820

11:                                               ; preds = %lean_dec.exit1058
  br label %l_Lean_Compiler_LCNF_Ownedness_ctorIdx.exit.i1820

12:                                               ; preds = %lean_dec.exit1058
  br label %l_Lean_Compiler_LCNF_Ownedness_ctorIdx.exit.i1820

l_Lean_Compiler_LCNF_Ownedness_ctorIdx.exit.i1820: ; preds = %12, %11, %10, %lean_dec.exit1058
  %.0.i12.i1821 = phi ptr [ inttoptr (i64 7 to ptr), %12 ], [ inttoptr (i64 5 to ptr), %11 ], [ inttoptr (i64 3 to ptr), %10 ], [ inttoptr (i64 1 to ptr), %lean_dec.exit1058 ]
  switch i8 %.0.i1817, label %bb.abe [
    i8 2, label %bb.abd
    i8 1, label %l_Lean_Compiler_LCNF_instBEqOwnedness_beq.exit1824
  ]

bb.abd:                                           ; preds = %l_Lean_Compiler_LCNF_Ownedness_ctorIdx.exit.i1820
  br label %l_Lean_Compiler_LCNF_instBEqOwnedness_beq.exit1824

bb.abe:                                           ; preds = %l_Lean_Compiler_LCNF_Ownedness_ctorIdx.exit.i1820
  br label %l_Lean_Compiler_LCNF_instBEqOwnedness_beq.exit1824

l_Lean_Compiler_LCNF_instBEqOwnedness_beq.exit1824: ; preds = %l_Lean_Compiler_LCNF_Ownedness_ctorIdx.exit.i1820, %bb.abd, %bb.abe
  %.0.i13.i1823 = phi ptr [ inttoptr (i64 7 to ptr), %bb.abe ], [ inttoptr (i64 5 to ptr), %bb.abd ], [ inttoptr (i64 3 to ptr), %l_Lean_Compiler_LCNF_Ownedness_ctorIdx.exit.i1820 ]
  %.not1904 = icmp eq ptr %.0.i12.i1821, %.0.i13.i1823
  br i1 %.not1904, label %bb.abr, label %bb.abf

bb.abf:                                           ; preds = %l_Lean_Compiler_LCNF_instBEqOwnedness_beq.exit1824
  %.val1427 = load i32, ptr %i.arp, align 8, !tbaa !14 ; 4 uses
  %i.atk = icmp eq i32 %.val1427, 1               ; 2 uses
  br i1 %i.atk, label %bb.abg, label %bb.abl

bb.abg:                                           ; preds = %bb.abf
  %i.atl = load ptr, ptr %i.arq, align 8, !tbaa !12 ; 4 uses
  %i.atm = ptrtoint ptr %i.atl to i64
  %i.atn = and i64 %i.atm, 1
  %.not.i1055 = icmp eq i64 %i.atn, 0
  br i1 %.not.i1055, label %bb.abh, label %lean_dec.exit1056

bb.abh:                                           ; preds = %bb.abg
  %i.ato = load i32, ptr %i.atl, align 4, !tbaa !14 ; 3 uses
  %i.atp = icmp sgt i32 %i.ato, 1
  br i1 %i.atp, label %bb.abi, label %bb.abj, !prof !15

bb.abi:                                           ; preds = %bb.abh
  %i.atq = add nsw i32 %i.ato, -1
  store i32 %i.atq, ptr %i.atl, align 4, !tbaa !14
  br label %lean_dec.exit1056

bb.abj:                                           ; preds = %bb.abh
  %.not.i1360 = icmp eq i32 %i.ato, 0
  br i1 %.not.i1360, label %lean_dec.exit1056, label %bb.abk

bb.abk:                                           ; preds = %bb.abj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.atl) #6
  br label %lean_dec.exit1056

bb.abl:                                           ; preds = %bb.abf
  %i.atr = icmp sgt i32 %.val1427, 1
  br i1 %i.atr, label %bb.abm, label %bb.abn, !prof !15

bb.abm:                                           ; preds = %bb.abl
  %i.ats = add nsw i32 %.val1427, -1
  store i32 %i.ats, ptr %i.arp, align 8, !tbaa !14
  br label %lean_dec.exit1056

bb.abn:                                           ; preds = %bb.abl
  %.not.i1362 = icmp eq i32 %.val1427, 0
  br i1 %.not.i1362, label %lean_dec.exit1056, label %bb.abo

bb.abo:                                           ; preds = %bb.abn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.arp) #6
  br label %lean_dec.exit1056

lean_dec.exit1056:                                ; preds = %bb.abm, %bb.abn, %bb.abo, %bb.abg, %bb.abi, %bb.abj, %bb.abk
  %.0888 = phi ptr [ %i.arp, %bb.abg ], [ %i.arp, %bb.abk ], [ %i.arp, %bb.abj ], [ %i.arp, %bb.abi ], [ inttoptr (i64 1 to ptr), %bb.abo ], [ inttoptr (i64 1 to ptr), %bb.abn ], [ inttoptr (i64 1 to ptr), %bb.abm ]
  %i.att = shl nuw nsw i8 %.0.i1817, 1
  %i.atu = or disjoint i8 %i.att, 1
  %i.atv = zext nneg i8 %i.atu to i64
  %i.atw = inttoptr i64 %i.atv to ptr
  %i.atx = tail call ptr @l_Std_DHashMap_Internal_Raw_u2080_insert___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_analyzePropagatedBorrows_collectLetValue_spec__1___redArg(ptr noundef nonnull %i.arr, ptr noundef %0, ptr noundef nonnull %i.atw)
  br i1 %i.atk, label %bb.abq, label %bb.abp

bb.abp:                                           ; preds = %lean_dec.exit1056
  %i.aty = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 1)
  br label %bb.abq

bb.abq:                                           ; preds = %lean_dec.exit1056, %bb.abp
  %.sink2204 = phi ptr [ %i.aty, %bb.abp ], [ %.0888, %lean_dec.exit1056 ] ; 3 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %.sink2204, i64 8
  store ptr %i.atx, ptr %i.atz, align 8, !tbaa !12
  %i.aua = getelementptr inbounds nuw i8, ptr %.sink2204, i64 16
  store i8 1, ptr %i.aua, align 8, !tbaa !17
  br label %lean_dec.exit1052

bb.abr:                                           ; preds = %l_Lean_Compiler_LCNF_instBEqOwnedness_beq.exit1824
  %i.aub = load i32, ptr %i.arr, align 8, !tbaa !14 ; 3 uses
  %i.auc = icmp sgt i32 %i.aub, 1
  br i1 %i.auc, label %bb.abs, label %bb.abt, !prof !15

bb.abs:                                           ; preds = %bb.abr
  %i.aud = add nsw i32 %i.aub, -1
  store i32 %i.aud, ptr %i.arr, align 8, !tbaa !14
  br label %lean_dec_ref.exit1379

bb.abt:                                           ; preds = %bb.abr
  %.not.i1378 = icmp eq i32 %i.aub, 0
  br i1 %.not.i1378, label %lean_dec_ref.exit1379, label %bb.abu

bb.abu:                                           ; preds = %bb.abt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.arr) #6
  br label %lean_dec_ref.exit1379

lean_dec_ref.exit1379:                            ; preds = %bb.abs, %bb.abt, %bb.abu
  %i.aue = ptrtoint ptr %0 to i64
  %i.auf = and i64 %i.aue, 1
  %.not.i1051 = icmp eq i64 %i.auf, 0
  br i1 %.not.i1051, label %bb.abv, label %lean_dec.exit1052

bb.abv:                                           ; preds = %lean_dec_ref.exit1379
  %i.aug = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.auh = icmp sgt i32 %i.aug, 1
  br i1 %i.auh, label %bb.abw, label %bb.abx, !prof !15

bb.abw:                                           ; preds = %bb.abv
  %i.aui = add nsw i32 %i.aug, -1
  store i32 %i.aui, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit1052

bb.abx:                                           ; preds = %bb.abv
  %.not.i1364 = icmp eq i32 %i.aug, 0
  br i1 %.not.i1364, label %lean_dec.exit1052, label %bb.aby

bb.aby:                                           ; preds = %bb.abx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit1052

lean_dec.exit1052:                                ; preds = %lean_dec_ref.exit1379, %bb.abw, %bb.abx, %bb.aby, %bb.abq
  %.2843 = phi ptr [ %.sink2204, %bb.abq ], [ %i.arp, %bb.aby ], [ %i.arp, %bb.abx ], [ %i.arp, %bb.abw ], [ %i.arp, %lean_dec_ref.exit1379 ]
  %i.auj = tail call ptr @lean_st_ref_set(ptr noundef %2, ptr noundef %.2843) #6 ; 0 uses
  tail call void @lean_inc_heartbeat() #6
  %i.auk = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.aul = icmp eq ptr %i.auk, null
  br i1 %i.aul, label %bb.abz, label %lean_alloc_ctor.exit1825

bb.abz:                                           ; preds = %lean_dec.exit1052
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit1825:                         ; preds = %lean_dec.exit1052
  %i.aum = getelementptr inbounds nuw i8, ptr %i.auk, i64 4
  store i32 1, ptr %i.auk, align 4, !tbaa !14
  store i32 65552, ptr %i.aum, align 4
  %i.aun = getelementptr inbounds nuw i8, ptr %i.auk, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.aun, align 8, !tbaa !12
  br label %lean_dec_ref.exit1419.thread1841

bb.aca:                                           ; preds = %lean_dec_ref.exit1397, %bb.ls, %bb.lt, %bb.ll, %bb.lr
  %.8874.ph = phi ptr [ %i.qd, %bb.lr ], [ %i.qd, %bb.lt ], [ %.sink2185, %bb.ll ], [ %i.qd, %bb.ls ], [ %i.qd, %lean_dec_ref.exit1397 ]
  %i.auo = tail call ptr @lean_st_ref_set(ptr noundef %2, ptr noundef nonnull %.8874.ph) #6 ; 0 uses
  tail call void @lean_inc_heartbeat() #6
  %i.aup = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.auq = icmp eq ptr %i.aup, null
  br i1 %i.auq, label %bb.acb, label %lean_alloc_ctor.exit1826

bb.acb:                                           ; preds = %bb.aca
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit1826:                         ; preds = %bb.aca
  %i.aur = getelementptr inbounds nuw i8, ptr %i.aup, i64 4
  store i32 1, ptr %i.aup, align 4, !tbaa !14
  store i32 65552, ptr %i.aur, align 4
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aup, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.aus, align 8, !tbaa !12
  br label %lean_dec_ref.exit1419.thread1841

bb.acc:                                           ; preds = %bb.ir, %bb.iz, %bb.iy, %bb.ix, %lean_dec_ref.exit1405
  %.10910.ph = phi ptr [ %i.mn, %lean_dec_ref.exit1405 ], [ %i.mn, %bb.ix ], [ %i.mn, %bb.iy ], [ %i.mn, %bb.iz ], [ %.sink2184, %bb.ir ]
  %i.aut = tail call ptr @lean_st_ref_set(ptr noundef %2, ptr noundef nonnull %.10910.ph) #6 ; 0 uses
  tail call void @lean_inc_heartbeat() #6
  %i.auu = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.auv = icmp eq ptr %i.auu, null
  br i1 %i.auv, label %bb.acd, label %lean_alloc_ctor.exit1827

bb.acd:                                           ; preds = %bb.acc
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit1827:                         ; preds = %bb.acc
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auu, i64 4
  store i32 1, ptr %i.auu, align 4, !tbaa !14
  store i32 65552, ptr %i.auw, align 4
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auu, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.aux, align 8, !tbaa !12
  br label %lean_dec_ref.exit1419.thread1841

bb.ace:                                           ; preds = %l_Lean_Compiler_LCNF_instBEqOwnedness_beq.exit1621
  %.val = load i32, ptr %i.ux, align 8, !tbaa !14 ; 4 uses
  %i.auy = icmp eq i32 %.val, 1                   ; 2 uses
  br i1 %i.auy, label %bb.acf, label %bb.ack

bb.acf:                                           ; preds = %bb.ace
  %i.auz = load ptr, ptr %i.uy, align 8, !tbaa !12 ; 4 uses
  %i.ava = ptrtoint ptr %i.auz to i64
  %i.avb = and i64 %i.ava, 1
  %.not.i1045 = icmp eq i64 %i.avb, 0
  br i1 %.not.i1045, label %bb.acg, label %lean_dec.exit1046

bb.acg:                                           ; preds = %bb.acf
  %i.avc = load i32, ptr %i.auz, align 4, !tbaa !14 ; 3 uses
  %i.avd = icmp sgt i32 %i.avc, 1
  br i1 %i.avd, label %bb.ach, label %bb.aci, !prof !15

bb.ach:                                           ; preds = %bb.acg
  %i.ave = add nsw i32 %i.avc, -1
  store i32 %i.ave, ptr %i.auz, align 4, !tbaa !14
  br label %lean_dec.exit1046

bb.aci:                                           ; preds = %bb.acg
  %.not.i1370 = icmp eq i32 %i.avc, 0
  br i1 %.not.i1370, label %lean_dec.exit1046, label %bb.acj

bb.acj:                                           ; preds = %bb.aci
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.auz) #6
  br label %lean_dec.exit1046

bb.ack:                                           ; preds = %bb.ace
  %i.avf = icmp sgt i32 %.val, 1
  br i1 %i.avf, label %bb.acl, label %bb.acm, !prof !15

bb.acl:                                           ; preds = %bb.ack
  %i.avg = add nsw i32 %.val, -1
  store i32 %i.avg, ptr %i.ux, align 8, !tbaa !14
  br label %lean_dec.exit1046

bb.acm:                                           ; preds = %bb.ack
  %.not.i1372 = icmp eq i32 %.val, 0
  br i1 %.not.i1372, label %lean_dec.exit1046, label %bb.acn

bb.acn:                                           ; preds = %bb.acm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ux) #6
  br label %lean_dec.exit1046

lean_dec.exit1046:                                ; preds = %bb.acl, %bb.acm, %bb.acn, %bb.acf, %bb.ach, %bb.aci, %bb.acj
  %.0837 = phi ptr [ %i.ux, %bb.acf ], [ %i.ux, %bb.acj ], [ %i.ux, %bb.aci ], [ %i.ux, %bb.ach ], [ inttoptr (i64 1 to ptr), %bb.acn ], [ inttoptr (i64 1 to ptr), %bb.acm ], [ inttoptr (i64 1 to ptr), %bb.acl ]
  %i.avh = shl nuw nsw i8 %.0.i1614, 1
  %i.avi = or disjoint i8 %i.avh, 1
  %i.avj = zext nneg i8 %i.avi to i64
  %i.avk = inttoptr i64 %i.avj to ptr
  %i.avl = tail call ptr @l_Std_DHashMap_Internal_Raw_u2080_insert___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_analyzePropagatedBorrows_collectLetValue_spec__1___redArg(ptr noundef nonnull %i.uz, ptr noundef %0, ptr noundef nonnull %i.avk)
  br i1 %i.auy, label %bb.acp, label %bb.aco

bb.aco:                                           ; preds = %lean_dec.exit1046
  %i.avm = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 1)
  br label %bb.acp

bb.acp:                                           ; preds = %lean_dec.exit1046, %bb.aco
  %.sink2206 = phi ptr [ %i.avm, %bb.aco ], [ %.0837, %lean_dec.exit1046 ] ; 3 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %.sink2206, i64 8
  store ptr %i.avl, ptr %i.avn, align 8, !tbaa !12
  %i.avo = getelementptr inbounds nuw i8, ptr %.sink2206, i64 16
  store i8 1, ptr %i.avo, align 8, !tbaa !17
  br label %lean_dec.exit

bb.acq:                                           ; preds = %l_Lean_Compiler_LCNF_instBEqOwnedness_beq.exit1621
  %i.avp = load i32, ptr %i.uz, align 8, !tbaa !14 ; 3 uses
  %i.avq = icmp sgt i32 %i.avp, 1
  br i1 %i.avq, label %bb.acr, label %bb.acs, !prof !15

bb.acr:                                           ; preds = %bb.acq
  %i.avr = add nsw i32 %i.avp, -1
  store i32 %i.avr, ptr %i.uz, align 8, !tbaa !14
  br label %lean_dec_ref.exit1377

bb.acs:                                           ; preds = %bb.acq
  %.not.i1376 = icmp eq i32 %i.avp, 0
  br i1 %.not.i1376, label %lean_dec_ref.exit1377, label %bb.act

bb.act:                                           ; preds = %bb.acs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.uz) #6
  br label %lean_dec_ref.exit1377

lean_dec_ref.exit1377:                            ; preds = %bb.acr, %bb.acs, %bb.act
  %i.avs = ptrtoint ptr %0 to i64
  %i.avt = and i64 %i.avs, 1
  %.not.i1042 = icmp eq i64 %i.avt, 0
  br i1 %.not.i1042, label %bb.acu, label %lean_dec.exit

bb.acu:                                           ; preds = %lean_dec_ref.exit1377
  %i.avu = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.avv = icmp sgt i32 %i.avu, 1
  br i1 %i.avv, label %bb.acv, label %bb.acw, !prof !15

bb.acv:                                           ; preds = %bb.acu
  %i.avw = add nsw i32 %i.avu, -1
  store i32 %i.avw, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit

bb.acw:                                           ; preds = %bb.acu
  %.not.i1374 = icmp eq i32 %i.avu, 0
  br i1 %.not.i1374, label %lean_dec.exit, label %bb.acx

bb.acx:                                           ; preds = %bb.acw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec_ref.exit1377, %bb.acv, %bb.acw, %bb.acx, %bb.acp
  %.2916 = phi ptr [ %.sink2206, %bb.acp ], [ %i.ux, %bb.acx ], [ %i.ux, %bb.acw ], [ %i.ux, %bb.acv ], [ %i.ux, %lean_dec_ref.exit1377 ]
  %i.avx = tail call ptr @lean_st_ref_set(ptr noundef %2, ptr noundef %.2916) #6 ; 0 uses
  tail call void @lean_inc_heartbeat() #6
  %i.avy = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.avz = icmp eq ptr %i.avy, null
  br i1 %i.avz, label %bb.acy, label %lean_alloc_ctor.exit1828

bb.acy:                                           ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit1828:                         ; preds = %lean_dec.exit
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avy, i64 4
  store i32 1, ptr %i.avy, align 4, !tbaa !14
  store i32 65552, ptr %i.awa, align 4
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avy, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.awb, align 8, !tbaa !12
  br label %lean_dec_ref.exit1419.thread1841

lean_dec_ref.exit1419.thread1841:                 ; preds = %lean_dec.exit1134, %lean_dec.exit1156, %lean_alloc_ctor.exit1799, %bb.zw, %lean_alloc_ctor.exit1828, %lean_alloc_ctor.exit1827, %lean_alloc_ctor.exit1826, %lean_alloc_ctor.exit1825, %lean_obj_once.exit, %lean_alloc_ctor.exit1776, %lean_alloc_ctor.exit1753, %lean_alloc_ctor.exit1720, %lean_alloc_ctor.exit1687, %lean_alloc_ctor.exit1654, %lean_alloc_ctor.exit
  %.18 = phi ptr [ %i.aro, %lean_obj_once.exit ], [ %i.ff, %lean_alloc_ctor.exit ], [ %i.aqy, %lean_alloc_ctor.exit1799 ], [ %i.auk, %lean_alloc_ctor.exit1825 ], [ %i.aup, %lean_alloc_ctor.exit1826 ], [ %i.auu, %lean_alloc_ctor.exit1827 ], [ %i.avy, %lean_alloc_ctor.exit1828 ], [ %i.anr, %lean_alloc_ctor.exit1776 ], [ %i.aab, %lean_alloc_ctor.exit1654 ], [ %i.ado, %lean_alloc_ctor.exit1687 ], [ %i.ahi, %lean_alloc_ctor.exit1720 ], [ %i.akv, %lean_alloc_ctor.exit1753 ], [ %.0929, %bb.zw ], [ %i.pg, %lean_dec.exit1156 ], [ %i.sw, %lean_dec.exit1134 ]
  ret ptr %.18
}

declare zeroext i8 @l_Lean_Compiler_LCNF_CtorInfo_isScalar(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_analyzePropagatedBorrows_collectLetValue___closed__5() #3 {
bb.a:
  %i.a = tail call ptr @l_mkPanicMessageWithDecl(ptr noundef nonnull @l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_analyzePropagatedBorrows_getParams___closed__0_value, ptr noundef nonnull @l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_analyzePropagatedBorrows_collectLetValue___closed__4_value, ptr noundef nonnull inttoptr (i64 271 to ptr), ptr noundef nonnull inttoptr (i64 23 to ptr), ptr noundef nonnull @l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_analyzePropagatedBorrows_getParams___closed__2_value) #6
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_analyzePropagatedBorrows_collectLetValue___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_analyzePropagatedBorrows_collectLetValue(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %i.b = ptrtoint ptr %6 to i64
  %i.c = and i64 %i.b, 1
  %.not.i15 = icmp eq i64 %i.c, 0
  br i1 %.not.i15, label %bb.b, label %lean_dec.exit16

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %6, align 4, !tbaa !14     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %6, align 4, !tbaa !14
  br label %lean_dec.exit16

bb.d:                                             ; preds = %bb.b
  %.not.i17 = icmp eq i32 %i.d, 0
  br i1 %.not.i17, label %lean_dec.exit16, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #6
  br label %lean_dec.exit16

lean_dec.exit16:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %5, align 4, !tbaa !14     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %lean_dec.exit16
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %5, align 4, !tbaa !14
  br label %lean_dec_ref.exit25

bb.g:                                             ; preds = %lean_dec.exit16
  %.not.i24 = icmp eq i32 %i.g, 0
  br i1 %.not.i24, label %lean_dec_ref.exit25, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #6
  br label %lean_dec_ref.exit25

lean_dec_ref.exit25:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %4 to i64
  %i.k = and i64 %i.j, 1
  %.not.i13 = icmp eq i64 %i.k, 0
  br i1 %.not.i13, label %bb.i, label %lean_dec.exit14

bb.i:                                             ; preds = %lean_dec_ref.exit25
  %i.l = load i32, ptr %4, align 4, !tbaa !14     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %bb.i
end_hunk_1
begin_hunk_2_@l_Lean_Compiler_LCNF_Decl_analyzePropagatedBorrows:bb.a
  %i.ax = icmp sgt i32 %.val.i.i80, 0
  br i1 %i.ax, label %bb.aj, label %bb.ak, !prof !15

bb.aj:                                            ; preds = %bb.ai
  %i.ay = add nuw i32 %.val.i.i80, 1
  store i32 %i.ay, ptr %i.at, align 4, !tbaa !14
  br label %lean_inc.exit

bb.ak:                                            ; preds = %bb.ai
  %.not.i.i81 = icmp eq i32 %.val.i.i80, 0
  br i1 %.not.i.i81, label %lean_inc.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.az = atomicrmw sub ptr %i.at, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ah
  br i1 %.not.i78, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %lean_inc.exit
  %i.ba = load i32, ptr %i.f, align 8, !tbaa !14  ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.an, label %bb.ao, !prof !15

bb.an:                                            ; preds = %bb.am
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %i.f, align 8, !tbaa !14
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %.not.i75 = icmp eq i32 %i.ba, 0
  br i1 %.not.i75, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.f) #6
  br label %bb.aq

bb.aq:                                            ; preds = %lean_inc.exit, %bb.an, %bb.ao, %bb.ap
  tail call void @lean_inc_heartbeat() #6
  %i.bd = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.ar, label %lean_dec.exit.sink.split.sink.split

bb.ar:                                            ; preds = %bb.aq
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_dec.exit.sink.split.sink.split:              ; preds = %bb.aq, %bb.aa
  %.sink100 = phi ptr [ %i.al, %bb.aa ], [ %i.bd, %bb.aq ] ; 3 uses
  %.sink97 = phi i32 [ 65552, %bb.aa ], [ 16842768, %bb.aq ]
  %.sink.ph = phi ptr [ %i.ae, %bb.aa ], [ %i.at, %bb.aq ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink100, i64 4
  store i32 1, ptr %.sink100, align 4, !tbaa !14
  store i32 %.sink97, ptr %i.bf, align 4
  br label %lean_dec.exit.sink.split

lean_dec.exit.sink.split:                         ; preds = %lean_dec.exit.sink.split.sink.split, %lean_dec.exit59
  %.sink96 = phi ptr [ %.054, %lean_dec.exit59 ], [ %.sink100, %lean_dec.exit.sink.split.sink.split ] ; 2 uses
  %.sink = phi ptr [ %i.ae, %lean_dec.exit59 ], [ %.sink.ph, %lean_dec.exit.sink.split.sink.split ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink96, i64 8
  store ptr %.sink, ptr %i.bg, align 8, !tbaa !12
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec.exit.sink.split, %lean_dec.exit57
  %.3 = phi ptr [ %i.f, %lean_dec.exit57 ], [ %.sink96, %lean_dec.exit.sink.split ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal nonnull ptr @_init_l_Lean_Compiler_LCNF_instInhabitedState_default___closed__2() #3 {
bb.a:
  %i.a = load atomic i32, ptr @l_Lean_Compiler_LCNF_instInhabitedState_default___closed__1_once seq_cst, align 4, !tbaa !19
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Lean_Compiler_LCNF_instInhabitedState_default___closed__1, align 8, !tbaa !12
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Compiler_LCNF_instInhabitedState_default___closed__1, ptr noundef nonnull @l_Lean_Compiler_LCNF_instInhabitedState_default___closed__1_once, ptr noundef nonnull @_init_l_Lean_Compiler_LCNF_instInhabitedState_default___closed__1) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  tail call void @lean_inc_heartbeat() #6
  %i.e = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %lean_alloc_ctor.exit

bb.d:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.h, align 8, !tbaa !10
  store i32 1, ptr %i.e, align 8, !tbaa !14
  store i32 65560, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.0.i, ptr %i.i, align 8, !tbaa !12
  ret ptr %i.e
}

declare ptr @lean_st_mk_ref(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Compiler_LCNF_Decl_analyzePropagatedBorrows___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @l_Lean_Compiler_LCNF_Decl_analyzePropagatedBorrows(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = ptrtoint ptr %4 to i64
  %i.c = and i64 %i.b, 1
  %.not.i10 = icmp eq i64 %i.c, 0
  br i1 %.not.i10, label %bb.b, label %lean_dec.exit11

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !14     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %4, align 4, !tbaa !14
  br label %lean_dec.exit11

bb.d:                                             ; preds = %bb.b
  %.not.i12 = icmp eq i32 %i.d, 0
  br i1 %.not.i12, label %lean_dec.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #6
  br label %lean_dec.exit11

lean_dec.exit11:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !14     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %lean_dec.exit11
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit18

bb.g:                                             ; preds = %lean_dec.exit11
  %.not.i17 = icmp eq i32 %i.g, 0
  br i1 %.not.i17, label %lean_dec_ref.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit18

lean_dec_ref.exit18:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %2 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit18
  %i.l = load i32, ptr %2, align 4, !tbaa !14     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %2, align 4, !tbaa !14
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i13 = icmp eq i32 %i.l, 0
  br i1 %.not.i13, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit18
  %i.o = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !15

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit16

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i15 = icmp eq i32 %i.o, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit16

lean_dec_ref.exit16:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_toBorrow(i8 noundef zeroext %0) local_unnamed_addr #1 {
  switch i8 %0, label %3 [
    i8 0, label %2
    i8 1, label %bb.a
  ]

2:                                                ; preds = %1
  br label %bb.a

3:                                                ; preds = %1
  br label %bb.a

bb.a:                                             ; preds = %1, %3, %2
  %.0 = phi ptr [ @l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_toBorrow___closed__1_value, %3 ], [ inttoptr (i64 1 to ptr), %2 ], [ @l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_toBorrow___closed__0_value, %1 ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_toBorrow___boxed(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %1
    i8 1, label %l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_toBorrow.exit
  ]

1:                                                ; preds = %bb.a
  br label %l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_toBorrow.exit

2:                                                ; preds = %bb.a
  br label %l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_toBorrow.exit

l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_toBorrow.exit: ; preds = %bb.a, %1, %2
  %.0.i = phi ptr [ @l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_toBorrow___closed__1_value, %2 ], [ inttoptr (i64 1 to ptr), %1 ], [ @l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_toBorrow___closed__0_value, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define zeroext i8 @l_panic___at___00Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0_spec__1(ptr noundef %0) local_unnamed_addr #3 {
lean_dec.exit7:
  %i.a = tail call ptr @lean_panic_fn_borrowed(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %0) #6 ; 4 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.a, label %lean_dec.exit

bb.a:                                             ; preds = %lean_dec.exit7
  %i.d = load i32, ptr %i.a, align 4, !tbaa !14   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !14
  br label %lean_dec.exit

bb.c:                                             ; preds = %bb.a
  %.not.i9 = icmp eq i32 %i.d, 0
  br i1 %.not.i9, label %lean_dec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.c, %bb.b, %lean_dec.exit7
  %i.g = lshr i64 %i.b, 1
  %i.h = trunc i64 %i.g to i8
  ret i8 %i.h
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_panic___at___00Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0_spec__1___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @lean_panic_fn_borrowed(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %0) #6 ; 4 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %l_panic___at___00Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0_spec__1.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !14   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !14
  br label %l_panic___at___00Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0_spec__1.exit

bb.d:                                             ; preds = %bb.b
  %.not.i9.i = icmp eq i32 %i.d, 0
  br i1 %.not.i9.i, label %l_panic___at___00Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0_spec__1.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #6
  br label %l_panic___at___00Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0_spec__1.exit

l_panic___at___00Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0_spec__1.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.g = and i64 %i.b, 510
  %i.h = or disjoint i64 %i.g, 1
  %i.i = inttoptr i64 %i.h to ptr
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define zeroext i8 @l_Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %.014 = phi ptr [ %1, %bb.a ], [ %i.w, %bb.l ]  ; 5 uses
  %i.a = ptrtoint ptr %.014 to i64                ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.014, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i, 0
  br i1 %i.g, label %bb.e, label %bb.l

bb.e:                                             ; preds = %lean_obj_tag.exit
  %i.h = load atomic i32, ptr @l_Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0___closed__3_once seq_cst, align 4, !tbaa !19
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr @l_Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0___closed__3, align 8, !tbaa !12
  br label %lean_obj_once.exit

bb.g:                                             ; preds = %bb.e
  %i.k = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0___closed__3, ptr noundef nonnull @l_Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0___closed__3_once, ptr noundef nonnull @_init_l_Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.f, %bb.g
  %.0.i16 = phi ptr [ %i.j, %bb.f ], [ %i.k, %bb.g ]
  %i.l = tail call ptr @lean_panic_fn_borrowed(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %.0.i16) #6 ; 4 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 5 uses
  %i.n = and i64 %i.m, 1
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %bb.h, label %l_panic___at___00Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0_spec__1.exit

bb.h:                                             ; preds = %lean_obj_once.exit
  %i.o = load i32, ptr %i.l, align 4, !tbaa !14   ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.i, label %bb.j, !prof !15

bb.i:                                             ; preds = %bb.h
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %i.l, align 4, !tbaa !14
  br label %l_panic___at___00Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0_spec__1.exit

bb.j:                                             ; preds = %bb.h
  %.not.i9.i = icmp eq i32 %i.o, 0
  br i1 %.not.i9.i, label %l_panic___at___00Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0_spec__1.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.l) #6
  br label %l_panic___at___00Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0_spec__1.exit

bb.l:                                             ; preds = %lean_obj_tag.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %.014, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.x = tail call zeroext i8 @l_Lean_instBEqFVarId_beq(ptr noundef %i.s, ptr noundef %0) #6
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.l
  %i.z = ptrtoint ptr %i.u to i64
  br label %l_panic___at___00Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0_spec__1.exit

l_panic___at___00Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0_spec__1.exit: ; preds = %bb.k, %bb.j, %bb.i, %lean_obj_once.exit, %.thread
  %.2.in.in = phi i64 [ %i.z, %.thread ], [ %i.m, %lean_obj_once.exit ], [ %i.m, %bb.i ], [ %i.m, %bb.j ], [ %i.m, %bb.k ]
  %.2.in = lshr i64 %.2.in.in, 1
  %.2 = trunc i64 %.2.in to i8
  ret i8 %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0___closed__3() #3 {
bb.a:
  %i.a = tail call ptr @l_mkPanicMessageWithDecl(ptr noundef nonnull @l_Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0___closed__0_value, ptr noundef nonnull @l_Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0___closed__1_value, ptr noundef nonnull inttoptr (i64 327 to ptr), ptr noundef nonnull inttoptr (i64 23 to ptr), ptr noundef nonnull @l_Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0___closed__2_value) #6
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call zeroext i8 @l_Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0(ptr noundef %0, ptr noundef %1)
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.b, 1
  %.not.i5 = icmp eq i64 %i.c, 0
  br i1 %.not.i5, label %bb.b, label %lean_dec.exit6

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit6

bb.d:                                             ; preds = %bb.b
  %.not.i7 = icmp eq i32 %i.d, 0
  br i1 %.not.i7, label %lean_dec.exit6, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit6

lean_dec.exit6:                                   ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = ptrtoint ptr %0 to i64
  %i.h = and i64 %i.g, 1
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.f, label %lean_dec.exit

bb.f:                                             ; preds = %lean_dec.exit6
  %i.i = load i32, ptr %0, align 4, !tbaa !14     ; 3 uses
end_hunk_2
begin_hunk_3_@l_Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0___boxed:bb.a
  %i.n = or disjoint i64 %i.m, 1
  %i.o = inttoptr i64 %i.n to ptr
  ret ptr %i.o
}

; Function Attrs: nounwind uwtable
define zeroext i8 @l_Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val = load i64, ptr %i.c, align 8, !tbaa !10
  %i.d = and i64 %.val, 9223372036854775807
  %i.e = tail call i64 @l_Lean_instHashableFVarId_hash(ptr noundef %1) #6 ; 2 uses
  %i.f = lshr i64 %i.e, 32
  %i.g = xor i64 %i.f, %i.e                       ; 2 uses
  %i.h = lshr i64 %i.g, 16
  %i.i = xor i64 %i.h, %i.g
  %i.j = add nsw i64 %i.d, -1
  %i.k = and i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.o = tail call zeroext i8 @l_Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0(ptr noundef %1, ptr noundef %i.n)
  ret i8 %i.o
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val.i = load i64, ptr %i.c, align 8, !tbaa !10
  %i.d = and i64 %.val.i, 9223372036854775807
  %i.e = tail call i64 @l_Lean_instHashableFVarId_hash(ptr noundef %1) #6 ; 2 uses
  %i.f = lshr i64 %i.e, 32
  %i.g = xor i64 %i.f, %i.e                       ; 2 uses
  %i.h = lshr i64 %i.g, 16
  %i.i = xor i64 %i.h, %i.g
  %i.j = add nsw i64 %i.d, -1
  %i.k = and i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.o = tail call zeroext i8 @l_Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0(ptr noundef %1, ptr noundef %i.n)
  %i.p = ptrtoint ptr %1 to i64
  %i.q = and i64 %i.p, 1
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i5 = icmp eq i32 %i.r, 0
  br i1 %.not.i5, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.u = load i32, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %lean_dec.exit
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %0, align 8, !tbaa !14
  br label %lean_dec_ref.exit7

bb.g:                                             ; preds = %lean_dec.exit
  %.not.i6 = icmp eq i32 %i.u, 0
  br i1 %.not.i6, label %lean_dec_ref.exit7, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit7

lean_dec_ref.exit7:                               ; preds = %bb.f, %bb.g, %bb.h
  %i.x = zext i8 %i.o to i64
  %i.y = shl nuw nsw i64 %i.x, 1
  %i.z = or disjoint i64 %i.y, 1
  %i.aa = inttoptr i64 %i.z to ptr
  ret ptr %i.aa
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__1___redArg(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %.not136 = icmp ult i64 %2, %1
  br i1 %.not136, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %lean_array_uset.exit119, %bb.a
  %.060.lcssa = phi ptr [ %3, %bb.a ], [ %.0.i.i115, %lean_array_uset.exit119 ]
  tail call void @lean_inc_heartbeat() #6
  %i.b = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %lean_dec_ref_known.exit108.thread125.sink.split

bb.b:                                             ; preds = %._crit_edge
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

bb.c:                                             ; preds = %.lr.ph, %lean_array_uset.exit119
  %.057138 = phi i64 [ %2, %.lr.ph ], [ %i.cz, %lean_array_uset.exit119 ] ; 4 uses
  %.060137 = phi ptr [ %3, %.lr.ph ], [ %.0.i.i115, %lean_array_uset.exit119 ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.060137, i64 24
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.057138
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 7 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, 1
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %bb.d, label %lean_array_uget.exit

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i = load i32, ptr %i.f, align 4, !tbaa !14 ; 3 uses
  %i.i = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.i, label %bb.e, label %bb.f, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw i32 %.val.i.i.i, 1
  store i32 %i.j, ptr %i.f, align 4, !tbaa !14
  br label %lean_array_uget.exit

bb.f:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_array_uget.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.f, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_array_uget.exit

lean_array_uget.exit:                             ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12   ; 2 uses
  %.val.i.i = load i32, ptr %.060137, align 4, !tbaa !14
  %i.n = icmp eq i32 %.val.i.i, 1
  br i1 %i.n, label %lean_ensure_exclusive_array.exit.i, label %bb.h

bb.h:                                             ; preds = %lean_array_uget.exit
  %i.o = tail call ptr @lean_copy_expand_array_nonlinear(ptr noundef nonnull %.060137, i1 noundef zeroext false) #6
  br label %lean_ensure_exclusive_array.exit.i

lean_ensure_exclusive_array.exit.i:               ; preds = %bb.h, %lean_array_uget.exit
  %.0.i.i = phi ptr [ %i.o, %bb.h ], [ %.060137, %lean_array_uget.exit ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.057138 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !12   ; 4 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = and i64 %i.s, 1
  %.not.i.i84 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i84, label %bb.i, label %lean_array_uset.exit

bb.i:                                             ; preds = %lean_ensure_exclusive_array.exit.i
  %i.u = load i32, ptr %i.r, align 4, !tbaa !14   ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %i.r, align 4, !tbaa !14
  br label %lean_array_uset.exit

bb.k:                                             ; preds = %bb.i
  %.not.i6.i = icmp eq i32 %i.u, 0
  br i1 %.not.i6.i, label %lean_array_uset.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.r) #6
  br label %lean_array_uset.exit

lean_array_uset.exit:                             ; preds = %lean_ensure_exclusive_array.exit.i, %bb.j, %bb.k, %bb.l
  store ptr inttoptr (i64 1 to ptr), ptr %i.q, align 8, !tbaa !12
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val.i = load i64, ptr %i.y, align 8, !tbaa !10
  %i.z = and i64 %.val.i, 9223372036854775807
  %i.aa = tail call i64 @l_Lean_instHashableFVarId_hash(ptr noundef %i.m) #6 ; 2 uses
  %i.ab = lshr i64 %i.aa, 32
  %i.ac = xor i64 %i.ab, %i.aa                    ; 2 uses
  %i.ad = lshr i64 %i.ac, 16
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = add nsw i64 %i.z, -1
  %i.ag = and i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !12
  %i.ak = tail call zeroext i8 @l_Std_DHashMap_Internal_AssocList_get_x21___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x21___at___00__private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Decl_applyOwnedness_updateParams_spec__0_spec__0(ptr noundef %i.m, ptr noundef %i.aj)
  switch i8 %i.ak, label %6 [
    i8 0, label %5
    i8 1, label %l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_toBorrow.exit
  ]

5:                                                ; preds = %lean_array_uset.exit
  br label %l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_toBorrow.exit

6:                                                ; preds = %lean_array_uset.exit
  br label %l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_toBorrow.exit

l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_toBorrow.exit: ; preds = %lean_array_uset.exit, %5, %6
  %.0.i = phi ptr [ @l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_toBorrow___closed__1_value, %6 ], [ inttoptr (i64 1 to ptr), %5 ], [ @l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_toBorrow___closed__0_value, %lean_array_uset.exit ] ; 7 uses
  %7 = ptrtoint ptr %.0.i to i64                  ; 2 uses
  %8 = and i64 %7, 1
  %.not.i85 = icmp eq i64 %8, 0
  br i1 %.not.i85, label %bb.n, label %bb.m

bb.m:                                             ; preds = %l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_toBorrow.exit
  %i.al = lshr i64 %7, 1
  %i.am = trunc i64 %i.al to i32
  br label %lean_obj_tag.exit

bb.n:                                             ; preds = %l___private_Lean_Compiler_LCNF_PropagateBorrow_0__Lean_Compiler_LCNF_Ownedness_toBorrow.exit
  %i.an = getelementptr i8, ptr %.0.i, i64 4
  %.val.i87 = load i32, ptr %i.an, align 4
  %i.ao = lshr i32 %.val.i87, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.m, %bb.n
  %.0.i86 = phi i32 [ %i.am, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i86, 0
  br i1 %i.ap, label %lean_dec_ref_known.exit108.thread, label %bb.o

bb.o:                                             ; preds = %lean_obj_tag.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !12 ; 7 uses
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.at = and i64 %i.as, 1
  %.not.i74 = icmp eq i64 %i.at, 0                ; 2 uses
  br i1 %.not.i74, label %bb.p, label %lean_inc.exit75

bb.p:                                             ; preds = %bb.o
  %.val.i.i88 = load i32, ptr %i.ar, align 4, !tbaa !14 ; 3 uses
  %i.au = icmp sgt i32 %.val.i.i88, 0
  br i1 %i.au, label %bb.q, label %bb.r, !prof !15

bb.q:                                             ; preds = %bb.p
  %i.av = add nuw i32 %.val.i.i88, 1
  store i32 %i.av, ptr %i.ar, align 4, !tbaa !14
  br label %lean_inc.exit75

bb.r:                                             ; preds = %bb.p
  %.not.i.i89 = icmp eq i32 %.val.i.i88, 0
  br i1 %.not.i.i89, label %lean_inc.exit75, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = atomicrmw sub ptr %i.ar, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit75

lean_inc.exit75:                                  ; preds = %bb.s, %bb.r, %bb.q, %bb.o
  %.val.i90 = load i32, ptr %.0.i, align 8, !tbaa !14 ; 4 uses
  %i.ax = icmp eq i32 %.val.i90, 1
  br i1 %i.ax, label %.preheader.i.preheader, label %bb.x

.preheader.i.preheader:                           ; preds = %lean_inc.exit75
  %i.ay = load ptr, ptr %i.aq, align 8, !tbaa !12 ; 4 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = and i64 %i.az, 1
  %.not.i.i91 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i91, label %bb.t, label %lean_dec.exit.i

bb.t:                                             ; preds = %.preheader.i.preheader
  %i.bb = load i32, ptr %i.ay, align 4, !tbaa !14 ; 3 uses
  %i.bc = icmp sgt i32 %i.bb, 1
  br i1 %i.bc, label %bb.u, label %bb.v, !prof !15

bb.u:                                             ; preds = %bb.t
  %i.bd = add nsw i32 %i.bb, -1
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.v:                                             ; preds = %bb.t
  %.not.i7.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ay) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.w, %bb.v, %bb.u, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %.0.i) #6
  br label %lean_dec_ref_known.exit

bb.x:                                             ; preds = %lean_inc.exit75
  %i.be = icmp sgt i32 %.val.i90, 1
  br i1 %i.be, label %bb.y, label %bb.z, !prof !15

bb.y:                                             ; preds = %bb.x
  %i.bf = add nsw i32 %.val.i90, -1
  store i32 %i.bf, ptr %.0.i, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.z:                                             ; preds = %bb.x
  %.not.i8.i = icmp eq i32 %.val.i90, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.y, %bb.z, %bb.aa
  %i.bg = lshr i64 %i.as, 1
  %i.bh = trunc i64 %i.bg to i8
  br i1 %.not.i74, label %bb.ab, label %lean_dec.exit78

bb.ab:                                            ; preds = %lean_dec_ref_known.exit
  %i.bi = load i32, ptr %i.ar, align 4, !tbaa !14 ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 1
  br i1 %i.bj, label %bb.ac, label %bb.ad, !prof !15

bb.ac:                                            ; preds = %bb.ab
  %i.bk = add nsw i32 %i.bi, -1
  store i32 %i.bk, ptr %i.ar, align 4, !tbaa !14
  br label %lean_dec.exit78

bb.ad:                                            ; preds = %bb.ab
  %.not.i79 = icmp eq i32 %i.bi, 0
  br i1 %.not.i79, label %lean_dec.exit78, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ar) #6
  br label %lean_dec.exit78

lean_dec.exit78:                                  ; preds = %bb.ae, %bb.ad, %bb.ac, %lean_dec_ref_known.exit
  %i.bl = tail call ptr @l___private_Lean_Compiler_LCNF_CompilerM_0__Lean_Compiler_LCNF_updateParamBorrowImp___redArg(i8 noundef zeroext 1, ptr noundef nonnull %i.f, i8 noundef zeroext %i.bh, ptr noundef %4) #6 ; 13 uses
  %i.bm = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bn = and i64 %i.bm, 1
  %.not.i92 = icmp eq i64 %i.bn, 0                ; 2 uses
  br i1 %.not.i92, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %lean_dec.exit78
  %i.bo = lshr i64 %i.bm, 1
  %i.bp = trunc i64 %i.bo to i32
  br label %lean_obj_tag.exit95

bb.ag:                                            ; preds = %lean_dec.exit78
  %i.bq = getelementptr i8, ptr %i.bl, i64 4
  %.val.i94 = load i32, ptr %i.bq, align 4
  %i.br = lshr i32 %.val.i94, 24
  br label %lean_obj_tag.exit95

lean_obj_tag.exit95:                              ; preds = %bb.af, %bb.ag
  %.0.i93 = phi i32 [ %i.bp, %bb.af ], [ %i.br, %bb.ag ]
  %i.bs = icmp eq i32 %.0.i93, 0
  br i1 %i.bs, label %bb.ah, label %bb.au

bb.ah:                                            ; preds = %lean_obj_tag.exit95
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !12 ; 8 uses
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = and i64 %i.bv, 1
  %.not.i72 = icmp eq i64 %i.bw, 0
  br i1 %.not.i72, label %bb.ai, label %lean_inc.exit73

bb.ai:                                            ; preds = %bb.ah
  %.val.i.i96 = load i32, ptr %i.bu, align 4, !tbaa !14 ; 3 uses
  %i.bx = icmp sgt i32 %.val.i.i96, 0
  br i1 %i.bx, label %bb.aj, label %bb.ak, !prof !15

bb.aj:                                            ; preds = %bb.ai
  %i.by = add nuw i32 %.val.i.i96, 1
  store i32 %i.by, ptr %i.bu, align 4, !tbaa !14
  br label %lean_inc.exit73

bb.ak:                                            ; preds = %bb.ai
  %.not.i.i97 = icmp eq i32 %.val.i.i96, 0
  br i1 %.not.i.i97, label %lean_inc.exit73, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bz = atomicrmw sub ptr %i.bu, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit73

lean_inc.exit73:                                  ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ah
  %.val.i99 = load i32, ptr %i.bl, align 8, !tbaa !14 ; 4 uses
  %i.ca = icmp eq i32 %.val.i99, 1
  br i1 %i.ca, label %.preheader.i101.preheader, label %bb.aq

.preheader.i101.preheader:                        ; preds = %lean_inc.exit73
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !12 ; 4 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = and i64 %i.cc, 1
  %.not.i.i103 = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i103, label %bb.am, label %lean_dec.exit.i104

bb.am:                                            ; preds = %.preheader.i101.preheader
  %i.ce = load i32, ptr %i.cb, align 4, !tbaa !14 ; 3 uses
  %i.cf = icmp sgt i32 %i.ce, 1
  br i1 %i.cf, label %bb.an, label %bb.ao, !prof !15

bb.an:                                            ; preds = %bb.am
  %i.cg = add nsw i32 %i.ce, -1
  store i32 %i.cg, ptr %i.cb, align 4, !tbaa !14
  br label %lean_dec.exit.i104

bb.ao:                                            ; preds = %bb.am
  %.not.i7.i107 = icmp eq i32 %i.ce, 0
  br i1 %.not.i7.i107, label %lean_dec.exit.i104, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cb) #6
  br label %lean_dec.exit.i104

lean_dec.exit.i104:                               ; preds = %bb.ap, %bb.ao, %bb.an, %.preheader.i101.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.bl) #6
  br label %lean_dec_ref_known.exit108.thread

bb.aq:                                            ; preds = %lean_inc.exit73
  %i.ch = icmp sgt i32 %.val.i99, 1
  br i1 %i.ch, label %bb.ar, label %bb.as, !prof !15

bb.ar:                                            ; preds = %bb.aq
  %i.ci = add nsw i32 %.val.i99, -1
  store i32 %i.ci, ptr %i.bl, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit108.thread

bb.as:                                            ; preds = %bb.aq
  %.not.i8.i100 = icmp eq i32 %.val.i99, 0
  br i1 %.not.i8.i100, label %lean_dec_ref_known.exit108.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bl) #6
  br label %lean_dec_ref_known.exit108.thread

bb.au:                                            ; preds = %lean_obj_tag.exit95
  %i.cj = load i32, ptr %.0.i.i, align 4, !tbaa !14 ; 3 uses
  %i.ck = icmp sgt i32 %i.cj, 1
  br i1 %i.ck, label %bb.av, label %bb.aw, !prof !15

bb.av:                                            ; preds = %bb.au
  %i.cl = add nsw i32 %i.cj, -1
  store i32 %i.cl, ptr %.0.i.i, align 4, !tbaa !14
  br label %lean_dec_ref.exit83

bb.aw:                                            ; preds = %bb.au
  %.not.i82 = icmp eq i32 %i.cj, 0
  br i1 %.not.i82, label %lean_dec_ref.exit83, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i.i) #6
  br label %lean_dec_ref.exit83

lean_dec_ref.exit83:                              ; preds = %bb.av, %bb.aw, %bb.ax
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !12 ; 5 uses
  %.val = load i32, ptr %i.bl, align 8, !tbaa !14
  %i.co = icmp eq i32 %.val, 1
  br i1 %i.co, label %lean_dec_ref_known.exit108.thread125, label %bb.ay

bb.ay:                                            ; preds = %lean_dec_ref.exit83
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = and i64 %i.cp, 1
  %.not.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i, label %bb.az, label %lean_inc.exit

bb.az:                                            ; preds = %bb.ay
  %.val.i.i109 = load i32, ptr %i.cn, align 4, !tbaa !14 ; 3 uses
  %i.cr = icmp sgt i32 %.val.i.i109, 0
  br i1 %i.cr, label %bb.ba, label %bb.bb, !prof !15

bb.ba:                                            ; preds = %bb.az
  %i.cs = add nuw i32 %.val.i.i109, 1
  store i32 %i.cs, ptr %i.cn, align 4, !tbaa !14
  br label %lean_inc.exit

bb.bb:                                            ; preds = %bb.az
  %.not.i.i110 = icmp eq i32 %.val.i.i109, 0
  br i1 %.not.i.i110, label %lean_inc.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ct = atomicrmw sub ptr %i.cn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ay
  br i1 %.not.i92, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %lean_inc.exit
  %i.cu = load i32, ptr %i.bl, align 8, !tbaa !14 ; 3 uses
  %i.cv = icmp sgt i32 %i.cu, 1
  br i1 %i.cv, label %bb.be, label %bb.bf, !prof !15

bb.be:                                            ; preds = %bb.bd
  %i.cw = add nsw i32 %i.cu, -1
  store i32 %i.cw, ptr %i.bl, align 8, !tbaa !14
  br label %bb.bh

bb.bf:                                            ; preds = %bb.bd
  %.not.i80 = icmp eq i32 %i.cu, 0
  br i1 %.not.i80, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bl) #6
  br label %bb.bh

bb.bh:                                            ; preds = %lean_inc.exit, %bb.be, %bb.bf, %bb.bg
  tail call void @lean_inc_heartbeat() #6
  %i.cx = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.bi, label %lean_dec_ref_known.exit108.thread125.sink.split
end_hunk_3
