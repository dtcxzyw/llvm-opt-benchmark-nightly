Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/copy_move_algo_test?download=true
inline.NumInlined: 397
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEES8_EEvT_mSG_SG_mT0_RT1_:bb.a

.lr.ph.i337:                                      ; preds = %.lr.ph.i337.preheader, %.lr.ph.i337
  %.018.i338 = phi ptr [ %i.rb, %.lr.ph.i337 ], [ %3, %.lr.ph.i337.preheader ] ; 3 uses
  %.01517.i339 = phi ptr [ %i.rc, %.lr.ph.i337 ], [ %i.qx, %.lr.ph.i337.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i339) ]
  %i.qy = load i32, ptr %.018.i338, align 4, !tbaa !19
  store i32 %i.qy, ptr %.01517.i339, align 4, !tbaa !19
  store i32 0, ptr %.018.i338, align 4, !tbaa !19
  %i.qz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.ra = add i32 %i.qz, 1
  store i32 %i.ra, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.rb = getelementptr inbounds nuw i8, ptr %.018.i338, i64 4 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.01517.i339, i64 4
  %.not.i340 = icmp eq ptr %i.rb, %i.b
  br i1 %.not.i340, label %.loopexit, label %.lr.ph.i337, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph.i337, %bb.o
  %.not6.i.i344 = icmp eq i64 %i.nq, 0
  br i1 %.not6.i.i344, label %.lr.ph.i.i354.preheader, label %.lr.ph.i.i345.preheader

.lr.ph.i.i345.preheader:                          ; preds = %.loopexit
  %min.iters.check678 = icmp ult i64 %i.nq, 8
  %i.rd = sub i64 %.sroa.0400.2657, %i.c
  %diff.check676 = icmp ugt i64 %i.rd, -32
  %or.cond695 = select i1 %min.iters.check678, i1 true, i1 %diff.check676
  br i1 %or.cond695, label %.lr.ph.i.i345.preheader696, label %vector.ph679

vector.ph679:                                     ; preds = %.lr.ph.i.i345.preheader
  %n.vec680 = and i64 %i.nq, -8                   ; 3 uses
  %i.re = and i64 %i.nq, 7
  %i.rf = shl i64 %n.vec680, 2                    ; 2 uses
  %i.rg = getelementptr i8, ptr %3, i64 %i.rf
  %i.rh = getelementptr i8, ptr %.sroa.0400.2, i64 %i.rf ; 2 uses
  br label %vector.body681

vector.body681:                                   ; preds = %vector.body681, %vector.ph679
  %index682 = phi i64 [ 0, %vector.ph679 ], [ %index.next687, %vector.body681 ] ; 2 uses
  %i.ri = shl i64 %index682, 2                    ; 2 uses
  %next.gep683 = getelementptr i8, ptr %3, i64 %i.ri ; 2 uses
  %next.gep684 = getelementptr i8, ptr %.sroa.0400.2, i64 %i.ri ; 2 uses
  %i.rj = getelementptr i8, ptr %next.gep684, i64 16
  %wide.load685 = load <4 x i32>, ptr %next.gep684, align 4, !tbaa !19
  %wide.load686 = load <4 x i32>, ptr %i.rj, align 4, !tbaa !19
  %i.rk = getelementptr i8, ptr %next.gep683, i64 16
  store <4 x i32> %wide.load685, ptr %next.gep683, align 4, !tbaa !19
  store <4 x i32> %wide.load686, ptr %i.rk, align 4, !tbaa !19
  %index.next687 = add nuw i64 %index682, 8       ; 2 uses
  %i.rl = icmp eq i64 %index.next687, %n.vec680
  br i1 %i.rl, label %middle.block688, label %vector.body681, !llvm.loop !113

middle.block688:                                  ; preds = %vector.body681
  %cmp.n689 = icmp eq i64 %i.nq, %n.vec680
  br i1 %cmp.n689, label %.lr.ph.i.i354.preheader, label %.lr.ph.i.i345.preheader696

.lr.ph.i.i345.preheader696:                       ; preds = %.lr.ph.i.i345.preheader, %middle.block688
  %.09.i.i346.ph = phi i64 [ %i.nq, %.lr.ph.i.i345.preheader ], [ %i.re, %middle.block688 ] ; 4 uses
  %.048.i.i347.ph = phi ptr [ %3, %.lr.ph.i.i345.preheader ], [ %i.rg, %middle.block688 ] ; 2 uses
  %.sroa.0.07.i.i348.ph = phi ptr [ %.sroa.0400.2, %.lr.ph.i.i345.preheader ], [ %i.rh, %middle.block688 ] ; 2 uses
  %i.rm = add i64 %.09.i.i346.ph, -1
  %xtraiter746 = and i64 %.09.i.i346.ph, 7        ; 2 uses
  %lcmp.mod747.not = icmp eq i64 %xtraiter746, 0
  br i1 %lcmp.mod747.not, label %.lr.ph.i.i345.prol.loopexit, label %.lr.ph.i.i345.prol

.lr.ph.i.i345.prol:                               ; preds = %.lr.ph.i.i345.preheader696, %.lr.ph.i.i345.prol
  %.09.i.i346.prol = phi i64 [ %i.rn, %.lr.ph.i.i345.prol ], [ %.09.i.i346.ph, %.lr.ph.i.i345.preheader696 ]
  %.048.i.i347.prol = phi ptr [ %i.rq, %.lr.ph.i.i345.prol ], [ %.048.i.i347.ph, %.lr.ph.i.i345.preheader696 ] ; 2 uses
  %.sroa.0.07.i.i348.prol = phi ptr [ %i.rp, %.lr.ph.i.i345.prol ], [ %.sroa.0.07.i.i348.ph, %.lr.ph.i.i345.preheader696 ] ; 2 uses
  %prol.iter748 = phi i64 [ %prol.iter748.next, %.lr.ph.i.i345.prol ], [ 0, %.lr.ph.i.i345.preheader696 ]
  %i.rn = add i64 %.09.i.i346.prol, -1            ; 2 uses
  %i.ro = load i32, ptr %.sroa.0.07.i.i348.prol, align 4, !tbaa !19
  store i32 %i.ro, ptr %.048.i.i347.prol, align 4, !tbaa !19
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i348.prol, i64 4 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.048.i.i347.prol, i64 4 ; 2 uses
  %prol.iter748.next = add i64 %prol.iter748, 1   ; 2 uses
  %prol.iter748.cmp.not = icmp eq i64 %prol.iter748.next, %xtraiter746
  br i1 %prol.iter748.cmp.not, label %.lr.ph.i.i345.prol.loopexit, label %.lr.ph.i.i345.prol, !llvm.loop !114

.lr.ph.i.i345.prol.loopexit:                      ; preds = %.lr.ph.i.i345.prol, %.lr.ph.i.i345.preheader696
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i345.preheader696 ], [ %i.rp, %.lr.ph.i.i345.prol ]
  %.09.i.i346.unr = phi i64 [ %.09.i.i346.ph, %.lr.ph.i.i345.preheader696 ], [ %i.rn, %.lr.ph.i.i345.prol ]
  %.048.i.i347.unr = phi ptr [ %.048.i.i347.ph, %.lr.ph.i.i345.preheader696 ], [ %i.rq, %.lr.ph.i.i345.prol ]
  %.sroa.0.07.i.i348.unr = phi ptr [ %.sroa.0.07.i.i348.ph, %.lr.ph.i.i345.preheader696 ], [ %i.rp, %.lr.ph.i.i345.prol ]
  %i.rr = icmp ult i64 %i.rm, 7
  br i1 %i.rr, label %.lr.ph.i.i354.preheader, label %.lr.ph.i.i345

.lr.ph.i.i345:                                    ; preds = %.lr.ph.i.i345.prol.loopexit, %.lr.ph.i.i345
  %.09.i.i346 = phi i64 [ %i.sn, %.lr.ph.i.i345 ], [ %.09.i.i346.unr, %.lr.ph.i.i345.prol.loopexit ]
  %.048.i.i347 = phi ptr [ %i.sq, %.lr.ph.i.i345 ], [ %.048.i.i347.unr, %.lr.ph.i.i345.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i348 = phi ptr [ %i.sp, %.lr.ph.i.i345 ], [ %.sroa.0.07.i.i348.unr, %.lr.ph.i.i345.prol.loopexit ] ; 9 uses
  %i.rs = load i32, ptr %.sroa.0.07.i.i348, align 4, !tbaa !19
  store i32 %i.rs, ptr %.048.i.i347, align 4, !tbaa !19
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i348, i64 4
  %i.ru = getelementptr inbounds nuw i8, ptr %.048.i.i347, i64 4
  %i.rv = load i32, ptr %i.rt, align 4, !tbaa !19
  store i32 %i.rv, ptr %i.ru, align 4, !tbaa !19
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i348, i64 8
  %i.rx = getelementptr inbounds nuw i8, ptr %.048.i.i347, i64 8
  %i.ry = load i32, ptr %i.rw, align 4, !tbaa !19
  store i32 %i.ry, ptr %i.rx, align 4, !tbaa !19
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i348, i64 12
  %i.sa = getelementptr inbounds nuw i8, ptr %.048.i.i347, i64 12
  %i.sb = load i32, ptr %i.rz, align 4, !tbaa !19
  store i32 %i.sb, ptr %i.sa, align 4, !tbaa !19
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i348, i64 16
  %i.sd = getelementptr inbounds nuw i8, ptr %.048.i.i347, i64 16
  %i.se = load i32, ptr %i.sc, align 4, !tbaa !19
  store i32 %i.se, ptr %i.sd, align 4, !tbaa !19
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i348, i64 20
  %i.sg = getelementptr inbounds nuw i8, ptr %.048.i.i347, i64 20
  %i.sh = load i32, ptr %i.sf, align 4, !tbaa !19
  store i32 %i.sh, ptr %i.sg, align 4, !tbaa !19
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i348, i64 24
  %i.sj = getelementptr inbounds nuw i8, ptr %.048.i.i347, i64 24
  %i.sk = load i32, ptr %i.si, align 4, !tbaa !19
  store i32 %i.sk, ptr %i.sj, align 4, !tbaa !19
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i348, i64 28
  %i.sm = getelementptr inbounds nuw i8, ptr %.048.i.i347, i64 28
  %i.sn = add i64 %.09.i.i346, -8                 ; 2 uses
  %i.so = load i32, ptr %i.sl, align 4, !tbaa !19
  store i32 %i.so, ptr %i.sm, align 4, !tbaa !19
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i348, i64 32 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.048.i.i347, i64 32
  %.not.i.i349.7 = icmp eq i64 %i.sn, 0
  br i1 %.not.i.i349.7, label %.lr.ph.i.i354.preheader, label %.lr.ph.i.i345, !llvm.loop !115

.lr.ph.i.i354.preheader:                          ; preds = %.lr.ph.i.i345.prol.loopexit, %.lr.ph.i.i345, %middle.block688, %.loopexit
  %.sroa.0.016.i.i357.ph = phi ptr [ %.sroa.0400.2, %.loopexit ], [ %i.rh, %middle.block688 ], [ %.lcssa.unr, %.lr.ph.i.i345.prol.loopexit ], [ %i.sp, %.lr.ph.i.i345 ] ; 2 uses
  %i.sr = add i64 %i.f, %4
  %xtraiter749 = and i64 %i.qw, 3                 ; 2 uses
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  br i1 %lcmp.mod750.not, label %.lr.ph.i.i354.prol.loopexit, label %.lr.ph.i.i354.prol

.lr.ph.i.i354.prol:                               ; preds = %.lr.ph.i.i354.preheader, %.lr.ph.i.i354.prol
  %.018.i.i355.prol = phi i64 [ %i.sx, %.lr.ph.i.i354.prol ], [ %i.qw, %.lr.ph.i.i354.preheader ]
  %.01417.i.i356.prol = phi ptr [ %i.sw, %.lr.ph.i.i354.prol ], [ %i.b, %.lr.ph.i.i354.preheader ] ; 3 uses
  %.sroa.0.016.i.i357.prol = phi ptr [ %i.sv, %.lr.ph.i.i354.prol ], [ %.sroa.0.016.i.i357.ph, %.lr.ph.i.i354.preheader ] ; 2 uses
  %prol.iter751 = phi i64 [ %prol.iter751.next, %.lr.ph.i.i354.prol ], [ 0, %.lr.ph.i.i354.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i356.prol) ]
  %i.ss = load i32, ptr %.sroa.0.016.i.i357.prol, align 4, !tbaa !19
  store i32 %i.ss, ptr %.01417.i.i356.prol, align 4, !tbaa !19
  %i.st = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.su = add i32 %i.st, 1
  store i32 %i.su, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i357.prol, i64 4 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.01417.i.i356.prol, i64 4 ; 2 uses
  %i.sx = add i64 %.018.i.i355.prol, -1           ; 2 uses
  %prol.iter751.next = add i64 %prol.iter751, 1   ; 2 uses
  %prol.iter751.cmp.not = icmp eq i64 %prol.iter751.next, %xtraiter749
  br i1 %prol.iter751.cmp.not, label %.lr.ph.i.i354.prol.loopexit, label %.lr.ph.i.i354.prol, !llvm.loop !116

