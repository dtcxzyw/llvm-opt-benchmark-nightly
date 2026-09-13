Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/minkowski_sum?download=true
inline.NumInlined: 7634
inline.NumDeleted: 3197
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 211
loop-unroll.NumUnrolled: 224
begin_hunk_0_@_ZN5boost14multiprecision8backends22divide_unsigned_helperINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvPT_RKT0_RKT1_RS8_:bb.a
_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit405: ; preds = %bb.cr, %bb.cq
  %.pre-phi543 = phi i1 [ %i.rx, %bb.cr ], [ %.pre542, %bb.cq ] ; 2 uses
  %i.sn = phi ptr [ %.pre526, %bb.cr ], [ %i.sc, %bb.cq ]
  %i.so = load i64, ptr %i.ff, align 16, !tbaa !231 ; 6 uses
  %i.sp = add i64 %i.ru, %i.so
  %i.sq = icmp ne i64 %spec.select.i399, %i.sp    ; 3 uses
  %i.sr = select i1 %.pre-phi543, ptr %7, ptr %i.sn ; 3 uses
  %.not502 = icmp eq i64 %.2254, %i.fh
  br i1 %.not502, label %.preheader470, label %.lr.ph487.preheader

.lr.ph487.preheader:                              ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit405
  %i.ss = shl nuw i64 %i.nx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.sr, i8 0, i64 %i.ss, i1 false), !tbaa !184
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
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !184
  %i.sy = zext i64 %i.sx to i128
  %i.sz = mul nuw i128 %i.sy, %i.st
  %i.ta = add nuw i128 %i.sz, %.0238488.epil.init ; 2 uses
  %i.tb = trunc i128 %i.ta to i64
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0236489.epil.init
  store i64 %i.tb, ptr %gep.epil, align 8, !tbaa !184
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
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !184
  %i.tg = zext i64 %i.tf to i128
  %i.th = mul nuw i128 %i.tg, %i.st
  %i.ti = add nuw i128 %i.th, %.0238488           ; 2 uses
  %i.tj = trunc i128 %i.ti to i64
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0236489
  store i64 %i.tj, ptr %gep, align 8, !tbaa !184
  %i.tk = lshr i128 %i.ti, 64
  %i.tl = or disjoint i64 %.0236489, 1            ; 2 uses
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.tl
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !184
  %i.to = zext i64 %i.tn to i128
  %i.tp = mul nuw i128 %i.to, %i.st
  %i.tq = add nuw i128 %i.tp, %i.tk               ; 2 uses
  %i.tr = trunc i128 %i.tq to i64
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.tl
  store i64 %i.tr, ptr %gep.1, align 8, !tbaa !184
  %i.ts = lshr i128 %i.tq, 64                     ; 3 uses
  %i.tt = add nuw i64 %.0236489, 2                ; 2 uses
  %niter652.next.1 = add nuw i64 %niter652, 2     ; 2 uses
  %niter652.ncmp.1 = icmp eq i64 %niter652.next.1, %unroll_iter651
  br i1 %niter652.ncmp.1, label %._crit_edge491.unr-lcssa, label %bb.ct, !llvm.loop !1465

bb.cu:                                            ; preds = %._crit_edge491
  %i.tu = trunc nuw i128 %.lcssa to i64
  %i.tv = getelementptr [8 x i8], ptr %i.sr, i64 %spec.select.i399
  %i.tw = getelementptr i8, ptr %i.tv, i64 -8
  store i64 %i.tu, ptr %i.tw, align 8, !tbaa !184
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
  %i.uc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ub) #38
          to label %.noexc411 unwind label %.loopexit.split-lp ; 2 uses

