Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/decode?download=true
inline.NumInlined: 55
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@write_callback:bb.a
  br i1 %niter1025.ncmp.3.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph632, !llvm.loop !107

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph632
  %lcmp.mod1022.not = icmp eq i64 %xtraiter1020, 0
  br i1 %lcmp.mod1022.not, label %.loopexit, label %.lr.ph632.epil.preheader

.lr.ph632.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph632.preheader
  %indvars.iv849.epil.init = phi i64 [ 0, %.lr.ph632.preheader ], [ %indvars.iv.next850.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod1023 = icmp ne i64 %xtraiter1020, 0
  call void @llvm.assume(i1 %lcmp.mod1023)
  br label %.lr.ph632.epil

.lr.ph632.epil:                                   ; preds = %.lr.ph632.epil, %.lr.ph632.epil.preheader
  %indvars.iv849.epil = phi i64 [ %indvars.iv849.epil.init, %.lr.ph632.epil.preheader ], [ %indvars.iv.next850.epil, %.lr.ph632.epil ] ; 3 uses
  %epil.iter1021 = phi i64 [ 0, %.lr.ph632.epil.preheader ], [ %epil.iter1021.next, %.lr.ph632.epil ]
  %i.st = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv849.epil ; 2 uses
  %i.su = load i8, ptr %i.st, align 2, !tbaa !13
  %i.sv = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv849.epil
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 1 ; 2 uses
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !13
  store i8 %i.sx, ptr %i.st, align 2, !tbaa !13
  store i8 %i.su, ptr %i.sw, align 1, !tbaa !13
  %indvars.iv.next850.epil = add nuw nsw i64 %indvars.iv849.epil, 2
  %epil.iter1021.next = add i64 %epil.iter1021, 1 ; 2 uses
  %epil.iter1021.cmp.not = icmp eq i64 %epil.iter1021.next, %xtraiter1020
  br i1 %epil.iter1021.cmp.not, label %.loopexit, label %.lr.ph632.epil, !llvm.loop !108

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
  %wide.trip.count751 = zext i32 %i.g to i64      ; 2 uses
  %xtraiter949 = and i64 %wide.trip.count751, 3   ; 3 uses
  %i.sz = icmp ult i32 %i.g, 4
  %unroll_iter954 = and i64 %wide.trip.count751, 4294967292
  %lcmp.mod951.not = icmp eq i64 %xtraiter949, 0
  %lcmp.mod953 = icmp ne i64 %xtraiter949, 0
  br label %.preheader533.us

.preheader533.us:                                 ; preds = %.preheader533.us.preheader, %._crit_edge587.us
  %indvars.iv753 = phi i64 [ 0, %.preheader533.us.preheader ], [ %indvars.iv.next754, %._crit_edge587.us ] ; 6 uses
  %.13589.us = phi i64 [ 0, %.preheader533.us.preheader ], [ %indvars.iv.next747.lcssa, %._crit_edge587.us ] ; 2 uses
  br i1 %i.sz, label %.epil.preheader948, label %.preheader533.us.new

.preheader533.us.new:                             ; preds = %.preheader533.us, %.preheader533.us.new
  %indvars.iv746 = phi i64 [ %indvars.iv.next747.3, %.preheader533.us.new ], [ %.13589.us, %.preheader533.us ] ; 5 uses
  %indvars.iv744 = phi i64 [ %indvars.iv.next745.3, %.preheader533.us.new ], [ 0, %.preheader533.us ] ; 5 uses
  %niter955 = phi i64 [ %niter955.next.3, %.preheader533.us.new ], [ 0, %.preheader533.us ]
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv744
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !142
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %indvars.iv753
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !14
  %i.te = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv746
  store i32 %i.td, ptr %i.te, align 4, !tbaa !13
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv744
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !142
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %indvars.iv753
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !14
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv746
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 4
  store i32 %i.tj, ptr %i.tl, align 4, !tbaa !13
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv744
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !142
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %indvars.iv753
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !14
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv746
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  store i32 %i.tq, ptr %i.ts, align 4, !tbaa !13
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv744
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 24
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !142
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %indvars.iv753
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !14
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv746
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 12
  store i32 %i.tx, ptr %i.tz, align 4, !tbaa !13
  %indvars.iv.next745.3 = add nuw nsw i64 %indvars.iv744, 4 ; 2 uses
  %indvars.iv.next747.3 = add nuw nsw i64 %indvars.iv746, 4 ; 3 uses
  %niter955.next.3 = add i64 %niter955, 4         ; 2 uses
  %niter955.ncmp.3 = icmp eq i64 %niter955.next.3, %unroll_iter954
  br i1 %niter955.ncmp.3, label %._crit_edge587.us.unr-lcssa, label %.preheader533.us.new, !llvm.loop !109

._crit_edge587.us.unr-lcssa:                      ; preds = %.preheader533.us.new
  br i1 %lcmp.mod951.not, label %._crit_edge587.us, label %.epil.preheader948

.epil.preheader948:                               ; preds = %._crit_edge587.us.unr-lcssa, %.preheader533.us
  %indvars.iv746.epil.init = phi i64 [ %.13589.us, %.preheader533.us ], [ %indvars.iv.next747.3, %._crit_edge587.us.unr-lcssa ]
  %indvars.iv744.epil.init = phi i64 [ 0, %.preheader533.us ], [ %indvars.iv.next745.3, %._crit_edge587.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod953)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.epil.preheader948
  %indvars.iv746.epil = phi i64 [ %indvars.iv746.epil.init, %.epil.preheader948 ], [ %indvars.iv.next747.epil, %bb.bv ] ; 2 uses
  %indvars.iv744.epil = phi i64 [ %indvars.iv744.epil.init, %.epil.preheader948 ], [ %indvars.iv.next745.epil, %bb.bv ] ; 2 uses
  %epil.iter950 = phi i64 [ 0, %.epil.preheader948 ], [ %epil.iter950.next, %bb.bv ]
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv744.epil
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !142
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %indvars.iv753
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !14
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv746.epil
  store i32 %i.ud, ptr %i.ue, align 4, !tbaa !13
  %indvars.iv.next745.epil = add nuw nsw i64 %indvars.iv744.epil, 1
  %indvars.iv.next747.epil = add nuw nsw i64 %indvars.iv746.epil, 1 ; 2 uses
  %epil.iter950.next = add i64 %epil.iter950, 1   ; 2 uses
  %epil.iter950.cmp.not = icmp eq i64 %epil.iter950.next, %xtraiter949
  br i1 %epil.iter950.cmp.not, label %._crit_edge587.us, label %bb.bv, !llvm.loop !110

._crit_edge587.us:                                ; preds = %bb.bv, %._crit_edge587.us.unr-lcssa
  %indvars.iv.next747.lcssa = phi i64 [ %indvars.iv.next747.3, %._crit_edge587.us.unr-lcssa ], [ %indvars.iv.next747.epil, %bb.bv ] ; 2 uses
  %indvars.iv.next754 = add nuw nsw i64 %indvars.iv753, 1 ; 2 uses
  %exitcond757.not = icmp eq i64 %indvars.iv.next754, %i.ej
  br i1 %exitcond757.not, label %.loopexit532.loopexit659, label %.preheader533.us, !llvm.loop !111

.preheader531:                                    ; preds = %bb.bu
  br i1 %.not644, label %.loopexit532, label %.preheader530.us.preheader

.preheader530.us.preheader:                       ; preds = %.preheader531
  %wide.trip.count765 = zext i32 %i.g to i64      ; 2 uses
  %xtraiter957 = and i64 %wide.trip.count765, 1
  %i.uf = icmp eq i32 %i.g, 1
  %unroll_iter962 = and i64 %wide.trip.count765, 4294967294
  %lcmp.mod959.not = icmp eq i64 %xtraiter957, 0
  %lcmp.mod961 = trunc i32 %i.g to i1
  br label %.preheader530.us

.preheader530.us:                                 ; preds = %.preheader530.us.preheader, %._crit_edge595.us
  %indvars.iv767 = phi i64 [ 0, %.preheader530.us.preheader ], [ %indvars.iv.next768, %._crit_edge595.us ] ; 4 uses
  %.11597.us = phi i64 [ 0, %.preheader530.us.preheader ], [ %indvars.iv.next761.lcssa, %._crit_edge595.us ] ; 2 uses
  br i1 %i.uf, label %.epil.preheader956, label %.preheader530.us.new

.preheader530.us.new:                             ; preds = %.preheader530.us, %.preheader530.us.new
  %indvars.iv760 = phi i64 [ %indvars.iv.next761.1, %.preheader530.us.new ], [ %.11597.us, %.preheader530.us ] ; 3 uses
  %indvars.iv758 = phi i64 [ %indvars.iv.next759.1, %.preheader530.us.new ], [ 0, %.preheader530.us ] ; 3 uses
  %niter963 = phi i64 [ %niter963.next.1, %.preheader530.us.new ], [ 0, %.preheader530.us ]
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv758
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !142
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %indvars.iv767
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !14
  %i.uk = add nsw i32 %i.uj, 8388608
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv760
  store i32 %i.uk, ptr %i.ul, align 4, !tbaa !13
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv758
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !142
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %indvars.iv767
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !14
  %i.ur = add nsw i32 %i.uq, 8388608
  %i.us = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv760
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 4
  store i32 %i.ur, ptr %i.ut, align 4, !tbaa !13
  %indvars.iv.next759.1 = add nuw nsw i64 %indvars.iv758, 2 ; 2 uses
  %indvars.iv.next761.1 = add nuw nsw i64 %indvars.iv760, 2 ; 3 uses
  %niter963.next.1 = add i64 %niter963, 2         ; 2 uses
  %niter963.ncmp.1 = icmp eq i64 %niter963.next.1, %unroll_iter962
  br i1 %niter963.ncmp.1, label %._crit_edge595.us.unr-lcssa, label %.preheader530.us.new, !llvm.loop !112

._crit_edge595.us.unr-lcssa:                      ; preds = %.preheader530.us.new
  br i1 %lcmp.mod959.not, label %._crit_edge595.us, label %.epil.preheader956

.epil.preheader956:                               ; preds = %._crit_edge595.us.unr-lcssa, %.preheader530.us
  %indvars.iv760.epil.init = phi i64 [ %.11597.us, %.preheader530.us ], [ %indvars.iv.next761.1, %._crit_edge595.us.unr-lcssa ] ; 2 uses
  %indvars.iv758.epil.init = phi i64 [ 0, %.preheader530.us ], [ %indvars.iv.next759.1, %._crit_edge595.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod961)
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv758.epil.init
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !142
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %indvars.iv767
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !14
  %i.uy = add nsw i32 %i.ux, 8388608
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv760.epil.init
  store i32 %i.uy, ptr %i.uz, align 4, !tbaa !13
  %indvars.iv.next761.epil = add nuw nsw i64 %indvars.iv760.epil.init, 1
  br label %._crit_edge595.us

._crit_edge595.us:                                ; preds = %._crit_edge595.us.unr-lcssa, %.epil.preheader956
  %indvars.iv.next761.lcssa = phi i64 [ %indvars.iv.next761.1, %._crit_edge595.us.unr-lcssa ], [ %indvars.iv.next761.epil, %.epil.preheader956 ] ; 2 uses
  %indvars.iv.next768 = add nuw nsw i64 %indvars.iv767, 1 ; 2 uses
  %exitcond771.not = icmp eq i64 %indvars.iv.next768, %i.ej
  br i1 %exitcond771.not, label %.loopexit532.loopexit657, label %.preheader530.us, !llvm.loop !113

.loopexit532.loopexit657:                         ; preds = %._crit_edge595.us
  %i.va = trunc nuw i64 %indvars.iv.next761.lcssa to i32
  br label %.loopexit532

.loopexit532.loopexit659:                         ; preds = %._crit_edge587.us
  %i.vb = trunc nuw i64 %indvars.iv.next747.lcssa to i32
  br label %.loopexit532

.loopexit532:                                     ; preds = %.preheader531, %.preheader534, %.loopexit532.loopexit659, %.loopexit532.loopexit657
  %.15 = phi i32 [ %i.va, %.loopexit532.loopexit657 ], [ 0, %.preheader534 ], [ %i.vb, %.loopexit532.loopexit659 ], [ 0, %.preheader531 ] ; 2 uses
  %i.vc = shl i32 %.15, 2                         ; 4 uses
  %.not646 = icmp eq i32 %i.vc, 0                 ; 2 uses
  br i1 %i.w, label %bb.bw, label %.critedge506

bb.bw:                                            ; preds = %.loopexit532
  br i1 %.not646, label %.loopexit528, label %.lr.ph605.preheader

.lr.ph605.preheader:                              ; preds = %bb.bw
  %i.vd = zext i32 %i.vc to i64
  %i.ve = add nsw i64 %i.vd, -4                   ; 3 uses
  %i.vf = lshr exact i64 %i.ve, 2
  %i.vg = add nuw nsw i64 %i.vf, 1                ; 2 uses
  %i.vh = icmp eq i64 %i.ve, 0
  br i1 %i.vh, label %.lr.ph605.epil.preheader, label %.lr.ph605.preheader.new

.lr.ph605.preheader.new:                          ; preds = %.lr.ph605.preheader
  %unroll_iter974 = and i64 %i.vg, 9223372036854775806
  br label %.lr.ph605

.lr.ph608.preheader.unr-lcssa:                    ; preds = %.lr.ph605
  %i.vi = and i64 %i.ve, 4
  %lcmp.mod972.not.not = icmp eq i64 %i.vi, 0
  br i1 %lcmp.mod972.not.not, label %.lr.ph605.epil.preheader, label %.lr.ph608.preheader.a

.lr.ph605.epil.preheader:                         ; preds = %.lr.ph608.preheader.unr-lcssa, %.lr.ph605.preheader
  %indvars.iv779.epil.init = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next780.1, %.lr.ph608.preheader.unr-lcssa ]
  %lcmp.mod973 = trunc i64 %i.vg to i1
  call void @llvm.assume(i1 %lcmp.mod973)
  %i.vj = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv779.epil.init ; 2 uses
  %i.vk = load <4 x i8>, ptr %i.vj, align 4, !tbaa !13
  %i.vl = shufflevector <4 x i8> %i.vk, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.vl, ptr %i.vj, align 4, !tbaa !13
  br label %.lr.ph608.preheader.a

