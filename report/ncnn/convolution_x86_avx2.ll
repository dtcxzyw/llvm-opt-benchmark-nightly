Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx2?download=true
inline.NumInlined: 88
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN4ncnn39convolution_im2col_input_tile_int8_avx2ERKNS_3MatERS0_iiiiiiiiii:bb.a
_ZN4ncnn3MatD2Ev.exit258.us.preheader.i.i:        ; preds = %.lr.ph206.split.us.split.i.i
  %i.qb = sext i32 %.2242.lcssa.i.i to i64
  %i.qc = sext i32 %2 to i64
  %wide.trip.count249.i.i = sext i32 %3 to i64
  %i.qd = add nsw i32 %i.px, -1
  %xtraiter412 = and i32 %i.px, 7                 ; 3 uses
  %i.qe = icmp ult i32 %i.qd, 7
  %unroll_iter417 = and i32 %i.px, 268435448
  %lcmp.mod414.not = icmp eq i32 %xtraiter412, 0
  %lcmp.mod416 = icmp ne i32 %xtraiter412, 0
  br label %_ZN4ncnn3MatD2Ev.exit258.us.i.i

_ZN4ncnn3MatD2Ev.exit258.us.i.i:                  ; preds = %..loopexit118_crit_edge.us.i.i, %_ZN4ncnn3MatD2Ev.exit258.us.preheader.i.i
  %indvars.iv246.i.i = phi i64 [ %i.qb, %_ZN4ncnn3MatD2Ev.exit258.us.preheader.i.i ], [ %indvars.iv.next247.i.i, %..loopexit118_crit_edge.us.i.i ] ; 2 uses
  %.18205.us.i.i = phi ptr [ %.12.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit258.us.preheader.i.i ], [ %.lcssa, %..loopexit118_crit_edge.us.i.i ] ; 2 uses
  %i.qf = load ptr, ptr %0, align 8, !tbaa !15, !noalias !445
  %i.qg = load i64, ptr %i.j, align 8, !tbaa !16, !noalias !445
  %i.qh = mul i64 %i.qg, %i.pv
  %i.qi = load i64, ptr %i.pw, align 8, !tbaa !17, !noalias !445
  %i.qj = mul i64 %i.qh, %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.qj
  %i.ql = add nsw i64 %indvars.iv246.i.i, %i.qc
  %i.qm = shl nsw i64 %i.ql, 3
  %i.qn = getelementptr inbounds i8, ptr %i.qk, i64 %i.qm ; 2 uses
  br i1 %i.qe, label %.epil.preheader411, label %_ZN4ncnn3MatD2Ev.exit258.us.i.i.new

_ZN4ncnn3MatD2Ev.exit258.us.i.i.new:              ; preds = %_ZN4ncnn3MatD2Ev.exit258.us.i.i, %_ZN4ncnn3MatD2Ev.exit258.us.i.i.new
  %.0234195.us.i.i = phi ptr [ %i.rl, %_ZN4ncnn3MatD2Ev.exit258.us.i.i.new ], [ %i.qn, %_ZN4ncnn3MatD2Ev.exit258.us.i.i ] ; 2 uses
  %.19194.us.i.i = phi ptr [ %i.rk, %_ZN4ncnn3MatD2Ev.exit258.us.i.i.new ], [ %.18205.us.i.i, %_ZN4ncnn3MatD2Ev.exit258.us.i.i ] ; 9 uses
  %niter418 = phi i32 [ %niter418.next.7, %_ZN4ncnn3MatD2Ev.exit258.us.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit258.us.i.i ]
  %i.qo = load i64, ptr %.0234195.us.i.i, align 1, !tbaa !18
  store i64 %i.qo, ptr %.19194.us.i.i, align 1, !tbaa !18
  %i.qp = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 8
  %i.qq = getelementptr inbounds nuw i8, ptr %.0234195.us.i.i, i64 %i.py ; 2 uses
  %i.qr = load i64, ptr %i.qq, align 1, !tbaa !18
  store i64 %i.qr, ptr %i.qp, align 1, !tbaa !18
  %i.qs = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 16
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.py ; 2 uses
  %i.qu = load i64, ptr %i.qt, align 1, !tbaa !18
  store i64 %i.qu, ptr %i.qs, align 1, !tbaa !18
  %i.qv = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 24
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.py ; 2 uses
  %i.qx = load i64, ptr %i.qw, align 1, !tbaa !18
  store i64 %i.qx, ptr %i.qv, align 1, !tbaa !18
  %i.qy = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 32
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.py ; 2 uses
  %i.ra = load i64, ptr %i.qz, align 1, !tbaa !18
  store i64 %i.ra, ptr %i.qy, align 1, !tbaa !18
  %i.rb = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 40
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.py ; 2 uses
  %i.rd = load i64, ptr %i.rc, align 1, !tbaa !18
  store i64 %i.rd, ptr %i.rb, align 1, !tbaa !18
  %i.re = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 48
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.py ; 2 uses
  %i.rg = load i64, ptr %i.rf, align 1, !tbaa !18
  store i64 %i.rg, ptr %i.re, align 1, !tbaa !18
  %i.rh = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 56
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.py ; 2 uses
  %i.rj = load i64, ptr %i.ri, align 1, !tbaa !18
  store i64 %i.rj, ptr %i.rh, align 1, !tbaa !18
  %i.rk = getelementptr inbounds nuw i8, ptr %.19194.us.i.i, i64 64 ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.py ; 2 uses
  %niter418.next.7 = add i32 %niter418, 8         ; 2 uses
  %niter418.ncmp.7 = icmp eq i32 %niter418.next.7, %unroll_iter417
  br i1 %niter418.ncmp.7, label %..loopexit118_crit_edge.us.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit258.us.i.i.new, !llvm.loop !407

..loopexit118_crit_edge.us.i.i.unr-lcssa:         ; preds = %_ZN4ncnn3MatD2Ev.exit258.us.i.i.new
  br i1 %lcmp.mod414.not, label %..loopexit118_crit_edge.us.i.i, label %.epil.preheader411

.epil.preheader411:                               ; preds = %..loopexit118_crit_edge.us.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit258.us.i.i
  %.0234195.us.i.i.epil.init = phi ptr [ %i.qn, %_ZN4ncnn3MatD2Ev.exit258.us.i.i ], [ %i.rl, %..loopexit118_crit_edge.us.i.i.unr-lcssa ]
  %.19194.us.i.i.epil.init = phi ptr [ %.18205.us.i.i, %_ZN4ncnn3MatD2Ev.exit258.us.i.i ], [ %i.rk, %..loopexit118_crit_edge.us.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod416)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader411
  %.0234195.us.i.i.epil = phi ptr [ %.0234195.us.i.i.epil.init, %.epil.preheader411 ], [ %i.ro, %bb.g ] ; 2 uses
  %.19194.us.i.i.epil = phi ptr [ %.19194.us.i.i.epil.init, %.epil.preheader411 ], [ %i.rn, %bb.g ] ; 2 uses
  %epil.iter413 = phi i32 [ 0, %.epil.preheader411 ], [ %epil.iter413.next, %bb.g ]
  %i.rm = load i64, ptr %.0234195.us.i.i.epil, align 1, !tbaa !18
  store i64 %i.rm, ptr %.19194.us.i.i.epil, align 1, !tbaa !18
  %i.rn = getelementptr inbounds nuw i8, ptr %.19194.us.i.i.epil, i64 8 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.0234195.us.i.i.epil, i64 %i.py
  %epil.iter413.next = add i32 %epil.iter413, 1   ; 2 uses
  %epil.iter413.cmp.not = icmp eq i32 %epil.iter413.next, %xtraiter412
  br i1 %epil.iter413.cmp.not, label %..loopexit118_crit_edge.us.i.i, label %bb.g, !llvm.loop !408

..loopexit118_crit_edge.us.i.i:                   ; preds = %bb.g, %..loopexit118_crit_edge.us.i.i.unr-lcssa
  %.lcssa = phi ptr [ %i.rk, %..loopexit118_crit_edge.us.i.i.unr-lcssa ], [ %i.rn, %bb.g ]
  %indvars.iv.next247.i.i = add nuw nsw i64 %indvars.iv246.i.i, 1 ; 2 uses
  %exitcond250.not.i.i = icmp eq i64 %indvars.iv.next247.i.i, %wide.trip.count249.i.i
  br i1 %exitcond250.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit258.us.i.i, !llvm.loop !409

.lr.ph206.split.split.i.i:                        ; preds = %.lr.ph206.i.i
  %i.rp = icmp sgt i32 %5, 0
  br i1 %i.rp, label %_ZN4ncnn3MatD2Ev.exit.preheader.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

_ZN4ncnn3MatD2Ev.exit.preheader.i.i:              ; preds = %.lr.ph206.split.split.i.i
  %i.rq = sext i32 %.2242.lcssa.i.i to i64
  %i.rr = sext i32 %2 to i64
  %wide.trip.count.i.i = sext i32 %3 to i64
  %i.rs = add nsw i32 %5, -1
  %xtraiter405 = and i32 %5, 7                    ; 3 uses
  %i.rt = icmp ult i32 %i.rs, 7
  %unroll_iter409 = and i32 %5, 2147483640
  %lcmp.mod406.not = icmp eq i32 %xtraiter405, 0
  %lcmp.mod408 = icmp ne i32 %xtraiter405, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i.i

_ZN4ncnn3MatD2Ev.exit.i.i:                        ; preds = %..loopexit_crit_edge.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i
  %indvars.iv241.i.i = phi i64 [ %i.rq, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %indvars.iv.next242.i.i, %..loopexit_crit_edge.i.i ] ; 2 uses
  %.18205.i.i = phi ptr [ %.12.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %.lcssa317, %..loopexit_crit_edge.i.i ] ; 2 uses
  %i.ru = load ptr, ptr %0, align 8, !tbaa !15, !noalias !446
  %i.rv = load i64, ptr %i.j, align 8, !tbaa !16, !noalias !446
  %i.rw = mul i64 %i.rv, %i.pz
  %i.rx = load i64, ptr %i.pw, align 8, !tbaa !17, !noalias !446
  %i.ry = mul i64 %i.rw, %i.rx
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.ry
  %i.sa = getelementptr i8, ptr %i.rz, i64 %indvars.iv241.i.i
  %i.sb = getelementptr i8, ptr %i.sa, i64 %i.rr  ; 2 uses
  br i1 %i.rt, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit.i.i.new