.noexc411:                                        ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i408
  %i.ud = load i8, ptr %i.li, align 1, !tbaa !47, !range !48, !noundef !49
  %i.ue = trunc nuw i8 %i.ud to i1                ; 2 uses
  %i.uf = load ptr, ptr %i.mk, align 8            ; 2 uses
  %i.ug = select i1 %i.ue, ptr %7, ptr %i.uf
  %i.uh = load i64, ptr %i.lg, align 16, !tbaa !231
  %i.ui = shl i64 %i.uh, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.uc, ptr align 8 %i.ug, i64 %i.ui, i1 false)
  br i1 %i.ue, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %.noexc411
  %i.uj = load i8, ptr %i.lj, align 2, !tbaa !239, !range !48, !noundef !49
  %i.uk = trunc nuw i8 %i.uj to i1
  br i1 %i.uk, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ul = load i64, ptr %7, align 16
  %i.um = shl i64 %i.ul, 3
  call void @_ZdlPvm(ptr noundef %i.uf, i64 noundef %i.um) #35
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw, %.noexc411
  store i8 0, ptr %i.li, align 1, !tbaa !47
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  store i64 %spec.select.i406, ptr %i.lg, align 16, !tbaa !231
  store i64 %.sroa.speculated.i410, ptr %7, align 16, !tbaa !62
  store ptr %i.uc, ptr %i.mk, align 8, !tbaa !62
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412.thread

bb.da:                                            ; preds = %bb.cv
  store i64 %spec.select.i406, ptr %i.lg, align 16, !tbaa !231
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
  %i.uo = load i8, ptr %i.gk, align 1, !tbaa !47, !range !48, !noundef !49
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
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !184
  %i.uu = xor i64 %i.ut, -1
  %i.uv = load ptr, ptr %i.mg, align 8
  %i.uw = select i1 %i.up, ptr %3, ptr %i.uv
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %.0492.epil.init
  store i64 %i.uu, ptr %i.ux, align 8, !tbaa !184
  br label %bb.db

bb.db:                                            ; preds = %.unr-lcssa, %.epil.preheader653
  %i.uy = load ptr, ptr %i.mg, align 8
  %i.uz = select i1 %i.up, ptr %3, ptr %i.uy      ; 5 uses
  %.pr = load i64, ptr %i.gi, align 16, !tbaa !231 ; 2 uses
  %i.va = add i64 %.pr, -1                        ; 3 uses
  %.not.i493 = icmp eq i64 %i.va, 0
  br i1 %.not.i493, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph495.preheader

.lr.ph495.preheader:                              ; preds = %bb.db
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %i.va
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !184
  %.not2.i616 = icmp eq i64 %i.vc, 0
  br i1 %.not2.i616, label %.lr.ph617, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit

.lr.ph495:                                        ; preds = %.lr.ph617
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %i.vg
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !184
  %.not2.i = icmp eq i64 %i.ve, 0
  br i1 %.not2.i, label %.lr.ph617, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit, !llvm.loop !27

.lr.ph617:                                        ; preds = %.lr.ph495.preheader, %.lr.ph495
  %i.vf = phi i64 [ %i.vg, %.lr.ph495 ], [ %i.va, %.lr.ph495.preheader ] ; 4 uses
  %i.vg = add i64 %i.vf, -1                       ; 3 uses
  %.not.i = icmp eq i64 %i.vg, 0
  br i1 %.not.i, label %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge, label %.lr.ph495, !llvm.loop !27