.lr.ph608.preheader.a:                            ; preds = %.lr.ph608.preheader.unr-lcssa, %.lr.ph605.epil.preheader
  %4 = zext i32 %i.vc to i64
  br label %.lr.ph608

.lr.ph605:                                        ; preds = %.lr.ph605, %.lr.ph605.preheader.new
  %indvars.iv779 = phi i64 [ 0, %.lr.ph605.preheader.new ], [ %indvars.iv.next780.1, %.lr.ph605 ] ; 3 uses
  %niter975 = phi i64 [ 0, %.lr.ph605.preheader.new ], [ %niter975.next.1, %.lr.ph605 ]
  %i.vm = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv779 ; 2 uses
  %i.vn = load <4 x i8>, ptr %i.vm, align 4, !tbaa !13
  %i.vo = shufflevector <4 x i8> %i.vn, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.vo, ptr %i.vm, align 4, !tbaa !13
  %i.vp = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv779
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 4 ; 2 uses
  %i.vr = load <4 x i8>, ptr %i.vq, align 4, !tbaa !13
  %i.vs = shufflevector <4 x i8> %i.vr, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.vs, ptr %i.vq, align 4, !tbaa !13
  %indvars.iv.next780.1 = add nuw nsw i64 %indvars.iv779, 8 ; 2 uses
  %niter975.next.1 = add i64 %niter975, 2         ; 2 uses
  %niter975.ncmp.1.not = icmp eq i64 %niter975.next.1, %unroll_iter974
  br i1 %niter975.ncmp.1.not, label %.lr.ph608.preheader.unr-lcssa, label %.lr.ph605, !llvm.loop !114