_ZN4ncnn3MatD2Ev.exit.i.i.new:                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i.new
  %.0232200.i.i = phi ptr [ %i.sz, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %i.sb, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 2 uses
  %.21199.i.i = phi ptr [ %i.sy, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %.18205.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 9 uses
  %niter410 = phi i32 [ %niter410.next.7, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit.i.i ]
  %i.sc = load i8, ptr %.0232200.i.i, align 1, !tbaa !18
  store i8 %i.sc, ptr %.21199.i.i, align 1, !tbaa !18
  %i.sd = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 1
  %i.se = getelementptr inbounds nuw i8, ptr %.0232200.i.i, i64 %i.k ; 2 uses
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !18
  store i8 %i.sf, ptr %i.sd, align 1, !tbaa !18
  %i.sg = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 2
  %i.sh = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.k ; 2 uses
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !18
  store i8 %i.si, ptr %i.sg, align 1, !tbaa !18
  %i.sj = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 3
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.k ; 2 uses
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !18
  store i8 %i.sl, ptr %i.sj, align 1, !tbaa !18
  %i.sm = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 4
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sk, i64 %i.k ; 2 uses
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !18
  store i8 %i.so, ptr %i.sm, align 1, !tbaa !18
  %i.sp = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 5
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.k ; 2 uses
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !18
  store i8 %i.sr, ptr %i.sp, align 1, !tbaa !18
  %i.ss = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 6
  %i.st = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.k ; 2 uses
  %i.su = load i8, ptr %i.st, align 1, !tbaa !18
  store i8 %i.su, ptr %i.ss, align 1, !tbaa !18
  %i.sv = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 7
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.k ; 2 uses
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !18
  store i8 %i.sx, ptr %i.sv, align 1, !tbaa !18
  %i.sy = getelementptr inbounds nuw i8, ptr %.21199.i.i, i64 8 ; 3 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 %i.k ; 2 uses
  %niter410.next.7 = add nuw nsw i32 %niter410, 8 ; 2 uses
  %niter410.ncmp.7 = icmp eq i32 %niter410.next.7, %unroll_iter409
  br i1 %niter410.ncmp.7, label %..loopexit_crit_edge.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit.i.i.new, !llvm.loop !412

..loopexit_crit_edge.i.i.unr-lcssa:               ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i.new
  br i1 %lcmp.mod406.not, label %..loopexit_crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit.i.i
  %.0232200.i.i.epil.init = phi ptr [ %i.sb, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.sz, %..loopexit_crit_edge.i.i.unr-lcssa ]
  %.21199.i.i.epil.init = phi ptr [ %.18205.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.sy, %..loopexit_crit_edge.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod408)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.0232200.i.i.epil = phi ptr [ %.0232200.i.i.epil.init, %.epil.preheader ], [ %i.tc, %bb.h ] ; 2 uses
  %.21199.i.i.epil = phi ptr [ %.21199.i.i.epil.init, %.epil.preheader ], [ %i.tb, %bb.h ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.ta = load i8, ptr %.0232200.i.i.epil, align 1, !tbaa !18
  store i8 %i.ta, ptr %.21199.i.i.epil, align 1, !tbaa !18
  %i.tb = getelementptr inbounds nuw i8, ptr %.21199.i.i.epil, i64 1 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.0232200.i.i.epil, i64 %i.k
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter405
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge.i.i, label %bb.h, !llvm.loop !413

..loopexit_crit_edge.i.i:                         ; preds = %bb.h, %..loopexit_crit_edge.i.i.unr-lcssa
  %.lcssa317 = phi ptr [ %i.sy, %..loopexit_crit_edge.i.i.unr-lcssa ], [ %i.tb, %bb.h ]
  %indvars.iv.next242.i.i = add nuw nsw i64 %indvars.iv241.i.i, 1 ; 2 uses
  %exitcond244.not.i.i = icmp eq i64 %indvars.iv.next242.i.i, %wide.trip.count.i.i
  br i1 %exitcond244.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit.i.i, !llvm.loop !409

bb.i:                                             ; preds = %bb.e
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.te = load i32, ptr %i.td, align 4, !tbaa !25 ; 9 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !26 ; 9 uses
  %i.th = add nsw i32 %6, -1
  %i.ti = mul nsw i32 %8, %i.th
  %.neg.i.i = xor i32 %i.ti, -1
  %i.tj = add i32 %i.te, %.neg.i.i
  %i.tk = sdiv i32 %i.tj, %10                     ; 3 uses
  %i.tl = add nsw i32 %i.tk, 1                    ; 7 uses
  %i.tm = mul nsw i32 %7, %6                      ; 37 uses
  %i.tn = icmp eq i32 %i.tk, 0
  br i1 %i.tn, label %_ZN17FastDivider_epu32C2Ej.exit972.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.to = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.tk, i1 true) ; 3 uses
  %i.tp = sub nuw nsw i32 32, %i.to
  %i.tq = icmp eq i32 %i.to, 0
  %i.tr = shl nuw i32 1, %i.tp
  %i.ts = select i1 %i.tq, i32 0, i32 %i.tr
  %i.tt = sub i32 %i.ts, %i.tl
  %i.tu = zext i32 %i.tt to i64
  %i.tv = shl nuw i64 %i.tu, 32
  %i.tw = zext i32 %i.tl to i64
  %i.tx = udiv i64 %i.tv, %i.tw
  %i.ty = trunc i64 %i.tx to i32
  %i.tz = add i32 %i.ty, 1
  %i.ua = xor i32 %i.to, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit972.i.i

_ZN17FastDivider_epu32C2Ej.exit972.i.i:           ; preds = %bb.j, %bb.i
  %.012.i969.i.i = phi i32 [ %i.ua, %bb.j ], [ 0, %bb.i ]
  %.011.i970.i.i = phi i32 [ 1, %bb.j ], [ 0, %bb.i ]
  %.0.i971.i.i = phi i32 [ %i.tz, %bb.j ], [ 1, %bb.i ]
  %i.ub = insertelement <8 x i32> poison, i32 %.0.i971.i.i, i64 0
  %i.uc = shufflevector <8 x i32> %i.ub, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ud = bitcast <8 x i32> %i.uc to <4 x i64>
  %i.ue = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i970.i.i, i64 0 ; 2 uses
  %i.uf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i969.i.i, i64 0 ; 2 uses
  %i.ug = icmp sgt i32 %3, 7
  br i1 %i.ug, label %.lr.ph112.i.i, label %.preheader75.i.i

.lr.ph112.i.i:                                    ; preds = %_ZN17FastDivider_epu32C2Ej.exit972.i.i
  %i.uh = bitcast <8 x i32> %i.uc to <4 x i64>
  %i.ui = and <4 x i64> %i.uh, splat (i64 4294967295) ; 2 uses
  %i.uj = shufflevector <4 x i32> %i.ue, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.uk = insertelement <8 x i32> poison, i32 %i.tl, i64 0
  %i.ul = shufflevector <8 x i32> %i.uk, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.um = insertelement <8 x i32> poison, i32 %10, i64 0
  %i.un = shufflevector <8 x i32> %i.um, <8 x i32> poison, <8 x i32> zeroinitializer
  %.scalar.i.i = mul i32 %i.te, %11
  %i.uo = insertelement <8 x i32> poison, i32 %.scalar.i.i, i64 0
  %i.up = shufflevector <8 x i32> %i.uo, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.uq = icmp eq i32 %i.tg, 1                    ; 2 uses
  %i.ur = icmp sgt i32 %5, 1                      ; 2 uses
  %i.us = mul i32 %i.te, %9                       ; 7 uses
  %i.ut = trunc i64 %i.k to i32                   ; 3 uses
  %i.uu = icmp ne i32 %i.tg, 8
  %i.uv = sdiv i32 %5, 8                          ; 2 uses
  %i.uw = icmp slt i32 %5, 8
  %i.ux = sdiv i32 %4, 8                          ; 2 uses
  %brmerge197.i.i = or i1 %i.uw, %i.uu            ; 2 uses
  %i.uy = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.uz = insertelement <2 x i32> %i.uy, i32 %i.tm, i64 1
  %i.va = insertelement <2 x i32> poison, i32 %i.us, i64 0
  %i.vb = insertelement <2 x i32> %i.va, i32 %i.ut, i64 1
  %i.vc = insertelement <2 x i32> poison, i32 %i.tm, i64 0
  %i.vd = shufflevector <2 x i32> %i.vc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ve = insertelement <2 x i32> poison, i32 %6, i64 0 ; 2 uses
  %i.vf = shufflevector <2 x i32> %i.ve, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.vg = insertelement <2 x i32> %i.ve, i32 %i.tm, i64 1 ; 2 uses
  %12 = insertelement <2 x i32> poison, i32 %i.us, i64 0
  %i.vh = insertelement <2 x i32> %12, i32 %i.ut, i64 1 ; 2 uses
  %i.vi = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.vj = insertelement <2 x i32> %i.vi, i32 %i.tm, i64 1
  %i.vk = insertelement <2 x i32> poison, i32 %i.us, i64 0
  %i.vl = insertelement <2 x i32> %i.vk, i32 %i.ut, i64 1
  %i.vm = insertelement <2 x i32> poison, i32 %i.tm, i64 0
  %13 = shufflevector <2 x i32> %i.vm, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %14 = insertelement <2 x i32> poison, i32 %6, i64 0
  %15 = shufflevector <2 x i32> %14, <2 x i32> poison, <2 x i32> zeroinitializer
  %16 = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %17 = shufflevector <2 x i64> %16, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.k

.preheader75.i.i:                                 ; preds = %.loopexit77.i.i, %_ZN17FastDivider_epu32C2Ej.exit972.i.i
  %.0938.lcssa.i.i = phi i32 [ 0, %_ZN17FastDivider_epu32C2Ej.exit972.i.i ], [ %i.aeg, %.loopexit77.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.val.i, %_ZN17FastDivider_epu32C2Ej.exit972.i.i ], [ %.10.i.i, %.loopexit77.i.i ] ; 2 uses
  %i.vn = or disjoint i32 %.0938.lcssa.i.i, 3
  %i.vo = icmp slt i32 %i.vn, %3
  br i1 %i.vo, label %.lr.ph143.i62.i, label %.preheader64.i.i

.lr.ph143.i62.i:                                  ; preds = %.preheader75.i.i
  %i.vp = shufflevector <4 x i64> %i.ud, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.vq = and <2 x i64> %i.vp, splat (i64 4294967295) ; 2 uses
  %i.vr = shufflevector <4 x i32> %i.ue, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vs = insertelement <4 x i32> poison, i32 %i.tl, i64 0
  %i.vt = shufflevector <4 x i32> %i.vs, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vu = insertelement <4 x i32> poison, i32 %10, i64 0
  %i.vv = shufflevector <4 x i32> %i.vu, <4 x i32> poison, <4 x i32> zeroinitializer
  %.scalar259.i.i = mul i32 %i.te, %11
  %i.vw = insertelement <4 x i32> poison, i32 %.scalar259.i.i, i64 0
  %i.vx = shufflevector <4 x i32> %i.vw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.vy = icmp eq i32 %i.tg, 1                    ; 2 uses
  %i.vz = icmp sgt i32 %5, 1                      ; 2 uses
  %i.wa = mul i32 %i.te, %9                       ; 7 uses
  %i.wb = trunc i64 %i.k to i32                   ; 3 uses
  %i.wc = icmp ne i32 %i.tg, 8
  %i.wd = sdiv i32 %5, 8                          ; 2 uses
  %i.we = icmp slt i32 %5, 8
  %i.wf = sdiv i32 %4, 8                          ; 2 uses
  %brmerge203.i.i = or i1 %i.we, %i.wc            ; 2 uses
  %i.wg = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.wh = insertelement <2 x i32> %i.wg, i32 %i.tm, i64 1
  %i.wi = insertelement <2 x i32> poison, i32 %i.wa, i64 0
  %i.wj = insertelement <2 x i32> %i.wi, i32 %i.wb, i64 1
  %i.wk = insertelement <2 x i32> poison, i32 %i.tm, i64 0
  %i.wl = shufflevector <2 x i32> %i.wk, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.wm = insertelement <2 x i32> poison, i32 %6, i64 0 ; 2 uses
  %i.wn = shufflevector <2 x i32> %i.wm, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.wo = insertelement <2 x i32> %i.wm, i32 %i.tm, i64 1 ; 2 uses
  %18 = insertelement <2 x i32> poison, i32 %i.wa, i64 0
  %i.wp = insertelement <2 x i32> %18, i32 %i.wb, i64 1 ; 2 uses
  %i.wq = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.wr = insertelement <2 x i32> %i.wq, i32 %i.tm, i64 1
  %i.ws = insertelement <2 x i32> poison, i32 %i.wa, i64 0
  %i.wt = insertelement <2 x i32> %i.ws, i32 %i.wb, i64 1
  %i.wu = insertelement <2 x i32> poison, i32 %i.tm, i64 0
  %19 = shufflevector <2 x i32> %i.wu, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %20 = insertelement <2 x i32> poison, i32 %6, i64 0
  %21 = shufflevector <2 x i32> %20, <2 x i32> poison, <2 x i32> zeroinitializer
  %22 = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %23 = shufflevector <2 x i64> %22, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.q

bb.k:                                             ; preds = %.loopexit77.i.i, %.lr.ph112.i.i
  %.0111.i.i = phi ptr [ %.val.i, %.lr.ph112.i.i ], [ %.10.i.i, %.loopexit77.i.i ] ; 8 uses
  %.0938110.i.i = phi i32 [ 0, %.lr.ph112.i.i ], [ %i.aeg, %.loopexit77.i.i ] ; 2 uses
  %i.wv = add nsw i32 %.0938110.i.i, %2
  %i.ww = insertelement <8 x i32> poison, i32 %i.wv, i64 0
  %i.wx = shufflevector <8 x i32> %i.ww, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.wy = add <8 x i32> %i.wx, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.wz = bitcast <8 x i32> %i.wy to <4 x i64>
  %i.xa = bitcast <8 x i32> %i.wy to <4 x i64>
  %i.xb = and <4 x i64> %i.xa, splat (i64 4294967295)
  %i.xc = mul nuw <4 x i64> %i.xb, %i.ui
  %i.xd = lshr <4 x i64> %i.xc, splat (i64 32)
  %i.xe = lshr <4 x i64> %i.wz, splat (i64 32)
  %i.xf = mul nuw <4 x i64> %i.xe, %i.ui
  %i.xg = bitcast <4 x i64> %i.xd to <16 x i16>
  %i.xh = bitcast <4 x i64> %i.xf to <16 x i16>
  %i.xi = shufflevector <16 x i16> %i.xg, <16 x i16> %i.xh, <16 x i32> <i32 0, i32 1, i32 18, i32 19, i32 4, i32 5, i32 22, i32 23, i32 8, i32 9, i32 26, i32 27, i32 12, i32 13, i32 30, i32 31>
  %i.xj = bitcast <16 x i16> %i.xi to <8 x i32>   ; 2 uses
  %i.xk = sub <8 x i32> %i.wy, %i.xj
  %i.xl = lshr <8 x i32> %i.xk, %i.uj
  %i.xm = add <8 x i32> %i.xl, %i.xj
  %i.xn = tail call <8 x i32> @llvm.x86.avx2.psrl.d(<8 x i32> %i.xm, <4 x i32> %i.uf) ; 2 uses
  %i.xo = mul <8 x i32> %i.xn, %i.ul
  %i.xp = sub <8 x i32> %i.wy, %i.xo
  %i.xq = mul <8 x i32> %i.xp, %i.un              ; 2 uses
  %i.xr = mul <8 x i32> %i.xn, %i.up              ; 4 uses
  %i.xs = add <8 x i32> %i.xq, %i.xr              ; 4 uses
  %shift315 = shufflevector <8 x i32> %i.xr, <8 x i32> poison, <8 x i32> <i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xt = icmp eq <8 x i32> %i.xr, %shift315
  %i.xu = extractelement <8 x i1> %i.xt, i64 0
  %or.cond.i.i = and i1 %i.g, %i.xu
  br i1 %or.cond.i.i, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %foldExtExtBinop = add nsw <8 x i32> %i.xq, %i.xr
  %i.xv = extractelement <8 x i32> %foldExtExtBinop, i64 0 ; 3 uses
  br i1 %i.uq, label %.preheader80.i.i, label %.loopexit79.i.i

.preheader80.i.i:                                 ; preds = %bb.l
  br i1 %i.ur, label %.lr.ph99.i.i, label %.preheader78.i.i

.lr.ph99.i.i:                                     ; preds = %.preheader80.i.i
  %i.xw = sext i32 %i.xv to i64                   ; 2 uses
  br label %bb.m

.preheader78.i.i:                                 ; preds = %bb.m, %.preheader80.i.i
  %.0942.lcssa.i.i = phi i32 [ 0, %.preheader80.i.i ], [ %i.yy, %bb.m ] ; 2 uses
  %.1.lcssa.i.i = phi ptr [ %.0111.i.i, %.preheader80.i.i ], [ %i.yx, %bb.m ] ; 2 uses
  %i.xx = icmp slt i32 %.0942.lcssa.i.i, %5
  br i1 %i.xx, label %.lr.ph104.i.i, label %.loopexit77.i.i

.lr.ph104.i.i:                                    ; preds = %.preheader78.i.i
  %i.xy = sext i32 %i.xv to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph99.i.i
  %.198.i.i = phi ptr [ %.0111.i.i, %.lr.ph99.i.i ], [ %i.yx, %bb.m ] ; 2 uses
  %.094297.i.i = phi i32 [ 0, %.lr.ph99.i.i ], [ %i.yy, %bb.m ] ; 2 uses
  %i.xz = add nsw i32 %.094297.i.i, %4            ; 2 uses
  %i.ya = add nsw i32 %i.xz, 1
  %24 = insertelement <2 x i32> poison, i32 %i.xz, i64 0
  %25 = insertelement <2 x i32> %24, i32 %i.ya, i64 1
  %.frozen = freeze <2 x i32> %25                 ; 2 uses
  %26 = sdiv <2 x i32> %.frozen, %13              ; 2 uses
  %27 = mul <2 x i32> %26, %13
  %.decomposed = sub <2 x i32> %.frozen, %27      ; 3 uses
  %28 = extractelement <2 x i32> %.decomposed, i64 0
  %29 = sdiv i32 %28, %6
  %30 = extractelement <2 x i32> %.decomposed, i64 1
  %31 = sdiv i32 %30, %6
  %32 = srem <2 x i32> %.decomposed, %15          ; 2 uses
  %33 = mul i32 %29, %i.us
  %34 = extractelement <2 x i32> %32, i64 0
  %35 = mul nsw i32 %34, %8
  %36 = add nsw i32 %35, %33
  %37 = sext i32 %36 to i64
  %i.yb = sext <2 x i32> %26 to <2 x i64>
  %i.yc = mul <2 x i64> %17, %i.yb                ; 2 uses
  %i.yd = mul i32 %31, %i.us
  %38 = extractelement <2 x i32> %32, i64 1
  %i.ye = mul nsw i32 %38, %8
  %i.yf = add nsw i32 %i.ye, %i.yd
  %i.yg = sext i32 %i.yf to i64
  %i.yh = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.yi = extractelement <2 x i64> %i.yc, i64 0
  %i.yj = getelementptr i8, ptr %i.yh, i64 %i.yi
  %i.yk = getelementptr i8, ptr %i.yj, i64 %i.xw
  %i.yl = getelementptr i8, ptr %i.yk, i64 %37
  %i.ym = load i64, ptr %i.yl, align 1, !tbaa !18
  %i.yn = insertelement <2 x i64> poison, i64 %i.ym, i64 0
  %i.yo = extractelement <2 x i64> %i.yc, i64 1
  %i.yp = getelementptr i8, ptr %i.yh, i64 %i.yo
  %i.yq = getelementptr i8, ptr %i.yp, i64 %i.xw
  %i.yr = getelementptr i8, ptr %i.yq, i64 %i.yg
  %i.ys = load i64, ptr %i.yr, align 1, !tbaa !18
  %i.yt = insertelement <2 x i64> poison, i64 %i.ys, i64 0
  %i.yu = bitcast <2 x i64> %i.yn to <16 x i8>
  %i.yv = bitcast <2 x i64> %i.yt to <16 x i8>
  %i.yw = shufflevector <16 x i8> %i.yu, <16 x i8> %i.yv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.yw, ptr %.198.i.i, align 1, !tbaa !18
  %i.yx = getelementptr inbounds nuw i8, ptr %.198.i.i, i64 16 ; 2 uses
  %i.yy = add nuw nsw i32 %.094297.i.i, 2         ; 3 uses
  %i.yz = or disjoint i32 %i.yy, 1
  %i.za = icmp slt i32 %i.yz, %5
  br i1 %i.za, label %bb.m, label %.preheader78.i.i, !llvm.loop !414

bb.n:                                             ; preds = %bb.n, %.lr.ph104.i.i
  %.2103.i.i = phi ptr [ %.1.lcssa.i.i, %.lr.ph104.i.i ], [ %i.zr, %bb.n ] ; 2 uses
  %.1943102.i.i = phi i32 [ %.0942.lcssa.i.i, %.lr.ph104.i.i ], [ %i.zs, %bb.n ] ; 2 uses
  %i.zb = add nsw i32 %.1943102.i.i, %4           ; 2 uses
  %i.zc = sdiv i32 %i.zb, %i.tm
  %i.zd = srem i32 %i.zb, %i.tm                   ; 2 uses
  %i.ze = sdiv i32 %i.zd, %6
  %i.zf = srem i32 %i.zd, %6
  %i.zg = sext i32 %i.zc to i64
  %i.zh = mul i64 %i.k, %i.zg
  %i.zi = mul i32 %i.ze, %i.us
  %i.zj = mul nsw i32 %i.zf, %8
  %i.zk = add nsw i32 %i.zj, %i.zi
  %i.zl = sext i32 %i.zk to i64
  %i.zm = load ptr, ptr %0, align 8, !tbaa !15
  %i.zn = getelementptr i8, ptr %i.zm, i64 %i.zh
  %i.zo = getelementptr i8, ptr %i.zn, i64 %i.xy
  %i.zp = getelementptr i8, ptr %i.zo, i64 %i.zl
  %i.zq = load i64, ptr %i.zp, align 1, !tbaa !18
  store i64 %i.zq, ptr %.2103.i.i, align 1, !tbaa !18
  %i.zr = getelementptr inbounds nuw i8, ptr %.2103.i.i, i64 8 ; 2 uses
  %i.zs = add nuw nsw i32 %.1943102.i.i, 1        ; 2 uses
  %exitcond246.not.i.i = icmp eq i32 %i.zs, %5
  br i1 %exitcond246.not.i.i, label %.loopexit77.i.i, label %bb.n, !llvm.loop !415

.loopexit79.i.i:                                  ; preds = %bb.l
  br i1 %brmerge197.i.i, label %.loopexit77.i.i, label %.lr.ph108.i.i

.lr.ph108.i.i:                                    ; preds = %.loopexit79.i.i
  %i.zt = sext i32 %i.xv to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph108.i.i
  %.4107.i.i = phi ptr [ %.0111.i.i, %.lr.ph108.i.i ], [ %i.aau, %bb.o ] ; 3 uses
  %.0944106.i.i = phi i32 [ 0, %.lr.ph108.i.i ], [ %i.aav, %bb.o ] ; 2 uses
  %i.zu = add nsw i32 %.0944106.i.i, %i.ux        ; 2 uses
  %i.zv = sdiv i32 %i.zu, %i.tm
  %i.zw = srem i32 %i.zu, %i.tm                   ; 2 uses
  %i.zx = sdiv i32 %i.zw, %6
  %i.zy = srem i32 %i.zw, %6
  %i.zz = sext i32 %i.zv to i64
  %i.aaa = mul i64 %i.k, %i.zz
  %i.aab = add i64 %i.aaa, %i.zt
  %i.aac = mul i32 %i.zx, %i.us
  %i.aad = mul nsw i32 %i.zy, %8
  %i.aae = add nsw i32 %i.aad, %i.aac
  %i.aaf = sext i32 %i.aae to i64
  %i.aag = add i64 %i.aab, %i.aaf
  %i.aah = shl i64 %i.aag, 3
  %i.aai = load ptr, ptr %0, align 8, !tbaa !15
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 %i.aah ; 2 uses
  %i.aak = load <16 x i16>, ptr %i.aaj, align 1, !tbaa !18 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaj, i64 32
  %i.aam = load <16 x i16>, ptr %i.aal, align 1, !tbaa !18 ; 2 uses
  %i.aan = shufflevector <16 x i16> %i.aak, <16 x i16> %i.aam, <16 x i32> <i32 0, i32 4, i32 16, i32 20, i32 1, i32 5, i32 17, i32 21, i32 8, i32 12, i32 24, i32 28, i32 9, i32 13, i32 25, i32 29>
  %i.aao = shufflevector <16 x i16> %i.aak, <16 x i16> %i.aam, <16 x i32> <i32 2, i32 6, i32 18, i32 22, i32 3, i32 7, i32 19, i32 23, i32 10, i32 14, i32 26, i32 30, i32 11, i32 15, i32 27, i32 31>
  %i.aap = bitcast <16 x i16> %i.aan to <8 x i32>
  %i.aaq = shufflevector <8 x i32> %i.aap, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.aar = bitcast <16 x i16> %i.aao to <8 x i32>
  %i.aas = shufflevector <8 x i32> %i.aar, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %i.aaq, ptr %.4107.i.i, align 1, !tbaa !18
  %i.aat = getelementptr inbounds nuw i8, ptr %.4107.i.i, i64 32
  store <8 x i32> %i.aas, ptr %i.aat, align 1, !tbaa !18
  %i.aau = getelementptr inbounds nuw i8, ptr %.4107.i.i, i64 64 ; 2 uses
  %i.aav = add nuw nsw i32 %.0944106.i.i, 1       ; 2 uses
  %exitcond247.not.i.i = icmp eq i32 %i.aav, %i.uv
  br i1 %exitcond247.not.i.i, label %.loopexit77.i.i, label %bb.o, !llvm.loop !416

bb.p:                                             ; preds = %bb.k
  br i1 %i.uq, label %.preheader85.i.i, label %.loopexit84.i.i

.preheader85.i.i:                                 ; preds = %bb.p
  br i1 %i.ur, label %.lr.ph.i68.i, label %.preheader83.i.i

.preheader83.i.i:                                 ; preds = %.lr.ph.i68.i, %.preheader85.i.i
  %.0945.lcssa.i.i = phi i32 [ 0, %.preheader85.i.i ], [ %i.acc, %.lr.ph.i68.i ] ; 2 uses
  %.6.lcssa.i66.i = phi ptr [ %.0111.i.i, %.preheader85.i.i ], [ %i.acb, %.lr.ph.i68.i ] ; 2 uses
  %i.aaw = icmp slt i32 %.0945.lcssa.i.i, %5
  br i1 %i.aaw, label %.lr.ph91.i.i, label %.loopexit77.i.i

.lr.ph.i68.i:                                     ; preds = %.preheader85.i.i, %.lr.ph.i68.i
  %.687.i.i = phi ptr [ %i.acb, %.lr.ph.i68.i ], [ %.0111.i.i, %.preheader85.i.i ] ; 2 uses
  %.094586.i.i = phi i32 [ %i.acc, %.lr.ph.i68.i ], [ 0, %.preheader85.i.i ] ; 2 uses
  %i.aax = add nsw i32 %.094586.i.i, %4           ; 3 uses
  %i.aay = add nsw i32 %i.aax, 1                  ; 2 uses
  %i.aaz = insertelement <2 x i32> poison, i32 %i.aax, i64 0
  %i.aba = insertelement <2 x i32> %i.aaz, i32 %i.aay, i64 1
  %i.abb = srem <2 x i32> %i.aba, %i.vd           ; 3 uses
  %i.abc = srem <2 x i32> %i.abb, %i.vf           ; 2 uses
  %39 = extractelement <2 x i32> %i.abc, i64 0
  %40 = mul nsw i32 %39, %8
  %41 = extractelement <2 x i32> %i.abc, i64 1
  %42 = mul nsw i32 %41, %8
  %i.abd = insertelement <2 x i32> %i.abb, i32 %i.aax, i64 1
  %i.abe = sdiv <2 x i32> %i.abd, %i.vg
  %i.abf = mul <2 x i32> %i.abe, %i.vh
  %43 = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.abf)
  %44 = add i32 %43, %40
  %45 = insertelement <8 x i32> poison, i32 %44, i64 0
  %i.abg = shufflevector <8 x i32> %45, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.abh = add <8 x i32> %i.abg, %i.xs
  %i.abi = shufflevector <2 x i32> %i.abb, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.abj = insertelement <2 x i32> %i.abi, i32 %i.aay, i64 1
  %i.abk = sdiv <2 x i32> %i.abj, %i.vg
  %i.abl = mul <2 x i32> %i.abk, %i.vh
  %46 = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.abl)
  %47 = add i32 %46, %42
  %48 = insertelement <8 x i32> poison, i32 %47, i64 0
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.abm = add <8 x i32> %49, %i.xs
  %i.abn = load ptr, ptr %0, align 8, !tbaa !15   ; 2 uses
  %i.abo = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.abn, <8 x i32> %i.abh, <8 x i32> splat (i32 -1), i8 1)
  %i.abp = bitcast <8 x i32> %i.abo to <32 x i8>
  %i.abq = shufflevector <32 x i8> %i.abp, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abr = bitcast <32 x i8> %i.abq to <8 x i32>
  %i.abs = shufflevector <8 x i32> %i.abr, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.abt = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.abn, <8 x i32> %i.abm, <8 x i32> splat (i32 -1), i8 1)
  %i.abu = bitcast <8 x i32> %i.abt to <32 x i8>
  %i.abv = shufflevector <32 x i8> %i.abu, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abw = bitcast <32 x i8> %i.abv to <8 x i32>
  %i.abx = shufflevector <8 x i32> %i.abw, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aby = bitcast <4 x i32> %i.abs to <16 x i8>
  %i.abz = bitcast <4 x i32> %i.abx to <16 x i8>
  %i.aca = shufflevector <16 x i8> %i.aby, <16 x i8> %i.abz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.aca, ptr %.687.i.i, align 1, !tbaa !18
  %i.acb = getelementptr inbounds nuw i8, ptr %.687.i.i, i64 16 ; 2 uses
  %i.acc = add nuw nsw i32 %.094586.i.i, 2        ; 3 uses
  %i.acd = or disjoint i32 %i.acc, 1
  %i.ace = icmp slt i32 %i.acd, %5
  br i1 %i.ace, label %.lr.ph.i68.i, label %.preheader83.i.i, !llvm.loop !417