._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge: ; preds = %.lr.ph617
  store i64 %i.vf, ptr %i.gi, align 16, !tbaa !231
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit, !llvm.loop !27

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit: ; preds = %.lr.ph495
  store i64 %i.vf, ptr %i.gi, align 16, !tbaa !231
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit, %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge, %.lr.ph495.preheader
  %.lcssa473.ph = phi i64 [ %.pr, %.lr.ph495.preheader ], [ 1, %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge ], [ %i.vf, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit ]
  %i.vh = icmp eq i64 %.lcssa473.ph, 1
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit, %bb.db
  %.lcssa473 = phi i1 [ true, %bb.db ], [ %i.vh, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 1, ptr %i.b, align 8, !tbaa !184
  %i.vi = load i8, ptr %i.hl, align 8, !tbaa !238, !range !48, !noundef !49
  %i.vj = trunc nuw i8 %i.vi to i1
  %i.vk = load i64, ptr %i.uz, align 8, !tbaa !184 ; 4 uses
  br i1 %i.vj, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit
  %.not.i332 = icmp eq i64 %i.vk, -1
  br i1 %.not.i332, label %bb.di, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.vl = add nuw i64 %i.vk, 1
  store i64 %i.vl, ptr %i.uz, align 8, !tbaa !184
  br label %bb.dk

bb.de:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit
  %.not10.i = icmp eq i64 %i.vk, 0
  br i1 %.not10.i, label %bb.dh, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.vm = add i64 %i.vk, -1
  store i64 %i.vm, ptr %i.uz, align 8, !tbaa !184
  %i.vn = load ptr, ptr %i.mg, align 8
  %i.vo = select i1 %i.up, ptr %3, ptr %i.vn
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !184
  %.not11.i = icmp eq i64 %i.vp, 0
  %or.cond458 = and i1 %.lcssa473, %.not11.i
  br i1 %or.cond458, label %bb.dg, label %bb.dk

bb.dg:                                            ; preds = %bb.df
  store i8 0, ptr %i.hl, align 8, !tbaa !238
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
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !184
  %i.vs = xor i64 %i.vr, -1
  %i.vt = load ptr, ptr %i.mg, align 8
  %i.vu = select i1 %i.up, ptr %3, ptr %i.vt
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %.0492
  store i64 %i.vs, ptr %i.vv, align 8, !tbaa !184
  %i.vw = or disjoint i64 %.0492, 1               ; 2 uses
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %.0248, i64 %i.vw
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !184
  %i.vz = xor i64 %i.vy, -1
  %i.wa = load ptr, ptr %i.mg, align 8
  %i.wb = select i1 %i.up, ptr %3, ptr %i.wa
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %i.vw
  store i64 %i.vz, ptr %i.wc, align 8, !tbaa !184
  %i.wd = add nuw i64 %.0492, 2                   ; 2 uses
  %niter659.next.1 = add i64 %niter659, 2         ; 2 uses
  %niter659.ncmp.1 = icmp eq i64 %niter659.next.1, %unroll_iter658
  br i1 %niter659.ncmp.1, label %.unr-lcssa, label %bb.dj, !llvm.loop !1466

bb.dk:                                            ; preds = %bb.dg, %bb.df, %bb.dd, %bb.di, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.we = load i8, ptr %i.hl, align 8, !tbaa !238, !range !48, !noundef !49
  %i.wf = load i8, ptr %i.lh, align 8, !tbaa !238, !range !48, !noundef !49
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
  %i.wh = load i8, ptr %i.hl, align 8, !tbaa !238, !range !48, !noundef !49 ; 4 uses
  %i.wi = trunc nuw i8 %i.wh to i1                ; 2 uses
  %i.wj = load i8, ptr %i.lh, align 8, !tbaa !238, !range !48, !noundef !49 ; 2 uses
  %.not.i.i = icmp eq i8 %i.wh, %i.wj             ; 2 uses
  br i1 %.not.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412.thread
  br i1 %i.wi, label %._ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446_crit_edge, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread

._ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446_crit_edge: ; preds = %bb.dn
  %.pre527 = load i64, ptr %i.gi, align 16, !tbaa !100
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446

bb.do:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412.thread
  %i.wk = load i64, ptr %i.gi, align 16, !tbaa !231 ; 6 uses
  %i.wl = load i64, ptr %i.lg, align 16, !tbaa !231 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.wk, %i.wl
  br i1 %.not.i.i.i, label %bb.dp, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread586

bb.dp:                                            ; preds = %bb.do
  %i.wm = load i8, ptr %i.gk, align 1, !tbaa !47, !range !48, !noundef !49
  %i.wn = trunc nuw i8 %i.wm to i1
  %i.wo = load ptr, ptr %i.mg, align 8
  %i.wp = select i1 %i.wn, ptr %3, ptr %i.wo
  %i.wq = load i8, ptr %i.li, align 1, !tbaa !47, !range !48, !noundef !49
  %i.wr = trunc nuw i8 %i.wq to i1
  %i.ws = load ptr, ptr %i.mk, align 8
  %i.wt = select i1 %i.wr, ptr %7, ptr %i.ws
  %i.wu = icmp slt i64 %i.wk, 1
  br i1 %i.wu, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, label %.lr.ph615

bb.dq:                                            ; preds = %.lr.ph615
  %i.wv = icmp slt i64 %.015.in.i.i.i613, 2
  br i1 %i.wv, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, label %.lr.ph615, !llvm.loop !28

.lr.ph615:                                        ; preds = %bb.dp, %bb.dq
  %.015.in.i.i.i613 = phi i64 [ %.015.i.i.i, %bb.dq ], [ %i.wk, %bb.dp ] ; 2 uses
  %.015.i.i.i = add nsw i64 %.015.in.i.i.i613, -1 ; 3 uses
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %.015.i.i.i
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !184 ; 2 uses
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.wt, i64 %.015.i.i.i
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !184 ; 2 uses
  %.not19.i.i.i = icmp eq i64 %i.wx, %i.wz
  br i1 %.not19.i.i.i, label %bb.dq, label %bb.dr, !llvm.loop !28

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
  %.sroa.0.0.copyload.i = load i128, ptr %3, align 16, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %7, i64 16, i1 false), !tbaa.struct !258
  store i128 %.sroa.0.0.copyload.i, ptr %7, align 16, !tbaa !62
  store i8 %i.wj, ptr %i.hl, align 8, !tbaa !85
  store i8 %i.wh, ptr %i.lh, align 8, !tbaa !85
  %i.xi = load i8, ptr %i.gk, align 1, !tbaa !85, !range !48, !noundef !49
  %i.xj = load i8, ptr %i.li, align 1, !tbaa !85, !range !48, !noundef !49
  store i8 %i.xj, ptr %i.gk, align 1, !tbaa !85
  store i8 %i.xi, ptr %i.li, align 1, !tbaa !85
  %i.xk = load i64, ptr %i.lg, align 8, !tbaa !100
  store i64 %i.xk, ptr %i.gi, align 16, !tbaa !100
  store i64 %i.xh, ptr %i.lg, align 8, !tbaa !100
  %i.xl = load i8, ptr %i.mm, align 2, !tbaa !85, !range !48, !noundef !49
  %i.xm = load i8, ptr %i.lj, align 1, !tbaa !85, !range !48, !noundef !49
  store i8 %i.xm, ptr %i.mm, align 2, !tbaa !85
  store i8 %i.xl, ptr %i.lj, align 1, !tbaa !85
  br i1 %.not.i.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446
  invoke void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %7)
          to label %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit316 unwind label %.loopexit.split-lp

