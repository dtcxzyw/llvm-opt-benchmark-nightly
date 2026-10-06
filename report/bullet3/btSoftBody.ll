Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZN10btSoftBody22appendDeformableAnchorEiP23btMultiBodyLinkCollider:bb.a
  %indvars.iv.next.i77.i.2 = or disjoint i64 %indvars.iv.i75.i, 3 ; 2 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.next.i77.i.2
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !253, !noalias !699
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv.next.i77.i.2
  %i.rf = load float, ptr %i.re, align 4, !tbaa !253, !noalias !699
  %i.rg = call float @llvm.fmuladd.f32(float %i.rd, float %i.rf, float %i.rb) ; 3 uses
  %indvars.iv.next.i77.i.3 = add nuw nsw i64 %indvars.iv.i75.i, 4 ; 2 uses
  %niter252.next.3 = add i64 %niter252, 4         ; 2 uses
  %niter252.ncmp.3 = icmp eq i64 %niter252.next.3, %unroll_iter251
  br i1 %niter252.ncmp.3, label %.lr.ph.i83.i.preheader.unr-lcssa, label %.lr.ph.i74.i, !llvm.loop !12

.lr.ph.i83.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i74.i
  %lcmp.mod248.not = icmp eq i64 %xtraiter246, 0
  br i1 %lcmp.mod248.not, label %.lr.ph.i83.i.preheader, label %.lr.ph.i74.i.epil.preheader

.lr.ph.i74.i.epil.preheader:                      ; preds = %.lr.ph.i83.i.preheader.unr-lcssa, %.lr.ph.i74.i.preheader
  %indvars.iv.i75.i.epil.init = phi i64 [ 0, %.lr.ph.i74.i.preheader ], [ %indvars.iv.next.i77.i.3, %.lr.ph.i83.i.preheader.unr-lcssa ]
  %.089.i76.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i74.i.preheader ], [ %i.rg, %.lr.ph.i83.i.preheader.unr-lcssa ]
  %lcmp.mod250 = icmp ne i64 %xtraiter246, 0
  call void @llvm.assume(i1 %lcmp.mod250)
  br label %.lr.ph.i74.i.epil

.lr.ph.i74.i.epil:                                ; preds = %.lr.ph.i74.i.epil, %.lr.ph.i74.i.epil.preheader
  %indvars.iv.i75.i.epil = phi i64 [ %indvars.iv.next.i77.i.epil, %.lr.ph.i74.i.epil ], [ %indvars.iv.i75.i.epil.init, %.lr.ph.i74.i.epil.preheader ] ; 3 uses
  %.089.i76.i.epil = phi float [ %i.rl, %.lr.ph.i74.i.epil ], [ %.089.i76.i.epil.init, %.lr.ph.i74.i.epil.preheader ]
  %epil.iter247 = phi i64 [ %epil.iter247.next, %.lr.ph.i74.i.epil ], [ 0, %.lr.ph.i74.i.epil.preheader ]
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.i75.i.epil
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !253, !noalias !699
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv.i75.i.epil
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !253, !noalias !699
  %i.rl = call float @llvm.fmuladd.f32(float %i.ri, float %i.rk, float %.089.i76.i.epil) ; 2 uses
  %indvars.iv.next.i77.i.epil = add nuw nsw i64 %indvars.iv.i75.i.epil, 1
  %epil.iter247.next = add i64 %epil.iter247, 1   ; 2 uses
  %epil.iter247.cmp.not = icmp eq i64 %epil.iter247.next, %xtraiter246
  br i1 %epil.iter247.cmp.not, label %.lr.ph.i83.i.preheader, label %.lr.ph.i74.i.epil, !llvm.loop !691

.lr.ph.i83.i.preheader:                           ; preds = %.lr.ph.i74.i.epil, %.lr.ph.i83.i.preheader.unr-lcssa
  %.lcssa202 = phi float [ %i.rg, %.lr.ph.i83.i.preheader.unr-lcssa ], [ %i.rl, %.lr.ph.i74.i.epil ]
  %xtraiter253 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.rm = icmp ult i64 %i.kl, 3
  br i1 %i.rm, label %.lr.ph.i83.i.epil.preheader, label %.lr.ph.i83.i.preheader.new

.lr.ph.i83.i.preheader.new:                       ; preds = %.lr.ph.i83.i.preheader
  %unroll_iter258 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i83.i

.lr.ph.i83.i:                                     ; preds = %.lr.ph.i83.i, %.lr.ph.i83.i.preheader.new
  %indvars.iv.i84.i = phi i64 [ 0, %.lr.ph.i83.i.preheader.new ], [ %indvars.iv.next.i86.i.3, %.lr.ph.i83.i ] ; 6 uses
  %.089.i85.i = phi float [ 0.000000e+00, %.lr.ph.i83.i.preheader.new ], [ %i.sg, %.lr.ph.i83.i ]
  %niter259 = phi i64 [ 0, %.lr.ph.i83.i.preheader.new ], [ %niter259.next.3, %.lr.ph.i83.i ]
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.i84.i
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !253, !noalias !699
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.i84.i
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !253, !noalias !699
  %i.rr = call float @llvm.fmuladd.f32(float %i.ro, float %i.rq, float %.089.i85.i)
  %indvars.iv.next.i86.i = or disjoint i64 %indvars.iv.i84.i, 1 ; 2 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.next.i86.i
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !253, !noalias !699
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.next.i86.i
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !253, !noalias !699
  %i.rw = call float @llvm.fmuladd.f32(float %i.rt, float %i.rv, float %i.rr)
  %indvars.iv.next.i86.i.1 = or disjoint i64 %indvars.iv.i84.i, 2 ; 2 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.next.i86.i.1
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !253, !noalias !699
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.next.i86.i.1
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !253, !noalias !699
  %i.sb = call float @llvm.fmuladd.f32(float %i.ry, float %i.sa, float %i.rw)
  %indvars.iv.next.i86.i.2 = or disjoint i64 %indvars.iv.i84.i, 3 ; 2 uses
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.next.i86.i.2
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !253, !noalias !699
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.next.i86.i.2
  %i.sf = load float, ptr %i.se, align 4, !tbaa !253, !noalias !699
  %i.sg = call float @llvm.fmuladd.f32(float %i.sd, float %i.sf, float %i.sb) ; 3 uses
  %indvars.iv.next.i86.i.3 = add nuw nsw i64 %indvars.iv.i84.i, 4 ; 2 uses
  %niter259.next.3 = add i64 %niter259, 4         ; 2 uses
  %niter259.ncmp.3 = icmp eq i64 %niter259.next.3, %unroll_iter258
  br i1 %niter259.ncmp.3, label %.lr.ph.i92.i.preheader.unr-lcssa, label %.lr.ph.i83.i, !llvm.loop !12

.lr.ph.i92.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i83.i
  %lcmp.mod255.not = icmp eq i64 %xtraiter253, 0
  br i1 %lcmp.mod255.not, label %.lr.ph.i92.i.preheader, label %.lr.ph.i83.i.epil.preheader

.lr.ph.i83.i.epil.preheader:                      ; preds = %.lr.ph.i92.i.preheader.unr-lcssa, %.lr.ph.i83.i.preheader
  %indvars.iv.i84.i.epil.init = phi i64 [ 0, %.lr.ph.i83.i.preheader ], [ %indvars.iv.next.i86.i.3, %.lr.ph.i92.i.preheader.unr-lcssa ]
  %.089.i85.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i83.i.preheader ], [ %i.sg, %.lr.ph.i92.i.preheader.unr-lcssa ]
  %lcmp.mod257 = icmp ne i64 %xtraiter253, 0
  call void @llvm.assume(i1 %lcmp.mod257)
  br label %.lr.ph.i83.i.epil

.lr.ph.i83.i.epil:                                ; preds = %.lr.ph.i83.i.epil, %.lr.ph.i83.i.epil.preheader
  %indvars.iv.i84.i.epil = phi i64 [ %indvars.iv.next.i86.i.epil, %.lr.ph.i83.i.epil ], [ %indvars.iv.i84.i.epil.init, %.lr.ph.i83.i.epil.preheader ] ; 3 uses
  %.089.i85.i.epil = phi float [ %i.sl, %.lr.ph.i83.i.epil ], [ %.089.i85.i.epil.init, %.lr.ph.i83.i.epil.preheader ]
  %epil.iter254 = phi i64 [ %epil.iter254.next, %.lr.ph.i83.i.epil ], [ 0, %.lr.ph.i83.i.epil.preheader ]
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.i84.i.epil
  %i.si = load float, ptr %i.sh, align 4, !tbaa !253, !noalias !699
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.i84.i.epil
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !253, !noalias !699
  %i.sl = call float @llvm.fmuladd.f32(float %i.si, float %i.sk, float %.089.i85.i.epil) ; 2 uses
  %indvars.iv.next.i86.i.epil = add nuw nsw i64 %indvars.iv.i84.i.epil, 1
  %epil.iter254.next = add i64 %epil.iter254, 1   ; 2 uses
  %epil.iter254.cmp.not = icmp eq i64 %epil.iter254.next, %xtraiter253
  br i1 %epil.iter254.cmp.not, label %.lr.ph.i92.i.preheader, label %.lr.ph.i83.i.epil, !llvm.loop !692

.lr.ph.i92.i.preheader:                           ; preds = %.lr.ph.i83.i.epil, %.lr.ph.i92.i.preheader.unr-lcssa
  %.lcssa201 = phi float [ %i.sg, %.lr.ph.i92.i.preheader.unr-lcssa ], [ %i.sl, %.lr.ph.i83.i.epil ]
  %xtraiter260 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.sm = icmp ult i64 %i.kl, 3
  br i1 %i.sm, label %.lr.ph.i92.i.epil.preheader, label %.lr.ph.i92.i.preheader.new

.lr.ph.i92.i.preheader.new:                       ; preds = %.lr.ph.i92.i.preheader
  %unroll_iter265 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i92.i

.lr.ph.i92.i:                                     ; preds = %.lr.ph.i92.i, %.lr.ph.i92.i.preheader.new
  %indvars.iv.i93.i = phi i64 [ 0, %.lr.ph.i92.i.preheader.new ], [ %indvars.iv.next.i95.i.3, %.lr.ph.i92.i ] ; 6 uses
  %.089.i94.i = phi float [ 0.000000e+00, %.lr.ph.i92.i.preheader.new ], [ %i.tg, %.lr.ph.i92.i ]
  %niter266 = phi i64 [ 0, %.lr.ph.i92.i.preheader.new ], [ %niter266.next.3, %.lr.ph.i92.i ]
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.i93.i
  %i.so = load float, ptr %i.sn, align 4, !tbaa !253, !noalias !699
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.i93.i
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !253, !noalias !699
  %i.sr = call float @llvm.fmuladd.f32(float %i.so, float %i.sq, float %.089.i94.i)
  %indvars.iv.next.i95.i = or disjoint i64 %indvars.iv.i93.i, 1 ; 2 uses
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.next.i95.i
  %i.st = load float, ptr %i.ss, align 4, !tbaa !253, !noalias !699
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.next.i95.i
  %i.sv = load float, ptr %i.su, align 4, !tbaa !253, !noalias !699
  %i.sw = call float @llvm.fmuladd.f32(float %i.st, float %i.sv, float %i.sr)
  %indvars.iv.next.i95.i.1 = or disjoint i64 %indvars.iv.i93.i, 2 ; 2 uses
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.next.i95.i.1
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !253, !noalias !699
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.next.i95.i.1
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !253, !noalias !699
  %i.tb = call float @llvm.fmuladd.f32(float %i.sy, float %i.ta, float %i.sw)
  %indvars.iv.next.i95.i.2 = or disjoint i64 %indvars.iv.i93.i, 3 ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.next.i95.i.2
  %i.td = load float, ptr %i.tc, align 4, !tbaa !253, !noalias !699
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.next.i95.i.2
  %i.tf = load float, ptr %i.te, align 4, !tbaa !253, !noalias !699
  %i.tg = call float @llvm.fmuladd.f32(float %i.td, float %i.tf, float %i.tb) ; 3 uses
  %indvars.iv.next.i95.i.3 = add nuw nsw i64 %indvars.iv.i93.i, 4 ; 2 uses
  %niter266.next.3 = add i64 %niter266, 4         ; 2 uses
  %niter266.ncmp.3 = icmp eq i64 %niter266.next.3, %unroll_iter265
  br i1 %niter266.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i92.i, !llvm.loop !12

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i92.i
  %lcmp.mod262.not = icmp eq i64 %xtraiter260, 0
  br i1 %lcmp.mod262.not, label %.loopexit.loopexit, label %.lr.ph.i92.i.epil.preheader