.lr.ph91.i.i:                                     ; preds = %.preheader83.i.i, %.lr.ph91.i.i
  %.790.i.i = phi ptr [ %i.ada, %.lr.ph91.i.i ], [ %.6.lcssa.i66.i, %.preheader83.i.i ] ; 2 uses
  %.194689.i.i = phi i32 [ %i.adb, %.lr.ph91.i.i ], [ %.0945.lcssa.i.i, %.preheader83.i.i ] ; 2 uses
  %i.acf = add nsw i32 %.194689.i.i, %4           ; 2 uses
  %i.acg = srem i32 %i.acf, %i.tm                 ; 2 uses
  %i.ach = srem i32 %i.acg, %6
  %i.aci = mul nsw i32 %i.ach, %8
  %i.acj = insertelement <2 x i32> poison, i32 %i.acg, i64 0
  %i.ack = insertelement <2 x i32> %i.acj, i32 %i.acf, i64 1
  %i.acl = sdiv <2 x i32> %i.ack, %i.vj
  %i.acm = mul <2 x i32> %i.acl, %i.vl
  %i.acn = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.acm)
  %i.aco = add i32 %i.acn, %i.aci
  %i.acp = insertelement <8 x i32> poison, i32 %i.aco, i64 0
  %i.acq = shufflevector <8 x i32> %i.acp, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.acr = add <8 x i32> %i.acq, %i.xs
  %i.acs = load ptr, ptr %0, align 8, !tbaa !15
  %i.act = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.acs, <8 x i32> %i.acr, <8 x i32> splat (i32 -1), i8 1)
  %i.acu = bitcast <8 x i32> %i.act to <32 x i8>
  %i.acv = shufflevector <32 x i8> %i.acu, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.acw = bitcast <32 x i8> %i.acv to <8 x i32>
  %i.acx = shufflevector <8 x i32> %i.acw, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.acy = bitcast <4 x i32> %i.acx to <2 x i64>
  %i.acz = extractelement <2 x i64> %i.acy, i64 0
  store i64 %i.acz, ptr %.790.i.i, align 1, !tbaa !18
  %i.ada = getelementptr inbounds nuw i8, ptr %.790.i.i, i64 8 ; 2 uses
  %i.adb = add nuw nsw i32 %.194689.i.i, 1        ; 2 uses
  %exitcond.not.i67.i = icmp eq i32 %i.adb, %5
  br i1 %exitcond.not.i67.i, label %.loopexit77.i.i, label %.lr.ph91.i.i, !llvm.loop !418

.loopexit84.i.i:                                  ; preds = %bb.p
  br i1 %brmerge197.i.i, label %.loopexit77.i.i, label %.lr.ph95.i.i

