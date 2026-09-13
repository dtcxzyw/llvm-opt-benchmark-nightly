Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/mesh_to_cgal_triangle_list?download=true
inline.NumInlined: 4460
inline.NumDeleted: 1589
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5boost14multiprecision8backends22divide_unsigned_helperINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvPT_RKT0_RKT1_RS8_:bb.a
_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit405: ; preds = %bb.cr, %bb.cq
  %.pre-phi543 = phi i1 [ %i.rx, %bb.cr ], [ %.pre542, %bb.cq ] ; 2 uses
  %i.sn = phi ptr [ %.pre526, %bb.cr ], [ %i.sc, %bb.cq ]
  %i.so = load i64, ptr %i.ff, align 16, !tbaa !146 ; 6 uses
  %i.sp = add i64 %i.ru, %i.so
  %i.sq = icmp ne i64 %spec.select.i399, %i.sp    ; 3 uses
  %i.sr = select i1 %.pre-phi543, ptr %7, ptr %i.sn ; 3 uses
  %.not502 = icmp eq i64 %.2254, %i.fh
  br i1 %.not502, label %.preheader470, label %.lr.ph487.preheader

.lr.ph487.preheader:                              ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit405
  %i.ss = shl nuw i64 %i.nx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.sr, i8 0, i64 %i.ss, i1 false), !tbaa !148
  br label %.preheader470

.preheader470:                                    ; preds = %.lr.ph487.preheader, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit405
  %invariant.gep = getelementptr [8 x i8], ptr %i.sr, i64 %i.nx ; 3 uses
  %.not503 = icmp eq i64 %i.so, 0
  br i1 %.not503, label %._crit_edge491.thread, label %.lr.ph490

.lr.ph490:                                        ; preds = %.preheader470
  %i.st = zext i64 %.1243 to i128                 ; 3 uses
  %xtraiter646 = and i64 %i.so, 1
  %i.su = icmp eq i64 %i.so, 1
  br i1 %i.su, label %.epil.preheader, label %.lr.ph490.new

.lr.ph490.new:                                    ; preds = %.lr.ph490
  %unroll_iter651 = and i64 %i.so, -2
  br label %bb.ct

bb.cs:                                            ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i401
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

._crit_edge491.unr-lcssa:                         ; preds = %bb.ct
  %lcmp.mod648.not = icmp eq i64 %xtraiter646, 0
  br i1 %lcmp.mod648.not, label %._crit_edge491, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge491.unr-lcssa, %.lr.ph490
  %.0236489.epil.init = phi i64 [ 0, %.lr.ph490 ], [ %i.tt, %._crit_edge491.unr-lcssa ] ; 2 uses
  %.0238488.epil.init = phi i128 [ 0, %.lr.ph490 ], [ %i.ts, %._crit_edge491.unr-lcssa ]
  %lcmp.mod650 = trunc i64 %i.so to i1
  call void @llvm.assume(i1 %lcmp.mod650)
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.0236489.epil.init
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !148
  %i.sy = zext i64 %i.sx to i128
  %i.sz = mul nuw i128 %i.sy, %i.st
  %i.ta = add nuw i128 %i.sz, %.0238488.epil.init ; 2 uses
  %i.tb = trunc i128 %i.ta to i64
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0236489.epil.init
  store i64 %i.tb, ptr %gep.epil, align 8, !tbaa !148
  %i.tc = lshr i128 %i.ta, 64
  br label %._crit_edge491

._crit_edge491:                                   ; preds = %._crit_edge491.unr-lcssa, %.epil.preheader
  %.lcssa = phi i128 [ %i.ts, %._crit_edge491.unr-lcssa ], [ %i.tc, %.epil.preheader ] ; 4 uses
  %i.td = icmp eq i128 %.lcssa, 0
  %or.cond3 = or i1 %i.sq, %i.td
  br i1 %or.cond3, label %._crit_edge491.thread, label %bb.cu