bb.dt:                                            ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446
  invoke void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %7)
          to label %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit316 unwind label %.loopexit.split-lp

_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit316: ; preds = %bb.dt, %bb.ds
  %i.xn = load i8, ptr %i.gk, align 1, !tbaa !47, !range !48, !noundef !49
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
  %i.xs = load i64, ptr %i.mn, align 16, !tbaa !231 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_:bb.a
bb.ah:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit113
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !47, !range !48, !noundef !49
  %i.ff = trunc nuw i8 %i.fe to i1
  %i.fg = load i8, ptr %i.fc, align 2, !range !48
  %i.fh = trunc nuw i8 %i.fg to i1
  %or.cond.i102 = select i1 %i.ff, i1 true, i1 %i.fh
  br i1 %or.cond.i102, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit103, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = load i64, ptr %4, align 16
  %i.fl = shl i64 %i.fk, 3
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fl) #35
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit103

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit103: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.aj:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit113
  %i.fm = landingpad { ptr, i32 }
          cleanup
  %i.fn = load i8, ptr %i.fd, align 1, !tbaa !47, !range !48, !noundef !49
  %i.fo = trunc nuw i8 %i.fn to i1
  %i.fp = load i8, ptr %i.fc, align 2, !range !48
  %i.fq = trunc nuw i8 %i.fp to i1
  %or.cond.i = select i1 %i.fo, i1 true, i1 %i.fq
  br i1 %or.cond.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = load i64, ptr %4, align 16
  %i.fu = shl i64 %i.ft, 3
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fu) #35
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume

bb.al:                                            ; preds = %bb.ab
  %i.fv = add i64 %i.f, %i.d
  %spec.select.i133 = tail call i64 @llvm.umin.i64(i64 %i.fv, i64 288230376151711744) ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 6 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !47, !range !48, !noundef !49
  %i.fy = trunc nuw i8 %i.fx to i1
  %i.fz = load i64, ptr %0, align 16
  %spec.select.i8.i134 = select i1 %i.fy, i64 2, i64 %i.fz ; 2 uses
  %i.ga = icmp ugt i64 %spec.select.i133, %spec.select.i8.i134
  br i1 %i.ga, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i135, label %bb.aq

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i135: ; preds = %bb.al
  %i.gb = shl nuw nsw i64 %spec.select.i8.i134, 2
  %.sroa.speculated16.i136 = tail call i64 @llvm.umax.i64(i64 %i.gb, i64 %spec.select.i133)
  %.sroa.speculated.i137 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i136, i64 288230376151711744) ; 2 uses
  %i.gc = shl nuw nsw i64 %.sroa.speculated.i137, 3
  %i.gd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #38 ; 2 uses
  %i.ge = load i8, ptr %i.fw, align 1, !tbaa !47, !range !48, !noundef !49
  %i.gf = trunc nuw i8 %i.ge to i1                ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  %i.gi = select i1 %i.gf, ptr %0, ptr %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 16, !tbaa !231
  %i.gl = shl i64 %i.gk, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gd, ptr align 8 %i.gi, i64 %i.gl, i1 false)
  br i1 %i.gf, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i135
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.gn = load i8, ptr %i.gm, align 2, !tbaa !239, !range !48, !noundef !49
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gp = load i64, ptr %0, align 16
  %i.gq = shl i64 %i.gp, 3
  tail call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gq) #35
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i135
  store i8 0, ptr %i.fw, align 1, !tbaa !47
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  store i64 %spec.select.i133, ptr %i.gj, align 16, !tbaa !231
  store i64 %.sroa.speculated.i137, ptr %0, align 16, !tbaa !62
  store ptr %i.gd, ptr %i.gg, align 8, !tbaa !62
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138

bb.aq:                                            ; preds = %bb.al
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select.i133, ptr %i.gr, align 16, !tbaa !231
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138: ; preds = %bb.ap, %bb.aq
  %i.gs = icmp ugt i64 %i.d, 39
  %i.gt = icmp ugt i64 %i.f, 39
  %or.cond = and i1 %i.gs, %i.gt
  br i1 %or.cond, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138
  tail call void @_ZN5boost14multiprecision8backends15setup_karatsubaILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_fixed_precisionINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_RKS9_SE_(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2)
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gv = load i8, ptr %i.gu, align 8, !tbaa !238, !range !48, !noundef !49
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !238, !range !48, !noundef !49
  %i.gy = icmp ne i8 %i.gv, %i.gx                 ; 2 uses
  %i.gz = zext i1 %i.gy to i8
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 %i.gz, ptr %i.ha, align 8, !tbaa !238
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hc = load i64, ptr %i.hb, align 16
  %i.hd = icmp eq i64 %i.hc, 1
  %or.cond.i139 = select i1 %i.gy, i1 %i.hd, i1 false
  br i1 %or.cond.i139, label %bb.as, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.as:                                            ; preds = %bb.ar
  %i.he = load i8, ptr %i.fw, align 1, !tbaa !47, !range !48, !noundef !49
  %i.hf = trunc nuw i8 %i.he to i1
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = select i1 %i.hf, ptr %0, ptr %i.hh
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !184
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %bb.at, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.at:                                            ; preds = %bb.as
  store i8 0, ptr %i.ha, align 8, !tbaa !238
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.au:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138
  %i.hl = load i8, ptr %i.fw, align 1, !tbaa !47, !range !48, !noundef !49
  %i.hm = trunc nuw i8 %i.hl to i1
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = select i1 %i.hm, ptr %0, ptr %i.ho      ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.hr = shl nuw nsw i64 %spec.select.i133, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hp, i8 0, i64 %i.hr, i1 false)
  %.not = icmp eq i64 %i.d, 0
  %.not158 = icmp eq i64 %i.f, 0
  %or.cond200 = select i1 %.not, i1 true, i1 %.not158
  br i1 %or.cond200, label %._crit_edge154, label %.preheader.us

