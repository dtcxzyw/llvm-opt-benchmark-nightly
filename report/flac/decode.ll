Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/decode?download=true
inline.NumInlined: 55
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 21
begin_hunk_0_@write_callback:bb.a
  br i1 %niter1039.ncmp.3.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph632, !llvm.loop !107

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph632
  %lcmp.mod1036.not = icmp eq i64 %xtraiter1034, 0
  br i1 %lcmp.mod1036.not, label %.loopexit, label %.lr.ph632.epil.preheader

.lr.ph632.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph632.preheader
  %indvars.iv861.epil.init = phi i64 [ 0, %.lr.ph632.preheader ], [ %indvars.iv.next862.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod1037 = icmp ne i64 %xtraiter1034, 0
  call void @llvm.assume(i1 %lcmp.mod1037)
  br label %.lr.ph632.epil

.lr.ph632.epil:                                   ; preds = %.lr.ph632.epil, %.lr.ph632.epil.preheader
  %indvars.iv861.epil = phi i64 [ %indvars.iv861.epil.init, %.lr.ph632.epil.preheader ], [ %indvars.iv.next862.epil, %.lr.ph632.epil ] ; 3 uses
  %epil.iter1035 = phi i64 [ 0, %.lr.ph632.epil.preheader ], [ %epil.iter1035.next, %.lr.ph632.epil ]
  %i.st = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv861.epil ; 2 uses
  %i.su = load i8, ptr %i.st, align 2, !tbaa !13
  %i.sv = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv861.epil
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 1 ; 2 uses
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !13
  store i8 %i.sx, ptr %i.st, align 2, !tbaa !13
  store i8 %i.su, ptr %i.sw, align 1, !tbaa !13
  %indvars.iv.next862.epil = add nuw nsw i64 %indvars.iv861.epil, 2
  %epil.iter1035.next = add i64 %epil.iter1035, 1 ; 2 uses
  %epil.iter1035.cmp.not = icmp eq i64 %epil.iter1035.next, %xtraiter1034
  br i1 %epil.iter1035.cmp.not, label %.loopexit, label %.lr.ph632.epil, !llvm.loop !108

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph632.epil, %.loopexit515, %bb.bt
  %.pre-phi = phi i32 [ %i.rt, %.loopexit515 ], [ 0, %bb.bt ], [ %i.rt, %.lr.ph632.epil ], [ %i.rt, %.loopexit.loopexit.unr-lcssa ]
  %i.sy = zext i32 %.pre-phi to i64
  br label %.loopexit538

bb.bu:                                            ; preds = %bb.bj
  %.not644 = icmp eq i32 %i.g, 0                  ; 2 uses
  br i1 %i.hk, label %.preheader531, label %.preheader534

.preheader534:                                    ; preds = %bb.bu
  br i1 %.not644, label %.loopexit532, label %.preheader533.us.preheader

.preheader533.us.preheader:                       ; preds = %.preheader534
  %wide.trip.count755 = zext i32 %i.g to i64      ; 2 uses
  %xtraiter963 = and i64 %wide.trip.count755, 3   ; 3 uses
  %i.sz = icmp ult i32 %i.g, 4
  %unroll_iter968.a = and i64 %wide.trip.count755, 4294967292
  %lcmp.mod965.not = icmp eq i64 %xtraiter963, 0
  %lcmp.mod967.a = icmp ne i64 %xtraiter963, 0
  br label %.preheader533.us

.preheader533.us:                                 ; preds = %.preheader533.us.preheader, %._crit_edge587.us
  %indvars.iv757 = phi i64 [ 0, %.preheader533.us.preheader ], [ %indvars.iv.next758, %._crit_edge587.us ] ; 6 uses
  %.13589.us = phi i64 [ 0, %.preheader533.us.preheader ], [ %indvars.iv.next751.lcssa, %._crit_edge587.us ] ; 2 uses
  br i1 %i.sz, label %.epil.preheader962, label %.preheader533.us.new

.preheader533.us.new:                             ; preds = %.preheader533.us, %.preheader533.us.new
  %indvars.iv750 = phi i64 [ %indvars.iv.next751.3, %.preheader533.us.new ], [ %.13589.us, %.preheader533.us ] ; 5 uses
  %indvars.iv748 = phi i64 [ %indvars.iv.next749.3, %.preheader533.us.new ], [ 0, %.preheader533.us ] ; 5 uses
  %niter969.a = phi i64 [ %niter969.next.3, %.preheader533.us.new ], [ 0, %.preheader533.us ]
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv748
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !142
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %indvars.iv757
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !14
  %i.te = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv750
  store i32 %i.td, ptr %i.te, align 4, !tbaa !13
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv748
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !142
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %indvars.iv757
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !14
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv750
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 4
  store i32 %i.tj, ptr %i.tl, align 4, !tbaa !13
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv748
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !142
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %indvars.iv757
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !14
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv750
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  store i32 %i.tq, ptr %i.ts, align 4, !tbaa !13
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv748
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 24
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !142
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %indvars.iv757
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !14
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv750
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 12
  store i32 %i.tx, ptr %i.tz, align 4, !tbaa !13
  %indvars.iv.next749.3 = add nuw nsw i64 %indvars.iv748, 4 ; 2 uses
  %indvars.iv.next751.3 = add nuw nsw i64 %indvars.iv750, 4 ; 3 uses
  %niter969.next.3 = add i64 %niter969.a, 4       ; 2 uses
  %niter969.ncmp.3 = icmp eq i64 %niter969.next.3, %unroll_iter968.a
  br i1 %niter969.ncmp.3, label %._crit_edge587.us.unr-lcssa, label %.preheader533.us.new, !llvm.loop !109

._crit_edge587.us.unr-lcssa:                      ; preds = %.preheader533.us.new
  br i1 %lcmp.mod965.not, label %._crit_edge587.us, label %.epil.preheader962

.epil.preheader962:                               ; preds = %._crit_edge587.us.unr-lcssa, %.preheader533.us
  %indvars.iv750.epil.init = phi i64 [ %.13589.us, %.preheader533.us ], [ %indvars.iv.next751.3, %._crit_edge587.us.unr-lcssa ]
  %indvars.iv748.epil.init = phi i64 [ 0, %.preheader533.us ], [ %indvars.iv.next749.3, %._crit_edge587.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod967.a)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.epil.preheader962
  %indvars.iv750.epil = phi i64 [ %indvars.iv750.epil.init, %.epil.preheader962 ], [ %indvars.iv.next751.epil, %bb.bv ] ; 2 uses
  %indvars.iv748.epil = phi i64 [ %indvars.iv748.epil.init, %.epil.preheader962 ], [ %indvars.iv.next749.epil, %bb.bv ] ; 2 uses
  %epil.iter964 = phi i64 [ 0, %.epil.preheader962 ], [ %epil.iter964.next, %bb.bv ]
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv748.epil
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !142
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %indvars.iv757
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !14
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv750.epil
  store i32 %i.ud, ptr %i.ue, align 4, !tbaa !13
  %indvars.iv.next749.epil = add nuw nsw i64 %indvars.iv748.epil, 1
  %indvars.iv.next751.epil = add nuw nsw i64 %indvars.iv750.epil, 1 ; 2 uses
  %epil.iter964.next = add i64 %epil.iter964, 1   ; 2 uses
  %epil.iter964.cmp.not = icmp eq i64 %epil.iter964.next, %xtraiter963
  br i1 %epil.iter964.cmp.not, label %._crit_edge587.us, label %bb.bv, !llvm.loop !110

._crit_edge587.us:                                ; preds = %bb.bv, %._crit_edge587.us.unr-lcssa
  %indvars.iv.next751.lcssa = phi i64 [ %indvars.iv.next751.3, %._crit_edge587.us.unr-lcssa ], [ %indvars.iv.next751.epil, %bb.bv ] ; 2 uses
  %indvars.iv.next758 = add nuw nsw i64 %indvars.iv757, 1 ; 2 uses
  %exitcond762.not = icmp eq i64 %indvars.iv.next758, %i.ej
  br i1 %exitcond762.not, label %.loopexit532.loopexit659, label %.preheader533.us, !llvm.loop !111

.preheader531:                                    ; preds = %bb.bu
  br i1 %.not644, label %.loopexit532, label %.preheader530.us.preheader

.preheader530.us.preheader:                       ; preds = %.preheader531
  %wide.trip.count770 = zext i32 %i.g to i64      ; 2 uses
  %xtraiter971 = and i64 %wide.trip.count770, 1
  %i.uf = icmp eq i32 %i.g, 1
  %unroll_iter976 = and i64 %wide.trip.count770, 4294967294
  %lcmp.mod973.not = icmp eq i64 %xtraiter971, 0
  %lcmp.mod975 = trunc i32 %i.g to i1
  br label %.preheader530.us

.preheader530.us:                                 ; preds = %.preheader530.us.preheader, %._crit_edge595.us
  %indvars.iv772.a = phi i64 [ 0, %.preheader530.us.preheader ], [ %indvars.iv.next773.a, %._crit_edge595.us ] ; 4 uses
  %.11597.us = phi i64 [ 0, %.preheader530.us.preheader ], [ %indvars.iv.next766.lcssa, %._crit_edge595.us ] ; 2 uses
  br i1 %i.uf, label %.epil.preheader970, label %.preheader530.us.new

.preheader530.us.new:                             ; preds = %.preheader530.us, %.preheader530.us.new
  %indvars.iv765 = phi i64 [ %indvars.iv.next766.1, %.preheader530.us.new ], [ %.11597.us, %.preheader530.us ] ; 3 uses
  %indvars.iv763 = phi i64 [ %indvars.iv.next764.1, %.preheader530.us.new ], [ 0, %.preheader530.us ] ; 3 uses
  %niter977 = phi i64 [ %niter977.next.1, %.preheader530.us.new ], [ 0, %.preheader530.us ]
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv763
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !142
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %indvars.iv772.a
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !14
  %i.uk = add nsw i32 %i.uj, 8388608
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv765
  store i32 %i.uk, ptr %i.ul, align 4, !tbaa !13
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv763
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !142
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %indvars.iv772.a
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !14
  %i.ur = add nsw i32 %i.uq, 8388608
  %i.us = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv765
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 4
  store i32 %i.ur, ptr %i.ut, align 4, !tbaa !13
  %indvars.iv.next764.1 = add nuw nsw i64 %indvars.iv763, 2 ; 2 uses
  %indvars.iv.next766.1 = add nuw nsw i64 %indvars.iv765, 2 ; 3 uses
  %niter977.next.1 = add i64 %niter977, 2         ; 2 uses
  %niter977.ncmp.1 = icmp eq i64 %niter977.next.1, %unroll_iter976
  br i1 %niter977.ncmp.1, label %._crit_edge595.us.unr-lcssa, label %.preheader530.us.new, !llvm.loop !112

._crit_edge595.us.unr-lcssa:                      ; preds = %.preheader530.us.new
  br i1 %lcmp.mod973.not, label %._crit_edge595.us, label %.epil.preheader970

.epil.preheader970:                               ; preds = %._crit_edge595.us.unr-lcssa, %.preheader530.us
  %indvars.iv765.epil.init = phi i64 [ %.11597.us, %.preheader530.us ], [ %indvars.iv.next766.1, %._crit_edge595.us.unr-lcssa ] ; 2 uses
  %indvars.iv763.epil.init = phi i64 [ 0, %.preheader530.us ], [ %indvars.iv.next764.1, %._crit_edge595.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod975)
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv763.epil.init
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !142
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %indvars.iv772.a
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !14
  %i.uy = add nsw i32 %i.ux, 8388608
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv765.epil.init
  store i32 %i.uy, ptr %i.uz, align 4, !tbaa !13
  %indvars.iv.next766.epil = add nuw nsw i64 %indvars.iv765.epil.init, 1
  br label %._crit_edge595.us

._crit_edge595.us:                                ; preds = %._crit_edge595.us.unr-lcssa, %.epil.preheader970
  %indvars.iv.next766.lcssa = phi i64 [ %indvars.iv.next766.1, %._crit_edge595.us.unr-lcssa ], [ %indvars.iv.next766.epil, %.epil.preheader970 ] ; 2 uses
  %indvars.iv.next773.a = add nuw nsw i64 %indvars.iv772.a, 1 ; 2 uses
  %exitcond777.not = icmp eq i64 %indvars.iv.next773.a, %i.ej
  br i1 %exitcond777.not, label %.loopexit532.loopexit657, label %.preheader530.us, !llvm.loop !113

.loopexit532.loopexit657:                         ; preds = %._crit_edge595.us
  %i.va = trunc nuw i64 %indvars.iv.next766.lcssa to i32
  br label %.loopexit532

.loopexit532.loopexit659:                         ; preds = %._crit_edge587.us
  %i.vb = trunc nuw i64 %indvars.iv.next751.lcssa to i32
  br label %.loopexit532

.loopexit532:                                     ; preds = %.preheader531, %.preheader534, %.loopexit532.loopexit659, %.loopexit532.loopexit657
  %.15 = phi i32 [ %i.va, %.loopexit532.loopexit657 ], [ 0, %.preheader534 ], [ %i.vb, %.loopexit532.loopexit659 ], [ 0, %.preheader531 ] ; 2 uses
  %i.vc = shl i32 %.15, 2                         ; 3 uses
  %.not646 = icmp eq i32 %i.vc, 0                 ; 2 uses
  br i1 %i.w, label %bb.bw, label %.critedge506

bb.bw:                                            ; preds = %.loopexit532
  br i1 %.not646, label %.loopexit528, label %.lr.ph605.preheader

.lr.ph605.preheader:                              ; preds = %bb.bw
  %i.vd = zext i32 %i.vc to i64
  %i.ve = add nsw i64 %i.vd, -4                   ; 5 uses
  %i.vf = lshr exact i64 %i.ve, 2
  %i.vg = add nuw nsw i64 %i.vf, 1                ; 4 uses
  %i.vh = icmp eq i64 %i.ve, 0
  br i1 %i.vh, label %.lr.ph605.epil.preheader, label %.lr.ph605.preheader.new

.lr.ph605.preheader.new:                          ; preds = %.lr.ph605.preheader
  %unroll_iter988 = and i64 %i.vg, 9223372036854775806
  br label %.lr.ph605

.lr.ph608.preheader.unr-lcssa:                    ; preds = %.lr.ph605
  %i.vi = and i64 %i.ve, 4
  %lcmp.mod986.not.not = icmp eq i64 %i.vi, 0
  br i1 %lcmp.mod986.not.not, label %.lr.ph605.epil.preheader, label %.lr.ph608.preheader

.lr.ph605.epil.preheader:                         ; preds = %.lr.ph608.preheader.unr-lcssa, %.lr.ph605.preheader
  %indvars.iv785.epil.init = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next786.1, %.lr.ph608.preheader.unr-lcssa ]
  %lcmp.mod987 = trunc i64 %i.vg to i1
  call void @llvm.assume(i1 %lcmp.mod987)
  %i.vj = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv785.epil.init ; 2 uses
  %i.vk = load <4 x i8>, ptr %i.vj, align 4, !tbaa !13
  %i.vl = shufflevector <4 x i8> %i.vk, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.vl, ptr %i.vj, align 4, !tbaa !13
  br label %.lr.ph608.preheader