.lr.ph.i.i354.prol.loopexit:                      ; preds = %.lr.ph.i.i354.prol, %.lr.ph.i.i354.preheader
  %.018.i.i355.unr = phi i64 [ %i.qw, %.lr.ph.i.i354.preheader ], [ %i.sx, %.lr.ph.i.i354.prol ]
  %.01417.i.i356.unr = phi ptr [ %i.b, %.lr.ph.i.i354.preheader ], [ %i.sw, %.lr.ph.i.i354.prol ]
  %.sroa.0.016.i.i357.unr = phi ptr [ %.sroa.0.016.i.i357.ph, %.lr.ph.i.i354.preheader ], [ %i.sv, %.lr.ph.i.i354.prol ]
  %i.sy = sub i64 %i.i, %i.sr
  %i.sz = add i64 %i.sy, %1
  %i.ta = icmp ugt i64 %i.sz, -4
  br i1 %i.ta, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i354

.lr.ph.i.i354:                                    ; preds = %.lr.ph.i.i354.prol.loopexit, %.lr.ph.i.i354
  %.018.i.i355 = phi i64 [ %i.ts, %.lr.ph.i.i354 ], [ %.018.i.i355.unr, %.lr.ph.i.i354.prol.loopexit ]
  %.01417.i.i356 = phi ptr [ %i.tr, %.lr.ph.i.i354 ], [ %.01417.i.i356.unr, %.lr.ph.i.i354.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i357 = phi ptr [ %i.tq, %.lr.ph.i.i354 ], [ %.sroa.0.016.i.i357.unr, %.lr.ph.i.i354.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i356) ]
  %i.tb = load i32, ptr %.sroa.0.016.i.i357, align 4, !tbaa !19
  store i32 %i.tb, ptr %.01417.i.i356, align 4, !tbaa !19
  %i.tc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17 ; 4 uses
  %i.td = add i32 %i.tc, 1
  store i32 %i.td, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.te = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i357, i64 4
  %i.tf = getelementptr inbounds nuw i8, ptr %.01417.i.i356, i64 4
  %i.tg = load i32, ptr %i.te, align 4, !tbaa !19
  store i32 %i.tg, ptr %i.tf, align 4, !tbaa !19
  %i.th = add i32 %i.tc, 2
  store i32 %i.th, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.ti = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i357, i64 8
  %i.tj = getelementptr inbounds nuw i8, ptr %.01417.i.i356, i64 8
  %i.tk = load i32, ptr %i.ti, align 4, !tbaa !19
  store i32 %i.tk, ptr %i.tj, align 4, !tbaa !19
  %i.tl = add i32 %i.tc, 3
  store i32 %i.tl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i357, i64 12
  %i.tn = getelementptr inbounds nuw i8, ptr %.01417.i.i356, i64 12
  %i.to = load i32, ptr %i.tm, align 4, !tbaa !19
  store i32 %i.to, ptr %i.tn, align 4, !tbaa !19
  %i.tp = add i32 %i.tc, 4
  store i32 %i.tp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i357, i64 16
  %i.tr = getelementptr inbounds nuw i8, ptr %.01417.i.i356, i64 16
  %i.ts = add i64 %.018.i.i355, -4                ; 2 uses
  %.not.i.i358.3 = icmp eq i64 %i.ts, 0
  br i1 %.not.i.i358.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i354, !llvm.loop !3

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i218, %.lr.ph.i256, %.lr.ph.i302, %.lr.ph.i.i329.prol.loopexit, %.lr.ph.i.i329, %.lr.ph.i.i354.prol.loopexit, %.lr.ph.i.i354, %middle.block670, %.loopexit411, %bb.h, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit300, %.loopexit415, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_N9__gnu_cxx17__normal_iteratorIS6_St6vectorIS4_SaIS4_EEEEEEEEvT0_mSG_SG_mT1_RT_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = ptrtoaddr ptr %5 to i64                    ; 2 uses
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 8 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 28 uses
  %i.d = add i64 %4, %1                           ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %2, i64 %i.d ; 4 uses
  %i.f = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.g = ptrtoint ptr %3 to i64                   ; 7 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2                   ; 5 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = sub i64 %i.j, %i.f                       ; 4 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 9 uses
  %i.m = add i64 %i.i, %4                         ; 4 uses
  %.not = icmp ult i64 %i.l, %i.m
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sub i64 0, %i.m
  %i.o = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.n ; 3 uses
  %.not15.i.i = icmp eq i64 %4, 0
  br i1 %.not15.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.018.i.i.prol = phi i64 [ %i.u, %.lr.ph.i.i.prol ], [ %4, %.lr.ph.i.i.preheader ]
  %.01417.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.prol ], [ %i.o, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.0.016.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.prol ], [ %5, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.prol) ]
  %i.p = load i32, ptr %.sroa.0.016.i.i.prol, align 4, !tbaa !19
  store i32 %i.p, ptr %.01417.i.i.prol, align 4, !tbaa !19
  %i.q = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.prol, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01417.i.i.prol, i64 4 ; 2 uses
  %i.u = add i64 %.018.i.i.prol, -1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !127

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.018.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.u, %.lr.ph.i.i.prol ]
  %.01417.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %.sroa.0.016.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.preheader ], [ %i.s, %.lr.ph.i.i.prol ]
  %i.v = icmp ult i64 %4, 4
  br i1 %i.v, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %i.an, %.lr.ph.i.i ], [ %.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01417.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.01417.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.sroa.0.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i) ]
  %i.w = load i32, ptr %.sroa.0.016.i.i, align 4, !tbaa !19
  store i32 %i.w, ptr %.01417.i.i, align 4, !tbaa !19
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17 ; 4 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 4
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !19
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !19
  %i.ac = add i32 %i.x, 2
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !19
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !19
  %i.ag = add i32 %i.x, 3
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 12
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !19
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !19
  %i.ak = add i32 %i.x, 4
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 16
  %i.an = add i64 %.018.i.i, -4                   ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit, label %.lr.ph.i.i, !llvm.loop !3

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not16.i = icmp eq ptr %3, %i.c
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.as, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 3 uses
  %.01517.i = phi ptr [ %i.at, %.lr.ph.i ], [ %i.ao, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.ap = load i32, ptr %.018.i, align 4, !tbaa !19
  store i32 %i.ap, ptr %.01517.i, align 4, !tbaa !19
  store i32 0, ptr %.018.i, align 4, !tbaa !19
  %i.aq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.as, %i.c
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !2

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit
  %.not125 = icmp ult i64 %i.l, %i.d
  br i1 %.not125, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %.not16.i130 = icmp eq ptr %0, %3
  br i1 %.not16.i130, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %bb.c, %.lr.ph.i131
  %.018.i132 = phi ptr [ %i.ax, %.lr.ph.i131 ], [ %0, %bb.c ] ; 3 uses
  %.01517.i133 = phi ptr [ %i.ay, %.lr.ph.i131 ], [ %2, %bb.c ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i133) ]
  %i.au = load i32, ptr %.018.i132, align 4, !tbaa !19
  store i32 %i.au, ptr %.01517.i133, align 4, !tbaa !19
  store i32 0, ptr %.018.i132, align 4, !tbaa !19
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.ax = getelementptr inbounds nuw i8, ptr %.018.i132, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01517.i133, i64 4
  %.not.i134 = icmp eq ptr %i.ax, %3
  br i1 %.not.i134, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i131, !llvm.loop !2

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.az = sub nuw i64 %i.l, %i.m                  ; 5 uses
  %i.ba = sub i64 0, %i.az                        ; 3 uses
  %i.bb = getelementptr [4 x i8], ptr %3, i64 %i.ba ; 11 uses
  %.not17.i = icmp eq i64 %i.az, 0
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i137.preheader

.lr.ph.i137.preheader:                            ; preds = %bb.d
  %.neg = add i64 %i.m, 1
  %xtraiter445 = and i64 %i.az, 1
  %lcmp.mod446.not = icmp eq i64 %xtraiter445, 0
  br i1 %lcmp.mod446.not, label %.lr.ph.i137.prol.loopexit, label %.lr.ph.i137.prol

.lr.ph.i137.prol:                                 ; preds = %.lr.ph.i137.preheader
  %i.bc = add nsw i64 %i.az, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !19
  store i32 %i.bd, ptr %i.c, align 4, !tbaa !19
  store i32 0, ptr %i.bb, align 4, !tbaa !19
  %i.be = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %.lr.ph.i137.prol.loopexit