.lr.ph608:                                        ; preds = %.lr.ph608.preheader.a, %.lr.ph608
  %indvars.iv784.a = phi i64 [ 0, %.lr.ph608.preheader.a ], [ %indvars.iv.next785.a, %.lr.ph608 ] ; 4 uses
  %indvars.iv782 = phi i64 [ 0, %.lr.ph608.preheader.a ], [ %indvars.iv.next783.a, %.lr.ph608 ] ; 4 uses
  %i.vt = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv784.a
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 1
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !13
  %i.vw = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv782
  store i8 %i.vv, ptr %i.vw, align 1, !tbaa !13
  %i.vx = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv784.a
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 2
  %i.vz = load i8, ptr %i.vy, align 2, !tbaa !13
  %i.wa = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv782
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 1
  store i8 %i.vz, ptr %i.wb, align 1, !tbaa !13
  %indvars.iv.next785.a = add nuw nsw i64 %indvars.iv784.a, 4 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv784.a
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 3
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !13
  %indvars.iv.next783.a = add nuw nsw i64 %indvars.iv782, 3
  %i.wf = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv782
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 2
  store i8 %i.we, ptr %i.wg, align 1, !tbaa !13
  %5 = icmp samesign ult i64 %indvars.iv.next785.a, %4
  br i1 %5, label %.lr.ph608, label %.loopexit528, !llvm.loop !115

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
  %unroll_iter968 = and i64 %i.wk, 9223372036854775806
  br label %.lr.ph602