bb.ct:                                            ; preds = %bb.ct, %.lr.ph490.new
  %.0236489 = phi i64 [ 0, %.lr.ph490.new ], [ %i.tt, %bb.ct ] ; 4 uses
  %.0238488 = phi i128 [ 0, %.lr.ph490.new ], [ %i.ts, %bb.ct ]
  %niter652 = phi i64 [ 0, %.lr.ph490.new ], [ %niter652.next.1, %bb.ct ]
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.0236489
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !148
  %i.tg = zext i64 %i.tf to i128
  %i.th = mul nuw i128 %i.tg, %i.st
  %i.ti = add nuw i128 %i.th, %.0238488           ; 2 uses
  %i.tj = trunc i128 %i.ti to i64
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0236489
  store i64 %i.tj, ptr %gep, align 8, !tbaa !148
  %i.tk = lshr i128 %i.ti, 64
  %i.tl = or disjoint i64 %.0236489, 1            ; 2 uses
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.tl
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !148
  %i.to = zext i64 %i.tn to i128
  %i.tp = mul nuw i128 %i.to, %i.st
  %i.tq = add nuw i128 %i.tp, %i.tk               ; 2 uses
  %i.tr = trunc i128 %i.tq to i64
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.tl
  store i64 %i.tr, ptr %gep.1, align 8, !tbaa !148
  %i.ts = lshr i128 %i.tq, 64                     ; 3 uses
  %i.tt = add nuw i64 %.0236489, 2                ; 2 uses
  %niter652.next.1 = add nuw i64 %niter652, 2     ; 2 uses
  %niter652.ncmp.1 = icmp eq i64 %niter652.next.1, %unroll_iter651
  br i1 %niter652.ncmp.1, label %._crit_edge491.unr-lcssa, label %bb.ct, !llvm.loop !372

bb.cu:                                            ; preds = %._crit_edge491
  %i.tu = trunc nuw i128 %.lcssa to i64
  %i.tv = getelementptr [8 x i8], ptr %i.sr, i64 %spec.select.i399
  %i.tw = getelementptr i8, ptr %i.tv, i64 -8
  store i64 %i.tu, ptr %i.tw, align 8, !tbaa !148
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412

._crit_edge491.thread:                            ; preds = %.preheader470, %._crit_edge491
  %.0238.lcssa585 = phi i128 [ %.lcssa, %._crit_edge491 ], [ 0, %.preheader470 ]
  br i1 %i.sq, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412, label %bb.cv

bb.cv:                                            ; preds = %._crit_edge491.thread
  %i.tx = add nsw i64 %spec.select.i399, -1
  %spec.select.i406 = call i64 @llvm.umin.i64(i64 %i.tx, i64 288230376151711744) ; 4 uses
  %i.ty = load i64, ptr %7, align 16
  %spec.select.i8.i407 = select i1 %.pre-phi543, i64 2, i64 %i.ty ; 2 uses
  %i.tz = icmp ugt i64 %spec.select.i406, %spec.select.i8.i407
  br i1 %i.tz, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i408, label %bb.da

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i408: ; preds = %bb.cv
  %i.ua = shl nuw nsw i64 %spec.select.i8.i407, 2
  %.sroa.speculated16.i409 = call i64 @llvm.umax.i64(i64 %i.ua, i64 %spec.select.i406)
  %.sroa.speculated.i410 = call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i409, i64 288230376151711744) ; 2 uses
  %i.ub = shl nuw nsw i64 %.sroa.speculated.i410, 3
  %i.uc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ub) #36
          to label %.noexc411 unwind label %.loopexit.split-lp ; 2 uses

.noexc411:                                        ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i408
  %i.ud = load i8, ptr %i.li, align 1, !tbaa !67, !range !68, !noundef !69
  %i.ue = trunc nuw i8 %i.ud to i1                ; 2 uses
  %i.uf = load ptr, ptr %i.mk, align 8            ; 2 uses
  %i.ug = select i1 %i.ue, ptr %7, ptr %i.uf
  %i.uh = load i64, ptr %i.lg, align 16, !tbaa !146
  %i.ui = shl i64 %i.uh, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.uc, ptr align 8 %i.ug, i64 %i.ui, i1 false)
  br i1 %i.ue, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %.noexc411
  %i.uj = load i8, ptr %i.lj, align 2, !tbaa !156, !range !68, !noundef !69
  %i.uk = trunc nuw i8 %i.uj to i1
  br i1 %i.uk, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ul = load i64, ptr %7, align 16
  %i.um = shl i64 %i.ul, 3
  call void @_ZdlPvm(ptr noundef %i.uf, i64 noundef %i.um) #33
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw, %.noexc411
  store i8 0, ptr %i.li, align 1, !tbaa !67
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  store i64 %spec.select.i406, ptr %i.lg, align 16, !tbaa !146
  store i64 %.sroa.speculated.i410, ptr %7, align 16, !tbaa !94
  store ptr %i.uc, ptr %i.mk, align 8, !tbaa !94
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412.thread

