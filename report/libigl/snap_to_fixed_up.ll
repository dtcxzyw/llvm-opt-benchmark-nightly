Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/snap_to_fixed_up?download=true
inline.NumInlined: 18317
inline.NumDeleted: 9926
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 115
loop-unroll.NumUnrolled: 157
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_ZN5Eigen9JacobiSVDINS_6MatrixIfLi2ELi3ELi0ELi2ELi3EEELi2EE7computeERKS2_j:bb.a
  %i.hj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gv, <2 x float> %i.hh, <2 x float> %i.hi)
  store <2 x float> %i.hj, ptr %i.if, align 4, !tbaa !12
  %i.hk = fmul <2 x float> %i.gv, %i.hg
  %i.hl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.hh, <2 x float> %i.hk)
  store <2 x float> %i.hl, ptr %i.hf, align 4, !tbaa !12
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  %i.hn = load float, ptr %i.ig, align 4, !tbaa !12 ; 2 uses
  %i.ho = load float, ptr %i.hm, align 4, !tbaa !12 ; 2 uses
  %i.hp = fmul float %i.ho, %i.ev
  %i.hq = tail call float @llvm.fmuladd.f32(float %.sink.i.i.i.us, float %i.hn, float %i.hp)
  store float %i.hq, ptr %i.ig, align 4, !tbaa !12
  %i.hr = fmul float %.sink.i.i.i.us, %i.ho
  %i.hs = tail call float @llvm.fmuladd.f32(float %.sink20.i.i.i.us, float %i.hn, float %i.hr)
  store float %i.hs, ptr %i.hm, align 4, !tbaa !12
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIfEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen10MatrixBaseINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIfEEvllRKNS_14JacobiRotationIT_EE.exit.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIffLi3ELi0ELb0EE3runEPflS3_llff.exit.loopexit.i.i.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIfEEvllRKNS_14JacobiRotationIT_EE.exit71.thread.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIfEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.ht = load float, ptr %i.ic, align 4, !tbaa !12
  %i.hu = tail call noundef float @llvm.fabs.f32(float %i.ht) ; 2 uses
  %i.hv = load float, ptr %i.cy, align 4, !tbaa !12
  %i.hw = tail call noundef float @llvm.fabs.f32(float %i.hv) ; 2 uses
  %i.hx = fcmp olt float %i.hu, %i.hw
  %.sroa.speculated.us = select i1 %i.hx, float %i.hw, float %i.hu ; 2 uses
  %i.hy = fcmp olt float %.2184202.us, %.sroa.speculated.us
  %.sroa.speculated132.us = select i1 %i.hy, float %.sroa.speculated.us, float %.2184202.us
  br label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIfEEvllRKNS_14JacobiRotationIT_EE.exit.us, %bb.f
  %.3185.us = phi float [ %.sroa.speculated132.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIfEEvllRKNS_14JacobiRotationIT_EE.exit.us ], [ %.2184202.us, %bb.f ] ; 2 uses
  %.3.us = phi i1 [ false, %_ZN5Eigen10MatrixBaseINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIfEEvllRKNS_14JacobiRotationIT_EE.exit.us ], [ %.2203.us, %bb.f ] ; 3 uses
  %i.hz = add nuw nsw i64 %.056204.us, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.hz, %.057208.us
  br i1 %exitcond.not, label %bb.l, label %bb.e, !llvm.loop !474

bb.l:                                             ; preds = %bb.k
  %i.ia = add nuw nsw i64 %.057208.us, 1          ; 2 uses
  %exitcond216.not = icmp eq i64 %i.ia, %i.cb     ; 3 uses
  %brmerge.not = select i1 %exitcond216.not, i1 %.3.us, i1 false
  %.mux = select i1 %exitcond216.not, i64 1, i64 %i.ia
  %.3.us.mux = select i1 %exitcond216.not, i1 true, i1 %.3.us
  br i1 %brmerge.not, label %.preheader, label %.preheader198.us, !llvm.loop !475

.preheader198.us:                                 ; preds = %bb.l, %.preheader199.us.preheader
  %.057208.us = phi i64 [ %.mux, %bb.l ], [ 1, %.preheader199.us.preheader ] ; 5 uses
  %.1207.us = phi i1 [ %.3.us.mux, %bb.l ], [ true, %.preheader199.us.preheader ]
  %.1183206.us = phi float [ %.3185.us, %bb.l ], [ %i.cl, %.preheader199.us.preheader ]
  %i.ib = getelementptr [4 x i8], ptr %i.bz, i64 %.057208.us ; 5 uses
  %.idx.i64.us = shl i64 %.057208.us, 3           ; 4 uses
  %invariant.gep.us = getelementptr i8, ptr %i.bz, i64 %.idx.i64.us ; 3 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 %.idx.i64.us ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 2 uses
  %i.ie = getelementptr inbounds i8, ptr %0, i64 %.idx.i64.us ; 2 uses
  %.idx.i.i.i.i.i74.us = mul nuw nsw i64 %.057208.us, 12
  %i.if = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i.i.i.i.i74.us ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.bz, i64 %.idx.i64.us
  br label %bb.e

.preheader:                                       ; preds = %bb.l, %bb.d
  %i.ih = icmp sgt i64 %i.cb, 0
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  br i1 %i.ih, label %.lr.ph, label %.loopexit.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.ij = load i8, ptr %i.cd, align 1, !tbaa !80, !range !78, !noundef !79
  %i.ik = trunc nuw i8 %i.ij to i1
  br label %bb.m

._crit_edge:                                      ; preds = %bb.o
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  %i.im = load <2 x float>, ptr %i.il, align 4, !tbaa !12
  %i.in = insertelement <2 x float> poison, float %.0181, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = fmul <2 x float> %i.io, %i.im
  store <2 x float> %i.ip, ptr %i.il, align 4, !tbaa !12
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i64 %i.cb, ptr %i.iq, align 16, !tbaa !485
  %i.ir = add nsw i64 %i.cb, -2
  br label %.lr.ph214

bb.m:                                             ; preds = %.lr.ph, %bb.o
  %.055211 = phi i64 [ 0, %.lr.ph ], [ %i.je, %bb.o ] ; 4 uses
  %i.is = getelementptr [4 x i8], ptr %i.bz, i64 %.055211
  %.idx.i79 = shl i64 %.055211, 3                 ; 2 uses
  %i.it = getelementptr i8, ptr %i.is, i64 %.idx.i79
  %i.iu = load float, ptr %i.it, align 4, !tbaa !12 ; 2 uses
  %i.iv = tail call noundef float @llvm.fabs.f32(float %i.iu)
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.055211
  store float %i.iv, ptr %i.iw, align 4, !tbaa !12
  %i.ix = load i8, ptr %i.ce, align 4, !range !78
  %i.iy = trunc nuw i8 %i.ix to i1
  %i.iz = select i1 %i.ik, i1 true, i1 %i.iy
  %i.ja = fcmp olt float %i.iu, 0.000000e+00
  %or.cond = and i1 %i.ja, %i.iz
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.jb = getelementptr inbounds i8, ptr %0, i64 %.idx.i79 ; 2 uses
  %i.jc = load <2 x float>, ptr %i.jb, align 8, !tbaa !12
  %i.jd = fneg <2 x float> %i.jc
  store <2 x float> %i.jd, ptr %i.jb, align 8, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.je = add nuw nsw i64 %.055211, 1             ; 2 uses
  %exitcond217.not = icmp eq i64 %i.je, %i.cb
  br i1 %exitcond217.not, label %._crit_edge, label %bb.m, !llvm.loop !476