.lr.ph602:                                        ; preds = %.lr.ph602, %.lr.ph602.preheader.new
  %indvars.iv774 = phi i64 [ 0, %.lr.ph602.preheader.new ], [ %indvars.iv.next775.1, %.lr.ph602 ] ; 5 uses
  %indvars.iv772 = phi i64 [ 0, %.lr.ph602.preheader.new ], [ %indvars.iv.next773.1, %.lr.ph602 ] ; 5 uses
  %niter969 = phi i64 [ 0, %.lr.ph602.preheader.new ], [ %niter969.next.1, %.lr.ph602 ]
  %i.wm = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv774
  %i.wn = load i8, ptr %i.wm, align 4, !tbaa !13
  %i.wo = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv772
  store i8 %i.wn, ptr %i.wo, align 2, !tbaa !13
  %i.wp = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv774
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 1
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !13
  %i.ws = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv772
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 1
  store i8 %i.wr, ptr %i.wt, align 1, !tbaa !13
  %i.wu = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv774
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 2
  %i.ww = load i8, ptr %i.wv, align 2, !tbaa !13
  %indvars.iv.next773 = add nuw nsw i64 %indvars.iv772, 3 ; 3 uses
  %i.wx = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv772
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 2
  store i8 %i.ww, ptr %i.wy, align 2, !tbaa !13
  %indvars.iv.next775 = or disjoint i64 %indvars.iv774, 4 ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next775
  %i.xa = load i8, ptr %i.wz, align 4, !tbaa !13
  %i.xb = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next773
  store i8 %i.xa, ptr %i.xb, align 1, !tbaa !13
  %i.xc = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next775
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 1
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !13
  %i.xf = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next773
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 1
  store i8 %i.xe, ptr %i.xg, align 2, !tbaa !13
  %i.xh = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next775
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 2
  %i.xj = load i8, ptr %i.xi, align 2, !tbaa !13
  %indvars.iv.next773.1 = add nuw nsw i64 %indvars.iv772, 6 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next773
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 2
  store i8 %i.xj, ptr %i.xl, align 1, !tbaa !13
  %indvars.iv.next775.1 = add nuw nsw i64 %indvars.iv774, 8 ; 2 uses
  %niter969.next.1 = add i64 %niter969, 2         ; 2 uses
  %niter969.ncmp.1.not = icmp eq i64 %niter969.next.1, %unroll_iter968
  br i1 %niter969.ncmp.1.not, label %.loopexit528.loopexit907.unr-lcssa, label %.lr.ph602, !llvm.loop !116