.lr.ph95.i.i:                                     ; preds = %.loopexit84.i.i, %.lr.ph95.i.i
  %.994.i.i = phi ptr [ %i.aee, %.lr.ph95.i.i ], [ %.0111.i.i, %.loopexit84.i.i ] ; 3 uses
  %.094793.i.i = phi i32 [ %i.aef, %.lr.ph95.i.i ], [ 0, %.loopexit84.i.i ] ; 2 uses
  %i.adc = add nsw i32 %.094793.i.i, %i.ux        ; 2 uses
  %i.add = srem i32 %i.adc, %i.tm                 ; 2 uses
  %i.ade = srem i32 %i.add, %6
  %i.adf = mul nsw i32 %i.ade, %8
  %i.adg = insertelement <2 x i32> poison, i32 %i.add, i64 0
  %i.adh = insertelement <2 x i32> %i.adg, i32 %i.adc, i64 1
  %i.adi = sdiv <2 x i32> %i.adh, %i.uz
  %i.adj = mul <2 x i32> %i.adi, %i.vb
  %i.adk = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.adj)
  %i.adl = add i32 %i.adk, %i.adf
  %i.adm = insertelement <8 x i32> poison, i32 %i.adl, i64 0
  %i.adn = shufflevector <8 x i32> %i.adm, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ado = add <8 x i32> %i.adn, %i.xs
  %i.adp = shl <8 x i32> %i.ado, splat (i32 3)    ; 2 uses
  %i.adq = load ptr, ptr %0, align 8, !tbaa !15   ; 2 uses
  %i.adr = shufflevector <8 x i32> %i.adp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ads = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.adq, <4 x i32> %i.adr, <4 x i64> splat (i64 -1), i8 1)
  %i.adt = shufflevector <8 x i32> %i.adp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.adu = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.adq, <4 x i32> %i.adt, <4 x i64> splat (i64 -1), i8 1)
  %i.adv = bitcast <4 x i64> %i.ads to <16 x i16> ; 2 uses
  %i.adw = bitcast <4 x i64> %i.adu to <16 x i16> ; 2 uses
  %i.adx = shufflevector <16 x i16> %i.adv, <16 x i16> %i.adw, <16 x i32> <i32 0, i32 4, i32 16, i32 20, i32 1, i32 5, i32 17, i32 21, i32 8, i32 12, i32 24, i32 28, i32 9, i32 13, i32 25, i32 29>
  %i.ady = shufflevector <16 x i16> %i.adv, <16 x i16> %i.adw, <16 x i32> <i32 2, i32 6, i32 18, i32 22, i32 3, i32 7, i32 19, i32 23, i32 10, i32 14, i32 26, i32 30, i32 11, i32 15, i32 27, i32 31>
  %i.adz = bitcast <16 x i16> %i.adx to <8 x i32>
  %i.aea = shufflevector <8 x i32> %i.adz, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.aeb = bitcast <16 x i16> %i.ady to <8 x i32>
  %i.aec = shufflevector <8 x i32> %i.aeb, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %i.aea, ptr %.994.i.i, align 1, !tbaa !18
  %i.aed = getelementptr inbounds nuw i8, ptr %.994.i.i, i64 32
  store <8 x i32> %i.aec, ptr %i.aed, align 1, !tbaa !18
  %i.aee = getelementptr inbounds nuw i8, ptr %.994.i.i, i64 64 ; 2 uses
  %i.aef = add nuw nsw i32 %.094793.i.i, 1        ; 2 uses
  %exitcond245.not.i65.i = icmp eq i32 %i.aef, %i.uv
  br i1 %exitcond245.not.i65.i, label %.loopexit77.i.i, label %.lr.ph95.i.i, !llvm.loop !419

.loopexit77.i.i:                                  ; preds = %.lr.ph95.i.i, %.lr.ph91.i.i, %bb.o, %bb.n, %.loopexit84.i.i, %.preheader83.i.i, %.loopexit79.i.i, %.preheader78.i.i
  %.10.i.i = phi ptr [ %.0111.i.i, %.loopexit84.i.i ], [ %.1.lcssa.i.i, %.preheader78.i.i ], [ %.0111.i.i, %.loopexit79.i.i ], [ %i.aau, %bb.o ], [ %i.zr, %bb.n ], [ %.6.lcssa.i66.i, %.preheader83.i.i ], [ %i.ada, %.lr.ph91.i.i ], [ %i.aee, %.lr.ph95.i.i ] ; 2 uses
  %i.aeg = add nuw nsw i32 %.0938110.i.i, 8       ; 3 uses
  %i.aeh = or disjoint i32 %i.aeg, 7
  %i.aei = icmp slt i32 %i.aeh, %3
  br i1 %i.aei, label %bb.k, label %.preheader75.i.i, !llvm.loop !420

.preheader64.i.i:                                 ; preds = %.loopexit66.i.i, %.preheader75.i.i
  %.1939.lcssa.i.i = phi i32 [ %.0938.lcssa.i.i, %.preheader75.i.i ], [ %i.amw, %.loopexit66.i.i ] ; 3 uses
  %.11.lcssa.i.i = phi ptr [ %.0.lcssa.i.i, %.preheader75.i.i ], [ %.21.i.i, %.loopexit66.i.i ] ; 2 uses
  %i.aej = or disjoint i32 %.1939.lcssa.i.i, 1
  %i.aek = icmp slt i32 %i.aej, %3
  br i1 %i.aek, label %.lr.ph175.i59.i, label %.preheader53.i.i

.lr.ph175.i59.i:                                  ; preds = %.preheader64.i.i
  %i.ael = mul i32 %i.te, %11
  %i.aem = icmp eq i32 %i.tg, 1                   ; 2 uses
  %i.aen = icmp sgt i32 %5, 1                     ; 2 uses
  %i.aeo = mul i32 %i.te, %9                      ; 7 uses
  %i.aep = trunc i64 %i.k to i32
  %i.aeq = icmp eq i32 %i.tg, 8
  %i.aer = sdiv i32 %5, 8                         ; 2 uses
  %i.aes = sdiv i32 %4, 8                         ; 2 uses
  %i.aet = icmp ne i32 %i.tg, 8
  %i.aeu = icmp slt i32 %5, 8
  %i.aev = icmp sgt i32 %5, 7
  %or.cond207.i.i = and i1 %i.aev, %i.aeq
  %brmerge206.i.i = or i1 %i.aeu, %i.aet
  %i.aew = insertelement <2 x i32> poison, i32 %10, i64 0
  %i.aex = shufflevector <2 x i32> %i.aew, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aey = insertelement <2 x i32> poison, i32 %i.tl, i64 0
  %i.aez = shufflevector <2 x i32> %i.aey, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.afa = insertelement <2 x i32> poison, i32 %i.ael, i64 0
  %i.afb = shufflevector <2 x i32> %i.afa, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.afc = insertelement <2 x i32> poison, i32 %i.tm, i64 0
  %i.afd = shufflevector <2 x i32> %i.afc, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.afe = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.aff = shufflevector <2 x i32> %i.afe, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.afg = insertelement <2 x i32> poison, i32 %i.aeo, i64 0
  %i.afh = shufflevector <2 x i32> %i.afg, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.afi = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.afj = shufflevector <2 x i32> %i.afi, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.afk = insertelement <2 x i32> poison, i32 %i.aep, i64 0
  %i.afl = shufflevector <2 x i32> %i.afk, <2 x i32> poison, <2 x i32> zeroinitializer
  %50 = insertelement <2 x i32> poison, i32 %i.tm, i64 0
  %51 = shufflevector <2 x i32> %50, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.afm = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.afn = shufflevector <2 x i32> %i.afm, <2 x i32> poison, <2 x i32> zeroinitializer
  %52 = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %53 = shufflevector <2 x i64> %52, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.w

bb.q:                                             ; preds = %.loopexit66.i.i, %.lr.ph143.i62.i
  %.11142.i.i = phi ptr [ %.0.lcssa.i.i, %.lr.ph143.i62.i ], [ %.21.i.i, %.loopexit66.i.i ] ; 8 uses
  %.1939141.i.i = phi i32 [ %.0938.lcssa.i.i, %.lr.ph143.i62.i ], [ %i.amw, %.loopexit66.i.i ] ; 2 uses
  %i.afo = add nsw i32 %.1939141.i.i, %2
  %i.afp = insertelement <4 x i32> poison, i32 %i.afo, i64 0
  %i.afq = shufflevector <4 x i32> %i.afp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.afr = add <4 x i32> %i.afq, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.afs = bitcast <4 x i32> %i.afr to <2 x i64>
  %i.aft = bitcast <4 x i32> %i.afr to <2 x i64>
  %i.afu = and <2 x i64> %i.aft, splat (i64 4294967295)
  %i.afv = mul nuw <2 x i64> %i.afu, %i.vq
  %i.afw = lshr <2 x i64> %i.afv, splat (i64 32)
  %i.afx = lshr <2 x i64> %i.afs, splat (i64 32)
  %i.afy = mul nuw <2 x i64> %i.afx, %i.vq
  %i.afz = bitcast <2 x i64> %i.afw to <8 x i16>
  %i.aga = bitcast <2 x i64> %i.afy to <8 x i16>
  %i.agb = shufflevector <8 x i16> %i.afz, <8 x i16> %i.aga, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.agc = bitcast <8 x i16> %i.agb to <4 x i32>  ; 2 uses
  %i.agd = sub <4 x i32> %i.afr, %i.agc
  %i.age = lshr <4 x i32> %i.agd, %i.vr
  %i.agf = add <4 x i32> %i.age, %i.agc
  %i.agg = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.agf, <4 x i32> %i.uf) ; 2 uses
  %i.agh = mul <4 x i32> %i.agg, %i.vt
  %i.agi = sub <4 x i32> %i.afr, %i.agh
  %i.agj = mul <4 x i32> %i.agi, %i.vv            ; 2 uses
  %i.agk = mul <4 x i32> %i.agg, %i.vx            ; 4 uses
  %i.agl = add <4 x i32> %i.agj, %i.agk           ; 4 uses
  %shift314 = shufflevector <4 x i32> %i.agk, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.agm = icmp eq <4 x i32> %i.agk, %shift314
  %i.agn = extractelement <4 x i1> %i.agm, i64 0
  %or.cond3.i.i = and i1 %i.g, %i.agn
  br i1 %or.cond3.i.i, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %foldExtExtBinop294 = add nsw <4 x i32> %i.agj, %i.agk
  %i.ago = extractelement <4 x i32> %foldExtExtBinop294, i64 0 ; 3 uses
  br i1 %i.vy, label %.preheader69.i.i, label %.loopexit68.i.i

.preheader69.i.i:                                 ; preds = %bb.r
  br i1 %i.vz, label %.lr.ph130.i.i, label %.preheader67.i.i

.lr.ph130.i.i:                                    ; preds = %.preheader69.i.i
  %i.agp = sext i32 %i.ago to i64                 ; 2 uses
  br label %bb.s

.preheader67.i.i:                                 ; preds = %bb.s, %.preheader69.i.i
  %.0948.lcssa.i.i = phi i32 [ 0, %.preheader69.i.i ], [ %i.aht, %bb.s ] ; 2 uses
  %.12.lcssa.i63.i = phi ptr [ %.11142.i.i, %.preheader69.i.i ], [ %i.ahs, %bb.s ] ; 2 uses
  %i.agq = icmp slt i32 %.0948.lcssa.i.i, %5
  br i1 %i.agq, label %.lr.ph135.i.i, label %.loopexit66.i.i

.lr.ph135.i.i:                                    ; preds = %.preheader67.i.i
  %i.agr = sext i32 %i.ago to i64
  br label %bb.t

bb.s:                                             ; preds = %bb.s, %.lr.ph130.i.i
  %.12129.i.i = phi ptr [ %.11142.i.i, %.lr.ph130.i.i ], [ %i.ahs, %bb.s ] ; 2 uses
  %.0948128.i.i = phi i32 [ 0, %.lr.ph130.i.i ], [ %i.aht, %bb.s ] ; 2 uses
  %i.ags = add nsw i32 %.0948128.i.i, %4          ; 2 uses
  %i.agt = add nsw i32 %i.ags, 1
  %54 = insertelement <2 x i32> poison, i32 %i.ags, i64 0
  %55 = insertelement <2 x i32> %54, i32 %i.agt, i64 1
  %.frozen465 = freeze <2 x i32> %55              ; 2 uses
  %56 = sdiv <2 x i32> %.frozen465, %19           ; 2 uses
  %57 = mul <2 x i32> %56, %19
  %.decomposed466 = sub <2 x i32> %.frozen465, %57 ; 3 uses
  %58 = extractelement <2 x i32> %.decomposed466, i64 0
  %59 = sdiv i32 %58, %6
  %60 = extractelement <2 x i32> %.decomposed466, i64 1
  %61 = sdiv i32 %60, %6
  %62 = srem <2 x i32> %.decomposed466, %21       ; 2 uses
  %63 = mul i32 %59, %i.wa
  %64 = extractelement <2 x i32> %62, i64 0
  %65 = mul nsw i32 %64, %8
  %66 = add nsw i32 %65, %63
  %67 = sext i32 %66 to i64
  %i.agu = sext <2 x i32> %56 to <2 x i64>
  %i.agv = mul <2 x i64> %23, %i.agu              ; 2 uses
  %i.agw = mul i32 %61, %i.wa
  %68 = extractelement <2 x i32> %62, i64 1
  %i.agx = mul nsw i32 %68, %8
  %i.agy = add nsw i32 %i.agx, %i.agw
  %i.agz = sext i32 %i.agy to i64
  %i.aha = load ptr, ptr %0, align 8, !tbaa !15   ; 2 uses
  %i.ahb = extractelement <2 x i64> %i.agv, i64 0
  %i.ahc = getelementptr i8, ptr %i.aha, i64 %i.ahb
  %i.ahd = getelementptr i8, ptr %i.ahc, i64 %i.agp
  %i.ahe = getelementptr i8, ptr %i.ahd, i64 %67
  %i.ahf = load i64, ptr %i.ahe, align 1, !tbaa !18
  %i.ahg = insertelement <2 x i64> poison, i64 %i.ahf, i64 0
  %i.ahh = extractelement <2 x i64> %i.agv, i64 1
  %i.ahi = getelementptr i8, ptr %i.aha, i64 %i.ahh
  %i.ahj = getelementptr i8, ptr %i.ahi, i64 %i.agp
  %i.ahk = getelementptr i8, ptr %i.ahj, i64 %i.agz
  %i.ahl = load i64, ptr %i.ahk, align 1, !tbaa !18
  %i.ahm = insertelement <2 x i64> poison, i64 %i.ahl, i64 0
  %i.ahn = bitcast <2 x i64> %i.ahg to <16 x i8>
  %i.aho = bitcast <2 x i64> %i.ahm to <16 x i8>
  %i.ahp = shufflevector <16 x i8> %i.ahn, <16 x i8> %i.aho, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ahq = bitcast <16 x i8> %i.ahp to <2 x i64>
  %i.ahr = extractelement <2 x i64> %i.ahq, i64 0
  store i64 %i.ahr, ptr %.12129.i.i, align 1, !tbaa !18
  %i.ahs = getelementptr inbounds nuw i8, ptr %.12129.i.i, i64 8 ; 2 uses
  %i.aht = add nuw nsw i32 %.0948128.i.i, 2       ; 3 uses
  %i.ahu = or disjoint i32 %i.aht, 1
  %i.ahv = icmp slt i32 %i.ahu, %5
  br i1 %i.ahv, label %bb.s, label %.preheader67.i.i, !llvm.loop !421