.lr.ph214:                                        ; preds = %._crit_edge, %.thread192
  %.0212 = phi i64 [ %i.le, %.thread192 ], [ 0, %._crit_edge ] ; 9 uses
  %i.jf = xor i64 %.0212, -1
  %i.jg = add nsw i64 %i.cb, %i.jf                ; 3 uses
  %i.jh = sub nuw nsw i64 %i.cb, %.0212           ; 2 uses
  %i.ji = sub nsw i64 2, %i.jh
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.ji ; 4 uses
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !12 ; 5 uses
  %i.jl = icmp sgt i64 %i.jh, 1
  br i1 %i.jl, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.thread188

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph214
  %xtraiter = and i64 %i.jg, 1
  %i.jm = icmp eq i64 %i.ir, %.0212
  br i1 %i.jm, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.jg, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.sroa.7.0.i.i = phi float [ %i.jk, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.02123.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.jx, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.jn = phi float [ %i.jk, %.lr.ph.i.i.i.i.preheader.new ], [ %i.jw, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.jo = getelementptr [4 x i8], ptr %i.jj, i64 %.02123.i.i.i.i
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !12 ; 3 uses
  %i.jq = fcmp ogt float %i.jp, %i.jn             ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.jq, i64 %.02123.i.i.i.i, i64 %.sroa.0.0.i.i
  %.sroa.7.1.i.i = select i1 %i.jq, float %i.jp, float %.sroa.7.0.i.i
  %i.jr = select i1 %i.jq, float %i.jp, float %i.jn ; 2 uses
  %i.js = add nuw nsw i64 %.02123.i.i.i.i, 1      ; 2 uses
  %i.jt = getelementptr [4 x i8], ptr %i.jj, i64 %i.js
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !12 ; 3 uses
  %i.jv = fcmp ogt float %i.ju, %i.jr             ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.jv, i64 %i.js, i64 %.sroa.0.1.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.jv, float %i.ju, float %.sroa.7.1.i.i ; 3 uses
  %i.jw = select i1 %i.jv, float %i.ju, float %i.jr ; 2 uses
  %i.jx = add nuw nsw i64 %.02123.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !477

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.unr-lcssa ]
  %.sroa.7.0.i.i.epil.init = phi float [ %i.jk, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.unr-lcssa ]
  %.02123.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.jx, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.unr-lcssa ] ; 2 uses
  %.epil.init = phi float [ %i.jk, %.lr.ph.i.i.i.i.preheader ], [ %i.jw, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.unr-lcssa ]
  %lcmp.mod243 = trunc i64 %i.jg to i1
  tail call void @llvm.assume(i1 %lcmp.mod243)
  %i.jy = getelementptr [4 x i8], ptr %i.jj, i64 %.02123.i.i.i.i.epil.init
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !12 ; 2 uses
  %i.ka = fcmp ogt float %i.jz, %.epil.init       ; 2 uses
  %.sroa.0.1.i.i.epil = select i1 %i.ka, i64 %.02123.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  %.sroa.7.1.i.i.epil = select i1 %i.ka, float %i.jz, float %.sroa.7.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.7.1.i.i.lcssa = phi float [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.kb = fcmp une float %.sroa.7.1.i.i.lcssa, 0.000000e+00
  br i1 %i.kb, label %bb.p, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.thread

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.thread188: ; preds = %.lr.ph214
  %i.kc = fcmp une float %i.jk, 0.000000e+00
  br i1 %i.kc, label %.thread192, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.thread

bb.p:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit
  %.not63 = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not63, label %.thread192, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.kd = add nuw nsw i64 %.sroa.0.1.i.i.lcssa, %.0212 ; 3 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %.0212 ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.kd ; 2 uses
  %i.kg = load float, ptr %i.ke, align 4, !tbaa !12
  %i.kh = load float, ptr %i.kf, align 4, !tbaa !12
  store float %i.kh, ptr %i.ke, align 4, !tbaa !12
  store float %i.kg, ptr %i.kf, align 4, !tbaa !12
  %i.ki = load i8, ptr %i.cd, align 1, !tbaa !80, !range !78, !noundef !79
  %i.kj = trunc nuw i8 %i.ki to i1
  %i.kk = load i8, ptr %i.ce, align 4, !range !78
  %i.kl = trunc nuw i8 %i.kk to i1
  %i.km = select i1 %i.kj, i1 true, i1 %i.kl
  br i1 %i.km, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.idx.i.i.i.i81 = shl nsw i64 %i.kd, 3
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i81 ; 2 uses
  %.idx.i.i.i.i82 = shl nuw nsw i64 %.0212, 3
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i82 ; 2 uses
  %i.kp = load <2 x float>, ptr %i.kn, align 8, !tbaa !12
  %i.kq = load <2 x float>, ptr %i.ko, align 8, !tbaa !12
  store <2 x float> %i.kq, ptr %i.kn, align 8, !tbaa !12
  store <2 x float> %i.kp, ptr %i.ko, align 8, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.kr = load i8, ptr %i.cf, align 1, !tbaa !81, !range !78, !noundef !79
  %i.ks = trunc nuw i8 %i.kr to i1
  %i.kt = load i8, ptr %i.cg, align 2, !range !78
  %i.ku = trunc nuw i8 %i.kt to i1
  %i.kv = select i1 %i.ks, i1 true, i1 %i.ku
  br i1 %i.kv, label %bb.t, label %.thread192

bb.t:                                             ; preds = %bb.s
  %.idx.i.i.i.i83 = mul nuw nsw i64 %i.kd, 12
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i.i.i.i83 ; 3 uses
  %.idx.i.i.i.i84 = mul nuw nsw i64 %.0212, 12
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i.i.i.i84 ; 3 uses
  %i.ky = load <2 x float>, ptr %i.kw, align 4, !tbaa !12
  %i.kz = load <2 x float>, ptr %i.kx, align 4, !tbaa !12
  store <2 x float> %i.kz, ptr %i.kw, align 4, !tbaa !12
  store <2 x float> %i.ky, ptr %i.kx, align 4, !tbaa !12
  %i.la = getelementptr i8, ptr %i.kw, i64 8      ; 2 uses
  %i.lb = getelementptr i8, ptr %i.kx, i64 8      ; 2 uses
  %i.lc = load float, ptr %i.la, align 4, !tbaa !12
  %i.ld = load float, ptr %i.lb, align 4, !tbaa !12
  store float %i.ld, ptr %i.la, align 4, !tbaa !12
  store float %i.lc, ptr %i.lb, align 4, !tbaa !12
  br label %.thread192

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.thread: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.thread188
  store i64 %.0212, ptr %i.iq, align 16, !tbaa !485
  br label %.loopexit

.thread192:                                       ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.thread188, %bb.p, %bb.t, %bb.s
  %i.le = add nuw nsw i64 %.0212, 1               ; 2 uses
  %exitcond218.not = icmp eq i64 %i.le, %i.cb
  br i1 %exitcond218.not, label %.loopexit, label %.lr.ph214, !llvm.loop !478

.loopexit.critedge:                               ; preds = %.preheader
  %i.lf = load <2 x float>, ptr %i.ii, align 4, !tbaa !12
  %i.lg = insertelement <2 x float> poison, float %.0181, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.li = fmul <2 x float> %i.lh, %i.lf
  store <2 x float> %i.li, ptr %i.ii, align 4, !tbaa !12
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.cb, ptr %i.lj, align 16, !tbaa !485
  br label %.loopexit

.loopexit:                                        ; preds = %.thread192, %.loopexit.critedge, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEfPT_.exit.thread
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.lk, align 16, !tbaa !483
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIfLi2ELi3ELi0ELi2ELi3EEELi2ELi0ELb1EE3runERNS_9JacobiSVDIS3_Li2EEERKS3_(ptr noundef nonnull align 16 dereferenceable(164) %0, ptr noundef nonnull align 16 dereferenceable(348) %1, ptr noundef nonnull align 4 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::HouseholderSequence", align 8 ; 8 uses
  %4 = alloca %"class.Eigen::HouseholderSequence", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load float, ptr %2, align 4, !tbaa !12
  store float %i.b, ptr %i.a, align 16, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !12
  store float %i.e, ptr %i.c, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load float, ptr %i.g, align 4, !tbaa !12
  store float %i.h, ptr %i.f, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !12
  store float %i.k, ptr %i.i, align 4, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !12 ; 2 uses
  store float %i.n, ptr %i.l, align 16, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = load float, ptr %i.p, align 4, !tbaa !12 ; 2 uses
  store float %i.q, ptr %i.o, align 4, !tbaa !12
  %i.r = load <4 x float>, ptr %i.a, align 16, !tbaa !13
  store <4 x float> %i.r, ptr %0, align 16, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store float %i.n, ptr %i.s, align 16, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.q, ptr %i.t, align 4, !tbaa !12
  tail call void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEEE14computeInPlaceEv(ptr noundef nonnull align 16 dereferenceable(120) %0)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.v = load float, ptr %0, align 16, !tbaa !12
  store float %i.v, ptr %i.u, align 16, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !12
  %i.z = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.y, i64 0
  store <2 x float> %i.z, ptr %i.w, align 4, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ab = load float, ptr %i.s, align 16, !tbaa !12
  store float %i.ab, ptr %i.aa, align 4, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 69
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !81, !range !78, !noundef !79
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %0, ptr %3, align 8, !tbaa !86, !alias.scope !490
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !88, !alias.scope !490
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.ah, align 8, !tbaa !90, !alias.scope !490
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 2, ptr %i.ai, align 8, !tbaa !91, !alias.scope !490
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.aj, align 8, !tbaa !92, !alias.scope !490
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEENS1_IfLi2ELi1ELi0ELi2ELi1EEELi1EE6evalToINS1_IfLi3ELi3ELi0ELi3ELi3EEENS1_IfLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(36) %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 70
  %i.an = load i8, ptr %i.am, align 2, !tbaa !82, !range !78, !noundef !79
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ap, align 16, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.aq, align 16, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float 1.000000e+00, ptr %i.ar, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %0, ptr %4, align 8, !tbaa !86, !alias.scope !491
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !88, !alias.scope !491
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.au, align 8, !tbaa !90, !alias.scope !491
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 2, ptr %i.av, align 8, !tbaa !91, !alias.scope !491
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.aw, align 8, !tbaa !92, !alias.scope !491
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEENS1_IfLi2ELi1ELi0ELi2ELi1EEELi1EE18applyThisOnTheLeftINS1_IfLi3ELi3ELi0ELi3ELi3EEENS1_IfLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 4 dereferenceable(36) %i.ap, ptr noundef nonnull align 4 dereferenceable(12) %i.ax, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 67
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !80, !range !78, !noundef !79
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bc = load i8, ptr %i.bb, align 4, !range !78
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = select i1 %i.ba, i1 true, i1 %i.bd
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.bg = load i32, ptr %i.bf, align 16, !tbaa !93
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr [4 x i8], ptr %1, i64 %i.bh
  store float 1.000000e+00, ptr %i.bi, align 4, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !93
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr [4 x i8], ptr %1, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  store float 1.000000e+00, ptr %i.bn, align 4, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEENS1_IfLi2ELi1ELi0ELi2ELi1EEELi1EE6evalToINS1_IfLi3ELi3ELi0ELi3ELi3EEENS1_IfLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.1042", align 8 ; 10 uses
  %4 = alloca %"class.Eigen::Block.1053", align 8 ; 9 uses
  %5 = alloca %"class.Eigen::Block.1042", align 8 ; 10 uses
  %6 = alloca %"class.Eigen::Block.1053", align 8 ; 9 uses
  %7 = alloca %"class.Eigen::Block.1042", align 8 ; 10 uses
  %8 = alloca %"class.Eigen::Block.1053", align 8 ; 9 uses
  %9 = alloca %"class.Eigen::Block.1042", align 8 ; 10 uses
  %10 = alloca %"class.Eigen::Block.1053", align 8 ; 9 uses
end_hunk_0
begin_hunk_1_@_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEENS1_IfLi2ELi1ELi0ELi2ELi1EEELi1EE6evalToINS1_IfLi3ELi3ELi0ELi3ELi3EEENS1_IfLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_:bb.a
  %i.en = sub i64 3, %i.em                        ; 4 uses
  %i.eo = load i8, ptr %i.dn, align 8, !tbaa !90, !range !78, !noundef !79
  %i.ep = trunc nuw i8 %i.eo to i1
  %i.eq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.em
  %.idx.i.i.i.i69 = mul nsw i64 %i.em, 12
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %.idx.i.i.i.i69 ; 2 uses
  %i.es = add nsw i64 %i.el, %.0.in103            ; 5 uses
  %i.et = sub nsw i64 3, %i.es                    ; 2 uses
  %.idx.i.i.i.i.i70 = mul nuw nsw i64 %.0104, 12  ; 2 uses
  br i1 %i.ep, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr %i.er, ptr %7, align 8, !tbaa !99, !alias.scope !527
  store i64 %i.en, ptr %i.ea, align 8, !tbaa !100, !alias.scope !527
  store i64 %i.en, ptr %i.eb, align 8, !tbaa !100, !alias.scope !527
  store ptr %1, ptr %i.ec, align 8, !tbaa !102, !alias.scope !527
  store i64 %i.em, ptr %i.ed, align 8, !tbaa !100, !alias.scope !527
  store i64 %i.em, ptr %i.ee, align 8, !tbaa !100, !alias.scope !527
  store i64 3, ptr %i.ef, align 8, !tbaa !105, !alias.scope !527
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %i.eu = load ptr, ptr %0, align 8, !tbaa !94, !noalias !530, !nonnull !79, !align !95 ; 2 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.es
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.idx.i.i.i.i.i70
  store ptr %i.ew, ptr %8, align 8, !tbaa !108, !alias.scope !530
  store i64 %i.et, ptr %i.eg, align 8, !tbaa !100, !alias.scope !530
  store ptr %i.eu, ptr %i.eh, align 8, !tbaa !86, !alias.scope !530
  store i64 %i.es, ptr %i.ei, align 8, !tbaa !100, !alias.scope !530
  store i64 %.0104, ptr %i.ej, align 8, !tbaa !100, !alias.scope !530
  store i64 3, ptr %i.ek, align 8, !tbaa !110, !alias.scope !530
  %i.ex = load ptr, ptr %i.dz, align 8, !tbaa !111, !nonnull !79, !align !95
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %.0104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKNS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.ey, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %i.er, ptr %9, align 8, !tbaa !99, !alias.scope !531
  store i64 %i.en, ptr %i.do, align 8, !tbaa !100, !alias.scope !531
  store i64 %i.en, ptr %i.dp, align 8, !tbaa !100, !alias.scope !531
  store ptr %1, ptr %i.dq, align 8, !tbaa !102, !alias.scope !531
  store i64 %i.em, ptr %i.dr, align 8, !tbaa !100, !alias.scope !531
  store i64 %i.em, ptr %i.ds, align 8, !tbaa !100, !alias.scope !531
  store i64 3, ptr %i.dt, align 8, !tbaa !105, !alias.scope !531
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.ez = load ptr, ptr %0, align 8, !tbaa !94, !noalias !534, !nonnull !79, !align !95 ; 2 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.es
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx.i.i.i.i.i70
  store ptr %i.fb, ptr %10, align 8, !tbaa !108, !alias.scope !534
  store i64 %i.et, ptr %i.du, align 8, !tbaa !100, !alias.scope !534
  store ptr %i.ez, ptr %i.dv, align 8, !tbaa !86, !alias.scope !534
  store i64 %i.es, ptr %i.dw, align 8, !tbaa !100, !alias.scope !534
  store i64 %.0104, ptr %i.dx, align 8, !tbaa !100, !alias.scope !534
  store i64 3, ptr %i.dy, align 8, !tbaa !110, !alias.scope !534
  %i.fc = load ptr, ptr %i.dz, align 8, !tbaa !111, !nonnull !79, !align !95
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %.0104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.fd, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fe = icmp samesign ugt i64 %.0.in103, 1
  br i1 %i.fe, label %bb.i, label %.loopexit, !llvm.loop !518

.loopexit:                                        ; preds = %bb.l, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68, %bb.h, %.preheader, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEENS1_IfLi2ELi1ELi0ELi2ELi1EEELi1EE18applyThisOnTheLeftINS1_IfLi3ELi3ELi0ELi3ELi3EEENS1_IfLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Block.561", align 8  ; 10 uses
  %5 = alloca %"class.Eigen::Block.1042", align 8 ; 10 uses
  %6 = alloca %"class.Eigen::VectorBlock.1551", align 8 ; 8 uses
  %7 = alloca %"class.Eigen::Block.1042", align 8 ; 14 uses
  %8 = alloca %"class.Eigen::Block.1053", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !range !78
  %.fr66 = freeze i8 %i.b
  %i.c = trunc i8 %.fr66 to i1
  %or.cond67 = xor i1 %i.c, true
  %.048.shrunk = and i1 %3, %or.cond67            ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !91   ; 7 uses
  %i.f = icmp sgt i64 %i.e, 47
  br i1 %i.f, label %.lr.ph65, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i64 %i.e, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.048.shrunk, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %i.u = phi i64 [ %i.an, %.lr.ph.split.us ], [ %i.e, %.lr.ph ]
  %.063.us = phi i64 [ %i.am, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.v = load i8, ptr %i.a, align 8, !tbaa !90, !range !78, !noundef !79
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = xor i64 %.063.us, -1
  %i.y = add i64 %i.u, %i.x
  %i.z = select i1 %i.w, i64 %.063.us, i64 %i.y   ; 4 uses
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !92
  %i.ab = add i64 %i.z, %i.aa                     ; 7 uses
  %i.ac = sub i64 3, %i.ab                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ab
  %.idx.i.i.i.i.us = mul nsw i64 %i.ab, 12
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i.i.i.i.us
  store ptr %i.ae, ptr %7, align 8, !tbaa !99, !alias.scope !545
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !100, !alias.scope !545
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !100, !alias.scope !545
  store ptr %1, ptr %i.k, align 8, !tbaa !102, !alias.scope !545
  store i64 %i.ab, ptr %i.l, align 8, !tbaa !100, !alias.scope !545
  store i64 %i.ab, ptr %i.m, align 8, !tbaa !100, !alias.scope !545
  store i64 3, ptr %i.n, align 8, !tbaa !105, !alias.scope !545
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.af = add i64 %i.ab, 1                        ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !94, !noalias !548, !nonnull !79, !align !95 ; 2 uses
  %i.ah = sub i64 2, %i.ab
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.af
  %.idx.i.i.i.i.i.us = mul nsw i64 %i.z, 12
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %.idx.i.i.i.i.i.us
  store ptr %i.aj, ptr %8, align 8, !tbaa !108, !alias.scope !548
  store i64 %i.ah, ptr %i.o, align 8, !tbaa !100, !alias.scope !548
  store ptr %i.ag, ptr %i.p, align 8, !tbaa !86, !alias.scope !548
  store i64 %i.af, ptr %i.q, align 8, !tbaa !100, !alias.scope !548
  store i64 %i.z, ptr %i.r, align 8, !tbaa !100, !alias.scope !548
  store i64 3, ptr %i.s, align 8, !tbaa !110, !alias.scope !548
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !111, !nonnull !79, !align !95
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.z
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.am = add nuw nsw i64 %.063.us, 1             ; 2 uses
  %i.an = load i64, ptr %i.d, align 8, !tbaa !91  ; 2 uses
  %i.ao = icmp slt i64 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !541

.lr.ph65:                                         ; preds = %bb.a
  %i.ap = icmp samesign ult i64 %i.e, 96
  %.lhs.trunc = add nuw i64 %i.e, 1
  %i.aq = lshr i64 %.lhs.trunc, 1
  %.zext = and i64 %i.aq, 127
  %i.ar = select i1 %i.ap, i64 %.zext, i64 48     ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph65, %bb.d
  %i.bk = phi i64 [ %i.e, %.lr.ph65 ], [ %i.cf, %bb.d ] ; 2 uses
  %.04764 = phi i64 [ 0, %.lr.ph65 ], [ %.pre-phi, %bb.d ] ; 4 uses
  %i.bl = load i8, ptr %i.a, align 8, !tbaa !90, !range !78, !noundef !79
  %i.bm = trunc nuw i8 %i.bl to i1                ; 2 uses
  br i1 %i.bm, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.bn = add nuw nsw i64 %.04764, %i.ar          ; 2 uses
  %.sroa.speculated58 = call i64 @llvm.smin.i64(i64 %i.bn, i64 %i.bk)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = sub nsw i64 %i.bk, %.04764              ; 2 uses
  %i.bp = sub nsw i64 %i.bo, %i.ar
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.bp, i64 0)
  %.pre = add nuw nsw i64 %.04764, %i.ar
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.pre-phi = phi i64 [ %i.bn, %.thread ], [ %.pre, %bb.c ] ; 2 uses
  %i.bq = phi i64 [ %.sroa.speculated58, %.thread ], [ %i.bo, %bb.c ]
  %i.br = phi i64 [ %.04764, %.thread ], [ %.sroa.speculated, %bb.c ] ; 6 uses
  %i.bs = sub nsw i64 %i.bq, %i.br                ; 2 uses
  %i.bt = load i64, ptr %i.as, align 8, !tbaa !92
  %i.bu = add i64 %i.bt, %i.br                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.bv = load ptr, ptr %0, align 8, !tbaa !94, !nonnull !79, !align !95 ; 2 uses
  %i.bw = sub i64 3, %i.bu                        ; 3 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bu
  %.idx.i.i.i = mul nsw i64 %i.br, 12
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %.idx.i.i.i
  store ptr %i.by, ptr %4, align 8, !tbaa !113
  store i64 %i.bw, ptr %i.at, align 8, !tbaa !100
  store i64 %i.bs, ptr %i.au, align 8, !tbaa !100
  store ptr %i.bv, ptr %i.av, align 8, !tbaa !86
  store i64 %i.bu, ptr %i.aw, align 8, !tbaa !100
  store i64 %i.br, ptr %i.ax, align 8, !tbaa !100
  store i64 3, ptr %i.ay, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.bz = select i1 %.048.shrunk, i64 %i.bu, i64 0 ; 2 uses
  %spec.select = select i1 %.048.shrunk, i64 %i.bw, i64 3
  %i.ca = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bu
  %.idx.i.i.i54 = mul nsw i64 %i.bz, 12
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %.idx.i.i.i54
  store ptr %i.cb, ptr %5, align 8, !tbaa !99
  store i64 %i.bw, ptr %i.az, align 8, !tbaa !100
  store i64 %spec.select, ptr %i.ba, align 8, !tbaa !100
  store ptr %1, ptr %i.bb, align 8, !tbaa !102
  store i64 %i.bu, ptr %i.bc, align 8, !tbaa !100
  store i64 %i.bz, ptr %i.bd, align 8, !tbaa !100
  store i64 3, ptr %i.be, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.cc = load ptr, ptr %i.bf, align 8, !tbaa !111, !nonnull !79, !align !95 ; 2 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.br
  store ptr %i.cd, ptr %6, align 8, !tbaa !118, !alias.scope !549
  store i64 %i.bs, ptr %i.bg, align 8, !tbaa !100, !alias.scope !549
  store ptr %i.cc, ptr %i.bh, align 8, !tbaa !88, !alias.scope !549
  store i64 %i.br, ptr %i.bi, align 8, !tbaa !100, !alias.scope !549
  store i64 2, ptr %i.bj, align 8, !tbaa !551, !alias.scope !549
  %i.ce = xor i1 %i.bm, true
  call void @_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS2_INS3_IfLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS3_IfLi2ELi1ELi0ELi2ELi1EEELin1EEEEEvRT_RKT0_RKT1_b(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %6, i1 noundef zeroext %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !91  ; 2 uses
  %i.cg = icmp slt i64 %.pre-phi, %i.cf
  br i1 %i.cg, label %bb.b, label %.loopexit, !llvm.loop !544

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.ch = phi i64 [ %i.cz, %.lr.ph.split ], [ %i.e, %.lr.ph ]
  %.063 = phi i64 [ %i.cy, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %i.ci = load i8, ptr %i.a, align 8, !tbaa !90, !range !78, !noundef !79
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = xor i64 %.063, -1
  %i.cl = add i64 %i.ch, %i.ck
  %i.cm = select i1 %i.cj, i64 %.063, i64 %i.cl   ; 4 uses
  %i.cn = load i64, ptr %i.h, align 8, !tbaa !92
  %i.co = add i64 %i.cm, %i.cn                    ; 5 uses
  %i.cp = sub i64 3, %i.co
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.cq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.co
  store ptr %i.cq, ptr %7, align 8, !tbaa !99, !alias.scope !545
  store i64 %i.cp, ptr %i.i, align 8, !tbaa !100, !alias.scope !545
  store i64 3, ptr %i.j, align 8, !tbaa !100, !alias.scope !545
  store ptr %1, ptr %i.k, align 8, !tbaa !102, !alias.scope !545
  store i64 %i.co, ptr %i.l, align 8, !tbaa !100, !alias.scope !545
  store i64 0, ptr %i.m, align 8, !tbaa !100, !alias.scope !545
  store i64 3, ptr %i.n, align 8, !tbaa !105, !alias.scope !545
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.cr = add i64 %i.co, 1                        ; 2 uses
  %i.cs = load ptr, ptr %0, align 8, !tbaa !94, !noalias !548, !nonnull !79, !align !95 ; 2 uses
  %i.ct = sub i64 2, %i.co
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cr
  %.idx.i.i.i.i.i = mul nsw i64 %i.cm, 12
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %.idx.i.i.i.i.i
  store ptr %i.cv, ptr %8, align 8, !tbaa !108, !alias.scope !548
  store i64 %i.ct, ptr %i.o, align 8, !tbaa !100, !alias.scope !548
  store ptr %i.cs, ptr %i.p, align 8, !tbaa !86, !alias.scope !548
  store i64 %i.cr, ptr %i.q, align 8, !tbaa !100, !alias.scope !548
  store i64 %i.cm, ptr %i.r, align 8, !tbaa !100, !alias.scope !548
  store i64 3, ptr %i.s, align 8, !tbaa !110, !alias.scope !548
  %i.cw = load ptr, ptr %i.t, align 8, !tbaa !111, !nonnull !79, !align !95
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cm
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IfLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.cx, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.cy = add nuw nsw i64 %.063, 1                ; 2 uses
  %i.cz = load i64, ptr %i.d, align 8, !tbaa !91  ; 2 uses
  %i.da = icmp slt i64 %i.cy, %i.cz
  br i1 %i.da, label %.lr.ph.split, label %.loopexit, !llvm.loop !541

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.d, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIfLi3ELi2ELi0ELi3ELi2EEEE14computeInPlaceEv(ptr noundef nonnull align 16 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader.i.i.i.i:
  %1 = alloca %"class.Eigen::VectorBlock.610", align 8 ; 12 uses
  %i.a = alloca float, align 4                    ; 8 uses
  %2 = alloca %"class.Eigen::VectorBlock.547", align 8 ; 18 uses
  %3 = alloca %"class.Eigen::Block.561", align 8  ; 14 uses
  %4 = alloca %"class.Eigen::VectorBlock.547", align 8 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load <4 x float>, ptr %0, align 16, !tbaa !12 ; 3 uses
  %i.f = shufflevector <4 x float> %i.e, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.g = fmul <2 x float> %i.f, %i.f
  %i.h = load <2 x float>, ptr %i.d, align 16, !tbaa !12 ; 2 uses
  %i.i = shufflevector <4 x float> %i.e, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.j = shufflevector <2 x float> %i.h, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.k = shufflevector <4 x float> %i.e, <4 x float> %i.j, <2 x i32> <i32 1, i32 4> ; 2 uses
  %i.l = fmul <2 x float> %i.k, %i.k
  %i.m = shufflevector <2 x float> %i.i, <2 x float> %i.h, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.n = fmul <2 x float> %i.m, %i.m
  %i.o = fadd <2 x float> %i.l, %i.n
  %i.p = fadd <2 x float> %i.g, %i.o
  %i.q = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.p) ; 3 uses
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %i.r, ptr %i.b, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = extractelement <2 x float> %i.q, i64 0   ; 2 uses
  %i.v = extractelement <2 x float> %i.q, i64 1   ; 2 uses
  %i.w = fcmp olt float %i.u, %i.v
  %i.x = select i1 %i.w, float %i.v, float %i.u
  %i.y = fmul float %i.x, f0x34000000             ; 2 uses
  %i.z = fmul float %i.y, %i.y
  %i.aa = fdiv float %i.z, 3.000000e+00           ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  store i64 2, ptr %i.ab, align 8, !tbaa !558
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  store float 0.000000e+00, ptr %i.ac, align 16, !tbaa !559
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %.sroa.6107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %.sroa.7108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %.sroa.8109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %.sroa.6101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.sroa.7102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.sroa.8103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.av = load float, ptr %i.b, align 8, !tbaa !12 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !12 ; 2 uses
  %i.ay = fcmp ogt float %i.ax, %i.av             ; 2 uses
  %.sroa.7.1.i.i = select i1 %i.ay, float %i.ax, float %i.av ; 2 uses
  %.sroa.5.1.i.i = zext i1 %i.ay to i64           ; 5 uses
  %i.az = fmul float %.sroa.7.1.i.i, %.sroa.7.1.i.i
  %i.ba = load i64, ptr %i.ab, align 8, !tbaa !558
  %i.bb = icmp eq i64 %i.ba, 2
  %i.bc = fmul float %i.aa, 3.000000e+00
  %i.bd = fcmp olt float %i.az, %i.bc
  %or.cond = select i1 %i.bb, i1 %i.bd, i1 false
  br i1 %or.cond, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.preheader.i.i.i.i
  store i64 0, ptr %i.ab, align 8, !tbaa !558
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.i.i.i.i
  store i64 %.sroa.5.1.i.i, ptr %i.t, align 16, !tbaa !120
  %.not81 = icmp eq i64 %.sroa.5.1.i.i, 0         ; 2 uses
  br i1 %.not81, label %._crit_edge152, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i.i83 = mul nuw nsw i64 %.sroa.5.1.i.i, 12
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i83 ; 3 uses
  %i.bf = load <2 x float>, ptr %0, align 16, !tbaa !12
  %i.bg = load <2 x float>, ptr %i.be, align 4, !tbaa !12
  store <2 x float> %i.bg, ptr %0, align 16, !tbaa !12
  store <2 x float> %i.bf, ptr %i.be, align 4, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi3ELi0ELi2ELi3EEELi2EE7computeERKS2_j:bb.a
  %i.hp = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.hk, double %i.ho)
  store double %i.hp, ptr %i.hj, align 8, !tbaa !15
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit71.thread.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.hq = load double, ptr %i.hz, align 8, !tbaa !15
  %i.hr = tail call noundef double @llvm.fabs.f64(double %i.hq) ; 2 uses
  %i.hs = load double, ptr %i.co, align 8, !tbaa !15
  %i.ht = tail call noundef double @llvm.fabs.f64(double %i.hs) ; 2 uses
  %i.hu = fcmp olt double %i.hr, %i.ht
  %.sroa.speculated.us = select i1 %i.hu, double %i.ht, double %i.hr ; 2 uses
  %i.hv = fcmp olt double %.2184203.us, %.sroa.speculated.us
  %.sroa.speculated132.us = select i1 %i.hv, double %.sroa.speculated.us, double %.2184203.us
  br label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us, %bb.f
  %.3185.us = phi double [ %.sroa.speculated132.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us ], [ %.2184203.us, %bb.f ] ; 2 uses
  %.3.us = phi i1 [ false, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us ], [ %.2204.us, %bb.f ] ; 3 uses
  %i.hw = add nuw nsw i64 %.056205.us, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.hw, %.057209.us
  br i1 %exitcond.not, label %bb.l, label %bb.e, !llvm.loop !1039

bb.l:                                             ; preds = %bb.k
  %i.hx = add nuw nsw i64 %.057209.us, 1          ; 2 uses
  %exitcond218.not = icmp eq i64 %i.hx, %i.br     ; 3 uses
  %brmerge.not = select i1 %exitcond218.not, i1 %.3.us, i1 false
  %.mux = select i1 %exitcond218.not, i64 1, i64 %i.hx
  %.3.us.mux = select i1 %exitcond218.not, i1 true, i1 %.3.us
  br i1 %brmerge.not, label %.preheader, label %.preheader198.us, !llvm.loop !1040

.preheader198.us:                                 ; preds = %bb.l, %.preheader199.us.preheader
  %.057209.us = phi i64 [ %.mux, %bb.l ], [ 1, %.preheader199.us.preheader ] ; 5 uses
  %.1208.us = phi i1 [ %.3.us.mux, %bb.l ], [ true, %.preheader199.us.preheader ]
  %.1183207.us = phi double [ %.3185.us, %bb.l ], [ %i.cb, %.preheader199.us.preheader ]
  %i.hy = getelementptr [8 x i8], ptr %i.bp, i64 %.057209.us ; 5 uses
  %.idx.i64.us = shl i64 %.057209.us, 4           ; 4 uses
  %invariant.gep.us = getelementptr i8, ptr %i.bp, i64 %.idx.i64.us ; 3 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 %.idx.i64.us ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %0, i64 %.idx.i64.us ; 2 uses
  %.idx.i.i.i.i.i74.us = mul nuw nsw i64 %.057209.us, 24
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i.i.i.i.i74.us ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.bp, i64 %.idx.i64.us
  br label %bb.e

.preheader:                                       ; preds = %bb.l, %bb.d
  %i.ie = icmp sgt i64 %i.br, 0
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  br i1 %i.ie, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.ig = insertelement <2 x double> poison, double %.0181, i64 0
  %i.ih = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ii = load <2 x double>, ptr %i.if, align 16, !tbaa !13
  %i.ij = fmul <2 x double> %i.ih, %i.ii
  store <2 x double> %i.ij, ptr %i.if, align 16, !tbaa !13
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.br, ptr %i.ik, align 16, !tbaa !1051
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.n
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.im = insertelement <2 x double> poison, double %.0181, i64 0
  %i.in = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> zeroinitializer
  %i.io = load <2 x double>, ptr %i.il, align 16, !tbaa !13
  %i.ip = fmul <2 x double> %i.in, %i.io
  store <2 x double> %i.ip, ptr %i.il, align 16, !tbaa !13
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i64 %i.jh, ptr %i.iq, align 16, !tbaa !1051
  %i.ir = icmp sgt i64 %i.jh, 0
  br i1 %i.ir, label %.lr.ph215, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.n
  %i.is = phi i64 [ %i.jh, %bb.n ], [ %i.br, %.preheader ]
  %.055212 = phi i64 [ %i.ji, %bb.n ], [ 0, %.preheader ] ; 4 uses
  %i.it = getelementptr [8 x i8], ptr %i.bp, i64 %.055212
  %.idx.i79 = shl i64 %.055212, 4                 ; 2 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 %.idx.i79
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !15 ; 2 uses
  %i.iw = tail call noundef double @llvm.fabs.f64(double %i.iv)
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %.055212
  store double %i.iw, ptr %i.ix, align 8, !tbaa !15
  %i.iy = load i8, ptr %i.bt, align 1, !tbaa !306, !range !78, !noundef !79
  %i.iz = trunc nuw i8 %i.iy to i1
  %i.ja = load i8, ptr %i.bu, align 8, !range !78
  %i.jb = trunc nuw i8 %i.ja to i1
  %i.jc = select i1 %i.iz, i1 true, i1 %i.jb
  %i.jd = fcmp olt double %i.iv, 0.000000e+00
  %or.cond = and i1 %i.jd, %i.jc
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.je = getelementptr inbounds i8, ptr %0, i64 %.idx.i79 ; 2 uses
  %i.jf = load <2 x i64>, ptr %i.je, align 16, !tbaa !13
  %i.jg = xor <2 x i64> %i.jf, splat (i64 -9223372036854775808)
  store <2 x i64> %i.jg, ptr %i.je, align 16, !tbaa !13
  %.pre225 = load i64, ptr %i.bq, align 8, !tbaa !33
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph
  %i.jh = phi i64 [ %.pre225, %bb.m ], [ %i.is, %.lr.ph ] ; 5 uses
  %i.ji = add nuw nsw i64 %.055212, 1             ; 2 uses
  %i.jj = icmp slt i64 %i.ji, %i.jh
  br i1 %i.jj, label %.lr.ph, label %._crit_edge, !llvm.loop !1041

.lr.ph215:                                        ; preds = %._crit_edge, %.thread192
  %i.jk = phi i64 [ %i.ll, %.thread192 ], [ %i.jh, %._crit_edge ] ; 3 uses
  %.0213 = phi i64 [ %i.lk, %.thread192 ], [ 0, %._crit_edge ] ; 9 uses
  %i.jl = sub nuw nsw i64 %i.jk, %.0213           ; 2 uses
  %i.jm = sub nsw i64 2, %i.jl
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.jm ; 4 uses
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !15 ; 5 uses
  %i.jp = icmp sgt i64 %i.jl, 1
  br i1 %i.jp, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread188

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph215
  %i.jq = xor i64 %.0213, -1
  %i.jr = add i64 %i.jk, %i.jq                    ; 3 uses
  %reass.sub = sub i64 %i.jk, %.0213
  %xtraiter = and i64 %i.jr, 1
  %i.js = icmp eq i64 %reass.sub, 2
  br i1 %i.js, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.jr, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.sroa.7.0.i.i = phi double [ %i.jo, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.02123.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.kd, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.jt = phi double [ %i.jo, %.lr.ph.i.i.i.i.preheader.new ], [ %i.kc, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.ju = getelementptr [8 x i8], ptr %i.jn, i64 %.02123.i.i.i.i
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !15 ; 3 uses
  %i.jw = fcmp ogt double %i.jv, %i.jt            ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.jw, i64 %.02123.i.i.i.i, i64 %.sroa.0.0.i.i
  %.sroa.7.1.i.i = select i1 %i.jw, double %i.jv, double %.sroa.7.0.i.i
  %i.jx = select i1 %i.jw, double %i.jv, double %i.jt ; 2 uses
  %i.jy = add nuw nsw i64 %.02123.i.i.i.i, 1      ; 2 uses
  %i.jz = getelementptr [8 x i8], ptr %i.jn, i64 %i.jy
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !15 ; 3 uses
  %i.kb = fcmp ogt double %i.ka, %i.jx            ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.kb, i64 %i.jy, i64 %.sroa.0.1.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.kb, double %i.ka, double %.sroa.7.1.i.i ; 3 uses
  %i.kc = select i1 %i.kb, double %i.ka, double %i.jx ; 2 uses
  %i.kd = add nuw nsw i64 %.02123.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !1042

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.sroa.7.0.i.i.epil.init = phi double [ %i.jo, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.02123.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.kd, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.jo, %.lr.ph.i.i.i.i.preheader ], [ %i.kc, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %lcmp.mod247 = trunc i64 %i.jr to i1
  tail call void @llvm.assume(i1 %lcmp.mod247)
  %i.ke = getelementptr [8 x i8], ptr %i.jn, i64 %.02123.i.i.i.i.epil.init
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !15 ; 2 uses
  %i.kg = fcmp ogt double %i.kf, %.epil.init      ; 2 uses
  %.sroa.0.1.i.i.epil = select i1 %i.kg, i64 %.02123.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  %.sroa.7.1.i.i.epil = select i1 %i.kg, double %i.kf, double %.sroa.7.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.kh = fcmp une double %.sroa.7.1.i.i.lcssa, 0.000000e+00
  br i1 %i.kh, label %bb.o, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread188: ; preds = %.lr.ph215
  %i.ki = fcmp une double %i.jo, 0.000000e+00
  br i1 %i.ki, label %.thread192, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread

bb.o:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit
  %.not63 = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not63, label %.thread192, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.kj = add nuw nsw i64 %.sroa.0.1.i.i.lcssa, %.0213 ; 3 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.0213 ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.kj ; 2 uses
  %i.km = load double, ptr %i.kk, align 8, !tbaa !15
  %i.kn = load double, ptr %i.kl, align 8, !tbaa !15
  store double %i.kn, ptr %i.kk, align 8, !tbaa !15
  store double %i.km, ptr %i.kl, align 8, !tbaa !15
  %i.ko = load i8, ptr %i.bt, align 1, !tbaa !306, !range !78, !noundef !79
  %i.kp = trunc nuw i8 %i.ko to i1
  %i.kq = load i8, ptr %i.bu, align 8, !range !78
  %i.kr = trunc nuw i8 %i.kq to i1
  %i.ks = select i1 %i.kp, i1 true, i1 %i.kr
  br i1 %i.ks, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.idx.i.i.i.i81 = shl nsw i64 %i.kj, 4
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i81 ; 2 uses
  %.idx.i.i.i.i82 = shl nuw nsw i64 %.0213, 4
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i82 ; 2 uses
  %i.kv = load <2 x double>, ptr %i.ku, align 16, !tbaa !13
  %i.kw = load <2 x double>, ptr %i.kt, align 16, !tbaa !13
  store <2 x double> %i.kw, ptr %i.ku, align 16, !tbaa !13
  store <2 x double> %i.kv, ptr %i.kt, align 16, !tbaa !13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.kx = load i8, ptr %i.bv, align 1, !tbaa !307, !range !78, !noundef !79
  %i.ky = trunc nuw i8 %i.kx to i1
  %i.kz = load i8, ptr %i.bw, align 2, !range !78
  %i.la = trunc nuw i8 %i.kz to i1
  %i.lb = select i1 %i.ky, i1 true, i1 %i.la
  br i1 %i.lb, label %bb.s, label %.thread192

bb.s:                                             ; preds = %bb.r
  %.idx.i.i.i.i83 = mul nuw nsw i64 %i.kj, 24
  %i.lc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i.i.i.i83 ; 3 uses
  %.idx.i.i.i.i84 = mul nuw nsw i64 %.0213, 24
  %i.ld = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i.i.i.i84 ; 3 uses
  %i.le = load <2 x double>, ptr %i.ld, align 8, !tbaa !13
  %i.lf = load <2 x double>, ptr %i.lc, align 8, !tbaa !13
  store <2 x double> %i.lf, ptr %i.ld, align 8, !tbaa !13
  store <2 x double> %i.le, ptr %i.lc, align 8, !tbaa !13
  %i.lg = getelementptr i8, ptr %i.lc, i64 16     ; 2 uses
  %i.lh = getelementptr i8, ptr %i.ld, i64 16     ; 2 uses
  %i.li = load double, ptr %i.lg, align 8, !tbaa !15
  %i.lj = load double, ptr %i.lh, align 8, !tbaa !15
  store double %i.lj, ptr %i.lg, align 8, !tbaa !15
  store double %i.li, ptr %i.lh, align 8, !tbaa !15
  br label %.thread192

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread188
  store i64 %.0213, ptr %i.iq, align 16, !tbaa !1051
  br label %.loopexit

.thread192:                                       ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread188, %bb.o, %bb.s, %bb.r
  %i.lk = add nuw nsw i64 %.0213, 1               ; 2 uses
  %i.ll = load i64, ptr %i.bq, align 8, !tbaa !33 ; 2 uses
  %i.lm = icmp slt i64 %i.lk, %i.ll
  br i1 %i.lm, label %.lr.ph215, label %.loopexit, !llvm.loop !1043

.loopexit:                                        ; preds = %.thread192, %._crit_edge.thread, %._crit_edge, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 1, ptr %i.ln, align 4, !tbaa !1048
  br label %bb.t

bb.t:                                             ; preds = %.loopexit, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIdLi2ELi3ELi0ELi2ELi3EEELi2ELi0ELb1EE3runERNS_9JacobiSVDIS3_Li2EEERKS3_(ptr noundef nonnull align 16 dereferenceable(264) %0, ptr noundef nonnull align 16 dereferenceable(560) %1, ptr noundef nonnull align 16 dereferenceable(48) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::HouseholderSequence.2790", align 8 ; 8 uses
  %4 = alloca %"class.Eigen::HouseholderSequence.2790", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load double, ptr %2, align 16, !tbaa !15
  store double %i.b, ptr %i.a, align 16, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load double, ptr %i.d, align 16, !tbaa !15
  store double %i.e, ptr %i.c, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load double, ptr %i.g, align 16, !tbaa !15
  store double %i.h, ptr %i.f, align 16, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !15
  store double %i.k, ptr %i.i, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load double, ptr %i.m, align 8, !tbaa !15
  store double %i.n, ptr %i.l, align 16, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = load double, ptr %i.p, align 8, !tbaa !15
  store double %i.q, ptr %i.o, align 8, !tbaa !15
  %i.r = load <2 x double>, ptr %i.a, align 16, !tbaa !13
  store <2 x double> %i.r, ptr %0, align 16, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load <2 x double>, ptr %i.f, align 16, !tbaa !13
  store <2 x double> %i.t, ptr %i.s, align 16, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load <2 x double>, ptr %i.l, align 16, !tbaa !13
  store <2 x double> %i.v, ptr %i.u, align 16, !tbaa !13
  tail call void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE14computeInPlaceEv(ptr noundef nonnull align 16 dereferenceable(184) %0)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.x = load double, ptr %0, align 16, !tbaa !15
  store double %i.x, ptr %i.w, align 16, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load double, ptr %i.z, align 8, !tbaa !15
  store double %i.aa, ptr %i.y, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 208
  store double 0.000000e+00, ptr %i.ab, align 16, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ad = load double, ptr %i.u, align 16, !tbaa !15
  store double %i.ad, ptr %i.ac, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 137
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !307, !range !78, !noundef !79
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %0, ptr %3, align 8, !tbaa !310, !alias.scope !1056
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !312, !alias.scope !1056
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.aj, align 8, !tbaa !314, !alias.scope !1056
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 2, ptr %i.ak, align 8, !tbaa !315, !alias.scope !1056
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.al, align 8, !tbaa !316, !alias.scope !1056
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE6evalToINS1_IdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 138
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !308, !range !78, !noundef !79
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store double 1.000000e+00, ptr %i.ar, align 16, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.at, align 16, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.av, align 16, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %0, ptr %4, align 8, !tbaa !310, !alias.scope !1057
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !312, !alias.scope !1057
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.ay, align 8, !tbaa !314, !alias.scope !1057
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 2, ptr %i.az, align 8, !tbaa !315, !alias.scope !1057
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.ba, align 8, !tbaa !316, !alias.scope !1057
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE18applyThisOnTheLeftINS1_IdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 135
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !306, !range !78, !noundef !79
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bg = load i8, ptr %i.bf, align 8, !range !78
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = select i1 %i.be, i1 true, i1 %i.bh
  br i1 %i.bi, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.bk = load i32, ptr %i.bj, align 16, !tbaa !93
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr [8 x i8], ptr %1, i64 %i.bl
  store double 1.000000e+00, ptr %i.bm, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !93
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr [8 x i8], ptr %1, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  store double 1.000000e+00, ptr %i.br, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE6evalToINS1_IdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.3335", align 8 ; 10 uses
  %4 = alloca %"class.Eigen::Block.3346", align 8 ; 9 uses
  %5 = alloca %"class.Eigen::Block.3335", align 8 ; 10 uses
  %6 = alloca %"class.Eigen::Block.3346", align 8 ; 9 uses
  %7 = alloca %"class.Eigen::Block.3335", align 8 ; 10 uses
  %8 = alloca %"class.Eigen::Block.3346", align 8 ; 9 uses
  %9 = alloca %"class.Eigen::Block.3335", align 8 ; 10 uses
  %10 = alloca %"class.Eigen::Block.3346", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !315  ; 7 uses
end_hunk_2
begin_hunk_3_@_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE6evalToINS1_IdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_:bb.a
  %i.el = sub i64 3, %i.ek                        ; 4 uses
  %i.em = load i8, ptr %i.dl, align 8, !tbaa !314, !range !78, !noundef !79
  %i.en = trunc nuw i8 %i.em to i1
  %i.eo = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ek
  %.idx.i.i.i.i69 = mul nsw i64 %i.ek, 24
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 %.idx.i.i.i.i69 ; 2 uses
  %i.eq = add nsw i64 %i.ej, %.0.in103            ; 5 uses
  %i.er = sub nsw i64 3, %i.eq                    ; 2 uses
  %.idx.i.i.i.i.i70 = mul nuw nsw i64 %.0104, 24  ; 2 uses
  br i1 %i.en, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr %i.ep, ptr %7, align 8, !tbaa !321, !alias.scope !1093
  store i64 %i.el, ptr %i.dy, align 8, !tbaa !100, !alias.scope !1093
  store i64 %i.el, ptr %i.dz, align 8, !tbaa !100, !alias.scope !1093
  store ptr %1, ptr %i.ea, align 8, !tbaa !323, !alias.scope !1093
  store i64 %i.ek, ptr %i.eb, align 8, !tbaa !100, !alias.scope !1093
  store i64 %i.ek, ptr %i.ec, align 8, !tbaa !100, !alias.scope !1093
  store i64 3, ptr %i.ed, align 8, !tbaa !326, !alias.scope !1093
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  %i.es = load ptr, ptr %0, align 8, !tbaa !317, !noalias !1096, !nonnull !79, !align !318 ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.eq
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %.idx.i.i.i.i.i70
  store ptr %i.eu, ptr %8, align 8, !tbaa !328, !alias.scope !1096
  store i64 %i.er, ptr %i.ee, align 8, !tbaa !100, !alias.scope !1096
  store ptr %i.es, ptr %i.ef, align 8, !tbaa !310, !alias.scope !1096
  store i64 %i.eq, ptr %i.eg, align 8, !tbaa !100, !alias.scope !1096
  store i64 %.0104, ptr %i.eh, align 8, !tbaa !100, !alias.scope !1096
  store i64 3, ptr %i.ei, align 8, !tbaa !330, !alias.scope !1096
  %i.ev = load ptr, ptr %i.dx, align 8, !tbaa !331, !nonnull !79, !align !318
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %.0104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %i.ep, ptr %9, align 8, !tbaa !321, !alias.scope !1097
  store i64 %i.el, ptr %i.dm, align 8, !tbaa !100, !alias.scope !1097
  store i64 %i.el, ptr %i.dn, align 8, !tbaa !100, !alias.scope !1097
  store ptr %1, ptr %i.do, align 8, !tbaa !323, !alias.scope !1097
  store i64 %i.ek, ptr %i.dp, align 8, !tbaa !100, !alias.scope !1097
  store i64 %i.ek, ptr %i.dq, align 8, !tbaa !100, !alias.scope !1097
  store i64 3, ptr %i.dr, align 8, !tbaa !326, !alias.scope !1097
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %i.ex = load ptr, ptr %0, align 8, !tbaa !317, !noalias !1100, !nonnull !79, !align !318 ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.eq
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.idx.i.i.i.i.i70
  store ptr %i.ez, ptr %10, align 8, !tbaa !328, !alias.scope !1100
  store i64 %i.er, ptr %i.ds, align 8, !tbaa !100, !alias.scope !1100
  store ptr %i.ex, ptr %i.dt, align 8, !tbaa !310, !alias.scope !1100
  store i64 %i.eq, ptr %i.du, align 8, !tbaa !100, !alias.scope !1100
  store i64 %.0104, ptr %i.dv, align 8, !tbaa !100, !alias.scope !1100
  store i64 3, ptr %i.dw, align 8, !tbaa !330, !alias.scope !1100
  %i.fa = load ptr, ptr %i.dx, align 8, !tbaa !331, !nonnull !79, !align !318
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %.0104
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.fb, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fc = icmp samesign ugt i64 %.0.in103, 1
  br i1 %i.fc, label %bb.i, label %.loopexit, !llvm.loop !1084

.loopexit:                                        ; preds = %bb.l, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE7setZeroEv.exit68, %bb.h, %.preheader, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19HouseholderSequenceINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEENS1_IdLi2ELi1ELi0ELi2ELi1EEELi1EE18applyThisOnTheLeftINS1_IdLi3ELi3ELi0ELi3ELi3EEENS1_IdLi1ELi3ELi1ELi1ELi3EEEEEvRT_RT0_b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Block.2841", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Block.3335", align 8 ; 10 uses
  %6 = alloca %"class.Eigen::VectorBlock.3842", align 8 ; 8 uses
  %7 = alloca %"class.Eigen::Block.3335", align 8 ; 14 uses
  %8 = alloca %"class.Eigen::Block.3346", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !range !78
  %.fr66 = freeze i8 %i.b
  %i.c = trunc i8 %.fr66 to i1
  %or.cond67 = xor i1 %i.c, true
  %.048.shrunk = and i1 %3, %or.cond67            ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !315  ; 7 uses
  %i.f = icmp sgt i64 %i.e, 47
  br i1 %i.f, label %.lr.ph65, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i64 %i.e, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.048.shrunk, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %i.u = phi i64 [ %i.an, %.lr.ph.split.us ], [ %i.e, %.lr.ph ]
  %.063.us = phi i64 [ %i.am, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.v = load i8, ptr %i.a, align 8, !tbaa !314, !range !78, !noundef !79
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = xor i64 %.063.us, -1
  %i.y = add i64 %i.u, %i.x
  %i.z = select i1 %i.w, i64 %.063.us, i64 %i.y   ; 4 uses
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !316
  %i.ab = add i64 %i.z, %i.aa                     ; 7 uses
  %i.ac = sub i64 3, %i.ab                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ab
  %.idx.i.i.i.i.us = mul nsw i64 %i.ab, 24
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i.i.i.i.us
  store ptr %i.ae, ptr %7, align 8, !tbaa !321, !alias.scope !1111
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !100, !alias.scope !1111
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !100, !alias.scope !1111
  store ptr %1, ptr %i.k, align 8, !tbaa !323, !alias.scope !1111
  store i64 %i.ab, ptr %i.l, align 8, !tbaa !100, !alias.scope !1111
  store i64 %i.ab, ptr %i.m, align 8, !tbaa !100, !alias.scope !1111
  store i64 3, ptr %i.n, align 8, !tbaa !326, !alias.scope !1111
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  %i.af = add i64 %i.ab, 1                        ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !317, !noalias !1114, !nonnull !79, !align !318 ; 2 uses
  %i.ah = sub i64 2, %i.ab
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.af
  %.idx.i.i.i.i.i.us = mul nsw i64 %i.z, 24
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %.idx.i.i.i.i.i.us
  store ptr %i.aj, ptr %8, align 8, !tbaa !328, !alias.scope !1114
  store i64 %i.ah, ptr %i.o, align 8, !tbaa !100, !alias.scope !1114
  store ptr %i.ag, ptr %i.p, align 8, !tbaa !310, !alias.scope !1114
  store i64 %i.af, ptr %i.q, align 8, !tbaa !100, !alias.scope !1114
  store i64 %i.z, ptr %i.r, align 8, !tbaa !100, !alias.scope !1114
  store i64 3, ptr %i.s, align 8, !tbaa !330, !alias.scope !1114
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !331, !nonnull !79, !align !318
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.z
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.am = add nuw nsw i64 %.063.us, 1             ; 2 uses
  %i.an = load i64, ptr %i.d, align 8, !tbaa !315 ; 2 uses
  %i.ao = icmp slt i64 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !1107

.lr.ph65:                                         ; preds = %bb.a
  %i.ap = icmp samesign ult i64 %i.e, 96
  %.lhs.trunc = add nuw i64 %i.e, 1
  %i.aq = lshr i64 %.lhs.trunc, 1
  %.zext = and i64 %i.aq, 127
  %i.ar = select i1 %i.ap, i64 %.zext, i64 48     ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph65, %bb.d
  %i.bk = phi i64 [ %i.e, %.lr.ph65 ], [ %i.cf, %bb.d ] ; 2 uses
  %.04764 = phi i64 [ 0, %.lr.ph65 ], [ %.pre-phi, %bb.d ] ; 4 uses
  %i.bl = load i8, ptr %i.a, align 8, !tbaa !314, !range !78, !noundef !79
  %i.bm = trunc nuw i8 %i.bl to i1                ; 2 uses
  br i1 %i.bm, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.bn = add nuw nsw i64 %.04764, %i.ar          ; 2 uses
  %.sroa.speculated58 = call i64 @llvm.smin.i64(i64 %i.bn, i64 %i.bk)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = sub nsw i64 %i.bk, %.04764              ; 2 uses
  %i.bp = sub nsw i64 %i.bo, %i.ar
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.bp, i64 0)
  %.pre = add nuw nsw i64 %.04764, %i.ar
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.pre-phi = phi i64 [ %i.bn, %.thread ], [ %.pre, %bb.c ] ; 2 uses
  %i.bq = phi i64 [ %.sroa.speculated58, %.thread ], [ %i.bo, %bb.c ]
  %i.br = phi i64 [ %.04764, %.thread ], [ %.sroa.speculated, %bb.c ] ; 6 uses
  %i.bs = sub nsw i64 %i.bq, %i.br                ; 2 uses
  %i.bt = load i64, ptr %i.as, align 8, !tbaa !316
  %i.bu = add i64 %i.bt, %i.br                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.bv = load ptr, ptr %0, align 8, !tbaa !317, !nonnull !79, !align !318 ; 2 uses
  %i.bw = sub i64 3, %i.bu                        ; 3 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bu
  %.idx.i.i.i = mul nsw i64 %i.br, 24
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %.idx.i.i.i
  store ptr %i.by, ptr %4, align 8, !tbaa !333
  store i64 %i.bw, ptr %i.at, align 8, !tbaa !100
  store i64 %i.bs, ptr %i.au, align 8, !tbaa !100
  store ptr %i.bv, ptr %i.av, align 8, !tbaa !310
  store i64 %i.bu, ptr %i.aw, align 8, !tbaa !100
  store i64 %i.br, ptr %i.ax, align 8, !tbaa !100
  store i64 3, ptr %i.ay, align 8, !tbaa !336
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.bz = select i1 %.048.shrunk, i64 %i.bu, i64 0 ; 2 uses
  %spec.select = select i1 %.048.shrunk, i64 %i.bw, i64 3
  %i.ca = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bu
  %.idx.i.i.i54 = mul nsw i64 %i.bz, 24
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %.idx.i.i.i54
  store ptr %i.cb, ptr %5, align 8, !tbaa !321
  store i64 %i.bw, ptr %i.az, align 8, !tbaa !100
  store i64 %spec.select, ptr %i.ba, align 8, !tbaa !100
  store ptr %1, ptr %i.bb, align 8, !tbaa !323
  store i64 %i.bu, ptr %i.bc, align 8, !tbaa !100
  store i64 %i.bz, ptr %i.bd, align 8, !tbaa !100
  store i64 3, ptr %i.be, align 8, !tbaa !326
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.cc = load ptr, ptr %i.bf, align 8, !tbaa !331, !nonnull !79, !align !318 ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.br
  store ptr %i.cd, ptr %6, align 8, !tbaa !338, !alias.scope !1115
  store i64 %i.bs, ptr %i.bg, align 8, !tbaa !100, !alias.scope !1115
  store ptr %i.cc, ptr %i.bh, align 8, !tbaa !312, !alias.scope !1115
  store i64 %i.br, ptr %i.bi, align 8, !tbaa !100, !alias.scope !1115
  store i64 2, ptr %i.bj, align 8, !tbaa !1117, !alias.scope !1115
  %i.ce = xor i1 %i.bm, true
  call void @_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS2_INS3_IdLi3ELi2ELi0ELi3ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS3_IdLi2ELi1ELi0ELi2ELi1EEELin1EEEEEvRT_RKT0_RKT1_b(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %6, i1 noundef zeroext %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !315 ; 2 uses
  %i.cg = icmp slt i64 %.pre-phi, %i.cf
  br i1 %i.cg, label %bb.b, label %.loopexit, !llvm.loop !1110

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.ch = phi i64 [ %i.cz, %.lr.ph.split ], [ %i.e, %.lr.ph ]
  %.063 = phi i64 [ %i.cy, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %i.ci = load i8, ptr %i.a, align 8, !tbaa !314, !range !78, !noundef !79
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = xor i64 %.063, -1
  %i.cl = add i64 %i.ch, %i.ck
  %i.cm = select i1 %i.cj, i64 %.063, i64 %i.cl   ; 4 uses
  %i.cn = load i64, ptr %i.h, align 8, !tbaa !316
  %i.co = add i64 %i.cm, %i.cn                    ; 5 uses
  %i.cp = sub i64 3, %i.co
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.cq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.co
  store ptr %i.cq, ptr %7, align 8, !tbaa !321, !alias.scope !1111
  store i64 %i.cp, ptr %i.i, align 8, !tbaa !100, !alias.scope !1111
  store i64 3, ptr %i.j, align 8, !tbaa !100, !alias.scope !1111
  store ptr %1, ptr %i.k, align 8, !tbaa !323, !alias.scope !1111
  store i64 %i.co, ptr %i.l, align 8, !tbaa !100, !alias.scope !1111
  store i64 0, ptr %i.m, align 8, !tbaa !100, !alias.scope !1111
  store i64 3, ptr %i.n, align 8, !tbaa !326, !alias.scope !1111
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  %i.cr = add i64 %i.co, 1                        ; 2 uses
  %i.cs = load ptr, ptr %0, align 8, !tbaa !317, !noalias !1114, !nonnull !79, !align !318 ; 2 uses
  %i.ct = sub i64 2, %i.co
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.cr
  %.idx.i.i.i.i.i = mul nsw i64 %i.cm, 24
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %.idx.i.i.i.i.i
  store ptr %i.cv, ptr %8, align 8, !tbaa !328, !alias.scope !1114
  store i64 %i.ct, ptr %i.o, align 8, !tbaa !100, !alias.scope !1114
  store ptr %i.cs, ptr %i.p, align 8, !tbaa !310, !alias.scope !1114
  store i64 %i.cr, ptr %i.q, align 8, !tbaa !100, !alias.scope !1114
  store i64 %i.cm, ptr %i.r, align 8, !tbaa !100, !alias.scope !1114
  store i64 3, ptr %i.s, align 8, !tbaa !330, !alias.scope !1114
  %i.cw = load ptr, ptr %i.t, align 8, !tbaa !331, !nonnull !79, !align !318
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.cm
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi3ELi2ELi0ELi3ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.cy = add nuw nsw i64 %.063, 1                ; 2 uses
  %i.cz = load i64, ptr %i.d, align 8, !tbaa !315 ; 2 uses
  %i.da = icmp slt i64 %i.cy, %i.cz
  br i1 %i.da, label %.lr.ph.split, label %.loopexit, !llvm.loop !1107

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.d, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE14computeInPlaceEv(ptr noundef nonnull align 16 dereferenceable(184) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader.i.i.i.i:
  %1 = alloca %"class.Eigen::VectorBlock.2895", align 8 ; 12 uses
  %i.a = alloca double, align 8                   ; 8 uses
  %2 = alloca %"class.Eigen::VectorBlock.2827", align 8 ; 18 uses
  %3 = alloca %"class.Eigen::Block.2841", align 8 ; 14 uses
  %4 = alloca %"class.Eigen::VectorBlock.2827", align 8 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.d = load <2 x double>, ptr %0, align 16, !tbaa !13 ; 2 uses
  %i.e = fmul <2 x double> %i.d, %i.d             ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load <2 x double>, ptr %i.f, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load <2 x double>, ptr %i.h, align 8, !tbaa !13 ; 2 uses
  %i.j = fmul <2 x double> %i.i, %i.i             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load double, ptr %i.k, align 8, !tbaa !15
  %i.m = shufflevector <2 x double> %i.e, <2 x double> %i.j, <2 x i32> <i32 0, i32 2>
  %i.n = shufflevector <2 x double> %i.e, <2 x double> %i.j, <2 x i32> <i32 1, i32 3>
  %i.o = fadd <2 x double> %i.m, %i.n
  %i.p = insertelement <2 x double> %i.g, double %i.l, i64 1 ; 2 uses
  %i.q = fmul <2 x double> %i.p, %i.p
  %i.r = fadd <2 x double> %i.q, %i.o
  %i.s = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.r) ; 4 uses
  store <2 x double> %i.s, ptr %i.c, align 16, !tbaa !15
  store <2 x double> %i.s, ptr %i.b, align 16, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %i.s, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %i.s, i64 1 ; 2 uses
  %i.v = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i.i
  %i.w = select i1 %i.v, double %.sroa.0.8.vec.extract.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i
  %i.x = fmul double %i.w, f0x3CB0000000000000    ; 2 uses
  %i.y = fmul double %i.x, %i.x
  %i.z = fdiv double %i.y, 3.000000e+00           ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  store i64 2, ptr %i.aa, align 8, !tbaa !1124
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  store double 0.000000e+00, ptr %i.ab, align 16, !tbaa !1125
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %.sroa.6108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %.sroa.7109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %.sroa.8110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %.sroa.6102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.sroa.7103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.sroa.8104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.au = load double, ptr %i.b, align 16, !tbaa !15 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aw = load double, ptr %i.av, align 8, !tbaa !15 ; 2 uses
  %i.ax = fcmp ogt double %i.aw, %i.au            ; 2 uses
  %.sroa.7.1.i.i = select i1 %i.ax, double %i.aw, double %i.au ; 2 uses
  %.sroa.5.1.i.i = zext i1 %i.ax to i64           ; 5 uses
  %i.ay = fmul double %.sroa.7.1.i.i, %.sroa.7.1.i.i
  %i.az = load i64, ptr %i.aa, align 8, !tbaa !1124
  %i.ba = icmp eq i64 %i.az, 2
  %i.bb = fmul double %i.z, 3.000000e+00
  %i.bc = fcmp olt double %i.ay, %i.bb
  %or.cond = select i1 %i.ba, i1 %i.bc, i1 false
  br i1 %or.cond, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.preheader.i.i.i.i
  store i64 0, ptr %i.aa, align 8, !tbaa !1124
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.i.i.i.i
  store i64 %.sroa.5.1.i.i, ptr %i.u, align 16, !tbaa !120
  %.not81 = icmp eq i64 %.sroa.5.1.i.i, 0         ; 2 uses
  br i1 %.not81, label %._crit_edge154, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i.i83 = mul nuw nsw i64 %.sroa.5.1.i.i, 24
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i83 ; 3 uses
  %i.be = load <2 x double>, ptr %i.bd, align 8, !tbaa !13
  %i.bf = load <2 x double>, ptr %0, align 16, !tbaa !13
  store <2 x double> %i.bf, ptr %i.bd, align 8, !tbaa !13
end_hunk_3