.loopexit528.loopexit907.unr-lcssa:               ; preds = %.lr.ph602
  %i.xm = and i64 %i.wi, 4
  %lcmp.mod966.not.not = icmp eq i64 %i.xm, 0
  br i1 %lcmp.mod966.not.not, label %.lr.ph602.epil.preheader, label %.loopexit528

.lr.ph602.epil.preheader:                         ; preds = %.loopexit528.loopexit907.unr-lcssa, %.lr.ph602.preheader
  %indvars.iv774.epil.init = phi i64 [ 0, %.lr.ph602.preheader ], [ %indvars.iv.next775.1, %.loopexit528.loopexit907.unr-lcssa ] ; 3 uses
  %indvars.iv772.epil.init = phi i64 [ 0, %.lr.ph602.preheader ], [ %indvars.iv.next773.1, %.loopexit528.loopexit907.unr-lcssa ] ; 3 uses
  %lcmp.mod967 = trunc i64 %i.wk to i1
  call void @llvm.assume(i1 %lcmp.mod967)
  %i.xn = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv774.epil.init
  %i.xo = load i8, ptr %i.xn, align 4, !tbaa !13
  %i.xp = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv772.epil.init
  store i8 %i.xo, ptr %i.xp, align 1, !tbaa !13
  %i.xq = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv774.epil.init
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 1
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !13
  %i.xt = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv772.epil.init
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 1
  store i8 %i.xs, ptr %i.xu, align 1, !tbaa !13
  %i.xv = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv774.epil.init
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 2
  %i.xx = load i8, ptr %i.xw, align 2, !tbaa !13
  %i.xy = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv772.epil.init
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 2
  store i8 %i.xx, ptr %i.xz, align 1, !tbaa !13
  br label %.loopexit528

