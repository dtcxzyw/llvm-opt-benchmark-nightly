Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx2?download=true
inline.NumInlined: 88
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN4ncnn39convolution_im2col_input_tile_int8_avx2ERKNS_3MatERS0_iiiiiiiiii:bb.a
_ZN4ncnn3MatD2Ev.exit258.us.preheader.i.i:        ; preds = %.lr.ph206.split.us.split.i.i
  %i.pv = sext i32 %.2242.lcssa.i.i to i64
  %i.pw = sext i32 %2 to i64
  %wide.trip.count249.i.i = sext i32 %3 to i64
  %i.px = add nsw i32 %i.pr, -1
  %xtraiter398 = and i32 %i.pr, 7                 ; 3 uses
  %i.py = icmp ult i32 %i.px, 7
  %unroll_iter403 = and i32 %i.pr, 268435448
  %lcmp.mod400.not = icmp eq i32 %xtraiter398, 0
  %lcmp.mod402 = icmp ne i32 %xtraiter398, 0
  br label %_ZN4ncnn3MatD2Ev.exit258.us.i.i

_ZN4ncnn3MatD2Ev.exit258.us.i.i:                  ; preds = %..loopexit118_crit_edge.us.i.i, %_ZN4ncnn3MatD2Ev.exit258.us.preheader.i.i
  %indvars.iv246.i.i = phi i64 [ %i.pv, %_ZN4ncnn3MatD2Ev.exit258.us.preheader.i.i ], [ %indvars.iv.next247.i.i, %..loopexit118_crit_edge.us.i.i ] ; 2 uses
  %.18205.us.i.i = phi ptr [ %.12.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit258.us.preheader.i.i ], [ %.lcssa, %..loopexit118_crit_edge.us.i.i ] ; 2 uses
  %i.pz = load ptr, ptr %0, align 8, !tbaa !15, !noalias !445
  %i.qa = load i64, ptr %i.j, align 8, !tbaa !16, !noalias !445
  %i.qb = mul i64 %i.qa, %i.pp
  %i.qc = load i64, ptr %i.pq, align 8, !tbaa !17, !noalias !445
  %i.qd = mul i64 %i.qb, %i.qc
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.qd
  %i.qf = add nsw i64 %indvars.iv246.i.i, %i.pw
  %i.qg = shl nsw i64 %i.qf, 3
  %i.qh = getelementptr inbounds i8, ptr %i.qe, i64 %i.qg ; 2 uses
  br i1 %i.py, label %.epil.preheader397, label %_ZN4ncnn3MatD2Ev.exit258.us.i.i.new

_ZN4ncnn3MatD2Ev.exit258.us.i.i.new:              ; preds = %_ZN4ncnn3MatD2Ev.exit258.us.i.i, %_ZN4ncnn3MatD2Ev.exit258.us.i.i.new
  %.0234195.us.i.i = phi ptr [ %i.rf, %_ZN4ncnn3MatD2Ev.exit258.us.i.i.new ], [ %i.qh, %_ZN4ncnn3MatD2Ev.exit258.us.i.i ] ; 2 uses
  %.19194.us.i.i = phi ptr [ %i.re, %_ZN4ncnn3MatD2Ev.exit258.us.i.i.new ], [ %.18205.us.i.i, %_ZN4ncnn3MatD2Ev.exit258.us.i.i ] ; 9 uses
  %niter404 = phi i32 [ %niter404.next.7, %_ZN4ncnn3MatD2Ev.exit258.us.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit258.us.i.i ]
  %i.qi = load i64, ptr %.0234195.us.i.i, align 1, !tbaa !18
  store i64 %i.qi, ptr %.19194.us.i.i, align 1, !tbaa !18
  %i.qj = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 8
  %i.qk = getelementptr inbounds nuw i8, ptr %.0234195.us.i.i, i64 %i.ps ; 2 uses
  %i.ql = load i64, ptr %i.qk, align 1, !tbaa !18
  store i64 %i.ql, ptr %i.qj, align 1, !tbaa !18
  %i.qm = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 16
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.ps ; 2 uses
  %i.qo = load i64, ptr %i.qn, align 1, !tbaa !18
  store i64 %i.qo, ptr %i.qm, align 1, !tbaa !18
  %i.qp = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 24
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.ps ; 2 uses
  %i.qr = load i64, ptr %i.qq, align 1, !tbaa !18
  store i64 %i.qr, ptr %i.qp, align 1, !tbaa !18
  %i.qs = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 32
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.ps ; 2 uses
  %i.qu = load i64, ptr %i.qt, align 1, !tbaa !18
  store i64 %i.qu, ptr %i.qs, align 1, !tbaa !18
  %i.qv = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 40
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.ps ; 2 uses
  %i.qx = load i64, ptr %i.qw, align 1, !tbaa !18
  store i64 %i.qx, ptr %i.qv, align 1, !tbaa !18
  %i.qy = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 48
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.ps ; 2 uses
  %i.ra = load i64, ptr %i.qz, align 1, !tbaa !18
  store i64 %i.ra, ptr %i.qy, align 1, !tbaa !18
  %i.rb = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 56
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.ps ; 2 uses
  %i.rd = load i64, ptr %i.rc, align 1, !tbaa !18
  store i64 %i.rd, ptr %i.rb, align 1, !tbaa !18
  %i.re = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 64 ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.ps ; 2 uses
  %niter404.next.7 = add i32 %niter404, 8         ; 2 uses
  %niter404.ncmp.7 = icmp eq i32 %niter404.next.7, %unroll_iter403
  br i1 %niter404.ncmp.7, label %..loopexit118_crit_edge.us.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit258.us.i.i.new, !llvm.loop !407

..loopexit118_crit_edge.us.i.i.unr-lcssa:         ; preds = %_ZN4ncnn3MatD2Ev.exit258.us.i.i.new
  br i1 %lcmp.mod400.not, label %..loopexit118_crit_edge.us.i.i, label %.epil.preheader397

.epil.preheader397:                               ; preds = %..loopexit118_crit_edge.us.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit258.us.i.i
  %.0234195.us.i.i.epil.init = phi ptr [ %i.qh, %_ZN4ncnn3MatD2Ev.exit258.us.i.i ], [ %i.rf, %..loopexit118_crit_edge.us.i.i.unr-lcssa ]
  %.19194.us.i.i.epil.init = phi ptr [ %.18205.us.i.i, %_ZN4ncnn3MatD2Ev.exit258.us.i.i ], [ %i.re, %..loopexit118_crit_edge.us.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod402)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader397
  %.0234195.us.i.i.epil = phi ptr [ %.0234195.us.i.i.epil.init, %.epil.preheader397 ], [ %i.ri, %bb.h ] ; 2 uses
  %.19194.us.i.i.epil = phi ptr [ %.19194.us.i.i.epil.init, %.epil.preheader397 ], [ %i.rh, %bb.h ] ; 2 uses
  %epil.iter399 = phi i32 [ 0, %.epil.preheader397 ], [ %epil.iter399.next, %bb.h ]
  %i.rg = load i64, ptr %.0234195.us.i.i.epil, align 1, !tbaa !18
  store i64 %i.rg, ptr %.19194.us.i.i.epil, align 1, !tbaa !18
  %i.rh = getelementptr inbounds nuw i8, ptr %.19194.us.i.i.epil, i64 8 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.0234195.us.i.i.epil, i64 %i.ps
  %epil.iter399.next = add i32 %epil.iter399, 1   ; 2 uses
  %epil.iter399.cmp.not = icmp eq i32 %epil.iter399.next, %xtraiter398
  br i1 %epil.iter399.cmp.not, label %..loopexit118_crit_edge.us.i.i, label %bb.h, !llvm.loop !408

..loopexit118_crit_edge.us.i.i:                   ; preds = %bb.h, %..loopexit118_crit_edge.us.i.i.unr-lcssa
  %.lcssa = phi ptr [ %i.re, %..loopexit118_crit_edge.us.i.i.unr-lcssa ], [ %i.rh, %bb.h ]
  %indvars.iv.next247.i.i = add nuw nsw i64 %indvars.iv246.i.i, 1 ; 2 uses
  %exitcond250.not.i.i = icmp eq i64 %indvars.iv.next247.i.i, %wide.trip.count249.i.i
  br i1 %exitcond250.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit258.us.i.i, !llvm.loop !409

.lr.ph206.split.split.i.i:                        ; preds = %.lr.ph206.i.i
  %i.rj = icmp sgt i32 %5, 0
  br i1 %i.rj, label %_ZN4ncnn3MatD2Ev.exit.preheader.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

_ZN4ncnn3MatD2Ev.exit.preheader.i.i:              ; preds = %.lr.ph206.split.split.i.i
  %i.rk = sext i32 %.2242.lcssa.i.i to i64
  %i.rl = sext i32 %2 to i64
  %wide.trip.count.i.i = sext i32 %3 to i64
  %i.rm = add nsw i32 %5, -1
  %xtraiter391 = and i32 %5, 7                    ; 3 uses
  %i.rn = icmp ult i32 %i.rm, 7
  %unroll_iter395 = and i32 %5, 2147483640
  %lcmp.mod392.not = icmp eq i32 %xtraiter391, 0
  %lcmp.mod394 = icmp ne i32 %xtraiter391, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i.i

_ZN4ncnn3MatD2Ev.exit.i.i:                        ; preds = %..loopexit_crit_edge.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i
  %indvars.iv241.i.i = phi i64 [ %i.rk, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %indvars.iv.next242.i.i, %..loopexit_crit_edge.i.i ] ; 2 uses
  %.18205.i.i = phi ptr [ %.12.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %.lcssa303, %..loopexit_crit_edge.i.i ] ; 2 uses
  %i.ro = load ptr, ptr %0, align 8, !tbaa !15, !noalias !446
  %i.rp = load i64, ptr %i.j, align 8, !tbaa !16, !noalias !446
  %i.rq = mul i64 %i.rp, %i.pt
  %i.rr = load i64, ptr %i.pq, align 8, !tbaa !17, !noalias !446
  %i.rs = mul i64 %i.rq, %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rs
  %i.ru = getelementptr i8, ptr %i.rt, i64 %indvars.iv241.i.i
  %i.rv = getelementptr i8, ptr %i.ru, i64 %i.rl  ; 2 uses
  br i1 %i.rn, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit.i.i.new

