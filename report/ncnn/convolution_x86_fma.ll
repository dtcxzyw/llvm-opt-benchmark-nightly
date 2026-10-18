Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_fma?download=true
inline.NumInlined: 397
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 143
loop-unroll.NumUnrolled: 268
begin_hunk_0_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  br i1 %i.rx, label %_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i:        ; preds = %.lr.ph206.split.us.split.i.i
  %i.ry = sext i32 %.2242.lcssa.i.i to i64
  %i.rz = sext i32 %i.af to i64
  %wide.trip.count249.i.i = sext i32 %.sroa.speculated63 to i64
  %i.sa = add nsw i32 %i.ru, -1
  %xtraiter453 = and i32 %i.ru, 7                 ; 3 uses
  %i.sb = icmp ult i32 %i.sa, 7
  %unroll_iter458 = and i32 %i.ru, 268435448
  %lcmp.mod455.not = icmp eq i32 %xtraiter453, 0
  %lcmp.mod457 = icmp ne i32 %xtraiter453, 0
  br label %_ZN4ncnn3MatD2Ev.exit265.us.i.i

_ZN4ncnn3MatD2Ev.exit265.us.i.i:                  ; preds = %..loopexit118_crit_edge.us.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i
  %indvars.iv246.i.i = phi i64 [ %i.ry, %_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i ], [ %indvars.iv.next247.i.i, %..loopexit118_crit_edge.us.i.i ] ; 2 uses
  %.18205.us.i.i = phi ptr [ %.12.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i ], [ %.lcssa415, %..loopexit118_crit_edge.us.i.i ] ; 2 uses
  %i.sc = load ptr, ptr %9, align 8, !tbaa !37, !noalias !1994
  %i.sd = load i64, ptr %i.x, align 8, !tbaa !38, !noalias !1994
  %i.se = mul i64 %i.sd, %i.rt
  %i.sf = load i64, ptr %i.aa, align 8, !tbaa !79, !noalias !1994
  %i.sg = mul i64 %i.se, %i.sf
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sc, i64 %i.sg
  %i.si = add nsw i64 %indvars.iv246.i.i, %i.rz
  %i.sj = shl nsw i64 %i.si, 3
  %i.sk = getelementptr inbounds i8, ptr %i.sh, i64 %i.sj ; 2 uses
  br i1 %i.sb, label %.epil.preheader452, label %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new

_ZN4ncnn3MatD2Ev.exit265.us.i.i.new:              ; preds = %_ZN4ncnn3MatD2Ev.exit265.us.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new
  %.0234195.us.i.i = phi ptr [ %i.ti, %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new ], [ %i.sk, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ] ; 2 uses
  %.19194.us.i.i = phi ptr [ %i.th, %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new ], [ %.18205.us.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ] ; 9 uses
  %niter459 = phi i32 [ %niter459.next.7, %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ]
  %i.sl = load i64, ptr %.0234195.us.i.i, align 1, !tbaa !114
  store i64 %i.sl, ptr %.19194.us.i.i, align 1, !tbaa !114
  %i.sm = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 8
  %i.sn = getelementptr inbounds nuw i8, ptr %.0234195.us.i.i, i64 %i.rv ; 2 uses
  %i.so = load i64, ptr %i.sn, align 1, !tbaa !114
  store i64 %i.so, ptr %i.sm, align 1, !tbaa !114
  %i.sp = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 16
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.rv ; 2 uses
  %i.sr = load i64, ptr %i.sq, align 1, !tbaa !114
  store i64 %i.sr, ptr %i.sp, align 1, !tbaa !114
  %i.ss = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 24
  %i.st = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.rv ; 2 uses
  %i.su = load i64, ptr %i.st, align 1, !tbaa !114
  store i64 %i.su, ptr %i.ss, align 1, !tbaa !114
  %i.sv = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 32
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.rv ; 2 uses
  %i.sx = load i64, ptr %i.sw, align 1, !tbaa !114
  store i64 %i.sx, ptr %i.sv, align 1, !tbaa !114
  %i.sy = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 40
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 %i.rv ; 2 uses
  %i.ta = load i64, ptr %i.sz, align 1, !tbaa !114
  store i64 %i.ta, ptr %i.sy, align 1, !tbaa !114
  %i.tb = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 48
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.rv ; 2 uses
  %i.td = load i64, ptr %i.tc, align 1, !tbaa !114
  store i64 %i.td, ptr %i.tb, align 1, !tbaa !114
  %i.te = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 56
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 %i.rv ; 2 uses
  %i.tg = load i64, ptr %i.tf, align 1, !tbaa !114
  store i64 %i.tg, ptr %i.te, align 1, !tbaa !114
  %i.th = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 64 ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.rv ; 2 uses
  %niter459.next.7 = add i32 %niter459, 8         ; 2 uses
  %niter459.ncmp.7 = icmp eq i32 %niter459.next.7, %unroll_iter458
  br i1 %niter459.ncmp.7, label %..loopexit118_crit_edge.us.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new, !llvm.loop !1954

..loopexit118_crit_edge.us.i.i.unr-lcssa:         ; preds = %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new
  br i1 %lcmp.mod455.not, label %..loopexit118_crit_edge.us.i.i, label %.epil.preheader452

.epil.preheader452:                               ; preds = %..loopexit118_crit_edge.us.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit265.us.i.i
  %.0234195.us.i.i.epil.init = phi ptr [ %i.sk, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ], [ %i.ti, %..loopexit118_crit_edge.us.i.i.unr-lcssa ]
  %.19194.us.i.i.epil.init = phi ptr [ %.18205.us.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ], [ %i.th, %..loopexit118_crit_edge.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod457)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader452
  %.0234195.us.i.i.epil = phi ptr [ %.0234195.us.i.i.epil.init, %.epil.preheader452 ], [ %i.tl, %bb.k ] ; 2 uses
  %.19194.us.i.i.epil = phi ptr [ %.19194.us.i.i.epil.init, %.epil.preheader452 ], [ %i.tk, %bb.k ] ; 2 uses
  %epil.iter454 = phi i32 [ 0, %.epil.preheader452 ], [ %epil.iter454.next, %bb.k ]
  %i.tj = load i64, ptr %.0234195.us.i.i.epil, align 1, !tbaa !114
  store i64 %i.tj, ptr %.19194.us.i.i.epil, align 1, !tbaa !114
  %i.tk = getelementptr inbounds nuw i8, ptr %.19194.us.i.i.epil, i64 8 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.0234195.us.i.i.epil, i64 %i.rv
  %epil.iter454.next = add i32 %epil.iter454, 1   ; 2 uses
  %epil.iter454.cmp.not = icmp eq i32 %epil.iter454.next, %xtraiter453
  br i1 %epil.iter454.cmp.not, label %..loopexit118_crit_edge.us.i.i, label %bb.k, !llvm.loop !1955

..loopexit118_crit_edge.us.i.i:                   ; preds = %bb.k, %..loopexit118_crit_edge.us.i.i.unr-lcssa
  %.lcssa415 = phi ptr [ %i.th, %..loopexit118_crit_edge.us.i.i.unr-lcssa ], [ %i.tk, %bb.k ]
  %indvars.iv.next247.i.i = add nuw nsw i64 %indvars.iv246.i.i, 1 ; 2 uses
  %exitcond250.not.i.i = icmp eq i64 %indvars.iv.next247.i.i, %wide.trip.count249.i.i
  br i1 %exitcond250.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit265.us.i.i, !llvm.loop !1956

.lr.ph206.split.split.i.i:                        ; preds = %.lr.ph206.i.i
  %i.tm = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.tm, label %_ZN4ncnn3MatD2Ev.exit.preheader.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

_ZN4ncnn3MatD2Ev.exit.preheader.i.i:              ; preds = %.lr.ph206.split.split.i.i
  %i.tn = sext i32 %.2242.lcssa.i.i to i64
  %i.to = sext i32 %i.af to i64
  %wide.trip.count.i.i = sext i32 %.sroa.speculated63 to i64
  %i.tp = add nsw i32 %.sroa.speculated, -1
  %xtraiter446 = and i32 %.sroa.speculated, 7     ; 3 uses
  %i.tq = icmp ult i32 %i.tp, 7
  %unroll_iter450 = and i32 %.sroa.speculated, 2147483640
  %lcmp.mod447.not = icmp eq i32 %xtraiter446, 0
  %lcmp.mod449 = icmp ne i32 %xtraiter446, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i.i

_ZN4ncnn3MatD2Ev.exit.i.i:                        ; preds = %..loopexit_crit_edge.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i
  %indvars.iv241.i.i = phi i64 [ %i.tn, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %indvars.iv.next242.i.i, %..loopexit_crit_edge.i.i ] ; 2 uses
  %.18205.i.i = phi ptr [ %.12.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %.lcssa414, %..loopexit_crit_edge.i.i ] ; 2 uses
  %i.tr = load ptr, ptr %9, align 8, !tbaa !37, !noalias !1995
  %i.ts = load i64, ptr %i.x, align 8, !tbaa !38, !noalias !1995
  %i.tt = mul i64 %i.ts, %i.rw
  %i.tu = load i64, ptr %i.aa, align 8, !tbaa !79, !noalias !1995
  %i.tv = mul i64 %i.tt, %i.tu
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.tv
  %i.tx = getelementptr i8, ptr %i.tw, i64 %indvars.iv241.i.i
  %i.ty = getelementptr i8, ptr %i.tx, i64 %i.to  ; 2 uses
  br i1 %i.tq, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit.i.i.new