.lr.ph.i137.prol.loopexit:                        ; preds = %.lr.ph.i137.prol, %.lr.ph.i137.preheader
  %.020.i.unr = phi i64 [ %i.az, %.lr.ph.i137.preheader ], [ %i.bc, %.lr.ph.i137.prol ]
  %.0819.i.unr = phi ptr [ %i.bb, %.lr.ph.i137.preheader ], [ %i.bg, %.lr.ph.i137.prol ]
  %.01618.i.unr = phi ptr [ %i.c, %.lr.ph.i137.preheader ], [ %i.bh, %.lr.ph.i137.prol ]
  %i.bi = icmp eq i64 %i.l, %.neg
  br i1 %i.bi, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137
  %.020.i = phi i64 [ %i.bo, %.lr.ph.i137 ], [ %.020.i.unr, %.lr.ph.i137.prol.loopexit ]
  %.0819.i = phi ptr [ %i.bs, %.lr.ph.i137 ], [ %.0819.i.unr, %.lr.ph.i137.prol.loopexit ] ; 4 uses
  %.01618.i = phi ptr [ %i.bt, %.lr.ph.i137 ], [ %.01618.i.unr, %.lr.ph.i137.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.bj = load i32, ptr %.0819.i, align 4, !tbaa !19
  store i32 %i.bj, ptr %.01618.i, align 4, !tbaa !19
  store i32 0, ptr %.0819.i, align 4, !tbaa !19
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.bo = add i64 %.020.i, -2                     ; 2 uses
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !19
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !19
  store i32 0, ptr %i.bm, align 4, !tbaa !19
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %.not.i138.1 = icmp eq i64 %i.bo, 0
  br i1 %.not.i138.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i137, !llvm.loop !4

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137, %bb.d
  %.not.i139 = icmp eq ptr %i.bb, %i.c
  %.not8.i.i = icmp eq ptr %0, %i.bb
  %or.cond = or i1 %.not.i139, %.not8.i.i
  br i1 %or.cond, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i140.preheader

.lr.ph.i.i140.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %i.bu = shl i64 %i.ba, 2
  %i.bv = add i64 %i.bu, %i.g
  %i.bw = add i64 %i.bv, -4
  %i.bx = sub i64 %i.bw, %i.b                     ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bx, 140
  br i1 %min.iters.check, label %.lr.ph.i.i140.preheader440, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i140.preheader
  %i.ca = shl nsw i64 %1, 2
  %i.cb = shl i64 %i.ba, 2                        ; 2 uses
  %i.cc = add i64 %i.cb, %i.g
  %i.cd = add i64 %i.cc, -4
  %i.ce = sub i64 %i.cd, %i.b
  %i.cf = and i64 %i.ce, -4                       ; 2 uses
  %i.cg = add i64 %i.ca, -4
  %i.ch = sub i64 %i.cg, %i.cf
  %i.ci = getelementptr i8, ptr %0, i64 %i.ch
  %i.cj = add i64 %i.cb, -4
  %i.ck = sub i64 %i.cj, %i.cf
  %i.cl = getelementptr i8, ptr %3, i64 %i.ck
  %bound0 = icmp ult ptr %i.ci, %i.bb
  %bound1 = icmp ult ptr %i.cl, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i140.preheader440, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bz, 9223372036854775800     ; 3 uses
  %i.cm = mul i64 %n.vec, -4                      ; 2 uses
  %i.cn = getelementptr i8, ptr %i.c, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.bb, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.cp ; 2 uses
  %next.gep318 = getelementptr i8, ptr %i.bb, i64 %i.cp ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %next.gep318, i64 -16 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %next.gep318, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cq, align 4, !tbaa !19, !alias.scope !156
  %wide.load319 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !19, !alias.scope !156
  %i.cs = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ct = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cs, align 4, !tbaa !19, !alias.scope !157, !noalias !156
  store <4 x i32> %wide.load319, ptr %i.ct, align 4, !tbaa !19, !alias.scope !157, !noalias !156
  store <4 x i32> zeroinitializer, ptr %i.cq, align 4, !tbaa !19, !alias.scope !156
  store <4 x i32> zeroinitializer, ptr %i.cr, align 4, !tbaa !19, !alias.scope !156
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i140.preheader440

.lr.ph.i.i140.preheader440:                       ; preds = %vector.memcheck, %.lr.ph.i.i140.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i140.preheader ], [ %i.cn, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i.i140.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph.i.i140

.lr.ph.i.i140:                                    ; preds = %.lr.ph.i.i140.preheader440, %.lr.ph.i.i140
  %.010.i.i = phi ptr [ %i.cw, %.lr.ph.i.i140 ], [ %.010.i.i.ph, %.lr.ph.i.i140.preheader440 ]
  %.079.i.i = phi ptr [ %i.cv, %.lr.ph.i.i140 ], [ %.079.i.i.ph, %.lr.ph.i.i140.preheader440 ]
  %i.cv = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !19
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !19
  store i32 0, ptr %i.cv, align 4, !tbaa !19
  %.not.i.i141 = icmp eq ptr %0, %i.cv
  br i1 %.not.i.i141, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i140, !llvm.loop !132

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i140, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %.not3.i = icmp eq ptr %0, %2
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i142
  %storemerge4.i = phi ptr [ %i.da, %.lr.ph.i142 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !19
  %i.cy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.da = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i143 = icmp eq ptr %i.da, %2
  br i1 %.not.i143, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i142, !llvm.loop !5

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i131, %bb.c
  %.not.i146 = icmp eq i64 %1, 0
  br i1 %.not.i146, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  %xtraiter442 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod443.not = icmp eq i64 %xtraiter442, 0
  br i1 %lcmp.mod443.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.db = phi i64 [ %i.dc, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i147.prol = phi ptr [ %i.df, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter444 = phi i64 [ %prol.iter444.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.dc = add i64 %i.db, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i147.prol, align 4, !tbaa !19
  %i.dd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.de = add i32 %i.dd, -1
  store i32 %i.de, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i147.prol, i64 4 ; 2 uses
  %prol.iter444.next = add i64 %prol.iter444, 1   ; 2 uses
  %prol.iter444.cmp.not = icmp eq i64 %prol.iter444.next, %xtraiter442
  br i1 %prol.iter444.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !133

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.dc, %.preheader.prol ]
  %.0.i147.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.df, %.preheader.prol ]
  %i.dg = icmp ult i64 %1, 4
  br i1 %i.dg, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.dh = phi i64 [ %i.dp, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i147 = phi ptr [ %i.dr, %.preheader ], [ %.0.i147.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i147, align 4, !tbaa !19
  %i.di = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17 ; 4 uses
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i147, i64 4
  store i32 -2147483648, ptr %i.dk, align 4, !tbaa !19
  %i.dl = add i32 %i.di, -2
  store i32 %i.dl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i147, i64 8
  store i32 -2147483648, ptr %i.dm, align 4, !tbaa !19
  %i.dn = add i32 %i.di, -3
  store i32 %i.dn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i147, i64 12
  %i.dp = add i64 %i.dh, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.do, align 4, !tbaa !19
  %i.dq = add i32 %i.di, -4
  store i32 %i.dq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i147, i64 16
  %.not3.i148.3 = icmp eq i64 %i.dp, 0
  br i1 %.not3.i148.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.preheader, !llvm.loop !6

bb.e:                                             ; preds = %bb.a
  %i.ds = icmp ugt i64 %i.l, %i.i
  br i1 %i.ds, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i158 = icmp eq ptr %3, %i.c
  br i1 %.not16.i158, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164, label %.lr.ph.i159.preheader

.lr.ph.i159.preheader:                            ; preds = %bb.f
  %i.dt = sub nsw i64 0, %i.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.dt
  br label %.lr.ph.i159

.lr.ph.i159:                                      ; preds = %.lr.ph.i159.preheader, %.lr.ph.i159
  %.018.i160 = phi ptr [ %i.dy, %.lr.ph.i159 ], [ %3, %.lr.ph.i159.preheader ] ; 3 uses
  %.01517.i161 = phi ptr [ %i.dz, %.lr.ph.i159 ], [ %i.du, %.lr.ph.i159.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i161) ]
  %i.dv = load i32, ptr %.018.i160, align 4, !tbaa !19
  store i32 %i.dv, ptr %.01517.i161, align 4, !tbaa !19
  store i32 0, ptr %.018.i160, align 4, !tbaa !19
  %i.dw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.dy = getelementptr inbounds nuw i8, ptr %.018.i160, i64 4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.01517.i161, i64 4
  %.not.i162 = icmp eq ptr %i.dy, %i.c
  br i1 %.not.i162, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164, label %.lr.ph.i159, !llvm.loop !2

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164: ; preds = %.lr.ph.i159, %bb.f
  %i.ea = sub nuw nsw i64 %i.l, %i.i              ; 4 uses
  %i.eb = sub i64 %4, %i.ea                       ; 10 uses
  %i.ec = sub i64 0, %i.eb
  %i.ed = getelementptr [4 x i8], ptr %i.c, i64 %i.ec ; 11 uses
  %.not6.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not6.i.i, label %.lr.ph.i.i171.preheader, label %.lr.ph.i.i166.preheader

.lr.ph.i.i166.preheader:                          ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164
  %min.iters.check389 = icmp ult i64 %i.eb, 20
  br i1 %min.iters.check389, label %.lr.ph.i.i166.preheader431, label %vector.memcheck386

vector.memcheck386:                               ; preds = %.lr.ph.i.i166.preheader
  %i.ee = sub i64 %1, %i.eb
  %i.ef = shl i64 %i.ee, 2
  %i.eg = add i64 %i.ef, %i.b
  %i.eh = sub i64 %7, %i.eg
  %diff.check387 = icmp ugt i64 %i.eh, -32
  br i1 %diff.check387, label %.lr.ph.i.i166.preheader431, label %vector.ph390

vector.ph390:                                     ; preds = %vector.memcheck386
  %n.vec391 = and i64 %i.eb, -8                   ; 3 uses
  %i.ei = and i64 %i.eb, 7
  %i.ej = shl i64 %n.vec391, 2                    ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ed, i64 %i.ej
  %i.el = getelementptr i8, ptr %5, i64 %i.ej     ; 2 uses
  br label %vector.body392

vector.body392:                                   ; preds = %vector.body392, %vector.ph390
  %index393 = phi i64 [ 0, %vector.ph390 ], [ %index.next398, %vector.body392 ] ; 2 uses
  %i.em = shl i64 %index393, 2                    ; 2 uses
  %next.gep394 = getelementptr i8, ptr %i.ed, i64 %i.em ; 2 uses
  %next.gep395 = getelementptr i8, ptr %5, i64 %i.em ; 2 uses
  %i.en = getelementptr i8, ptr %next.gep395, i64 16
  %wide.load396 = load <4 x i32>, ptr %next.gep395, align 4, !tbaa !19
  %wide.load397 = load <4 x i32>, ptr %i.en, align 4, !tbaa !19
  %i.eo = getelementptr i8, ptr %next.gep394, i64 16
  store <4 x i32> %wide.load396, ptr %next.gep394, align 4, !tbaa !19
  store <4 x i32> %wide.load397, ptr %i.eo, align 4, !tbaa !19
  %index.next398 = add nuw i64 %index393, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next398, %n.vec391
  br i1 %i.ep, label %middle.block399, label %vector.body392, !llvm.loop !134

middle.block399:                                  ; preds = %vector.body392
  %cmp.n400 = icmp eq i64 %i.eb, %n.vec391
  br i1 %cmp.n400, label %.lr.ph.i.i171.preheader, label %.lr.ph.i.i166.preheader431

.lr.ph.i.i166.preheader431:                       ; preds = %vector.memcheck386, %.lr.ph.i.i166.preheader, %middle.block399
  %.09.i.i.ph = phi i64 [ %i.eb, %vector.memcheck386 ], [ %i.eb, %.lr.ph.i.i166.preheader ], [ %i.ei, %middle.block399 ] ; 4 uses
  %.048.i.i.ph = phi ptr [ %i.ed, %vector.memcheck386 ], [ %i.ed, %.lr.ph.i.i166.preheader ], [ %i.ek, %middle.block399 ] ; 2 uses
  %.sroa.0.07.i.i.ph = phi ptr [ %5, %vector.memcheck386 ], [ %5, %.lr.ph.i.i166.preheader ], [ %i.el, %middle.block399 ] ; 2 uses
  %i.eq = add i64 %.09.i.i.ph, -1
  %xtraiter454 = and i64 %.09.i.i.ph, 7           ; 2 uses
  %lcmp.mod455.not = icmp eq i64 %xtraiter454, 0
  br i1 %lcmp.mod455.not, label %.lr.ph.i.i166.prol.loopexit, label %.lr.ph.i.i166.prol

.lr.ph.i.i166.prol:                               ; preds = %.lr.ph.i.i166.preheader431, %.lr.ph.i.i166.prol
  %.09.i.i.prol = phi i64 [ %i.er, %.lr.ph.i.i166.prol ], [ %.09.i.i.ph, %.lr.ph.i.i166.preheader431 ]
  %.048.i.i.prol = phi ptr [ %i.eu, %.lr.ph.i.i166.prol ], [ %.048.i.i.ph, %.lr.ph.i.i166.preheader431 ] ; 2 uses
  %.sroa.0.07.i.i.prol = phi ptr [ %i.et, %.lr.ph.i.i166.prol ], [ %.sroa.0.07.i.i.ph, %.lr.ph.i.i166.preheader431 ] ; 2 uses
  %prol.iter456 = phi i64 [ %prol.iter456.next, %.lr.ph.i.i166.prol ], [ 0, %.lr.ph.i.i166.preheader431 ]
  %i.er = add i64 %.09.i.i.prol, -1               ; 2 uses
  %i.es = load i32, ptr %.sroa.0.07.i.i.prol, align 4, !tbaa !19
  store i32 %i.es, ptr %.048.i.i.prol, align 4, !tbaa !19
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.prol, i64 4 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.048.i.i.prol, i64 4 ; 2 uses
  %prol.iter456.next = add i64 %prol.iter456, 1   ; 2 uses
  %prol.iter456.cmp.not = icmp eq i64 %prol.iter456.next, %xtraiter454
  br i1 %prol.iter456.cmp.not, label %.lr.ph.i.i166.prol.loopexit, label %.lr.ph.i.i166.prol, !llvm.loop !135

.lr.ph.i.i166.prol.loopexit:                      ; preds = %.lr.ph.i.i166.prol, %.lr.ph.i.i166.preheader431
  %.lcssa432.unr = phi ptr [ poison, %.lr.ph.i.i166.preheader431 ], [ %i.et, %.lr.ph.i.i166.prol ]
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %.lr.ph.i.i166.preheader431 ], [ %i.er, %.lr.ph.i.i166.prol ]
  %.048.i.i.unr = phi ptr [ %.048.i.i.ph, %.lr.ph.i.i166.preheader431 ], [ %i.eu, %.lr.ph.i.i166.prol ]
  %.sroa.0.07.i.i.unr = phi ptr [ %.sroa.0.07.i.i.ph, %.lr.ph.i.i166.preheader431 ], [ %i.et, %.lr.ph.i.i166.prol ]
  %i.ev = icmp ult i64 %i.eq, 7
  br i1 %i.ev, label %.lr.ph.i.i171.preheader, label %.lr.ph.i.i166

.lr.ph.i.i166:                                    ; preds = %.lr.ph.i.i166.prol.loopexit, %.lr.ph.i.i166
  %.09.i.i = phi i64 [ %i.fr, %.lr.ph.i.i166 ], [ %.09.i.i.unr, %.lr.ph.i.i166.prol.loopexit ]
  %.048.i.i = phi ptr [ %i.fu, %.lr.ph.i.i166 ], [ %.048.i.i.unr, %.lr.ph.i.i166.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i = phi ptr [ %i.ft, %.lr.ph.i.i166 ], [ %.sroa.0.07.i.i.unr, %.lr.ph.i.i166.prol.loopexit ] ; 9 uses
  %i.ew = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !19
  store i32 %i.ew, ptr %.048.i.i, align 4, !tbaa !19
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 4
  %i.ey = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 4
  %i.ez = load i32, ptr %i.ex, align 4, !tbaa !19
  store i32 %i.ez, ptr %i.ey, align 4, !tbaa !19
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 8
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !19
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !19
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 12
  %i.fe = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 12
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !19
  store i32 %i.ff, ptr %i.fe, align 4, !tbaa !19
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 16
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !19
  store i32 %i.fi, ptr %i.fh, align 4, !tbaa !19
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 20
  %i.fk = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 20
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !19
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !19
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 24
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !19
  store i32 %i.fo, ptr %i.fn, align 4, !tbaa !19
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 28
  %i.fq = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 28
  %i.fr = add i64 %.09.i.i, -8                    ; 2 uses
  %i.fs = load i32, ptr %i.fp, align 4, !tbaa !19
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !19
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 32 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 32
  %.not.i.i167.7 = icmp eq i64 %i.fr, 0
  br i1 %.not.i.i167.7, label %.lr.ph.i.i171.preheader, label %.lr.ph.i.i166, !llvm.loop !136

.lr.ph.i.i171.preheader:                          ; preds = %.lr.ph.i.i166.prol.loopexit, %.lr.ph.i.i166, %middle.block399, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164
  %.sroa.0.016.i.i174.ph = phi ptr [ %5, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164 ], [ %i.el, %middle.block399 ], [ %.lcssa432.unr, %.lr.ph.i.i166.prol.loopexit ], [ %i.ft, %.lr.ph.i.i166 ] ; 2 uses
  %xtraiter457 = and i64 %i.ea, 3                 ; 2 uses
  %lcmp.mod458.not = icmp eq i64 %xtraiter457, 0
  br i1 %lcmp.mod458.not, label %.lr.ph.i.i171.prol.loopexit, label %.lr.ph.i.i171.prol

.lr.ph.i.i171.prol:                               ; preds = %.lr.ph.i.i171.preheader, %.lr.ph.i.i171.prol
  %.018.i.i172.prol = phi i64 [ %i.ga, %.lr.ph.i.i171.prol ], [ %i.ea, %.lr.ph.i.i171.preheader ]
  %.01417.i.i173.prol = phi ptr [ %i.fz, %.lr.ph.i.i171.prol ], [ %i.c, %.lr.ph.i.i171.preheader ] ; 3 uses
  %.sroa.0.016.i.i174.prol = phi ptr [ %i.fy, %.lr.ph.i.i171.prol ], [ %.sroa.0.016.i.i174.ph, %.lr.ph.i.i171.preheader ] ; 2 uses
  %prol.iter459 = phi i64 [ %prol.iter459.next, %.lr.ph.i.i171.prol ], [ 0, %.lr.ph.i.i171.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i173.prol) ]
  %i.fv = load i32, ptr %.sroa.0.016.i.i174.prol, align 4, !tbaa !19
  store i32 %i.fv, ptr %.01417.i.i173.prol, align 4, !tbaa !19
  %i.fw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174.prol, i64 4 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.01417.i.i173.prol, i64 4 ; 2 uses
  %i.ga = add i64 %.018.i.i172.prol, -1           ; 2 uses
  %prol.iter459.next = add i64 %prol.iter459, 1   ; 2 uses
  %prol.iter459.cmp.not = icmp eq i64 %prol.iter459.next, %xtraiter457
  br i1 %prol.iter459.cmp.not, label %.lr.ph.i.i171.prol.loopexit, label %.lr.ph.i.i171.prol, !llvm.loop !137

.lr.ph.i.i171.prol.loopexit:                      ; preds = %.lr.ph.i.i171.prol, %.lr.ph.i.i171.preheader
  %.018.i.i172.unr = phi i64 [ %i.ea, %.lr.ph.i.i171.preheader ], [ %i.ga, %.lr.ph.i.i171.prol ]
  %.01417.i.i173.unr = phi ptr [ %i.c, %.lr.ph.i.i171.preheader ], [ %i.fz, %.lr.ph.i.i171.prol ]
  %.sroa.0.016.i.i174.unr = phi ptr [ %.sroa.0.016.i.i174.ph, %.lr.ph.i.i171.preheader ], [ %i.fy, %.lr.ph.i.i171.prol ]
  %i.gb = sub nsw i64 %i.i, %i.l
  %i.gc = icmp ugt i64 %i.gb, -4
  br i1 %i.gc, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit177, label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %.lr.ph.i.i171.prol.loopexit, %.lr.ph.i.i171
  %.018.i.i172 = phi i64 [ %i.gu, %.lr.ph.i.i171 ], [ %.018.i.i172.unr, %.lr.ph.i.i171.prol.loopexit ]
  %.01417.i.i173 = phi ptr [ %i.gt, %.lr.ph.i.i171 ], [ %.01417.i.i173.unr, %.lr.ph.i.i171.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i174 = phi ptr [ %i.gs, %.lr.ph.i.i171 ], [ %.sroa.0.016.i.i174.unr, %.lr.ph.i.i171.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i173) ]
  %i.gd = load i32, ptr %.sroa.0.016.i.i174, align 4, !tbaa !19
  store i32 %i.gd, ptr %.01417.i.i173, align 4, !tbaa !19
  %i.ge = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17 ; 4 uses
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 4
  %i.gi = load i32, ptr %i.gg, align 4, !tbaa !19
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !19
  %i.gj = add i32 %i.ge, 2
  store i32 %i.gj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 8
  %i.gm = load i32, ptr %i.gk, align 4, !tbaa !19
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !19
  %i.gn = add i32 %i.ge, 3
  store i32 %i.gn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 12
  %i.gp = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 12
  %i.gq = load i32, ptr %i.go, align 4, !tbaa !19
  store i32 %i.gq, ptr %i.gp, align 4, !tbaa !19
  %i.gr = add i32 %i.ge, 4
  store i32 %i.gr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 16
  %i.gu = add i64 %.018.i.i172, -4                ; 2 uses
  %.not.i.i175.3 = icmp eq i64 %i.gu, 0
  br i1 %.not.i.i175.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit177, label %.lr.ph.i.i171, !llvm.loop !3

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit177: ; preds = %.lr.ph.i.i171, %.lr.ph.i.i171.prol.loopexit
  %.not.i178 = icmp eq ptr %3, %i.ed
  br i1 %.not.i178, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit177
  %.not8.i.i179 = icmp eq ptr %0, %3
  br i1 %.not8.i.i179, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180.preheader

.lr.ph.i.i180.preheader:                          ; preds = %bb.g
  %i.gv = add i64 %i.g, -4
  %i.gw = sub i64 %i.gv, %i.b                     ; 3 uses
  %i.gx = lshr i64 %i.gw, 2
  %i.gy = add nuw nsw i64 %i.gx, 1                ; 2 uses
  %min.iters.check410 = icmp ult i64 %i.gw, 124
  br i1 %min.iters.check410, label %.lr.ph.i.i180.preheader430, label %vector.memcheck411

vector.memcheck411:                               ; preds = %.lr.ph.i.i180.preheader
  %i.gz = and i64 %i.gw, -4                       ; 2 uses
  %i.ha = sub i64 %1, %i.eb
  %i.hb = shl i64 %i.ha, 2
  %i.hc = add i64 %i.hb, -4
  %i.hd = sub i64 %i.hc, %i.gz
  %i.he = getelementptr i8, ptr %0, i64 %i.hd
  %i.hf = sub nuw nsw i64 -4, %i.gz
  %i.hg = getelementptr i8, ptr %3, i64 %i.hf
  %bound0412 = icmp ult ptr %i.he, %3
  %bound1413 = icmp ult ptr %i.hg, %i.ed
  %found.conflict414 = and i1 %bound0412, %bound1413
  br i1 %found.conflict414, label %.lr.ph.i.i180.preheader430, label %vector.ph415

vector.ph415:                                     ; preds = %vector.memcheck411
  %n.vec416 = and i64 %i.gy, 9223372036854775800  ; 3 uses
  %i.hh = mul i64 %n.vec416, -4                   ; 2 uses
  %i.hi = getelementptr i8, ptr %i.ed, i64 %i.hh  ; 2 uses
  %i.hj = getelementptr i8, ptr %3, i64 %i.hh
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph415
  %index418 = phi i64 [ 0, %vector.ph415 ], [ %index.next423, %vector.body417 ] ; 2 uses
  %i.hk = mul i64 %index418, -4                   ; 2 uses
  %next.gep419 = getelementptr i8, ptr %i.ed, i64 %i.hk ; 2 uses
  %next.gep420 = getelementptr i8, ptr %3, i64 %i.hk ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %next.gep420, i64 -16 ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %next.gep420, i64 -32 ; 2 uses
  %wide.load421 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !19, !alias.scope !158
  %wide.load422 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !19, !alias.scope !158
  %i.hn = getelementptr inbounds i8, ptr %next.gep419, i64 -16
  %i.ho = getelementptr inbounds i8, ptr %next.gep419, i64 -32
  store <4 x i32> %wide.load421, ptr %i.hn, align 4, !tbaa !19, !alias.scope !159, !noalias !158
  store <4 x i32> %wide.load422, ptr %i.ho, align 4, !tbaa !19, !alias.scope !159, !noalias !158
  store <4 x i32> zeroinitializer, ptr %i.hl, align 4, !tbaa !19, !alias.scope !158
  store <4 x i32> zeroinitializer, ptr %i.hm, align 4, !tbaa !19, !alias.scope !158
  %index.next423 = add nuw i64 %index418, 8       ; 2 uses
  %i.hp = icmp eq i64 %index.next423, %n.vec416
  br i1 %i.hp, label %middle.block424, label %vector.body417, !llvm.loop !141

middle.block424:                                  ; preds = %vector.body417
  %cmp.n425 = icmp eq i64 %i.gy, %n.vec416
  br i1 %cmp.n425, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180.preheader430

.lr.ph.i.i180.preheader430:                       ; preds = %vector.memcheck411, %.lr.ph.i.i180.preheader, %middle.block424
  %.010.i.i181.ph = phi ptr [ %i.ed, %vector.memcheck411 ], [ %i.ed, %.lr.ph.i.i180.preheader ], [ %i.hi, %middle.block424 ]
  %.079.i.i182.ph = phi ptr [ %3, %vector.memcheck411 ], [ %3, %.lr.ph.i.i180.preheader ], [ %i.hj, %middle.block424 ]
  br label %.lr.ph.i.i180

.lr.ph.i.i180:                                    ; preds = %.lr.ph.i.i180.preheader430, %.lr.ph.i.i180
  %.010.i.i181 = phi ptr [ %i.hr, %.lr.ph.i.i180 ], [ %.010.i.i181.ph, %.lr.ph.i.i180.preheader430 ]
  %.079.i.i182 = phi ptr [ %i.hq, %.lr.ph.i.i180 ], [ %.079.i.i182.ph, %.lr.ph.i.i180.preheader430 ]
  %i.hq = getelementptr inbounds i8, ptr %.079.i.i182, i64 -4 ; 4 uses
  %i.hr = getelementptr inbounds i8, ptr %.010.i.i181, i64 -4 ; 3 uses
  %i.hs = load i32, ptr %i.hq, align 4, !tbaa !19
  store i32 %i.hs, ptr %i.hr, align 4, !tbaa !19
  store i32 0, ptr %i.hq, align 4, !tbaa !19
  %.not.i.i183 = icmp eq ptr %0, %i.hq
  br i1 %.not.i.i183, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180, !llvm.loop !142

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184: ; preds = %.lr.ph.i.i180, %middle.block424, %bb.g
  %i.ht = phi ptr [ %i.ed, %bb.g ], [ %i.hi, %middle.block424 ], [ %i.hr, %.lr.ph.i.i180 ] ; 2 uses
  %.not3.i185 = icmp eq ptr %0, %i.ht
  br i1 %.not3.i185, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, %.lr.ph.i186
  %storemerge4.i187 = phi ptr [ %i.hw, %.lr.ph.i186 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i187, align 4, !tbaa !19
  %i.hu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.hv = add i32 %i.hu, -1
  store i32 %i.hv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.hw = getelementptr inbounds nuw i8, ptr %storemerge4.i187, i64 4 ; 2 uses
  %.not.i188 = icmp eq ptr %i.hw, %i.ht
  br i1 %.not.i188, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i186, !llvm.loop !5

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.k
  %i.hx = getelementptr i8, ptr %i.c, i64 %.idx   ; 10 uses
  %.not17.i198 = icmp eq ptr %i.e, %i.c
  br i1 %.not17.i198, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i199.preheader

.lr.ph.i199.preheader:                            ; preds = %bb.h
  %i.hy = and i64 %i.k, 4
  %lcmp.mod449.not = icmp eq i64 %i.hy, 0
  br i1 %lcmp.mod449.not, label %.lr.ph.i199.prol.loopexit, label %.lr.ph.i199.prol

.lr.ph.i199.prol:                                 ; preds = %.lr.ph.i199.preheader
  %i.hz = add nsw i64 %i.l, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.ia = load i32, ptr %i.hx, align 4, !tbaa !19
  store i32 %i.ia, ptr %i.c, align 4, !tbaa !19
  store i32 0, ptr %i.hx, align 4, !tbaa !19
  %i.ib = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.ic = add i32 %i.ib, 1
  store i32 %i.ic, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %.lr.ph.i199.prol.loopexit

.lr.ph.i199.prol.loopexit:                        ; preds = %.lr.ph.i199.prol, %.lr.ph.i199.preheader
  %.020.i200.unr = phi i64 [ %i.l, %.lr.ph.i199.preheader ], [ %i.hz, %.lr.ph.i199.prol ]
  %.0819.i201.unr = phi ptr [ %i.hx, %.lr.ph.i199.preheader ], [ %i.id, %.lr.ph.i199.prol ]
  %.01618.i202.unr = phi ptr [ %i.c, %.lr.ph.i199.preheader ], [ %i.ie, %.lr.ph.i199.prol ]
  %i.if = icmp eq i64 %i.k, 4
  br i1 %i.if, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205, label %.lr.ph.i199

.lr.ph.i199:                                      ; preds = %.lr.ph.i199.prol.loopexit, %.lr.ph.i199
  %.020.i200 = phi i64 [ %i.il, %.lr.ph.i199 ], [ %.020.i200.unr, %.lr.ph.i199.prol.loopexit ]
  %.0819.i201 = phi ptr [ %i.ip, %.lr.ph.i199 ], [ %.0819.i201.unr, %.lr.ph.i199.prol.loopexit ] ; 4 uses
  %.01618.i202 = phi ptr [ %i.iq, %.lr.ph.i199 ], [ %.01618.i202.unr, %.lr.ph.i199.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i202) ]
  %i.ig = load i32, ptr %.0819.i201, align 4, !tbaa !19
  store i32 %i.ig, ptr %.01618.i202, align 4, !tbaa !19
  store i32 0, ptr %.0819.i201, align 4, !tbaa !19
  %i.ih = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.ii = add i32 %i.ih, 1
  store i32 %i.ii, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.ij = getelementptr inbounds nuw i8, ptr %.0819.i201, i64 4 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.01618.i202, i64 4
  %i.il = add i64 %.020.i200, -2                  ; 2 uses
  %i.im = load i32, ptr %i.ij, align 4, !tbaa !19
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !19
  store i32 0, ptr %i.ij, align 4, !tbaa !19
  %i.in = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.io = add i32 %i.in, 1
  store i32 %i.io, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.ip = getelementptr inbounds nuw i8, ptr %.0819.i201, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %.01618.i202, i64 8
  %.not.i203.1 = icmp eq i64 %i.il, 0
  br i1 %.not.i203.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205, label %.lr.ph.i199, !llvm.loop !4

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205: ; preds = %.lr.ph.i199, %.lr.ph.i199.prol.loopexit
  %.not8.i.i207 = icmp eq ptr %3, %i.hx
  br i1 %.not8.i.i207, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208.preheader

.lr.ph.i.i208.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205
  %i.ir = shl nsw i64 %1, 2
  %i.is = shl i64 %i.b, 1
  %i.it = shl i64 %4, 2
  %i.iu = add i64 %i.ir, %i.is
  %i.iv = add i64 %i.iu, -4
  %i.iw = add i64 %i.g, %i.a
  %i.ix = add i64 %i.iw, %i.it
  %i.iy = sub i64 %i.iv, %i.ix                    ; 2 uses
  %i.iz = lshr i64 %i.iy, 2
  %i.ja = add nuw nsw i64 %i.iz, 1                ; 2 uses
  %min.iters.check327 = icmp ult i64 %i.iy, 188
  br i1 %min.iters.check327, label %.lr.ph.i.i208.preheader437, label %vector.memcheck328

vector.memcheck328:                               ; preds = %.lr.ph.i.i208.preheader
  %i.jb = shl nsw i64 %1, 2                       ; 3 uses
  %i.jc = shl i64 %i.b, 1
  %i.jd = shl i64 %4, 2                           ; 2 uses
  %i.je = add i64 %i.jb, %i.jc
  %i.jf = add i64 %i.je, -4
  %i.jg = add i64 %i.g, %i.a
  %i.jh = add i64 %i.jg, %i.jd
  %i.ji = sub i64 %i.jf, %i.jh
  %i.jj = and i64 %i.ji, -4                       ; 2 uses
  %i.jk = add i64 %i.jb, -4
  %i.jl = sub i64 %i.jk, %i.jj
  %i.jm = getelementptr i8, ptr %0, i64 %i.jl
  %i.jn = add i64 %i.jb, %i.b
  %i.jo = add i64 %i.jn, -4
  %i.jp = add i64 %i.jd, %i.a
  %i.jq = add i64 %i.jp, %i.jj
  %i.jr = sub i64 %i.jo, %i.jq
  %i.js = getelementptr i8, ptr %0, i64 %i.jr
  %bound0329 = icmp ult ptr %i.jm, %i.hx
  %bound1330 = icmp ult ptr %i.js, %i.c
  %found.conflict331 = and i1 %bound0329, %bound1330
  br i1 %found.conflict331, label %.lr.ph.i.i208.preheader437, label %vector.ph332

vector.ph332:                                     ; preds = %vector.memcheck328
  %n.vec333 = and i64 %i.ja, 9223372036854775800  ; 3 uses
  %i.jt = mul i64 %n.vec333, -4                   ; 2 uses
  %i.ju = getelementptr i8, ptr %i.c, i64 %i.jt   ; 2 uses
  %i.jv = getelementptr i8, ptr %i.hx, i64 %i.jt
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph332
  %index335 = phi i64 [ 0, %vector.ph332 ], [ %index.next340, %vector.body334 ] ; 2 uses
  %i.jw = mul i64 %index335, -4                   ; 2 uses
  %next.gep336 = getelementptr i8, ptr %i.c, i64 %i.jw ; 2 uses
  %next.gep337 = getelementptr i8, ptr %i.hx, i64 %i.jw ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %next.gep337, i64 -16 ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %next.gep337, i64 -32 ; 2 uses
  %wide.load338 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !19, !alias.scope !160
  %wide.load339 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !19, !alias.scope !160
  %i.jz = getelementptr inbounds i8, ptr %next.gep336, i64 -16
  %i.ka = getelementptr inbounds i8, ptr %next.gep336, i64 -32
  store <4 x i32> %wide.load338, ptr %i.jz, align 4, !tbaa !19, !alias.scope !161, !noalias !160
  store <4 x i32> %wide.load339, ptr %i.ka, align 4, !tbaa !19, !alias.scope !161, !noalias !160
  store <4 x i32> zeroinitializer, ptr %i.jx, align 4, !tbaa !19, !alias.scope !160
  store <4 x i32> zeroinitializer, ptr %i.jy, align 4, !tbaa !19, !alias.scope !160
  %index.next340 = add nuw i64 %index335, 8       ; 2 uses
  %i.kb = icmp eq i64 %index.next340, %n.vec333
  br i1 %i.kb, label %middle.block341, label %vector.body334, !llvm.loop !146

middle.block341:                                  ; preds = %vector.body334
  %cmp.n342 = icmp eq i64 %i.ja, %n.vec333
  br i1 %cmp.n342, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208.preheader437

.lr.ph.i.i208.preheader437:                       ; preds = %vector.memcheck328, %.lr.ph.i.i208.preheader, %middle.block341
  %.010.i.i209.ph = phi ptr [ %i.c, %vector.memcheck328 ], [ %i.c, %.lr.ph.i.i208.preheader ], [ %i.ju, %middle.block341 ]
  %.079.i.i210.ph = phi ptr [ %i.hx, %vector.memcheck328 ], [ %i.hx, %.lr.ph.i.i208.preheader ], [ %i.jv, %middle.block341 ]
  br label %.lr.ph.i.i208

.lr.ph.i.i208:                                    ; preds = %.lr.ph.i.i208.preheader437, %.lr.ph.i.i208
  %.010.i.i209 = phi ptr [ %i.kd, %.lr.ph.i.i208 ], [ %.010.i.i209.ph, %.lr.ph.i.i208.preheader437 ]
  %.079.i.i210 = phi ptr [ %i.kc, %.lr.ph.i.i208 ], [ %.079.i.i210.ph, %.lr.ph.i.i208.preheader437 ]
  %i.kc = getelementptr inbounds i8, ptr %.079.i.i210, i64 -4 ; 4 uses
  %i.kd = getelementptr inbounds i8, ptr %.010.i.i209, i64 -4 ; 3 uses
  %i.ke = load i32, ptr %i.kc, align 4, !tbaa !19
  store i32 %i.ke, ptr %i.kd, align 4, !tbaa !19
  store i32 0, ptr %i.kc, align 4, !tbaa !19
  %.not.i.i211 = icmp eq ptr %3, %i.kc
  br i1 %.not.i.i211, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208, !llvm.loop !147

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212: ; preds = %.lr.ph.i.i208, %middle.block341, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205
  %i.kf = phi ptr [ %3, %bb.h ], [ %i.c, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205 ], [ %i.ju, %middle.block341 ], [ %i.kd, %.lr.ph.i.i208 ] ; 3 uses
  %i.kg = ptrtoaddr ptr %i.kf to i64
  %i.kh = sub i64 0, %4
  %i.ki = getelementptr [4 x i8], ptr %i.kf, i64 %i.kh ; 11 uses
  %.not6.i.i214 = icmp eq i64 %4, 0
  br i1 %.not6.i.i214, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit221, label %.lr.ph.i.i215.preheader

.lr.ph.i.i215.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212
  %min.iters.check347 = icmp ult i64 %4, 16
  br i1 %min.iters.check347, label %.lr.ph.i.i215.preheader436, label %vector.memcheck345

vector.memcheck345:                               ; preds = %.lr.ph.i.i215.preheader
  %i.kj = shl i64 %4, 2
  %i.kk = add i64 %i.kj, %7
  %i.kl = sub i64 %i.kk, %i.kg
  %diff.check = icmp ugt i64 %i.kl, -32
  br i1 %diff.check, label %.lr.ph.i.i215.preheader436, label %vector.ph348

vector.ph348:                                     ; preds = %vector.memcheck345
  %n.vec349 = and i64 %4, -8                      ; 3 uses
  %i.km = and i64 %4, 7
  %i.kn = shl i64 %n.vec349, 2                    ; 2 uses
  %i.ko = getelementptr i8, ptr %i.ki, i64 %i.kn
  %i.kp = getelementptr i8, ptr %5, i64 %i.kn
  br label %vector.body350

vector.body350:                                   ; preds = %vector.body350, %vector.ph348
  %index351 = phi i64 [ 0, %vector.ph348 ], [ %index.next356, %vector.body350 ] ; 2 uses
  %i.kq = shl i64 %index351, 2                    ; 2 uses
  %next.gep352 = getelementptr i8, ptr %i.ki, i64 %i.kq ; 2 uses
  %next.gep353 = getelementptr i8, ptr %5, i64 %i.kq ; 2 uses
  %i.kr = getelementptr i8, ptr %next.gep353, i64 16
  %wide.load354 = load <4 x i32>, ptr %next.gep353, align 4, !tbaa !19
  %wide.load355 = load <4 x i32>, ptr %i.kr, align 4, !tbaa !19
  %i.ks = getelementptr i8, ptr %next.gep352, i64 16
  store <4 x i32> %wide.load354, ptr %next.gep352, align 4, !tbaa !19
  store <4 x i32> %wide.load355, ptr %i.ks, align 4, !tbaa !19
  %index.next356 = add nuw i64 %index351, 8       ; 2 uses
  %i.kt = icmp eq i64 %index.next356, %n.vec349
  br i1 %i.kt, label %middle.block357, label %vector.body350, !llvm.loop !148

middle.block357:                                  ; preds = %vector.body350
  %cmp.n358 = icmp eq i64 %4, %n.vec349
  br i1 %cmp.n358, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit221, label %.lr.ph.i.i215.preheader436

.lr.ph.i.i215.preheader436:                       ; preds = %vector.memcheck345, %.lr.ph.i.i215.preheader, %middle.block357
  %.09.i.i216.ph = phi i64 [ %4, %vector.memcheck345 ], [ %4, %.lr.ph.i.i215.preheader ], [ %i.km, %middle.block357 ] ; 4 uses
  %.048.i.i217.ph = phi ptr [ %i.ki, %vector.memcheck345 ], [ %i.ki, %.lr.ph.i.i215.preheader ], [ %i.ko, %middle.block357 ] ; 2 uses
  %.sroa.0.07.i.i218.ph = phi ptr [ %5, %vector.memcheck345 ], [ %5, %.lr.ph.i.i215.preheader ], [ %i.kp, %middle.block357 ] ; 2 uses
  %i.ku = add i64 %.09.i.i216.ph, -1
  %xtraiter451 = and i64 %.09.i.i216.ph, 7        ; 2 uses
  %lcmp.mod452.not = icmp eq i64 %xtraiter451, 0
  br i1 %lcmp.mod452.not, label %.lr.ph.i.i215.prol.loopexit, label %.lr.ph.i.i215.prol

.lr.ph.i.i215.prol:                               ; preds = %.lr.ph.i.i215.preheader436, %.lr.ph.i.i215.prol
  %.09.i.i216.prol = phi i64 [ %i.kv, %.lr.ph.i.i215.prol ], [ %.09.i.i216.ph, %.lr.ph.i.i215.preheader436 ]
  %.048.i.i217.prol = phi ptr [ %i.ky, %.lr.ph.i.i215.prol ], [ %.048.i.i217.ph, %.lr.ph.i.i215.preheader436 ] ; 2 uses
  %.sroa.0.07.i.i218.prol = phi ptr [ %i.kx, %.lr.ph.i.i215.prol ], [ %.sroa.0.07.i.i218.ph, %.lr.ph.i.i215.preheader436 ] ; 2 uses
  %prol.iter453 = phi i64 [ %prol.iter453.next, %.lr.ph.i.i215.prol ], [ 0, %.lr.ph.i.i215.preheader436 ]
  %i.kv = add i64 %.09.i.i216.prol, -1            ; 2 uses
  %i.kw = load i32, ptr %.sroa.0.07.i.i218.prol, align 4, !tbaa !19
  store i32 %i.kw, ptr %.048.i.i217.prol, align 4, !tbaa !19
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218.prol, i64 4 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.048.i.i217.prol, i64 4 ; 2 uses
  %prol.iter453.next = add i64 %prol.iter453, 1   ; 2 uses
  %prol.iter453.cmp.not = icmp eq i64 %prol.iter453.next, %xtraiter451
  br i1 %prol.iter453.cmp.not, label %.lr.ph.i.i215.prol.loopexit, label %.lr.ph.i.i215.prol, !llvm.loop !149

.lr.ph.i.i215.prol.loopexit:                      ; preds = %.lr.ph.i.i215.prol, %.lr.ph.i.i215.preheader436
  %.09.i.i216.unr = phi i64 [ %.09.i.i216.ph, %.lr.ph.i.i215.preheader436 ], [ %i.kv, %.lr.ph.i.i215.prol ]
  %.048.i.i217.unr = phi ptr [ %.048.i.i217.ph, %.lr.ph.i.i215.preheader436 ], [ %i.ky, %.lr.ph.i.i215.prol ]
  %.sroa.0.07.i.i218.unr = phi ptr [ %.sroa.0.07.i.i218.ph, %.lr.ph.i.i215.preheader436 ], [ %i.kx, %.lr.ph.i.i215.prol ]
  %i.kz = icmp ult i64 %i.ku, 7
  br i1 %i.kz, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit221, label %.lr.ph.i.i215

.lr.ph.i.i215:                                    ; preds = %.lr.ph.i.i215.prol.loopexit, %.lr.ph.i.i215
  %.09.i.i216 = phi i64 [ %i.lv, %.lr.ph.i.i215 ], [ %.09.i.i216.unr, %.lr.ph.i.i215.prol.loopexit ]
  %.048.i.i217 = phi ptr [ %i.ly, %.lr.ph.i.i215 ], [ %.048.i.i217.unr, %.lr.ph.i.i215.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i218 = phi ptr [ %i.lx, %.lr.ph.i.i215 ], [ %.sroa.0.07.i.i218.unr, %.lr.ph.i.i215.prol.loopexit ] ; 9 uses
  %i.la = load i32, ptr %.sroa.0.07.i.i218, align 4, !tbaa !19
  store i32 %i.la, ptr %.048.i.i217, align 4, !tbaa !19
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 4
  %i.lc = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 4
  %i.ld = load i32, ptr %i.lb, align 4, !tbaa !19
  store i32 %i.ld, ptr %i.lc, align 4, !tbaa !19
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 8
  %i.lf = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 8
  %i.lg = load i32, ptr %i.le, align 4, !tbaa !19
  store i32 %i.lg, ptr %i.lf, align 4, !tbaa !19
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 12
  %i.li = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 12
  %i.lj = load i32, ptr %i.lh, align 4, !tbaa !19
  store i32 %i.lj, ptr %i.li, align 4, !tbaa !19
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 16
  %i.ll = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 16
  %i.lm = load i32, ptr %i.lk, align 4, !tbaa !19
  store i32 %i.lm, ptr %i.ll, align 4, !tbaa !19
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 20
  %i.lo = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 20
  %i.lp = load i32, ptr %i.ln, align 4, !tbaa !19
  store i32 %i.lp, ptr %i.lo, align 4, !tbaa !19
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 24
  %i.lr = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 24
  %i.ls = load i32, ptr %i.lq, align 4, !tbaa !19
  store i32 %i.ls, ptr %i.lr, align 4, !tbaa !19
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 28
  %i.lu = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 28
  %i.lv = add i64 %.09.i.i216, -8                 ; 2 uses
  %i.lw = load i32, ptr %i.lt, align 4, !tbaa !19
  store i32 %i.lw, ptr %i.lu, align 4, !tbaa !19
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 32
  %i.ly = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 32
  %.not.i.i219.7 = icmp eq i64 %i.lv, 0
  br i1 %.not.i.i219.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit221, label %.lr.ph.i.i215, !llvm.loop !150

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit221: ; preds = %.lr.ph.i.i215.prol.loopexit, %.lr.ph.i.i215, %middle.block357, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212
  %.not.i222 = icmp eq ptr %3, %i.ki
  br i1 %.not.i222, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit221
  %.not8.i.i223 = icmp eq ptr %0, %3
  br i1 %.not8.i.i223, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit228, label %.lr.ph.i.i224.preheader

.lr.ph.i.i224.preheader:                          ; preds = %bb.i
  %i.lz = add i64 %i.g, -4
  %i.ma = sub i64 %i.lz, %i.b                     ; 3 uses
  %i.mb = lshr i64 %i.ma, 2
  %i.mc = add nuw nsw i64 %i.mb, 1                ; 2 uses
  %min.iters.check368 = icmp ult i64 %i.ma, 108
  br i1 %min.iters.check368, label %.lr.ph.i.i224.preheader434, label %vector.memcheck369

vector.memcheck369:                               ; preds = %.lr.ph.i.i224.preheader
  %i.md = shl i64 %4, 2
  %i.me = and i64 %i.ma, -4                       ; 2 uses
  %i.mf = add i64 %i.md, %i.me
  %i.mg = sub nuw nsw i64 -4, %i.mf
  %i.mh = getelementptr i8, ptr %i.kf, i64 %i.mg
  %i.mi = sub nuw nsw i64 -4, %i.me
  %i.mj = getelementptr i8, ptr %3, i64 %i.mi
  %bound0370 = icmp ult ptr %i.mh, %3
  %bound1371 = icmp ult ptr %i.mj, %i.ki
  %found.conflict372 = and i1 %bound0370, %bound1371
  br i1 %found.conflict372, label %.lr.ph.i.i224.preheader434, label %vector.ph373

vector.ph373:                                     ; preds = %vector.memcheck369
  %n.vec374 = and i64 %i.mc, 9223372036854775800  ; 3 uses
  %i.mk = mul i64 %n.vec374, -4                   ; 2 uses
  %i.ml = getelementptr i8, ptr %i.ki, i64 %i.mk  ; 2 uses
  %i.mm = getelementptr i8, ptr %3, i64 %i.mk
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph373
  %index376 = phi i64 [ 0, %vector.ph373 ], [ %index.next381, %vector.body375 ] ; 2 uses
  %i.mn = mul i64 %index376, -4                   ; 2 uses
  %next.gep377 = getelementptr i8, ptr %i.ki, i64 %i.mn ; 2 uses
  %next.gep378 = getelementptr i8, ptr %3, i64 %i.mn ; 2 uses
  %i.mo = getelementptr inbounds i8, ptr %next.gep378, i64 -16 ; 2 uses
  %i.mp = getelementptr inbounds i8, ptr %next.gep378, i64 -32 ; 2 uses
  %wide.load379 = load <4 x i32>, ptr %i.mo, align 4, !tbaa !19, !alias.scope !162
  %wide.load380 = load <4 x i32>, ptr %i.mp, align 4, !tbaa !19, !alias.scope !162
  %i.mq = getelementptr inbounds i8, ptr %next.gep377, i64 -16
  %i.mr = getelementptr inbounds i8, ptr %next.gep377, i64 -32
  store <4 x i32> %wide.load379, ptr %i.mq, align 4, !tbaa !19, !alias.scope !163, !noalias !162
  store <4 x i32> %wide.load380, ptr %i.mr, align 4, !tbaa !19, !alias.scope !163, !noalias !162
  store <4 x i32> zeroinitializer, ptr %i.mo, align 4, !tbaa !19, !alias.scope !162
  store <4 x i32> zeroinitializer, ptr %i.mp, align 4, !tbaa !19, !alias.scope !162
  %index.next381 = add nuw i64 %index376, 8       ; 2 uses
  %i.ms = icmp eq i64 %index.next381, %n.vec374
  br i1 %i.ms, label %middle.block382, label %vector.body375, !llvm.loop !154

middle.block382:                                  ; preds = %vector.body375
  %cmp.n383 = icmp eq i64 %i.mc, %n.vec374
  br i1 %cmp.n383, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit228, label %.lr.ph.i.i224.preheader434

.lr.ph.i.i224.preheader434:                       ; preds = %vector.memcheck369, %.lr.ph.i.i224.preheader, %middle.block382
  %.010.i.i225.ph = phi ptr [ %i.ki, %vector.memcheck369 ], [ %i.ki, %.lr.ph.i.i224.preheader ], [ %i.ml, %middle.block382 ]
  %.079.i.i226.ph = phi ptr [ %3, %vector.memcheck369 ], [ %3, %.lr.ph.i.i224.preheader ], [ %i.mm, %middle.block382 ]
  br label %.lr.ph.i.i224

.lr.ph.i.i224:                                    ; preds = %.lr.ph.i.i224.preheader434, %.lr.ph.i.i224
  %.010.i.i225 = phi ptr [ %i.mu, %.lr.ph.i.i224 ], [ %.010.i.i225.ph, %.lr.ph.i.i224.preheader434 ]
  %.079.i.i226 = phi ptr [ %i.mt, %.lr.ph.i.i224 ], [ %.079.i.i226.ph, %.lr.ph.i.i224.preheader434 ]
  %i.mt = getelementptr inbounds i8, ptr %.079.i.i226, i64 -4 ; 4 uses
  %i.mu = getelementptr inbounds i8, ptr %.010.i.i225, i64 -4 ; 3 uses
  %i.mv = load i32, ptr %i.mt, align 4, !tbaa !19
  store i32 %i.mv, ptr %i.mu, align 4, !tbaa !19
  store i32 0, ptr %i.mt, align 4, !tbaa !19
  %.not.i.i227 = icmp eq ptr %0, %i.mt
  br i1 %.not.i.i227, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit228, label %.lr.ph.i.i224, !llvm.loop !155

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit228: ; preds = %.lr.ph.i.i224, %middle.block382, %bb.i
  %i.mw = phi ptr [ %i.ki, %bb.i ], [ %i.ml, %middle.block382 ], [ %i.mu, %.lr.ph.i.i224 ] ; 2 uses
  %.not3.i229 = icmp eq ptr %0, %i.mw
  br i1 %.not3.i229, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i230

.lr.ph.i230:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit228, %.lr.ph.i230
  %storemerge4.i231 = phi ptr [ %i.mz, %.lr.ph.i230 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit228 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i231, align 4, !tbaa !19
  %i.mx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.my = add i32 %i.mx, -1
  store i32 %i.my, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.mz = getelementptr inbounds nuw i8, ptr %storemerge4.i231, i64 4 ; 2 uses
  %.not.i232 = icmp eq ptr %i.mz, %i.mw
  br i1 %.not.i232, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i230, !llvm.loop !5

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i142, %.lr.ph.i230, %.lr.ph.i186, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit221, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit177, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit228, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = ptrtoaddr ptr %1 to i64
  %.not103 = icmp eq ptr %2, %3
  br i1 %.not103, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 21 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.m = sub i64 %i.j, %i.l                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr i8, ptr %i.h, i64 %.idx    ; 7 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 3 uses
  %i.q = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !19
  store i32 %i.q, ptr %.013.i.i.i.i.i, align 4, !tbaa !19
  store i32 0, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !19
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !164

_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.v, ptr %i.g, align 8, !tbaa !24
  %i.w = ptrtoint ptr %i.p to i64
  %i.x = sub i64 %i.w, %i.l                       ; 2 uses
  %i.y = ashr exact i64 %i.x, 2                   ; 8 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.i.i.i.i51.preheader, label %_ZSt13move_backwardIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i51.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %min.iters.check139 = icmp ult i64 %i.y, 16
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i51.preheader204, label %vector.memcheck140

vector.memcheck140:                               ; preds = %.lr.ph.i.i.i.i.i51.preheader
  %i.aa = mul nsw i64 %i.y, -4
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.aa
  %i.ac = add i64 %i.x, %i.a
  %i.ad = sub i64 %i.b, %i.ac
  %i.ae = getelementptr i8, ptr %i.h, i64 %i.ad
  %bound0 = icmp ult ptr %i.ab, %i.p
  %bound1 = icmp ult ptr %i.ae, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i51.preheader204, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck140
  %n.vec142 = and i64 %i.y, 9223372036854775800   ; 3 uses
  %i.af = and i64 %i.y, 7
  %i.ag = mul i64 %n.vec142, -4                   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.h, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.p, i64 %i.ag
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body143 ] ; 2 uses
  %i.aj = mul i64 %index144, -4                   ; 2 uses
  %next.gep145 = getelementptr i8, ptr %i.h, i64 %i.aj ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.p, i64 %i.aj ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %next.gep146, i64 -16 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %next.gep146, i64 -32 ; 2 uses
  %wide.load147 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !19, !alias.scope !181
  %wide.load148 = load <4 x i32>, ptr %i.al, align 4, !tbaa !19, !alias.scope !181
  %i.am = getelementptr inbounds i8, ptr %next.gep145, i64 -16
  %i.an = getelementptr inbounds i8, ptr %next.gep145, i64 -32
  store <4 x i32> %wide.load147, ptr %i.am, align 4, !tbaa !19, !alias.scope !182, !noalias !181
  store <4 x i32> %wide.load148, ptr %i.an, align 4, !tbaa !19, !alias.scope !182, !noalias !181
  store <4 x i32> zeroinitializer, ptr %i.ak, align 4, !tbaa !19, !alias.scope !181
  store <4 x i32> zeroinitializer, ptr %i.al, align 4, !tbaa !19, !alias.scope !181
  %index.next149 = add nuw i64 %index144, 8       ; 2 uses
  %i.ao = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.ao, label %middle.block150, label %vector.body143, !llvm.loop !168

middle.block150:                                  ; preds = %vector.body143
  %cmp.n151 = icmp eq i64 %i.y, %n.vec142
  br i1 %cmp.n151, label %_ZSt13move_backwardIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i51.preheader204

.lr.ph.i.i.i.i.i51.preheader204:                  ; preds = %vector.memcheck140, %.lr.ph.i.i.i.i.i51.preheader, %middle.block150
  %.010.i.i.i.i.i.ph = phi i64 [ %i.y, %vector.memcheck140 ], [ %i.y, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.af, %middle.block150 ]
  %.069.i.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck140 ], [ %i.h, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.ah, %middle.block150 ]
  %.078.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck140 ], [ %i.p, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.ai, %middle.block150 ]
  br label %.lr.ph.i.i.i.i.i51

.lr.ph.i.i.i.i.i51:                               ; preds = %.lr.ph.i.i.i.i.i51.preheader204, %.lr.ph.i.i.i.i.i51
  %.010.i.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i51 ], [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i51.preheader204 ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i51 ], [ %.069.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i51.preheader204 ]
  %.078.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i51 ], [ %.078.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i51.preheader204 ]
  %i.ap = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4 ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4 ; 2 uses
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !19
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !19
  store i32 0, ptr %i.ap, align 4, !tbaa !19
  %i.as = add nsw i64 %.010.i.i.i.i.i, -1
  %i.at = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit, !llvm.loop !169