bb.t:                                             ; preds = %bb.t, %.lr.ph135.i.i
  %.13134.i.i = phi ptr [ %.12.lcssa.i63.i, %.lr.ph135.i.i ], [ %i.ajb, %bb.t ] ; 5 uses
  %.1949133.i.i = phi i32 [ %.0948.lcssa.i.i, %.lr.ph135.i.i ], [ %i.ajc, %bb.t ] ; 2 uses
  %i.ahw = add nsw i32 %.1949133.i.i, %4          ; 2 uses
  %i.ahx = sdiv i32 %i.ahw, %i.tm
  %i.ahy = srem i32 %i.ahw, %i.tm                 ; 2 uses
  %i.ahz = sdiv i32 %i.ahy, %6
  %i.aia = srem i32 %i.ahy, %6
  %i.aib = sext i32 %i.ahx to i64
  %i.aic = mul i64 %i.k, %i.aib
  %i.aid = add i64 %i.aic, %i.agr
  %i.aie = mul i32 %i.ahz, %i.wa
  %i.aif = mul nsw i32 %i.aia, %8
  %i.aig = add nsw i32 %i.aif, %i.aie
  %i.aih = sext i32 %i.aig to i64
  %i.aii = add i64 %i.aid, %i.aih                 ; 4 uses
  %i.aij = load ptr, ptr %0, align 8, !tbaa !15
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 %i.aii
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !18
  store i8 %i.ail, ptr %.13134.i.i, align 1, !tbaa !18
  %i.aim = load ptr, ptr %0, align 8, !tbaa !15
  %i.ain = getelementptr i8, ptr %i.aim, i64 %i.aii
  %i.aio = getelementptr i8, ptr %i.ain, i64 1
  %i.aip = load i8, ptr %i.aio, align 1, !tbaa !18
  %i.aiq = getelementptr inbounds nuw i8, ptr %.13134.i.i, i64 1
  store i8 %i.aip, ptr %i.aiq, align 1, !tbaa !18
  %i.air = load ptr, ptr %0, align 8, !tbaa !15
  %i.ais = getelementptr i8, ptr %i.air, i64 %i.aii
  %i.ait = getelementptr i8, ptr %i.ais, i64 2
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !18
  %i.aiv = getelementptr inbounds nuw i8, ptr %.13134.i.i, i64 2
  store i8 %i.aiu, ptr %i.aiv, align 1, !tbaa !18
  %i.aiw = load ptr, ptr %0, align 8, !tbaa !15
  %i.aix = getelementptr i8, ptr %i.aiw, i64 %i.aii
  %i.aiy = getelementptr i8, ptr %i.aix, i64 3
  %i.aiz = load i8, ptr %i.aiy, align 1, !tbaa !18
  %i.aja = getelementptr inbounds nuw i8, ptr %.13134.i.i, i64 3
  store i8 %i.aiz, ptr %i.aja, align 1, !tbaa !18
  %i.ajb = getelementptr inbounds nuw i8, ptr %.13134.i.i, i64 4 ; 2 uses
  %i.ajc = add nuw nsw i32 %.1949133.i.i, 1       ; 2 uses
  %exitcond250.not.i64.i = icmp eq i32 %i.ajc, %5
  br i1 %exitcond250.not.i64.i, label %.loopexit66.i.i, label %bb.t, !llvm.loop !422

.loopexit68.i.i:                                  ; preds = %bb.r
  br i1 %brmerge203.i.i, label %.loopexit66.i.i, label %.lr.ph139.i.i

.lr.ph139.i.i:                                    ; preds = %.loopexit68.i.i
  %i.ajd = sext i32 %i.ago to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph139.i.i
  %.15138.i.i = phi ptr [ %.11142.i.i, %.lr.ph139.i.i ], [ %i.aka, %bb.u ] ; 3 uses
  %.0952137.i.i = phi i32 [ 0, %.lr.ph139.i.i ], [ %i.akb, %bb.u ] ; 2 uses
  %i.aje = add nsw i32 %.0952137.i.i, %i.wf       ; 2 uses
  %i.ajf = sdiv i32 %i.aje, %i.tm
  %i.ajg = srem i32 %i.aje, %i.tm                 ; 2 uses
  %i.ajh = sdiv i32 %i.ajg, %6
  %i.aji = srem i32 %i.ajg, %6
  %i.ajj = sext i32 %i.ajf to i64
  %i.ajk = mul i64 %i.k, %i.ajj
  %i.ajl = add i64 %i.ajk, %i.ajd
  %i.ajm = mul i32 %i.ajh, %i.wa
  %i.ajn = mul nsw i32 %i.aji, %8
  %i.ajo = add nsw i32 %i.ajn, %i.ajm
  %i.ajp = sext i32 %i.ajo to i64
  %i.ajq = add i64 %i.ajl, %i.ajp
  %i.ajr = shl i64 %i.ajq, 3
  %i.ajs = load ptr, ptr %0, align 8, !tbaa !15
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 %i.ajr ; 2 uses
  %i.aju = load <8 x i16>, ptr %i.ajt, align 1, !tbaa !18 ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajt, i64 16
  %i.ajw = load <8 x i16>, ptr %i.ajv, align 1, !tbaa !18 ; 2 uses
  %i.ajx = shufflevector <8 x i16> %i.aju, <8 x i16> %i.ajw, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.ajy = shufflevector <8 x i16> %i.aju, <8 x i16> %i.ajw, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.ajx, ptr %.15138.i.i, align 1, !tbaa !18
  %i.ajz = getelementptr inbounds nuw i8, ptr %.15138.i.i, i64 16
  store <8 x i16> %i.ajy, ptr %i.ajz, align 1, !tbaa !18
  %i.aka = getelementptr inbounds nuw i8, ptr %.15138.i.i, i64 32 ; 2 uses
  %i.akb = add nuw nsw i32 %.0952137.i.i, 1       ; 2 uses
  %exitcond251.not.i.i = icmp eq i32 %i.akb, %i.wd
  br i1 %exitcond251.not.i.i, label %.loopexit66.i.i, label %bb.u, !llvm.loop !423

bb.v:                                             ; preds = %bb.q
  br i1 %i.vy, label %.preheader74.i.i, label %.loopexit73.i.i

.preheader74.i.i:                                 ; preds = %bb.v
  br i1 %i.vz, label %.lr.ph117.i.i, label %.preheader72.i.i

.preheader72.i.i:                                 ; preds = %.lr.ph117.i.i, %.preheader74.i.i
  %.0953.lcssa.i.i = phi i32 [ 0, %.preheader74.i.i ], [ %i.alc, %.lr.ph117.i.i ] ; 2 uses
  %.17.lcssa.i.i = phi ptr [ %.11142.i.i, %.preheader74.i.i ], [ %i.alb, %.lr.ph117.i.i ] ; 2 uses
  %i.akc = icmp slt i32 %.0953.lcssa.i.i, %5
  br i1 %i.akc, label %.lr.ph122.i.i, label %.loopexit66.i.i

.lr.ph117.i.i:                                    ; preds = %.preheader74.i.i, %.lr.ph117.i.i
  %.17116.i.i = phi ptr [ %i.alb, %.lr.ph117.i.i ], [ %.11142.i.i, %.preheader74.i.i ] ; 2 uses
  %.0953115.i.i = phi i32 [ %i.alc, %.lr.ph117.i.i ], [ 0, %.preheader74.i.i ] ; 2 uses
  %i.akd = add nsw i32 %.0953115.i.i, %4          ; 3 uses
  %i.ake = add nsw i32 %i.akd, 1                  ; 2 uses
  %i.akf = insertelement <2 x i32> poison, i32 %i.akd, i64 0
  %i.akg = insertelement <2 x i32> %i.akf, i32 %i.ake, i64 1
  %i.akh = srem <2 x i32> %i.akg, %i.wl           ; 3 uses
  %i.aki = srem <2 x i32> %i.akh, %i.wn           ; 2 uses
  %69 = extractelement <2 x i32> %i.aki, i64 0
  %70 = mul nsw i32 %69, %8
  %71 = extractelement <2 x i32> %i.aki, i64 1
  %72 = mul nsw i32 %71, %8
  %i.akj = insertelement <2 x i32> %i.akh, i32 %i.akd, i64 1
  %i.akk = sdiv <2 x i32> %i.akj, %i.wo
  %i.akl = mul <2 x i32> %i.akk, %i.wp
  %73 = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.akl)
  %74 = add i32 %73, %70
  %75 = insertelement <4 x i32> poison, i32 %74, i64 0
  %i.akm = shufflevector <4 x i32> %75, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.akn = add <4 x i32> %i.akm, %i.agl
  %i.ako = shufflevector <2 x i32> %i.akh, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.akp = insertelement <2 x i32> %i.ako, i32 %i.ake, i64 1
  %i.akq = sdiv <2 x i32> %i.akp, %i.wo
  %i.akr = mul <2 x i32> %i.akq, %i.wp
  %76 = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.akr)
  %77 = add i32 %76, %72
  %78 = insertelement <4 x i32> poison, i32 %77, i64 0
  %79 = shufflevector <4 x i32> %78, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aks = add <4 x i32> %79, %i.agl
  %i.akt = load ptr, ptr %0, align 8, !tbaa !15   ; 2 uses
  %i.aku = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.akt, <4 x i32> %i.akn, <4 x i32> splat (i32 -1), i8 1)
  %i.akv = bitcast <4 x i32> %i.aku to <16 x i8>
  %i.akw = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.akt, <4 x i32> %i.aks, <4 x i32> splat (i32 -1), i8 1)
  %i.akx = bitcast <4 x i32> %i.akw to <16 x i8>
  %i.aky = shufflevector <16 x i8> %i.akv, <16 x i8> %i.akx, <16 x i32> <i32 0, i32 16, i32 4, i32 20, i32 8, i32 24, i32 12, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.akz = bitcast <16 x i8> %i.aky to <2 x i64>
  %i.ala = extractelement <2 x i64> %i.akz, i64 0
  store i64 %i.ala, ptr %.17116.i.i, align 1, !tbaa !18
  %i.alb = getelementptr inbounds nuw i8, ptr %.17116.i.i, i64 8 ; 2 uses
  %i.alc = add nuw nsw i32 %.0953115.i.i, 2       ; 3 uses
  %i.ald = or disjoint i32 %i.alc, 1
  %i.ale = icmp slt i32 %i.ald, %5
  br i1 %i.ale, label %.lr.ph117.i.i, label %.preheader72.i.i, !llvm.loop !424

.lr.ph122.i.i:                                    ; preds = %.preheader72.i.i, %.lr.ph122.i.i
  %.18121.i.i = phi ptr [ %i.aly, %.lr.ph122.i.i ], [ %.17.lcssa.i.i, %.preheader72.i.i ] ; 2 uses
  %.1954120.i.i = phi i32 [ %i.alz, %.lr.ph122.i.i ], [ %.0953.lcssa.i.i, %.preheader72.i.i ] ; 2 uses
  %i.alf = add nsw i32 %.1954120.i.i, %4          ; 2 uses
  %i.alg = srem i32 %i.alf, %i.tm                 ; 2 uses
  %i.alh = srem i32 %i.alg, %6
  %i.ali = mul nsw i32 %i.alh, %8
  %i.alj = insertelement <2 x i32> poison, i32 %i.alg, i64 0
  %i.alk = insertelement <2 x i32> %i.alj, i32 %i.alf, i64 1
  %i.all = sdiv <2 x i32> %i.alk, %i.wr
  %i.alm = mul <2 x i32> %i.all, %i.wt
  %i.aln = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.alm)
  %i.alo = add i32 %i.aln, %i.ali
  %i.alp = insertelement <4 x i32> poison, i32 %i.alo, i64 0
  %i.alq = shufflevector <4 x i32> %i.alp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.alr = add <4 x i32> %i.alq, %i.agl
  %i.als = load ptr, ptr %0, align 8, !tbaa !15
  %i.alt = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.als, <4 x i32> %i.alr, <4 x i32> splat (i32 -1), i8 1)
  %i.alu = bitcast <4 x i32> %i.alt to <16 x i8>
  %i.alv = shufflevector <16 x i8> %i.alu, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.alw = bitcast <16 x i8> %i.alv to <4 x float>
  %i.alx = extractelement <4 x float> %i.alw, i64 0
  store float %i.alx, ptr %.18121.i.i, align 1, !tbaa !18
  %i.aly = getelementptr inbounds nuw i8, ptr %.18121.i.i, i64 4 ; 2 uses
  %i.alz = add nuw nsw i32 %.1954120.i.i, 1       ; 2 uses
  %exitcond248.not.i.i = icmp eq i32 %i.alz, %5
  br i1 %exitcond248.not.i.i, label %.loopexit66.i.i, label %.lr.ph122.i.i, !llvm.loop !425

.loopexit73.i.i:                                  ; preds = %bb.v
  br i1 %brmerge203.i.i, label %.loopexit66.i.i, label %.lr.ph126.i.i