_ZN4ncnn3MatD2Ev.exit.i.i.new:                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i.new
  %.0232200.i.i = phi ptr [ %i.uw, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %i.ty, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 2 uses
  %.21199.i.i = phi ptr [ %i.uv, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %.18205.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 9 uses
  %niter451 = phi i32 [ %niter451.next.7, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit.i.i ]
  %i.tz = load i8, ptr %.0232200.i.i, align 1, !tbaa !114
  store i8 %i.tz, ptr %.21199.i.i, align 1, !tbaa !114
  %i.ua = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 1
  %i.ub = getelementptr inbounds nuw i8, ptr %.0232200.i.i, i64 %i.bs ; 2 uses
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !114
  store i8 %i.uc, ptr %i.ua, align 1, !tbaa !114
  %i.ud = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 2
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 %i.bs ; 2 uses
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !114
  store i8 %i.uf, ptr %i.ud, align 1, !tbaa !114
  %i.ug = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 3
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ue, i64 %i.bs ; 2 uses
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !114
  store i8 %i.ui, ptr %i.ug, align 1, !tbaa !114
  %i.uj = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 4
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.bs ; 2 uses
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !114
  store i8 %i.ul, ptr %i.uj, align 1, !tbaa !114
  %i.um = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 5
  %i.un = getelementptr inbounds nuw i8, ptr %i.uk, i64 %i.bs ; 2 uses
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !114
  store i8 %i.uo, ptr %i.um, align 1, !tbaa !114
  %i.up = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 6
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 %i.bs ; 2 uses
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !114
  store i8 %i.ur, ptr %i.up, align 1, !tbaa !114
  %i.us = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 7
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.bs ; 2 uses
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !114
  store i8 %i.uu, ptr %i.us, align 1, !tbaa !114
  %i.uv = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 8 ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 %i.bs ; 2 uses
  %niter451.next.7 = add i32 %niter451, 8         ; 2 uses
  %niter451.ncmp.7 = icmp eq i32 %niter451.next.7, %unroll_iter450
  br i1 %niter451.ncmp.7, label %..loopexit_crit_edge.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit.i.i.new, !llvm.loop !1959

..loopexit_crit_edge.i.i.unr-lcssa:               ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i.new
  br i1 %lcmp.mod447.not, label %..loopexit_crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit.i.i
  %.0232200.i.i.epil.init = phi ptr [ %i.ty, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.uw, %..loopexit_crit_edge.i.i.unr-lcssa ]
  %.21199.i.i.epil.init = phi ptr [ %.18205.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.uv, %..loopexit_crit_edge.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod449)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.0232200.i.i.epil = phi ptr [ %.0232200.i.i.epil.init, %.epil.preheader ], [ %i.uz, %bb.l ] ; 2 uses
  %.21199.i.i.epil = phi ptr [ %.21199.i.i.epil.init, %.epil.preheader ], [ %i.uy, %bb.l ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.ux = load i8, ptr %.0232200.i.i.epil, align 1, !tbaa !114
  store i8 %i.ux, ptr %.21199.i.i.epil, align 1, !tbaa !114
  %i.uy = getelementptr inbounds nuw i8, ptr %.21199.i.i.epil, i64 1 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.0232200.i.i.epil, i64 %i.bs
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter446
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge.i.i, label %bb.l, !llvm.loop !1960

..loopexit_crit_edge.i.i:                         ; preds = %bb.l, %..loopexit_crit_edge.i.i.unr-lcssa
  %.lcssa414 = phi ptr [ %i.uv, %..loopexit_crit_edge.i.i.unr-lcssa ], [ %i.uy, %bb.l ]
  %indvars.iv.next242.i.i = add nuw nsw i64 %indvars.iv241.i.i, 1 ; 2 uses
  %exitcond244.not.i.i = icmp eq i64 %indvars.iv.next242.i.i, %wide.trip.count.i.i
  br i1 %exitcond244.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit.i.i, !llvm.loop !1956

bb.m:                                             ; preds = %bb.h
  %i.va = load i32, ptr %i.y, align 4, !tbaa !89  ; 9 uses
  %i.vb = load i32, ptr %i.z, align 8, !tbaa !80  ; 8 uses
  %i.vc = add nsw i32 %i.bc, -1
  %i.vd = mul nsw i32 %i.be, %i.vc
  %.neg.i.i = xor i32 %i.vd, -1
  %i.ve = add i32 %i.va, %.neg.i.i
  %i.vf = sdiv i32 %i.ve, %i.bg                   ; 3 uses
  %i.vg = add nsw i32 %i.vf, 1                    ; 9 uses
  %i.vh = mul nsw i32 %i.bd, %i.bc                ; 45 uses
  %i.vi = icmp eq i32 %i.vf, 0
  br i1 %i.vi, label %_ZN17FastDivider_epu32C2Ej.exit1130.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.vj = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.vf, i1 true) ; 3 uses
  %i.vk = sub nuw nsw i32 32, %i.vj
  %i.vl = icmp eq i32 %i.vj, 0
  %i.vm = shl nuw i32 1, %i.vk
  %i.vn = select i1 %i.vl, i32 0, i32 %i.vm
  %i.vo = sub i32 %i.vn, %i.vg
  %i.vp = zext i32 %i.vo to i64
  %i.vq = shl nuw i64 %i.vp, 32
  %i.vr = zext i32 %i.vg to i64
  %i.vs = udiv i64 %i.vq, %i.vr
  %i.vt = trunc i64 %i.vs to i32
  %i.vu = add i32 %i.vt, 1
  %i.vv = xor i32 %i.vj, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit1130.i.i

_ZN17FastDivider_epu32C2Ej.exit1130.i.i:          ; preds = %bb.n, %bb.m
  %.012.i1127.i.i = phi i32 [ %i.vv, %bb.n ], [ 0, %bb.m ]
  %.011.i1128.i.i = phi i32 [ 1, %bb.n ], [ 0, %bb.m ]
  %.0.i1129.i.i = phi i32 [ %i.vu, %bb.n ], [ 1, %bb.m ]
  %i.vw = insertelement <4 x i32> poison, i32 %.0.i1129.i.i, i64 0
  %i.vx = shufflevector <4 x i32> %i.vw, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vy = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i1128.i.i, i64 0 ; 2 uses
  %i.vz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i1127.i.i, i64 0 ; 3 uses
  %i.wa = icmp sgt i32 %.sroa.speculated63, 7
  br i1 %i.wa, label %.lr.ph151.i.i, label %.preheader114.i.i

.lr.ph151.i.i:                                    ; preds = %_ZN17FastDivider_epu32C2Ej.exit1130.i.i
  %i.wb = bitcast <4 x i32> %i.vx to <2 x i64>
  %i.wc = and <2 x i64> %i.wb, splat (i64 4294967295) ; 4 uses
  %i.wd = shufflevector <4 x i32> %i.vy, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.we = insertelement <4 x i32> poison, i32 %i.vg, i64 0
  %i.wf = shufflevector <4 x i32> %i.we, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wg = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %i.wh = shufflevector <4 x i32> %i.wg, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar.i = mul i32 %i.va, %i.bh
  %i.wi = insertelement <4 x i32> poison, i32 %.scalar.i, i64 0
  %i.wj = shufflevector <4 x i32> %i.wi, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wk = icmp eq i32 %i.vb, 1                    ; 2 uses
  %i.wl = icmp sgt i32 %.sroa.speculated, 1       ; 2 uses
  %i.wm = mul i32 %i.va, %i.bf                    ; 7 uses
  %i.wn = trunc i64 %i.bs to i32                  ; 3 uses
  %i.wo = icmp ne i32 %i.vb, 8
  %i.wp = sdiv i32 %.sroa.speculated, 8           ; 2 uses
  %i.wq = icmp slt i32 %.sroa.speculated, 8
  %i.wr = sdiv i32 %i.ah, 8                       ; 2 uses
  %brmerge236.i.i = or i1 %i.wq, %i.wo            ; 2 uses
  %i.ws = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.wt = insertelement <2 x i32> %i.ws, i32 %i.vh, i64 1
  %i.wu = insertelement <2 x i32> poison, i32 %i.wm, i64 0
  %i.wv = insertelement <2 x i32> %i.wu, i32 %i.wn, i64 1
  %i.ww = insertelement <2 x i32> poison, i32 %i.vh, i64 0
  %i.wx = shufflevector <2 x i32> %i.ww, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.wy = insertelement <2 x i32> poison, i32 %i.bc, i64 0 ; 2 uses
  %i.wz = shufflevector <2 x i32> %i.wy, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.xa = insertelement <2 x i32> poison, i32 %i.be, i64 0
  %i.xb = shufflevector <2 x i32> %i.xa, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.xc = insertelement <2 x i32> %i.wy, i32 %i.vh, i64 1 ; 2 uses
  %i.xd = insertelement <2 x i32> poison, i32 %i.wm, i64 0
  %i.xe = insertelement <2 x i32> %i.xd, i32 %i.wn, i64 1 ; 2 uses
  %i.xf = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.xg = insertelement <2 x i32> %i.xf, i32 %i.vh, i64 1
  %i.xh = insertelement <2 x i32> poison, i32 %i.wm, i64 0
  %i.xi = insertelement <2 x i32> %i.xh, i32 %i.wn, i64 1
  %i.xj = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %i.xk = shufflevector <2 x i64> %i.xj, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.xl = insertelement <2 x i32> poison, i32 %i.vh, i64 0
  %i.xm = shufflevector <2 x i32> %i.xl, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.o

.preheader114.i.i:                                ; preds = %.loopexit116.i.i, %_ZN17FastDivider_epu32C2Ej.exit1130.i.i
  %.01096.lcssa.i.i = phi i32 [ 0, %_ZN17FastDivider_epu32C2Ej.exit1130.i.i ], [ %i.aoi, %.loopexit116.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.val.i, %_ZN17FastDivider_epu32C2Ej.exit1130.i.i ], [ %.10.i.i, %.loopexit116.i.i ] ; 2 uses
  %i.xn = or disjoint i32 %.01096.lcssa.i.i, 3
  %i.xo = icmp slt i32 %i.xn, %.sroa.speculated63
  br i1 %i.xo, label %.lr.ph182.i.i, label %.preheader103.i.i

.lr.ph182.i.i:                                    ; preds = %.preheader114.i.i
  %i.xp = bitcast <4 x i32> %i.vx to <2 x i64>
  %i.xq = and <2 x i64> %i.xp, splat (i64 4294967295) ; 2 uses
  %i.xr = shufflevector <4 x i32> %i.vy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.xs = insertelement <4 x i32> poison, i32 %i.vg, i64 0
  %i.xt = shufflevector <4 x i32> %i.xs, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.xu = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %i.xv = shufflevector <4 x i32> %i.xu, <4 x i32> poison, <4 x i32> zeroinitializer
  %.scalar.i.i = mul i32 %i.va, %i.bh
  %i.xw = insertelement <4 x i32> poison, i32 %.scalar.i.i, i64 0
  %i.xx = shufflevector <4 x i32> %i.xw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.xy = icmp eq i32 %i.vb, 1                    ; 2 uses
  %i.xz = icmp sgt i32 %.sroa.speculated, 1       ; 2 uses
  %i.ya = mul i32 %i.va, %i.bf                    ; 7 uses
  %i.yb = trunc i64 %i.bs to i32                  ; 3 uses
  %i.yc = icmp ne i32 %i.vb, 8
  %i.yd = sdiv i32 %.sroa.speculated, 8           ; 2 uses
  %i.ye = icmp slt i32 %.sroa.speculated, 8
  %i.yf = sdiv i32 %i.ah, 8                       ; 2 uses
  %brmerge242.i.i = or i1 %i.ye, %i.yc            ; 2 uses
  %i.yg = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.yh = insertelement <2 x i32> %i.yg, i32 %i.vh, i64 1
  %i.yi = insertelement <2 x i32> poison, i32 %i.ya, i64 0
  %i.yj = insertelement <2 x i32> %i.yi, i32 %i.yb, i64 1
  %i.yk = insertelement <2 x i32> poison, i32 %i.vh, i64 0
  %i.yl = shufflevector <2 x i32> %i.yk, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ym = insertelement <2 x i32> poison, i32 %i.bc, i64 0 ; 2 uses
  %i.yn = shufflevector <2 x i32> %i.ym, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.yo = insertelement <2 x i32> poison, i32 %i.be, i64 0
  %i.yp = shufflevector <2 x i32> %i.yo, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.yq = insertelement <2 x i32> %i.ym, i32 %i.vh, i64 1 ; 2 uses
  %i.yr = insertelement <2 x i32> poison, i32 %i.ya, i64 0
  %i.ys = insertelement <2 x i32> %i.yr, i32 %i.yb, i64 1 ; 2 uses
  %i.yt = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.yu = insertelement <2 x i32> %i.yt, i32 %i.vh, i64 1
  %i.yv = insertelement <2 x i32> poison, i32 %i.ya, i64 0
  %i.yw = insertelement <2 x i32> %i.yv, i32 %i.yb, i64 1
  %i.yx = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %i.yy = shufflevector <2 x i64> %i.yx, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.yz = insertelement <2 x i32> poison, i32 %i.vh, i64 0
  %i.za = shufflevector <2 x i32> %i.yz, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.u

bb.o:                                             ; preds = %.loopexit116.i.i, %.lr.ph151.i.i
  %.0150.i.i = phi ptr [ %.val.i, %.lr.ph151.i.i ], [ %.10.i.i, %.loopexit116.i.i ] ; 8 uses
  %.01096149.i.i = phi i32 [ 0, %.lr.ph151.i.i ], [ %i.aoi, %.loopexit116.i.i ] ; 2 uses
  %i.zb = add nsw i32 %.01096149.i.i, %i.af
  %i.zc = insertelement <4 x i32> poison, i32 %i.zb, i64 0
  %i.zd = shufflevector <4 x i32> %i.zc, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ze = add <4 x i32> %i.zd, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.zf = bitcast <4 x i32> %i.ze to <2 x i64>
  %i.zg = add <4 x i32> %i.zd, <i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.zh = bitcast <4 x i32> %i.zg to <2 x i64>
  %i.zi = bitcast <4 x i32> %i.ze to <2 x i64>
  %i.zj = and <2 x i64> %i.zi, splat (i64 4294967295)
  %i.zk = mul nuw <2 x i64> %i.zj, %i.wc
  %i.zl = lshr <2 x i64> %i.zk, splat (i64 32)
  %i.zm = lshr <2 x i64> %i.zf, splat (i64 32)
  %i.zn = mul nuw <2 x i64> %i.zm, %i.wc
  %i.zo = bitcast <2 x i64> %i.zl to <8 x i16>
  %i.zp = bitcast <2 x i64> %i.zn to <8 x i16>
  %i.zq = shufflevector <8 x i16> %i.zo, <8 x i16> %i.zp, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.zr = bitcast <8 x i16> %i.zq to <4 x i32>    ; 2 uses
  %i.zs = sub <4 x i32> %i.ze, %i.zr
  %i.zt = lshr <4 x i32> %i.zs, %i.wd
  %i.zu = add <4 x i32> %i.zt, %i.zr
  %i.zv = call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.zu, <4 x i32> %i.vz) ; 2 uses
  %i.zw = bitcast <4 x i32> %i.zg to <2 x i64>
  %i.zx = and <2 x i64> %i.zw, splat (i64 4294967295)
  %i.zy = mul nuw <2 x i64> %i.zx, %i.wc
  %i.zz = lshr <2 x i64> %i.zy, splat (i64 32)
  %i.aaa = lshr <2 x i64> %i.zh, splat (i64 32)
  %i.aab = mul nuw <2 x i64> %i.aaa, %i.wc
  %i.aac = bitcast <2 x i64> %i.zz to <8 x i16>
  %i.aad = bitcast <2 x i64> %i.aab to <8 x i16>
  %i.aae = shufflevector <8 x i16> %i.aac, <8 x i16> %i.aad, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.aaf = bitcast <8 x i16> %i.aae to <4 x i32>  ; 2 uses
  %i.aag = sub <4 x i32> %i.zg, %i.aaf
  %i.aah = lshr <4 x i32> %i.aag, %i.wd
  %i.aai = add <4 x i32> %i.aah, %i.aaf
  %i.aaj = call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.aai, <4 x i32> %i.vz) ; 2 uses
  %i.aak = mul <4 x i32> %i.zv, %i.wf
  %i.aal = sub <4 x i32> %i.ze, %i.aak
  %i.aam = mul <4 x i32> %i.aaj, %i.wf
  %i.aan = sub <4 x i32> %i.zg, %i.aam
  %i.aao = mul <4 x i32> %i.aal, %i.wh            ; 2 uses
  %i.aap = mul <4 x i32> %i.aan, %i.wh
  %i.aaq = mul <4 x i32> %i.zv, %i.wj             ; 3 uses
  %i.aar = mul <4 x i32> %i.aaj, %i.wj            ; 2 uses
  %i.aas = add <4 x i32> %i.aao, %i.aaq           ; 4 uses
  %i.aat = add <4 x i32> %i.aap, %i.aar           ; 4 uses
  %shift356 = shufflevector <4 x i32> %i.aar, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.aau = icmp eq <4 x i32> %i.aaq, %shift356
  %i.aav = extractelement <4 x i1> %i.aau, i64 0
  %or.cond.i.i = and i1 %i.bp, %i.aav
  br i1 %or.cond.i.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %foldExtExtBinop = add nsw <4 x i32> %i.aao, %i.aaq
  %i.aaw = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 3 uses
  br i1 %i.wk, label %.preheader119.i82.i, label %.loopexit118.i.i