_ZN4ncnn3MatD2Ev.exit.i.i.new:                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i.new
  %.0232200.i.i = phi ptr [ %i.st, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %i.rv, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 2 uses
  %.21199.i.i = phi ptr [ %i.ss, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %.18205.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 9 uses
  %niter396 = phi i32 [ %niter396.next.7, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit.i.i ]
  %i.rw = load i8, ptr %.0232200.i.i, align 1, !tbaa !18
  store i8 %i.rw, ptr %.21199.i.i, align 1, !tbaa !18
  %i.rx = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 1
  %i.ry = getelementptr inbounds nuw i8, ptr %.0232200.i.i, i64 %i.k ; 2 uses
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !18
  store i8 %i.rz, ptr %i.rx, align 1, !tbaa !18
  %i.sa = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 2
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.k ; 2 uses
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !18
  store i8 %i.sc, ptr %i.sa, align 1, !tbaa !18
  %i.sd = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 3
  %i.se = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.k ; 2 uses
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !18
  store i8 %i.sf, ptr %i.sd, align 1, !tbaa !18
  %i.sg = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 4
  %i.sh = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.k ; 2 uses
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !18
  store i8 %i.si, ptr %i.sg, align 1, !tbaa !18
  %i.sj = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 5
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.k ; 2 uses
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !18
  store i8 %i.sl, ptr %i.sj, align 1, !tbaa !18
  %i.sm = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 6
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sk, i64 %i.k ; 2 uses
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !18
  store i8 %i.so, ptr %i.sm, align 1, !tbaa !18
  %i.sp = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 7
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.k ; 2 uses
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !18
  store i8 %i.sr, ptr %i.sp, align 1, !tbaa !18
  %i.ss = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 8 ; 3 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.k ; 2 uses
  %niter396.next.7 = add nuw nsw i32 %niter396, 8 ; 2 uses
  %niter396.ncmp.7 = icmp eq i32 %niter396.next.7, %unroll_iter395
  br i1 %niter396.ncmp.7, label %..loopexit_crit_edge.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit.i.i.new, !llvm.loop !412

..loopexit_crit_edge.i.i.unr-lcssa:               ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i.new
  br i1 %lcmp.mod392.not, label %..loopexit_crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit.i.i
  %.0232200.i.i.epil.init = phi ptr [ %i.rv, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.st, %..loopexit_crit_edge.i.i.unr-lcssa ]
  %.21199.i.i.epil.init = phi ptr [ %.18205.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.ss, %..loopexit_crit_edge.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod394)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.0232200.i.i.epil = phi ptr [ %.0232200.i.i.epil.init, %.epil.preheader ], [ %i.sw, %bb.i ] ; 2 uses
  %.21199.i.i.epil = phi ptr [ %.21199.i.i.epil.init, %.epil.preheader ], [ %i.sv, %bb.i ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.su = load i8, ptr %.0232200.i.i.epil, align 1, !tbaa !18
  store i8 %i.su, ptr %.21199.i.i.epil, align 1, !tbaa !18
  %i.sv = getelementptr inbounds nuw i8, ptr %.21199.i.i.epil, i64 1 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.0232200.i.i.epil, i64 %i.k
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter391
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge.i.i, label %bb.i, !llvm.loop !413

..loopexit_crit_edge.i.i:                         ; preds = %bb.i, %..loopexit_crit_edge.i.i.unr-lcssa
  %.lcssa303 = phi ptr [ %i.ss, %..loopexit_crit_edge.i.i.unr-lcssa ], [ %i.sv, %bb.i ]
  %indvars.iv.next242.i.i = add nuw nsw i64 %indvars.iv241.i.i, 1 ; 2 uses
  %exitcond244.not.i.i = icmp eq i64 %indvars.iv.next242.i.i, %wide.trip.count.i.i
  br i1 %exitcond244.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit.i.i, !llvm.loop !409

bb.j:                                             ; preds = %bb.e
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !25 ; 9 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ta = load i32, ptr %i.sz, align 8, !tbaa !26 ; 8 uses
  %i.tb = add nsw i32 %6, -1
  %i.tc = mul nsw i32 %8, %i.tb
  %.neg.i.i = xor i32 %i.tc, -1
  %i.td = add i32 %i.sy, %.neg.i.i
  %i.te = sdiv i32 %i.td, %10                     ; 3 uses
  %i.tf = add nsw i32 %i.te, 1                    ; 9 uses
  %i.tg = mul nsw i32 %7, %6                      ; 46 uses
  %i.th = icmp eq i32 %i.te, 0
  br i1 %i.th, label %_ZN17FastDivider_epu32C2Ej.exit972.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ti = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.te, i1 true) ; 3 uses
  %i.tj = sub nuw nsw i32 32, %i.ti
  %i.tk = icmp eq i32 %i.ti, 0
  %i.tl = shl nuw i32 1, %i.tj
  %i.tm = select i1 %i.tk, i32 0, i32 %i.tl
  %i.tn = sub i32 %i.tm, %i.tf
  %i.to = zext i32 %i.tn to i64
  %i.tp = shl nuw i64 %i.to, 32
  %i.tq = zext i32 %i.tf to i64
  %i.tr = udiv i64 %i.tp, %i.tq
  %i.ts = trunc i64 %i.tr to i32
  %i.tt = add i32 %i.ts, 1
  %i.tu = xor i32 %i.ti, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit972.i.i

_ZN17FastDivider_epu32C2Ej.exit972.i.i:           ; preds = %bb.k, %bb.j
  %.012.i969.i.i = phi i32 [ %i.tu, %bb.k ], [ 0, %bb.j ]
  %.011.i970.i.i = phi i32 [ 1, %bb.k ], [ 0, %bb.j ]
  %.0.i971.i.i = phi i32 [ %i.tt, %bb.k ], [ 1, %bb.j ]
  %i.tv = insertelement <8 x i32> poison, i32 %.0.i971.i.i, i64 0
  %i.tw = shufflevector <8 x i32> %i.tv, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.tx = bitcast <8 x i32> %i.tw to <4 x i64>
  %i.ty = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i970.i.i, i64 0 ; 2 uses
  %i.tz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i969.i.i, i64 0 ; 2 uses
  %i.ua = icmp sgt i32 %3, 7
  br i1 %i.ua, label %.lr.ph112.i.i, label %.preheader75.i.i

.lr.ph112.i.i:                                    ; preds = %_ZN17FastDivider_epu32C2Ej.exit972.i.i
  %i.ub = bitcast <8 x i32> %i.tw to <4 x i64>
  %i.uc = and <4 x i64> %i.ub, splat (i64 4294967295) ; 2 uses
  %i.ud = shufflevector <4 x i32> %i.ty, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.ue = insertelement <8 x i32> poison, i32 %i.tf, i64 0
  %i.uf = shufflevector <8 x i32> %i.ue, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ug = insertelement <8 x i32> poison, i32 %10, i64 0
  %i.uh = shufflevector <8 x i32> %i.ug, <8 x i32> poison, <8 x i32> zeroinitializer
  %.scalar.i.i = mul i32 %i.sy, %11
  %i.ui = insertelement <8 x i32> poison, i32 %.scalar.i.i, i64 0
  %i.uj = shufflevector <8 x i32> %i.ui, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.uk = icmp eq i32 %i.ta, 1                    ; 2 uses
  %i.ul = icmp sgt i32 %5, 1                      ; 2 uses
  %i.um = mul i32 %i.sy, %9                       ; 7 uses
  %i.un = trunc i64 %i.k to i32                   ; 3 uses
  %i.uo = icmp ne i32 %i.ta, 8
  %i.up = sdiv i32 %5, 8                          ; 2 uses
  %i.uq = icmp slt i32 %5, 8
  %i.ur = sdiv i32 %4, 8                          ; 2 uses
  %brmerge197.i.i = or i1 %i.uq, %i.uo            ; 2 uses
  %i.us = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.ut = insertelement <2 x i32> %i.us, i32 %i.tg, i64 1
  %i.uu = insertelement <2 x i32> poison, i32 %i.um, i64 0
  %i.uv = insertelement <2 x i32> %i.uu, i32 %i.un, i64 1
  %i.uw = insertelement <2 x i32> poison, i32 %i.tg, i64 0
  %i.ux = shufflevector <2 x i32> %i.uw, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.uy = insertelement <2 x i32> poison, i32 %6, i64 0 ; 2 uses
  %i.uz = shufflevector <2 x i32> %i.uy, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.va = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.vb = shufflevector <2 x i32> %i.va, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.vc = insertelement <2 x i32> %i.uy, i32 %i.tg, i64 1 ; 2 uses
  %i.vd = insertelement <2 x i32> poison, i32 %i.um, i64 0
  %i.ve = insertelement <2 x i32> %i.vd, i32 %i.un, i64 1 ; 2 uses
  %i.vf = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.vg = insertelement <2 x i32> %i.vf, i32 %i.tg, i64 1
  %i.vh = insertelement <2 x i32> poison, i32 %i.um, i64 0
  %i.vi = insertelement <2 x i32> %i.vh, i32 %i.un, i64 1
  %i.vj = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %i.vk = shufflevector <2 x i64> %i.vj, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.vl = insertelement <2 x i32> poison, i32 %i.tg, i64 0
  %i.vm = shufflevector <2 x i32> %i.vl, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.l

.preheader75.i.i:                                 ; preds = %.loopexit77.i.i, %_ZN17FastDivider_epu32C2Ej.exit972.i.i
  %.0938.lcssa.i.i = phi i32 [ 0, %_ZN17FastDivider_epu32C2Ej.exit972.i.i ], [ %i.afg, %.loopexit77.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.val.i, %_ZN17FastDivider_epu32C2Ej.exit972.i.i ], [ %.10.i.i, %.loopexit77.i.i ] ; 2 uses
  %i.vn = or disjoint i32 %.0938.lcssa.i.i, 3
  %i.vo = icmp slt i32 %i.vn, %3
  br i1 %i.vo, label %.lr.ph143.i62.i, label %.preheader64.i.i

.lr.ph143.i62.i:                                  ; preds = %.preheader75.i.i
  %i.vp = shufflevector <4 x i64> %i.tx, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.vq = and <2 x i64> %i.vp, splat (i64 4294967295) ; 2 uses
  %i.vr = shufflevector <4 x i32> %i.ty, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vs = insertelement <4 x i32> poison, i32 %i.tf, i64 0
  %i.vt = shufflevector <4 x i32> %i.vs, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vu = insertelement <4 x i32> poison, i32 %10, i64 0
  %i.vv = shufflevector <4 x i32> %i.vu, <4 x i32> poison, <4 x i32> zeroinitializer
  %.scalar259.i.i = mul i32 %i.sy, %11
  %i.vw = insertelement <4 x i32> poison, i32 %.scalar259.i.i, i64 0
  %i.vx = shufflevector <4 x i32> %i.vw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vy = icmp eq i32 %i.ta, 1                    ; 2 uses
  %i.vz = icmp sgt i32 %5, 1                      ; 2 uses
  %i.wa = mul i32 %i.sy, %9                       ; 7 uses
  %i.wb = trunc i64 %i.k to i32                   ; 3 uses
  %i.wc = icmp ne i32 %i.ta, 8
  %i.wd = sdiv i32 %5, 8                          ; 2 uses
  %i.we = icmp slt i32 %5, 8
  %i.wf = sdiv i32 %4, 8                          ; 2 uses
  %brmerge203.i.i = or i1 %i.we, %i.wc            ; 2 uses
  %i.wg = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.wh = insertelement <2 x i32> %i.wg, i32 %i.tg, i64 1
  %i.wi = insertelement <2 x i32> poison, i32 %i.wa, i64 0
  %i.wj = insertelement <2 x i32> %i.wi, i32 %i.wb, i64 1
  %i.wk = insertelement <2 x i32> poison, i32 %i.tg, i64 0
  %i.wl = shufflevector <2 x i32> %i.wk, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.wm = insertelement <2 x i32> poison, i32 %6, i64 0 ; 2 uses
  %i.wn = shufflevector <2 x i32> %i.wm, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.wo = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.wp = shufflevector <2 x i32> %i.wo, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.wq = insertelement <2 x i32> %i.wm, i32 %i.tg, i64 1 ; 2 uses
  %i.wr = insertelement <2 x i32> poison, i32 %i.wa, i64 0
  %i.ws = insertelement <2 x i32> %i.wr, i32 %i.wb, i64 1 ; 2 uses
  %i.wt = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.wu = insertelement <2 x i32> %i.wt, i32 %i.tg, i64 1
  %i.wv = insertelement <2 x i32> poison, i32 %i.wa, i64 0
  %i.ww = insertelement <2 x i32> %i.wv, i32 %i.wb, i64 1
  %i.wx = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %i.wy = shufflevector <2 x i64> %i.wx, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.wz = insertelement <2 x i32> poison, i32 %i.tg, i64 0
  %i.xa = shufflevector <2 x i32> %i.wz, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.r

bb.l:                                             ; preds = %.loopexit77.i.i, %.lr.ph112.i.i
  %.0111.i.i = phi ptr [ %.val.i, %.lr.ph112.i.i ], [ %.10.i.i, %.loopexit77.i.i ] ; 8 uses
  %.0938110.i.i = phi i32 [ 0, %.lr.ph112.i.i ], [ %i.afg, %.loopexit77.i.i ] ; 2 uses
  %i.xb = add nsw i32 %.0938110.i.i, %2
  %i.xc = insertelement <8 x i32> poison, i32 %i.xb, i64 0
  %i.xd = shufflevector <8 x i32> %i.xc, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.xe = add <8 x i32> %i.xd, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.xf = bitcast <8 x i32> %i.xe to <4 x i64>
  %i.xg = bitcast <8 x i32> %i.xe to <4 x i64>
  %i.xh = and <4 x i64> %i.xg, splat (i64 4294967295)
  %i.xi = mul nuw <4 x i64> %i.xh, %i.uc
  %i.xj = lshr <4 x i64> %i.xi, splat (i64 32)
  %i.xk = lshr <4 x i64> %i.xf, splat (i64 32)
  %i.xl = mul nuw <4 x i64> %i.xk, %i.uc
  %i.xm = bitcast <4 x i64> %i.xj to <16 x i16>
  %i.xn = bitcast <4 x i64> %i.xl to <16 x i16>
  %i.xo = shufflevector <16 x i16> %i.xm, <16 x i16> %i.xn, <16 x i32> <i32 0, i32 1, i32 18, i32 19, i32 4, i32 5, i32 22, i32 23, i32 8, i32 9, i32 26, i32 27, i32 12, i32 13, i32 30, i32 31>
  %i.xp = bitcast <16 x i16> %i.xo to <8 x i32>   ; 2 uses
  %i.xq = sub <8 x i32> %i.xe, %i.xp
  %i.xr = lshr <8 x i32> %i.xq, %i.ud
  %i.xs = add <8 x i32> %i.xr, %i.xp
  %i.xt = tail call <8 x i32> @llvm.x86.avx2.psrl.d(<8 x i32> %i.xs, <4 x i32> %i.tz) ; 2 uses
  %i.xu = mul <8 x i32> %i.xt, %i.uf
  %i.xv = sub <8 x i32> %i.xe, %i.xu
  %i.xw = mul <8 x i32> %i.xv, %i.uh              ; 2 uses
  %i.xx = mul <8 x i32> %i.xt, %i.uj              ; 4 uses
  %i.xy = add <8 x i32> %i.xw, %i.xx              ; 4 uses
  %shift301 = shufflevector <8 x i32> %i.xx, <8 x i32> poison, <8 x i32> <i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xz = icmp eq <8 x i32> %i.xx, %shift301
  %i.ya = extractelement <8 x i1> %i.xz, i64 0
  %or.cond.i.i = and i1 %i.g, %i.ya
  br i1 %or.cond.i.i, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %foldExtExtBinop = add nsw <8 x i32> %i.xw, %i.xx
  %i.yb = extractelement <8 x i32> %foldExtExtBinop, i64 0 ; 3 uses
  br i1 %i.uk, label %.preheader80.i.i, label %.loopexit79.i.i

.preheader80.i.i:                                 ; preds = %bb.m
  br i1 %i.ul, label %.lr.ph99.i.i, label %.preheader78.i.i

.lr.ph99.i.i:                                     ; preds = %.preheader80.i.i
  %i.yc = sext i32 %i.yb to i64                   ; 2 uses
  br label %bb.n

.preheader78.i.i:                                 ; preds = %bb.n, %.preheader80.i.i
  %.0942.lcssa.i.i = phi i32 [ 0, %.preheader80.i.i ], [ %i.zr, %bb.n ] ; 2 uses
  %.1.lcssa.i.i = phi ptr [ %.0111.i.i, %.preheader80.i.i ], [ %i.zq, %bb.n ] ; 2 uses
  %i.yd = icmp slt i32 %.0942.lcssa.i.i, %5
  br i1 %i.yd, label %.lr.ph104.i.i, label %.loopexit77.i.i

.lr.ph104.i.i:                                    ; preds = %.preheader78.i.i
  %i.ye = sext i32 %i.yb to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.n, %.lr.ph99.i.i
  %.198.i.i = phi ptr [ %.0111.i.i, %.lr.ph99.i.i ], [ %i.zq, %bb.n ] ; 2 uses
  %.094297.i.i = phi i32 [ 0, %.lr.ph99.i.i ], [ %i.zr, %bb.n ] ; 2 uses
  %i.yf = add nsw i32 %.094297.i.i, %4            ; 3 uses
  %i.yg = add nsw i32 %i.yf, 1                    ; 2 uses
  %i.yh = srem i32 %i.yf, %i.tg                   ; 2 uses
  %i.yi = srem i32 %i.yg, %i.tg                   ; 2 uses
  %i.yj = sdiv i32 %i.yh, %6
  %i.yk = sdiv i32 %i.yi, %6
  %i.yl = srem i32 %i.yh, %6
  %i.ym = srem i32 %i.yi, %6
  %i.yn = mul i32 %i.yj, %i.um
  %i.yo = mul nsw i32 %i.yl, %8
  %i.yp = add nsw i32 %i.yo, %i.yn
  %i.yq = sext i32 %i.yp to i64
  %i.yr = insertelement <2 x i32> poison, i32 %i.yf, i64 0
  %i.ys = insertelement <2 x i32> %i.yr, i32 %i.yg, i64 1
  %i.yt = sdiv <2 x i32> %i.ys, %i.vm
  %i.yu = sext <2 x i32> %i.yt to <2 x i64>
  %i.yv = mul <2 x i64> %i.vk, %i.yu              ; 2 uses
  %i.yw = mul i32 %i.yk, %i.um
end_hunk_0
begin_hunk_1_@_ZN4ncnn39convolution_im2col_input_tile_int8_avx2ERKNS_3MatERS0_iiiiiiiiii:bb.a
bb.p:                                             ; preds = %bb.p, %.lr.ph108.i.i
  %.4107.i.i = phi ptr [ %.0111.i.i, %.lr.ph108.i.i ], [ %i.abn, %bb.p ] ; 3 uses
  %.0944106.i.i = phi i32 [ 0, %.lr.ph108.i.i ], [ %i.abo, %bb.p ] ; 2 uses
  %i.aan = add nsw i32 %.0944106.i.i, %i.ur       ; 2 uses
  %i.aao = sdiv i32 %i.aan, %i.tg
  %i.aap = srem i32 %i.aan, %i.tg                 ; 2 uses
  %i.aaq = sdiv i32 %i.aap, %6
  %i.aar = srem i32 %i.aap, %6
  %i.aas = sext i32 %i.aao to i64
  %i.aat = mul i64 %i.k, %i.aas
  %i.aau = add i64 %i.aat, %i.aam
  %i.aav = mul i32 %i.aaq, %i.um
  %i.aaw = mul nsw i32 %i.aar, %8
  %i.aax = add nsw i32 %i.aaw, %i.aav
  %i.aay = sext i32 %i.aax to i64
  %i.aaz = add i64 %i.aau, %i.aay
  %i.aba = shl i64 %i.aaz, 3
  %i.abb = load ptr, ptr %0, align 8, !tbaa !15
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.aba ; 2 uses
  %i.abd = load <16 x i16>, ptr %i.abc, align 1, !tbaa !18 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abc, i64 32
  %i.abf = load <16 x i16>, ptr %i.abe, align 1, !tbaa !18 ; 2 uses
  %i.abg = shufflevector <16 x i16> %i.abd, <16 x i16> %i.abf, <16 x i32> <i32 0, i32 4, i32 16, i32 20, i32 1, i32 5, i32 17, i32 21, i32 8, i32 12, i32 24, i32 28, i32 9, i32 13, i32 25, i32 29>
  %i.abh = shufflevector <16 x i16> %i.abd, <16 x i16> %i.abf, <16 x i32> <i32 2, i32 6, i32 18, i32 22, i32 3, i32 7, i32 19, i32 23, i32 10, i32 14, i32 26, i32 30, i32 11, i32 15, i32 27, i32 31>
  %i.abi = bitcast <16 x i16> %i.abg to <8 x i32>
  %i.abj = shufflevector <8 x i32> %i.abi, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.abk = bitcast <16 x i16> %i.abh to <8 x i32>
  %i.abl = shufflevector <8 x i32> %i.abk, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %i.abj, ptr %.4107.i.i, align 1, !tbaa !18
  %i.abm = getelementptr inbounds nuw i8, ptr %.4107.i.i, i64 32
  store <8 x i32> %i.abl, ptr %i.abm, align 1, !tbaa !18
  %i.abn = getelementptr inbounds nuw i8, ptr %.4107.i.i, i64 64 ; 2 uses
  %i.abo = add nuw nsw i32 %.0944106.i.i, 1       ; 2 uses
  %exitcond247.not.i.i = icmp eq i32 %i.abo, %i.up
  br i1 %exitcond247.not.i.i, label %.loopexit77.i.i, label %bb.p, !llvm.loop !416

bb.q:                                             ; preds = %bb.l
  br i1 %i.uk, label %.preheader85.i.i, label %.loopexit84.i.i

.preheader85.i.i:                                 ; preds = %bb.q
  br i1 %i.ul, label %.lr.ph.i68.i, label %.preheader83.i.i

.preheader83.i.i:                                 ; preds = %.lr.ph.i68.i, %.preheader85.i.i
  %.0945.lcssa.i.i = phi i32 [ 0, %.preheader85.i.i ], [ %i.adc, %.lr.ph.i68.i ] ; 2 uses
  %.6.lcssa.i66.i = phi ptr [ %.0111.i.i, %.preheader85.i.i ], [ %i.adb, %.lr.ph.i68.i ] ; 2 uses
  %i.abp = icmp slt i32 %.0945.lcssa.i.i, %5
  br i1 %i.abp, label %.lr.ph91.i.i, label %.loopexit77.i.i

.lr.ph.i68.i:                                     ; preds = %.preheader85.i.i, %.lr.ph.i68.i
  %.687.i.i = phi ptr [ %i.adb, %.lr.ph.i68.i ], [ %.0111.i.i, %.preheader85.i.i ] ; 2 uses
  %.094586.i.i = phi i32 [ %i.adc, %.lr.ph.i68.i ], [ 0, %.preheader85.i.i ] ; 2 uses
  %i.abq = add nsw i32 %.094586.i.i, %4           ; 3 uses
  %i.abr = add nsw i32 %i.abq, 1                  ; 2 uses
  %i.abs = insertelement <2 x i32> poison, i32 %i.abq, i64 0
  %i.abt = insertelement <2 x i32> %i.abs, i32 %i.abr, i64 1
  %i.abu = srem <2 x i32> %i.abt, %i.ux           ; 3 uses
  %i.abv = srem <2 x i32> %i.abu, %i.uz
  %i.abw = mul nsw <2 x i32> %i.abv, %i.vb        ; 2 uses
  %i.abx = insertelement <2 x i32> %i.abu, i32 %i.abq, i64 1
  %i.aby = sdiv <2 x i32> %i.abx, %i.vc
  %i.abz = mul <2 x i32> %i.aby, %i.ve            ; 2 uses
  %shift = shufflevector <2 x i32> %i.abz, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop263 = add <2 x i32> %i.abz, %shift
  %foldExtExtBinop265 = add <2 x i32> %foldExtExtBinop263, %i.abw
  %i.aca = shufflevector <2 x i32> %foldExtExtBinop265, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.acb = add <8 x i32> %i.aca, %i.xy
  %i.acc = shufflevector <2 x i32> %i.abu, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.acd = insertelement <2 x i32> %i.acc, i32 %i.abr, i64 1
  %i.ace = sdiv <2 x i32> %i.acd, %i.vc
  %i.acf = mul <2 x i32> %i.ace, %i.ve            ; 2 uses
  %i.acg = shufflevector <2 x i32> %i.acf, <2 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ach = shufflevector <2 x i32> %i.acf, <2 x i32> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aci = add <8 x i32> %i.acg, %i.ach
  %i.acj = shufflevector <8 x i32> %i.aci, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ack = shufflevector <2 x i32> %i.abw, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.acl = add <8 x i32> %i.acj, %i.ack
  %i.acm = add <8 x i32> %i.acl, %i.xy
  %i.acn = load ptr, ptr %0, align 8, !tbaa !15   ; 2 uses
  %i.aco = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.acn, <8 x i32> %i.acb, <8 x i32> splat (i32 -1), i8 1)
  %i.acp = bitcast <8 x i32> %i.aco to <32 x i8>
  %i.acq = shufflevector <32 x i8> %i.acp, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.acr = bitcast <32 x i8> %i.acq to <8 x i32>
  %i.acs = shufflevector <8 x i32> %i.acr, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.act = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.acn, <8 x i32> %i.acm, <8 x i32> splat (i32 -1), i8 1)
  %i.acu = bitcast <8 x i32> %i.act to <32 x i8>
  %i.acv = shufflevector <32 x i8> %i.acu, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.acw = bitcast <32 x i8> %i.acv to <8 x i32>
  %i.acx = shufflevector <8 x i32> %i.acw, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.acy = bitcast <4 x i32> %i.acs to <16 x i8>
  %i.acz = bitcast <4 x i32> %i.acx to <16 x i8>
  %i.ada = shufflevector <16 x i8> %i.acy, <16 x i8> %i.acz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.ada, ptr %.687.i.i, align 1, !tbaa !18
  %i.adb = getelementptr inbounds nuw i8, ptr %.687.i.i, i64 16 ; 2 uses
  %i.adc = add nuw nsw i32 %.094586.i.i, 2        ; 3 uses
  %i.add = or disjoint i32 %i.adc, 1
  %i.ade = icmp slt i32 %i.add, %5
  br i1 %i.ade, label %.lr.ph.i68.i, label %.preheader83.i.i, !llvm.loop !417