.lr.ph.i92.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i92.i.preheader
  %indvars.iv.i93.i.epil.init = phi i64 [ 0, %.lr.ph.i92.i.preheader ], [ %indvars.iv.next.i95.i.3, %.loopexit.loopexit.unr-lcssa ]
  %.089.i94.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i92.i.preheader ], [ %i.tg, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod264 = icmp ne i64 %xtraiter260, 0
  call void @llvm.assume(i1 %lcmp.mod264)
  br label %.lr.ph.i92.i.epil

.lr.ph.i92.i.epil:                                ; preds = %.lr.ph.i92.i.epil, %.lr.ph.i92.i.epil.preheader
  %indvars.iv.i93.i.epil = phi i64 [ %indvars.iv.next.i95.i.epil, %.lr.ph.i92.i.epil ], [ %indvars.iv.i93.i.epil.init, %.lr.ph.i92.i.epil.preheader ] ; 3 uses
  %.089.i94.i.epil = phi float [ %i.tl, %.lr.ph.i92.i.epil ], [ %.089.i94.i.epil.init, %.lr.ph.i92.i.epil.preheader ]
  %epil.iter261 = phi i64 [ %epil.iter261.next, %.lr.ph.i92.i.epil ], [ 0, %.lr.ph.i92.i.epil.preheader ]
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.i93.i.epil
  %i.ti = load float, ptr %i.th, align 4, !tbaa !253, !noalias !699
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.i93.i.epil
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !253, !noalias !699
  %i.tl = call float @llvm.fmuladd.f32(float %i.ti, float %i.tk, float %.089.i94.i.epil) ; 2 uses
  %indvars.iv.next.i95.i.epil = add nuw nsw i64 %indvars.iv.i93.i.epil, 1
  %epil.iter261.next = add i64 %epil.iter261, 1   ; 2 uses
  %epil.iter261.cmp.not = icmp eq i64 %epil.iter261.next, %xtraiter260
  br i1 %epil.iter261.cmp.not, label %.loopexit.loopexit, label %.lr.ph.i92.i.epil, !llvm.loop !693

.loopexit.loopexit:                               ; preds = %.lr.ph.i92.i.epil, %.loopexit.loopexit.unr-lcssa
  %.lcssa = phi float [ %i.tg, %.loopexit.loopexit.unr-lcssa ], [ %i.tl, %.lr.ph.i92.i.epil ]
  %i.tm = fadd float %.lcssa207.a, 0.000000e+00
  %i.tn = fadd float %.lcssa205.a, 0.000000e+00
  %i.to = insertelement <2 x float> poison, float %.lcssa206.a, i64 0
  %i.tp = insertelement <2 x float> %i.to, float %.lcssa203.a, i64 1
  %i.tq = fadd <2 x float> %i.tp, zeroinitializer
  %i.tr = fadd float %.lcssa202, 0.000000e+00
  %i.ts = fadd float %.lcssa201, 0.000000e+00
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j
  %.08.lcssa.i80220.i = phi float [ 0.000000e+00, %bb.j ], [ %i.ts, %.loopexit.loopexit ] ; 4 uses
  %.08.lcssa.i44142149173186216.i = phi float [ 0.000000e+00, %bb.j ], [ %i.tn, %.loopexit.loopexit ] ; 4 uses
  %.08.lcssa.i26121126140151171188214.i = phi float [ 0.000000e+00, %bb.j ], [ %i.tm, %.loopexit.loopexit ] ; 5 uses
  %.08.lcssa.i115119128138153169190212.i = phi float [ 0.000000e+00, %bb.j ], [ %.lcssa208.a, %.loopexit.loopexit ]
  %.08.lcssa.i53157165194208.i = phi float [ 0.000000e+00, %bb.j ], [ %.lcssa204.a, %.loopexit.loopexit ]
  %.08.lcssa.i71196206.i = phi float [ 0.000000e+00, %bb.j ], [ %i.tr, %.loopexit.loopexit ] ; 3 uses
  %.08.lcssa.i89.i = phi float [ 0.000000e+00, %bb.j ], [ %.lcssa, %.loopexit.loopexit ]
  %i.tt = phi <2 x float> [ zeroinitializer, %bb.j ], [ %i.tq, %.loopexit.loopexit ] ; 4 uses
  %i.tu = fadd float %i.ki, %.08.lcssa.i115119128138153169190212.i ; 5 uses
  %i.tv = extractelement <2 x float> %i.tt, i64 1 ; 2 uses
  %i.tw = fneg float %i.tv
  %i.tx = fmul float %i.tu, %i.tw
  %i.ty = fneg float %.08.lcssa.i44142149173186216.i
  %i.tz = fmul float %.08.lcssa.i26121126140151171188214.i, %i.ty
  %i.ua = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.ub = extractelement <2 x float> %i.tt, i64 0 ; 4 uses
  %i.uc = call noundef float @llvm.fmuladd.f32(float %i.ub, float %.08.lcssa.i44142149173186216.i, float %i.tx)
  %12 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.uc, i64 0
  %13 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.08.lcssa.i26121126140151171188214.i, i64 0
  %i.ud = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.08.lcssa.i71196206.i, i64 0
  %i.ue = extractelement <2 x float> %i.jw, i64 0
  %i.uf = extractelement <2 x float> %i.jv, i64 0
  %i.ug = extractelement <2 x float> %i.jx, i64 0
  %i.uh = shufflevector <2 x float> %i.jw, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1>
  %i.ui = insertelement <4 x float> %i.uh, float 1.000000e+00, i64 2
  %i.uj = shufflevector <2 x float> %i.jv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1> ; 2 uses
  %i.uk = insertelement <4 x float> %i.uj, float -0.000000e+00, i64 2 ; 2 uses
  %i.ul = shufflevector <2 x float> %i.jx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1> ; 2 uses
  %i.um = insertelement <4 x float> %i.ul, float -0.000000e+00, i64 2 ; 2 uses
  %i.un = shufflevector <2 x float> %i.jw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.uo = shufflevector <4 x float> %i.un, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 6, i32 1>
  %i.up = shufflevector <4 x float> %i.un, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 1, i32 poison, i32 6, i32 0>
  %i.uq = shufflevector <2 x float> %i.ka, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ur = shufflevector <4 x float> %i.up, <4 x float> %i.uq, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.us = shufflevector <4 x float> %i.uj, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 3, i32 poison, i32 6, i32 0>
  %i.ut = shufflevector <2 x float> %i.jy, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.uu = shufflevector <4 x float> %i.us, <4 x float> %i.ut, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.uv = shufflevector <4 x float> %i.ul, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 3, i32 poison, i32 6, i32 0>
  %i.uw = shufflevector <2 x float> %i.kc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ux = shufflevector <4 x float> %i.uv, <4 x float> %i.uw, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %.sroa.1097.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.uy = fadd float %i.ki, %.08.lcssa.i53157165194208.i ; 4 uses
  %i.uz = fadd float %i.ki, %.08.lcssa.i89.i      ; 3 uses
  %i.va = fneg float %i.uz                        ; 2 uses
  %i.vb = fmul float %.08.lcssa.i44142149173186216.i, %i.va
  %i.vc = fneg float %.08.lcssa.i71196206.i       ; 2 uses
  %i.vd = fmul float %i.uy, %i.vc
  %i.ve = fmul float %.08.lcssa.i26121126140151171188214.i, %i.va
  %i.vf = fmul float %i.ub, %i.vc
  %i.vg = call noundef float @llvm.fmuladd.f32(float %i.ub, float %.08.lcssa.i80220.i, float %i.ve)
  %i.vh = call noundef float @llvm.fmuladd.f32(float %i.tu, float %i.uz, float %i.vf)
  %i.vi = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.vh, i64 0
  %i.vj = call noundef float @llvm.fmuladd.f32(float %i.tu, float %i.uy, float %i.tz)
  %i.vk = call noundef float @llvm.fmuladd.f32(float %i.tv, float %.08.lcssa.i71196206.i, float %i.vb) ; 2 uses
  %i.vl = call noundef float @llvm.fmuladd.f32(float %.08.lcssa.i44142149173186216.i, float %.08.lcssa.i80220.i, float %i.vd) ; 2 uses
  %i.vm = fmul float %.08.lcssa.i26121126140151171188214.i, %i.vk
  %i.vn = fneg float %.08.lcssa.i80220.i
  %i.vo = insertelement <2 x float> poison, float %i.uy, i64 0
  %i.vp = insertelement <2 x float> %i.vo, float %.08.lcssa.i80220.i, i64 1
  %i.vq = fneg <2 x float> %i.vp
  %i.vr = fmul <2 x float> %i.tt, %i.vq
  %i.vs = fmul float %i.tu, %i.vn
  %14 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.vs, i64 0
  %15 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %i.ud, <2 x float> %14)
  %i.vt = insertelement <2 x float> poison, float %.08.lcssa.i26121126140151171188214.i, i64 0
  %i.vu = insertelement <2 x float> %i.vt, float %i.uy, i64 1
  %i.vv = shufflevector <2 x float> %i.tt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.vw = insertelement <2 x float> %i.vv, float %i.uz, i64 1
  %i.vx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vu, <2 x float> %i.vw, <2 x float> %i.vr) ; 2 uses
  %i.vy = extractelement <2 x float> %i.vx, i64 1
  %i.vz = call float @llvm.fmuladd.f32(float %i.tu, float %i.vy, float %i.vm)
  %i.wa = call noundef float @llvm.fmuladd.f32(float %i.ub, float %i.vl, float %i.vz)
  %i.wb = fdiv float 1.000000e+00, %i.wa          ; 6 uses
  %16 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.wb, i64 0 ; 2 uses
  %.scalar.a = fmul float %i.vg, %i.wb
  %i.wc = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar.a, i64 0 ; 2 uses
  %i.wd = shufflevector <2 x float> %i.wc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.we = insertelement <2 x float> poison, float %i.wb, i64 0
  %i.wf = shufflevector <2 x float> %i.we, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wg = fmul <2 x float> %i.vx, %i.wf           ; 3 uses
  %i.wh = fmul float %i.vk, %i.wb                 ; 2 uses
  %i.wi = insertelement <2 x float> %16, float 1.000000e+00, i64 1 ; 2 uses
  %i.wj = fmul <2 x float> %i.vi, %i.wi           ; 2 uses
  %i.wk = shufflevector <2 x float> %i.wj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.wl = fmul <2 x float> %12, %i.wi
  %i.wm = shufflevector <2 x float> %i.wl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %i.wn = fmul float %i.vl, %i.wb                 ; 2 uses
  %17 = fmul <2 x float> %15, %16                 ; 2 uses
  %i.wo = shufflevector <2 x float> %17, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %.scalar198 = fmul float %i.vj, %i.wb
  %i.wp = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar198, i64 0
  %i.wq = shufflevector <2 x float> %i.wp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %i.wr = shufflevector <2 x float> %i.jw, <2 x float> %i.ka, <2 x i32> <i32 0, i32 2>
  %i.ws = insertelement <2 x float> poison, float %i.wh, i64 0
  %i.wt = shufflevector <2 x float> %i.ws, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wu = fmul <2 x float> %i.wr, %i.wt
  %i.wv = shufflevector <2 x float> %i.wg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ww = shufflevector <2 x float> %i.jv, <2 x float> %i.jy, <2 x i32> <i32 0, i32 2>
  %i.wx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wv, <2 x float> %i.ww, <2 x float> %i.wu)
  %i.wy = insertelement <2 x float> poison, float %i.wn, i64 0
  %i.wz = shufflevector <2 x float> %i.wy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xa = shufflevector <2 x float> %i.jx, <2 x float> %i.kc, <2 x i32> <i32 0, i32 2>
  %i.xb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wz, <2 x float> %i.xa, <2 x float> %i.wx) ; 2 uses
  %i.xc = fmul <4 x float> %i.ui, %i.wk
  %i.xd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wd, <4 x float> %i.uk, <4 x float> %i.xc)
  %i.xe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wo, <4 x float> %i.um, <4 x float> %i.xd) ; 3 uses
  %i.xf = fmul <4 x float> %i.uo, %i.wm
  %i.xg = shufflevector <2 x float> %i.wg, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.xh = shufflevector <4 x float> %i.xg, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 5, i32 0>
  %i.xi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xh, <4 x float> %i.uk, <4 x float> %i.xf)
  %i.xj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wq, <4 x float> %i.um, <4 x float> %i.xi) ; 3 uses
  %i.xk = extractelement <4 x float> %i.xe, i64 0
  %i.xl = fmul float %i.ue, %i.xk
  %i.xm = extractelement <2 x float> %i.xb, i64 0
  %i.xn = call float @llvm.fmuladd.f32(float %i.uf, float %i.xm, float %i.xl)
  %i.xo = extractelement <4 x float> %i.xj, i64 0
  %i.xp = call noundef float @llvm.fmuladd.f32(float %i.ug, float %i.xo, float %i.xn)
  %i.xq = fmul <4 x float> %i.ur, %i.xe
  %i.xr = shufflevector <2 x float> %i.xb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 1> ; 2 uses
  %i.xs = shufflevector <4 x float> %i.xr, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 6, i32 3>
  %i.xt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uu, <4 x float> %i.xs, <4 x float> %i.xq)
  %i.xu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ux, <4 x float> %i.xj, <4 x float> %i.xt)
  %i.xv = shufflevector <2 x float> %i.jw, <2 x float> %i.ka, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.xw = insertelement <4 x float> %i.xv, float 0.000000e+00, i64 2
  %i.xx = shufflevector <4 x float> %i.xe, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.xy = shufflevector <2 x float> %i.jv, <2 x float> %i.jy, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.xz = insertelement <4 x float> %i.xy, float 0.000000e+00, i64 2
  %i.ya = shufflevector <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x float> %i.xr, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.yb = shufflevector <2 x float> %i.jx, <2 x float> %i.kc, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.yc = insertelement <4 x float> %i.yb, float 0.000000e+00, i64 2
  %i.yd = shufflevector <4 x float> %i.xj, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  store float %i.xp, ptr %i.ua, align 8
  store <4 x float> %i.xu, ptr %.sroa.595.0..sroa_idx, align 4
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.ye = insertelement <3 x float> poison, float %i.kb, i64 0
  %i.yf = shufflevector <3 x float> %i.ye, <3 x float> poison, <3 x i32> zeroinitializer
  %i.yg = shufflevector <2 x float> %i.wj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.yh = shufflevector <4 x float> %i.wm, <4 x float> %i.yg, <3 x i32> <i32 0, i32 poison, i32 4>
  %i.yi = insertelement <3 x float> %i.yh, float %i.wh, i64 1
  %i.yj = fmul <3 x float> %i.yf, %i.yi
  %i.yk = shufflevector <2 x float> %i.wg, <2 x float> %i.wc, <3 x i32> <i32 0, i32 1, i32 2>
  %i.yl = insertelement <3 x float> poison, float %i.jz, i64 0
  %i.ym = shufflevector <3 x float> %i.yl, <3 x float> poison, <3 x i32> zeroinitializer
  %i.yn = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.yk, <3 x float> %i.ym, <3 x float> %i.yj)
  %i.yo = shufflevector <2 x float> %17, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.yp = shufflevector <4 x float> %i.wq, <4 x float> %i.yo, <3 x i32> <i32 0, i32 poison, i32 4>
  %i.yq = insertelement <3 x float> %i.yp, float %i.wn, i64 1
  %i.yr = insertelement <3 x float> poison, float %i.kd, i64 0
  %i.ys = shufflevector <3 x float> %i.yr, <3 x float> poison, <3 x i32> zeroinitializer
  %i.yt = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.yq, <3 x float> %i.ys, <3 x float> %i.yn) ; 4 uses
  %i.yu = shufflevector <3 x float> %i.yt, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.yv = shufflevector <4 x float> %i.xx, <4 x float> %i.yu, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.yw = fmul <4 x float> %i.xw, %i.yv
  %i.yx = shufflevector <4 x float> %i.ya, <4 x float> %i.yu, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %i.yy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xz, <4 x float> %i.yx, <4 x float> %i.yw)
  %i.yz = shufflevector <4 x float> %i.yd, <4 x float> %i.yu, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.za = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yc, <4 x float> %i.yz, <4 x float> %i.yy)
  %i.zb = insertelement <2 x float> %i.ka, float %i.kb, i64 1
  %i.zc = shufflevector <3 x float> %i.yt, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.zd = fmul <2 x float> %i.zb, %i.zc
  %i.ze = insertelement <2 x float> %i.jy, float %i.jz, i64 1
  %i.zf = shufflevector <3 x float> %i.yt, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ze, <2 x float> %i.zf, <2 x float> %i.zd)
  %i.zh = insertelement <2 x float> %i.kc, float %i.kd, i64 1
  %i.zi = shufflevector <3 x float> %i.yt, <3 x float> poison, <2 x i32> zeroinitializer
  %i.zj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zh, <2 x float> %i.zi, <2 x float> %i.zg)
  store <4 x float> %i.za, ptr %.sroa.1097.16..sroa_idx, align 4
  store <2 x float> %i.zj, ptr %.sroa.15.32..sroa_idx, align 4
  %.sroa.17100.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 108
  store float 0.000000e+00, ptr %.sroa.17100.32..sroa_idx, align 4, !tbaa !259
  %i.zk = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.zl = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.zk, ptr noundef nonnull align 8 dereferenceable(204) %9)
          to label %bb.k unwind label %bb.q       ; 0 uses