bb.da:                                            ; preds = %bb.cv
  store i64 %spec.select.i406, ptr %i.lg, align 16, !tbaa !146
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412.thread

.loopexit468:                                     ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i421
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

.loopexit.split-lp:                               ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread589, %bb.ds, %bb.dt, %bb.dh, %bb.di, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i408, %bb.dl, %bb.dm
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412: ; preds = %._crit_edge491.thread, %bb.cu
  %.0238.lcssa584 = phi i128 [ %.0238.lcssa585, %._crit_edge491.thread ], [ %.lcssa, %bb.cu ]
  %i.un = icmp ne i128 %.0238.lcssa584, 0
  %or.cond5 = and i1 %i.sq, %i.un
  br i1 %or.cond5, label %.preheader469, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412.thread

.preheader469:                                    ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412
  %i.uo = load i8, ptr %i.gk, align 1, !tbaa !67, !range !68, !noundef !69
  %i.up = trunc nuw i8 %i.uo to i1                ; 5 uses
  %i.uq = add i64 %.2254, 1                       ; 2 uses
  %umax516 = call i64 @llvm.umax.i64(i64 %i.uq, i64 1) ; 3 uses
  %xtraiter654 = and i64 %umax516, 1
  %i.ur = icmp ult i64 %i.uq, 2
  br i1 %i.ur, label %.epil.preheader653, label %.preheader469.new

.preheader469.new:                                ; preds = %.preheader469
  %unroll_iter658 = and i64 %umax516, -2
  br label %bb.dj

.unr-lcssa:                                       ; preds = %bb.dj
  %lcmp.mod656.not = icmp eq i64 %xtraiter654, 0
  br i1 %lcmp.mod656.not, label %bb.db, label %.epil.preheader653

.epil.preheader653:                               ; preds = %.unr-lcssa, %.preheader469
  %.0492.epil.init = phi i64 [ 0, %.preheader469 ], [ %i.wd, %.unr-lcssa ] ; 2 uses
  %lcmp.mod657 = trunc i64 %umax516 to i1
  call void @llvm.assume(i1 %lcmp.mod657)
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %.0248, i64 %.0492.epil.init
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !148
  %i.uu = xor i64 %i.ut, -1
  %i.uv = load ptr, ptr %i.mg, align 8
  %i.uw = select i1 %i.up, ptr %3, ptr %i.uv
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %.0492.epil.init
  store i64 %i.uu, ptr %i.ux, align 8, !tbaa !148
  br label %bb.db

bb.db:                                            ; preds = %.unr-lcssa, %.epil.preheader653
  %i.uy = load ptr, ptr %i.mg, align 8
  %i.uz = select i1 %i.up, ptr %3, ptr %i.uy      ; 5 uses
  %.pr = load i64, ptr %i.gi, align 16, !tbaa !146 ; 2 uses
  %i.va = add i64 %.pr, -1                        ; 3 uses
  %.not.i493 = icmp eq i64 %i.va, 0
  br i1 %.not.i493, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph495.preheader

.lr.ph495.preheader:                              ; preds = %bb.db
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %i.va
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !148
  %.not2.i616 = icmp eq i64 %i.vc, 0
  br i1 %.not2.i616, label %.lr.ph617, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit

.lr.ph495:                                        ; preds = %.lr.ph617
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %i.vg
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !148
  %.not2.i = icmp eq i64 %i.ve, 0
  br i1 %.not2.i, label %.lr.ph617, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit, !llvm.loop !6