.loopexit528:                                     ; preds = %.lr.ph602.epil.preheader, %.loopexit528.loopexit907.unr-lcssa, %.lr.ph608, %bb.bw, %.critedge506
  %i.ya = mul i32 %.15, 3
  %i.yb = zext i32 %i.ya to i64
  br label %.loopexit538

bb.bx:                                            ; preds = %bb.bj
  %.not642 = icmp eq i32 %i.g, 0                  ; 2 uses
  br i1 %i.hk, label %.preheader537, label %.preheader540

.preheader540:                                    ; preds = %bb.bx
  br i1 %.not642, label %.thread509, label %.preheader539.us.preheader

.preheader539.us.preheader:                       ; preds = %.preheader540
  %wide.trip.count723 = zext i32 %i.g to i64      ; 2 uses
  %xtraiter933 = and i64 %wide.trip.count723, 3   ; 3 uses
  %i.yc = icmp ult i32 %i.g, 4
  %unroll_iter938 = and i64 %wide.trip.count723, 4294967292
  %lcmp.mod935.not = icmp eq i64 %xtraiter933, 0
  %lcmp.mod937 = icmp ne i64 %xtraiter933, 0
  br label %.preheader539.us

.preheader539.us:                                 ; preds = %.preheader539.us.preheader, %._crit_edge571.us
  %indvars.iv725 = phi i64 [ 0, %.preheader539.us.preheader ], [ %indvars.iv.next726, %._crit_edge571.us ] ; 6 uses
  %.18573.us = phi i64 [ 0, %.preheader539.us.preheader ], [ %indvars.iv.next719.lcssa, %._crit_edge571.us ] ; 2 uses
  br i1 %i.yc, label %.epil.preheader932, label %.preheader539.us.new

.preheader539.us.new:                             ; preds = %.preheader539.us, %.preheader539.us.new
  %indvars.iv718 = phi i64 [ %indvars.iv.next719.3, %.preheader539.us.new ], [ %.18573.us, %.preheader539.us ] ; 5 uses
  %indvars.iv716 = phi i64 [ %indvars.iv.next717.3, %.preheader539.us.new ], [ 0, %.preheader539.us ] ; 5 uses
  %niter939 = phi i64 [ %niter939.next.3, %.preheader539.us.new ], [ 0, %.preheader539.us ]
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv716
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !142
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv725
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !14
  %i.yh = trunc i32 %i.yg to i8
  %i.yi = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv718
  store i8 %i.yh, ptr %i.yi, align 1, !tbaa !13
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv716
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !142
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %indvars.iv725
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !14
  %i.yo = trunc i32 %i.yn to i8
  %i.yp = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv718
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 1
  store i8 %i.yo, ptr %i.yq, align 1, !tbaa !13
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv716
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !142
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %indvars.iv725
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !14
  %i.yw = trunc i32 %i.yv to i8
  %i.yx = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv718
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 2
  store i8 %i.yw, ptr %i.yy, align 1, !tbaa !13
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv716
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 24
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !142
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %indvars.iv725
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !14
  %i.ze = trunc i32 %i.zd to i8
  %i.zf = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv718
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 3
  store i8 %i.ze, ptr %i.zg, align 1, !tbaa !13
  %indvars.iv.next717.3 = add nuw nsw i64 %indvars.iv716, 4 ; 2 uses
  %indvars.iv.next719.3 = add nuw nsw i64 %indvars.iv718, 4 ; 3 uses
  %niter939.next.3 = add i64 %niter939, 4         ; 2 uses
  %niter939.ncmp.3 = icmp eq i64 %niter939.next.3, %unroll_iter938
  br i1 %niter939.ncmp.3, label %._crit_edge571.us.unr-lcssa, label %.preheader539.us.new, !llvm.loop !117

._crit_edge571.us.unr-lcssa:                      ; preds = %.preheader539.us.new
  br i1 %lcmp.mod935.not, label %._crit_edge571.us, label %.epil.preheader932

.epil.preheader932:                               ; preds = %._crit_edge571.us.unr-lcssa, %.preheader539.us
  %indvars.iv718.epil.init = phi i64 [ %.18573.us, %.preheader539.us ], [ %indvars.iv.next719.3, %._crit_edge571.us.unr-lcssa ]
  %indvars.iv716.epil.init = phi i64 [ 0, %.preheader539.us ], [ %indvars.iv.next717.3, %._crit_edge571.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod937)
  br label %bb.by