.lr.ph608.preheader:                              ; preds = %.lr.ph608.preheader.unr-lcssa, %.lr.ph605.epil.preheader
  %4 = icmp eq i64 %i.ve, 0
  br i1 %4, label %.lr.ph608.epil.preheader, label %.lr.ph608.preheader.a

.lr.ph608.preheader.a:                            ; preds = %.lr.ph608.preheader
  %unroll_iter980 = and i64 %i.vg, 9223372036854775806
  br label %.lr.ph608

.lr.ph605:                                        ; preds = %.lr.ph605, %.lr.ph605.preheader.new
  %indvars.iv785 = phi i64 [ 0, %.lr.ph605.preheader.new ], [ %indvars.iv.next786.1, %.lr.ph605 ] ; 3 uses
  %niter989 = phi i64 [ 0, %.lr.ph605.preheader.new ], [ %niter989.next.1, %.lr.ph605 ]
  %i.vm = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv785 ; 2 uses
  %i.vn = load <4 x i8>, ptr %i.vm, align 4, !tbaa !13
  %i.vo = shufflevector <4 x i8> %i.vn, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.vo, ptr %i.vm, align 4, !tbaa !13
  %i.vp = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv785
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 4 ; 2 uses
  %i.vr = load <4 x i8>, ptr %i.vq, align 4, !tbaa !13
  %i.vs = shufflevector <4 x i8> %i.vr, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.vs, ptr %i.vq, align 4, !tbaa !13
  %indvars.iv.next786.1 = add nuw nsw i64 %indvars.iv785, 8 ; 2 uses
  %niter989.next.1 = add i64 %niter989, 2         ; 2 uses
  %niter989.ncmp.1.not = icmp eq i64 %niter989.next.1, %unroll_iter988
  br i1 %niter989.ncmp.1.not, label %.lr.ph608.preheader.unr-lcssa, label %.lr.ph605, !llvm.loop !114