.preheader119.i82.i:                              ; preds = %bb.p
  br i1 %i.wl, label %.lr.ph138.i.i, label %.preheader117.i.i

.lr.ph138.i.i:                                    ; preds = %.preheader119.i82.i
  %i.aax = sext i32 %i.aaw to i64                 ; 2 uses
  br label %bb.q

.preheader117.i.i:                                ; preds = %bb.q, %.preheader119.i82.i
  %.01100.lcssa.i.i = phi i32 [ 0, %.preheader119.i82.i ], [ %i.acm, %bb.q ] ; 2 uses
  %.1.lcssa.i.i = phi ptr [ %.0150.i.i, %.preheader119.i82.i ], [ %i.acl, %bb.q ] ; 2 uses
  %i.aay = icmp slt i32 %.01100.lcssa.i.i, %.sroa.speculated
  br i1 %i.aay, label %.lr.ph143.i83.i, label %.loopexit116.i.i

.lr.ph143.i83.i:                                  ; preds = %.preheader117.i.i
  %i.aaz = sext i32 %i.aaw to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph138.i.i
end_hunk_0
begin_hunk_1_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.ajj = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.aji)
  %i.ajk = add i32 %i.ajj, %i.aje
  %i.ajl = insertelement <4 x i32> poison, i32 %i.ajk, i64 0
  %i.ajm = shufflevector <4 x i32> %i.ajl, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ajn = add <4 x i32> %i.ajm, %i.aas           ; 4 uses
  %i.ajo = add <4 x i32> %i.ajm, %i.aat           ; 4 uses
  %i.ajp = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.034.0.vec.extract.i.i = extractelement <4 x i32> %i.ajn, i64 0
  %i.ajq = sext i32 %.sroa.034.0.vec.extract.i.i to i64
  %i.ajr = getelementptr inbounds i8, ptr %i.ajp, i64 %i.ajq
  %i.ajs = load i8, ptr %i.ajr, align 1, !tbaa !114
  store i8 %i.ajs, ptr %.7129.i.i, align 1, !tbaa !114
  %i.ajt = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.034.4.vec.extract.i.i = extractelement <4 x i32> %i.ajn, i64 1
  %i.aju = sext i32 %.sroa.034.4.vec.extract.i.i to i64
  %i.ajv = getelementptr inbounds i8, ptr %i.ajt, i64 %i.aju
  %i.ajw = load i8, ptr %i.ajv, align 1, !tbaa !114
  %i.ajx = getelementptr inbounds nuw i8, ptr %.7129.i.i, i64 1
  store i8 %i.ajw, ptr %i.ajx, align 1, !tbaa !114
  %i.ajy = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.034.8.vec.extract.i.i = extractelement <4 x i32> %i.ajn, i64 2
  %i.ajz = sext i32 %.sroa.034.8.vec.extract.i.i to i64
  %i.aka = getelementptr inbounds i8, ptr %i.ajy, i64 %i.ajz
  %i.akb = load i8, ptr %i.aka, align 1, !tbaa !114
  %i.akc = getelementptr inbounds nuw i8, ptr %.7129.i.i, i64 2
  store i8 %i.akb, ptr %i.akc, align 1, !tbaa !114
  %i.akd = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.034.12.vec.extract.i.i = extractelement <4 x i32> %i.ajn, i64 3
  %i.ake = sext i32 %.sroa.034.12.vec.extract.i.i to i64
  %i.akf = getelementptr inbounds i8, ptr %i.akd, i64 %i.ake
  %i.akg = load i8, ptr %i.akf, align 1, !tbaa !114
  %i.akh = getelementptr inbounds nuw i8, ptr %.7129.i.i, i64 3
  store i8 %i.akg, ptr %i.akh, align 1, !tbaa !114
  %i.aki = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.736.16.vec.extract.i.i = extractelement <4 x i32> %i.ajo, i64 0
  %i.akj = sext i32 %.sroa.736.16.vec.extract.i.i to i64
  %i.akk = getelementptr inbounds i8, ptr %i.aki, i64 %i.akj
  %i.akl = load i8, ptr %i.akk, align 1, !tbaa !114
  %i.akm = getelementptr inbounds nuw i8, ptr %.7129.i.i, i64 4
  store i8 %i.akl, ptr %i.akm, align 1, !tbaa !114
  %i.akn = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.736.20.vec.extract.i.i = extractelement <4 x i32> %i.ajo, i64 1
  %i.ako = sext i32 %.sroa.736.20.vec.extract.i.i to i64
  %i.akp = getelementptr inbounds i8, ptr %i.akn, i64 %i.ako
  %i.akq = load i8, ptr %i.akp, align 1, !tbaa !114
  %i.akr = getelementptr inbounds nuw i8, ptr %.7129.i.i, i64 5
  store i8 %i.akq, ptr %i.akr, align 1, !tbaa !114
  %i.aks = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.736.24.vec.extract.i.i = extractelement <4 x i32> %i.ajo, i64 2
  %i.akt = sext i32 %.sroa.736.24.vec.extract.i.i to i64
  %i.aku = getelementptr inbounds i8, ptr %i.aks, i64 %i.akt
  %i.akv = load i8, ptr %i.aku, align 1, !tbaa !114
  %i.akw = getelementptr inbounds nuw i8, ptr %.7129.i.i, i64 6
  store i8 %i.akv, ptr %i.akw, align 1, !tbaa !114
  %i.akx = load ptr, ptr %9, align 8, !tbaa !37
  %.sroa.736.28.vec.extract.i.i = extractelement <4 x i32> %i.ajo, i64 3
  %i.aky = sext i32 %.sroa.736.28.vec.extract.i.i to i64
  %i.akz = getelementptr inbounds i8, ptr %i.akx, i64 %i.aky
  %i.ala = load i8, ptr %i.akz, align 1, !tbaa !114
  %i.alb = getelementptr inbounds nuw i8, ptr %.7129.i.i, i64 7
  store i8 %i.ala, ptr %i.alb, align 1, !tbaa !114
  %i.alc = getelementptr inbounds nuw i8, ptr %.7129.i.i, i64 8 ; 2 uses
  %i.ald = add nuw nsw i32 %.11104128.i.i, 1      ; 2 uses
  %exitcond.not.i79.i = icmp eq i32 %i.ald, %.sroa.speculated
  br i1 %exitcond.not.i79.i, label %.loopexit116.i.i, label %.lr.ph130.i.i, !llvm.loop !1965

.loopexit123.i.i:                                 ; preds = %bb.t
  br i1 %brmerge236.i.i, label %.loopexit116.i.i, label %.lr.ph134.i.i