.lr.ph126.i.i:                                    ; preds = %.loopexit73.i.i, %.lr.ph126.i.i
  %.20125.i.i = phi ptr [ %i.amu, %.lr.ph126.i.i ], [ %.11142.i.i, %.loopexit73.i.i ] ; 2 uses
  %.0955124.i.i = phi i32 [ %i.amv, %.lr.ph126.i.i ], [ 0, %.loopexit73.i.i ] ; 2 uses
  %i.ama = add nsw i32 %.0955124.i.i, %i.wf       ; 2 uses
  %i.amb = srem i32 %i.ama, %i.tm                 ; 2 uses
  %i.amc = srem i32 %i.amb, %6
  %i.amd = mul nsw i32 %i.amc, %8
  %i.ame = insertelement <2 x i32> poison, i32 %i.amb, i64 0
  %i.amf = insertelement <2 x i32> %i.ame, i32 %i.ama, i64 1
  %i.amg = sdiv <2 x i32> %i.amf, %i.wh
  %i.amh = mul <2 x i32> %i.amg, %i.wj
  %i.ami = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.amh)
  %i.amj = add i32 %i.ami, %i.amd
  %i.amk = insertelement <4 x i32> poison, i32 %i.amj, i64 0
  %i.aml = shufflevector <4 x i32> %i.amk, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.amm = add <4 x i32> %i.aml, %i.agl
  %i.amn = shl <4 x i32> %i.amm, splat (i32 3)
  %i.amo = load ptr, ptr %0, align 8, !tbaa !15
  %i.amp = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.amo, <4 x i32> %i.amn, <4 x i64> splat (i64 -1), i8 1)
  %i.amq = bitcast <4 x i64> %i.amp to <16 x i16>
  %i.amr = shufflevector <16 x i16> %i.amq, <16 x i16> poison, <16 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7, i32 8, i32 12, i32 9, i32 13, i32 10, i32 14, i32 11, i32 15>
  %i.ams = bitcast <16 x i16> %i.amr to <8 x i32>
  %i.amt = shufflevector <8 x i32> %i.ams, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %i.amt, ptr %.20125.i.i, align 1, !tbaa !18
  %i.amu = getelementptr inbounds nuw i8, ptr %.20125.i.i, i64 32 ; 2 uses
  %i.amv = add nuw nsw i32 %.0955124.i.i, 1       ; 2 uses
  %exitcond249.not.i.i = icmp eq i32 %i.amv, %i.wd
  br i1 %exitcond249.not.i.i, label %.loopexit66.i.i, label %.lr.ph126.i.i, !llvm.loop !426

.loopexit66.i.i:                                  ; preds = %.lr.ph126.i.i, %.lr.ph122.i.i, %bb.u, %bb.t, %.loopexit73.i.i, %.preheader72.i.i, %.loopexit68.i.i, %.preheader67.i.i
  %.21.i.i = phi ptr [ %.11142.i.i, %.loopexit73.i.i ], [ %.12.lcssa.i63.i, %.preheader67.i.i ], [ %.11142.i.i, %.loopexit68.i.i ], [ %i.aka, %bb.u ], [ %i.ajb, %bb.t ], [ %.17.lcssa.i.i, %.preheader72.i.i ], [ %i.aly, %.lr.ph122.i.i ], [ %i.amu, %.lr.ph126.i.i ] ; 2 uses
  %i.amw = add nuw nsw i32 %.1939141.i.i, 4       ; 3 uses
  %i.amx = or disjoint i32 %i.amw, 3
  %i.amy = icmp slt i32 %i.amx, %3
  br i1 %i.amy, label %bb.q, label %.preheader64.i.i, !llvm.loop !427

.preheader53.i.i:                                 ; preds = %.loopexit55.i.i, %.preheader64.i.i
  %.2940.lcssa.i.i = phi i32 [ %.1939.lcssa.i.i, %.preheader64.i.i ], [ %i.aup, %.loopexit55.i.i ] ; 2 uses
  %.22.lcssa.i.i = phi ptr [ %.11.lcssa.i.i, %.preheader64.i.i ], [ %.33.i.i, %.loopexit55.i.i ]
  %i.amz = icmp slt i32 %.2940.lcssa.i.i, %3
  br i1 %i.amz, label %.lr.ph193.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

.lr.ph193.i.i:                                    ; preds = %.preheader53.i.i
  %i.ana = mul i32 %i.te, %11
  %i.anb = icmp eq i32 %i.tg, 1
  %i.anc = icmp sgt i32 %5, 1
  %i.and = mul i32 %i.te, %9                      ; 4 uses
  %i.ane = icmp ne i32 %i.tg, 8
  %i.anf = lshr i32 %5, 3
  %i.ang = icmp slt i32 %5, 8
  %i.anh = sdiv i32 %4, 8
  %brmerge210.i.i = or i1 %i.ang, %i.ane
  %80 = insertelement <2 x i32> poison, i32 %i.tm, i64 0
  %81 = shufflevector <2 x i32> %80, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ani = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.anj = shufflevector <2 x i32> %i.ani, <2 x i32> poison, <2 x i32> zeroinitializer
  %82 = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %83 = shufflevector <2 x i64> %82, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.ae

bb.w:                                             ; preds = %.loopexit55.i.i, %.lr.ph175.i59.i
  %.22174.i.i = phi ptr [ %.11.lcssa.i.i, %.lr.ph175.i59.i ], [ %.33.i.i, %.loopexit55.i.i ] ; 8 uses
  %.2940173.i.i = phi i32 [ %.1939.lcssa.i.i, %.lr.ph175.i59.i ], [ %i.aup, %.loopexit55.i.i ] ; 2 uses
  %i.ank = add nsw i32 %.2940173.i.i, %2          ; 2 uses
  %i.anl = add nsw i32 %i.ank, 1
  %i.anm = insertelement <2 x i32> poison, i32 %i.ank, i64 0
  %i.ann = insertelement <2 x i32> %i.anm, i32 %i.anl, i64 1
  %.frozen.a = freeze <2 x i32> %i.ann            ; 2 uses
  %.frozen476 = freeze <2 x i32> %i.aez           ; 2 uses
  %i.ano = sdiv <2 x i32> %.frozen.a, %.frozen476 ; 2 uses
  %i.anp = mul <2 x i32> %i.ano, %.frozen476
  %.decomposed.a = sub <2 x i32> %.frozen.a, %i.anp
  %i.anq = mul nsw <2 x i32> %.decomposed.a, %i.aex
  %i.anr = mul <2 x i32> %i.ano, %i.afb           ; 3 uses
  %i.ans = add nsw <2 x i32> %i.anq, %i.anr       ; 8 uses
  %shift313 = shufflevector <2 x i32> %i.anr, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.ant = icmp eq <2 x i32> %i.anr, %shift313
  %i.anu = extractelement <2 x i1> %i.ant, i64 0
  %or.cond5.i.i = and i1 %i.g, %i.anu
  br i1 %or.cond5.i.i, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  br i1 %i.aem, label %.preheader58.i.i, label %.loopexit57.i.i

.preheader58.i.i:                                 ; preds = %bb.x
  br i1 %i.aen, label %.lr.ph162.i.i, label %.preheader56.i.i

.lr.ph162.i.i:                                    ; preds = %.preheader58.i.i
  %i.anv = extractelement <2 x i32> %i.ans, i64 0
  %i.anw = sext i32 %i.anv to i64                 ; 2 uses
  br label %bb.y

.preheader56.i.i:                                 ; preds = %bb.y, %.preheader58.i.i
  %.0956.lcssa.i.i = phi i32 [ 0, %.preheader58.i.i ], [ %i.apb, %bb.y ] ; 2 uses
  %.23.lcssa.i.i = phi ptr [ %.22174.i.i, %.preheader58.i.i ], [ %i.apa, %bb.y ] ; 2 uses
  %i.anx = icmp slt i32 %.0956.lcssa.i.i, %5
  br i1 %i.anx, label %.lr.ph167.i.i, label %.loopexit55.i.i

.lr.ph167.i.i:                                    ; preds = %.preheader56.i.i
  %i.any = extractelement <2 x i32> %i.ans, i64 0
  %i.anz = sext i32 %i.any to i64
  br label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph162.i.i
  %.23161.i.i = phi ptr [ %.22174.i.i, %.lr.ph162.i.i ], [ %i.apa, %bb.y ] ; 5 uses
  %.0956160.i.i = phi i32 [ 0, %.lr.ph162.i.i ], [ %i.apb, %bb.y ] ; 2 uses
  %i.aoa = add nsw i32 %.0956160.i.i, %4          ; 2 uses
  %i.aob = add nsw i32 %i.aoa, 1
  %84 = insertelement <2 x i32> poison, i32 %i.aoa, i64 0
  %85 = insertelement <2 x i32> %84, i32 %i.aob, i64 1
  %.frozen470 = freeze <2 x i32> %85              ; 2 uses
  %86 = sdiv <2 x i32> %.frozen470, %51           ; 2 uses
  %87 = mul <2 x i32> %86, %51
  %.decomposed471 = sub <2 x i32> %.frozen470, %87 ; 3 uses
  %88 = extractelement <2 x i32> %.decomposed471, i64 0
  %89 = sdiv i32 %88, %6
  %90 = extractelement <2 x i32> %.decomposed471, i64 1
  %91 = sdiv i32 %90, %6
  %92 = srem <2 x i32> %.decomposed471, %i.afn    ; 2 uses
  %93 = mul i32 %89, %i.aeo
  %94 = extractelement <2 x i32> %92, i64 0
  %95 = mul nsw i32 %94, %8
  %96 = add nsw i32 %95, %93
  %97 = sext i32 %96 to i64
  %i.aoc = sext <2 x i32> %86 to <2 x i64>
  %i.aod = mul <2 x i64> %53, %i.aoc              ; 2 uses
  %i.aoe = mul i32 %91, %i.aeo
  %98 = extractelement <2 x i32> %92, i64 1
  %i.aof = mul nsw i32 %98, %8
  %i.aog = add nsw i32 %i.aof, %i.aoe
  %i.aoh = sext i32 %i.aog to i64
  %i.aoi = load ptr, ptr %0, align 8, !tbaa !15   ; 2 uses
  %i.aoj = extractelement <2 x i64> %i.aod, i64 0
  %i.aok = getelementptr i8, ptr %i.aoi, i64 %i.aoj
  %i.aol = getelementptr i8, ptr %i.aok, i64 %i.anw
  %i.aom = getelementptr i8, ptr %i.aol, i64 %97  ; 2 uses
  %i.aon = extractelement <2 x i64> %i.aod, i64 1
  %i.aoo = getelementptr i8, ptr %i.aoi, i64 %i.aon
  %i.aop = getelementptr i8, ptr %i.aoo, i64 %i.anw
  %i.aoq = getelementptr i8, ptr %i.aop, i64 %i.aoh ; 2 uses
  %i.aor = load i8, ptr %i.aom, align 1, !tbaa !18
  store i8 %i.aor, ptr %.23161.i.i, align 1, !tbaa !18
  %i.aos = load i8, ptr %i.aoq, align 1, !tbaa !18
  %i.aot = getelementptr inbounds nuw i8, ptr %.23161.i.i, i64 1
  store i8 %i.aos, ptr %i.aot, align 1, !tbaa !18
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aom, i64 1
  %i.aov = load i8, ptr %i.aou, align 1, !tbaa !18
  %i.aow = getelementptr inbounds nuw i8, ptr %.23161.i.i, i64 2
  store i8 %i.aov, ptr %i.aow, align 1, !tbaa !18
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aoq, i64 1
  %i.aoy = load i8, ptr %i.aox, align 1, !tbaa !18
  %i.aoz = getelementptr inbounds nuw i8, ptr %.23161.i.i, i64 3
  store i8 %i.aoy, ptr %i.aoz, align 1, !tbaa !18
  %i.apa = getelementptr inbounds nuw i8, ptr %.23161.i.i, i64 4 ; 2 uses
  %i.apb = add nuw nsw i32 %.0956160.i.i, 2       ; 3 uses
  %i.apc = or disjoint i32 %i.apb, 1
  %i.apd = icmp slt i32 %i.apc, %5
  br i1 %i.apd, label %bb.y, label %.preheader56.i.i, !llvm.loop !428

bb.z:                                             ; preds = %bb.z, %.lr.ph167.i.i
  %.24166.i.i = phi ptr [ %.23.lcssa.i.i, %.lr.ph167.i.i ], [ %i.apx, %bb.z ] ; 3 uses
  %.1957165.i.i = phi i32 [ %.0956.lcssa.i.i, %.lr.ph167.i.i ], [ %i.apy, %bb.z ] ; 2 uses
  %i.ape = add nsw i32 %.1957165.i.i, %4          ; 2 uses
  %i.apf = sdiv i32 %i.ape, %i.tm
  %i.apg = srem i32 %i.ape, %i.tm                 ; 2 uses
  %i.aph = sdiv i32 %i.apg, %6
  %i.api = srem i32 %i.apg, %6
  %i.apj = sext i32 %i.apf to i64
  %i.apk = mul i64 %i.k, %i.apj
  %i.apl = mul i32 %i.aph, %i.aeo
  %i.apm = mul nsw i32 %i.api, %8
  %i.apn = add nsw i32 %i.apm, %i.apl
  %i.apo = sext i32 %i.apn to i64
  %i.app = load ptr, ptr %0, align 8, !tbaa !15
  %i.apq = getelementptr i8, ptr %i.app, i64 %i.apk
  %i.apr = getelementptr i8, ptr %i.apq, i64 %i.anz
  %i.aps = getelementptr i8, ptr %i.apr, i64 %i.apo ; 2 uses
  %i.apt = load i8, ptr %i.aps, align 1, !tbaa !18
  store i8 %i.apt, ptr %.24166.i.i, align 1, !tbaa !18
  %i.apu = getelementptr inbounds nuw i8, ptr %i.aps, i64 1
  %i.apv = load i8, ptr %i.apu, align 1, !tbaa !18
  %i.apw = getelementptr inbounds nuw i8, ptr %.24166.i.i, i64 1
  store i8 %i.apv, ptr %i.apw, align 1, !tbaa !18
  %i.apx = getelementptr inbounds nuw i8, ptr %.24166.i.i, i64 2 ; 2 uses
  %i.apy = add nuw nsw i32 %.1957165.i.i, 1       ; 2 uses
  %exitcond254.not.i.i = icmp eq i32 %i.apy, %5
  br i1 %exitcond254.not.i.i, label %.loopexit55.i.i, label %bb.z, !llvm.loop !429

.loopexit57.i.i:                                  ; preds = %bb.x
  br i1 %brmerge206.i.i, label %.loopexit55.i.i, label %.lr.ph171.i.i