_ZSt13move_backwardIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i51, %middle.block150, %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.au = icmp sgt i64 %i.d, 0
  br i1 %i.au, label %.lr.ph.i.i.i.i.i52.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i52.preheader:                     ; preds = %_ZSt13move_backwardIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit
  %min.iters.check158 = icmp ult i64 %i.d, 8
  %i.av = sub i64 %i.b, %i.l
  %diff.check156 = icmp ugt i64 %i.av, -32
  %or.cond = or i1 %min.iters.check158, %diff.check156
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i52.preheader203, label %vector.ph159

vector.ph159:                                     ; preds = %.lr.ph.i.i.i.i.i52.preheader
  %n.vec160 = and i64 %i.d, 9223372036854775800   ; 3 uses
  %i.aw = and i64 %i.d, 7
  %i.ax = shl i64 %n.vec160, 2                    ; 2 uses
  %i.ay = getelementptr i8, ptr %1, i64 %i.ax
  %i.az = getelementptr i8, ptr %2, i64 %i.ax
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next167, %vector.body161 ] ; 2 uses
  %i.ba = shl i64 %index162, 2                    ; 2 uses
  %next.gep163 = getelementptr i8, ptr %1, i64 %i.ba ; 2 uses
  %next.gep164 = getelementptr i8, ptr %2, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep164, i64 16
  %wide.load165 = load <4 x i32>, ptr %next.gep164, align 4, !tbaa !19
  %wide.load166 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !19
  %i.bc = getelementptr i8, ptr %next.gep163, i64 16
  store <4 x i32> %wide.load165, ptr %next.gep163, align 4, !tbaa !19
  store <4 x i32> %wide.load166, ptr %i.bc, align 4, !tbaa !19
  %index.next167 = add nuw i64 %index162, 8       ; 2 uses
  %i.bd = icmp eq i64 %index.next167, %n.vec160
  br i1 %i.bd, label %middle.block168, label %vector.body161, !llvm.loop !170