bb.by:                                            ; preds = %bb.by, %.epil.preheader932
  %indvars.iv718.epil = phi i64 [ %indvars.iv718.epil.init, %.epil.preheader932 ], [ %indvars.iv.next719.epil, %bb.by ] ; 2 uses
  %indvars.iv716.epil = phi i64 [ %indvars.iv716.epil.init, %.epil.preheader932 ], [ %indvars.iv.next717.epil, %bb.by ] ; 2 uses
  %epil.iter934 = phi i64 [ 0, %.epil.preheader932 ], [ %epil.iter934.next, %bb.by ]
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv716.epil
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !142
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv725
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !14
  %i.zl = trunc i32 %i.zk to i8
  %i.zm = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv718.epil
  store i8 %i.zl, ptr %i.zm, align 1, !tbaa !13
  %indvars.iv.next717.epil = add nuw nsw i64 %indvars.iv716.epil, 1
  %indvars.iv.next719.epil = add nuw nsw i64 %indvars.iv718.epil, 1 ; 2 uses
  %epil.iter934.next = add i64 %epil.iter934, 1   ; 2 uses
  %epil.iter934.cmp.not = icmp eq i64 %epil.iter934.next, %xtraiter933
  br i1 %epil.iter934.cmp.not, label %._crit_edge571.us, label %bb.by, !llvm.loop !118

._crit_edge571.us:                                ; preds = %bb.by, %._crit_edge571.us.unr-lcssa
  %indvars.iv.next719.lcssa = phi i64 [ %indvars.iv.next719.3, %._crit_edge571.us.unr-lcssa ], [ %indvars.iv.next719.epil, %bb.by ] ; 2 uses
  %indvars.iv.next726 = add nuw nsw i64 %indvars.iv725, 1 ; 2 uses
  %exitcond729.not = icmp eq i64 %indvars.iv.next726, %i.ej
  br i1 %exitcond729.not, label %.loopexit538.thread887, label %.preheader539.us, !llvm.loop !119

.preheader537:                                    ; preds = %bb.bx
  br i1 %.not642, label %.thread509, label %.preheader536.us.preheader

.preheader536.us.preheader:                       ; preds = %.preheader537
  %wide.trip.count737 = zext i32 %i.g to i64      ; 2 uses
  %xtraiter941 = and i64 %wide.trip.count737, 1
  %i.zn = icmp eq i32 %i.g, 1
  %unroll_iter946 = and i64 %wide.trip.count737, 4294967294
  %lcmp.mod943.not = icmp eq i64 %xtraiter941, 0
  %lcmp.mod945 = trunc i32 %i.g to i1
  br label %.preheader536.us

.preheader536.us:                                 ; preds = %.preheader536.us.preheader, %._crit_edge579.us
  %indvars.iv739 = phi i64 [ 0, %.preheader536.us.preheader ], [ %indvars.iv.next740, %._crit_edge579.us ] ; 4 uses
  %.16581.us = phi i64 [ 0, %.preheader536.us.preheader ], [ %indvars.iv.next733.lcssa, %._crit_edge579.us ] ; 2 uses
  br i1 %i.zn, label %.epil.preheader940, label %.preheader536.us.new

.preheader536.us.new:                             ; preds = %.preheader536.us, %.preheader536.us.new
  %indvars.iv732 = phi i64 [ %indvars.iv.next733.1, %.preheader536.us.new ], [ %.16581.us, %.preheader536.us ] ; 3 uses
  %indvars.iv730 = phi i64 [ %indvars.iv.next731.1, %.preheader536.us.new ], [ 0, %.preheader536.us ] ; 3 uses
  %niter947 = phi i64 [ %niter947.next.1, %.preheader536.us.new ], [ 0, %.preheader536.us ]
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv730
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !142
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %indvars.iv739
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !14
  %i.zs = trunc i32 %i.zr to i8
  %i.zt = xor i8 %i.zs, -128
  %i.zu = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv732
  store i8 %i.zt, ptr %i.zu, align 1, !tbaa !13
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv730
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !142
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zx, i64 %indvars.iv739
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !14
  %i.aaa = trunc i32 %i.zz to i8
  %i.aab = xor i8 %i.aaa, -128
  %i.aac = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv732
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 1
  store i8 %i.aab, ptr %i.aad, align 1, !tbaa !13
  %indvars.iv.next731.1 = add nuw nsw i64 %indvars.iv730, 2 ; 2 uses
  %indvars.iv.next733.1 = add nuw nsw i64 %indvars.iv732, 2 ; 3 uses
  %niter947.next.1 = add i64 %niter947, 2         ; 2 uses
  %niter947.ncmp.1 = icmp eq i64 %niter947.next.1, %unroll_iter946
  br i1 %niter947.ncmp.1, label %._crit_edge579.us.unr-lcssa, label %.preheader536.us.new, !llvm.loop !120