bb.k:                                             ; preds = %.loopexit
  %i.zm = getelementptr inbounds nuw i8, ptr %3, i64 400 ; 2 uses
  %i.zn = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.zm, ptr noundef nonnull align 8 dereferenceable(204) %10)
          to label %bb.l unwind label %bb.q       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.zo = getelementptr inbounds nuw i8, ptr %3, i64 608 ; 2 uses
  %i.zp = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.zo, ptr noundef nonnull align 8 dereferenceable(204) %11)
          to label %bb.m unwind label %bb.q       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.zq = getelementptr inbounds nuw i8, ptr %3, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zq, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !260
  %i.zr = getelementptr inbounds nuw i8, ptr %3, i64 832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zr, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !260
  %i.zs = load <2 x float>, ptr %i.cg, align 8, !tbaa !253
  %i.zt = load <2 x float>, ptr %i.ch, align 8, !tbaa !253 ; 3 uses
  %i.zu = fsub <2 x float> %i.zs, %i.zt
  %i.zv = load float, ptr %i.ci, align 8, !tbaa !253
  %i.zw = load float, ptr %i.cj, align 8, !tbaa !253 ; 2 uses
  %i.zx = fsub float %i.zv, %i.zw
  %.sroa.3.12.vec.insert.i66 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.zx, i64 0
  %i.zy = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <2 x float> %i.zu, ptr %i.zy, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 120
  store <2 x float> %.sroa.3.12.vec.insert.i66, ptr %.sroa.52.0..sroa_idx, align 8, !tbaa !259
  %i.zz = load float, ptr %i.cm, align 8, !tbaa !253, !noalias !700
  %i.aaa = load float, ptr %i.cn, align 8, !tbaa !253, !noalias !700
  %i.aab = load float, ptr %i.co, align 8, !tbaa !253, !noalias !700
  %i.aac = extractelement <2 x float> %i.zt, i64 0
  %i.aad = extractelement <2 x float> %i.zt, i64 1
  %i.aae = load ptr, ptr %i.bv, align 8, !tbaa !170
  %i.aaf = getelementptr inbounds [256 x i8], ptr %i.aae, i64 %i.bx ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 16
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aaf, i64 24
  %i.aai = load <2 x float>, ptr %i.cd, align 8, !tbaa !253, !noalias !700 ; 2 uses
  %i.aaj = load <2 x float>, ptr %i.ck, align 8, !tbaa !253, !noalias !700 ; 2 uses
  %i.aak = load <2 x float>, ptr %i.cl, align 8, !tbaa !253, !noalias !700 ; 2 uses
  %i.aal = fneg float %i.aac                      ; 2 uses
  %i.aam = fneg float %i.aad                      ; 2 uses
  %i.aan = fneg float %i.zw
  %i.aao = insertelement <2 x float> poison, float %i.aam, i64 0
  %i.aap = shufflevector <2 x float> %i.aao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaq = fmul <2 x float> %i.aaj, %i.aap
  %i.aar = insertelement <2 x float> poison, float %i.aal, i64 0
  %i.aas = shufflevector <2 x float> %i.aar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aat = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aai, <2 x float> %i.aas, <2 x float> %i.aaq)
  %i.aau = insertelement <2 x float> poison, float %i.aan, i64 0 ; 2 uses
  %i.aav = shufflevector <2 x float> %i.aau, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aak, <2 x float> %i.aav, <2 x float> %i.aat)
  %i.aax = load float, ptr %i.aah, align 4, !tbaa !253 ; 2 uses
  %i.aay = insertelement <2 x float> poison, float %i.aax, i64 0
  %i.aaz = shufflevector <2 x float> %i.aay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aba = load <2 x float>, ptr %i.aag, align 4, !tbaa !253 ; 4 uses
  %i.abb = shufflevector <2 x float> %i.aba, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.abc = shufflevector <2 x float> %i.aba, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.abd = fmul <2 x float> %i.aaj, %i.abc
  %i.abe = shufflevector <2 x float> %i.aba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abe, <2 x float> %i.aai, <2 x float> %i.abd)
  %i.abg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaz, <2 x float> %i.aak, <2 x float> %i.abf)
  %i.abh = insertelement <2 x float> poison, float %i.aaa, i64 0
  %i.abi = shufflevector <2 x float> %i.abh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abj = insertelement <2 x float> %i.aba, float %i.aam, i64 0
  %i.abk = fmul <2 x float> %i.abi, %i.abj
  %i.abl = insertelement <2 x float> poison, float %i.zz, i64 0
  %i.abm = shufflevector <2 x float> %i.abl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abn = insertelement <2 x float> %i.abb, float %i.aal, i64 0
  %i.abo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abm, <2 x float> %i.abn, <2 x float> %i.abk)
  %i.abp = insertelement <2 x float> poison, float %i.aab, i64 0
  %i.abq = shufflevector <2 x float> %i.abp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abr = insertelement <2 x float> %i.aau, float %i.aax, i64 1
  %i.abs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abq, <2 x float> %i.abr, <2 x float> %i.abo) ; 2 uses
  %i.abt = fadd <2 x float> %i.aaw, %i.abg
  %shift = shufflevector <2 x float> %i.abs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.abs, %shift
  %.sroa.3.12.vec.insert.i4.i.i200 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  %i.abu = getelementptr inbounds nuw i8, ptr %3, i64 856
  store <2 x float> %i.abt, ptr %i.abu, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 864
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i200, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !259
  %i.abv = load ptr, ptr %i.eu, align 8, !tbaa !353
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 132 ; 2 uses
  %i.abx = load i8, ptr %i.abw, align 4
  %i.aby = or i8 %i.abx, 1
  store i8 %i.aby, ptr %i.abw, align 4
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 1216
  invoke void @_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.abz, ptr noundef nonnull align 8 dereferenceable(872) %3)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.zo) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.zm) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.zk) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  ret void

bb.o:                                             ; preds = %bb.a
  %i.aca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.t

bb.p:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.acb = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.q:                                             ; preds = %bb.l, %bb.k, %.loopexit
  %i.acc = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.acd = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %i.acb, %bb.p ], [ %i.acc, %bb.q ], [ %i.acd, %bb.r ]
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o
  %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn, %bb.s ], [ %i.aca, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @_ZN10btSoftBody22DeformableRigidContactD2Ev(ptr noundef nonnull align 8 dead_on_return(872) dereferenceable(872) %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  resume { ptr, i32 } %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc { <2 x float>, <2 x float> } @_ZL28generateUnitOrthogonalVectorRK9btVector3(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #16 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !253  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !253 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !253 ; 3 uses
  %i.f = tail call noundef float @llvm.fabs.f32(float %i.a) ; 3 uses
  %i.g = tail call noundef float @llvm.fabs.f32(float %i.c) ; 3 uses
  %i.h = tail call noundef float @llvm.fabs.f32(float %i.e) ; 2 uses
  %i.i = fcmp ugt float %i.f, %i.g
  %i.j = fcmp ugt float %i.f, %i.h
  %or.cond = or i1 %i.i, %i.j
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fneg float %i.e
  %.sroa.035.4.vec.insert50 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.k, i64 1
  %.sroa.11.12.vec.insert62 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.c, i64 0
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = fcmp ugt float %i.g, %i.f
  %i.m = fcmp ugt float %i.g, %i.h
end_hunk_0
begin_hunk_1_@_ZN10btSoftBody17getRigidTransformEv:bb.a
  %i.ci = shufflevector <2 x float> %i.cb, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.cj = fmul <4 x float> %i.ch, %i.ci
  %i.ck = insertelement <4 x float> %i.cc, float 0.000000e+00, i64 3
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> %i.ce, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> %i.cg, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.cn = shufflevector <2 x float> %i.cb, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.co = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> %i.cn, <4 x float> %i.cj)
  %i.cp = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bp, i64 0
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cs = load <2 x float>, ptr %i.bq, align 8, !tbaa !253, !noalias !795 ; 2 uses
  %i.ct = load <2 x float>, ptr %i.bi, align 4, !tbaa !253, !noalias !796 ; 2 uses
  %i.cu = load float, ptr %i.bl, align 8, !tbaa !253, !noalias !796
  %i.cv = load <2 x float>, ptr %i.bj, align 4, !tbaa !253, !noalias !796 ; 2 uses
  %i.cw = load float, ptr %i.bm, align 8, !tbaa !253, !noalias !796
  %i.cx = load <2 x float>, ptr %i.bk, align 4, !tbaa !253, !noalias !796 ; 2 uses
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cz = load float, ptr %i.bn, align 8, !tbaa !253, !noalias !796
  %i.da = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.db = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.da, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.dc = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dd = shufflevector <4 x float> %i.db, <4 x float> %i.dc, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.de = shufflevector <2 x float> %i.cx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.df = shufflevector <4 x float> %i.dd, <4 x float> %i.de, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.dg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.cq, <4 x float> %i.co)
  %i.dh = insertelement <4 x float> %i.da, float 0.000000e+00, i64 3
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> %i.dc, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> %i.de, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.dk = shufflevector <2 x float> %i.cs, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.dl = fmul <4 x float> %i.dj, %i.dk
  %i.dm = shufflevector <2 x float> %i.bx, <2 x float> %i.by, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dn = insertelement <4 x float> %i.dm, float 0.000000e+00, i64 3
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> %i.ca, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.dp = shufflevector <2 x float> %i.cs, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.dq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.dp, <4 x float> %i.dl)
  %i.dr = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bs, i64 0
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.ds, <4 x float> %i.dq)
  store <4 x float> %i.dg, ptr %0, align 4
  store <4 x float> %i.dt, ptr %i.cr, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dv = load <2 x float>, ptr %i.bt, align 8, !tbaa !253, !noalias !795 ; 2 uses
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.dx = shufflevector <2 x float> %i.ct, <2 x float> %i.cv, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dy = insertelement <4 x float> %i.dx, float 1.000000e+00, i64 3
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> %i.cy, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ea = fmul <4 x float> %i.dw, %i.dz
  %i.eb = shufflevector <2 x float> %i.dv, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ec = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.eb, <4 x float> %i.ea)
  %i.ed = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cu, i64 0
  %i.ee = insertelement <4 x float> %i.ed, float %i.cw, i64 1
  %i.ef = insertelement <4 x float> %i.ee, float %i.cz, i64 2
  %i.eg = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bv, i64 0
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ei = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ef, <4 x float> %i.eh, <4 x float> %i.ec)
  store <4 x float> %i.ei, ptr %i.du, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.ej = phi float [ 0.000000e+00, %.lr.ph ], [ %i.gf, %bb.c ]
  %i.ek = phi float [ 0.000000e+00, %.lr.ph ], [ %i.gd, %bb.c ]
  %i.el = phi float [ 0.000000e+00, %.lr.ph ], [ %i.gb, %bb.c ]
  %i.em = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.ga, %bb.c ]
  %i.en = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.gc, %bb.c ]
  %i.eo = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.ge, %bb.c ]
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %indvars.iv ; 3 uses
  %i.eq = getelementptr inbounds nuw [256 x i8], ptr %i.az, i64 %indvars.iv ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.et = load float, ptr %i.es, align 4, !tbaa !253
  %i.eu = load float, ptr %i.ep, align 4, !tbaa !253, !noalias !797
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !253, !noalias !797
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !253, !noalias !797
  %i.ez = load <2 x float>, ptr %i.er, align 4, !tbaa !253
  %i.fa = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.et, i64 2
  %i.fb = shufflevector <2 x float> %i.ez, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fd = fsub <4 x float> %i.be, %i.fc           ; 2 uses
  %i.fe = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.eu, i64 0
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fg = fmul <4 x float> %i.ff, %i.fd
  %i.fh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.el, i64 2
  %i.fi = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> %i.fh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fk = fsub <4 x float> %i.fj, %i.fg           ; 3 uses
  store <4 x float> %i.fk, ptr %2, align 16, !tbaa !253
  %i.fl = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ew, i64 0
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fn = insertelement <4 x float> %i.fd, float 1.000000e+00, i64 3 ; 2 uses
  %i.fo = fmul <4 x float> %i.fm, %i.fn
  %i.fp = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ek, i64 2
  %i.fq = shufflevector <2 x float> %i.en, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fr = shufflevector <4 x float> %i.fq, <4 x float> %i.fp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fs = fsub <4 x float> %i.fr, %i.fo           ; 3 uses
  store <4 x float> %i.fs, ptr %i.ba, align 16, !tbaa !253
  %i.ft = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ey, i64 0
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fv = fmul <4 x float> %i.fu, %i.fn
  %i.fw = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ej, i64 2
  %i.fx = shufflevector <2 x float> %i.eo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> %i.fw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fz = fsub <4 x float> %i.fy, %i.fv           ; 3 uses
  store <4 x float> %i.fz, ptr %i.bb, align 16, !tbaa !253
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %i.ga = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gb = extractelement <4 x float> %i.fk, i64 2
  %i.gc = shufflevector <4 x float> %i.fs, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gd = extractelement <4 x float> %i.fs, i64 2
  %i.ge = shufflevector <4 x float> %i.fz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gf = extractelement <4 x float> %i.fz, i64 2
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !794
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z26singularValueDecompositionRK11btMatrix3x3RS_R9btVector3S2_f(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(48) %3, float noundef %4) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.GivensRotation, align 4      ; 8 uses
  %6 = alloca %class.GivensRotation, align 4      ; 8 uses
  %7 = alloca %class.btMatrix2x2, align 8         ; 8 uses
  %8 = alloca %class.btMatrix2x2, align 16        ; 7 uses
  %9 = alloca %class.GivensRotation, align 4      ; 8 uses
  %10 = alloca %class.GivensRotation, align 4     ; 7 uses
  %11 = alloca %class.btMatrix2x2, align 8        ; 7 uses
  %12 = alloca %class.btMatrix2x2, align 16       ; 7 uses
  %13 = alloca %class.GivensRotation, align 4     ; 8 uses
  %14 = alloca %class.GivensRotation, align 4     ; 8 uses
  %15 = alloca %class.btMatrix2x2, align 8        ; 8 uses
  %16 = alloca %class.btMatrix2x2, align 16       ; 7 uses
  %17 = alloca %class.btMatrix3x3, align 8        ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 4 dereferenceable(48) %0, i64 16, i1 false), !tbaa.struct !260
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !260
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !260
  store float 1.000000e+00, ptr %1, align 4, !tbaa !253
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 4, !tbaa !253
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.h, align 4, !tbaa !253
  store float 1.000000e+00, ptr %3, align 4, !tbaa !253
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 4, !tbaa !253
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.l, align 4, !tbaa !253
  call void @_Z15makeUpperBidiagR11btMatrix3x3S0_S0_(ptr noundef nonnull align 4 dereferenceable(48) %17, ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(48) %3)
  %i.m = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.n = load <2 x float>, ptr %17, align 8, !tbaa !253 ; 5 uses
  %i.o = extractelement <2 x float> %i.n, i64 1   ; 6 uses
  %i.p = extractelement <2 x float> %i.n, i64 0   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %17, i64 20 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 5 uses
  %i.s = load float, ptr %i.r, align 8, !tbaa !253 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 5 uses
  %i.u = load <2 x float>, ptr %i.q, align 4, !tbaa !253 ; 4 uses
  %i.v = load float, ptr %i.t, align 8, !tbaa !253 ; 6 uses
  %i.w = fmul float %i.p, %i.o
  %i.x = extractelement <2 x float> %i.u, i64 0   ; 4 uses
  %i.y = fmul float %i.x, %i.v
  %foldExtExtBinop = fmul <2 x float> %i.u, %i.u
  %i.z = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aa = call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.z)
  %i.ab = call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.aa)
  %i.ac = call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.ab)
  %i.ad = call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.ac) ; 2 uses
  %i.ae = fcmp ogt float %i.ad, f0x34000000
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sqrt = call nnan float @llvm.sqrt.f32(float %i.ad)
  %i.af = fmul nnan float %sqrt, 5.000000e-01     ; 2 uses
  %i.ag = fcmp ogt float %i.af, 1.000000e+00
  %.sroa.speculated = select i1 %i.ag, float %i.af, float 1.000000e+00
  %i.ah = fmul float %4, %.sroa.speculated
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0113 = phi float [ %i.ah, %bb.b ], [ %4, %bb.a ] ; 8 uses
  %i.ai = shufflevector <2 x float> %i.n, <2 x float> %i.u, <4 x i32> <i32 3, i32 1, i32 0, i32 2>
  %i.aj = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ai) ; 2 uses
  %i.ak = insertelement <4 x float> poison, float %.0113, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %18 = fcmp ogt <4 x float> %i.aj, %i.al
  %19 = freeze <4 x i1> %18
  %i.am = bitcast <4 x i1> %19 to i4
  %i.an = icmp eq i4 %i.am, -1
  %i.ao = extractelement <4 x float> %i.aj, i64 0 ; 2 uses
  br i1 %i.an, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 36
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.at = call noundef float @llvm.fabs.f32(float %i.s)
  %i.au = fcmp ogt float %i.at, %.0113
  br i1 %i.au, label %.lr.ph347, label %.critedge

bb.d:                                             ; preds = %bb.g
  %i.av = fmul float %i.eq, %i.ep
  %i.aw = extractelement <2 x float> %i.et, i64 0 ; 3 uses
  %i.ax = fmul float %i.aw, %i.eu
  %i.ay = call noundef float @llvm.fabs.f32(float %i.er)
  %i.az = fcmp ogt float %i.ay, %.0113
  %i.ba = icmp samesign ult i32 %.0112305346, 99
  %or.cond = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond, label %.lr.ph347, label %.critedge.loopexit, !llvm.loop !798

.lr.ph347:                                        ; preds = %.lr.ph, %bb.d
  %.0112305346 = phi i32 [ %i.es, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %i.bb = phi float [ %i.eq, %bb.d ], [ %i.p, %.lr.ph ] ; 3 uses
  %i.bc = phi float [ %i.ep, %bb.d ], [ %i.o, %.lr.ph ] ; 3 uses
  %i.bd = phi float [ %i.aw, %bb.d ], [ %i.x, %.lr.ph ] ; 3 uses
  %.0104309345 = phi float [ %i.er, %bb.d ], [ %i.s, %.lr.ph ]
  %.0103310344 = phi float [ %i.eu, %bb.d ], [ %i.v, %.lr.ph ]
  %.0102311343 = phi float [ %i.av, %bb.d ], [ %i.w, %.lr.ph ] ; 3 uses
  %.0312342 = phi float [ %i.ax, %bb.d ], [ %i.y, %.lr.ph ] ; 2 uses
  %i.be = insertelement <2 x float> poison, float %.0103310344, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.bc, i64 1 ; 2 uses
  %i.bg = fmul <2 x float> %i.bf, %i.bf
  %i.bh = insertelement <2 x float> poison, float %.0104309345, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.bd, i64 1 ; 2 uses
  %i.bj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bi, <2 x float> %i.bg) ; 3 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 0 ; 2 uses
  %shift = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop363 = fsub <2 x float> %shift, %i.bj
  %i.bl = extractelement <2 x float> %foldExtExtBinop363, i64 0
  %i.bm = fmul float %i.bl, 5.000000e-01          ; 4 uses
  %i.bn = fmul float %.0312342, %.0312342         ; 2 uses
  %i.bo = call float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %i.bn) ; 2 uses
  %i.bp = fcmp ogt float %i.bo, f0x34000000
  br i1 %i.bp, label %_ZL8copySignff.exit.i, label %_Z14wilkinsonShiftfff.exit