.lr.ph91.i.i:                                     ; preds = %.preheader83.i.i, %.lr.ph91.i.i
  %.790.i.i = phi ptr [ %i.aea, %.lr.ph91.i.i ], [ %.6.lcssa.i66.i, %.preheader83.i.i ] ; 2 uses
  %.194689.i.i = phi i32 [ %i.aeb, %.lr.ph91.i.i ], [ %.0945.lcssa.i.i, %.preheader83.i.i ] ; 2 uses
  %i.adf = add nsw i32 %.194689.i.i, %4           ; 2 uses
  %i.adg = srem i32 %i.adf, %i.tg                 ; 2 uses
  %i.adh = srem i32 %i.adg, %6
  %i.adi = mul nsw i32 %i.adh, %8
  %i.adj = insertelement <2 x i32> poison, i32 %i.adg, i64 0
  %i.adk = insertelement <2 x i32> %i.adj, i32 %i.adf, i64 1
  %i.adl = sdiv <2 x i32> %i.adk, %i.vg
  %i.adm = mul <2 x i32> %i.adl, %i.vi
  %i.adn = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.adm)
  %i.ado = add i32 %i.adn, %i.adi
  %i.adp = insertelement <8 x i32> poison, i32 %i.ado, i64 0
  %i.adq = shufflevector <8 x i32> %i.adp, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.adr = add <8 x i32> %i.adq, %i.xy
  %i.ads = load ptr, ptr %0, align 8, !tbaa !15
  %i.adt = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.ads, <8 x i32> %i.adr, <8 x i32> splat (i32 -1), i8 1)
  %i.adu = bitcast <8 x i32> %i.adt to <32 x i8>
  %i.adv = shufflevector <32 x i8> %i.adu, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.adw = bitcast <32 x i8> %i.adv to <8 x i32>
  %i.adx = shufflevector <8 x i32> %i.adw, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ady = bitcast <4 x i32> %i.adx to <2 x i64>
  %i.adz = extractelement <2 x i64> %i.ady, i64 0
  store i64 %i.adz, ptr %.790.i.i, align 1, !tbaa !18
  %i.aea = getelementptr inbounds nuw i8, ptr %.790.i.i, i64 8 ; 2 uses
  %i.aeb = add nuw nsw i32 %.194689.i.i, 1        ; 2 uses
  %exitcond.not.i67.i = icmp eq i32 %i.aeb, %5
  br i1 %exitcond.not.i67.i, label %.loopexit77.i.i, label %.lr.ph91.i.i, !llvm.loop !418