middle.block168:                                  ; preds = %vector.body161
  %cmp.n169 = icmp eq i64 %i.d, %n.vec160
  br i1 %cmp.n169, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i.i52.preheader203

.lr.ph.i.i.i.i.i52.preheader203:                  ; preds = %.lr.ph.i.i.i.i.i52.preheader, %middle.block168
  %.012.i.i.i.i.i.ph = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.aw, %middle.block168 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.ay, %middle.block168 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.az, %middle.block168 ]
  br label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %.lr.ph.i.i.i.i.i52.preheader203, %.lr.ph.i.i.i.i.i52
  %.012.i.i.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i52 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i52.preheader203 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i52 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i52.preheader203 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i52 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i52.preheader203 ] ; 2 uses
  %i.be = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !19
  store i32 %i.be, ptr %.0811.i.i.i.i.i, align 4, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.bh = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bi = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, !llvm.loop !171

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bj = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not11.i.i.i.i = icmp eq ptr %i.bj, %3
  br i1 %.not11.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i ], [ %i.bj, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.bk = load i32, ptr %.sroa.08.012.i.i.i.i, align 4, !tbaa !19
  store i32 %i.bk, ptr %.013.i.i.i.i, align 4, !tbaa !19
  %i.bl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bn, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !172

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.not11.i.i.i.i.i53 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i53, label %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit59, label %.lr.ph.i.i.i.i.i54.preheader

.lr.ph.i.i.i.i.i54.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  %i.bp = sub nuw nsw i64 %i.d, %i.n
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bp
  br label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54.preheader, %.lr.ph.i.i.i.i.i54
  %.013.i.i.i.i.i55 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i54 ], [ %i.bq, %.lr.ph.i.i.i.i.i54.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i56 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i54 ], [ %1, %.lr.ph.i.i.i.i.i54.preheader ] ; 3 uses
  %i.br = load i32, ptr %.sroa.08.012.i.i.i.i.i56, align 4, !tbaa !19
  store i32 %i.br, ptr %.013.i.i.i.i.i55, align 4, !tbaa !19
  store i32 0, ptr %.sroa.08.012.i.i.i.i.i56, align 4, !tbaa !19
  %i.bs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i56, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i55, i64 4
  %.not.i.i.i.i.i57 = icmp eq ptr %i.bu, %i.h
  br i1 %.not.i.i.i.i.i57, label %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit59, label %.lr.ph.i.i.i.i.i54, !llvm.loop !164