.lr.ph134.i.i:                                    ; preds = %.loopexit123.i.i, %.lr.ph134.i.i
  %.9133.i.i = phi ptr [ %i.aog, %.lr.ph134.i.i ], [ %.0150.i.i, %.loopexit123.i.i ] ; 5 uses
  %.01105132.i.i = phi i32 [ %i.aoh, %.lr.ph134.i.i ], [ 0, %.loopexit123.i.i ] ; 2 uses
  %i.ale = add nsw i32 %.01105132.i.i, %i.wr      ; 2 uses
  %i.alf = srem i32 %i.ale, %i.vh                 ; 2 uses
  %i.alg = srem i32 %i.alf, %i.bc
  %i.alh = mul nsw i32 %i.alg, %i.be
  %i.ali = insertelement <2 x i32> poison, i32 %i.alf, i64 0
  %i.alj = insertelement <2 x i32> %i.ali, i32 %i.ale, i64 1
  %i.alk = sdiv <2 x i32> %i.alj, %i.wt
  %i.all = mul <2 x i32> %i.alk, %i.wv
  %i.alm = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.all)
  %i.aln = add i32 %i.alm, %i.alh
  %i.alo = insertelement <4 x i32> poison, i32 %i.aln, i64 0
  %i.alp = shufflevector <4 x i32> %i.alo, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.alq = add <4 x i32> %i.alp, %i.aas
  %i.alr = add <4 x i32> %i.alp, %i.aat
  %i.als = shl <4 x i32> %i.alq, splat (i32 3)    ; 4 uses
  %i.alt = shl <4 x i32> %i.alr, splat (i32 3)    ; 4 uses
  %i.alu = load ptr, ptr %9, align 8, !tbaa !37   ; 8 uses
  %.sroa.024.0.vec.extract.i.i = extractelement <4 x i32> %i.als, i64 0
  %i.alv = sext i32 %.sroa.024.0.vec.extract.i.i to i64
  %i.alw = getelementptr inbounds i8, ptr %i.alu, i64 %i.alv
  %i.alx = load i64, ptr %i.alw, align 1, !tbaa !114
  %i.aly = insertelement <2 x i64> poison, i64 %i.alx, i64 0
  %.sroa.024.4.vec.extract.i.i = extractelement <4 x i32> %i.als, i64 1
  %i.alz = sext i32 %.sroa.024.4.vec.extract.i.i to i64
  %i.ama = getelementptr inbounds i8, ptr %i.alu, i64 %i.alz
  %i.amb = load i64, ptr %i.ama, align 1, !tbaa !114
  %i.amc = insertelement <2 x i64> poison, i64 %i.amb, i64 0
  %.sroa.024.8.vec.extract.i.i = extractelement <4 x i32> %i.als, i64 2
  %i.amd = sext i32 %.sroa.024.8.vec.extract.i.i to i64
  %i.ame = getelementptr inbounds i8, ptr %i.alu, i64 %i.amd
  %i.amf = load i64, ptr %i.ame, align 1, !tbaa !114
  %i.amg = insertelement <2 x i64> poison, i64 %i.amf, i64 0
  %.sroa.024.12.vec.extract.i.i = extractelement <4 x i32> %i.als, i64 3
  %i.amh = sext i32 %.sroa.024.12.vec.extract.i.i to i64
  %i.ami = getelementptr inbounds i8, ptr %i.alu, i64 %i.amh
  %i.amj = load i64, ptr %i.ami, align 1, !tbaa !114
  %i.amk = insertelement <2 x i64> poison, i64 %i.amj, i64 0
  %.sroa.726.16.vec.extract.i.i = extractelement <4 x i32> %i.alt, i64 0
  %i.aml = sext i32 %.sroa.726.16.vec.extract.i.i to i64
  %i.amm = getelementptr inbounds i8, ptr %i.alu, i64 %i.aml
  %i.amn = load i64, ptr %i.amm, align 1, !tbaa !114
  %i.amo = insertelement <2 x i64> poison, i64 %i.amn, i64 0
  %.sroa.726.20.vec.extract.i.i = extractelement <4 x i32> %i.alt, i64 1
  %i.amp = sext i32 %.sroa.726.20.vec.extract.i.i to i64
  %i.amq = getelementptr inbounds i8, ptr %i.alu, i64 %i.amp
  %i.amr = load i64, ptr %i.amq, align 1, !tbaa !114
  %i.ams = insertelement <2 x i64> poison, i64 %i.amr, i64 0
  %.sroa.726.24.vec.extract.i.i = extractelement <4 x i32> %i.alt, i64 2
  %i.amt = sext i32 %.sroa.726.24.vec.extract.i.i to i64
  %i.amu = getelementptr inbounds i8, ptr %i.alu, i64 %i.amt
  %i.amv = load i64, ptr %i.amu, align 1, !tbaa !114
  %i.amw = insertelement <2 x i64> poison, i64 %i.amv, i64 0
  %.sroa.726.28.vec.extract.i.i = extractelement <4 x i32> %i.alt, i64 3
  %i.amx = sext i32 %.sroa.726.28.vec.extract.i.i to i64
  %i.amy = getelementptr inbounds i8, ptr %i.alu, i64 %i.amx
  %i.amz = load i64, ptr %i.amy, align 1, !tbaa !114
  %i.ana = insertelement <2 x i64> poison, i64 %i.amz, i64 0
  %i.anb = bitcast <2 x i64> %i.aly to <8 x i16>
  %i.anc = bitcast <2 x i64> %i.amc to <8 x i16>
  %i.and = shufflevector <8 x i16> %i.anb, <8 x i16> %i.anc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ane = bitcast <2 x i64> %i.amg to <8 x i16>
  %i.anf = bitcast <2 x i64> %i.amk to <8 x i16>
  %i.ang = shufflevector <8 x i16> %i.ane, <8 x i16> %i.anf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.anh = bitcast <2 x i64> %i.amo to <8 x i16>
  %i.ani = bitcast <2 x i64> %i.ams to <8 x i16>
  %i.anj = shufflevector <8 x i16> %i.anh, <8 x i16> %i.ani, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ank = bitcast <2 x i64> %i.amw to <8 x i16>
  %i.anl = bitcast <2 x i64> %i.ana to <8 x i16>
  %i.anm = shufflevector <8 x i16> %i.ank, <8 x i16> %i.anl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ann = bitcast <8 x i16> %i.and to <4 x i32>  ; 2 uses
  %i.ano = bitcast <8 x i16> %i.ang to <4 x i32>  ; 2 uses
  %i.anp = shufflevector <4 x i32> %i.ann, <4 x i32> %i.ano, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.anq = bitcast <4 x i32> %i.anp to <2 x i64>  ; 2 uses
  %i.anr = shufflevector <4 x i32> %i.ann, <4 x i32> %i.ano, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ans = bitcast <4 x i32> %i.anr to <2 x i64>  ; 2 uses
  %i.ant = bitcast <8 x i16> %i.anj to <4 x i32>  ; 2 uses
  %i.anu = bitcast <8 x i16> %i.anm to <4 x i32>  ; 2 uses
  %i.anv = shufflevector <4 x i32> %i.ant, <4 x i32> %i.anu, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.anw = bitcast <4 x i32> %i.anv to <2 x i64>  ; 2 uses
  %i.anx = shufflevector <4 x i32> %i.ant, <4 x i32> %i.anu, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.any = bitcast <4 x i32> %i.anx to <2 x i64>  ; 2 uses
  %i.anz = shufflevector <2 x i64> %i.anq, <2 x i64> %i.anw, <2 x i32> <i32 0, i32 2>
  %i.aoa = shufflevector <2 x i64> %i.anq, <2 x i64> %i.anw, <2 x i32> <i32 1, i32 3>
  %i.aob = shufflevector <2 x i64> %i.ans, <2 x i64> %i.any, <2 x i32> <i32 0, i32 2>
  %i.aoc = shufflevector <2 x i64> %i.ans, <2 x i64> %i.any, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.anz, ptr %.9133.i.i, align 1, !tbaa !114
  %i.aod = getelementptr inbounds nuw i8, ptr %.9133.i.i, i64 16
  store <2 x i64> %i.aoa, ptr %i.aod, align 1, !tbaa !114
  %i.aoe = getelementptr inbounds nuw i8, ptr %.9133.i.i, i64 32
  store <2 x i64> %i.aob, ptr %i.aoe, align 1, !tbaa !114
  %i.aof = getelementptr inbounds nuw i8, ptr %.9133.i.i, i64 48
  store <2 x i64> %i.aoc, ptr %i.aof, align 1, !tbaa !114
  %i.aog = getelementptr inbounds nuw i8, ptr %.9133.i.i, i64 64 ; 2 uses
  %i.aoh = add nuw nsw i32 %.01105132.i.i, 1      ; 2 uses
  %exitcond284.not.i.i = icmp eq i32 %i.aoh, %i.wp
  br i1 %exitcond284.not.i.i, label %.loopexit116.i.i, label %.lr.ph134.i.i, !llvm.loop !1966

.loopexit116.i.i:                                 ; preds = %.lr.ph134.i.i, %.lr.ph130.i.i, %bb.s, %bb.r, %.loopexit123.i.i, %.preheader122.i77.i, %.loopexit118.i.i, %.preheader117.i.i
  %.10.i.i = phi ptr [ %.0150.i.i, %.loopexit123.i.i ], [ %.1.lcssa.i.i, %.preheader117.i.i ], [ %.0150.i.i, %.loopexit118.i.i ], [ %i.aeu, %bb.s ], [ %i.adf, %bb.r ], [ %.6.lcssa.i78.i, %.preheader122.i77.i ], [ %i.alc, %.lr.ph130.i.i ], [ %i.aog, %.lr.ph134.i.i ] ; 2 uses
  %i.aoi = add nuw nsw i32 %.01096149.i.i, 8      ; 3 uses
  %i.aoj = or disjoint i32 %i.aoi, 7
  %i.aok = icmp slt i32 %i.aoj, %.sroa.speculated63
  br i1 %i.aok, label %bb.o, label %.preheader114.i.i, !llvm.loop !1967

.preheader103.i.i:                                ; preds = %.loopexit105.i.i, %.preheader114.i.i
  %.11097.lcssa.i.i = phi i32 [ %.01096.lcssa.i.i, %.preheader114.i.i ], [ %i.bad, %.loopexit105.i.i ] ; 3 uses
  %.11.lcssa.i.i = phi ptr [ %.0.lcssa.i.i, %.preheader114.i.i ], [ %.21.i.i, %.loopexit105.i.i ] ; 2 uses
  %i.aol = or disjoint i32 %.11097.lcssa.i.i, 1
  %i.aom = icmp slt i32 %i.aol, %.sroa.speculated63
  br i1 %i.aom, label %.lr.ph214.i.i, label %.preheader92.i.i

.lr.ph214.i.i:                                    ; preds = %.preheader103.i.i
  %i.aon = mul i32 %i.va, %i.bh
  %i.aoo = icmp eq i32 %i.vb, 1                   ; 2 uses
  %i.aop = icmp sgt i32 %.sroa.speculated, 1      ; 2 uses
  %i.aoq = mul i32 %i.va, %i.bf                   ; 7 uses
  %i.aor = trunc i64 %i.bs to i32
  %i.aos = icmp eq i32 %i.vb, 8
  %i.aot = sdiv i32 %.sroa.speculated, 8          ; 2 uses
  %i.aou = sdiv i32 %i.ah, 8                      ; 2 uses
  %i.aov = icmp sgt i32 %.sroa.speculated, 7
  %or.cond246.i.i = and i1 %i.aov, %i.aos         ; 2 uses
  %i.aow = insertelement <2 x i32> poison, i32 %i.bg, i64 0
  %i.aox = shufflevector <2 x i32> %i.aow, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aoy = insertelement <2 x i32> poison, i32 %i.vg, i64 0
  %i.aoz = shufflevector <2 x i32> %i.aoy, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.apa = insertelement <2 x i32> poison, i32 %i.aon, i64 0
  %i.apb = shufflevector <2 x i32> %i.apa, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.apc = insertelement <2 x i32> poison, i32 %i.vh, i64 0
  %17 = shufflevector <2 x i32> %i.apc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.apd = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %18 = shufflevector <2 x i32> %i.apd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ape = insertelement <2 x i32> poison, i32 %i.aoq, i64 0
  %i.apf = shufflevector <2 x i32> %i.ape, <2 x i32> poison, <2 x i32> zeroinitializer
  %19 = insertelement <2 x i32> poison, i32 %i.be, i64 0
  %i.apg = shufflevector <2 x i32> %19, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aph = insertelement <2 x i32> poison, i32 %i.aor, i64 0
  %i.api = shufflevector <2 x i32> %i.aph, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.apj = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %i.apk = shufflevector <2 x i64> %i.apj, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.apl = insertelement <2 x i32> poison, i32 %i.vh, i64 0
  %i.apm = shufflevector <2 x i32> %i.apl, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.ac