.loopexit84.i.i:                                  ; preds = %bb.q
  br i1 %brmerge197.i.i, label %.loopexit77.i.i, label %.lr.ph95.i.i

.lr.ph95.i.i:                                     ; preds = %.loopexit84.i.i, %.lr.ph95.i.i
  %.994.i.i = phi ptr [ %i.afe, %.lr.ph95.i.i ], [ %.0111.i.i, %.loopexit84.i.i ] ; 3 uses
  %.094793.i.i = phi i32 [ %i.aff, %.lr.ph95.i.i ], [ 0, %.loopexit84.i.i ] ; 2 uses
  %i.aec = add nsw i32 %.094793.i.i, %i.ur        ; 2 uses
  %i.aed = srem i32 %i.aec, %i.tg                 ; 2 uses
  %i.aee = srem i32 %i.aed, %6
  %i.aef = mul nsw i32 %i.aee, %8
  %i.aeg = insertelement <2 x i32> poison, i32 %i.aed, i64 0
  %i.aeh = insertelement <2 x i32> %i.aeg, i32 %i.aec, i64 1
  %i.aei = sdiv <2 x i32> %i.aeh, %i.ut
  %i.aej = mul <2 x i32> %i.aei, %i.uv
  %i.aek = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.aej)
  %i.ael = add i32 %i.aek, %i.aef
  %i.aem = insertelement <8 x i32> poison, i32 %i.ael, i64 0
  %i.aen = shufflevector <8 x i32> %i.aem, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aeo = add <8 x i32> %i.aen, %i.xy
  %i.aep = shl <8 x i32> %i.aeo, splat (i32 3)    ; 2 uses
  %i.aeq = load ptr, ptr %0, align 8, !tbaa !15   ; 2 uses
  %i.aer = shufflevector <8 x i32> %i.aep, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aes = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.aeq, <4 x i32> %i.aer, <4 x i64> splat (i64 -1), i8 1)
  %i.aet = shufflevector <8 x i32> %i.aep, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aeu = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.aeq, <4 x i32> %i.aet, <4 x i64> splat (i64 -1), i8 1)
  %i.aev = bitcast <4 x i64> %i.aes to <16 x i16> ; 2 uses
  %i.aew = bitcast <4 x i64> %i.aeu to <16 x i16> ; 2 uses
  %i.aex = shufflevector <16 x i16> %i.aev, <16 x i16> %i.aew, <16 x i32> <i32 0, i32 4, i32 16, i32 20, i32 1, i32 5, i32 17, i32 21, i32 8, i32 12, i32 24, i32 28, i32 9, i32 13, i32 25, i32 29>
  %i.aey = shufflevector <16 x i16> %i.aev, <16 x i16> %i.aew, <16 x i32> <i32 2, i32 6, i32 18, i32 22, i32 3, i32 7, i32 19, i32 23, i32 10, i32 14, i32 26, i32 30, i32 11, i32 15, i32 27, i32 31>
  %i.aez = bitcast <16 x i16> %i.aex to <8 x i32>
  %i.afa = shufflevector <8 x i32> %i.aez, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.afb = bitcast <16 x i16> %i.aey to <8 x i32>
  %i.afc = shufflevector <8 x i32> %i.afb, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %i.afa, ptr %.994.i.i, align 1, !tbaa !18
  %i.afd = getelementptr inbounds nuw i8, ptr %.994.i.i, i64 32
  store <8 x i32> %i.afc, ptr %i.afd, align 1, !tbaa !18
  %i.afe = getelementptr inbounds nuw i8, ptr %.994.i.i, i64 64 ; 2 uses
  %i.aff = add nuw nsw i32 %.094793.i.i, 1        ; 2 uses
  %exitcond245.not.i65.i = icmp eq i32 %i.aff, %i.up
  br i1 %exitcond245.not.i65.i, label %.loopexit77.i.i, label %.lr.ph95.i.i, !llvm.loop !419

.loopexit77.i.i:                                  ; preds = %.lr.ph95.i.i, %.lr.ph91.i.i, %bb.p, %bb.o, %.loopexit84.i.i, %.preheader83.i.i, %.loopexit79.i.i, %.preheader78.i.i
  %.10.i.i = phi ptr [ %.0111.i.i, %.loopexit84.i.i ], [ %.1.lcssa.i.i, %.preheader78.i.i ], [ %.0111.i.i, %.loopexit79.i.i ], [ %i.abn, %bb.p ], [ %i.aak, %bb.o ], [ %.6.lcssa.i66.i, %.preheader83.i.i ], [ %i.aea, %.lr.ph91.i.i ], [ %i.afe, %.lr.ph95.i.i ] ; 2 uses
  %i.afg = add nuw nsw i32 %.0938110.i.i, 8       ; 3 uses
  %i.afh = or disjoint i32 %i.afg, 7
  %i.afi = icmp slt i32 %i.afh, %3
  br i1 %i.afi, label %bb.l, label %.preheader75.i.i, !llvm.loop !420

.preheader64.i.i:                                 ; preds = %.loopexit66.i.i, %.preheader75.i.i
  %.1939.lcssa.i.i = phi i32 [ %.0938.lcssa.i.i, %.preheader75.i.i ], [ %i.aon, %.loopexit66.i.i ] ; 3 uses
  %.11.lcssa.i.i = phi ptr [ %.0.lcssa.i.i, %.preheader75.i.i ], [ %.21.i.i, %.loopexit66.i.i ] ; 2 uses
  %i.afj = or disjoint i32 %.1939.lcssa.i.i, 1
  %i.afk = icmp slt i32 %i.afj, %3
  br i1 %i.afk, label %.lr.ph175.i59.i, label %.preheader53.i.i