_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit59: ; preds = %.lr.ph.i.i.i.i.i54, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.bw, ptr %i.g, align 8, !tbaa !24
  %i.bx = ashr exact i64 %i.m, 2                  ; 6 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i61.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i61.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit59
  %min.iters.check = icmp ult i64 %i.bx, 8
  %i.bz = sub i64 %i.b, %i.l
  %diff.check = icmp ugt i64 %i.bz, -32
  %or.cond197 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond197, label %.lr.ph.i.i.i.i.i61.preheader205, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i61.preheader
  %n.vec = and i64 %i.bx, 9223372036854775800     ; 3 uses
  %i.ca = and i64 %i.bx, 7
  %i.cb = shl i64 %n.vec, 2                       ; 2 uses
  %i.cc = getelementptr i8, ptr %1, i64 %i.cb
  %i.cd = getelementptr i8, ptr %2, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.ce ; 2 uses
  %next.gep132 = getelementptr i8, ptr %2, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep132, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep132, align 4, !tbaa !19
  %wide.load133 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !19
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !19
  store <4 x i32> %wide.load133, ptr %i.cg, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i.i61.preheader205

.lr.ph.i.i.i.i.i61.preheader205:                  ; preds = %.lr.ph.i.i.i.i.i61.preheader, %middle.block
  %.012.i.i.i.i.i62.ph = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.i61.preheader ], [ %i.ca, %middle.block ]
  %.0811.i.i.i.i.i63.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i61.preheader ], [ %i.cc, %middle.block ]
  %.0910.i.i.i.i.i64.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i61.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i61