._crit_edge579.us.unr-lcssa:                      ; preds = %.preheader536.us.new
  br i1 %lcmp.mod943.not, label %._crit_edge579.us, label %.epil.preheader940

.epil.preheader940:                               ; preds = %._crit_edge579.us.unr-lcssa, %.preheader536.us
  %indvars.iv732.epil.init = phi i64 [ %.16581.us, %.preheader536.us ], [ %indvars.iv.next733.1, %._crit_edge579.us.unr-lcssa ] ; 2 uses
  %indvars.iv730.epil.init = phi i64 [ 0, %.preheader536.us ], [ %indvars.iv.next731.1, %._crit_edge579.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod945)
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv730.epil.init
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !142
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %indvars.iv739
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !14
  %i.aai = trunc i32 %i.aah to i8
  %i.aaj = xor i8 %i.aai, -128
  %i.aak = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv732.epil.init
  store i8 %i.aaj, ptr %i.aak, align 1, !tbaa !13
  %indvars.iv.next733.epil = add nuw nsw i64 %indvars.iv732.epil.init, 1
  br label %._crit_edge579.us

._crit_edge579.us:                                ; preds = %._crit_edge579.us.unr-lcssa, %.epil.preheader940
  %indvars.iv.next733.lcssa = phi i64 [ %indvars.iv.next733.1, %._crit_edge579.us.unr-lcssa ], [ %indvars.iv.next733.epil, %.epil.preheader940 ] ; 2 uses
  %indvars.iv.next740 = add nuw nsw i64 %indvars.iv739, 1 ; 2 uses
  %exitcond743.not = icmp eq i64 %indvars.iv.next740, %i.ej
  br i1 %exitcond743.not, label %.loopexit538.thread887, label %.preheader536.us, !llvm.loop !121

bb.bz:                                            ; preds = %bb.bj
  %.not639 = icmp eq i32 %i.g, 0                  ; 2 uses
  br i1 %i.hk, label %.preheader544, label %.preheader547

.preheader547:                                    ; preds = %bb.bz
  br i1 %.not639, label %.loopexit545, label %.preheader546.us.preheader

.preheader546.us.preheader:                       ; preds = %.preheader547
  %wide.trip.count692 = zext i32 %i.g to i64      ; 2 uses
  %xtraiter911 = and i64 %wide.trip.count692, 3   ; 3 uses
  %i.aal = icmp ult i32 %i.g, 4
  %unroll_iter916 = and i64 %wide.trip.count692, 4294967292
  %lcmp.mod913.not = icmp eq i64 %xtraiter911, 0
  %lcmp.mod915 = icmp ne i64 %xtraiter911, 0
  br label %.preheader546.us

.preheader546.us:                                 ; preds = %.preheader546.us.preheader, %._crit_edge556.us
  %indvars.iv694 = phi i64 [ 0, %.preheader546.us.preheader ], [ %indvars.iv.next695, %._crit_edge556.us ] ; 6 uses
  %.23558.us = phi i64 [ 0, %.preheader546.us.preheader ], [ %indvars.iv.next688.lcssa, %._crit_edge556.us ] ; 2 uses
  br i1 %i.aal, label %.epil.preheader910, label %.preheader546.us.new

.preheader546.us.new:                             ; preds = %.preheader546.us, %.preheader546.us.new
  %indvars.iv687 = phi i64 [ %indvars.iv.next688.3, %.preheader546.us.new ], [ %.23558.us, %.preheader546.us ] ; 5 uses
  %indvars.iv685 = phi i64 [ %indvars.iv.next686.3, %.preheader546.us.new ], [ 0, %.preheader546.us ] ; 5 uses
  %niter917 = phi i64 [ %niter917.next.3, %.preheader546.us.new ], [ 0, %.preheader546.us ]
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv685
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !142
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %indvars.iv694
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !14
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv687
end_hunk_0