.lr.ph175.i59.i:                                  ; preds = %.preheader64.i.i
  %i.afl = mul i32 %i.sy, %11
  %i.afm = icmp eq i32 %i.ta, 1                   ; 2 uses
  %i.afn = icmp sgt i32 %5, 1                     ; 2 uses
  %i.afo = mul i32 %i.sy, %9                      ; 7 uses
  %i.afp = trunc i64 %i.k to i32
  %i.afq = icmp eq i32 %i.ta, 8
  %i.afr = sdiv i32 %5, 8                         ; 2 uses
  %i.afs = sdiv i32 %4, 8                         ; 2 uses
  %i.aft = icmp sgt i32 %5, 7
  %or.cond207.i.i = and i1 %i.aft, %i.afq         ; 2 uses
  %i.afu = insertelement <2 x i32> poison, i32 %10, i64 0
  %i.afv = shufflevector <2 x i32> %i.afu, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.afw = insertelement <2 x i32> poison, i32 %i.tf, i64 0
  %i.afx = shufflevector <2 x i32> %i.afw, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.afy = insertelement <2 x i32> poison, i32 %i.afl, i64 0
  %i.afz = shufflevector <2 x i32> %i.afy, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aga = insertelement <2 x i32> poison, i32 %6, i64 0 ; 2 uses
  %12 = insertelement <2 x i32> %i.aga, i32 %i.tg, i64 1 ; 2 uses
  %i.agb = insertelement <2 x i32> poison, i32 %i.afo, i64 0
  %13 = insertelement <2 x i32> %i.agb, i32 %i.afp, i64 1 ; 2 uses
  %i.agc = insertelement <2 x i32> poison, i32 %i.tg, i64 0
  %i.agd = shufflevector <2 x i32> %i.agc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.age = shufflevector <2 x i32> %i.aga, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.agf = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.agg = shufflevector <2 x i32> %i.agf, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.agh = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %i.agi = shufflevector <2 x i64> %i.agh, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.agj = insertelement <2 x i32> poison, i32 %i.tg, i64 0
  %i.agk = shufflevector <2 x i32> %i.agj, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.z

bb.r:                                             ; preds = %.loopexit66.i.i, %.lr.ph143.i62.i
  %.11142.i.i = phi ptr [ %.0.lcssa.i.i, %.lr.ph143.i62.i ], [ %.21.i.i, %.loopexit66.i.i ] ; 8 uses
  %.1939141.i.i = phi i32 [ %.0938.lcssa.i.i, %.lr.ph143.i62.i ], [ %i.aon, %.loopexit66.i.i ] ; 2 uses
  %i.agl = add nsw i32 %.1939141.i.i, %2
  %i.agm = insertelement <4 x i32> poison, i32 %i.agl, i64 0
  %i.agn = shufflevector <4 x i32> %i.agm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ago = add <4 x i32> %i.agn, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.agp = bitcast <4 x i32> %i.ago to <2 x i64>
  %i.agq = bitcast <4 x i32> %i.ago to <2 x i64>
  %i.agr = and <2 x i64> %i.agq, splat (i64 4294967295)
  %i.ags = mul nuw <2 x i64> %i.agr, %i.vq
  %i.agt = lshr <2 x i64> %i.ags, splat (i64 32)
  %i.agu = lshr <2 x i64> %i.agp, splat (i64 32)
  %i.agv = mul nuw <2 x i64> %i.agu, %i.vq
  %i.agw = bitcast <2 x i64> %i.agt to <8 x i16>
  %i.agx = bitcast <2 x i64> %i.agv to <8 x i16>
  %i.agy = shufflevector <8 x i16> %i.agw, <8 x i16> %i.agx, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.agz = bitcast <8 x i16> %i.agy to <4 x i32>  ; 2 uses
  %i.aha = sub <4 x i32> %i.ago, %i.agz
  %i.ahb = lshr <4 x i32> %i.aha, %i.vr
  %i.ahc = add <4 x i32> %i.ahb, %i.agz
  %i.ahd = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.ahc, <4 x i32> %i.tz) ; 2 uses
  %i.ahe = mul <4 x i32> %i.ahd, %i.vt
  %i.ahf = sub <4 x i32> %i.ago, %i.ahe
  %i.ahg = mul <4 x i32> %i.ahf, %i.vv            ; 2 uses
  %i.ahh = mul <4 x i32> %i.ahd, %i.vx            ; 4 uses
  %i.ahi = add <4 x i32> %i.ahg, %i.ahh           ; 4 uses
  %shift300 = shufflevector <4 x i32> %i.ahh, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.ahj = icmp eq <4 x i32> %i.ahh, %shift300
  %i.ahk = extractelement <4 x i1> %i.ahj, i64 0
  %or.cond3.i.i = and i1 %i.g, %i.ahk
  br i1 %or.cond3.i.i, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %foldExtExtBinop280 = add nsw <4 x i32> %i.ahg, %i.ahh
  %i.ahl = extractelement <4 x i32> %foldExtExtBinop280, i64 0 ; 3 uses
  br i1 %i.vy, label %.preheader69.i.i, label %.loopexit68.i.i

.preheader69.i.i:                                 ; preds = %bb.s
  br i1 %i.vz, label %.lr.ph130.i.i, label %.preheader67.i.i

.lr.ph130.i.i:                                    ; preds = %.preheader69.i.i
  %i.ahm = sext i32 %i.ahl to i64                 ; 2 uses
  br label %bb.t

.preheader67.i.i:                                 ; preds = %bb.t, %.preheader69.i.i
  %.0948.lcssa.i.i = phi i32 [ 0, %.preheader69.i.i ], [ %i.ajd, %bb.t ] ; 2 uses
  %.12.lcssa.i63.i = phi ptr [ %.11142.i.i, %.preheader69.i.i ], [ %i.ajc, %bb.t ] ; 2 uses
  %i.ahn = icmp slt i32 %.0948.lcssa.i.i, %5
  br i1 %i.ahn, label %.lr.ph135.i.i, label %.loopexit66.i.i

.lr.ph135.i.i:                                    ; preds = %.preheader67.i.i
  %i.aho = sext i32 %i.ahl to i64
  br label %bb.u

bb.t:                                             ; preds = %bb.t, %.lr.ph130.i.i
  %.12129.i.i = phi ptr [ %.11142.i.i, %.lr.ph130.i.i ], [ %i.ajc, %bb.t ] ; 2 uses
  %.0948128.i.i = phi i32 [ 0, %.lr.ph130.i.i ], [ %i.ajd, %bb.t ] ; 2 uses
  %i.ahp = add nsw i32 %.0948128.i.i, %4          ; 3 uses
  %i.ahq = add nsw i32 %i.ahp, 1                  ; 2 uses
  %i.ahr = srem i32 %i.ahp, %i.tg                 ; 2 uses
  %i.ahs = srem i32 %i.ahq, %i.tg                 ; 2 uses
  %i.aht = sdiv i32 %i.ahr, %6
  %i.ahu = sdiv i32 %i.ahs, %6
  %i.ahv = srem i32 %i.ahr, %6
  %i.ahw = srem i32 %i.ahs, %6
  %i.ahx = mul i32 %i.aht, %i.wa
  %i.ahy = mul nsw i32 %i.ahv, %8
  %i.ahz = add nsw i32 %i.ahy, %i.ahx
  %i.aia = sext i32 %i.ahz to i64
  %i.aib = insertelement <2 x i32> poison, i32 %i.ahp, i64 0
  %i.aic = insertelement <2 x i32> %i.aib, i32 %i.ahq, i64 1
  %i.aid = sdiv <2 x i32> %i.aic, %i.xa
  %i.aie = sext <2 x i32> %i.aid to <2 x i64>
  %i.aif = mul <2 x i64> %i.wy, %i.aie            ; 2 uses
  %i.aig = mul i32 %i.ahu, %i.wa
  %i.aih = mul nsw i32 %i.ahw, %8
  %i.aii = add nsw i32 %i.aih, %i.aig
  %i.aij = sext i32 %i.aii to i64
  %i.aik = load ptr, ptr %0, align 8, !tbaa !15   ; 2 uses
  %i.ail = extractelement <2 x i64> %i.aif, i64 0
  %i.aim = getelementptr i8, ptr %i.aik, i64 %i.ail
  %i.ain = getelementptr i8, ptr %i.aim, i64 %i.ahm
  %i.aio = getelementptr i8, ptr %i.ain, i64 %i.aia
  %i.aip = load i64, ptr %i.aio, align 1, !tbaa !18
  %i.aiq = insertelement <2 x i64> poison, i64 %i.aip, i64 0
  %i.air = extractelement <2 x i64> %i.aif, i64 1
  %i.ais = getelementptr i8, ptr %i.aik, i64 %i.air
  %i.ait = getelementptr i8, ptr %i.ais, i64 %i.ahm
  %i.aiu = getelementptr i8, ptr %i.ait, i64 %i.aij
  %i.aiv = load i64, ptr %i.aiu, align 1, !tbaa !18
  %i.aiw = insertelement <2 x i64> poison, i64 %i.aiv, i64 0
  %i.aix = bitcast <2 x i64> %i.aiq to <16 x i8>
  %i.aiy = bitcast <2 x i64> %i.aiw to <16 x i8>
  %i.aiz = shufflevector <16 x i8> %i.aix, <16 x i8> %i.aiy, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aja = bitcast <16 x i8> %i.aiz to <2 x i64>
  %i.ajb = extractelement <2 x i64> %i.aja, i64 0
  store i64 %i.ajb, ptr %.12129.i.i, align 1, !tbaa !18
  %i.ajc = getelementptr inbounds nuw i8, ptr %.12129.i.i, i64 8 ; 2 uses
  %i.ajd = add nuw nsw i32 %.0948128.i.i, 2       ; 3 uses
  %i.aje = or disjoint i32 %i.ajd, 1
  %i.ajf = icmp slt i32 %i.aje, %5
  br i1 %i.ajf, label %bb.t, label %.preheader67.i.i, !llvm.loop !421

bb.u:                                             ; preds = %bb.u, %.lr.ph135.i.i
  %.13134.i.i = phi ptr [ %.12.lcssa.i63.i, %.lr.ph135.i.i ], [ %i.akl, %bb.u ] ; 5 uses
  %.1949133.i.i = phi i32 [ %.0948.lcssa.i.i, %.lr.ph135.i.i ], [ %i.akm, %bb.u ] ; 2 uses
  %i.ajg = add nsw i32 %.1949133.i.i, %4          ; 2 uses
  %i.ajh = sdiv i32 %i.ajg, %i.tg
  %i.aji = srem i32 %i.ajg, %i.tg                 ; 2 uses
  %i.ajj = sdiv i32 %i.aji, %6
  %i.ajk = srem i32 %i.aji, %6
  %i.ajl = sext i32 %i.ajh to i64
  %i.ajm = mul i64 %i.k, %i.ajl
  %i.ajn = add i64 %i.ajm, %i.aho
  %i.ajo = mul i32 %i.ajj, %i.wa
  %i.ajp = mul nsw i32 %i.ajk, %8
  %i.ajq = add nsw i32 %i.ajp, %i.ajo
  %i.ajr = sext i32 %i.ajq to i64
  %i.ajs = add i64 %i.ajn, %i.ajr                 ; 4 uses
  %i.ajt = load ptr, ptr %0, align 8, !tbaa !15
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %i.ajs
  %i.ajv = load i8, ptr %i.aju, align 1, !tbaa !18
  store i8 %i.ajv, ptr %.13134.i.i, align 1, !tbaa !18
  %i.ajw = load ptr, ptr %0, align 8, !tbaa !15
  %i.ajx = getelementptr i8, ptr %i.ajw, i64 %i.ajs
  %i.ajy = getelementptr i8, ptr %i.ajx, i64 1
  %i.ajz = load i8, ptr %i.ajy, align 1, !tbaa !18
  %i.aka = getelementptr inbounds nuw i8, ptr %.13134.i.i, i64 1
  store i8 %i.ajz, ptr %i.aka, align 1, !tbaa !18
  %i.akb = load ptr, ptr %0, align 8, !tbaa !15
  %i.akc = getelementptr i8, ptr %i.akb, i64 %i.ajs
  %i.akd = getelementptr i8, ptr %i.akc, i64 2
  %i.ake = load i8, ptr %i.akd, align 1, !tbaa !18
  %i.akf = getelementptr inbounds nuw i8, ptr %.13134.i.i, i64 2
  store i8 %i.ake, ptr %i.akf, align 1, !tbaa !18
  %i.akg = load ptr, ptr %0, align 8, !tbaa !15
  %i.akh = getelementptr i8, ptr %i.akg, i64 %i.ajs
  %i.aki = getelementptr i8, ptr %i.akh, i64 3
  %i.akj = load i8, ptr %i.aki, align 1, !tbaa !18
  %i.akk = getelementptr inbounds nuw i8, ptr %.13134.i.i, i64 3
  store i8 %i.akj, ptr %i.akk, align 1, !tbaa !18
  %i.akl = getelementptr inbounds nuw i8, ptr %.13134.i.i, i64 4 ; 2 uses
  %i.akm = add nuw nsw i32 %.1949133.i.i, 1       ; 2 uses
  %exitcond250.not.i64.i = icmp eq i32 %i.akm, %5
  br i1 %exitcond250.not.i64.i, label %.loopexit66.i.i, label %bb.u, !llvm.loop !422