.lr.ph.i.i.i.i.i61:                               ; preds = %.lr.ph.i.i.i.i.i61.preheader205, %.lr.ph.i.i.i.i.i61
  %.012.i.i.i.i.i62 = phi i64 [ %i.cl, %.lr.ph.i.i.i.i.i61 ], [ %.012.i.i.i.i.i62.ph, %.lr.ph.i.i.i.i.i61.preheader205 ] ; 2 uses
  %.0811.i.i.i.i.i63 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i61 ], [ %.0811.i.i.i.i.i63.ph, %.lr.ph.i.i.i.i.i61.preheader205 ] ; 2 uses
  %.0910.i.i.i.i.i64 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i61 ], [ %.0910.i.i.i.i.i64.ph, %.lr.ph.i.i.i.i.i61.preheader205 ] ; 2 uses
  %i.ci = load i32, ptr %.0910.i.i.i.i.i64, align 4, !tbaa !19
  store i32 %i.ci, ptr %.0811.i.i.i.i.i63, align 4, !tbaa !19
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i64, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i63, i64 4
  %i.cl = add nsw i64 %.012.i.i.i.i.i62, -1
  %i.cm = icmp samesign ugt i64 %.012.i.i.i.i.i62, 1
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i61, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, !llvm.loop !174

bb.e:                                             ; preds = %bb.b
  %i.cn = load ptr, ptr %0, align 8, !tbaa !23    ; 12 uses
  %i.co = ptrtoint ptr %i.cn to i64               ; 3 uses
  %i.cp = sub i64 %i.j, %i.co
  %i.cq = ashr exact i64 %i.cp, 2                 ; 4 uses
  %i.cr = sub nsw i64 2305843009213693951, %i.cq
  %i.cs = icmp ult i64 %i.cr, %i.d
  br i1 %i.cs, label %bb.f, label %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #20
  unreachable