_ZL8copySignff.exit.i:                            ; preds = %.lr.ph347
  %i.bq = call noundef float @llvm.fabs.f32(float %i.bm)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.bo)
  %i.br = fadd float %i.bq, %sqrt.i
  %i.bs = fdiv float %i.bn, %i.br                 ; 3 uses
  %i.bt = fcmp ogt float %i.bs, 0.000000e+00
  %i.bu = fcmp olt float %i.bm, 0.000000e+00
  %or.cond3.i.i = and i1 %i.bu, %i.bt
  %i.bv = fneg float %i.bs
  %.0.i.i = select i1 %or.cond3.i.i, float %i.bv, float %i.bs
  %i.bw = fsub float %i.bk, %.0.i.i
  br label %_Z14wilkinsonShiftfff.exit

_Z14wilkinsonShiftfff.exit:                       ; preds = %_ZL8copySignff.exit.i, %.lr.ph347
  %.0.i = phi float [ %i.bw, %_ZL8copySignff.exit.i ], [ %i.bk, %.lr.ph347 ]
  %i.bx = fneg float %.0.i
  %i.by = call float @llvm.fmuladd.f32(float %i.bb, float %i.bb, float %i.bx) ; 3 uses
  %i.bz = fmul float %.0102311343, %.0102311343
  %i.ca = call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bz) ; 2 uses
  %i.cb = fcmp ogt float %i.ca, f0x34000000
  br i1 %i.cb, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_Z14wilkinsonShiftfff.exit
  %sqrt.i120 = call float @llvm.sqrt.f32(float %i.ca) ; 2 uses
  %i.cc = fcmp ogt float %sqrt.i120, f0x34000000
  br i1 %i.cc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cd = fdiv nnan float 1.000000e+00, %sqrt.i120
  %i.ce = fneg float %.0102311343
  %i.cf = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cg = insertelement <2 x float> %i.cf, float %i.ce, i64 1
  %i.ch = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = fmul <2 x float> %i.cg, %i.ci
  br label %bb.g

bb.g:                                             ; preds = %_Z14wilkinsonShiftfff.exit, %bb.e, %bb.f
  %i.ck = phi <2 x float> [ %i.cj, %bb.f ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.e ], [ <float 1.000000e+00, float 0.000000e+00>, %_Z14wilkinsonShiftfff.exit ] ; 12 uses
  %i.cl = fneg float %i.bc
  %i.cm = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.cn = insertelement <2 x float> %i.cm, float %i.cl, i64 1
  %i.co = fmul <2 x float> %i.ck, %i.cn
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cq = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cr, <2 x float> %i.cp)
  store <2 x float> %i.cs, ptr %17, align 8, !tbaa !253
  %i.ct = load <4 x float>, ptr %i.b, align 8
  %i.cu = fneg float %i.bd
  %i.cv = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.cu, i64 1
  %i.cx = fmul <2 x float> %i.ck, %i.cw
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cz = shufflevector <4 x float> %i.ct, <4 x float> poison, <2 x i32> zeroinitializer
  %i.da = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cz, <2 x float> %i.cy)
  store <2 x float> %i.da, ptr %i.b, align 8, !tbaa !253
  %i.db = load <4 x float>, ptr %i.d, align 8
  %i.dc = load float, ptr %i.ap, align 4, !tbaa !253 ; 2 uses
  %i.dd = fneg float %i.dc
  %i.de = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.df = insertelement <2 x float> %i.de, float %i.dd, i64 1
  %i.dg = fmul <2 x float> %i.ck, %i.df
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.di = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.di, <2 x float> %i.dh)
  store <2 x float> %i.dj, ptr %i.d, align 8, !tbaa !253
  %i.dk = load float, ptr %3, align 4, !tbaa !253
  %i.dl = load float, ptr %i.i, align 4, !tbaa !253 ; 2 uses
  %i.dm = fneg float %i.dl
  %i.dn = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.do = insertelement <2 x float> %i.dn, float %i.dm, i64 1
  %i.dp = fmul <2 x float> %i.ck, %i.do
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dr = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.ds, <2 x float> %i.dq)
  store <2 x float> %i.dt, ptr %3, align 4, !tbaa !253
  %i.du = load float, ptr %i.aq, align 4, !tbaa !253
  %i.dv = load float, ptr %i.j, align 4, !tbaa !253 ; 2 uses
  %i.dw = fneg float %i.dv
  %i.dx = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.dy = insertelement <2 x float> %i.dx, float %i.dw, i64 1
  %i.dz = fmul <2 x float> %i.ck, %i.dy
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eb = insertelement <2 x float> poison, float %i.du, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.ec, <2 x float> %i.ea)
  store <2 x float> %i.ed, ptr %i.aq, align 4, !tbaa !253
  %i.ee = load float, ptr %i.ar, align 4, !tbaa !253
  %i.ef = load float, ptr %i.as, align 4, !tbaa !253 ; 2 uses
  %i.eg = fneg float %i.ef
  %i.eh = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.ei = insertelement <2 x float> %i.eh, float %i.eg, i64 1
  %i.ej = fmul <2 x float> %i.ck, %i.ei
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.el = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.em, <2 x float> %i.ek)
  store <2 x float> %i.en, ptr %i.ar, align 4, !tbaa !253
  call void @_Z9zeroChaseR11btMatrix3x3S0_S0_(ptr noundef nonnull align 4 dereferenceable(48) %17, ptr noundef nonnull align 4 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(48) %3)
  %i.eo = load <2 x float>, ptr %17, align 8, !tbaa !253 ; 5 uses
  %i.ep = extractelement <2 x float> %i.eo, i64 1 ; 4 uses
  %i.eq = extractelement <2 x float> %i.eo, i64 0 ; 4 uses
  %i.er = load float, ptr %i.r, align 8, !tbaa !253 ; 4 uses
  %i.es = add nuw nsw i32 %.0112305346, 1         ; 3 uses
  %i.et = load <2 x float>, ptr %i.q, align 4, !tbaa !253 ; 3 uses
  %i.eu = load float, ptr %i.t, align 8, !tbaa !253 ; 4 uses
  %i.ev = shufflevector <2 x float> %i.eo, <2 x float> %i.et, <4 x i32> <i32 3, i32 1, i32 0, i32 2>
  %i.ew = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ev) ; 3 uses
  %i.ex = fcmp ogt <4 x float> %i.ew, %i.al
  %i.ey = freeze <4 x i1> %i.ex
  %i.ez = bitcast <4 x i1> %i.ey to i4
  %i.fa = icmp eq i4 %i.ez, -1
  br i1 %i.fa, label %bb.d, label %..critedge.loopexit_crit_edge354, !llvm.loop !798

..critedge.loopexit_crit_edge354:                 ; preds = %bb.g
  %i.fb = extractelement <4 x float> %i.ew, i64 0
  %i.fc = extractelement <2 x float> %i.et, i64 0
  br label %.critedge, !llvm.loop !798

.critedge.loopexit:                               ; preds = %bb.d
  %i.fd = extractelement <4 x float> %i.ew, i64 0
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph, %..critedge.loopexit_crit_edge354, %bb.c
  %i.fe = phi float [ %i.v, %bb.c ], [ %i.eu, %..critedge.loopexit_crit_edge354 ], [ %i.v, %.lr.ph ], [ %i.eu, %.critedge.loopexit ] ; 12 uses
  %.0112.lcssa = phi i32 [ 0, %bb.c ], [ %i.es, %..critedge.loopexit_crit_edge354 ], [ 0, %.lr.ph ], [ %i.es, %.critedge.loopexit ]
  %i.ff = phi float [ %i.p, %bb.c ], [ %i.eq, %..critedge.loopexit_crit_edge354 ], [ %i.p, %.lr.ph ], [ %i.eq, %.critedge.loopexit ] ; 7 uses
  %i.fg = phi float [ %i.o, %bb.c ], [ %i.ep, %..critedge.loopexit_crit_edge354 ], [ %i.o, %.lr.ph ], [ %i.ep, %.critedge.loopexit ] ; 8 uses
  %i.fh = phi float [ %i.x, %bb.c ], [ %i.fc, %..critedge.loopexit_crit_edge354 ], [ %i.x, %.lr.ph ], [ %i.aw, %.critedge.loopexit ] ; 12 uses
  %i.fi = phi float [ %i.s, %bb.c ], [ %i.er, %..critedge.loopexit_crit_edge354 ], [ %i.s, %.lr.ph ], [ %i.er, %.critedge.loopexit ] ; 14 uses
  %.lcssa = phi float [ %i.ao, %bb.c ], [ %i.fb, %..critedge.loopexit_crit_edge354 ], [ %i.ao, %.lr.ph ], [ %i.fd, %.critedge.loopexit ]
  %i.fj = phi <2 x float> [ %i.n, %bb.c ], [ %i.eo, %..critedge.loopexit_crit_edge354 ], [ %i.n, %.lr.ph ], [ %i.eo, %.critedge.loopexit ] ; 2 uses
  %i.fk = fcmp ugt float %.lcssa, %.0113
  br i1 %i.fk, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  store i32 0, ptr %13, align 4, !tbaa !397
  %i.fl = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  store i32 1, ptr %i.fl, align 4, !tbaa !398
  %i.fm = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %13, i64 12
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.fm, align 4, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  store i32 0, ptr %14, align 4, !tbaa !397
  %i.fo = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  store i32 1, ptr %i.fo, align 4, !tbaa !398
  %i.fp = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %14, i64 12
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.fp, align 4, !tbaa !253
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_1
begin_hunk_2_@_ZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeE:bb.a
  %17 = alloca %class.btMatrix3x3, align 4        ; 7 uses
  %18 = alloca %class.btMatrix3x3, align 4        ; 5 uses
  %19 = alloca %class.btMatrix3x3, align 4        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !268
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  %.in.v = select i1 %i.c, i64 32, i64 36
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.d = load float, ptr %.in, align 4, !tbaa !253 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 216
  store i8 1, ptr %i.f, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 208
  store ptr null, ptr %i.g, align 8, !tbaa !161
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 196
  store i32 0, ptr %i.h, align 4, !tbaa !162
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 200
  store i32 0, ptr %i.i, align 8, !tbaa !163
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 248
  store i8 1, ptr %i.j, align 8, !tbaa !160
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 240
  store ptr null, ptr %i.k, align 8, !tbaa !161
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 228
  store i32 0, ptr %i.l, align 4, !tbaa !162
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 232
  store i32 0, ptr %i.m, align 8, !tbaa !163
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 280
  store i8 1, ptr %i.n, align 8, !tbaa !160
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 272
  store ptr null, ptr %i.o, align 8, !tbaa !161
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 260
  store i32 0, ptr %i.p, align 4, !tbaa !162
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 264
  store i32 0, ptr %i.q, align 8, !tbaa !163
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 312
  store i8 1, ptr %i.r, align 8, !tbaa !160
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 304
  store ptr null, ptr %i.s, align 8, !tbaa !161
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 292
  store i32 0, ptr %i.t, align 4, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 296
  store i32 0, ptr %i.u, align 8, !tbaa !163
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 344
  store i8 1, ptr %i.v, align 8, !tbaa !156
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 336
  store ptr null, ptr %i.w, align 8, !tbaa !157
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 324
  store i32 0, ptr %i.x, align 4, !tbaa !158
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 328
  store i32 0, ptr %i.y, align 8, !tbaa !159
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 376
  store i8 1, ptr %i.z, align 8, !tbaa !336
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 368
  store ptr null, ptr %i.aa, align 8, !tbaa !337
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 356
  store i32 0, ptr %i.ab, align 4, !tbaa !338
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 360
  store i32 0, ptr %i.ac, align 8, !tbaa !339
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 424
  store i8 1, ptr %i.ad, align 8, !tbaa !160
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 416
  store ptr null, ptr %i.ae, align 8, !tbaa !161
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 404
  store i32 0, ptr %i.af, align 4, !tbaa !162
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 408
  store i32 0, ptr %i.ag, align 8, !tbaa !163
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 456
  store i8 1, ptr %i.ah, align 8, !tbaa !160
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 448
  store ptr null, ptr %i.ai, align 8, !tbaa !161
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 436
  store i32 0, ptr %i.aj, align 4, !tbaa !162
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 440
  store i32 0, ptr %i.ak, align 8, !tbaa !163
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 488
  store i8 1, ptr %i.al, align 8, !tbaa !160
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 480
  store ptr null, ptr %i.am, align 8, !tbaa !161
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 468
  store i32 0, ptr %i.an, align 4, !tbaa !162
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 472
  store i32 0, ptr %i.ao, align 8, !tbaa !163
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 520
  store i8 1, ptr %i.ap, align 8, !tbaa !160
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 512
  store ptr null, ptr %i.aq, align 8, !tbaa !161
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 500
  store i32 0, ptr %i.ar, align 4, !tbaa !162
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 504
  store i32 0, ptr %i.as, align 8, !tbaa !163
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 552
  store i8 1, ptr %i.at, align 8, !tbaa !156
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 544
  store ptr null, ptr %i.au, align 8, !tbaa !157
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 532
  store i32 0, ptr %i.av, align 4, !tbaa !158
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 536
  store i32 0, ptr %i.aw, align 8, !tbaa !159
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 584
  store i8 1, ptr %i.ax, align 8, !tbaa !336
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 576
  store ptr null, ptr %i.ay, align 8, !tbaa !337
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 564
  store i32 0, ptr %i.az, align 4, !tbaa !338
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 568
  store i32 0, ptr %i.ba, align 8, !tbaa !339
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 632
  store i8 1, ptr %i.bb, align 8, !tbaa !160
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 624
  store ptr null, ptr %i.bc, align 8, !tbaa !161
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 612
  store i32 0, ptr %i.bd, align 4, !tbaa !162
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 616
  store i32 0, ptr %i.be, align 8, !tbaa !163
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 664
  store i8 1, ptr %i.bf, align 8, !tbaa !160
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 656
  store ptr null, ptr %i.bg, align 8, !tbaa !161
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 644
  store i32 0, ptr %i.bh, align 4, !tbaa !162
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 648
  store i32 0, ptr %i.bi, align 8, !tbaa !163
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 696
  store i8 1, ptr %i.bj, align 8, !tbaa !160
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 688
  store ptr null, ptr %i.bk, align 8, !tbaa !161
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 676
  store i32 0, ptr %i.bl, align 4, !tbaa !162
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 680
  store i32 0, ptr %i.bm, align 8, !tbaa !163
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 728
  store i8 1, ptr %i.bn, align 8, !tbaa !160
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 720
  store ptr null, ptr %i.bo, align 8, !tbaa !161
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 708
  store i32 0, ptr %i.bp, align 4, !tbaa !162
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 712
  store i32 0, ptr %i.bq, align 8, !tbaa !163
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 760
  store i8 1, ptr %i.br, align 8, !tbaa !156
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 752
  store ptr null, ptr %i.bs, align 8, !tbaa !157
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 740
  store i32 0, ptr %i.bt, align 4, !tbaa !158
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 744
  store i32 0, ptr %i.bu, align 8, !tbaa !159
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 792
  store i8 1, ptr %i.bv, align 8, !tbaa !336
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 784
  store ptr null, ptr %i.bw, align 8, !tbaa !337
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 772
  store i32 0, ptr %i.bx, align 4, !tbaa !338
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 776
  store i32 0, ptr %i.by, align 8, !tbaa !339
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.ca = load i8, ptr %i.bz, align 4
  %i.cb = and i8 %i.ca, 1
  %.not = icmp eq i8 %i.cb, 0
  br i1 %.not, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !519
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !520
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ch = invoke noundef zeroext i1 @_ZNK10btSoftBody22checkDeformableContactEPK24btCollisionObjectWrapperRK9btVector3fRNS_4sCtiEb(ptr noundef nonnull align 8 dereferenceable(2064) %i.cd, ptr noundef %i.cf, ptr noundef nonnull align 4 dereferenceable(16) %i.cg, float noundef %i.d, ptr noundef nonnull align 8 dereferenceable(60) %4, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  br i1 %i.ch, label %bb.d, label %bb.ap

bb.d:                                             ; preds = %bb.c
  %i.ci = load float, ptr %i.a, align 8, !tbaa !268 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !521 ; 2 uses
  %.not64 = icmp eq ptr %i.ck, null
  br i1 %.not64, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 452
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !345
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cn = phi float [ %i.cm, %bb.e ], [ 0.000000e+00, %bb.d ] ; 5 uses
  %i.co = fadd float %i.ci, %i.cn
  %i.cp = fcmp ogt float %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.g, label %bb.ap

bb.g:                                             ; preds = %bb.f
  %i.cq = load ptr, ptr %i.cc, align 8, !tbaa !519
  %i.cr = load ptr, ptr %i.ce, align 8, !tbaa !520 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !484
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !485, !nonnull !263, !align !486 ; 9 uses
  %.sroa.7.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %.sroa.10.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.10.0.copyload25.i = load float, ptr %.sroa.10.0..sroa_idx24.i, align 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %.sroa.19.16..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %i.cy = load <2 x float>, ptr %i.cw, align 4    ; 3 uses
  %.sroa.7.0.copyload22.i = load float, ptr %.sroa.7.0..sroa_idx21.i, align 4
  %i.cz = load <2 x float>, ptr %i.cx, align 4    ; 3 uses
  %.sroa.19.16.copyload32.i = load float, ptr %.sroa.19.16..sroa_idx31.i, align 4
  %.sroa.22.16..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %.sroa.22.16.copyload35.i = load float, ptr %.sroa.22.16..sroa_idx34.i, align 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %.sroa.34.32..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %.sroa.34.32.copyload45.i = load float, ptr %.sroa.34.32..sroa_idx44.i, align 4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %20 = load <4 x float>, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 888
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !164
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dg = load <2 x float>, ptr %i.da, align 4    ; 3 uses
  %i.dh = load <3 x float>, ptr %i.cs, align 8, !tbaa !253
  %i.di = shufflevector <4 x float> %20, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.dj = fsub <3 x float> %i.dh, %i.di           ; 6 uses
  %i.dk = insertelement <2 x float> %i.cz, float %.sroa.19.16.copyload32.i, i64 1
  %i.dl = shufflevector <3 x float> %i.dj, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dm = fmul <2 x float> %i.dk, %i.dl
  %i.dn = insertelement <2 x float> %i.cy, float %.sroa.7.0.copyload22.i, i64 1
  %i.do = shufflevector <3 x float> %i.dj, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.do, <2 x float> %i.dm)
  %i.dq = shufflevector <3 x float> %i.dj, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.dq, <2 x float> %i.dp)
  %i.ds = extractelement <3 x float> %i.dj, i64 1
  %i.dt = fmul float %.sroa.22.16.copyload35.i, %i.ds
  %i.du = extractelement <3 x float> %i.dj, i64 0
  %i.dv = tail call float @llvm.fmuladd.f32(float %.sroa.10.0.copyload25.i, float %i.du, float %i.dt)
  %i.dw = extractelement <3 x float> %i.dj, i64 2
  %i.dx = tail call noundef float @llvm.fmuladd.f32(float %.sroa.34.32.copyload45.i, float %i.dw, float %i.dv)
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dx, i64 0
  store <2 x float> %i.dr, ptr %3, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %i.dy, align 8
  %i.dz = invoke noundef float @_ZN11btSparseSdfILi3EE8EvaluateERK9btVector3PK16btCollisionShapeRS1_f(ptr noundef nonnull align 8 dereferenceable(60) %i.de, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef %i.cu, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %i.d)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !487 ; 6 uses
  store ptr %i.eb, ptr %4, align 8, !tbaa !488
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load float, ptr %2, align 4, !tbaa !253 ; 2 uses
  %i.ef = load float, ptr %i.ec, align 4, !tbaa !253 ; 2 uses
  %i.eg = load float, ptr %i.ed, align 4, !tbaa !253 ; 2 uses
  %i.eh = shufflevector <2 x float> %i.cy, <2 x float> %i.cz, <2 x i32> <i32 1, i32 3>
  %i.ei = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = fmul <2 x float> %i.eh, %i.ej
  %i.el = shufflevector <2 x float> %i.cy, <2 x float> %i.cz, <2 x i32> <i32 0, i32 2>
  %i.em = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.en, <2 x float> %i.ek)
  %i.ep = insertelement <2 x float> poison, float %.sroa.10.0.copyload25.i, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %.sroa.22.16.copyload35.i, i64 1
  %i.er = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.es, <2 x float> %i.eo)
  %i.eu = extractelement <2 x float> %i.dg, i64 1
  %i.ev = fmul float %i.eu, %i.ef
  %i.ew = extractelement <2 x float> %i.dg, i64 0
  %i.ex = call float @llvm.fmuladd.f32(float %i.ew, float %i.ee, float %i.ev)
  %i.ey = call noundef float @llvm.fmuladd.f32(float %.sroa.34.32.copyload45.i, float %i.eg, float %i.ex)
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ey, i64 0
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store <2 x float> %i.et, ptr %i.ez, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !259
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.dz, ptr %i.fa, align 8, !tbaa !489
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 848 ; 3 uses
  store ptr %1, ptr %i.fb, align 8, !tbaa !353
  %i.fc = load ptr, ptr %i.cc, align 8, !tbaa !519 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 444
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !354
  %i.ff = load ptr, ptr %i.ce, align 8, !tbaa !520
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !487 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 248
  %i.fj = load float, ptr %i.fi, align 8, !tbaa !355
  %i.fk = fmul float %i.fe, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 128
  store float %i.ci, ptr %i.fl, align 8, !tbaa !356
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 132
  store float %i.fk, ptr %i.fm, align 4, !tbaa !357
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 224
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !290
  %i.fp = and i32 %i.fo, 3
  %.not109 = icmp eq i32 %i.fp, 0
  %.in65.v = select i1 %.not109, i64 452, i64 456
  %.in65 = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.in65.v
  %i.fq = load float, ptr %.in65, align 4, !tbaa !253
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 136
  store float %i.fq, ptr %i.fr, align 8, !tbaa !358
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 204 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.ft, ptr noundef nonnull align 4 dereferenceable(48) %i.fs, i64 16, i1 false), !tbaa.struct !260
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 220 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fv, ptr noundef nonnull align 4 dereferenceable(16) %i.fu, i64 16, i1 false), !tbaa.struct !260
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 236 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fx, ptr noundef nonnull align 4 dereferenceable(16) %i.fw, i64 16, i1 false), !tbaa.struct !260
  %i.fy = getelementptr inbounds nuw i8, ptr %i.eb, i64 272
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !272
  switch i32 %i.fz, label %bb.an [
    i32 2, label %bb.i
    i32 64, label %bb.t
  ]