bb.u:                                             ; preds = %.loopexit105.i.i, %.lr.ph182.i.i
  %.11181.i.i = phi ptr [ %.0.lcssa.i.i, %.lr.ph182.i.i ], [ %.21.i.i, %.loopexit105.i.i ] ; 8 uses
  %.11097180.i.i = phi i32 [ %.01096.lcssa.i.i, %.lr.ph182.i.i ], [ %i.bad, %.loopexit105.i.i ] ; 2 uses
  %i.apn = add nsw i32 %.11097180.i.i, %i.af
  %i.apo = insertelement <4 x i32> poison, i32 %i.apn, i64 0
  %i.app = shufflevector <4 x i32> %i.apo, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.apq = add <4 x i32> %i.app, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.apr = bitcast <4 x i32> %i.apq to <2 x i64>
  %i.aps = bitcast <4 x i32> %i.apq to <2 x i64>
  %i.apt = and <2 x i64> %i.aps, splat (i64 4294967295)
  %i.apu = mul nuw <2 x i64> %i.apt, %i.xq
  %i.apv = lshr <2 x i64> %i.apu, splat (i64 32)
  %i.apw = lshr <2 x i64> %i.apr, splat (i64 32)
  %i.apx = mul nuw <2 x i64> %i.apw, %i.xq
  %i.apy = bitcast <2 x i64> %i.apv to <8 x i16>
  %i.apz = bitcast <2 x i64> %i.apx to <8 x i16>
  %i.aqa = shufflevector <8 x i16> %i.apy, <8 x i16> %i.apz, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.aqb = bitcast <8 x i16> %i.aqa to <4 x i32>  ; 2 uses
  %i.aqc = sub <4 x i32> %i.apq, %i.aqb
  %i.aqd = lshr <4 x i32> %i.aqc, %i.xr
  %i.aqe = add <4 x i32> %i.aqd, %i.aqb
  %i.aqf = call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.aqe, <4 x i32> %i.vz) ; 2 uses
  %i.aqg = mul <4 x i32> %i.aqf, %i.xt
  %i.aqh = sub <4 x i32> %i.apq, %i.aqg
  %i.aqi = mul <4 x i32> %i.aqh, %i.xv            ; 2 uses
  %i.aqj = mul <4 x i32> %i.aqf, %i.xx            ; 4 uses
  %i.aqk = add <4 x i32> %i.aqi, %i.aqj           ; 4 uses
  %shift355 = shufflevector <4 x i32> %i.aqj, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.aql = icmp eq <4 x i32> %i.aqj, %shift355
  %i.aqm = extractelement <4 x i1> %i.aql, i64 0
  %or.cond3.i.i = and i1 %i.bp, %i.aqm
  br i1 %or.cond3.i.i, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %foldExtExtBinop335 = add nsw <4 x i32> %i.aqi, %i.aqj
  %i.aqn = extractelement <4 x i32> %foldExtExtBinop335, i64 0 ; 3 uses
  br i1 %i.xy, label %.preheader108.i.i, label %.loopexit107.i.i

.preheader108.i.i:                                ; preds = %bb.v
  br i1 %i.xz, label %.lr.ph169.i76.i, label %.preheader106.i.i

.lr.ph169.i76.i:                                  ; preds = %.preheader108.i.i
  %i.aqo = sext i32 %i.aqn to i64                 ; 2 uses
  br label %bb.w

.preheader106.i.i:                                ; preds = %bb.w, %.preheader108.i.i
  %.01106.lcssa.i.i = phi i32 [ 0, %.preheader108.i.i ], [ %i.asf, %bb.w ] ; 2 uses
  %.12.lcssa.i75.i = phi ptr [ %.11181.i.i, %.preheader108.i.i ], [ %i.ase, %bb.w ] ; 2 uses
  %i.aqp = icmp slt i32 %.01106.lcssa.i.i, %.sroa.speculated
  br i1 %i.aqp, label %.lr.ph174.i.i, label %.loopexit105.i.i

.lr.ph174.i.i:                                    ; preds = %.preheader106.i.i
  %i.aqq = sext i32 %i.aqn to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.w, %.lr.ph169.i76.i
  %.12168.i.i = phi ptr [ %.11181.i.i, %.lr.ph169.i76.i ], [ %i.ase, %bb.w ] ; 2 uses
  %.01106167.i.i = phi i32 [ 0, %.lr.ph169.i76.i ], [ %i.asf, %bb.w ] ; 2 uses
  %i.aqr = add nsw i32 %.01106167.i.i, %i.ah      ; 3 uses
  %i.aqs = add nsw i32 %i.aqr, 1                  ; 2 uses
  %i.aqt = srem i32 %i.aqr, %i.vh                 ; 2 uses
  %i.aqu = srem i32 %i.aqs, %i.vh                 ; 2 uses
  %i.aqv = sdiv i32 %i.aqt, %i.bc
  %i.aqw = sdiv i32 %i.aqu, %i.bc
  %i.aqx = srem i32 %i.aqt, %i.bc
  %i.aqy = srem i32 %i.aqu, %i.bc
  %i.aqz = mul i32 %i.aqv, %i.ya
  %i.ara = mul nsw i32 %i.aqx, %i.be
  %i.arb = add nsw i32 %i.ara, %i.aqz
  %i.arc = sext i32 %i.arb to i64
  %i.ard = insertelement <2 x i32> poison, i32 %i.aqr, i64 0
  %i.are = insertelement <2 x i32> %i.ard, i32 %i.aqs, i64 1
  %i.arf = sdiv <2 x i32> %i.are, %i.za
  %i.arg = sext <2 x i32> %i.arf to <2 x i64>
  %i.arh = mul <2 x i64> %i.yy, %i.arg            ; 2 uses
  %i.ari = mul i32 %i.aqw, %i.ya
  %i.arj = mul nsw i32 %i.aqy, %i.be
  %i.ark = add nsw i32 %i.arj, %i.ari
  %i.arl = sext i32 %i.ark to i64
  %i.arm = load ptr, ptr %9, align 8, !tbaa !37   ; 2 uses
  %i.arn = extractelement <2 x i64> %i.arh, i64 0
  %i.aro = getelementptr i8, ptr %i.arm, i64 %i.arn
  %i.arp = getelementptr i8, ptr %i.aro, i64 %i.aqo
  %i.arq = getelementptr i8, ptr %i.arp, i64 %i.arc
  %i.arr = load i64, ptr %i.arq, align 1, !tbaa !114
  %i.ars = insertelement <2 x i64> poison, i64 %i.arr, i64 0
  %i.art = extractelement <2 x i64> %i.arh, i64 1
  %i.aru = getelementptr i8, ptr %i.arm, i64 %i.art
  %i.arv = getelementptr i8, ptr %i.aru, i64 %i.aqo
  %i.arw = getelementptr i8, ptr %i.arv, i64 %i.arl
  %i.arx = load i64, ptr %i.arw, align 1, !tbaa !114
  %i.ary = insertelement <2 x i64> poison, i64 %i.arx, i64 0
  %i.arz = bitcast <2 x i64> %i.ars to <16 x i8>
  %i.asa = bitcast <2 x i64> %i.ary to <16 x i8>
  %i.asb = shufflevector <16 x i8> %i.arz, <16 x i8> %i.asa, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.asc = bitcast <16 x i8> %i.asb to <2 x i64>
  %i.asd = extractelement <2 x i64> %i.asc, i64 0
  store i64 %i.asd, ptr %.12168.i.i, align 1, !tbaa !114
  %i.ase = getelementptr inbounds nuw i8, ptr %.12168.i.i, i64 8 ; 2 uses
  %i.asf = add nuw nsw i32 %.01106167.i.i, 2      ; 3 uses
  %i.asg = or disjoint i32 %i.asf, 1
  %i.ash = icmp slt i32 %i.asg, %.sroa.speculated
  br i1 %i.ash, label %bb.w, label %.preheader106.i.i, !llvm.loop !1968

bb.x:                                             ; preds = %bb.x, %.lr.ph174.i.i
  %.13173.i.i = phi ptr [ %.12.lcssa.i75.i, %.lr.ph174.i.i ], [ %i.atn, %bb.x ] ; 5 uses
  %.11107172.i.i = phi i32 [ %.01106.lcssa.i.i, %.lr.ph174.i.i ], [ %i.ato, %bb.x ] ; 2 uses
  %i.asi = add nsw i32 %.11107172.i.i, %i.ah      ; 2 uses
  %i.asj = sdiv i32 %i.asi, %i.vh
  %i.ask = srem i32 %i.asi, %i.vh                 ; 2 uses
  %i.asl = sdiv i32 %i.ask, %i.bc
  %i.asm = srem i32 %i.ask, %i.bc
  %i.asn = sext i32 %i.asj to i64
  %i.aso = mul i64 %i.bs, %i.asn
  %i.asp = add i64 %i.aso, %i.aqq
  %i.asq = mul i32 %i.asl, %i.ya
  %i.asr = mul nsw i32 %i.asm, %i.be
  %i.ass = add nsw i32 %i.asr, %i.asq
  %i.ast = sext i32 %i.ass to i64
  %i.asu = add i64 %i.asp, %i.ast                 ; 4 uses
  %i.asv = load ptr, ptr %9, align 8, !tbaa !37
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 %i.asu
  %i.asx = load i8, ptr %i.asw, align 1, !tbaa !114
  store i8 %i.asx, ptr %.13173.i.i, align 1, !tbaa !114
  %i.asy = load ptr, ptr %9, align 8, !tbaa !37
  %i.asz = getelementptr i8, ptr %i.asy, i64 %i.asu
  %i.ata = getelementptr i8, ptr %i.asz, i64 1
  %i.atb = load i8, ptr %i.ata, align 1, !tbaa !114
  %i.atc = getelementptr inbounds nuw i8, ptr %.13173.i.i, i64 1
  store i8 %i.atb, ptr %i.atc, align 1, !tbaa !114
  %i.atd = load ptr, ptr %9, align 8, !tbaa !37
  %i.ate = getelementptr i8, ptr %i.atd, i64 %i.asu
  %i.atf = getelementptr i8, ptr %i.ate, i64 2
  %i.atg = load i8, ptr %i.atf, align 1, !tbaa !114
  %i.ath = getelementptr inbounds nuw i8, ptr %.13173.i.i, i64 2
  store i8 %i.atg, ptr %i.ath, align 1, !tbaa !114
  %i.ati = load ptr, ptr %9, align 8, !tbaa !37
  %i.atj = getelementptr i8, ptr %i.ati, i64 %i.asu
  %i.atk = getelementptr i8, ptr %i.atj, i64 3
  %i.atl = load i8, ptr %i.atk, align 1, !tbaa !114
  %i.atm = getelementptr inbounds nuw i8, ptr %.13173.i.i, i64 3
  store i8 %i.atl, ptr %i.atm, align 1, !tbaa !114
  %i.atn = getelementptr inbounds nuw i8, ptr %.13173.i.i, i64 4 ; 2 uses
  %i.ato = add nuw nsw i32 %.11107172.i.i, 1      ; 2 uses
  %exitcond289.not.i.i = icmp eq i32 %i.ato, %.sroa.speculated
  br i1 %exitcond289.not.i.i, label %.loopexit105.i.i, label %bb.x, !llvm.loop !1969