.lr.ph608:                                        ; preds = %.lr.ph608, %.lr.ph608.preheader.a
  %indvars.iv784 = phi i64 [ 0, %.lr.ph608.preheader.a ], [ %indvars.iv.next791, %.lr.ph608 ] ; 5 uses
  %indvars.iv790 = phi i64 [ 0, %.lr.ph608.preheader.a ], [ %indvars.iv.next789, %.lr.ph608 ] ; 5 uses
  %indvars.iv788 = phi i64 [ 0, %.lr.ph608.preheader.a ], [ %niter981.next.1, %.lr.ph608 ]
  %5 = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv784
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !13
  %8 = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv790
  store i8 %7, ptr %8, align 2, !tbaa !13
  %9 = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv784
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 2
  %11 = load i8, ptr %10, align 2, !tbaa !13
  %12 = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv790
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 1
  store i8 %11, ptr %13, align 1, !tbaa !13
  %indvars.iv.next785 = or disjoint i64 %indvars.iv784, 4 ; 3 uses
  %14 = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv784
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 3
  %16 = load i8, ptr %15, align 1, !tbaa !13
  %indvars.iv.next783 = add nuw nsw i64 %indvars.iv790, 3 ; 3 uses
  %17 = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv790
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 2
  store i8 %16, ptr %18, align 2, !tbaa !13
  %i.vt = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next785
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 1
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !13
  %i.vw = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next783
  store i8 %i.vv, ptr %i.vw, align 1, !tbaa !13
  %i.vx = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next785
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 2
  %i.vz = load i8, ptr %i.vy, align 2, !tbaa !13
  %i.wa = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next783
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 1
  store i8 %i.vz, ptr %i.wb, align 2, !tbaa !13
  %indvars.iv.next791 = add nuw nsw i64 %indvars.iv784, 8 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next785
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 3
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !13
  %indvars.iv.next789 = add nuw nsw i64 %indvars.iv790, 6 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next783
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 2
  store i8 %i.we, ptr %i.wg, align 1, !tbaa !13
  %niter981.next.1 = add i64 %indvars.iv788, 2    ; 2 uses
  %niter981.ncmp.1.not = icmp eq i64 %niter981.next.1, %unroll_iter980
  br i1 %niter981.ncmp.1.not, label %.loopexit528.loopexit.unr-lcssa, label %.lr.ph608, !llvm.loop !115