bb.i:                                             ; preds = %bb.h
  %i.ga = load ptr, ptr %i.cj, align 8, !tbaa !521 ; 2 uses
  %.not75 = icmp eq ptr %i.ga, null
  br i1 %.not75, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.gb = load ptr, ptr %i.fg, align 8, !tbaa !487
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.pn110 = phi ptr [ %i.gb, %bb.j ], [ %i.ga, %bb.i ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.pn110, i64 56
  %i.gd = load <2 x float>, ptr %i.cs, align 8, !tbaa !253
  %i.ge = load <2 x float>, ptr %i.gc, align 4, !tbaa !253
  %i.gf = fsub <2 x float> %i.gd, %i.ge           ; 7 uses
  %i.gg = load float, ptr %i.df, align 8, !tbaa !253
  %i.gh = getelementptr inbounds nuw i8, ptr %.pn110, i64 64
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !253
  %i.gj = fsub float %i.gg, %i.gi                 ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gj, i64 0
  %i.gk = load atomic i8, ptr @_ZGVZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeEE9iwiStatic acquire, align 8
  %i.gl = icmp eq i8 %i.gk, 0
  br i1 %i.gl, label %bb.l, label %bb.n, !prof !359

bb.l:                                             ; preds = %bb.k
  %i.gm = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeEE9iwiStatic) #39
  %.not76 = icmp eq i32 %i.gm, 0
  br i1 %.not76, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeEE9iwiStatic, i8 0, i64 48, i1 false)
  %i.gn = call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeEE9iwiStatic) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeEE9iwiStatic) #39
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.go = load ptr, ptr %i.cj, align 8, !tbaa !521 ; 2 uses
  %.not77 = icmp eq ptr %i.go, null
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 372
  %spec.select = select i1 %.not77, ptr @_ZZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeEE9iwiStatic, ptr %i.gp ; 6 uses
  %i.gq = load ptr, ptr %i.cc, align 8, !tbaa !519
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 2028
  %i.gs = load i8, ptr %i.gr, align 4, !tbaa !294, !range !262, !noundef !263
  %i.gt = trunc nuw i8 %i.gs to i1
  %i.gu = fneg float %i.gj                        ; 2 uses
  %i.gv = extractelement <2 x float> %i.gf, i64 0
  %i.gw = fneg float %i.gv                        ; 3 uses
  %i.gx = extractelement <2 x float> %i.gf, i64 1 ; 2 uses
  %i.gy = fneg float %i.gx                        ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %spec.select, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %spec.select, i64 32
  %i.hb = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %i.hc = getelementptr inbounds nuw i8, ptr %spec.select, i64 20
  %i.hd = getelementptr inbounds nuw i8, ptr %spec.select, i64 36
  %i.he = load float, ptr %i.hc, align 4, !tbaa !253, !noalias !263
  %i.hf = load <3 x float>, ptr %i.gz, align 4, !tbaa !253, !noalias !263 ; 2 uses
  %i.hg = load float, ptr %i.hb, align 4, !tbaa !253, !noalias !263
  %i.hh = load <3 x float>, ptr %spec.select, align 4, !tbaa !253, !noalias !263 ; 2 uses
  %i.hi = load float, ptr %i.hd, align 4, !tbaa !253, !noalias !263
  %i.hj = load <3 x float>, ptr %i.ha, align 4, !tbaa !253, !noalias !263 ; 2 uses
  %i.hk = shufflevector <2 x float> %i.gf, <2 x float> poison, <3 x i32> zeroinitializer
  %i.hl = fmul <3 x float> %i.hk, %i.hf
  %i.hm = insertelement <3 x float> poison, float %i.gy, i64 0
  %i.hn = shufflevector <3 x float> %i.hm, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ho = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hh, <3 x float> %i.hn, <3 x float> %i.hl)
  %i.hp = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hj, <3 x float> zeroinitializer, <3 x float> %i.ho) ; 6 uses
  %i.hq = shufflevector <3 x float> %i.hf, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.hr = insertelement <3 x float> %i.hq, float %i.he, i64 2 ; 2 uses
  %i.hs = insertelement <3 x float> poison, float %i.gu, i64 0
  %i.ht = shufflevector <3 x float> %i.hs, <3 x float> poison, <3 x i32> zeroinitializer
  %i.hu = fmul <3 x float> %i.hr, %i.ht
  %i.hv = shufflevector <3 x float> %i.hh, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.hw = insertelement <3 x float> %i.hv, float %i.hg, i64 2 ; 2 uses
  %i.hx = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hw, <3 x float> zeroinitializer, <3 x float> %i.hu)
  %i.hy = shufflevector <3 x float> %i.hj, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.hz = insertelement <3 x float> %i.hy, float %i.hi, i64 2 ; 2 uses
  %i.ia = shufflevector <2 x float> %i.gf, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ib = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hz, <3 x float> %i.ia, <3 x float> %i.hx) ; 6 uses
  %i.ic = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gj, i64 0 ; 3 uses
  %i.id = shufflevector <3 x float> %i.ib, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ie = fmul <2 x float> %i.ic, %i.id
  %i.if = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.gu, i64 1 ; 3 uses
  %i.ig = shufflevector <3 x float> %i.ib, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ih = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.if, <2 x float> %i.ig, <2 x float> %i.ie)
  %i.ii = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ij = insertelement <2 x float> %i.ii, float %i.gy, i64 0 ; 3 uses
  %i.ik = shufflevector <3 x float> %i.ib, <3 x float> poison, <2 x i32> zeroinitializer
  %i.il = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> %i.ik, <2 x float> %i.ih)
  %i.im = extractelement <3 x float> %i.ib, i64 2
  %i.in = fmul float %i.im, %i.gw
  %i.io = extractelement <3 x float> %i.ib, i64 1
  %i.ip = call float @llvm.fmuladd.f32(float %i.gx, float %i.io, float %i.in)
  %i.iq = extractelement <3 x float> %i.ib, i64 0
  %i.ir = call noundef float @llvm.fmuladd.f32(float %i.iq, float 0.000000e+00, float %i.ip)
  %i.is = fmul <3 x float> %i.hr, zeroinitializer
  %i.it = insertelement <3 x float> poison, float %i.gj, i64 0
  %i.iu = shufflevector <3 x float> %i.it, <3 x float> poison, <3 x i32> zeroinitializer
  %i.iv = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hw, <3 x float> %i.iu, <3 x float> %i.is)
  %i.iw = insertelement <3 x float> poison, float %i.gw, i64 0
  %i.ix = shufflevector <3 x float> %i.iw, <3 x float> poison, <3 x i32> zeroinitializer
  %i.iy = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hz, <3 x float> %i.ix, <3 x float> %i.iv) ; 6 uses
  %i.iz = shufflevector <3 x float> %i.iy, <3 x float> poison, <2 x i32> <i32 2, i32 2>
end_hunk_2
begin_hunk_3_@_ZNK15btSoftColliders14CollideSDF_RDF6DoNodeERN10btSoftBody4FaceE:bb.a
  %indvars.iv.next.i77.i.2 = or disjoint i64 %indvars.iv.i75.i, 3 ; 2 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.next.i77.i.2
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !253, !noalias !1489
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv.next.i77.i.2
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !253, !noalias !1489
  %i.rs = call float @llvm.fmuladd.f32(float %i.rp, float %i.rr, float %i.rn) ; 3 uses
  %indvars.iv.next.i77.i.3 = add nuw nsw i64 %indvars.iv.i75.i, 4 ; 2 uses
  %niter285.next.3 = add i64 %niter285, 4         ; 2 uses
  %niter285.ncmp.3 = icmp eq i64 %niter285.next.3, %unroll_iter284
  br i1 %niter285.ncmp.3, label %.lr.ph.i83.i.preheader.unr-lcssa, label %.lr.ph.i74.i, !llvm.loop !12

.lr.ph.i83.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i74.i
  %lcmp.mod281.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod281.not, label %.lr.ph.i83.i.preheader, label %.lr.ph.i74.i.epil.preheader

.lr.ph.i74.i.epil.preheader:                      ; preds = %.lr.ph.i83.i.preheader.unr-lcssa, %.lr.ph.i74.i.preheader
  %indvars.iv.i75.i.epil.init = phi i64 [ 0, %.lr.ph.i74.i.preheader ], [ %indvars.iv.next.i77.i.3, %.lr.ph.i83.i.preheader.unr-lcssa ]
  %.089.i76.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i74.i.preheader ], [ %i.rs, %.lr.ph.i83.i.preheader.unr-lcssa ]
  %lcmp.mod283 = icmp ne i64 %xtraiter279, 0
  call void @llvm.assume(i1 %lcmp.mod283)
  br label %.lr.ph.i74.i.epil