.loopexit107.i.i:                                 ; preds = %bb.v
  br i1 %brmerge242.i.i, label %.loopexit105.i.i, label %.lr.ph178.i.i

.lr.ph178.i.i:                                    ; preds = %.loopexit107.i.i
  %i.atp = sext i32 %i.aqn to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph178.i.i
  %.15177.i74.i = phi ptr [ %.11181.i.i, %.lr.ph178.i.i ], [ %i.aum, %bb.y ] ; 3 uses
  %.01108176.i.i = phi i32 [ 0, %.lr.ph178.i.i ], [ %i.aun, %bb.y ] ; 2 uses
  %i.atq = add nsw i32 %.01108176.i.i, %i.yf      ; 2 uses
  %i.atr = sdiv i32 %i.atq, %i.vh
  %i.ats = srem i32 %i.atq, %i.vh                 ; 2 uses
  %i.att = sdiv i32 %i.ats, %i.bc
  %i.atu = srem i32 %i.ats, %i.bc
  %i.atv = sext i32 %i.atr to i64
  %i.atw = mul i64 %i.bs, %i.atv
  %i.atx = add i64 %i.atw, %i.atp
  %i.aty = mul i32 %i.att, %i.ya
  %i.atz = mul nsw i32 %i.atu, %i.be
  %i.aua = add nsw i32 %i.atz, %i.aty
  %i.aub = sext i32 %i.aua to i64
  %i.auc = add i64 %i.atx, %i.aub
  %i.aud = shl i64 %i.auc, 3
  %i.aue = load ptr, ptr %9, align 8, !tbaa !37
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aue, i64 %i.aud ; 2 uses
  %i.aug = load <8 x i16>, ptr %i.auf, align 1, !tbaa !114 ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %i.auf, i64 16
  %i.aui = load <8 x i16>, ptr %i.auh, align 1, !tbaa !114 ; 2 uses
  %i.auj = shufflevector <8 x i16> %i.aug, <8 x i16> %i.aui, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.auk = shufflevector <8 x i16> %i.aug, <8 x i16> %i.aui, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.auj, ptr %.15177.i74.i, align 1, !tbaa !114
  %i.aul = getelementptr inbounds nuw i8, ptr %.15177.i74.i, i64 16
  store <8 x i16> %i.auk, ptr %i.aul, align 1, !tbaa !114
  %i.aum = getelementptr inbounds nuw i8, ptr %.15177.i74.i, i64 32 ; 2 uses
  %i.aun = add nuw nsw i32 %.01108176.i.i, 1      ; 2 uses
  %exitcond290.not.i.i = icmp eq i32 %i.aun, %i.yd
  br i1 %exitcond290.not.i.i, label %.loopexit105.i.i, label %bb.y, !llvm.loop !1970

bb.z:                                             ; preds = %bb.u
  br i1 %i.xy, label %.preheader113.i.i, label %.loopexit112.i.i

.preheader113.i.i:                                ; preds = %bb.z
  br i1 %i.xz, label %.lr.ph156.i.i, label %.preheader111.i.i

.preheader111.i.i:                                ; preds = %.lr.ph156.i.i, %.preheader113.i.i
end_hunk_1
begin_hunk_2_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  store i8 %i.bda, ptr %.36223.i.us.i, align 1, !tbaa !114
  %i.bdb = getelementptr inbounds nuw i8, ptr %.36223.i.us.i, i64 1 ; 2 uses
  %i.bdc = add nuw nsw i32 %.11110222.i.us.i, 1   ; 2 uses
  %exitcond295.not.i.us.i = icmp eq i32 %i.bdc, %.sroa.speculated
  br i1 %exitcond295.not.i.us.i, label %.loopexit.i.us.i, label %bb.ab, !llvm.loop !1976

.loopexit.i.us.i:                                 ; preds = %bb.ab, %.preheader89.i.us.i
  %.39.i.us.i = phi ptr [ %.35.lcssa.i.us.i, %.preheader89.i.us.i ], [ %i.bdb, %bb.ab ]
  %i.bdd = add nuw nsw i32 %.31099230.i.us.i, 1   ; 2 uses
  %exitcond297.not.i.us.i = icmp eq i32 %i.bdd, %.sroa.speculated63
  br i1 %exitcond297.not.i.us.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %.preheader91.i.us.i, !llvm.loop !1977

.lr.ph232.i.split.i:                              ; preds = %.lr.ph232.i.i
  %i.bde = icmp slt i32 %.sroa.speculated, 8
  %i.bdf = icmp ne i32 %i.vb, 8
  %brmerge249.i.i = or i1 %i.bde, %i.bdf
  br i1 %brmerge249.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %.loopexit90.i.i

bb.ac:                                            ; preds = %.loopexit94.i.i, %.lr.ph214.i.i
  %.22213.i.i = phi ptr [ %.11.lcssa.i.i, %.lr.ph214.i.i ], [ %.33.i.i, %.loopexit94.i.i ] ; 8 uses
  %.21098212.i.i = phi i32 [ %.11097.lcssa.i.i, %.lr.ph214.i.i ], [ %i.bkt, %.loopexit94.i.i ] ; 2 uses
  %i.bdg = add nsw i32 %.21098212.i.i, %i.af      ; 2 uses
  %i.bdh = add nsw i32 %i.bdg, 1
  %i.bdi = insertelement <2 x i32> poison, i32 %i.bdg, i64 0
  %i.bdj = insertelement <2 x i32> %i.bdi, i32 %i.bdh, i64 1
  %.frozen = freeze <2 x i32> %i.bdj              ; 2 uses
  %.frozen516 = freeze <2 x i32> %i.aoz           ; 2 uses
  %i.bdk = sdiv <2 x i32> %.frozen, %.frozen516   ; 2 uses
  %i.bdl = mul <2 x i32> %i.bdk, %.frozen516
  %.decomposed = sub <2 x i32> %.frozen, %i.bdl
  %i.bdm = mul nsw <2 x i32> %.decomposed, %i.aox
  %i.bdn = mul <2 x i32> %i.bdk, %i.apb           ; 3 uses
  %i.bdo = add nsw <2 x i32> %i.bdm, %i.bdn       ; 8 uses
  %i.bdp = shufflevector <2 x i32> %i.bdo, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %shift354 = shufflevector <2 x i32> %i.bdn, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.bdq = icmp eq <2 x i32> %i.bdn, %shift354
  %i.bdr = extractelement <2 x i1> %i.bdq, i64 0
  %or.cond5.i.i = and i1 %i.bp, %i.bdr
  br i1 %or.cond5.i.i, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.aoo, label %.preheader97.i.i, label %.loopexit96.i.i

.preheader97.i.i:                                 ; preds = %bb.ad
  br i1 %i.aop, label %.lr.ph201.i.i, label %.preheader95.i.i

.lr.ph201.i.i:                                    ; preds = %.preheader97.i.i
  %i.bds = extractelement <2 x i32> %i.bdo, i64 0
  %i.bdt = sext i32 %i.bds to i64                 ; 2 uses
  br label %bb.ae

.preheader95.i.i:                                 ; preds = %bb.ae, %.preheader97.i.i
  %.01114.lcssa.i.i = phi i32 [ 0, %.preheader97.i.i ], [ %i.bfl, %bb.ae ] ; 2 uses
  %.23.lcssa.i.i = phi ptr [ %.22213.i.i, %.preheader97.i.i ], [ %i.bfk, %bb.ae ] ; 2 uses
  %i.bdu = icmp slt i32 %.01114.lcssa.i.i, %.sroa.speculated
  br i1 %i.bdu, label %.lr.ph206.i72.i, label %.loopexit94.i.i

.lr.ph206.i72.i:                                  ; preds = %.preheader95.i.i
  %i.bdv = extractelement <2 x i32> %i.bdo, i64 0
  %i.bdw = sext i32 %i.bdv to i64
  br label %bb.af

bb.ae:                                            ; preds = %bb.ae, %.lr.ph201.i.i
  %.23200.i.i = phi ptr [ %.22213.i.i, %.lr.ph201.i.i ], [ %i.bfk, %bb.ae ] ; 5 uses
  %.01114199.i.i = phi i32 [ 0, %.lr.ph201.i.i ], [ %i.bfl, %bb.ae ] ; 2 uses
  %i.bdx = add nsw i32 %.01114199.i.i, %i.ah      ; 3 uses
  %i.bdy = add nsw i32 %i.bdx, 1                  ; 2 uses
  %i.bdz = srem i32 %i.bdx, %i.vh                 ; 2 uses
  %i.bea = srem i32 %i.bdy, %i.vh                 ; 2 uses
  %i.beb = sdiv i32 %i.bdz, %i.bc
  %i.bec = sdiv i32 %i.bea, %i.bc
  %i.bed = srem i32 %i.bdz, %i.bc
  %i.bee = srem i32 %i.bea, %i.bc
  %i.bef = mul i32 %i.beb, %i.aoq
  %i.beg = mul nsw i32 %i.bed, %i.be
  %i.beh = add nsw i32 %i.beg, %i.bef
  %i.bei = sext i32 %i.beh to i64
  %i.bej = insertelement <2 x i32> poison, i32 %i.bdx, i64 0
  %i.bek = insertelement <2 x i32> %i.bej, i32 %i.bdy, i64 1
  %i.bel = sdiv <2 x i32> %i.bek, %i.apm
  %i.bem = sext <2 x i32> %i.bel to <2 x i64>
  %i.ben = mul <2 x i64> %i.apk, %i.bem           ; 2 uses
  %i.beo = mul i32 %i.bec, %i.aoq
  %i.bep = mul nsw i32 %i.bee, %i.be
  %i.beq = add nsw i32 %i.bep, %i.beo
  %i.ber = sext i32 %i.beq to i64
  %i.bes = load ptr, ptr %9, align 8, !tbaa !37   ; 2 uses
  %i.bet = extractelement <2 x i64> %i.ben, i64 0
  %i.beu = getelementptr i8, ptr %i.bes, i64 %i.bet
  %i.bev = getelementptr i8, ptr %i.beu, i64 %i.bdt
  %i.bew = getelementptr i8, ptr %i.bev, i64 %i.bei ; 2 uses
  %i.bex = extractelement <2 x i64> %i.ben, i64 1
  %i.bey = getelementptr i8, ptr %i.bes, i64 %i.bex
  %i.bez = getelementptr i8, ptr %i.bey, i64 %i.bdt
  %i.bfa = getelementptr i8, ptr %i.bez, i64 %i.ber ; 2 uses
  %i.bfb = load i8, ptr %i.bew, align 1, !tbaa !114
  store i8 %i.bfb, ptr %.23200.i.i, align 1, !tbaa !114
  %i.bfc = load i8, ptr %i.bfa, align 1, !tbaa !114
  %i.bfd = getelementptr inbounds nuw i8, ptr %.23200.i.i, i64 1
  store i8 %i.bfc, ptr %i.bfd, align 1, !tbaa !114
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bew, i64 1
  %i.bff = load i8, ptr %i.bfe, align 1, !tbaa !114
  %i.bfg = getelementptr inbounds nuw i8, ptr %.23200.i.i, i64 2
  store i8 %i.bff, ptr %i.bfg, align 1, !tbaa !114
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfa, i64 1
  %i.bfi = load i8, ptr %i.bfh, align 1, !tbaa !114
  %i.bfj = getelementptr inbounds nuw i8, ptr %.23200.i.i, i64 3
  store i8 %i.bfi, ptr %i.bfj, align 1, !tbaa !114
  %i.bfk = getelementptr inbounds nuw i8, ptr %.23200.i.i, i64 4 ; 2 uses
  %i.bfl = add nuw nsw i32 %.01114199.i.i, 2      ; 3 uses
  %i.bfm = or disjoint i32 %i.bfl, 1
  %i.bfn = icmp slt i32 %i.bfm, %.sroa.speculated
  br i1 %i.bfn, label %bb.ae, label %.preheader95.i.i, !llvm.loop !1978