.lr.ph171.i.i:                                    ; preds = %.loopexit57.i.i
  %i.apz = extractelement <2 x i32> %i.ans, i64 0
  %i.aqa = sext i32 %i.apz to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph171.i.i
  %.26170.i.i = phi ptr [ %.22174.i.i, %.lr.ph171.i.i ], [ %i.aqt, %bb.aa ] ; 2 uses
  %.0958169.i.i = phi i32 [ 0, %.lr.ph171.i.i ], [ %i.aqu, %bb.aa ] ; 2 uses
  %i.aqb = add nsw i32 %.0958169.i.i, %i.aes      ; 2 uses
  %i.aqc = sdiv i32 %i.aqb, %i.tm
  %i.aqd = srem i32 %i.aqb, %i.tm                 ; 2 uses
  %i.aqe = sdiv i32 %i.aqd, %6
  %i.aqf = srem i32 %i.aqd, %6
  %i.aqg = sext i32 %i.aqc to i64
  %i.aqh = mul i64 %i.k, %i.aqg
  %i.aqi = add i64 %i.aqh, %i.aqa
  %i.aqj = mul i32 %i.aqe, %i.aeo
  %i.aqk = mul nsw i32 %i.aqf, %8
  %i.aql = add nsw i32 %i.aqk, %i.aqj
  %i.aqm = sext i32 %i.aql to i64
  %i.aqn = add i64 %i.aqi, %i.aqm
  %i.aqo = shl i64 %i.aqn, 3
  %i.aqp = load ptr, ptr %0, align 8, !tbaa !15
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 %i.aqo
  %i.aqr = load <8 x i16>, ptr %i.aqq, align 1, !tbaa !18
  %i.aqs = shufflevector <8 x i16> %i.aqr, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.aqs, ptr %.26170.i.i, align 1, !tbaa !18
  %i.aqt = getelementptr inbounds nuw i8, ptr %.26170.i.i, i64 16 ; 2 uses
  %i.aqu = add nuw nsw i32 %.0958169.i.i, 1       ; 2 uses
  %exitcond255.not.i.i = icmp eq i32 %i.aqu, %i.aer
  br i1 %exitcond255.not.i.i, label %.loopexit55.i.i, label %bb.aa, !llvm.loop !430

bb.ab:                                            ; preds = %bb.w
  br i1 %i.aem, label %.preheader63.i.i, label %.loopexit62.i.i

.preheader63.i.i:                                 ; preds = %bb.ab
  br i1 %i.aen, label %.lr.ph148.i.i.preheader, label %.preheader61.i.i

.lr.ph148.i.i.preheader:                          ; preds = %.preheader63.i.i
  %i.aqv = shufflevector <2 x i32> %i.ans, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph148.i.i

.preheader61.i.i:                                 ; preds = %.lr.ph148.i.i, %.preheader63.i.i
  %.0959.lcssa.i.i = phi i32 [ 0, %.preheader63.i.i ], [ %i.ask, %.lr.ph148.i.i ] ; 2 uses
  %.28.lcssa.i.i = phi ptr [ %.22174.i.i, %.preheader63.i.i ], [ %i.asj, %.lr.ph148.i.i ] ; 2 uses
  %i.aqw = icmp slt i32 %.0959.lcssa.i.i, %5
  br i1 %i.aqw, label %.lr.ph153.i61.i, label %.loopexit55.i.i

.lr.ph153.i61.i:                                  ; preds = %.preheader61.i.i
  %i.aqx = extractelement <2 x i32> %i.ans, i64 0
  %i.aqy = extractelement <2 x i32> %i.ans, i64 1
  %i.aqz = sext i32 %i.aqx to i64
  %i.ara = sext i32 %i.aqy to i64
  br label %bb.ac

.lr.ph148.i.i:                                    ; preds = %.lr.ph148.i.i.preheader, %.lr.ph148.i.i
  %.28147.i.i = phi ptr [ %i.asj, %.lr.ph148.i.i ], [ %.22174.i.i, %.lr.ph148.i.i.preheader ] ; 5 uses
  %.0959146.i.i = phi i32 [ %i.ask, %.lr.ph148.i.i ], [ 0, %.lr.ph148.i.i.preheader ] ; 2 uses
  %i.arb = add nsw i32 %.0959146.i.i, %4          ; 2 uses
  %i.arc = add nsw i32 %i.arb, 1
  %i.ard = insertelement <2 x i32> poison, i32 %i.arb, i64 0
  %i.are = insertelement <2 x i32> %i.ard, i32 %i.arc, i64 1
  %.frozen477 = freeze <2 x i32> %i.are           ; 2 uses
  %i.arf = sdiv <2 x i32> %.frozen477, %i.afd     ; 2 uses
  %i.arg = mul <2 x i32> %i.arf, %i.afd
  %.decomposed478 = sub <2 x i32> %.frozen477, %i.arg ; 2 uses
  %i.arh = sdiv <2 x i32> %.decomposed478, %i.aff ; 2 uses
  %i.ari = mul <2 x i32> %i.arh, %i.aff
  %.decomposed479 = sub <2 x i32> %.decomposed478, %i.ari
  %99 = load ptr, ptr %0, align 8, !tbaa !15      ; 4 uses
  %i.arj = mul <2 x i32> %i.arh, %i.afh
  %i.ark = mul nsw <2 x i32> %.decomposed479, %i.afj
  %i.arl = mul <2 x i32> %i.arf, %i.afl
  %i.arm = add <2 x i32> %i.arj, %i.arl
  %i.arn = add <2 x i32> %i.arm, %i.ark
  %i.aro = shufflevector <2 x i32> %i.arn, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.arp = add <4 x i32> %i.aro, %i.aqv           ; 4 uses
  %i.arq = extractelement <4 x i32> %i.arp, i64 0
  %i.arr = sext i32 %i.arq to i64
  %i.ars = getelementptr inbounds i8, ptr %99, i64 %i.arr
  %i.art = extractelement <4 x i32> %i.arp, i64 1
  %i.aru = sext i32 %i.art to i64
  %i.arv = getelementptr inbounds i8, ptr %99, i64 %i.aru
  %i.arw = extractelement <4 x i32> %i.arp, i64 2
  %i.arx = sext i32 %i.arw to i64
  %i.ary = getelementptr inbounds i8, ptr %99, i64 %i.arx
  %i.arz = extractelement <4 x i32> %i.arp, i64 3
  %i.asa = sext i32 %i.arz to i64
  %i.asb = getelementptr inbounds i8, ptr %99, i64 %i.asa
  %i.asc = load i8, ptr %i.ars, align 1, !tbaa !18
  store i8 %i.asc, ptr %.28147.i.i, align 1, !tbaa !18
  %i.asd = load i8, ptr %i.ary, align 1, !tbaa !18
  %i.ase = getelementptr inbounds nuw i8, ptr %.28147.i.i, i64 1
  store i8 %i.asd, ptr %i.ase, align 1, !tbaa !18
  %i.asf = load i8, ptr %i.arv, align 1, !tbaa !18
  %i.asg = getelementptr inbounds nuw i8, ptr %.28147.i.i, i64 2
  store i8 %i.asf, ptr %i.asg, align 1, !tbaa !18
  %i.ash = load i8, ptr %i.asb, align 1, !tbaa !18
  %i.asi = getelementptr inbounds nuw i8, ptr %.28147.i.i, i64 3
  store i8 %i.ash, ptr %i.asi, align 1, !tbaa !18
  %i.asj = getelementptr inbounds nuw i8, ptr %.28147.i.i, i64 4 ; 2 uses
  %i.ask = add nuw nsw i32 %.0959146.i.i, 2       ; 3 uses
  %i.asl = or disjoint i32 %i.ask, 1
  %i.asm = icmp slt i32 %i.asl, %5
  br i1 %i.asm, label %.lr.ph148.i.i, label %.preheader61.i.i, !llvm.loop !431

bb.ac:                                            ; preds = %bb.ac, %.lr.ph153.i61.i
  %.29152.i.i = phi ptr [ %.28.lcssa.i.i, %.lr.ph153.i61.i ], [ %i.ath, %bb.ac ] ; 3 uses
  %.1960151.i.i = phi i32 [ %.0959.lcssa.i.i, %.lr.ph153.i61.i ], [ %i.ati, %bb.ac ] ; 2 uses
  %i.asn = add nsw i32 %.1960151.i.i, %4          ; 2 uses
  %i.aso = sdiv i32 %i.asn, %i.tm
  %i.asp = srem i32 %i.asn, %i.tm                 ; 2 uses
  %i.asq = sdiv i32 %i.asp, %6
  %i.asr = srem i32 %i.asp, %6
  %i.ass = sext i32 %i.aso to i64
  %i.ast = mul i64 %i.k, %i.ass
  %i.asu = mul i32 %i.asq, %i.aeo
  %i.asv = mul nsw i32 %i.asr, %8
  %i.asw = add nsw i32 %i.asv, %i.asu
  %i.asx = sext i32 %i.asw to i64                 ; 2 uses
  %i.asy = load ptr, ptr %0, align 8, !tbaa !15
  %i.asz = getelementptr i8, ptr %i.asy, i64 %i.ast ; 2 uses
  %i.ata = getelementptr i8, ptr %i.asz, i64 %i.aqz
  %i.atb = getelementptr i8, ptr %i.ata, i64 %i.asx
  %i.atc = getelementptr i8, ptr %i.asz, i64 %i.ara
  %i.atd = getelementptr i8, ptr %i.atc, i64 %i.asx
  %i.ate = load i8, ptr %i.atb, align 1, !tbaa !18
  store i8 %i.ate, ptr %.29152.i.i, align 1, !tbaa !18
  %i.atf = load i8, ptr %i.atd, align 1, !tbaa !18
  %i.atg = getelementptr inbounds nuw i8, ptr %.29152.i.i, i64 1
  store i8 %i.atf, ptr %i.atg, align 1, !tbaa !18
  %i.ath = getelementptr inbounds nuw i8, ptr %.29152.i.i, i64 2 ; 2 uses
  %i.ati = add nuw nsw i32 %.1960151.i.i, 1       ; 2 uses
  %exitcond252.not.i.i = icmp eq i32 %i.ati, %5
  br i1 %exitcond252.not.i.i, label %.loopexit55.i.i, label %bb.ac, !llvm.loop !432

.loopexit62.i.i:                                  ; preds = %bb.ab
  br i1 %or.cond207.i.i, label %.lr.ph158.i60.i, label %.loopexit55.i.i

.lr.ph158.i60.i:                                  ; preds = %.loopexit62.i.i
  %i.atj = extractelement <2 x i32> %i.ans, i64 0
  %i.atk = sext i32 %i.atj to i64
  %i.atl = extractelement <2 x i32> %i.ans, i64 1
  %i.atm = sext i32 %i.atl to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph158.i60.i
  %.31157.i.i = phi ptr [ %.22174.i.i, %.lr.ph158.i60.i ], [ %i.aun, %bb.ad ] ; 2 uses
  %.3962156.i.i = phi i32 [ 0, %.lr.ph158.i60.i ], [ %i.auo, %bb.ad ] ; 2 uses
  %i.atn = add nsw i32 %.3962156.i.i, %i.aes      ; 2 uses
  %i.ato = sdiv i32 %i.atn, %i.tm
  %i.atp = srem i32 %i.atn, %i.tm                 ; 2 uses
  %i.atq = sdiv i32 %i.atp, %6
  %i.atr = srem i32 %i.atp, %6
  %i.ats = sext i32 %i.ato to i64
  %i.att = mul i64 %i.k, %i.ats
  %i.atu = mul i32 %i.atq, %i.aeo
  %i.atv = mul nsw i32 %i.atr, %8
  %i.atw = add nsw i32 %i.atv, %i.atu
  %i.atx = sext i32 %i.atw to i64
  %i.aty = add i64 %i.att, %i.atx                 ; 2 uses
  %i.atz = add i64 %i.aty, %i.atk
  %i.aua = shl i64 %i.atz, 3
  %i.aub = add i64 %i.aty, %i.atm
  %i.auc = shl i64 %i.aub, 3
  %i.aud = load ptr, ptr %0, align 8, !tbaa !15   ; 2 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 %i.aua
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aud, i64 %i.auc
  %i.aug = load i64, ptr %i.aue, align 1, !tbaa !18
  %i.auh = insertelement <2 x i64> poison, i64 %i.aug, i64 0
  %i.aui = load i64, ptr %i.auf, align 1, !tbaa !18
  %i.auj = insertelement <2 x i64> poison, i64 %i.aui, i64 0
  %i.auk = bitcast <2 x i64> %i.auh to <8 x i16>
  %i.aul = bitcast <2 x i64> %i.auj to <8 x i16>
  %i.aum = shufflevector <8 x i16> %i.auk, <8 x i16> %i.aul, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.aum, ptr %.31157.i.i, align 1, !tbaa !18
  %i.aun = getelementptr inbounds nuw i8, ptr %.31157.i.i, i64 16 ; 2 uses
  %i.auo = add nuw nsw i32 %.3962156.i.i, 1       ; 2 uses
  %exitcond253.not.i.i = icmp eq i32 %i.auo, %i.aer
  br i1 %exitcond253.not.i.i, label %.loopexit55.i.i, label %bb.ad, !llvm.loop !433

.loopexit55.i.i:                                  ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.z, %.loopexit62.i.i, %.preheader61.i.i, %.loopexit57.i.i, %.preheader56.i.i
  %.33.i.i = phi ptr [ %.22174.i.i, %.loopexit62.i.i ], [ %.22174.i.i, %.loopexit57.i.i ], [ %.23.lcssa.i.i, %.preheader56.i.i ], [ %i.aqt, %bb.aa ], [ %i.apx, %bb.z ], [ %.28.lcssa.i.i, %.preheader61.i.i ], [ %i.ath, %bb.ac ], [ %i.aun, %bb.ad ] ; 2 uses
  %i.aup = add nuw nsw i32 %.2940173.i.i, 2       ; 3 uses
  %i.auq = or disjoint i32 %i.aup, 1
  %i.aur = icmp slt i32 %i.auq, %3
  br i1 %i.aur, label %bb.w, label %.preheader53.i.i, !llvm.loop !434

bb.ae:                                            ; preds = %.loopexit.i.i, %.lr.ph193.i.i
  %.34192.i.i = phi ptr [ %.22.lcssa.i.i, %.lr.ph193.i.i ], [ %.39.i.i, %.loopexit.i.i ] ; 4 uses
  %.3941191.i.i = phi i32 [ %.2940.lcssa.i.i, %.lr.ph193.i.i ], [ %i.axl, %.loopexit.i.i ] ; 2 uses
  %i.aus = add nsw i32 %.3941191.i.i, %2          ; 2 uses
  %i.aut = sdiv i32 %i.aus, %i.tl
  %i.auu = srem i32 %i.aus, %i.tl
  %i.auv = mul nsw i32 %i.auu, %10
  %i.auw = mul i32 %i.ana, %i.aut
  %i.aux = add nsw i32 %i.auv, %i.auw             ; 3 uses
  br i1 %i.anb, label %.preheader52.i.i, label %.loopexit51.i.i

.preheader52.i.i:                                 ; preds = %bb.ae
  br i1 %i.anc, label %.lr.ph180.i58.i, label %.preheader50.i.i

.lr.ph180.i58.i:                                  ; preds = %.preheader52.i.i
  %i.auy = sext i32 %i.aux to i64                 ; 2 uses
  br label %bb.af