.lr.ph.i74.i.epil:                                ; preds = %.lr.ph.i74.i.epil, %.lr.ph.i74.i.epil.preheader
  %indvars.iv.i75.i.epil = phi i64 [ %indvars.iv.next.i77.i.epil, %.lr.ph.i74.i.epil ], [ %indvars.iv.i75.i.epil.init, %.lr.ph.i74.i.epil.preheader ] ; 3 uses
  %.089.i76.i.epil = phi float [ %i.rx, %.lr.ph.i74.i.epil ], [ %.089.i76.i.epil.init, %.lr.ph.i74.i.epil.preheader ]
  %epil.iter280 = phi i64 [ %epil.iter280.next, %.lr.ph.i74.i.epil ], [ 0, %.lr.ph.i74.i.epil.preheader ]
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.i75.i.epil
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !253, !noalias !1489
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv.i75.i.epil
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !253, !noalias !1489
  %i.rx = call float @llvm.fmuladd.f32(float %i.ru, float %i.rw, float %.089.i76.i.epil) ; 2 uses
  %indvars.iv.next.i77.i.epil = add nuw nsw i64 %indvars.iv.i75.i.epil, 1
  %epil.iter280.next = add i64 %epil.iter280, 1   ; 2 uses
  %epil.iter280.cmp.not = icmp eq i64 %epil.iter280.next, %xtraiter279
  br i1 %epil.iter280.cmp.not, label %.lr.ph.i83.i.preheader, label %.lr.ph.i74.i.epil, !llvm.loop !1484

.lr.ph.i83.i.preheader:                           ; preds = %.lr.ph.i74.i.epil, %.lr.ph.i83.i.preheader.unr-lcssa
  %.lcssa235 = phi float [ %i.rs, %.lr.ph.i83.i.preheader.unr-lcssa ], [ %i.rx, %.lr.ph.i74.i.epil ]
  %xtraiter286 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.ry = icmp ult i64 %i.kx, 3
  br i1 %i.ry, label %.lr.ph.i83.i.epil.preheader, label %.lr.ph.i83.i.preheader.new

.lr.ph.i83.i.preheader.new:                       ; preds = %.lr.ph.i83.i.preheader
  %unroll_iter291 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i83.i

.lr.ph.i83.i:                                     ; preds = %.lr.ph.i83.i, %.lr.ph.i83.i.preheader.new
  %indvars.iv.i84.i = phi i64 [ 0, %.lr.ph.i83.i.preheader.new ], [ %indvars.iv.next.i86.i.3, %.lr.ph.i83.i ] ; 6 uses
  %.089.i85.i = phi float [ 0.000000e+00, %.lr.ph.i83.i.preheader.new ], [ %i.ss, %.lr.ph.i83.i ]
  %niter292 = phi i64 [ 0, %.lr.ph.i83.i.preheader.new ], [ %niter292.next.3, %.lr.ph.i83.i ]
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.i84.i
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !253, !noalias !1489
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %indvars.iv.i84.i
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !253, !noalias !1489
  %i.sd = call float @llvm.fmuladd.f32(float %i.sa, float %i.sc, float %.089.i85.i)
  %indvars.iv.next.i86.i = or disjoint i64 %indvars.iv.i84.i, 1 ; 2 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.next.i86.i
  %i.sf = load float, ptr %i.se, align 4, !tbaa !253, !noalias !1489
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %indvars.iv.next.i86.i
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !253, !noalias !1489
  %i.si = call float @llvm.fmuladd.f32(float %i.sf, float %i.sh, float %i.sd)
  %indvars.iv.next.i86.i.1 = or disjoint i64 %indvars.iv.i84.i, 2 ; 2 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.next.i86.i.1
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !253, !noalias !1489
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %indvars.iv.next.i86.i.1
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !253, !noalias !1489
  %i.sn = call float @llvm.fmuladd.f32(float %i.sk, float %i.sm, float %i.si)
  %indvars.iv.next.i86.i.2 = or disjoint i64 %indvars.iv.i84.i, 3 ; 2 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.next.i86.i.2
  %i.sp = load float, ptr %i.so, align 4, !tbaa !253, !noalias !1489
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %indvars.iv.next.i86.i.2
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !253, !noalias !1489
  %i.ss = call float @llvm.fmuladd.f32(float %i.sp, float %i.sr, float %i.sn) ; 3 uses
  %indvars.iv.next.i86.i.3 = add nuw nsw i64 %indvars.iv.i84.i, 4 ; 2 uses
  %niter292.next.3 = add i64 %niter292, 4         ; 2 uses
  %niter292.ncmp.3 = icmp eq i64 %niter292.next.3, %unroll_iter291
  br i1 %niter292.ncmp.3, label %.lr.ph.i92.i.preheader.unr-lcssa, label %.lr.ph.i83.i, !llvm.loop !12

.lr.ph.i92.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i83.i
  %lcmp.mod288.not = icmp eq i64 %xtraiter286, 0
  br i1 %lcmp.mod288.not, label %.lr.ph.i92.i.preheader, label %.lr.ph.i83.i.epil.preheader

.lr.ph.i83.i.epil.preheader:                      ; preds = %.lr.ph.i92.i.preheader.unr-lcssa, %.lr.ph.i83.i.preheader
  %indvars.iv.i84.i.epil.init = phi i64 [ 0, %.lr.ph.i83.i.preheader ], [ %indvars.iv.next.i86.i.3, %.lr.ph.i92.i.preheader.unr-lcssa ]
  %.089.i85.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i83.i.preheader ], [ %i.ss, %.lr.ph.i92.i.preheader.unr-lcssa ]
  %lcmp.mod290 = icmp ne i64 %xtraiter286, 0
  call void @llvm.assume(i1 %lcmp.mod290)
  br label %.lr.ph.i83.i.epil

.lr.ph.i83.i.epil:                                ; preds = %.lr.ph.i83.i.epil, %.lr.ph.i83.i.epil.preheader
  %indvars.iv.i84.i.epil = phi i64 [ %indvars.iv.next.i86.i.epil, %.lr.ph.i83.i.epil ], [ %indvars.iv.i84.i.epil.init, %.lr.ph.i83.i.epil.preheader ] ; 3 uses
  %.089.i85.i.epil = phi float [ %i.sx, %.lr.ph.i83.i.epil ], [ %.089.i85.i.epil.init, %.lr.ph.i83.i.epil.preheader ]
  %epil.iter287 = phi i64 [ %epil.iter287.next, %.lr.ph.i83.i.epil ], [ 0, %.lr.ph.i83.i.epil.preheader ]
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.i84.i.epil
  %i.su = load float, ptr %i.st, align 4, !tbaa !253, !noalias !1489
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %indvars.iv.i84.i.epil
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !253, !noalias !1489
  %i.sx = call float @llvm.fmuladd.f32(float %i.su, float %i.sw, float %.089.i85.i.epil) ; 2 uses
  %indvars.iv.next.i86.i.epil = add nuw nsw i64 %indvars.iv.i84.i.epil, 1
  %epil.iter287.next = add i64 %epil.iter287, 1   ; 2 uses
  %epil.iter287.cmp.not = icmp eq i64 %epil.iter287.next, %xtraiter286
  br i1 %epil.iter287.cmp.not, label %.lr.ph.i92.i.preheader, label %.lr.ph.i83.i.epil, !llvm.loop !1485

.lr.ph.i92.i.preheader:                           ; preds = %.lr.ph.i83.i.epil, %.lr.ph.i92.i.preheader.unr-lcssa
  %.lcssa234 = phi float [ %i.ss, %.lr.ph.i92.i.preheader.unr-lcssa ], [ %i.sx, %.lr.ph.i83.i.epil ]
  %xtraiter293 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.sy = icmp ult i64 %i.kx, 3
  br i1 %i.sy, label %.lr.ph.i92.i.epil.preheader, label %.lr.ph.i92.i.preheader.new

.lr.ph.i92.i.preheader.new:                       ; preds = %.lr.ph.i92.i.preheader
  %unroll_iter298 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i92.i

.lr.ph.i92.i:                                     ; preds = %.lr.ph.i92.i, %.lr.ph.i92.i.preheader.new
  %indvars.iv.i93.i = phi i64 [ 0, %.lr.ph.i92.i.preheader.new ], [ %indvars.iv.next.i95.i.3, %.lr.ph.i92.i ] ; 6 uses
  %.089.i94.i = phi float [ 0.000000e+00, %.lr.ph.i92.i.preheader.new ], [ %i.ts, %.lr.ph.i92.i ]
  %niter299 = phi i64 [ 0, %.lr.ph.i92.i.preheader.new ], [ %niter299.next.3, %.lr.ph.i92.i ]
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.i93.i
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !253, !noalias !1489
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv.i93.i
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !253, !noalias !1489
  %i.td = call float @llvm.fmuladd.f32(float %i.ta, float %i.tc, float %.089.i94.i)
  %indvars.iv.next.i95.i = or disjoint i64 %indvars.iv.i93.i, 1 ; 2 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.next.i95.i
  %i.tf = load float, ptr %i.te, align 4, !tbaa !253, !noalias !1489
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv.next.i95.i
  %i.th = load float, ptr %i.tg, align 4, !tbaa !253, !noalias !1489
  %i.ti = call float @llvm.fmuladd.f32(float %i.tf, float %i.th, float %i.td)
  %indvars.iv.next.i95.i.1 = or disjoint i64 %indvars.iv.i93.i, 2 ; 2 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.next.i95.i.1
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !253, !noalias !1489
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv.next.i95.i.1
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !253, !noalias !1489
  %i.tn = call float @llvm.fmuladd.f32(float %i.tk, float %i.tm, float %i.ti)
  %indvars.iv.next.i95.i.2 = or disjoint i64 %indvars.iv.i93.i, 3 ; 2 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.next.i95.i.2
  %i.tp = load float, ptr %i.to, align 4, !tbaa !253, !noalias !1489
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv.next.i95.i.2
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !253, !noalias !1489
  %i.ts = call float @llvm.fmuladd.f32(float %i.tp, float %i.tr, float %i.tn) ; 3 uses
  %indvars.iv.next.i95.i.3 = add nuw nsw i64 %indvars.iv.i93.i, 4 ; 2 uses
  %niter299.next.3 = add i64 %niter299, 4         ; 2 uses
  %niter299.ncmp.3 = icmp eq i64 %niter299.next.3, %unroll_iter298
  br i1 %niter299.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i92.i, !llvm.loop !12

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i92.i
  %lcmp.mod295.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod295.not, label %.loopexit.loopexit, label %.lr.ph.i92.i.epil.preheader