.critedge506:                                     ; preds = %.loopexit532
  br i1 %.not646, label %.loopexit528, label %.lr.ph602.preheader

.lr.ph602.preheader:                              ; preds = %.critedge506
  %i.wh = zext i32 %i.vc to i64
  %i.wi = add nsw i64 %i.wh, -4                   ; 3 uses
  %i.wj = lshr exact i64 %i.wi, 2
  %i.wk = add nuw nsw i64 %i.wj, 1                ; 2 uses
  %i.wl = icmp eq i64 %i.wi, 0
  br i1 %i.wl, label %.lr.ph602.epil.preheader, label %.lr.ph602.preheader.new

.lr.ph602.preheader.new:                          ; preds = %.lr.ph602.preheader
  %unroll_iter982 = and i64 %i.wk, 9223372036854775806
  br label %.lr.ph602

.lr.ph602:                                        ; preds = %.lr.ph602, %.lr.ph602.preheader.new
  %indvars.iv780 = phi i64 [ 0, %.lr.ph602.preheader.new ], [ %indvars.iv.next781.1, %.lr.ph602 ] ; 5 uses
  %indvars.iv778 = phi i64 [ 0, %.lr.ph602.preheader.new ], [ %indvars.iv.next779.1, %.lr.ph602 ] ; 5 uses
  %niter983 = phi i64 [ 0, %.lr.ph602.preheader.new ], [ %niter983.next.1, %.lr.ph602 ]
  %i.wm = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv780
  %i.wn = load i8, ptr %i.wm, align 4, !tbaa !13
  %i.wo = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv778
  store i8 %i.wn, ptr %i.wo, align 2, !tbaa !13
  %i.wp = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv780
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 1
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !13
  %i.ws = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv778
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 1
  store i8 %i.wr, ptr %i.wt, align 1, !tbaa !13
  %i.wu = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv780
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 2
  %i.ww = load i8, ptr %i.wv, align 2, !tbaa !13
  %indvars.iv.next779 = add nuw nsw i64 %indvars.iv778, 3 ; 3 uses
  %i.wx = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv778
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 2
  store i8 %i.ww, ptr %i.wy, align 2, !tbaa !13
  %indvars.iv.next781 = or disjoint i64 %indvars.iv780, 4 ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next781
  %i.xa = load i8, ptr %i.wz, align 4, !tbaa !13
  %i.xb = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next779
  store i8 %i.xa, ptr %i.xb, align 1, !tbaa !13
  %i.xc = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next781
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 1
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !13
  %i.xf = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next779
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 1
  store i8 %i.xe, ptr %i.xg, align 2, !tbaa !13
  %i.xh = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next781
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 2
  %i.xj = load i8, ptr %i.xi, align 2, !tbaa !13
  %indvars.iv.next779.1 = add nuw nsw i64 %indvars.iv778, 6 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next779
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 2
  store i8 %i.xj, ptr %i.xl, align 1, !tbaa !13
  %indvars.iv.next781.1 = add nuw nsw i64 %indvars.iv780, 8 ; 2 uses
  %niter983.next.1 = add i64 %niter983, 2         ; 2 uses
  %niter983.ncmp.1.not = icmp eq i64 %niter983.next.1, %unroll_iter982
  br i1 %niter983.ncmp.1.not, label %.loopexit528.loopexit921.unr-lcssa, label %.lr.ph602, !llvm.loop !116