.loopexit68.i.i:                                  ; preds = %bb.s
  br i1 %brmerge203.i.i, label %.loopexit66.i.i, label %.lr.ph139.i.i

.lr.ph139.i.i:                                    ; preds = %.loopexit68.i.i
  %i.akn = sext i32 %i.ahl to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph139.i.i
  %.15138.i.i = phi ptr [ %.11142.i.i, %.lr.ph139.i.i ], [ %i.alk, %bb.v ] ; 3 uses
  %.0952137.i.i = phi i32 [ 0, %.lr.ph139.i.i ], [ %i.all, %bb.v ] ; 2 uses
  %i.ako = add nsw i32 %.0952137.i.i, %i.wf       ; 2 uses
  %i.akp = sdiv i32 %i.ako, %i.tg
  %i.akq = srem i32 %i.ako, %i.tg                 ; 2 uses
  %i.akr = sdiv i32 %i.akq, %6
  %i.aks = srem i32 %i.akq, %6
  %i.akt = sext i32 %i.akp to i64
  %i.aku = mul i64 %i.k, %i.akt
  %i.akv = add i64 %i.aku, %i.akn
  %i.akw = mul i32 %i.akr, %i.wa
  %i.akx = mul nsw i32 %i.aks, %8
  %i.aky = add nsw i32 %i.akx, %i.akw
  %i.akz = sext i32 %i.aky to i64
  %i.ala = add i64 %i.akv, %i.akz
  %i.alb = shl i64 %i.ala, 3
  %i.alc = load ptr, ptr %0, align 8, !tbaa !15
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 %i.alb ; 2 uses
  %i.ale = load <8 x i16>, ptr %i.ald, align 1, !tbaa !18 ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ald, i64 16
  %i.alg = load <8 x i16>, ptr %i.alf, align 1, !tbaa !18 ; 2 uses
  %i.alh = shufflevector <8 x i16> %i.ale, <8 x i16> %i.alg, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.ali = shufflevector <8 x i16> %i.ale, <8 x i16> %i.alg, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.alh, ptr %.15138.i.i, align 1, !tbaa !18
  %i.alj = getelementptr inbounds nuw i8, ptr %.15138.i.i, i64 16
  store <8 x i16> %i.ali, ptr %i.alj, align 1, !tbaa !18
  %i.alk = getelementptr inbounds nuw i8, ptr %.15138.i.i, i64 32 ; 2 uses
  %i.all = add nuw nsw i32 %.0952137.i.i, 1       ; 2 uses
  %exitcond251.not.i.i = icmp eq i32 %i.all, %i.wd
  br i1 %exitcond251.not.i.i, label %.loopexit66.i.i, label %bb.v, !llvm.loop !423

bb.w:                                             ; preds = %bb.r
  br i1 %i.vy, label %.preheader74.i.i, label %.loopexit73.i.i

.preheader74.i.i:                                 ; preds = %bb.w
  br i1 %i.vz, label %.lr.ph117.i.i, label %.preheader72.i.i

.preheader72.i.i:                                 ; preds = %.lr.ph117.i.i, %.preheader74.i.i
end_hunk_1
begin_hunk_2_@_ZN4ncnn39convolution_im2col_input_tile_int8_avx2ERKNS_3MatERS0_iiiiiiiiii:bb.a
  %exitcond256.not.i.us.i = icmp eq i32 %i.arm, %5
  br i1 %exitcond256.not.i.us.i, label %.loopexit.i.us.i, label %bb.y, !llvm.loop !429

.loopexit.i.us.i:                                 ; preds = %bb.y, %.preheader50.i.us.i
  %.39.i.us.i = phi ptr [ %.35.lcssa.i.us.i, %.preheader50.i.us.i ], [ %i.arl, %bb.y ]
  %i.arn = add nuw nsw i32 %.3941191.i.us.i, 1    ; 2 uses
  %exitcond258.not.i.us.i = icmp eq i32 %i.arn, %3
  br i1 %exitcond258.not.i.us.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %.preheader52.i.us.i, !llvm.loop !430

.lr.ph193.i.split.i:                              ; preds = %.lr.ph193.i.i
  %i.aro = icmp slt i32 %5, 8
  %i.arp = icmp ne i32 %i.ta, 8
  %brmerge210.i.i = or i1 %i.aro, %i.arp
  br i1 %brmerge210.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %.loopexit51.i.i

bb.z:                                             ; preds = %.loopexit55.i.i, %.lr.ph175.i59.i
  %.22174.i.i = phi ptr [ %.11.lcssa.i.i, %.lr.ph175.i59.i ], [ %.33.i.i, %.loopexit55.i.i ] ; 8 uses
  %.2940173.i.i = phi i32 [ %.1939.lcssa.i.i, %.lr.ph175.i59.i ], [ %i.azg, %.loopexit55.i.i ] ; 2 uses
  %i.arq = add nsw i32 %.2940173.i.i, %2          ; 2 uses
  %i.arr = add nsw i32 %i.arq, 1
  %i.ars = insertelement <2 x i32> poison, i32 %i.arq, i64 0
  %i.art = insertelement <2 x i32> %i.ars, i32 %i.arr, i64 1
  %.frozen = freeze <2 x i32> %i.art              ; 2 uses
  %.frozen462 = freeze <2 x i32> %i.afx           ; 2 uses
  %i.aru = sdiv <2 x i32> %.frozen, %.frozen462   ; 2 uses
  %i.arv = mul <2 x i32> %i.aru, %.frozen462
  %.decomposed = sub <2 x i32> %.frozen, %i.arv
  %i.arw = mul nsw <2 x i32> %.decomposed, %i.afv
  %i.arx = mul <2 x i32> %i.aru, %i.afz           ; 3 uses
  %i.ary = add nsw <2 x i32> %i.arw, %i.arx       ; 8 uses
  %shift299 = shufflevector <2 x i32> %i.arx, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.arz = icmp eq <2 x i32> %i.arx, %shift299
  %i.asa = extractelement <2 x i1> %i.arz, i64 0
  %or.cond5.i.i = and i1 %i.g, %i.asa
  br i1 %or.cond5.i.i, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  br i1 %i.afm, label %.preheader58.i.i, label %.loopexit57.i.i

.preheader58.i.i:                                 ; preds = %bb.aa
  br i1 %i.afn, label %.lr.ph162.i.i, label %.preheader56.i.i

.lr.ph162.i.i:                                    ; preds = %.preheader58.i.i
  %i.asb = extractelement <2 x i32> %i.ary, i64 0
  %i.asc = sext i32 %i.asb to i64                 ; 2 uses
  br label %bb.ab

.preheader56.i.i:                                 ; preds = %bb.ab, %.preheader58.i.i
  %.0956.lcssa.i.i = phi i32 [ 0, %.preheader58.i.i ], [ %i.atu, %bb.ab ] ; 2 uses
  %.23.lcssa.i.i = phi ptr [ %.22174.i.i, %.preheader58.i.i ], [ %i.att, %bb.ab ] ; 2 uses
  %i.asd = icmp slt i32 %.0956.lcssa.i.i, %5
  br i1 %i.asd, label %.lr.ph167.i.i, label %.loopexit55.i.i

.lr.ph167.i.i:                                    ; preds = %.preheader56.i.i
  %i.ase = extractelement <2 x i32> %i.ary, i64 0
  %i.asf = sext i32 %i.ase to i64
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ab, %.lr.ph162.i.i
  %.23161.i.i = phi ptr [ %.22174.i.i, %.lr.ph162.i.i ], [ %i.att, %bb.ab ] ; 5 uses
  %.0956160.i.i = phi i32 [ 0, %.lr.ph162.i.i ], [ %i.atu, %bb.ab ] ; 2 uses
  %i.asg = add nsw i32 %.0956160.i.i, %4          ; 3 uses
  %i.ash = add nsw i32 %i.asg, 1                  ; 2 uses
  %i.asi = srem i32 %i.asg, %i.tg                 ; 2 uses
  %i.asj = srem i32 %i.ash, %i.tg                 ; 2 uses
  %i.ask = sdiv i32 %i.asi, %6
  %i.asl = sdiv i32 %i.asj, %6
  %i.asm = srem i32 %i.asi, %6
  %i.asn = srem i32 %i.asj, %6
  %i.aso = mul i32 %i.ask, %i.afo
  %i.asp = mul nsw i32 %i.asm, %8
  %i.asq = add nsw i32 %i.asp, %i.aso
  %i.asr = sext i32 %i.asq to i64
  %i.ass = insertelement <2 x i32> poison, i32 %i.asg, i64 0
  %i.ast = insertelement <2 x i32> %i.ass, i32 %i.ash, i64 1
  %i.asu = sdiv <2 x i32> %i.ast, %i.agk
  %i.asv = sext <2 x i32> %i.asu to <2 x i64>
  %i.asw = mul <2 x i64> %i.agi, %i.asv           ; 2 uses
  %i.asx = mul i32 %i.asl, %i.afo
  %i.asy = mul nsw i32 %i.asn, %8
  %i.asz = add nsw i32 %i.asy, %i.asx
  %i.ata = sext i32 %i.asz to i64
  %i.atb = load ptr, ptr %0, align 8, !tbaa !15   ; 2 uses
  %i.atc = extractelement <2 x i64> %i.asw, i64 0
  %i.atd = getelementptr i8, ptr %i.atb, i64 %i.atc
  %i.ate = getelementptr i8, ptr %i.atd, i64 %i.asc
  %i.atf = getelementptr i8, ptr %i.ate, i64 %i.asr ; 2 uses
  %i.atg = extractelement <2 x i64> %i.asw, i64 1
  %i.ath = getelementptr i8, ptr %i.atb, i64 %i.atg
  %i.ati = getelementptr i8, ptr %i.ath, i64 %i.asc
  %i.atj = getelementptr i8, ptr %i.ati, i64 %i.ata ; 2 uses
  %i.atk = load i8, ptr %i.atf, align 1, !tbaa !18
  store i8 %i.atk, ptr %.23161.i.i, align 1, !tbaa !18
  %i.atl = load i8, ptr %i.atj, align 1, !tbaa !18
  %i.atm = getelementptr inbounds nuw i8, ptr %.23161.i.i, i64 1
  store i8 %i.atl, ptr %i.atm, align 1, !tbaa !18
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atf, i64 1
  %i.ato = load i8, ptr %i.atn, align 1, !tbaa !18
  %i.atp = getelementptr inbounds nuw i8, ptr %.23161.i.i, i64 2
  store i8 %i.ato, ptr %i.atp, align 1, !tbaa !18
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atj, i64 1
  %i.atr = load i8, ptr %i.atq, align 1, !tbaa !18
  %i.ats = getelementptr inbounds nuw i8, ptr %.23161.i.i, i64 3
  store i8 %i.atr, ptr %i.ats, align 1, !tbaa !18
  %i.att = getelementptr inbounds nuw i8, ptr %.23161.i.i, i64 4 ; 2 uses
  %i.atu = add nuw nsw i32 %.0956160.i.i, 2       ; 3 uses
  %i.atv = or disjoint i32 %i.atu, 1
  %i.atw = icmp slt i32 %i.atv, %5
  br i1 %i.atw, label %bb.ab, label %.preheader56.i.i, !llvm.loop !431