.preheader50.i.i:                                 ; preds = %bb.af, %.preheader52.i.i
  %.0950.lcssa.i.i = phi i32 [ 0, %.preheader52.i.i ], [ %i.avw, %bb.af ] ; 2 uses
  %.35.lcssa.i.i = phi ptr [ %.34192.i.i, %.preheader52.i.i ], [ %i.avv, %bb.af ] ; 2 uses
  %i.auz = icmp slt i32 %.0950.lcssa.i.i, %5
  br i1 %i.auz, label %.lr.ph185.i.i, label %.loopexit.i.i

.lr.ph185.i.i:                                    ; preds = %.preheader50.i.i
  %i.ava = sext i32 %i.aux to i64
  br label %bb.ag

bb.af:                                            ; preds = %bb.af, %.lr.ph180.i58.i
  %.35179.i.i = phi ptr [ %.34192.i.i, %.lr.ph180.i58.i ], [ %i.avv, %bb.af ] ; 3 uses
  %.0950178.i.i = phi i32 [ 0, %.lr.ph180.i58.i ], [ %i.avw, %bb.af ] ; 2 uses
  %i.avb = add nsw i32 %.0950178.i.i, %4          ; 2 uses
  %i.avc = add nsw i32 %i.avb, 1
  %100 = insertelement <2 x i32> poison, i32 %i.avb, i64 0
  %101 = insertelement <2 x i32> %100, i32 %i.avc, i64 1
  %.frozen475 = freeze <2 x i32> %101             ; 2 uses
  %102 = sdiv <2 x i32> %.frozen475, %81          ; 2 uses
  %103 = mul <2 x i32> %102, %81
  %.decomposed476 = sub <2 x i32> %.frozen475, %103 ; 3 uses
  %104 = extractelement <2 x i32> %.decomposed476, i64 0
  %105 = sdiv i32 %104, %6
  %106 = extractelement <2 x i32> %.decomposed476, i64 1
  %107 = sdiv i32 %106, %6
  %108 = srem <2 x i32> %.decomposed476, %i.anj   ; 2 uses
  %109 = mul i32 %105, %i.and
  %110 = extractelement <2 x i32> %108, i64 0
  %111 = mul nsw i32 %110, %8
  %112 = add nsw i32 %111, %109
  %113 = sext i32 %112 to i64
  %i.avd = sext <2 x i32> %102 to <2 x i64>
  %i.ave = mul <2 x i64> %83, %i.avd              ; 2 uses
  %i.avf = mul i32 %107, %i.and
  %114 = extractelement <2 x i32> %108, i64 1
  %i.avg = mul nsw i32 %114, %8
  %i.avh = add nsw i32 %i.avg, %i.avf
  %i.avi = sext i32 %i.avh to i64
  %i.avj = load ptr, ptr %0, align 8, !tbaa !15   ; 2 uses
  %i.avk = extractelement <2 x i64> %i.ave, i64 0
  %i.avl = getelementptr i8, ptr %i.avj, i64 %i.avk
  %i.avm = getelementptr i8, ptr %i.avl, i64 %i.auy
  %i.avn = getelementptr i8, ptr %i.avm, i64 %113
  %i.avo = extractelement <2 x i64> %i.ave, i64 1
  %i.avp = getelementptr i8, ptr %i.avj, i64 %i.avo
  %i.avq = getelementptr i8, ptr %i.avp, i64 %i.auy
  %i.avr = getelementptr i8, ptr %i.avq, i64 %i.avi
  %i.avs = load i8, ptr %i.avn, align 1, !tbaa !18
  store i8 %i.avs, ptr %.35179.i.i, align 1, !tbaa !18
  %i.avt = load i8, ptr %i.avr, align 1, !tbaa !18
  %i.avu = getelementptr inbounds nuw i8, ptr %.35179.i.i, i64 1
  store i8 %i.avt, ptr %i.avu, align 1, !tbaa !18
  %i.avv = getelementptr inbounds nuw i8, ptr %.35179.i.i, i64 2 ; 2 uses
  %i.avw = add nuw nsw i32 %.0950178.i.i, 2       ; 3 uses
  %i.avx = or disjoint i32 %i.avw, 1
  %i.avy = icmp slt i32 %i.avx, %5
  br i1 %i.avy, label %bb.af, label %.preheader50.i.i, !llvm.loop !435

bb.ag:                                            ; preds = %bb.ag, %.lr.ph185.i.i
  %.36184.i.i = phi ptr [ %.35.lcssa.i.i, %.lr.ph185.i.i ], [ %i.awp, %bb.ag ] ; 2 uses
  %.1951183.i.i = phi i32 [ %.0950.lcssa.i.i, %.lr.ph185.i.i ], [ %i.awq, %bb.ag ] ; 2 uses
  %i.avz = add nsw i32 %.1951183.i.i, %4          ; 2 uses
  %i.awa = sdiv i32 %i.avz, %i.tm
  %i.awb = srem i32 %i.avz, %i.tm                 ; 2 uses
  %i.awc = sdiv i32 %i.awb, %6
  %i.awd = srem i32 %i.awb, %6
  %i.awe = sext i32 %i.awa to i64
  %i.awf = mul i64 %i.k, %i.awe
  %i.awg = mul i32 %i.awc, %i.and
  %i.awh = mul nsw i32 %i.awd, %8
  %i.awi = add nsw i32 %i.awh, %i.awg
  %i.awj = sext i32 %i.awi to i64
  %i.awk = load ptr, ptr %0, align 8, !tbaa !15
  %i.awl = getelementptr i8, ptr %i.awk, i64 %i.awf
  %i.awm = getelementptr i8, ptr %i.awl, i64 %i.ava
  %i.awn = getelementptr i8, ptr %i.awm, i64 %i.awj
  %i.awo = load i8, ptr %i.awn, align 1, !tbaa !18
  store i8 %i.awo, ptr %.36184.i.i, align 1, !tbaa !18
  %i.awp = getelementptr inbounds nuw i8, ptr %.36184.i.i, i64 1 ; 2 uses
  %i.awq = add nuw nsw i32 %.1951183.i.i, 1       ; 2 uses
  %exitcond256.not.i.i = icmp eq i32 %i.awq, %5
  br i1 %exitcond256.not.i.i, label %.loopexit.i.i, label %bb.ag, !llvm.loop !436

.loopexit51.i.i:                                  ; preds = %bb.ae
  br i1 %brmerge210.i.i, label %.loopexit.i.i, label %.lr.ph189.i.i

.lr.ph189.i.i:                                    ; preds = %.loopexit51.i.i
  %i.awr = sext i32 %i.aux to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph189.i.i
  %.38188.i.i = phi ptr [ %.34192.i.i, %.lr.ph189.i.i ], [ %i.axj, %bb.ah ] ; 2 uses
  %.0937187.i.i = phi i32 [ 0, %.lr.ph189.i.i ], [ %i.axk, %bb.ah ] ; 2 uses
  %i.aws = add nsw i32 %.0937187.i.i, %i.anh      ; 2 uses
  %i.awt = sdiv i32 %i.aws, %i.tm
  %i.awu = srem i32 %i.aws, %i.tm                 ; 2 uses
  %i.awv = sdiv i32 %i.awu, %6
  %i.aww = srem i32 %i.awu, %6
  %i.awx = sext i32 %i.awt to i64
  %i.awy = mul i64 %i.k, %i.awx
  %i.awz = add i64 %i.awy, %i.awr
  %i.axa = mul i32 %i.awv, %i.and
  %i.axb = mul nsw i32 %i.aww, %8
  %i.axc = add nsw i32 %i.axb, %i.axa
  %i.axd = sext i32 %i.axc to i64
  %i.axe = add i64 %i.awz, %i.axd
  %i.axf = shl i64 %i.axe, 3
  %i.axg = load ptr, ptr %0, align 8, !tbaa !15
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 %i.axf
  %i.axi = load i64, ptr %i.axh, align 1, !tbaa !18
  store i64 %i.axi, ptr %.38188.i.i, align 1, !tbaa !18
  %i.axj = getelementptr inbounds nuw i8, ptr %.38188.i.i, i64 8 ; 2 uses
  %i.axk = add nuw nsw i32 %.0937187.i.i, 1       ; 2 uses
  %exitcond257.not.i.i = icmp eq i32 %i.axk, %i.anf
  br i1 %exitcond257.not.i.i, label %.loopexit.i.i, label %bb.ah, !llvm.loop !437

.loopexit.i.i:                                    ; preds = %bb.ah, %bb.ag, %.loopexit51.i.i, %.preheader50.i.i
  %.39.i.i = phi ptr [ %.34192.i.i, %.loopexit51.i.i ], [ %i.awp, %bb.ag ], [ %.35.lcssa.i.i, %.preheader50.i.i ], [ %i.axj, %bb.ah ]
  %i.axl = add nuw nsw i32 %.3941191.i.i, 1       ; 2 uses
  %exitcond258.not.i.i = icmp eq i32 %i.axl, %3
  br i1 %exitcond258.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %bb.ae, !llvm.loop !438

_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit: ; preds = %.loopexit.i.i, %..loopexit_crit_edge.i.i, %..loopexit118_crit_edge.us.i.i, %bb.b, %bb.d, %.preheader.i.i, %.lr.ph206.i.i, %.lr.ph206.split.us.split.i.i, %.lr.ph206.split.split.i.i, %.preheader53.i.i
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
  %i.j = zext nneg i32 %3 to i64
  %i.k = sext i32 %2 to i64
  br label %bb.b

.preheader257.loopexit.i:                         ; preds = %._crit_edge.i
  %i.l = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader257.i

.preheader257.i:                                  ; preds = %.preheader257.loopexit.i, %bb.a
  %.0580.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.l, %.preheader257.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.val, %bb.a ], [ %.4.lcssa.i, %.preheader257.loopexit.i ] ; 2 uses
  %i.m = or disjoint i32 %.0580.lcssa.i, 3
  %i.n = icmp slt i32 %i.m, %3
  br i1 %i.n, label %.lr.ph328.i, label %.preheader253.i

.lr.ph328.i:                                      ; preds = %.preheader257.i
  %i.o = mul nsw i32 %i.b, %4
  %i.p = sext i32 %i.o to i64
  %i.q = icmp sgt i32 %5, 7
  %.idx641.i = shl i64 %i.d, 3                    ; 6 uses
  %.idx642.i = mul i64 %i.d, 12                   ; 6 uses
  %i.r = and i32 %5, -8
  %i.s = zext nneg i32 %.0580.lcssa.i to i64
  %i.t = sext i32 %3 to i64
  %i.u = sext i32 %2 to i64
  %invariant.op.i = add nsw i64 %i.t, -3
  br label %bb.k

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph288.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph288.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.0286.i = phi ptr [ %.val, %.lr.ph288.i ], [ %.4.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !15
  %i.w = add nsw i64 %indvars.iv.i, %i.k
  %i.x = mul i64 %i.w, %i.d
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.x
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.g ; 2 uses
  br i1 %i.h, label %.lr.ph.i, label %.preheader260.i

.preheader260.i:                                  ; preds = %.thread214.i, %bb.b
  %.0600.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.i, %.thread214.i ] ; 3 uses
  %.0584.lcssa.i = phi ptr [ %i.z, %bb.b ], [ %.3587.i, %.thread214.i ] ; 2 uses
  %.1.lcssa.i = phi ptr [ %.0286.i, %bb.b ], [ %i.ar, %.thread214.i ] ; 2 uses
  %i.aa = or disjoint i32 %.0600.lcssa.i, 3
  %i.ab = icmp slt i32 %i.aa, %5
  br i1 %i.ab, label %.lr.ph269.i, label %.preheader259.i

.lr.ph.i:                                         ; preds = %bb.b, %.thread214.i
  %.1263.i = phi ptr [ %i.ar, %.thread214.i ], [ %.0286.i, %bb.b ] ; 9 uses
  %.0584262.i = phi ptr [ %.3587.i, %.thread214.i ], [ %i.z, %bb.b ] ; 25 uses
  %.0600261.i = phi i32 [ %i.fa, %.thread214.i ], [ 0, %bb.b ]
  %i.ac = load <8 x i32>, ptr %.1263.i, align 32, !tbaa !18 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.1263.i, i64 32
  %i.ae = load <8 x i32>, ptr %i.ad, align 32, !tbaa !18 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.1263.i, i64 64
  %i.ag = load <8 x i32>, ptr %i.af, align 32, !tbaa !18 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.1263.i, i64 96
  %i.ai = load <8 x i32>, ptr %i.ah, align 32, !tbaa !18 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.1263.i, i64 128
  %i.ak = load <8 x i32>, ptr %i.aj, align 32, !tbaa !18 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.1263.i, i64 160
  %i.am = load <8 x i32>, ptr %i.al, align 32, !tbaa !18 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.1263.i, i64 192
  %i.ao = load <8 x i32>, ptr %i.an, align 32, !tbaa !18 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.1263.i, i64 224
  %i.aq = load <8 x i32>, ptr %i.ap, align 32, !tbaa !18 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.1263.i, i64 256 ; 2 uses
  %i.as = shufflevector <8 x i32> %i.ac, <8 x i32> %i.ai, <8 x i32> <i32 0, i32 11, i32 1, i32 8, i32 4, i32 15, i32 5, i32 12>
  %i.at = bitcast <8 x i32> %i.as to <4 x i64>    ; 2 uses
  %i.au = shufflevector <8 x i32> %i.ac, <8 x i32> %i.ai, <8 x i32> <i32 2, i32 9, i32 3, i32 10, i32 6, i32 13, i32 7, i32 14>
  %i.av = bitcast <8 x i32> %i.au to <4 x i64>    ; 2 uses
  %i.aw = shufflevector <8 x i32> %i.ag, <8 x i32> %i.ae, <8 x i32> <i32 0, i32 11, i32 1, i32 8, i32 4, i32 15, i32 5, i32 12>
  %i.ax = bitcast <8 x i32> %i.aw to <4 x i64>    ; 2 uses
  %i.ay = shufflevector <8 x i32> %i.ag, <8 x i32> %i.ae, <8 x i32> <i32 2, i32 9, i32 3, i32 10, i32 6, i32 13, i32 7, i32 14>
  %i.az = bitcast <8 x i32> %i.ay to <4 x i64>    ; 2 uses
  %i.ba = shufflevector <8 x i32> %i.ak, <8 x i32> %i.aq, <8 x i32> <i32 0, i32 11, i32 1, i32 8, i32 4, i32 15, i32 5, i32 12>
  %i.bb = bitcast <8 x i32> %i.ba to <4 x i64>    ; 2 uses
  %i.bc = shufflevector <8 x i32> %i.ak, <8 x i32> %i.aq, <8 x i32> <i32 2, i32 9, i32 3, i32 10, i32 6, i32 13, i32 7, i32 14>
end_hunk_0