.lr.ph.i92.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i92.i.preheader
  %indvars.iv.i93.i.epil.init = phi i64 [ 0, %.lr.ph.i92.i.preheader ], [ %indvars.iv.next.i95.i.3, %.loopexit.loopexit.unr-lcssa ]
  %.089.i94.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i92.i.preheader ], [ %i.ts, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod297 = icmp ne i64 %xtraiter293, 0
  call void @llvm.assume(i1 %lcmp.mod297)
  br label %.lr.ph.i92.i.epil

.lr.ph.i92.i.epil:                                ; preds = %.lr.ph.i92.i.epil, %.lr.ph.i92.i.epil.preheader
  %indvars.iv.i93.i.epil = phi i64 [ %indvars.iv.next.i95.i.epil, %.lr.ph.i92.i.epil ], [ %indvars.iv.i93.i.epil.init, %.lr.ph.i92.i.epil.preheader ] ; 3 uses
  %.089.i94.i.epil = phi float [ %i.tx, %.lr.ph.i92.i.epil ], [ %.089.i94.i.epil.init, %.lr.ph.i92.i.epil.preheader ]
  %epil.iter294 = phi i64 [ %epil.iter294.next, %.lr.ph.i92.i.epil ], [ 0, %.lr.ph.i92.i.epil.preheader ]
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.i93.i.epil
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !253, !noalias !1489
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv.i93.i.epil
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !253, !noalias !1489
  %i.tx = call float @llvm.fmuladd.f32(float %i.tu, float %i.tw, float %.089.i94.i.epil) ; 2 uses
  %indvars.iv.next.i95.i.epil = add nuw nsw i64 %indvars.iv.i93.i.epil, 1
  %epil.iter294.next = add i64 %epil.iter294, 1   ; 2 uses
  %epil.iter294.cmp.not = icmp eq i64 %epil.iter294.next, %xtraiter293
  br i1 %epil.iter294.cmp.not, label %.loopexit.loopexit, label %.lr.ph.i92.i.epil, !llvm.loop !1486

.loopexit.loopexit:                               ; preds = %.lr.ph.i92.i.epil, %.loopexit.loopexit.unr-lcssa
  %.lcssa = phi float [ %i.ts, %.loopexit.loopexit.unr-lcssa ], [ %i.tx, %.lr.ph.i92.i.epil ]
  %i.ty = fadd float %.lcssa240.a, 0.000000e+00
  %i.tz = fadd float %.lcssa238.a, 0.000000e+00
  %i.ua = insertelement <2 x float> poison, float %.lcssa239.a, i64 0
  %i.ub = insertelement <2 x float> %i.ua, float %.lcssa236.a, i64 1
  %i.uc = fadd <2 x float> %i.ub, zeroinitializer
  %i.ud = fadd float %.lcssa235, 0.000000e+00
  %i.ue = fadd float %.lcssa234, 0.000000e+00
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.z
  %.08.lcssa.i80220.i = phi float [ 0.000000e+00, %bb.z ], [ %i.ue, %.loopexit.loopexit ] ; 4 uses
  %.08.lcssa.i44142149173186216.i = phi float [ 0.000000e+00, %bb.z ], [ %i.tz, %.loopexit.loopexit ] ; 4 uses
  %.08.lcssa.i26121126140151171188214.i = phi float [ 0.000000e+00, %bb.z ], [ %i.ty, %.loopexit.loopexit ] ; 5 uses
  %.08.lcssa.i115119128138153169190212.i = phi float [ 0.000000e+00, %bb.z ], [ %.lcssa241.a, %.loopexit.loopexit ]
  %.08.lcssa.i53157165194208.i = phi float [ 0.000000e+00, %bb.z ], [ %.lcssa237.a, %.loopexit.loopexit ]
  %.08.lcssa.i71196206.i = phi float [ 0.000000e+00, %bb.z ], [ %i.ud, %.loopexit.loopexit ] ; 3 uses
  %.08.lcssa.i89.i = phi float [ 0.000000e+00, %bb.z ], [ %.lcssa, %.loopexit.loopexit ]
  %i.uf = phi <2 x float> [ zeroinitializer, %bb.z ], [ %i.uc, %.loopexit.loopexit ] ; 4 uses
  %i.ug = fadd float %i.en, %.08.lcssa.i115119128138153169190212.i ; 5 uses
  %i.uh = extractelement <2 x float> %i.uf, i64 1 ; 2 uses
  %i.ui = fneg float %i.uh
  %i.uj = fmul float %i.ug, %i.ui
  %i.uk = fneg float %.08.lcssa.i44142149173186216.i
  %i.ul = fmul float %.08.lcssa.i26121126140151171188214.i, %i.uk
  %i.um = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.un = extractelement <2 x float> %i.uf, i64 0 ; 4 uses
  %i.uo = call noundef float @llvm.fmuladd.f32(float %i.un, float %.08.lcssa.i44142149173186216.i, float %i.uj)
  %13 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.uo, i64 0
  %14 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.08.lcssa.i26121126140151171188214.i, i64 0
  %i.up = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.08.lcssa.i71196206.i, i64 0
  %i.uq = extractelement <2 x float> %i.kj, i64 0
  %i.ur = extractelement <2 x float> %i.ki, i64 0
  %i.us = extractelement <2 x float> %i.kk, i64 0
  %i.ut = shufflevector <2 x float> %i.kj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1>
  %i.uu = insertelement <4 x float> %i.ut, float 1.000000e+00, i64 2
  %i.uv = shufflevector <2 x float> %i.ki, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1> ; 2 uses
  %i.uw = insertelement <4 x float> %i.uv, float -0.000000e+00, i64 2 ; 2 uses
  %i.ux = shufflevector <2 x float> %i.kk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1> ; 2 uses
  %i.uy = insertelement <4 x float> %i.ux, float -0.000000e+00, i64 2 ; 2 uses
  %i.uz = shufflevector <2 x float> %i.kj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.va = shufflevector <4 x float> %i.uz, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 6, i32 1>
  %i.vb = shufflevector <4 x float> %i.uz, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 1, i32 poison, i32 6, i32 0>
  %i.vc = shufflevector <2 x float> %i.kn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.vd = shufflevector <4 x float> %i.vb, <4 x float> %i.vc, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.ve = shufflevector <4 x float> %i.uv, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 3, i32 poison, i32 6, i32 0>
  %i.vf = shufflevector <2 x float> %i.kl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.vg = shufflevector <4 x float> %i.ve, <4 x float> %i.vf, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.vh = shufflevector <4 x float> %i.ux, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 3, i32 poison, i32 6, i32 0>
  %i.vi = shufflevector <2 x float> %i.kp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.vj = shufflevector <4 x float> %i.vh, <4 x float> %i.vi, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %.sroa.10114.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.vk = fadd float %i.en, %.08.lcssa.i53157165194208.i ; 4 uses
  %i.vl = fadd float %i.en, %.08.lcssa.i89.i      ; 3 uses
  %i.vm = fneg float %i.vl                        ; 2 uses
  %i.vn = fmul float %.08.lcssa.i44142149173186216.i, %i.vm
  %i.vo = fneg float %.08.lcssa.i71196206.i       ; 2 uses
  %i.vp = fmul float %i.vk, %i.vo
  %i.vq = fmul float %.08.lcssa.i26121126140151171188214.i, %i.vm
  %i.vr = fmul float %i.un, %i.vo
  %i.vs = call noundef float @llvm.fmuladd.f32(float %i.un, float %.08.lcssa.i80220.i, float %i.vq)
  %i.vt = call noundef float @llvm.fmuladd.f32(float %i.ug, float %i.vl, float %i.vr)
  %i.vu = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.vt, i64 0
  %i.vv = call noundef float @llvm.fmuladd.f32(float %i.ug, float %i.vk, float %i.ul)
  %i.vw = call noundef float @llvm.fmuladd.f32(float %i.uh, float %.08.lcssa.i71196206.i, float %i.vn) ; 2 uses
  %i.vx = call noundef float @llvm.fmuladd.f32(float %.08.lcssa.i44142149173186216.i, float %.08.lcssa.i80220.i, float %i.vp) ; 2 uses
  %i.vy = fmul float %.08.lcssa.i26121126140151171188214.i, %i.vw
  %i.vz = fneg float %.08.lcssa.i80220.i
  %i.wa = insertelement <2 x float> poison, float %i.vk, i64 0
  %i.wb = insertelement <2 x float> %i.wa, float %.08.lcssa.i80220.i, i64 1
  %i.wc = fneg <2 x float> %i.wb
  %i.wd = fmul <2 x float> %i.uf, %i.wc
  %i.we = fmul float %i.ug, %i.vz
  %15 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.we, i64 0
  %16 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %i.up, <2 x float> %15)
  %i.wf = insertelement <2 x float> poison, float %.08.lcssa.i26121126140151171188214.i, i64 0
  %i.wg = insertelement <2 x float> %i.wf, float %i.vk, i64 1
  %i.wh = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wi = insertelement <2 x float> %i.wh, float %i.vl, i64 1
  %i.wj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wg, <2 x float> %i.wi, <2 x float> %i.wd) ; 2 uses
  %i.wk = extractelement <2 x float> %i.wj, i64 1
  %i.wl = call float @llvm.fmuladd.f32(float %i.ug, float %i.wk, float %i.vy)
  %i.wm = call noundef float @llvm.fmuladd.f32(float %i.un, float %i.vx, float %i.wl)
  %i.wn = fdiv float 1.000000e+00, %i.wm          ; 6 uses
  %17 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.wn, i64 0 ; 2 uses
  %.scalar.a = fmul float %i.vs, %i.wn
  %i.wo = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar.a, i64 0 ; 2 uses
  %i.wp = shufflevector <2 x float> %i.wo, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.wq = insertelement <2 x float> poison, float %i.wn, i64 0
  %i.wr = shufflevector <2 x float> %i.wq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ws = fmul <2 x float> %i.wj, %i.wr           ; 3 uses
  %i.wt = fmul float %i.vw, %i.wn                 ; 2 uses
  %i.wu = insertelement <2 x float> %17, float 1.000000e+00, i64 1 ; 2 uses
  %i.wv = fmul <2 x float> %i.vu, %i.wu           ; 2 uses
  %i.ww = shufflevector <2 x float> %i.wv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.wx = fmul <2 x float> %13, %i.wu
  %i.wy = shufflevector <2 x float> %i.wx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %i.wz = fmul float %i.vx, %i.wn                 ; 2 uses
  %18 = fmul <2 x float> %16, %17                 ; 2 uses
  %i.xa = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %.scalar233 = fmul float %i.vv, %i.wn
  %i.xb = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar233, i64 0
  %i.xc = shufflevector <2 x float> %i.xb, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %i.xd = shufflevector <2 x float> %i.kj, <2 x float> %i.kn, <2 x i32> <i32 0, i32 2>
  %i.xe = insertelement <2 x float> poison, float %i.wt, i64 0
  %i.xf = shufflevector <2 x float> %i.xe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xg = fmul <2 x float> %i.xd, %i.xf
  %i.xh = shufflevector <2 x float> %i.ws, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xi = shufflevector <2 x float> %i.ki, <2 x float> %i.kl, <2 x i32> <i32 0, i32 2>
  %i.xj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xh, <2 x float> %i.xi, <2 x float> %i.xg)
  %i.xk = insertelement <2 x float> poison, float %i.wz, i64 0
  %i.xl = shufflevector <2 x float> %i.xk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xm = shufflevector <2 x float> %i.kk, <2 x float> %i.kp, <2 x i32> <i32 0, i32 2>
  %i.xn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xl, <2 x float> %i.xm, <2 x float> %i.xj) ; 2 uses
  %i.xo = fmul <4 x float> %i.uu, %i.ww
  %i.xp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wp, <4 x float> %i.uw, <4 x float> %i.xo)
  %i.xq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xa, <4 x float> %i.uy, <4 x float> %i.xp) ; 3 uses
  %i.xr = fmul <4 x float> %i.va, %i.wy
  %i.xs = shufflevector <2 x float> %i.ws, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.xt = shufflevector <4 x float> %i.xs, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 5, i32 0>
  %i.xu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xt, <4 x float> %i.uw, <4 x float> %i.xr)
  %i.xv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xc, <4 x float> %i.uy, <4 x float> %i.xu) ; 3 uses
  %i.xw = extractelement <4 x float> %i.xq, i64 0
  %i.xx = fmul float %i.uq, %i.xw
  %i.xy = extractelement <2 x float> %i.xn, i64 0
  %i.xz = call float @llvm.fmuladd.f32(float %i.ur, float %i.xy, float %i.xx)
  %i.ya = extractelement <4 x float> %i.xv, i64 0
  %i.yb = call noundef float @llvm.fmuladd.f32(float %i.us, float %i.ya, float %i.xz)
  %i.yc = fmul <4 x float> %i.vd, %i.xq
  %i.yd = shufflevector <2 x float> %i.xn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 1> ; 2 uses
  %i.ye = shufflevector <4 x float> %i.yd, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 6, i32 3>
  %i.yf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vg, <4 x float> %i.ye, <4 x float> %i.yc)
  %i.yg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vj, <4 x float> %i.xv, <4 x float> %i.yf)
  %i.yh = shufflevector <2 x float> %i.kj, <2 x float> %i.kn, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.yi = insertelement <4 x float> %i.yh, float 0.000000e+00, i64 2
  %i.yj = shufflevector <4 x float> %i.xq, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.yk = shufflevector <2 x float> %i.ki, <2 x float> %i.kl, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.yl = insertelement <4 x float> %i.yk, float 0.000000e+00, i64 2
  %i.ym = shufflevector <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x float> %i.yd, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.yn = shufflevector <2 x float> %i.kk, <2 x float> %i.kp, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.yo = insertelement <4 x float> %i.yn, float 0.000000e+00, i64 2
  %i.yp = shufflevector <4 x float> %i.xv, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  store float %i.yb, ptr %i.um, align 8
  store <4 x float> %i.yg, ptr %.sroa.5112.0..sroa_idx, align 4
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.yq = insertelement <3 x float> poison, float %i.ko, i64 0
  %i.yr = shufflevector <3 x float> %i.yq, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ys = shufflevector <2 x float> %i.wv, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.yt = shufflevector <4 x float> %i.wy, <4 x float> %i.ys, <3 x i32> <i32 0, i32 poison, i32 4>
  %i.yu = insertelement <3 x float> %i.yt, float %i.wt, i64 1
  %i.yv = fmul <3 x float> %i.yr, %i.yu
  %i.yw = shufflevector <2 x float> %i.ws, <2 x float> %i.wo, <3 x i32> <i32 0, i32 1, i32 2>
  %i.yx = insertelement <3 x float> poison, float %i.km, i64 0
  %i.yy = shufflevector <3 x float> %i.yx, <3 x float> poison, <3 x i32> zeroinitializer
  %i.yz = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.yw, <3 x float> %i.yy, <3 x float> %i.yv)
  %i.za = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.zb = shufflevector <4 x float> %i.xc, <4 x float> %i.za, <3 x i32> <i32 0, i32 poison, i32 4>
  %i.zc = insertelement <3 x float> %i.zb, float %i.wz, i64 1
  %i.zd = insertelement <3 x float> poison, float %i.kq, i64 0
  %i.ze = shufflevector <3 x float> %i.zd, <3 x float> poison, <3 x i32> zeroinitializer
  %i.zf = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.zc, <3 x float> %i.ze, <3 x float> %i.yz) ; 4 uses
  %i.zg = shufflevector <3 x float> %i.zf, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.zh = shufflevector <4 x float> %i.yj, <4 x float> %i.zg, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.zi = fmul <4 x float> %i.yi, %i.zh
  %i.zj = shufflevector <4 x float> %i.ym, <4 x float> %i.zg, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %i.zk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yl, <4 x float> %i.zj, <4 x float> %i.zi)
  %i.zl = shufflevector <4 x float> %i.yp, <4 x float> %i.zg, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.zm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yo, <4 x float> %i.zl, <4 x float> %i.zk)
  %i.zn = insertelement <2 x float> %i.kn, float %i.ko, i64 1
  %i.zo = shufflevector <3 x float> %i.zf, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.zp = fmul <2 x float> %i.zn, %i.zo
  %i.zq = insertelement <2 x float> %i.kl, float %i.km, i64 1
  %i.zr = shufflevector <3 x float> %i.zf, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zq, <2 x float> %i.zr, <2 x float> %i.zp)
  %i.zt = insertelement <2 x float> %i.kp, float %i.kq, i64 1
  %i.zu = shufflevector <3 x float> %i.zf, <3 x float> poison, <2 x i32> zeroinitializer
  %i.zv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zt, <2 x float> %i.zu, <2 x float> %i.zs)
  store <4 x float> %i.zm, ptr %.sroa.10114.16..sroa_idx, align 4
  store <2 x float> %i.zv, ptr %.sroa.15.32..sroa_idx, align 4
  %.sroa.17117.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 108
  store float 0.000000e+00, ptr %.sroa.17117.32..sroa_idx, align 4, !tbaa !259
  %i.zw = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.zx = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.zw, ptr noundef nonnull align 8 dereferenceable(204) %10)
          to label %bb.aa unwind label %bb.ae     ; 0 uses

bb.aa:                                            ; preds = %.loopexit
  %i.zy = getelementptr inbounds nuw i8, ptr %2, i64 400
  %i.zz = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.zy, ptr noundef nonnull align 8 dereferenceable(204) %11)
          to label %bb.ab unwind label %bb.ae     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.aaa = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.aab = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.aaa, ptr noundef nonnull align 8 dereferenceable(204) %12)
          to label %bb.ac unwind label %bb.ae     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.aac = getelementptr inbounds nuw i8, ptr %2, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aac, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !260
  %i.aad = getelementptr inbounds nuw i8, ptr %2, i64 832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aad, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !260
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %12) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.ag

bb.ad:                                            ; preds = %bb.y, %bb.x, %bb.w
  %i.aae = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab, %bb.aa, %.loopexit
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn66.pn.pn = phi { ptr, i32 } [ %i.aae, %bb.ad ], [ %i.aaf, %bb.ae ]
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %12) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.aj

bb.ag:                                            ; preds = %bb.j, %bb.ac, %bb.p
  %i.aag = load ptr, ptr %i.cm, align 8, !tbaa !523
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 1344
  invoke void @_ZN20btAlignedObjectArrayIN10btSoftBody26DeformableFaceRigidContactEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.aah, ptr noundef nonnull align 8 dereferenceable(904) %2)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.aai = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.i, %bb.ag, %bb.f
  %i.aaj = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float 0.000000e+00, ptr %i.aaj, align 4, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %i.aak = getelementptr inbounds nuw i8, ptr %2, i64 608
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.aak) #39
  %i.aal = getelementptr inbounds nuw i8, ptr %2, i64 400
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.aal) #39
  %i.aam = getelementptr inbounds nuw i8, ptr %2, i64 192
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.aam) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  ret void

bb.aj:                                            ; preds = %bb.ah, %bb.af, %bb.q
  %.pn81.pn.pn = phi { ptr, i32 } [ %i.fx, %bb.q ], [ %.pn66.pn.pn, %bb.af ], [ %i.aai, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @_ZN10btSoftBody22DeformableRigidContactD2Ev(ptr noundef nonnull align 8 dead_on_return(904) dereferenceable(904) %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  resume { ptr, i32 } %.pn81.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIN10btSoftBody26DeformableFaceRigidContactEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(904) %1) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !219  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !220
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i, i32 1, i32 %i.f
  tail call void @_ZN20btAlignedObjectArrayIN10btSoftBody26DeformableFaceRigidContactEE7reserveEi(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %i.g)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !219
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !218
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds [904 x i8], ptr %i.j, i64 %i.k ; 13 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(904) %i.l, ptr noundef nonnull align 8 dereferenceable(904) %1, i64 64, i1 false), !tbaa.struct !364
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 16, i1 false), !tbaa.struct !260
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !260
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !260
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.s, ptr noundef nonnull align 8 dereferenceable(28) %i.t, i64 28, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 140
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 140
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.u, ptr noundef nonnull align 4 dereferenceable(48) %i.v, i64 16, i1 false), !tbaa.struct !260
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !260
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 172
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !260
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 192
  tail call void @_ZN23btMultiBodyJacobianDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.aa, ptr noundef nonnull align 8 dereferenceable(204) %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 400 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 400
  invoke void @_ZN23btMultiBodyJacobianDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.ac, ptr noundef nonnull align 8 dereferenceable(204) %i.ad)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 608
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 608
  invoke void @_ZN23btMultiBodyJacobianDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.ae, ptr noundef nonnull align 8 dereferenceable(204) %i.af)
          to label %_ZN10btSoftBody26DeformableFaceRigidContactC2ERKS0_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.ac) #39
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { ptr, i32 } [ %i.ah, %bb.f ], [ %i.ag, %bb.e ]
  tail call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.aa) #39
  resume { ptr, i32 } %.pn.i.i