bb.ac:                                            ; preds = %bb.ac, %.lr.ph167.i.i
  %.24166.i.i = phi ptr [ %.23.lcssa.i.i, %.lr.ph167.i.i ], [ %i.auq, %bb.ac ] ; 3 uses
  %.1957165.i.i = phi i32 [ %.0956.lcssa.i.i, %.lr.ph167.i.i ], [ %i.aur, %bb.ac ] ; 2 uses
  %i.atx = add nsw i32 %.1957165.i.i, %4          ; 2 uses
  %i.aty = sdiv i32 %i.atx, %i.tg
  %i.atz = srem i32 %i.atx, %i.tg                 ; 2 uses
  %i.aua = sdiv i32 %i.atz, %6
  %i.aub = srem i32 %i.atz, %6
  %i.auc = sext i32 %i.aty to i64
  %i.aud = mul i64 %i.k, %i.auc
  %i.aue = mul i32 %i.aua, %i.afo
  %i.auf = mul nsw i32 %i.aub, %8
  %i.aug = add nsw i32 %i.auf, %i.aue
  %i.auh = sext i32 %i.aug to i64
  %i.aui = load ptr, ptr %0, align 8, !tbaa !15
  %i.auj = getelementptr i8, ptr %i.aui, i64 %i.aud
  %i.auk = getelementptr i8, ptr %i.auj, i64 %i.asf
  %i.aul = getelementptr i8, ptr %i.auk, i64 %i.auh ; 2 uses
  %i.aum = load i8, ptr %i.aul, align 1, !tbaa !18
  store i8 %i.aum, ptr %.24166.i.i, align 1, !tbaa !18
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aul, i64 1
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !18
  %i.aup = getelementptr inbounds nuw i8, ptr %.24166.i.i, i64 1
  store i8 %i.auo, ptr %i.aup, align 1, !tbaa !18
  %i.auq = getelementptr inbounds nuw i8, ptr %.24166.i.i, i64 2 ; 2 uses
  %i.aur = add nuw nsw i32 %.1957165.i.i, 1       ; 2 uses
  %exitcond254.not.i.i = icmp eq i32 %i.aur, %5
  br i1 %exitcond254.not.i.i, label %.loopexit55.i.i, label %bb.ac, !llvm.loop !432

.loopexit57.i.i:                                  ; preds = %bb.aa
  br i1 %or.cond207.i.i, label %.lr.ph171.i.i, label %.loopexit55.i.i

.lr.ph171.i.i:                                    ; preds = %.loopexit57.i.i
  %i.aus = extractelement <2 x i32> %i.ary, i64 0
  %i.aut = sext i32 %i.aus to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph171.i.i
  %.26170.i.i = phi ptr [ %.22174.i.i, %.lr.ph171.i.i ], [ %i.avm, %bb.ad ] ; 2 uses
  %.0958169.i.i = phi i32 [ 0, %.lr.ph171.i.i ], [ %i.avn, %bb.ad ] ; 2 uses
  %i.auu = add nsw i32 %.0958169.i.i, %i.afs      ; 2 uses
  %i.auv = sdiv i32 %i.auu, %i.tg
  %i.auw = srem i32 %i.auu, %i.tg                 ; 2 uses
  %i.aux = sdiv i32 %i.auw, %6
  %i.auy = srem i32 %i.auw, %6
  %i.auz = sext i32 %i.auv to i64
  %i.ava = mul i64 %i.k, %i.auz
  %i.avb = add i64 %i.ava, %i.aut
  %i.avc = mul i32 %i.aux, %i.afo
  %i.avd = mul nsw i32 %i.auy, %8
  %i.ave = add nsw i32 %i.avd, %i.avc
  %i.avf = sext i32 %i.ave to i64
  %i.avg = add i64 %i.avb, %i.avf
  %i.avh = shl i64 %i.avg, 3
  %i.avi = load ptr, ptr %0, align 8, !tbaa !15
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avi, i64 %i.avh
  %i.avk = load <8 x i16>, ptr %i.avj, align 1, !tbaa !18
  %i.avl = shufflevector <8 x i16> %i.avk, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.avl, ptr %.26170.i.i, align 1, !tbaa !18
  %i.avm = getelementptr inbounds nuw i8, ptr %.26170.i.i, i64 16 ; 2 uses
  %i.avn = add nuw nsw i32 %.0958169.i.i, 1       ; 2 uses
  %exitcond255.not.i.i = icmp eq i32 %i.avn, %i.afr
  br i1 %exitcond255.not.i.i, label %.loopexit55.i.i, label %bb.ad, !llvm.loop !433

bb.ae:                                            ; preds = %bb.z
  br i1 %i.afm, label %.preheader63.i.i, label %.loopexit62.i.i

.preheader63.i.i:                                 ; preds = %bb.ae
  br i1 %i.afn, label %.lr.ph148.i.i.preheader, label %.preheader61.i.i

.lr.ph148.i.i.preheader:                          ; preds = %.preheader63.i.i
  %i.avo = shufflevector <2 x i32> %i.ary, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph148.i.i

.preheader61.i.i:                                 ; preds = %.lr.ph148.i.i, %.preheader63.i.i
  %.0959.lcssa.i.i = phi i32 [ 0, %.preheader63.i.i ], [ %i.axb, %.lr.ph148.i.i ] ; 2 uses
  %.28.lcssa.i.i = phi ptr [ %.22174.i.i, %.preheader63.i.i ], [ %i.axa, %.lr.ph148.i.i ] ; 2 uses
  %i.avp = icmp slt i32 %.0959.lcssa.i.i, %5
  br i1 %i.avp, label %.lr.ph153.i61.i, label %.loopexit55.i.i

.lr.ph153.i61.i:                                  ; preds = %.preheader61.i.i
  %i.avq = extractelement <2 x i32> %i.ary, i64 0
  %i.avr = extractelement <2 x i32> %i.ary, i64 1
  %i.avs = sext i32 %i.avq to i64
  %i.avt = sext i32 %i.avr to i64
  br label %bb.af

.lr.ph148.i.i:                                    ; preds = %.lr.ph148.i.i.preheader, %.lr.ph148.i.i
  %.28147.i.i = phi ptr [ %i.axa, %.lr.ph148.i.i ], [ %.22174.i.i, %.lr.ph148.i.i.preheader ] ; 5 uses
  %.0959146.i.i = phi i32 [ %i.axb, %.lr.ph148.i.i ], [ 0, %.lr.ph148.i.i.preheader ] ; 2 uses
  %i.avu = add nsw i32 %.0959146.i.i, %4          ; 3 uses
  %i.avv = add nsw i32 %i.avu, 1                  ; 2 uses
  %i.avw = load ptr, ptr %0, align 8, !tbaa !15   ; 4 uses
  %i.avx = insertelement <2 x i32> poison, i32 %i.avu, i64 0
  %i.avy = insertelement <2 x i32> %i.avx, i32 %i.avv, i64 1
  %14 = srem <2 x i32> %i.avy, %i.agd             ; 3 uses
  %15 = srem <2 x i32> %14, %i.age
  %i.avz = mul nsw <2 x i32> %15, %i.agg
  %16 = insertelement <2 x i32> %14, i32 %i.avu, i64 1
  %i.awa = sdiv <2 x i32> %16, %12
  %i.awb = mul <2 x i32> %i.awa, %13              ; 2 uses
  %17 = shufflevector <2 x i32> %14, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %18 = insertelement <2 x i32> %17, i32 %i.avv, i64 1
  %19 = sdiv <2 x i32> %18, %12
  %i.awc = mul <2 x i32> %19, %13                 ; 2 uses
  %20 = shufflevector <2 x i32> %i.awb, <2 x i32> %i.awc, <2 x i32> <i32 0, i32 2>
  %21 = shufflevector <2 x i32> %i.awb, <2 x i32> %i.awc, <2 x i32> <i32 1, i32 3>
  %i.awd = add <2 x i32> %20, %21
  %i.awe = add <2 x i32> %i.awd, %i.avz
  %i.awf = shufflevector <2 x i32> %i.awe, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.awg = add <4 x i32> %i.awf, %i.avo           ; 4 uses
  %i.awh = extractelement <4 x i32> %i.awg, i64 0
  %i.awi = sext i32 %i.awh to i64
  %i.awj = getelementptr inbounds i8, ptr %i.avw, i64 %i.awi
  %i.awk = extractelement <4 x i32> %i.awg, i64 1
  %i.awl = sext i32 %i.awk to i64
  %i.awm = getelementptr inbounds i8, ptr %i.avw, i64 %i.awl
  %i.awn = extractelement <4 x i32> %i.awg, i64 2
  %i.awo = sext i32 %i.awn to i64
  %i.awp = getelementptr inbounds i8, ptr %i.avw, i64 %i.awo
  %i.awq = extractelement <4 x i32> %i.awg, i64 3
  %i.awr = sext i32 %i.awq to i64
  %i.aws = getelementptr inbounds i8, ptr %i.avw, i64 %i.awr
  %i.awt = load i8, ptr %i.awj, align 1, !tbaa !18
  store i8 %i.awt, ptr %.28147.i.i, align 1, !tbaa !18
  %i.awu = load i8, ptr %i.awp, align 1, !tbaa !18
  %i.awv = getelementptr inbounds nuw i8, ptr %.28147.i.i, i64 1
  store i8 %i.awu, ptr %i.awv, align 1, !tbaa !18
  %i.aww = load i8, ptr %i.awm, align 1, !tbaa !18
  %i.awx = getelementptr inbounds nuw i8, ptr %.28147.i.i, i64 2
  store i8 %i.aww, ptr %i.awx, align 1, !tbaa !18
  %i.awy = load i8, ptr %i.aws, align 1, !tbaa !18
  %i.awz = getelementptr inbounds nuw i8, ptr %.28147.i.i, i64 3
  store i8 %i.awy, ptr %i.awz, align 1, !tbaa !18
  %i.axa = getelementptr inbounds nuw i8, ptr %.28147.i.i, i64 4 ; 2 uses
  %i.axb = add nuw nsw i32 %.0959146.i.i, 2       ; 3 uses
  %i.axc = or disjoint i32 %i.axb, 1
  %i.axd = icmp slt i32 %i.axc, %5
  br i1 %i.axd, label %.lr.ph148.i.i, label %.preheader61.i.i, !llvm.loop !434