.loopexit528.loopexit.unr-lcssa:                  ; preds = %.lr.ph608
  %19 = and i64 %i.ve, 4
  %lcmp.mod978.not.not = icmp eq i64 %19, 0
  br i1 %lcmp.mod978.not.not, label %.lr.ph608.epil.preheader, label %.loopexit528

.lr.ph608.epil.preheader:                         ; preds = %.loopexit528.loopexit.unr-lcssa, %.lr.ph608.preheader
  %indvars.iv784.epil.init = phi i64 [ 0, %.lr.ph608.preheader ], [ %indvars.iv.next791, %.loopexit528.loopexit.unr-lcssa ] ; 3 uses
  %indvars.iv782.epil.init = phi i64 [ 0, %.lr.ph608.preheader ], [ %indvars.iv.next789, %.loopexit528.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod979 = trunc i64 %i.vg to i1
  call void @llvm.assume(i1 %lcmp.mod979)
  %20 = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv784.epil.init
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !13
  %23 = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv782.epil.init
  store i8 %22, ptr %23, align 1, !tbaa !13
  %24 = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv784.epil.init
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 2
  %26 = load i8, ptr %25, align 2, !tbaa !13
  %27 = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv782.epil.init
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 1
  store i8 %26, ptr %28, align 1, !tbaa !13
  %29 = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv784.epil.init
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 3
  %31 = load i8, ptr %30, align 1, !tbaa !13
  %32 = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv782.epil.init
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 2
  store i8 %31, ptr %33, align 1, !tbaa !13
  br label %.loopexit528

.loopexit528.loopexit921.unr-lcssa:               ; preds = %.lr.ph602
  %i.xm = and i64 %i.wi, 4
  %lcmp.mod980.not.not = icmp eq i64 %i.xm, 0
  br i1 %lcmp.mod980.not.not, label %.lr.ph602.epil.preheader, label %.loopexit528

.lr.ph602.epil.preheader:                         ; preds = %.loopexit528.loopexit921.unr-lcssa, %.lr.ph602.preheader
  %indvars.iv780.epil.init = phi i64 [ 0, %.lr.ph602.preheader ], [ %indvars.iv.next781.1, %.loopexit528.loopexit921.unr-lcssa ] ; 3 uses
  %indvars.iv778.epil.init = phi i64 [ 0, %.lr.ph602.preheader ], [ %indvars.iv.next779.1, %.loopexit528.loopexit921.unr-lcssa ] ; 3 uses
  %lcmp.mod981 = trunc i64 %i.wk to i1
  call void @llvm.assume(i1 %lcmp.mod981)
  %i.xn = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv780.epil.init
  %i.xo = load i8, ptr %i.xn, align 4, !tbaa !13
  %i.xp = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv778.epil.init
  store i8 %i.xo, ptr %i.xp, align 1, !tbaa !13
  %i.xq = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv780.epil.init
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 1
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !13
  %i.xt = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv778.epil.init
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 1
  store i8 %i.xs, ptr %i.xu, align 1, !tbaa !13
  %i.xv = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv780.epil.init
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 2
  %i.xx = load i8, ptr %i.xw, align 2, !tbaa !13
  %i.xy = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv778.epil.init
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 2
  store i8 %i.xx, ptr %i.xz, align 1, !tbaa !13
  br label %.loopexit528

.loopexit528:                                     ; preds = %.lr.ph602.epil.preheader, %.loopexit528.loopexit921.unr-lcssa, %.lr.ph608.epil.preheader, %.loopexit528.loopexit.unr-lcssa, %bb.bw, %.critedge506
  %i.ya = mul i32 %.15, 3
  %i.yb = zext i32 %i.ya to i64
  br label %.loopexit538

bb.bx:                                            ; preds = %bb.bj
  %.not642 = icmp eq i32 %i.g, 0                  ; 2 uses
  br i1 %i.hk, label %.preheader537, label %.preheader540

.preheader540:                                    ; preds = %bb.bx
  br i1 %.not642, label %.thread509, label %.preheader539.us.preheader

.preheader539.us.preheader:                       ; preds = %.preheader540
  %wide.trip.count725 = zext i32 %i.g to i64      ; 2 uses
  %xtraiter947 = and i64 %wide.trip.count725, 3   ; 3 uses
  %i.yc = icmp ult i32 %i.g, 4
  %unroll_iter952 = and i64 %wide.trip.count725, 4294967292
  %lcmp.mod949.not = icmp eq i64 %xtraiter947, 0
  %lcmp.mod951 = icmp ne i64 %xtraiter947, 0
  br label %.preheader539.us

.preheader539.us:                                 ; preds = %.preheader539.us.preheader, %._crit_edge571.us
  %indvars.iv727 = phi i64 [ 0, %.preheader539.us.preheader ], [ %indvars.iv.next728, %._crit_edge571.us ] ; 6 uses
  %.18573.us = phi i64 [ 0, %.preheader539.us.preheader ], [ %indvars.iv.next721.lcssa, %._crit_edge571.us ] ; 2 uses
  br i1 %i.yc, label %.epil.preheader946, label %.preheader539.us.new

.preheader539.us.new:                             ; preds = %.preheader539.us, %.preheader539.us.new
  %indvars.iv720 = phi i64 [ %indvars.iv.next721.3, %.preheader539.us.new ], [ %.18573.us, %.preheader539.us ] ; 5 uses
  %indvars.iv718 = phi i64 [ %indvars.iv.next719.3.a, %.preheader539.us.new ], [ 0, %.preheader539.us ] ; 5 uses
  %niter953 = phi i64 [ %niter953.next.3, %.preheader539.us.new ], [ 0, %.preheader539.us ]
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv718
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !142
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv727
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !14
  %i.yh = trunc i32 %i.yg to i8
  %i.yi = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv720
  store i8 %i.yh, ptr %i.yi, align 1, !tbaa !13
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv718
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !142
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %indvars.iv727
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !14
  %i.yo = trunc i32 %i.yn to i8
  %i.yp = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv720
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 1
  store i8 %i.yo, ptr %i.yq, align 1, !tbaa !13
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv718
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !142
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %indvars.iv727
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !14
  %i.yw = trunc i32 %i.yv to i8
  %i.yx = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv720
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 2
  store i8 %i.yw, ptr %i.yy, align 1, !tbaa !13
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv718
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 24
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !142
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %indvars.iv727
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !14
  %i.ze = trunc i32 %i.zd to i8
  %i.zf = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv720
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 3
  store i8 %i.ze, ptr %i.zg, align 1, !tbaa !13
  %indvars.iv.next719.3.a = add nuw nsw i64 %indvars.iv718, 4 ; 2 uses
  %indvars.iv.next721.3 = add nuw nsw i64 %indvars.iv720, 4 ; 3 uses
  %niter953.next.3 = add i64 %niter953, 4         ; 2 uses
  %niter953.ncmp.3 = icmp eq i64 %niter953.next.3, %unroll_iter952
  br i1 %niter953.ncmp.3, label %._crit_edge571.us.unr-lcssa, label %.preheader539.us.new, !llvm.loop !117

._crit_edge571.us.unr-lcssa:                      ; preds = %.preheader539.us.new
  br i1 %lcmp.mod949.not, label %._crit_edge571.us, label %.epil.preheader946

.epil.preheader946:                               ; preds = %._crit_edge571.us.unr-lcssa, %.preheader539.us
  %indvars.iv720.epil.init = phi i64 [ %.18573.us, %.preheader539.us ], [ %indvars.iv.next721.3, %._crit_edge571.us.unr-lcssa ]
  %indvars.iv718.epil.init = phi i64 [ 0, %.preheader539.us ], [ %indvars.iv.next719.3.a, %._crit_edge571.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod951)
  br label %bb.by

bb.by:                                            ; preds = %bb.by, %.epil.preheader946
  %indvars.iv720.epil = phi i64 [ %indvars.iv720.epil.init, %.epil.preheader946 ], [ %indvars.iv.next721.epil, %bb.by ] ; 2 uses
  %indvars.iv718.epil = phi i64 [ %indvars.iv718.epil.init, %.epil.preheader946 ], [ %indvars.iv.next719.epil.a, %bb.by ] ; 2 uses
  %epil.iter948 = phi i64 [ 0, %.epil.preheader946 ], [ %epil.iter948.next, %bb.by ]
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv718.epil
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !142
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv727
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !14
  %i.zl = trunc i32 %i.zk to i8
  %i.zm = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv720.epil
  store i8 %i.zl, ptr %i.zm, align 1, !tbaa !13
  %indvars.iv.next719.epil.a = add nuw nsw i64 %indvars.iv718.epil, 1
  %indvars.iv.next721.epil = add nuw nsw i64 %indvars.iv720.epil, 1 ; 2 uses
  %epil.iter948.next = add i64 %epil.iter948, 1   ; 2 uses
  %epil.iter948.cmp.not = icmp eq i64 %epil.iter948.next, %xtraiter947
  br i1 %epil.iter948.cmp.not, label %._crit_edge571.us, label %bb.by, !llvm.loop !118

._crit_edge571.us:                                ; preds = %bb.by, %._crit_edge571.us.unr-lcssa
  %indvars.iv.next721.lcssa = phi i64 [ %indvars.iv.next721.3, %._crit_edge571.us.unr-lcssa ], [ %indvars.iv.next721.epil, %bb.by ] ; 2 uses
  %indvars.iv.next728 = add nuw nsw i64 %indvars.iv727, 1 ; 2 uses
  %exitcond732.not = icmp eq i64 %indvars.iv.next728, %i.ej
  br i1 %exitcond732.not, label %.loopexit538.thread901, label %.preheader539.us, !llvm.loop !119

.preheader537:                                    ; preds = %bb.bx
  br i1 %.not642, label %.thread509, label %.preheader536.us.preheader

.preheader536.us.preheader:                       ; preds = %.preheader537
  %wide.trip.count740 = zext i32 %i.g to i64      ; 2 uses
  %xtraiter955 = and i64 %wide.trip.count740, 1
  %i.zn = icmp eq i32 %i.g, 1
  %unroll_iter960 = and i64 %wide.trip.count740, 4294967294
  %lcmp.mod957.not = icmp eq i64 %xtraiter955, 0
  %lcmp.mod959 = trunc i32 %i.g to i1
  br label %.preheader536.us

.preheader536.us:                                 ; preds = %.preheader536.us.preheader, %._crit_edge579.us
  %indvars.iv742 = phi i64 [ 0, %.preheader536.us.preheader ], [ %indvars.iv.next743, %._crit_edge579.us ] ; 4 uses
  %.16581.us = phi i64 [ 0, %.preheader536.us.preheader ], [ %indvars.iv.next736.lcssa, %._crit_edge579.us ] ; 2 uses
  br i1 %i.zn, label %.epil.preheader954, label %.preheader536.us.new

.preheader536.us.new:                             ; preds = %.preheader536.us, %.preheader536.us.new
  %indvars.iv735 = phi i64 [ %indvars.iv.next736.1, %.preheader536.us.new ], [ %.16581.us, %.preheader536.us ] ; 3 uses
  %indvars.iv733 = phi i64 [ %indvars.iv.next734.1, %.preheader536.us.new ], [ 0, %.preheader536.us ] ; 3 uses
  %niter961 = phi i64 [ %niter961.next.1, %.preheader536.us.new ], [ 0, %.preheader536.us ]
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv733
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !142
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %indvars.iv742
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !14
  %i.zs = trunc i32 %i.zr to i8
  %i.zt = xor i8 %i.zs, -128
  %i.zu = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv735
  store i8 %i.zt, ptr %i.zu, align 1, !tbaa !13
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv733
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !142
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zx, i64 %indvars.iv742
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !14
  %i.aaa = trunc i32 %i.zz to i8
  %i.aab = xor i8 %i.aaa, -128
  %i.aac = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv735
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 1
  store i8 %i.aab, ptr %i.aad, align 1, !tbaa !13
  %indvars.iv.next734.1 = add nuw nsw i64 %indvars.iv733, 2 ; 2 uses
  %indvars.iv.next736.1 = add nuw nsw i64 %indvars.iv735, 2 ; 3 uses
  %niter961.next.1 = add i64 %niter961, 2         ; 2 uses
  %niter961.ncmp.1 = icmp eq i64 %niter961.next.1, %unroll_iter960
  br i1 %niter961.ncmp.1, label %._crit_edge579.us.unr-lcssa, label %.preheader536.us.new, !llvm.loop !120

._crit_edge579.us.unr-lcssa:                      ; preds = %.preheader536.us.new
  br i1 %lcmp.mod957.not, label %._crit_edge579.us, label %.epil.preheader954

.epil.preheader954:                               ; preds = %._crit_edge579.us.unr-lcssa, %.preheader536.us
  %indvars.iv735.epil.init = phi i64 [ %.16581.us, %.preheader536.us ], [ %indvars.iv.next736.1, %._crit_edge579.us.unr-lcssa ] ; 2 uses
  %indvars.iv733.epil.init = phi i64 [ 0, %.preheader536.us ], [ %indvars.iv.next734.1, %._crit_edge579.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod959)
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv733.epil.init
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !142
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %indvars.iv742
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !14
  %i.aai = trunc i32 %i.aah to i8
  %i.aaj = xor i8 %i.aai, -128
  %i.aak = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv735.epil.init
  store i8 %i.aaj, ptr %i.aak, align 1, !tbaa !13
  %indvars.iv.next736.epil = add nuw nsw i64 %indvars.iv735.epil.init, 1
  br label %._crit_edge579.us

._crit_edge579.us:                                ; preds = %._crit_edge579.us.unr-lcssa, %.epil.preheader954
  %indvars.iv.next736.lcssa = phi i64 [ %indvars.iv.next736.1, %._crit_edge579.us.unr-lcssa ], [ %indvars.iv.next736.epil, %.epil.preheader954 ] ; 2 uses
  %indvars.iv.next743 = add nuw nsw i64 %indvars.iv742, 1 ; 2 uses
  %exitcond747.not = icmp eq i64 %indvars.iv.next743, %i.ej
  br i1 %exitcond747.not, label %.loopexit538.thread901, label %.preheader536.us, !llvm.loop !121

bb.bz:                                            ; preds = %bb.bj
  %.not639 = icmp eq i32 %i.g, 0                  ; 2 uses
  br i1 %i.hk, label %.preheader544, label %.preheader547

.preheader547:                                    ; preds = %bb.bz
  br i1 %.not639, label %.loopexit545, label %.preheader546.us.preheader

.preheader546.us.preheader:                       ; preds = %.preheader547
  %wide.trip.count692 = zext i32 %i.g to i64      ; 2 uses
  %xtraiter925 = and i64 %wide.trip.count692, 3   ; 3 uses
  %i.aal = icmp ult i32 %i.g, 4
  %unroll_iter930.a = and i64 %wide.trip.count692, 4294967292
  %lcmp.mod927.not = icmp eq i64 %xtraiter925, 0
  %lcmp.mod929.a = icmp ne i64 %xtraiter925, 0
  br label %.preheader546.us

.preheader546.us:                                 ; preds = %.preheader546.us.preheader, %._crit_edge556.us
  %indvars.iv694 = phi i64 [ 0, %.preheader546.us.preheader ], [ %indvars.iv.next695, %._crit_edge556.us ] ; 6 uses
  %.23558.us = phi i64 [ 0, %.preheader546.us.preheader ], [ %indvars.iv.next688.lcssa, %._crit_edge556.us ] ; 2 uses
  br i1 %i.aal, label %.epil.preheader924, label %.preheader546.us.new

.preheader546.us.new:                             ; preds = %.preheader546.us, %.preheader546.us.new
  %indvars.iv687 = phi i64 [ %indvars.iv.next688.3, %.preheader546.us.new ], [ %.23558.us, %.preheader546.us ] ; 5 uses
  %indvars.iv685 = phi i64 [ %indvars.iv.next686.3, %.preheader546.us.new ], [ 0, %.preheader546.us ] ; 5 uses
  %niter931.a = phi i64 [ %niter931.next.3, %.preheader546.us.new ], [ 0, %.preheader546.us ]
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv685
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !142
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %indvars.iv694
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !14
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv687
end_hunk_0