_ZN10btSoftBody26DeformableFaceRigidContactC2ERKS0_.exit: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 816
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 816
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 848
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 848
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(56) %i.al, i64 56, i1 false)
  %i.am = load i32, ptr %i.a, align 4, !tbaa !219
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.a, align 4, !tbaa !219
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_3
begin_hunk_4_@_ZN20btAlignedObjectArrayIS_IiEE7reserveEi:bb.a
  br i1 %.not.i5.i.i.i.i, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i: ; preds = %scalar.ph21.prol.loopexit, %scalar.ph21, %middle.block30, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i
  %i.ay = load i8, ptr %i.n, align 8, !tbaa !249, !range !262, !noundef !263
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.e, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.z)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i
  store i8 1, ptr %i.n, align 8, !tbaa !249
  store ptr %i.w, ptr %i.o, align 8, !tbaa !250
  store i32 %i.s, ptr %i.q, align 8, !tbaa !252
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 0, i64 %i.v, i1 false), !tbaa !275
  store i32 %i.s, ptr %i.p, align 4, !tbaa !251
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !250 ; 7 uses
  %min.iters.check = icmp ult i32 %i.s, 8
  %i.bc = ptrtoaddr ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.x
  %diff.check = icmp ugt i64 %i.bd, -32
  %or.cond34 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond34, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %i.u, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <4 x i32>, ptr %i.bf, align 4, !tbaa !275
  %wide.load18 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !275
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x i32> %wide.load, ptr %i.be, align 4, !tbaa !275
  store <4 x i32> %wide.load18, ptr %i.bh, align 4, !tbaa !275
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !1504

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.u
  br i1 %cmp.n, label %_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i6.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter35 = and i64 %i.u, 3                   ; 2 uses
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i6.i.i.prol = phi i64 [ %indvars.iv.next.i7.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i6.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter37 = phi i64 [ %prol.iter37.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i6.i.i.prol
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i6.i.i.prol
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !275
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !275
  %indvars.iv.next.i7.i.i.prol = add nuw nsw i64 %indvars.iv.i6.i.i.prol, 1 ; 2 uses
  %prol.iter37.next = add i64 %prol.iter37, 1     ; 2 uses
  %prol.iter37.cmp.not = icmp eq i64 %prol.iter37.next, %xtraiter35
  br i1 %prol.iter37.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1505

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i6.i.i.unr = phi i64 [ %indvars.iv.i6.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i7.i.i.prol, %scalar.ph.prol ]
  %i.bm = sub nsw i64 %indvars.iv.i6.i.i.ph, %i.u
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit.i, label %scalar.ph

_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i: ; preds = %bb.d
  store i32 %i.s, ptr %i.p, align 4, !tbaa !251
  br label %_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i6.i.i = phi i64 [ %indvars.iv.next.i7.i.i.3, %scalar.ph ], [ %indvars.iv.i6.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i6.i.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i6.i.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !275
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !275
  %indvars.iv.next.i7.i.i = add nuw nsw i64 %indvars.iv.i6.i.i, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i7.i.i
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.i7.i.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !275
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !275
  %indvars.iv.next.i7.i.i.1 = add nuw nsw i64 %indvars.iv.i6.i.i, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i7.i.i.1
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.i7.i.i.1
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !275
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !275
  %indvars.iv.next.i7.i.i.2 = add nuw nsw i64 %indvars.iv.i6.i.i, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i7.i.i.2
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.i7.i.i.2
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !275
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !275
  %indvars.iv.next.i7.i.i.3 = add nuw nsw i64 %indvars.iv.i6.i.i, 4 ; 2 uses
  %exitcond.not.i8.i.i.3 = icmp eq i64 %indvars.iv.next.i7.i.i.3, %i.u
  br i1 %exitcond.not.i8.i.i.3, label %_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit.i, label %scalar.ph, !llvm.loop !1506

_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit.i:      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ca = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.ca, label %_ZNK20btAlignedObjectArrayIS_IiEE4copyEiiPS0_.exit, label %bb.d, !llvm.loop !1507

_ZNK20btAlignedObjectArrayIS_IiEE4copyEiiPS0_.exit: ; preds = %_ZN20btAlignedObjectArrayIiEC2ERKS0_.exit.i
  %.pre = load i32, ptr %i.g, align 4, !tbaa !449 ; 2 uses
  %i.cb = icmp sgt i32 %.pre, 0
  br i1 %i.cb, label %.lr.ph.i5, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit

.lr.ph.i5:                                        ; preds = %_ZNK20btAlignedObjectArrayIS_IiEE4copyEiiPS0_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %zext11 = zext nneg i32 %.pre to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i, %.lr.ph.i5
  %indvars.iv.i6 = phi i64 [ 0, %.lr.ph.i5 ], [ %indvars.iv.next.i7, %_ZN20btAlignedObjectArrayIiED2Ev.exit.i ] ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !448
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.cd, i64 %indvars.iv.i6 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !250 ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.cg, null
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.ci = load i8, ptr %i.ch, align 8, !range !262
  %i.cj = trunc nuw i8 %i.ci to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.cj, i1 false
  br i1 %or.cond.i.i.i, label %bb.g, label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cg)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  tail call void @__clang_call_terminate(ptr %i.cl) #40
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit.i:          ; preds = %bb.g, %bb.f
  %indvars.iv.next.i7 = add nuw nsw i64 %indvars.iv.i6, 1 ; 2 uses
  %i.cm = icmp eq i64 %indvars.iv.next.i7, %zext11
  br i1 %i.cm, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit, label %bb.f, !llvm.loop !24

_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit: ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i, %_ZN20btAlignedObjectArrayIS_IiEE8allocateEi.exit, %_ZNK20btAlignedObjectArrayIS_IiEE4copyEiiPS0_.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !448 ; 2 uses
  %.not.i10 = icmp eq ptr %i.co, null
  br i1 %.not.i10, label %_ZN20btAlignedObjectArrayIS_IiEE10deallocateEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !447, !range !262, !noundef !263
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.j, label %_ZN20btAlignedObjectArrayIS_IiEE10deallocateEv.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.co)
  br label %_ZN20btAlignedObjectArrayIS_IiEE10deallocateEv.exit

_ZN20btAlignedObjectArrayIS_IiEE10deallocateEv.exit: ; preds = %bb.i, %bb.j, %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.cs, align 8, !tbaa !447
  store ptr %.0.i, ptr %i.cn, align 8, !tbaa !448
  store i32 %1, ptr %i.a, align 8, !tbaa !450
  br label %bb.k

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayIS_IiEE10deallocateEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11btSparseSdfILi3EE9BuildCellERNS0_4CellE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(296) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %class.btTransform, align 4         ; 21 uses
  %3 = alloca %"struct.btGjkEpaSolver2::sResults", align 4 ; 12 uses
  %4 = alloca %class.btVector3, align 8           ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.c = load i32, ptr %i.b, align 8, !tbaa !275
  %i.d = sitofp i32 %i.c to float
  %i.e = load <2 x i32>, ptr %i.a, align 8, !tbaa !275
  %i.f = sitofp <2 x i32> %i.e to <2 x float>
  %i.g = fmul nnan <2 x float> %i.f, splat (float 3.000000e+00)
  %i.h = fmul nnan float %i.d, 3.000000e+00
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.j = load float, ptr %i.i, align 8, !tbaa !253 ; 2 uses
  %i.k = insertelement <2 x float> poison, float %i.j, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x float> %i.g, %i.l              ; 2 uses
  %i.n = fmul float %i.j, %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %5 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.n, i64 0
  %i.w = extractelement <2 x float> %i.m, i64 0   ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %indvars.iv41 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next42, %bb.d ] ; 3 uses
  %i.x = load float, ptr %i.i, align 8, !tbaa !363
  %i.y = trunc nuw nsw i64 %indvars.iv41 to i32
  %i.z = uitofp nneg i32 %i.y to float
  %6 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.x, i64 0
  %i.aa = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.z, i64 0
  %7 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> %i.aa, <2 x float> %5) ; 2 uses
  %invariant.gep36 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv41
  %i.ab = insertelement <2 x float> %7, float 0.000000e+00, i64 1 ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit.3
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next42, 4
  br i1 %exitcond44.not, label %bb.b, label %bb.c, !llvm.loop !1508

bb.e:                                             ; preds = %bb.c, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit.3
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit.3 ] ; 3 uses
  %i.ac = load float, ptr %i.i, align 8, !tbaa !363
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  %i.ae = uitofp nneg i32 %i.ad to float
  %gep = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep36, i64 %indvars.iv ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.af = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ae, i64 1
  %i.ai = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ah, <2 x float> %i.m) ; 2 uses
  store <2 x float> %i.ai, ptr %4, align 8, !tbaa !253
  store <2 x float> %i.ab, ptr %i.p, align 8, !tbaa !253
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !362 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  store float 1.000000e+00, ptr %2, align 4, !tbaa !253
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 4, !tbaa !253
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !253
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, i8 0, i64 20, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !282
  %i.am = icmp slt i32 %i.al, 20
  br i1 %i.am, label %bb.f, label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.an = call noundef float @_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE(ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 0.000000e+00, ptr noundef nonnull %i.aj, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !362
  br label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit

_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit: ; preds = %bb.e, %bb.f
  %i.ao = phi ptr [ %.pre, %bb.f ], [ %i.aj, %bb.e ] ; 3 uses
  %.0.i = phi float [ %i.an, %bb.f ], [ 0.000000e+00, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  store float %.0.i, ptr %gep, align 4, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.ap = load float, ptr %i.i, align 8, !tbaa !363
  %i.aq = fadd float %i.ap, %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  store float %i.aq, ptr %4, align 8, !tbaa !253
  %i.ar = extractelement <2 x float> %i.ai, i64 1 ; 3 uses
  store float %i.ar, ptr %i.o, align 4, !tbaa !253
  store <2 x float> %i.ab, ptr %i.p, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  store float 1.000000e+00, ptr %2, align 4, !tbaa !253
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 4, !tbaa !253
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !253
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, i8 0, i64 20, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !282
  %i.au = icmp slt i32 %i.at, 20
  br i1 %i.au, label %bb.g, label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit.1

bb.g:                                             ; preds = %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.av = call noundef float @_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE(ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 0.000000e+00, ptr noundef nonnull %i.ao, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %.pre45 = load ptr, ptr %i.q, align 8, !tbaa !362
  br label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit.1

_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit.1: ; preds = %bb.g, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit
  %i.aw = phi ptr [ %.pre45, %bb.g ], [ %i.ao, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit ] ; 3 uses
  %.0.i.1 = phi float [ %i.av, %bb.g ], [ 0.000000e+00, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  %gep35.1 = getelementptr inbounds nuw i8, ptr %gep, i64 64
  store float %.0.i.1, ptr %gep35.1, align 4, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.ax = load float, ptr %i.i, align 8, !tbaa !363
  %i.ay = call float @llvm.fmuladd.f32(float %i.ax, float 2.000000e+00, float %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  store float %i.ay, ptr %4, align 8, !tbaa !253
  store float %i.ar, ptr %i.o, align 4, !tbaa !253
  store <2 x float> %i.ab, ptr %i.p, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  store float 1.000000e+00, ptr %2, align 4, !tbaa !253
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 4, !tbaa !253
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !253
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, i8 0, i64 20, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !282
  %i.bb = icmp slt i32 %i.ba, 20
  br i1 %i.bb, label %bb.h, label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit.2

bb.h:                                             ; preds = %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit.1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.bc = call noundef float @_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE(ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 0.000000e+00, ptr noundef nonnull %i.aw, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %.pre46 = load ptr, ptr %i.q, align 8, !tbaa !362
  br label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit.2

_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit.2: ; preds = %bb.h, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit.1
  %i.bd = phi ptr [ %.pre46, %bb.h ], [ %i.aw, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit.1 ] ; 2 uses
  %.0.i.2 = phi float [ %i.bc, %bb.h ], [ 0.000000e+00, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  %gep35.2 = getelementptr inbounds nuw i8, ptr %gep, i64 128
  store float %.0.i.2, ptr %gep35.2, align 4, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.be = load float, ptr %i.i, align 8, !tbaa !363
  %i.bf = call float @llvm.fmuladd.f32(float %i.be, float 3.000000e+00, float %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  store float %i.bf, ptr %4, align 8, !tbaa !253
  store float %i.ar, ptr %i.o, align 4, !tbaa !253
  store <2 x float> %7, ptr %i.p, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  store float 1.000000e+00, ptr %2, align 4, !tbaa !253
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 4, !tbaa !253
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !253
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, i8 0, i64 20, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !282
  %i.bi = icmp slt i32 %i.bh, 20
  br i1 %i.bi, label %bb.i, label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit.3

bb.i:                                             ; preds = %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit.2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.bj = call noundef float @_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE(ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 0.000000e+00, ptr noundef nonnull %i.bd, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit.3

_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit.3: ; preds = %bb.i, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit.2
  %.0.i.3 = phi float [ %i.bj, %bb.i ], [ 0.000000e+00, %_ZN11btSparseSdfILi3EE15DistanceToShapeERK9btVector3PK16btCollisionShape.exit.2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  %gep35.3 = getelementptr inbounds nuw i8, ptr %gep, i64 192
  store float %.0.i.3, ptr %gep35.3, align 4, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !1509
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE7reserveEi(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !204
  %i.c = icmp slt i32 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE8allocateEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = sext i32 %1 to i64
  %i.e = mul nsw i64 %i.d, 872
  %i.f = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.e, i32 noundef 16)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE8allocateEi.exit

_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE8allocateEi.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !203  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE7destroyEii.exit

.lr.ph.i:                                         ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE8allocateEi.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %zext = zext nneg i32 %i.h to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZN10btSoftBody25DeformableNodeRigidAnchorC2ERKS0_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN10btSoftBody25DeformableNodeRigidAnchorC2ERKS0_.exit.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [872 x i8], ptr %.0.i, i64 %indvars.iv.i ; 14 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !202
  %i.m = getelementptr inbounds nuw [872 x i8], ptr %i.l, i64 %indvars.iv.i ; 14 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(872) %i.k, ptr noundef nonnull align 8 dereferenceable(872) %i.m, i64 64, i1 false), !tbaa.struct !364
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 16, i1 false), !tbaa.struct !260
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !260
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !260
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.t, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 140
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 140
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.v, ptr noundef nonnull align 4 dereferenceable(48) %i.w, i64 16, i1 false), !tbaa.struct !260
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 156
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !260
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 172
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 172
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !260
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 192 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  tail call void @_ZN23btMultiBodyJacobianDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.ab, ptr noundef nonnull align 8 dereferenceable(204) %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 400 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 400
  invoke void @_ZN23btMultiBodyJacobianDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.ad, ptr noundef nonnull align 8 dereferenceable(204) %i.ae)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 608
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 608
  invoke void @_ZN23btMultiBodyJacobianDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.af, ptr noundef nonnull align 8 dereferenceable(204) %i.ag)
          to label %_ZN10btSoftBody25DeformableNodeRigidAnchorC2ERKS0_.exit.i unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.ad) #39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %i.ah, %bb.f ]
  tail call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.ab) #39
  resume { ptr, i32 } %.pn.i.i.i.i

_ZN10btSoftBody25DeformableNodeRigidAnchorC2ERKS0_.exit.i: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 816
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 816
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 848
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 848
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !353
  store ptr %i.an, ptr %i.al, align 8, !tbaa !353
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 856
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 856
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !260
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.aq, label %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE4copyEiiPS1_.exit, label %bb.d, !llvm.loop !1510

_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE4copyEiiPS1_.exit: ; preds = %_ZN10btSoftBody25DeformableNodeRigidAnchorC2ERKS0_.exit.i
  %.pre = load i32, ptr %i.g, align 4, !tbaa !203 ; 2 uses
  %i.ar = icmp sgt i32 %.pre, 0
  br i1 %i.ar, label %.lr.ph.i5, label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE7destroyEii.exit

.lr.ph.i5:                                        ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE4copyEiiPS1_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %zext21 = zext nneg i32 %.pre to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i5
  %indvars.iv.i6 = phi i64 [ 0, %.lr.ph.i5 ], [ %indvars.iv.next.i7, %bb.i ] ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !202
  %i.au = getelementptr inbounds nuw [872 x i8], ptr %i.at, i64 %indvars.iv.i6 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 608
  tail call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.av) #39
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 400
  tail call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.aw) #39
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 192
  tail call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.ax) #39
  %indvars.iv.next.i7 = add nuw nsw i64 %indvars.iv.i6, 1 ; 2 uses
  %i.ay = icmp eq i64 %indvars.iv.next.i7, %zext21
  br i1 %i.ay, label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE7destroyEii.exit, label %bb.i, !llvm.loop !6

_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE7destroyEii.exit: ; preds = %bb.i, %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE8allocateEi.exit, %_ZNK20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE4copyEiiPS1_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !202 ; 2 uses
  %.not.i10 = icmp eq ptr %i.ba, null
  br i1 %.not.i10, label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE10deallocateEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE7destroyEii.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !201, !range !262, !noundef !263
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ba)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr null, ptr %i.az, align 8, !tbaa !202
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE10deallocateEv.exit

_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE10deallocateEv.exit: ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE7destroyEii.exit, %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.be, align 8, !tbaa !201
  store ptr %.0.i, ptr %i.az, align 8, !tbaa !202
  store i32 %1, ptr %i.a, align 8, !tbaa !204
  br label %bb.m

bb.m:                                             ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE10deallocateEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE4swapEii(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.btSoftBody::DeformableNodeRigidAnchor", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [872 x i8], ptr %i.b, i64 %i.c ; 14 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(872) %3, ptr noundef nonnull align 8 dereferenceable(872) %i.d, i64 64, i1 false), !tbaa.struct !364
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 16, i1 false), !tbaa.struct !260
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 80
end_hunk_4