.lr.ph617:                                        ; preds = %.lr.ph495.preheader, %.lr.ph495
  %i.vf = phi i64 [ %i.vg, %.lr.ph495 ], [ %i.va, %.lr.ph495.preheader ] ; 4 uses
  %i.vg = add i64 %i.vf, -1                       ; 3 uses
  %.not.i = icmp eq i64 %i.vg, 0
  br i1 %.not.i, label %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge, label %.lr.ph495, !llvm.loop !6

._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge: ; preds = %.lr.ph617
  store i64 %i.vf, ptr %i.gi, align 16, !tbaa !146
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit, !llvm.loop !6

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit: ; preds = %.lr.ph495
  store i64 %i.vf, ptr %i.gi, align 16, !tbaa !146
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit, %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge, %.lr.ph495.preheader
  %.lcssa473.ph = phi i64 [ %.pr, %.lr.ph495.preheader ], [ 1, %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge ], [ %i.vf, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit ]
  %i.vh = icmp eq i64 %.lcssa473.ph, 1
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit, %bb.db
  %.lcssa473 = phi i1 [ true, %bb.db ], [ %i.vh, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 1, ptr %i.b, align 8, !tbaa !148
  %i.vi = load i8, ptr %i.hl, align 8, !tbaa !155, !range !68, !noundef !69
  %i.vj = trunc nuw i8 %i.vi to i1
  %i.vk = load i64, ptr %i.uz, align 8, !tbaa !148 ; 4 uses
  br i1 %i.vj, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit
  %.not.i332 = icmp eq i64 %i.vk, -1
  br i1 %.not.i332, label %bb.di, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.vl = add nuw i64 %i.vk, 1
  store i64 %i.vl, ptr %i.uz, align 8, !tbaa !148
  br label %bb.dk

bb.de:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit
  %.not10.i = icmp eq i64 %i.vk, 0
  br i1 %.not10.i, label %bb.dh, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.vm = add i64 %i.vk, -1
  store i64 %i.vm, ptr %i.uz, align 8, !tbaa !148
  %i.vn = load ptr, ptr %i.mg, align 8
  %i.vo = select i1 %i.up, ptr %3, ptr %i.vn
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !148
  %.not11.i = icmp eq i64 %i.vp, 0
  %or.cond458 = and i1 %.lcssa473, %.not11.i
  br i1 %or.cond458, label %bb.dg, label %bb.dk

bb.dg:                                            ; preds = %bb.df
  store i8 0, ptr %i.hl, align 8, !tbaa !155
  br label %bb.dk

bb.dh:                                            ; preds = %bb.de
  invoke void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_EEvRT_RKT0_RKy(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.dk unwind label %.loopexit.split-lp

bb.di:                                            ; preds = %bb.dc
  invoke void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_EEvRT_RKT0_RKy(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.dk unwind label %.loopexit.split-lp

bb.dj:                                            ; preds = %bb.dj, %.preheader469.new
  %.0492 = phi i64 [ 0, %.preheader469.new ], [ %i.wd, %bb.dj ] ; 4 uses
  %niter659 = phi i64 [ 0, %.preheader469.new ], [ %niter659.next.1, %bb.dj ]
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %.0248, i64 %.0492
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !148
  %i.vs = xor i64 %i.vr, -1
  %i.vt = load ptr, ptr %i.mg, align 8
  %i.vu = select i1 %i.up, ptr %3, ptr %i.vt
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %.0492
  store i64 %i.vs, ptr %i.vv, align 8, !tbaa !148
  %i.vw = or disjoint i64 %.0492, 1               ; 2 uses
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %.0248, i64 %i.vw
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !148
  %i.vz = xor i64 %i.vy, -1
  %i.wa = load ptr, ptr %i.mg, align 8
  %i.wb = select i1 %i.up, ptr %3, ptr %i.wa
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %i.vw
  store i64 %i.vz, ptr %i.wc, align 8, !tbaa !148
  %i.wd = add nuw i64 %.0492, 2                   ; 2 uses
  %niter659.next.1 = add i64 %niter659, 2         ; 2 uses
  %niter659.ncmp.1 = icmp eq i64 %niter659.next.1, %unroll_iter658
  br i1 %niter659.ncmp.1, label %.unr-lcssa, label %bb.dj, !llvm.loop !373

bb.dk:                                            ; preds = %bb.dg, %bb.df, %bb.dd, %bb.di, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.we = load i8, ptr %i.hl, align 8, !tbaa !155, !range !68, !noundef !69
  %i.wf = load i8, ptr %i.lh, align 8, !tbaa !155, !range !68, !noundef !69
  %.not.i414 = icmp eq i8 %i.we, %i.wf
  br i1 %.not.i414, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %7)
          to label %_ZN5boost14multiprecision8backends8eval_addILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit unwind label %.loopexit.split-lp

bb.dm:                                            ; preds = %bb.dk
  invoke void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %7)
          to label %_ZN5boost14multiprecision8backends8eval_addILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit unwind label %.loopexit.split-lp

_ZN5boost14multiprecision8backends8eval_addILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit: ; preds = %bb.dm, %bb.dl
  %i.wg = xor i8 %.0250, 1
  br label %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit317

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412.thread: ; preds = %bb.cz, %bb.da, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412
  %i.wh = load i8, ptr %i.hl, align 8, !tbaa !155, !range !68, !noundef !69 ; 4 uses
  %i.wi = trunc nuw i8 %i.wh to i1                ; 2 uses
  %i.wj = load i8, ptr %i.lh, align 8, !tbaa !155, !range !68, !noundef !69 ; 2 uses
  %.not.i.i = icmp eq i8 %i.wh, %i.wj             ; 2 uses
  br i1 %.not.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412.thread
  br i1 %i.wi, label %._ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446_crit_edge, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread

._ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446_crit_edge: ; preds = %bb.dn
  %.pre527 = load i64, ptr %i.gi, align 16, !tbaa !168
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446

bb.do:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412.thread
  %i.wk = load i64, ptr %i.gi, align 16, !tbaa !146 ; 6 uses
  %i.wl = load i64, ptr %i.lg, align 16, !tbaa !146 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.wk, %i.wl
  br i1 %.not.i.i.i, label %bb.dp, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread586

bb.dp:                                            ; preds = %bb.do
  %i.wm = load i8, ptr %i.gk, align 1, !tbaa !67, !range !68, !noundef !69
  %i.wn = trunc nuw i8 %i.wm to i1
  %i.wo = load ptr, ptr %i.mg, align 8
  %i.wp = select i1 %i.wn, ptr %3, ptr %i.wo
  %i.wq = load i8, ptr %i.li, align 1, !tbaa !67, !range !68, !noundef !69
  %i.wr = trunc nuw i8 %i.wq to i1
  %i.ws = load ptr, ptr %i.mk, align 8
  %i.wt = select i1 %i.wr, ptr %7, ptr %i.ws
  %i.wu = icmp slt i64 %i.wk, 1
  br i1 %i.wu, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, label %.lr.ph615

bb.dq:                                            ; preds = %.lr.ph615
  %i.wv = icmp slt i64 %.015.in.i.i.i613, 2
  br i1 %i.wv, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, label %.lr.ph615, !llvm.loop !7

.lr.ph615:                                        ; preds = %bb.dp, %bb.dq
  %.015.in.i.i.i613 = phi i64 [ %.015.i.i.i, %bb.dq ], [ %i.wk, %bb.dp ] ; 2 uses
  %.015.i.i.i = add nsw i64 %.015.in.i.i.i613, -1 ; 3 uses
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %.015.i.i.i
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !148 ; 2 uses
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.wt, i64 %.015.i.i.i
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !148 ; 2 uses
  %.not19.i.i.i = icmp eq i64 %i.wx, %i.wz
  br i1 %.not19.i.i.i, label %bb.dq, label %bb.dr, !llvm.loop !7

bb.dr:                                            ; preds = %.lr.ph615
  %i.xa = icmp ugt i64 %i.wx, %i.wz
  %i.xb = select i1 %i.xa, i32 1, i32 -1
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit: ; preds = %bb.dq, %bb.dp, %bb.dr
  %.2.i.i.i = phi i32 [ %i.xb, %bb.dr ], [ 0, %bb.dp ], [ 0, %bb.dq ] ; 2 uses
  %i.xc = sub nsw i32 0, %.2.i.i.i
  %spec.select.i.i418 = select i1 %i.wi, i32 %i.xc, i32 %.2.i.i.i
  %i.xd = icmp sgt i32 %spec.select.i.i418, 0
  br i1 %i.xd, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread589, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread586: ; preds = %bb.do
  %i.xe = icmp ugt i64 %i.wk, %i.wl
  %i.xf = trunc nuw i8 %i.wh to i1
  %i.xg = xor i1 %i.xe, %i.xf
  br i1 %i.xg, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread589, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread: ; preds = %bb.dn
  invoke void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %7)
          to label %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit317 unwind label %.loopexit.split-lp

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread589: ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread586
  invoke void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %7)
          to label %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit317 unwind label %.loopexit.split-lp

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446: ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread586, %._ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446_crit_edge, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit
  %i.xh = phi i64 [ %.pre527, %._ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446_crit_edge ], [ %i.wk, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit ], [ %i.wk, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread586 ]
  %.sroa.0.0.copyload.i = load i128, ptr %3, align 16, !tbaa !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %7, i64 16, i1 false), !tbaa.struct !375
  store i128 %.sroa.0.0.copyload.i, ptr %7, align 16, !tbaa !94
  store i8 %i.wj, ptr %i.hl, align 8, !tbaa !376
  store i8 %i.wh, ptr %i.lh, align 8, !tbaa !376
  %i.xi = load i8, ptr %i.gk, align 1, !tbaa !376, !range !68, !noundef !69
  %i.xj = load i8, ptr %i.li, align 1, !tbaa !376, !range !68, !noundef !69
  store i8 %i.xj, ptr %i.gk, align 1, !tbaa !376
  store i8 %i.xi, ptr %i.li, align 1, !tbaa !376
  %i.xk = load i64, ptr %i.lg, align 8, !tbaa !168
  store i64 %i.xk, ptr %i.gi, align 16, !tbaa !168
  store i64 %i.xh, ptr %i.lg, align 8, !tbaa !168
  %i.xl = load i8, ptr %i.mm, align 2, !tbaa !376, !range !68, !noundef !69
  %i.xm = load i8, ptr %i.lj, align 1, !tbaa !376, !range !68, !noundef !69
  store i8 %i.xm, ptr %i.mm, align 2, !tbaa !376
  store i8 %i.xl, ptr %i.lj, align 1, !tbaa !376
  br i1 %.not.i.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446
  invoke void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %7)
          to label %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit316 unwind label %.loopexit.split-lp