.preheader.us:                                    ; preds = %bb.au, %bb.ay
  %.088153.us = phi i64 [ %i.in, %bb.ay ], [ 0, %bb.au ] ; 4 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.088153.us
  %i.ht = getelementptr [8 x i8], ptr %i.hp, i64 %.088153.us
  br label %bb.av

bb.av:                                            ; preds = %.preheader.us, %bb.av
  %.0151.us = phi i64 [ 0, %.preheader.us ], [ %i.ih, %bb.av ] ; 3 uses
  %.1150.us = phi i128 [ 0, %.preheader.us ], [ %i.ig, %bb.av ]
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !184
  %i.hv = zext i64 %i.hu to i128
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0151.us
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !184
  %i.hy = zext i64 %i.hx to i128
  %i.hz = mul nuw i128 %i.hy, %i.hv
  %i.ia = add nuw i128 %i.hz, %.1150.us
  %i.ib = getelementptr [8 x i8], ptr %i.ht, i64 %.0151.us ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !184
  %i.id = zext i64 %i.ic to i128
  %i.ie = add nuw i128 %i.ia, %i.id               ; 2 uses
  %i.if = trunc i128 %i.ie to i64
  store i64 %i.if, ptr %i.ib, align 8, !tbaa !184
  %i.ig = lshr i128 %i.ie, 64                     ; 3 uses
  %i.ih = add nuw i64 %.0151.us, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ih, %i.f
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.av, !llvm.loop !1480

bb.aw:                                            ; preds = %._crit_edge.us
  %i.ii = add i64 %i.f, %.088153.us               ; 2 uses
  %i.ij = load i64, ptr %i.hq, align 16, !tbaa !231
  %i.ik = icmp ult i64 %i.ii, %i.ij
  br i1 %i.ik, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.il = trunc nuw i128 %i.ig to i64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ii
  store i64 %i.il, ptr %i.im, align 8, !tbaa !184
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %._crit_edge.us
  %i.in = add nuw i64 %.088153.us, 1              ; 2 uses
  %exitcond162.not = icmp eq i64 %i.in, %i.d
  br i1 %exitcond162.not, label %._crit_edge154, label %.preheader.us, !llvm.loop !1481

._crit_edge.us:                                   ; preds = %bb.av
  %.not.us = icmp eq i128 %i.ig, 0
  br i1 %.not.us, label %bb.ay, label %bb.aw

._crit_edge154:                                   ; preds = %bb.ay, %bb.au
  %i.io = load i8, ptr %i.fw, align 1, !tbaa !47, !range !48, !noundef !49
  %i.ip = trunc nuw i8 %i.io to i1
  %i.iq = load ptr, ptr %i.hn, align 8
  %i.ir = select i1 %i.ip, ptr %0, ptr %i.iq      ; 3 uses
  %.promoted = load i64, ptr %i.hq, align 16, !tbaa !231 ; 2 uses
  %i.is = add i64 %.promoted, -1                  ; 3 uses
  %.not.i155 = icmp eq i64 %i.is, 0
  br i1 %.not.i155, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %._crit_edge154
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.is
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !184
  %.not2.i202 = icmp eq i64 %i.iu, 0
  br i1 %.not2.i202, label %.lr.ph203, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit

.lr.ph:                                           ; preds = %.lr.ph203
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.iy
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !184
  %.not2.i = icmp eq i64 %i.iw, 0
  br i1 %.not2.i, label %.lr.ph203, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit, !llvm.loop !27

.lr.ph203:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ix = phi i64 [ %i.iy, %.lr.ph ], [ %i.is, %.lr.ph.preheader ] ; 4 uses
  %i.iy = add i64 %i.ix, -1                       ; 3 uses
  %.not.i = icmp eq i64 %i.iy, 0
  br i1 %.not.i, label %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge, label %.lr.ph, !llvm.loop !27