bb.af:                                            ; preds = %bb.af, %.lr.ph206.i72.i
  %.24205.i.i = phi ptr [ %.23.lcssa.i.i, %.lr.ph206.i72.i ], [ %i.bgh, %bb.af ] ; 3 uses
  %.11115204.i.i = phi i32 [ %.01114.lcssa.i.i, %.lr.ph206.i72.i ], [ %i.bgi, %bb.af ] ; 2 uses
  %i.bfo = add nsw i32 %.11115204.i.i, %i.ah      ; 2 uses
  %i.bfp = sdiv i32 %i.bfo, %i.vh
  %i.bfq = srem i32 %i.bfo, %i.vh                 ; 2 uses
  %i.bfr = sdiv i32 %i.bfq, %i.bc
  %i.bfs = srem i32 %i.bfq, %i.bc
  %i.bft = sext i32 %i.bfp to i64
  %i.bfu = mul i64 %i.bs, %i.bft
  %i.bfv = mul i32 %i.bfr, %i.aoq
  %i.bfw = mul nsw i32 %i.bfs, %i.be
  %i.bfx = add nsw i32 %i.bfw, %i.bfv
  %i.bfy = sext i32 %i.bfx to i64
  %i.bfz = load ptr, ptr %9, align 8, !tbaa !37
  %i.bga = getelementptr i8, ptr %i.bfz, i64 %i.bfu
  %i.bgb = getelementptr i8, ptr %i.bga, i64 %i.bdw
  %i.bgc = getelementptr i8, ptr %i.bgb, i64 %i.bfy ; 2 uses
  %i.bgd = load i8, ptr %i.bgc, align 1, !tbaa !114
  store i8 %i.bgd, ptr %.24205.i.i, align 1, !tbaa !114
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bgc, i64 1
  %i.bgf = load i8, ptr %i.bge, align 1, !tbaa !114
  %i.bgg = getelementptr inbounds nuw i8, ptr %.24205.i.i, i64 1
  store i8 %i.bgf, ptr %i.bgg, align 1, !tbaa !114
  %i.bgh = getelementptr inbounds nuw i8, ptr %.24205.i.i, i64 2 ; 2 uses
  %i.bgi = add nuw nsw i32 %.11115204.i.i, 1      ; 2 uses
  %exitcond293.not.i.i = icmp eq i32 %i.bgi, %.sroa.speculated
  br i1 %exitcond293.not.i.i, label %.loopexit94.i.i, label %bb.af, !llvm.loop !1979

.loopexit96.i.i:                                  ; preds = %bb.ad
  br i1 %or.cond246.i.i, label %.lr.ph210.i.i, label %.loopexit94.i.i

.lr.ph210.i.i:                                    ; preds = %.loopexit96.i.i
  %i.bgj = extractelement <2 x i32> %i.bdo, i64 0
  %i.bgk = sext i32 %i.bgj to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph210.i.i
  %.26209.i.i = phi ptr [ %.22213.i.i, %.lr.ph210.i.i ], [ %i.bhd, %bb.ag ] ; 2 uses
  %.01116208.i.i = phi i32 [ 0, %.lr.ph210.i.i ], [ %i.bhe, %bb.ag ] ; 2 uses
  %i.bgl = add nsw i32 %.01116208.i.i, %i.aou     ; 2 uses
  %i.bgm = sdiv i32 %i.bgl, %i.vh
  %i.bgn = srem i32 %i.bgl, %i.vh                 ; 2 uses
  %i.bgo = sdiv i32 %i.bgn, %i.bc
  %i.bgp = srem i32 %i.bgn, %i.bc
  %i.bgq = sext i32 %i.bgm to i64
  %i.bgr = mul i64 %i.bs, %i.bgq
  %i.bgs = add i64 %i.bgr, %i.bgk
  %i.bgt = mul i32 %i.bgo, %i.aoq
  %i.bgu = mul nsw i32 %i.bgp, %i.be
  %i.bgv = add nsw i32 %i.bgu, %i.bgt
  %i.bgw = sext i32 %i.bgv to i64
  %i.bgx = add i64 %i.bgs, %i.bgw
  %i.bgy = shl i64 %i.bgx, 3
  %i.bgz = load ptr, ptr %9, align 8, !tbaa !37
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgz, i64 %i.bgy
  %i.bhb = load <8 x i16>, ptr %i.bha, align 1, !tbaa !114
  %i.bhc = shufflevector <8 x i16> %i.bhb, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.bhc, ptr %.26209.i.i, align 1, !tbaa !114
  %i.bhd = getelementptr inbounds nuw i8, ptr %.26209.i.i, i64 16 ; 2 uses
  %i.bhe = add nuw nsw i32 %.01116208.i.i, 1      ; 2 uses
  %exitcond294.not.i.i = icmp eq i32 %i.bhe, %i.aot
  br i1 %exitcond294.not.i.i, label %.loopexit94.i.i, label %bb.ag, !llvm.loop !1980

bb.ah:                                            ; preds = %bb.ac
  br i1 %i.aoo, label %.preheader102.i.i, label %.loopexit101.i.i

.preheader102.i.i:                                ; preds = %bb.ah
  br i1 %i.aop, label %.lr.ph187.i71.i, label %.preheader100.i.i

.preheader100.i.i:                                ; preds = %.lr.ph187.i71.i, %.preheader102.i.i
  %.01117.lcssa.i.i = phi i32 [ 0, %.preheader102.i.i ], [ %i.bio, %.lr.ph187.i71.i ] ; 2 uses
  %.28.lcssa.i.i = phi ptr [ %.22213.i.i, %.preheader102.i.i ], [ %i.bin, %.lr.ph187.i71.i ] ; 2 uses
  %i.bhf = icmp slt i32 %.01117.lcssa.i.i, %.sroa.speculated
  br i1 %i.bhf, label %.lr.ph192.i.i, label %.loopexit94.i.i

.lr.ph192.i.i:                                    ; preds = %.preheader100.i.i
  %i.bhg = extractelement <2 x i32> %i.bdo, i64 0
  %i.bhh = sext i32 %i.bhg to i64
  %i.bhi = extractelement <2 x i32> %i.bdo, i64 1
  %i.bhj = sext i32 %i.bhi to i64
  br label %bb.ai

.lr.ph187.i71.i:                                  ; preds = %.preheader102.i.i, %.lr.ph187.i71.i
  %.28186.i.i = phi ptr [ %i.bin, %.lr.ph187.i71.i ], [ %.22213.i.i, %.preheader102.i.i ] ; 5 uses
  %.01117185.i.i = phi i32 [ %i.bio, %.lr.ph187.i71.i ], [ 0, %.preheader102.i.i ] ; 2 uses
  %i.bhk = add nsw i32 %.01117185.i.i, %i.ah      ; 2 uses
  %i.bhl = add nsw i32 %i.bhk, 1
  %i.bhm = load ptr, ptr %9, align 8, !tbaa !37   ; 4 uses
  %i.bhn = insertelement <2 x i32> poison, i32 %i.bhk, i64 0
  %i.bho = insertelement <2 x i32> %i.bhn, i32 %i.bhl, i64 1
  %.frozen517 = freeze <2 x i32> %i.bho           ; 2 uses
  %.frozen518 = freeze <2 x i32> %17              ; 2 uses
  %20 = sdiv <2 x i32> %.frozen517, %.frozen518   ; 2 uses
  %21 = mul <2 x i32> %20, %.frozen518
  %.decomposed519 = sub <2 x i32> %.frozen517, %21 ; 2 uses
  %.frozen520 = freeze <2 x i32> %18              ; 2 uses
  %22 = sdiv <2 x i32> %.decomposed519, %.frozen520 ; 2 uses
  %23 = mul <2 x i32> %22, %.frozen520
  %.decomposed521 = sub <2 x i32> %.decomposed519, %23
  %i.bhp = mul <2 x i32> %22, %i.apf
  %24 = mul nsw <2 x i32> %.decomposed521, %i.apg
  %25 = mul <2 x i32> %20, %i.api
  %i.bhq = add <2 x i32> %i.bhp, %25
  %i.bhr = add <2 x i32> %i.bhq, %24
  %i.bhs = shufflevector <2 x i32> %i.bhr, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bht = add <4 x i32> %i.bhs, %i.bdp           ; 4 uses
  %i.bhu = extractelement <4 x i32> %i.bht, i64 0
  %i.bhv = sext i32 %i.bhu to i64
  %i.bhw = getelementptr inbounds i8, ptr %i.bhm, i64 %i.bhv
  %i.bhx = extractelement <4 x i32> %i.bht, i64 1
  %i.bhy = sext i32 %i.bhx to i64
  %i.bhz = getelementptr inbounds i8, ptr %i.bhm, i64 %i.bhy
  %i.bia = extractelement <4 x i32> %i.bht, i64 2
  %i.bib = sext i32 %i.bia to i64
  %i.bic = getelementptr inbounds i8, ptr %i.bhm, i64 %i.bib
  %i.bid = extractelement <4 x i32> %i.bht, i64 3
  %i.bie = sext i32 %i.bid to i64
  %i.bif = getelementptr inbounds i8, ptr %i.bhm, i64 %i.bie
  %i.big = load i8, ptr %i.bhw, align 1, !tbaa !114
  store i8 %i.big, ptr %.28186.i.i, align 1, !tbaa !114
  %i.bih = load i8, ptr %i.bic, align 1, !tbaa !114
  %i.bii = getelementptr inbounds nuw i8, ptr %.28186.i.i, i64 1
  store i8 %i.bih, ptr %i.bii, align 1, !tbaa !114
  %i.bij = load i8, ptr %i.bhz, align 1, !tbaa !114
  %i.bik = getelementptr inbounds nuw i8, ptr %.28186.i.i, i64 2
  store i8 %i.bij, ptr %i.bik, align 1, !tbaa !114
  %i.bil = load i8, ptr %i.bif, align 1, !tbaa !114
  %i.bim = getelementptr inbounds nuw i8, ptr %.28186.i.i, i64 3
  store i8 %i.bil, ptr %i.bim, align 1, !tbaa !114
  %i.bin = getelementptr inbounds nuw i8, ptr %.28186.i.i, i64 4 ; 2 uses
  %i.bio = add nuw nsw i32 %.01117185.i.i, 2      ; 3 uses
  %i.bip = or disjoint i32 %i.bio, 1
  %i.biq = icmp slt i32 %i.bip, %.sroa.speculated
  br i1 %i.biq, label %.lr.ph187.i71.i, label %.preheader100.i.i, !llvm.loop !1981