bb.dt:                                            ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446
  invoke void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %7)
          to label %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit316 unwind label %.loopexit.split-lp

_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit316: ; preds = %bb.dt, %bb.ds
  %i.xn = load i8, ptr %i.gk, align 1, !tbaa !67, !range !68, !noundef !69
  %i.xo = trunc nuw i8 %i.xn to i1
  %i.xp = load ptr, ptr %i.mg, align 8
  %i.xq = select i1 %i.xo, ptr %3, ptr %i.xp
  %i.xr = xor i8 %.0250, 1
  br label %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit317

_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit317: ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread589, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread, %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit316, %_ZN5boost14multiprecision8backends8eval_addILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit
  %.1251 = phi i8 [ %i.wg, %_ZN5boost14multiprecision8backends8eval_addILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit ], [ %i.xr, %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit316 ], [ %.0250, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread ], [ %.0250, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread589 ] ; 2 uses
  %.1249 = phi ptr [ %.0248, %_ZN5boost14multiprecision8backends8eval_addILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit ], [ %i.xq, %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit316 ], [ %.0248, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread ], [ %.0248, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread589 ]
  %or.cond7 = select i1 %i.hm, i1 %.0244, i1 false
  br i1 %or.cond7, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit317
  %i.xs = load i64, ptr %i.mn, align 16, !tbaa !146 ; 2 uses
end_hunk_0