._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge: ; preds = %.lr.ph203
  store i64 %i.ix, ptr %i.hq, align 16, !tbaa !231
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit, !llvm.loop !27

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit: ; preds = %.lr.ph
  store i64 %i.ix, ptr %i.hq, align 16, !tbaa !231
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit, %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge, %.lr.ph.preheader
  %.lcssa.ph = phi i64 [ %.promoted, %.lr.ph.preheader ], [ 1, %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge ], [ %i.ix, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit ]
  %i.iz = icmp eq i64 %.lcssa.ph, 1
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit, %._crit_edge154
  %.lcssa = phi i1 [ true, %._crit_edge154 ], [ %i.iz, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit ]
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jb = load i8, ptr %i.ja, align 8, !tbaa !238, !range !48, !noundef !49
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jd = load i8, ptr %i.jc, align 8, !tbaa !238, !range !48, !noundef !49
  %i.je = icmp ne i8 %i.jb, %i.jd                 ; 2 uses
  %i.jf = zext i1 %i.je to i8
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 %i.jf, ptr %i.jg, align 8, !tbaa !238
  %or.cond.i141 = and i1 %.lcssa, %i.je
  br i1 %or.cond.i141, label %bb.az, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.az:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit
  %i.jh = load i64, ptr %i.ir, align 8, !tbaa !184
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %bb.ba, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.jg, align 8, !tbaa !238
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit: ; preds = %bb.ba, %bb.az, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, %bb.at, %bb.as, %bb.ar, %bb.m, %bb.l, %bb.k, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit103, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit107, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit118
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends17eval_multiply_impINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_RKS9_SF_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(27) %2, ptr noundef nonnull align 16 dereferenceable(27) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %5 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %6 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %7 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %8 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %9 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %10 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %11 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %12 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 19 uses
  %13 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 19 uses
  %14 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 28 uses
  %15 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store i64 0, ptr %12, align 16, !tbaa !62
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store i64 1, ptr %i.a, align 16, !tbaa !231
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 6 uses
  store i8 0, ptr %i.b, align 8, !tbaa !238
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 25 ; 4 uses
  store i8 1, ptr %i.c, align 1, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 26 ; 3 uses
  store i8 0, ptr %i.d, align 2, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store i64 0, ptr %13, align 16, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store i64 1, ptr %i.e, align 16, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 5 uses
  store i8 0, ptr %i.f, align 8, !tbaa !238
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 25 ; 4 uses
  store i8 1, ptr %i.g, align 1, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 26 ; 3 uses
  store i8 0, ptr %i.h, align 2, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store i64 0, ptr %14, align 16, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store i64 1, ptr %i.i, align 16, !tbaa !231
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 9 uses
  store i8 0, ptr %i.j, align 8, !tbaa !238
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 25 ; 7 uses
  store i8 1, ptr %i.k, align 1, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 26 ; 3 uses
  store i8 0, ptr %i.l, align 2, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store i64 0, ptr %15, align 16, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store i64 1, ptr %i.m, align 16, !tbaa !231
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 9 uses
  store i8 0, ptr %i.n, align 8, !tbaa !238
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 25 ; 7 uses
  store i8 1, ptr %i.o, align 1, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 26 ; 3 uses
  store i8 0, ptr %i.p, align 2, !tbaa !239
  invoke void @_ZN5boost14multiprecision8backends8eval_gcdILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_RKS9_SE_(ptr noundef nonnull align 16 dereferenceable(27) %12, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %3)
          to label %bb.b unwind label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  invoke void @_ZN5boost14multiprecision8backends8eval_gcdILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_RKS9_SE_(ptr noundef nonnull align 16 dereferenceable(27) %13, ptr noundef nonnull align 16 dereferenceable(27) %2, ptr noundef nonnull align 16 dereferenceable(27) %i.q)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.r = load atomic i8, ptr @_ZGVZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result acquire, align 8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.d, label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit, !prof !230

bb.d:                                             ; preds = %bb.c
  %i.t = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result) #23
  %.not.i123 = icmp eq i32 %i.t, 0
  br i1 %.not.i123, label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 25), align 1, !tbaa !47, !alias.scope !1486
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 26), align 2, !tbaa !239, !alias.scope !1486
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 16), align 16, !tbaa !231, !alias.scope !1486
  store i64 1, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, align 16, !tbaa !184, !alias.scope !1486
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 24), align 8, !tbaa !238, !alias.scope !1486
  %i.u = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev, ptr nonnull @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, ptr nonnull @__dso_handle) #23 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result) #23
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit

_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit: ; preds = %bb.e, %bb.d, %bb.c
  %i.v = load i8, ptr %i.b, align 8, !tbaa !238, !range !48, !noundef !49
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 24), align 8, !tbaa !238, !range !48, !noundef !49
  %.not = icmp eq i8 %i.v, %i.w
  br i1 %.not, label %bb.f, label %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit66

bb.f:                                             ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit
  %i.x = load i64, ptr %i.a, align 16, !tbaa !231 ; 3 uses
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 16), align 16, !tbaa !231
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.g, label %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit66

bb.g:                                             ; preds = %bb.f
  %i.aa = load i8, ptr %i.c, align 1, !tbaa !47, !range !48, !noundef !49
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = select i1 %i.ab, ptr %12, ptr %i.ad     ; 2 uses
  %.idx = shl nuw nsw i64 %i.x, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx
  %.not10.i = icmp eq i64 %i.x, 0
  br i1 %.not10.i, label %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit66, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.ag = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 25), align 1, !tbaa !47, !range !48, !noundef !49
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 8), align 8
  %i.aj = select i1 %i.ah, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, ptr %i.ai
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.012.i = phi ptr [ %i.an, %.lr.ph.i ], [ %i.aj, %.lr.ph.i.preheader ] ; 2 uses
  %.0811.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.ae, %.lr.ph.i.preheader ] ; 2 uses
  %i.ak = load i64, ptr %.0811.i, align 8, !tbaa !184
  %i.al = load i64, ptr %.012.i, align 8, !tbaa !184
  %.not9.i = icmp eq i64 %i.ak, %i.al             ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %.not.i124 = icmp ne ptr %i.am, %i.af
  %or.cond.not = select i1 %.not9.i, i1 %.not.i124, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit66, !llvm.loop !29

_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit66: ; preds = %.lr.ph.i, %bb.g, %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit, %bb.f
  %i.ao = phi i1 [ false, %bb.f ], [ false, %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit ], [ true, %bb.g ], [ %.not9.i, %.lr.ph.i ] ; 2 uses
  %i.ap = load atomic i8, ptr @_ZGVZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result acquire, align 8
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.h, label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit126, !prof !230

bb.h:                                             ; preds = %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit66
  %i.ar = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result) #23
  %.not.i125 = icmp eq i32 %i.ar, 0
  br i1 %.not.i125, label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit126, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 25), align 1, !tbaa !47, !alias.scope !1487
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 26), align 2, !tbaa !239, !alias.scope !1487
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 16), align 16, !tbaa !231, !alias.scope !1487
  store i64 1, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, align 16, !tbaa !184, !alias.scope !1487
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 24), align 8, !tbaa !238, !alias.scope !1487
  %i.as = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev, ptr nonnull @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, ptr nonnull @__dso_handle) #23 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result) #23
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit126

_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit126: ; preds = %bb.i, %bb.h, %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit66
  %i.at = load i8, ptr %i.f, align 8, !tbaa !238, !range !48, !noundef !49 ; 2 uses
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 24), align 8, !tbaa !238, !range !48, !noundef !49
  %.not152 = icmp eq i8 %i.at, %i.au
  br i1 %.not152, label %bb.j, label %.thread

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit126
  %i.av = load i64, ptr %i.e, align 16, !tbaa !231 ; 3 uses
  %i.aw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 16), align 16, !tbaa !231
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ay = load i8, ptr %i.g, align 1, !tbaa !47, !range !48, !noundef !49
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = select i1 %i.az, ptr %13, ptr %i.bb     ; 2 uses
  %.idx153 = shl nuw nsw i64 %i.av, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx153
  %.not10.i127 = icmp eq i64 %i.av, 0
  br i1 %.not10.i127, label %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit, label %.lr.ph.i128.preheader

.lr.ph.i128.preheader:                            ; preds = %bb.k
  %i.be = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 25), align 1, !tbaa !47, !range !48, !noundef !49
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 8), align 8
  %i.bh = select i1 %i.bf, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, ptr %i.bg
  br label %.lr.ph.i128

end_hunk_1