bb.ai:                                            ; preds = %bb.ai, %.lr.ph192.i.i
  %.29191.i.i = phi ptr [ %.28.lcssa.i.i, %.lr.ph192.i.i ], [ %i.bjl, %bb.ai ] ; 3 uses
  %.11118190.i.i = phi i32 [ %.01117.lcssa.i.i, %.lr.ph192.i.i ], [ %i.bjm, %bb.ai ] ; 2 uses
  %i.bir = add nsw i32 %.11118190.i.i, %i.ah      ; 2 uses
  %i.bis = sdiv i32 %i.bir, %i.vh
  %i.bit = srem i32 %i.bir, %i.vh                 ; 2 uses
  %i.biu = sdiv i32 %i.bit, %i.bc
  %i.biv = srem i32 %i.bit, %i.bc
  %i.biw = sext i32 %i.bis to i64
  %i.bix = mul i64 %i.bs, %i.biw
  %i.biy = mul i32 %i.biu, %i.aoq
  %i.biz = mul nsw i32 %i.biv, %i.be
  %i.bja = add nsw i32 %i.biz, %i.biy
  %i.bjb = sext i32 %i.bja to i64                 ; 2 uses
  %i.bjc = load ptr, ptr %9, align 8, !tbaa !37
  %i.bjd = getelementptr i8, ptr %i.bjc, i64 %i.bix ; 2 uses
  %i.bje = getelementptr i8, ptr %i.bjd, i64 %i.bhh
  %i.bjf = getelementptr i8, ptr %i.bje, i64 %i.bjb
  %i.bjg = getelementptr i8, ptr %i.bjd, i64 %i.bhj
  %i.bjh = getelementptr i8, ptr %i.bjg, i64 %i.bjb
  %i.bji = load i8, ptr %i.bjf, align 1, !tbaa !114
  store i8 %i.bji, ptr %.29191.i.i, align 1, !tbaa !114
  %i.bjj = load i8, ptr %i.bjh, align 1, !tbaa !114
  %i.bjk = getelementptr inbounds nuw i8, ptr %.29191.i.i, i64 1
  store i8 %i.bjj, ptr %i.bjk, align 1, !tbaa !114
  %i.bjl = getelementptr inbounds nuw i8, ptr %.29191.i.i, i64 2 ; 2 uses
  %i.bjm = add nuw nsw i32 %.11118190.i.i, 1      ; 2 uses
  %exitcond291.not.i.i = icmp eq i32 %i.bjm, %.sroa.speculated
  br i1 %exitcond291.not.i.i, label %.loopexit94.i.i, label %bb.ai, !llvm.loop !1982

.loopexit101.i.i:                                 ; preds = %bb.ah
  br i1 %or.cond246.i.i, label %.lr.ph197.i.i, label %.loopexit94.i.i

.lr.ph197.i.i:                                    ; preds = %.loopexit101.i.i
  %i.bjn = extractelement <2 x i32> %i.bdo, i64 0
  %i.bjo = sext i32 %i.bjn to i64
  %i.bjp = extractelement <2 x i32> %i.bdo, i64 1
  %i.bjq = sext i32 %i.bjp to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph197.i.i
  %.31196.i.i = phi ptr [ %.22213.i.i, %.lr.ph197.i.i ], [ %i.bkr, %bb.aj ] ; 2 uses
  %.31120195.i.i = phi i32 [ 0, %.lr.ph197.i.i ], [ %i.bks, %bb.aj ] ; 2 uses
  %i.bjr = add nsw i32 %.31120195.i.i, %i.aou     ; 2 uses
  %i.bjs = sdiv i32 %i.bjr, %i.vh
  %i.bjt = srem i32 %i.bjr, %i.vh                 ; 2 uses
  %i.bju = sdiv i32 %i.bjt, %i.bc
  %i.bjv = srem i32 %i.bjt, %i.bc
  %i.bjw = sext i32 %i.bjs to i64
  %i.bjx = mul i64 %i.bs, %i.bjw
  %i.bjy = mul i32 %i.bju, %i.aoq
  %i.bjz = mul nsw i32 %i.bjv, %i.be
  %i.bka = add nsw i32 %i.bjz, %i.bjy
  %i.bkb = sext i32 %i.bka to i64
  %i.bkc = add i64 %i.bjx, %i.bkb                 ; 2 uses
  %i.bkd = add i64 %i.bkc, %i.bjo
  %i.bke = shl i64 %i.bkd, 3
  %i.bkf = add i64 %i.bkc, %i.bjq
  %i.bkg = shl i64 %i.bkf, 3
  %i.bkh = load ptr, ptr %9, align 8, !tbaa !37   ; 2 uses
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bkh, i64 %i.bke
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bkh, i64 %i.bkg
  %i.bkk = load i64, ptr %i.bki, align 1, !tbaa !114
  %i.bkl = insertelement <2 x i64> poison, i64 %i.bkk, i64 0
  %i.bkm = load i64, ptr %i.bkj, align 1, !tbaa !114
  %i.bkn = insertelement <2 x i64> poison, i64 %i.bkm, i64 0
  %i.bko = bitcast <2 x i64> %i.bkl to <8 x i16>
  %i.bkp = bitcast <2 x i64> %i.bkn to <8 x i16>
  %i.bkq = shufflevector <8 x i16> %i.bko, <8 x i16> %i.bkp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.bkq, ptr %.31196.i.i, align 1, !tbaa !114
  %i.bkr = getelementptr inbounds nuw i8, ptr %.31196.i.i, i64 16 ; 2 uses
  %i.bks = add nuw nsw i32 %.31120195.i.i, 1      ; 2 uses
  %exitcond292.not.i.i = icmp eq i32 %i.bks, %i.aot
  br i1 %exitcond292.not.i.i, label %.loopexit94.i.i, label %bb.aj, !llvm.loop !1983

.loopexit94.i.i:                                  ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.af, %.loopexit101.i.i, %.preheader100.i.i, %.loopexit96.i.i, %.preheader95.i.i
  %.33.i.i = phi ptr [ %.22213.i.i, %.loopexit101.i.i ], [ %.22213.i.i, %.loopexit96.i.i ], [ %.23.lcssa.i.i, %.preheader95.i.i ], [ %i.bhd, %bb.ag ], [ %i.bgh, %bb.af ], [ %.28.lcssa.i.i, %.preheader100.i.i ], [ %i.bjl, %bb.ai ], [ %i.bkr, %bb.aj ] ; 2 uses
  %i.bkt = add nuw nsw i32 %.21098212.i.i, 2      ; 3 uses
  %i.bku = or disjoint i32 %i.bkt, 1
  %i.bkv = icmp slt i32 %i.bku, %.sroa.speculated63
  br i1 %i.bkv, label %bb.ac, label %.preheader92.i.i, !llvm.loop !1984

.loopexit90.i.i:                                  ; preds = %.lr.ph232.i.split.i, %.loopexit.i.loopexit88.i
  %.34231.i.i = phi ptr [ %i.blu, %.loopexit.i.loopexit88.i ], [ %.22.lcssa.i.i, %.lr.ph232.i.split.i ]
  %.31099230.i.i = phi i32 [ %i.blw, %.loopexit.i.loopexit88.i ], [ %.21098.lcssa.i.i, %.lr.ph232.i.split.i ] ; 2 uses
  %i.bkw = add nsw i32 %.31099230.i.i, %i.af      ; 2 uses
  %i.bkx = sdiv i32 %i.bkw, %i.vg
  %i.bky = srem i32 %i.bkw, %i.vg
  %i.bkz = mul nsw i32 %i.bky, %i.bg
  %i.bla = mul i32 %i.bkx, %i.bah
  %i.blb = add nsw i32 %i.bkz, %i.bla
  %i.blc = sext i32 %i.blb to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.loopexit90.i.i
  %.38227.i.i = phi ptr [ %.34231.i.i, %.loopexit90.i.i ], [ %i.blu, %bb.ak ] ; 2 uses
  %.01095226.i.i = phi i32 [ 0, %.loopexit90.i.i ], [ %i.blv, %bb.ak ] ; 2 uses
  %i.bld = add nsw i32 %.01095226.i.i, %i.bam     ; 2 uses
  %i.ble = sdiv i32 %i.bld, %i.vh
  %i.blf = srem i32 %i.bld, %i.vh                 ; 2 uses
  %i.blg = sdiv i32 %i.blf, %i.bc
  %i.blh = srem i32 %i.blf, %i.bc
  %i.bli = sext i32 %i.ble to i64
  %i.blj = mul i64 %i.bs, %i.bli
  %i.blk = add i64 %i.blj, %i.blc
  %i.bll = mul i32 %i.blg, %i.bak
  %i.blm = mul nsw i32 %i.blh, %i.be
  %i.bln = add nsw i32 %i.blm, %i.bll
  %i.blo = sext i32 %i.bln to i64
  %i.blp = add i64 %i.blk, %i.blo
  %i.blq = shl i64 %i.blp, 3
  %i.blr = load ptr, ptr %9, align 8, !tbaa !37
  %i.bls = getelementptr inbounds nuw i8, ptr %i.blr, i64 %i.blq
  %i.blt = load i64, ptr %i.bls, align 1, !tbaa !114
  store i64 %i.blt, ptr %.38227.i.i, align 1, !tbaa !114
  %i.blu = getelementptr inbounds nuw i8, ptr %.38227.i.i, i64 8 ; 2 uses
  %i.blv = add nuw nsw i32 %.01095226.i.i, 1      ; 2 uses
  %exitcond296.not.i.i = icmp eq i32 %i.blv, %i.bal
  br i1 %exitcond296.not.i.i, label %.loopexit.i.loopexit88.i, label %bb.ak, !llvm.loop !1985

.loopexit.i.loopexit88.i:                         ; preds = %bb.ak
  %i.blw = add nuw nsw i32 %.31099230.i.i, 1      ; 2 uses
  %exitcond297.not.i.i = icmp eq i32 %i.blw, %.sroa.speculated63
  br i1 %exitcond297.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %.loopexit90.i.i, !llvm.loop !1977

_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit: ; preds = %.loopexit.i.loopexit88.i, %.loopexit.i.us.i, %..loopexit_crit_edge.i.i, %..loopexit118_crit_edge.us.i.i, %.lr.ph232.i.split.i, %.preheader92.i.i, %.lr.ph206.split.split.i.i, %.lr.ph206.split.us.split.i.i, %.lr.ph206.i.i, %.preheader.i.i, %bb.c, %bb.e, %bb.g
  %i.blx = load ptr, ptr %i.q, align 8, !tbaa !35 ; 2 uses
  %.not.i37 = icmp eq ptr %i.blx, null
  br i1 %.not.i37, label %_ZN4ncnn3MatD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit
  %i.bly = atomicrmw add ptr %i.blx, i32 -1 acq_rel, align 4
  %i.blz = icmp eq i32 %i.bly, 1
  br i1 %i.blz, label %bb.am, label %_ZN4ncnn3MatD2Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.bma = load ptr, ptr %i.t, align 8, !tbaa !36 ; 3 uses
  %.not3.i38 = icmp eq ptr %i.bma, null
  %i.bmb = load ptr, ptr %16, align 8, !tbaa !37  ; 3 uses
  br i1 %.not3.i38, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bmc = load ptr, ptr %i.bma, align 8, !tbaa !29
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bmc, i64 24
  %i.bme = load ptr, ptr %i.bmd, align 8
  invoke void %i.bme(ptr noundef nonnull align 8 dereferenceable(8) %i.bma, ptr noundef %i.bmb)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.aq, !inline_history !0

bb.ao:                                            ; preds = %bb.am
  %.not.i41 = icmp eq ptr %i.bmb, null
  br i1 %.not.i41, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @free(ptr noundef nonnull %i.bmb) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.aq:                                            ; preds = %bb.an
  %i.bmf = landingpad { ptr, i32 }
          catch ptr null
  %i.bmg = extractvalue { ptr, i32 } %i.bmf, 0
  call void @__clang_call_terminate(ptr %i.bmg) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.al, %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, %bb.an, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #12
  %i.bmh = add nsw i32 %.0126, 1
  %i.bmi = load i32, ptr %i.b, align 4, !tbaa !81
  %.not.not = icmp slt i32 %.0126, %i.bmi
  br i1 %.not.not, label %_ZN4ncnn3MatD2Ev.exit36, label %._crit_edge
end_hunk_2