bb.af:                                            ; preds = %bb.af, %.lr.ph153.i61.i
  %.29152.i.i = phi ptr [ %.28.lcssa.i.i, %.lr.ph153.i61.i ], [ %i.axy, %bb.af ] ; 3 uses
  %.1960151.i.i = phi i32 [ %.0959.lcssa.i.i, %.lr.ph153.i61.i ], [ %i.axz, %bb.af ] ; 2 uses
  %i.axe = add nsw i32 %.1960151.i.i, %4          ; 2 uses
  %i.axf = sdiv i32 %i.axe, %i.tg
  %i.axg = srem i32 %i.axe, %i.tg                 ; 2 uses
  %i.axh = sdiv i32 %i.axg, %6
  %i.axi = srem i32 %i.axg, %6
  %i.axj = sext i32 %i.axf to i64
  %i.axk = mul i64 %i.k, %i.axj
  %i.axl = mul i32 %i.axh, %i.afo
  %i.axm = mul nsw i32 %i.axi, %8
  %i.axn = add nsw i32 %i.axm, %i.axl
  %i.axo = sext i32 %i.axn to i64                 ; 2 uses
  %i.axp = load ptr, ptr %0, align 8, !tbaa !15
  %i.axq = getelementptr i8, ptr %i.axp, i64 %i.axk ; 2 uses
  %i.axr = getelementptr i8, ptr %i.axq, i64 %i.avs
  %i.axs = getelementptr i8, ptr %i.axr, i64 %i.axo
  %i.axt = getelementptr i8, ptr %i.axq, i64 %i.avt
  %i.axu = getelementptr i8, ptr %i.axt, i64 %i.axo
  %i.axv = load i8, ptr %i.axs, align 1, !tbaa !18
  store i8 %i.axv, ptr %.29152.i.i, align 1, !tbaa !18
  %i.axw = load i8, ptr %i.axu, align 1, !tbaa !18
  %i.axx = getelementptr inbounds nuw i8, ptr %.29152.i.i, i64 1
  store i8 %i.axw, ptr %i.axx, align 1, !tbaa !18
  %i.axy = getelementptr inbounds nuw i8, ptr %.29152.i.i, i64 2 ; 2 uses
  %i.axz = add nuw nsw i32 %.1960151.i.i, 1       ; 2 uses
  %exitcond252.not.i.i = icmp eq i32 %i.axz, %5
  br i1 %exitcond252.not.i.i, label %.loopexit55.i.i, label %bb.af, !llvm.loop !435

.loopexit62.i.i:                                  ; preds = %bb.ae
  br i1 %or.cond207.i.i, label %.lr.ph158.i60.i, label %.loopexit55.i.i

.lr.ph158.i60.i:                                  ; preds = %.loopexit62.i.i
  %i.aya = extractelement <2 x i32> %i.ary, i64 0
  %i.ayb = sext i32 %i.aya to i64
  %i.ayc = extractelement <2 x i32> %i.ary, i64 1
  %i.ayd = sext i32 %i.ayc to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph158.i60.i
  %.31157.i.i = phi ptr [ %.22174.i.i, %.lr.ph158.i60.i ], [ %i.aze, %bb.ag ] ; 2 uses
  %.3962156.i.i = phi i32 [ 0, %.lr.ph158.i60.i ], [ %i.azf, %bb.ag ] ; 2 uses
  %i.aye = add nsw i32 %.3962156.i.i, %i.afs      ; 2 uses
  %i.ayf = sdiv i32 %i.aye, %i.tg
  %i.ayg = srem i32 %i.aye, %i.tg                 ; 2 uses
  %i.ayh = sdiv i32 %i.ayg, %6
  %i.ayi = srem i32 %i.ayg, %6
  %i.ayj = sext i32 %i.ayf to i64
  %i.ayk = mul i64 %i.k, %i.ayj
  %i.ayl = mul i32 %i.ayh, %i.afo
  %i.aym = mul nsw i32 %i.ayi, %8
  %i.ayn = add nsw i32 %i.aym, %i.ayl
  %i.ayo = sext i32 %i.ayn to i64
  %i.ayp = add i64 %i.ayk, %i.ayo                 ; 2 uses
  %i.ayq = add i64 %i.ayp, %i.ayb
  %i.ayr = shl i64 %i.ayq, 3
  %i.ays = add i64 %i.ayp, %i.ayd
  %i.ayt = shl i64 %i.ays, 3
  %i.ayu = load ptr, ptr %0, align 8, !tbaa !15   ; 2 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 %i.ayr
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayu, i64 %i.ayt
  %i.ayx = load i64, ptr %i.ayv, align 1, !tbaa !18
  %i.ayy = insertelement <2 x i64> poison, i64 %i.ayx, i64 0
  %i.ayz = load i64, ptr %i.ayw, align 1, !tbaa !18
  %i.aza = insertelement <2 x i64> poison, i64 %i.ayz, i64 0
  %i.azb = bitcast <2 x i64> %i.ayy to <8 x i16>
  %i.azc = bitcast <2 x i64> %i.aza to <8 x i16>
  %i.azd = shufflevector <8 x i16> %i.azb, <8 x i16> %i.azc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.azd, ptr %.31157.i.i, align 1, !tbaa !18
  %i.aze = getelementptr inbounds nuw i8, ptr %.31157.i.i, i64 16 ; 2 uses
  %i.azf = add nuw nsw i32 %.3962156.i.i, 1       ; 2 uses
  %exitcond253.not.i.i = icmp eq i32 %i.azf, %i.afr
  br i1 %exitcond253.not.i.i, label %.loopexit55.i.i, label %bb.ag, !llvm.loop !436

.loopexit55.i.i:                                  ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ac, %.loopexit62.i.i, %.preheader61.i.i, %.loopexit57.i.i, %.preheader56.i.i
  %.33.i.i = phi ptr [ %.22174.i.i, %.loopexit62.i.i ], [ %.22174.i.i, %.loopexit57.i.i ], [ %.23.lcssa.i.i, %.preheader56.i.i ], [ %i.avm, %bb.ad ], [ %i.auq, %bb.ac ], [ %.28.lcssa.i.i, %.preheader61.i.i ], [ %i.axy, %bb.af ], [ %i.aze, %bb.ag ] ; 2 uses
  %i.azg = add nuw nsw i32 %.2940173.i.i, 2       ; 3 uses
  %i.azh = or disjoint i32 %i.azg, 1
  %i.azi = icmp slt i32 %i.azh, %3
  br i1 %i.azi, label %bb.z, label %.preheader53.i.i, !llvm.loop !437

.loopexit51.i.i:                                  ; preds = %.lr.ph193.i.split.i, %.loopexit.i.loopexit73.i
  %.34192.i.i = phi ptr [ %i.bah, %.loopexit.i.loopexit73.i ], [ %.22.lcssa.i.i, %.lr.ph193.i.split.i ]
  %.3941191.i.i = phi i32 [ %i.baj, %.loopexit.i.loopexit73.i ], [ %.2940.lcssa.i.i, %.lr.ph193.i.split.i ] ; 2 uses
  %i.azj = add nsw i32 %.3941191.i.i, %2          ; 2 uses
  %i.azk = sdiv i32 %i.azj, %i.tf
  %i.azl = srem i32 %i.azj, %i.tf
  %i.azm = mul nsw i32 %i.azl, %10
  %i.azn = mul i32 %i.azk, %i.aor
  %i.azo = add nsw i32 %i.azm, %i.azn
  %i.azp = sext i32 %i.azo to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.loopexit51.i.i
  %.38188.i.i = phi ptr [ %.34192.i.i, %.loopexit51.i.i ], [ %i.bah, %bb.ah ] ; 2 uses
  %.0937187.i.i = phi i32 [ 0, %.loopexit51.i.i ], [ %i.bai, %bb.ah ] ; 2 uses
  %i.azq = add nsw i32 %.0937187.i.i, %i.aow      ; 2 uses
  %i.azr = sdiv i32 %i.azq, %i.tg
  %i.azs = srem i32 %i.azq, %i.tg                 ; 2 uses
  %i.azt = sdiv i32 %i.azs, %6
  %i.azu = srem i32 %i.azs, %6
  %i.azv = sext i32 %i.azr to i64
  %i.azw = mul i64 %i.k, %i.azv
  %i.azx = add i64 %i.azw, %i.azp
  %i.azy = mul i32 %i.azt, %i.aou
  %i.azz = mul nsw i32 %i.azu, %8
  %i.baa = add nsw i32 %i.azz, %i.azy
  %i.bab = sext i32 %i.baa to i64
  %i.bac = add i64 %i.azx, %i.bab
  %i.bad = shl i64 %i.bac, 3
  %i.bae = load ptr, ptr %0, align 8, !tbaa !15
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bae, i64 %i.bad
  %i.bag = load i64, ptr %i.baf, align 1, !tbaa !18
  store i64 %i.bag, ptr %.38188.i.i, align 1, !tbaa !18
  %i.bah = getelementptr inbounds nuw i8, ptr %.38188.i.i, i64 8 ; 2 uses
  %i.bai = add nuw nsw i32 %.0937187.i.i, 1       ; 2 uses
  %exitcond257.not.i.i = icmp eq i32 %i.bai, %i.aov
  br i1 %exitcond257.not.i.i, label %.loopexit.i.loopexit73.i, label %bb.ah, !llvm.loop !438

.loopexit.i.loopexit73.i:                         ; preds = %bb.ah
  %i.baj = add nuw nsw i32 %.3941191.i.i, 1       ; 2 uses
  %exitcond258.not.i.i = icmp eq i32 %i.baj, %3
  br i1 %exitcond258.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %.loopexit51.i.i, !llvm.loop !430

_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit: ; preds = %.loopexit.i.loopexit73.i, %.loopexit.i.us.i, %..loopexit_crit_edge.i.i, %..loopexit118_crit_edge.us.i.i, %bb.b, %bb.d, %.preheader.i.i, %.lr.ph206.i.i, %.lr.ph206.split.us.split.i.i, %.lr.ph206.split.split.i.i, %.preheader53.i.i, %.lr.ph193.i.split.i
  ret void
}

declare noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev() local_unnamed_addr #2

declare void @_ZN4ncnn46convolution_im2col_input_tile_int8_avxvnniint8ERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN4ncnn42convolution_im2col_input_tile_int8_avxvnniERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64>, ptr, <4 x i32>, <4 x i64>, i8 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.psrl.d(<8 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32>, <4 x i32>) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ncnn29unpack_output_tile_int32_avx2ERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #14 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 34 uses
  %i.e = icmp sgt i32 %3, 7
  br i1 %i.e, label %.lr.ph288.i, label %.preheader257.i

.lr.ph288.i:                                      ; preds = %bb.a
  %i.f = mul nsw i32 %i.b, %4
  %i.g = sext i32 %i.f to i64
  %i.h = icmp sgt i32 %5, 7
  %.idx661.i = shl i64 %i.d, 3                    ; 4 uses
  %.idx662.i = mul i64 %i.d, 12                   ; 4 uses
  %.idx663.i = shl i64 %i.d, 4                    ; 8 uses
  %.idx664.i = mul i64 %i.d, 20                   ; 4 uses
  %.idx665.i = mul i64 %i.d, 24                   ; 4 uses
  %.idx666.i = mul i64 %i.d, 28                   ; 4 uses
  %i.i = and i32 %5, -8
end_hunk_2