_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.d)
  %i.ct = add nsw i64 %.sroa.speculated.i, %i.cq  ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cq
  %i.cv = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 2305843009213693951)
  %i.cw = select i1 %i.cu, i64 2305843009213693951, i64 %i.cv ; 3 uses
  %.not.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit
  %i.cx = shl nuw nsw i64 %i.cw, 2
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #18
  br label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.cz = phi ptr [ %i.cy, %bb.g ], [ null, %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.not13.i.i.i.i.i = icmp eq ptr %i.cn, %1
  br i1 %.not13.i.i.i.i.i, label %.lr.ph.i.i.i.i70.preheader, label %.lr.ph.i.i.i.i.i66.preheader

.lr.ph.i.i.i.i.i66.preheader:                     ; preds = %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17 ; 3 uses
  %i.da = add i64 %4, -4
  %i.db = sub i64 %i.da, %i.co                    ; 3 uses
  %i.dc = lshr i64 %i.db, 2
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check178 = icmp ult i64 %i.db, 60
  br i1 %min.iters.check178, label %.lr.ph.i.i.i.i.i66.preheader199, label %vector.memcheck179

vector.memcheck179:                               ; preds = %.lr.ph.i.i.i.i.i66.preheader
  %i.de = and i64 %i.db, -4
  %i.df = getelementptr i8, ptr %i.cn, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 4
  %bound0180 = icmp ugt ptr %i.dg, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1181 = icmp ult ptr %i.cn, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict182 = and i1 %bound0180, %bound1181
  br i1 %found.conflict182, label %.lr.ph.i.i.i.i.i66.preheader199, label %vector.ph183

vector.ph183:                                     ; preds = %vector.memcheck179
  %n.vec184 = and i64 %i.dd, 9223372036854775800  ; 3 uses
  %i.dh = shl i64 %n.vec184, 2                    ; 2 uses
  %i.di = getelementptr i8, ptr %i.cz, i64 %i.dh  ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cn, i64 %i.dh
  %i.dk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph183
  %index186 = phi i64 [ 0, %vector.ph183 ], [ %index.next192, %vector.body185 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.dk, %vector.ph183 ], [ %i.do, %vector.body185 ]
  %vec.phi187 = phi <4 x i32> [ zeroinitializer, %vector.ph183 ], [ %i.dp, %vector.body185 ]
  %i.dl = shl i64 %index186, 2                    ; 2 uses
  %next.gep188 = getelementptr i8, ptr %i.cz, i64 %i.dl ; 2 uses
  %next.gep189 = getelementptr i8, ptr %i.cn, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep189, i64 16
  %wide.load190 = load <4 x i32>, ptr %next.gep189, align 4, !tbaa !19, !alias.scope !183
  %wide.load191 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !19, !alias.scope !183
  %i.dn = getelementptr i8, ptr %next.gep188, i64 16
  store <4 x i32> %wide.load190, ptr %next.gep188, align 4, !tbaa !19
  store <4 x i32> %wide.load191, ptr %i.dn, align 4, !tbaa !19
  %i.do = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.dp = add <4 x i32> %vec.phi187, splat (i32 1) ; 2 uses
  %index.next192 = add nuw i64 %index186, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next192, %n.vec184
  br i1 %i.dq, label %middle.block193, label %vector.body185, !llvm.loop !177

middle.block193:                                  ; preds = %vector.body185
  %bin.rdx = add <4 x i32> %i.dp, %i.do
  %i.dr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.dr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17, !alias.scope !184, !noalias !183
  %cmp.n194 = icmp eq i64 %i.dd, %n.vec184
  br i1 %cmp.n194, label %.lr.ph.i.i.i.i70.preheader, label %.lr.ph.i.i.i.i.i66.preheader199

.lr.ph.i.i.i.i.i66.preheader199:                  ; preds = %vector.memcheck179, %.lr.ph.i.i.i.i.i66.preheader, %middle.block193
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck179 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.i.i.i66.preheader ], [ %i.dr, %middle.block193 ]
  %.015.i.i.i.i.i.ph = phi ptr [ %i.cz, %vector.memcheck179 ], [ %i.cz, %.lr.ph.i.i.i.i.i66.preheader ], [ %i.di, %middle.block193 ]
  %.01214.i.i.i.i.i.ph = phi ptr [ %i.cn, %vector.memcheck179 ], [ %i.cn, %.lr.ph.i.i.i.i.i66.preheader ], [ %i.dj, %middle.block193 ]
  br label %.lr.ph.i.i.i.i.i66

.lr.ph.i.i.i.i.i66:                               ; preds = %.lr.ph.i.i.i.i.i66.preheader199, %.lr.ph.i.i.i.i.i66
  %i.ds = phi i32 [ %i.du, %.lr.ph.i.i.i.i.i66 ], [ %.ph, %.lr.ph.i.i.i.i.i66.preheader199 ]
  %.015.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i66 ], [ %.015.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i66.preheader199 ] ; 2 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i66 ], [ %.01214.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i66.preheader199 ] ; 2 uses
  %i.dt = load i32, ptr %.01214.i.i.i.i.i, align 4, !tbaa !19
  store i32 %i.dt, ptr %.015.i.i.i.i.i, align 4, !tbaa !19
  %i.du = add i32 %i.ds, 1                        ; 2 uses
  store i32 %i.du, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.dv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i67 = icmp eq ptr %i.dv, %1
  br i1 %.not.i.i.i.i.i67, label %.lr.ph.i.i.i.i70.preheader, label %.lr.ph.i.i.i.i.i66, !llvm.loop !179

.lr.ph.i.i.i.i70.preheader:                       ; preds = %.lr.ph.i.i.i.i.i66, %middle.block193, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit
  %.013.i.i.i.i71.ph = phi ptr [ %i.cz, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit ], [ %i.di, %middle.block193 ], [ %i.dw, %.lr.ph.i.i.i.i.i66 ]
  br label %.lr.ph.i.i.i.i70

.lr.ph.i.i.i.i70:                                 ; preds = %.lr.ph.i.i.i.i70.preheader, %.lr.ph.i.i.i.i70
  %.013.i.i.i.i71 = phi ptr [ %i.eb, %.lr.ph.i.i.i.i70 ], [ %.013.i.i.i.i71.ph, %.lr.ph.i.i.i.i70.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i72 = phi ptr [ %i.ea, %.lr.ph.i.i.i.i70 ], [ %2, %.lr.ph.i.i.i.i70.preheader ] ; 2 uses
  %i.dx = load i32, ptr %.sroa.08.012.i.i.i.i72, align 4, !tbaa !19
  store i32 %i.dx, ptr %.013.i.i.i.i71, align 4, !tbaa !19
  %i.dy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i72, i64 4 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i71, i64 4 ; 3 uses
  %.not.i.i.i.i73 = icmp eq ptr %i.ea, %3
  br i1 %.not.i.i.i.i73, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit75, label %.lr.ph.i.i.i.i70, !llvm.loop !172

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit75: ; preds = %.lr.ph.i.i.i.i70
  %.not13.i.i.i.i.i76 = icmp eq ptr %1, %i.h
  br i1 %.not13.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit82, label %.lr.ph.i.i.i.i.i77

.lr.ph.i.i.i.i.i77:                               ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit75, %.lr.ph.i.i.i.i.i77
  %.015.i.i.i.i.i78 = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i77 ], [ %i.eb, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit75 ] ; 2 uses
  %.01214.i.i.i.i.i79 = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i77 ], [ %1, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit75 ] ; 2 uses
  %i.ec = load i32, ptr %.01214.i.i.i.i.i79, align 4, !tbaa !19
  store i32 %i.ec, ptr %.015.i.i.i.i.i78, align 4, !tbaa !19
  %i.ed = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.ef = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i79, i64 4 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i78, i64 4 ; 2 uses
  %.not.i.i.i.i.i80 = icmp eq ptr %i.ef, %i.h
  br i1 %.not.i.i.i.i.i80, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit82, label %.lr.ph.i.i.i.i.i77, !llvm.loop !180

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit82: ; preds = %.lr.ph.i.i.i.i.i77, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit75
  %.0.lcssa.i.i.i.i.i81 = phi ptr [ %i.eb, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit75 ], [ %i.eg, %.lr.ph.i.i.i.i.i77 ]
  %.not4.i.i = icmp eq ptr %i.cn, %i.h
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit82, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ej, %.lr.ph.i.i ], [ %i.cn, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit82 ] ; 2 uses
  store i32 -2147483648, ptr %.05.i.i, align 4, !tbaa !19
  %i.eh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.ei = add i32 %i.eh, -1
  store i32 %i.ei, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.ej = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ej, %i.h
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit82
  %.not.i83 = icmp eq ptr %i.cn, null
  br i1 %.not.i83, label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit
  %i.ek = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 %i.el, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.em) #19
  br label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, %bb.h
  store ptr %i.cz, ptr %0, align 8, !tbaa !23
  store ptr %.0.lcssa.i.i.i.i.i81, ptr %i.g, align 8, !tbaa !24
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cw
  store ptr %i.en, ptr %i.e, align 8, !tbaa !25
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i61, %.lr.ph.i.i.i.i.i52, %middle.block, %middle.block168, %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit59, %_ZSt13move_backwardIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !16}
!1 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!2 = distinct !{!2, !16}
!3 = distinct !{!3, !16}
!4 = distinct !{!4, !16}
!5 = distinct !{!5, !16}
!6 = distinct !{!6, !16}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C++ TBAA"}
end_hunk_0
