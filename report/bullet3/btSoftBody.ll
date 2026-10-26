Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZN10btSoftBody22appendDeformableAnchorEiP23btMultiBodyLinkCollider:bb.a
  br i1 %lcmp.mod250.not, label %.lr.ph.i83.i.preheader, label %.lr.ph.i74.i.epil.preheader

.lr.ph.i74.i.epil.preheader:                      ; preds = %.lr.ph.i83.i.preheader.unr-lcssa, %.lr.ph.i74.i.preheader
  %indvars.iv.i75.i.epil.init = phi i64 [ 0, %.lr.ph.i74.i.preheader ], [ %indvars.iv.next.i77.i.3, %.lr.ph.i83.i.preheader.unr-lcssa ]
  %.089.i76.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i74.i.preheader ], [ %i.rh, %.lr.ph.i83.i.preheader.unr-lcssa ]
  %lcmp.mod252 = icmp ne i64 %xtraiter248, 0
  call void @llvm.assume(i1 %lcmp.mod252)
  br label %.lr.ph.i74.i.epil

.lr.ph.i74.i.epil:                                ; preds = %.lr.ph.i74.i.epil, %.lr.ph.i74.i.epil.preheader
  %indvars.iv.i75.i.epil = phi i64 [ %indvars.iv.next.i77.i.epil, %.lr.ph.i74.i.epil ], [ %indvars.iv.i75.i.epil.init, %.lr.ph.i74.i.epil.preheader ] ; 3 uses
  %.089.i76.i.epil = phi float [ %i.rm, %.lr.ph.i74.i.epil ], [ %.089.i76.i.epil.init, %.lr.ph.i74.i.epil.preheader ]
  %epil.iter249 = phi i64 [ %epil.iter249.next, %.lr.ph.i74.i.epil ], [ 0, %.lr.ph.i74.i.epil.preheader ]
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv.i75.i.epil
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !253, !noalias !701
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.i75.i.epil
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !253, !noalias !701
  %i.rm = call float @llvm.fmuladd.f32(float %i.rj, float %i.rl, float %.089.i76.i.epil) ; 2 uses
  %indvars.iv.next.i77.i.epil = add nuw nsw i64 %indvars.iv.i75.i.epil, 1
  %epil.iter249.next = add i64 %epil.iter249, 1   ; 2 uses
  %epil.iter249.cmp.not = icmp eq i64 %epil.iter249.next, %xtraiter248
  br i1 %epil.iter249.cmp.not, label %.lr.ph.i83.i.preheader, label %.lr.ph.i74.i.epil, !llvm.loop !693

.lr.ph.i83.i.preheader:                           ; preds = %.lr.ph.i74.i.epil, %.lr.ph.i83.i.preheader.unr-lcssa
  %.lcssa204 = phi float [ %i.rh, %.lr.ph.i83.i.preheader.unr-lcssa ], [ %i.rm, %.lr.ph.i74.i.epil ]
  %xtraiter255 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.rn = icmp ult i64 %i.km, 3
  br i1 %i.rn, label %.lr.ph.i83.i.epil.preheader, label %.lr.ph.i83.i.preheader.new

.lr.ph.i83.i.preheader.new:                       ; preds = %.lr.ph.i83.i.preheader
  %unroll_iter260 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i83.i

.lr.ph.i83.i:                                     ; preds = %.lr.ph.i83.i, %.lr.ph.i83.i.preheader.new
  %indvars.iv.i84.i = phi i64 [ 0, %.lr.ph.i83.i.preheader.new ], [ %indvars.iv.next.i86.i.3, %.lr.ph.i83.i ] ; 6 uses
  %.089.i85.i = phi float [ 0.000000e+00, %.lr.ph.i83.i.preheader.new ], [ %i.sh, %.lr.ph.i83.i ]
  %niter261 = phi i64 [ 0, %.lr.ph.i83.i.preheader.new ], [ %niter261.next.3, %.lr.ph.i83.i ]
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv.i84.i
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !253, !noalias !701
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.i84.i
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !253, !noalias !701
  %i.rs = call float @llvm.fmuladd.f32(float %i.rp, float %i.rr, float %.089.i85.i)
  %indvars.iv.next.i86.i = or disjoint i64 %indvars.iv.i84.i, 1 ; 2 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv.next.i86.i
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !253, !noalias !701
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.next.i86.i
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !253, !noalias !701
  %i.rx = call float @llvm.fmuladd.f32(float %i.ru, float %i.rw, float %i.rs)
  %indvars.iv.next.i86.i.1 = or disjoint i64 %indvars.iv.i84.i, 2 ; 2 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv.next.i86.i.1
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !253, !noalias !701
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.next.i86.i.1
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !253, !noalias !701
  %i.sc = call float @llvm.fmuladd.f32(float %i.rz, float %i.sb, float %i.rx)
  %indvars.iv.next.i86.i.2 = or disjoint i64 %indvars.iv.i84.i, 3 ; 2 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv.next.i86.i.2
  %i.se = load float, ptr %i.sd, align 4, !tbaa !253, !noalias !701
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.next.i86.i.2
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !253, !noalias !701
  %i.sh = call float @llvm.fmuladd.f32(float %i.se, float %i.sg, float %i.sc) ; 3 uses
  %indvars.iv.next.i86.i.3 = add nuw nsw i64 %indvars.iv.i84.i, 4 ; 2 uses
  %niter261.next.3 = add i64 %niter261, 4         ; 2 uses
  %niter261.ncmp.3 = icmp eq i64 %niter261.next.3, %unroll_iter260
  br i1 %niter261.ncmp.3, label %.lr.ph.i92.i.preheader.unr-lcssa, label %.lr.ph.i83.i, !llvm.loop !12

.lr.ph.i92.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i83.i
  %lcmp.mod257.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod257.not, label %.lr.ph.i92.i.preheader, label %.lr.ph.i83.i.epil.preheader

.lr.ph.i83.i.epil.preheader:                      ; preds = %.lr.ph.i92.i.preheader.unr-lcssa, %.lr.ph.i83.i.preheader
  %indvars.iv.i84.i.epil.init = phi i64 [ 0, %.lr.ph.i83.i.preheader ], [ %indvars.iv.next.i86.i.3, %.lr.ph.i92.i.preheader.unr-lcssa ]
  %.089.i85.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i83.i.preheader ], [ %i.sh, %.lr.ph.i92.i.preheader.unr-lcssa ]
  %lcmp.mod259 = icmp ne i64 %xtraiter255, 0
  call void @llvm.assume(i1 %lcmp.mod259)
  br label %.lr.ph.i83.i.epil

.lr.ph.i83.i.epil:                                ; preds = %.lr.ph.i83.i.epil, %.lr.ph.i83.i.epil.preheader
  %indvars.iv.i84.i.epil = phi i64 [ %indvars.iv.next.i86.i.epil, %.lr.ph.i83.i.epil ], [ %indvars.iv.i84.i.epil.init, %.lr.ph.i83.i.epil.preheader ] ; 3 uses
  %.089.i85.i.epil = phi float [ %i.sm, %.lr.ph.i83.i.epil ], [ %.089.i85.i.epil.init, %.lr.ph.i83.i.epil.preheader ]
  %epil.iter256 = phi i64 [ %epil.iter256.next, %.lr.ph.i83.i.epil ], [ 0, %.lr.ph.i83.i.epil.preheader ]
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv.i84.i.epil
  %i.sj = load float, ptr %i.si, align 4, !tbaa !253, !noalias !701
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.i84.i.epil
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !253, !noalias !701
  %i.sm = call float @llvm.fmuladd.f32(float %i.sj, float %i.sl, float %.089.i85.i.epil) ; 2 uses
  %indvars.iv.next.i86.i.epil = add nuw nsw i64 %indvars.iv.i84.i.epil, 1
  %epil.iter256.next = add i64 %epil.iter256, 1   ; 2 uses
  %epil.iter256.cmp.not = icmp eq i64 %epil.iter256.next, %xtraiter255
  br i1 %epil.iter256.cmp.not, label %.lr.ph.i92.i.preheader, label %.lr.ph.i83.i.epil, !llvm.loop !694

.lr.ph.i92.i.preheader:                           ; preds = %.lr.ph.i83.i.epil, %.lr.ph.i92.i.preheader.unr-lcssa
  %.lcssa203 = phi float [ %i.sh, %.lr.ph.i92.i.preheader.unr-lcssa ], [ %i.sm, %.lr.ph.i83.i.epil ]
  %xtraiter262 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.sn = icmp ult i64 %i.km, 3
  br i1 %i.sn, label %.lr.ph.i92.i.epil.preheader, label %.lr.ph.i92.i.preheader.new

.lr.ph.i92.i.preheader.new:                       ; preds = %.lr.ph.i92.i.preheader
  %unroll_iter267 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i92.i

.lr.ph.i92.i:                                     ; preds = %.lr.ph.i92.i, %.lr.ph.i92.i.preheader.new
  %indvars.iv.i93.i = phi i64 [ 0, %.lr.ph.i92.i.preheader.new ], [ %indvars.iv.next.i95.i.3, %.lr.ph.i92.i ] ; 6 uses
  %.089.i94.i = phi float [ 0.000000e+00, %.lr.ph.i92.i.preheader.new ], [ %i.th, %.lr.ph.i92.i ]
  %niter268 = phi i64 [ 0, %.lr.ph.i92.i.preheader.new ], [ %niter268.next.3, %.lr.ph.i92.i ]
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv.i93.i
  %i.sp = load float, ptr %i.so, align 4, !tbaa !253, !noalias !701
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv.i93.i
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !253, !noalias !701
  %i.ss = call float @llvm.fmuladd.f32(float %i.sp, float %i.sr, float %.089.i94.i)
  %indvars.iv.next.i95.i = or disjoint i64 %indvars.iv.i93.i, 1 ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv.next.i95.i
  %i.su = load float, ptr %i.st, align 4, !tbaa !253, !noalias !701
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv.next.i95.i
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !253, !noalias !701
  %i.sx = call float @llvm.fmuladd.f32(float %i.su, float %i.sw, float %i.ss)
  %indvars.iv.next.i95.i.1 = or disjoint i64 %indvars.iv.i93.i, 2 ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv.next.i95.i.1
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !253, !noalias !701
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv.next.i95.i.1
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !253, !noalias !701
  %i.tc = call float @llvm.fmuladd.f32(float %i.sz, float %i.tb, float %i.sx)
  %indvars.iv.next.i95.i.2 = or disjoint i64 %indvars.iv.i93.i, 3 ; 2 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv.next.i95.i.2
  %i.te = load float, ptr %i.td, align 4, !tbaa !253, !noalias !701
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv.next.i95.i.2
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !253, !noalias !701
  %i.th = call float @llvm.fmuladd.f32(float %i.te, float %i.tg, float %i.tc) ; 3 uses
  %indvars.iv.next.i95.i.3 = add nuw nsw i64 %indvars.iv.i93.i, 4 ; 2 uses
  %niter268.next.3 = add i64 %niter268, 4         ; 2 uses
  %niter268.ncmp.3 = icmp eq i64 %niter268.next.3, %unroll_iter267
  br i1 %niter268.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i92.i, !llvm.loop !12

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i92.i
  %lcmp.mod264.not = icmp eq i64 %xtraiter262, 0
  br i1 %lcmp.mod264.not, label %.loopexit.loopexit, label %.lr.ph.i92.i.epil.preheader

.lr.ph.i92.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i92.i.preheader
  %indvars.iv.i93.i.epil.init = phi i64 [ 0, %.lr.ph.i92.i.preheader ], [ %indvars.iv.next.i95.i.3, %.loopexit.loopexit.unr-lcssa ]
  %.089.i94.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i92.i.preheader ], [ %i.th, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod266 = icmp ne i64 %xtraiter262, 0
  call void @llvm.assume(i1 %lcmp.mod266)
  br label %.lr.ph.i92.i.epil

.lr.ph.i92.i.epil:                                ; preds = %.lr.ph.i92.i.epil, %.lr.ph.i92.i.epil.preheader
  %indvars.iv.i93.i.epil = phi i64 [ %indvars.iv.next.i95.i.epil, %.lr.ph.i92.i.epil ], [ %indvars.iv.i93.i.epil.init, %.lr.ph.i92.i.epil.preheader ] ; 3 uses
  %.089.i94.i.epil = phi float [ %i.tm, %.lr.ph.i92.i.epil ], [ %.089.i94.i.epil.init, %.lr.ph.i92.i.epil.preheader ]
  %epil.iter263 = phi i64 [ %epil.iter263.next, %.lr.ph.i92.i.epil ], [ 0, %.lr.ph.i92.i.epil.preheader ]
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv.i93.i.epil
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !253, !noalias !701
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv.i93.i.epil
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !253, !noalias !701
  %i.tm = call float @llvm.fmuladd.f32(float %i.tj, float %i.tl, float %.089.i94.i.epil) ; 2 uses
  %indvars.iv.next.i95.i.epil = add nuw nsw i64 %indvars.iv.i93.i.epil, 1
  %epil.iter263.next = add i64 %epil.iter263, 1   ; 2 uses
  %epil.iter263.cmp.not = icmp eq i64 %epil.iter263.next, %xtraiter262
  br i1 %epil.iter263.cmp.not, label %.loopexit.loopexit, label %.lr.ph.i92.i.epil, !llvm.loop !695

.loopexit.loopexit:                               ; preds = %.lr.ph.i92.i.epil, %.loopexit.loopexit.unr-lcssa
  %.lcssa = phi float [ %i.th, %.loopexit.loopexit.unr-lcssa ], [ %i.tm, %.lr.ph.i92.i.epil ]
  %i.tn = fadd float %.lcssa209, 0.000000e+00
  %i.to = insertelement <4 x float> poison, float %.lcssa207, i64 0
  %i.tp = insertelement <4 x float> %i.to, float %.lcssa206, i64 1
  %i.tq = insertelement <4 x float> %i.tp, float %.lcssa205, i64 2
  %i.tr = insertelement <4 x float> %i.tq, float %.lcssa208, i64 3
  %i.ts = fadd <4 x float> %i.tr, <float 0.000000e+00, float -0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.tt = insertelement <4 x float> poison, float %.lcssa203, i64 0
  %i.tu = insertelement <4 x float> %i.tt, float %.lcssa, i64 1
  %i.tv = insertelement <4 x float> %i.tu, float %.lcssa204, i64 2
  %i.tw = fadd <4 x float> %i.tv, <float 0.000000e+00, float -0.000000e+00, float 0.000000e+00, float poison>
  %i.tx = shufflevector <4 x float> %i.tw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j
  %.08.lcssa.i26121126140151171188214.i = phi float [ 0.000000e+00, %bb.j ], [ %i.tn, %.loopexit.loopexit ] ; 4 uses
  %.08.lcssa.i115119128138153169190212.i = phi float [ 0.000000e+00, %bb.j ], [ %.lcssa210, %.loopexit.loopexit ]
  %i.ty = phi <4 x float> [ zeroinitializer, %bb.j ], [ %i.ts, %.loopexit.loopexit ] ; 6 uses
  %i.tz = phi <4 x float> [ zeroinitializer, %bb.j ], [ %i.tx, %.loopexit.loopexit ] ; 3 uses
  %i.ua = fadd float %i.kj, %.08.lcssa.i115119128138153169190212.i ; 4 uses
  %i.ub = insertelement <4 x float> <float -0.000000e+00, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.kj, i64 1 ; 2 uses
  %i.uc = fadd <4 x float> %i.ub, %i.ty           ; 4 uses
  %i.ud = fadd <4 x float> %i.ub, %i.tz           ; 3 uses
  %i.ue = shufflevector <4 x float> %i.tz, <4 x float> %i.ud, <4 x i32> <i32 2, i32 0, i32 5, i32 5>
  %i.uf = fneg <4 x float> %i.ue                  ; 3 uses
  %i.ug = shufflevector <4 x float> %i.uc, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.uh = insertelement <4 x float> %i.ug, float %.08.lcssa.i26121126140151171188214.i, i64 3
  %i.ui = fmul <4 x float> %i.uh, %i.uf
  %i.uj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uc, <4 x float> %i.ud, <4 x float> %i.ui) ; 4 uses
  %i.uk = extractelement <4 x float> %i.uj, i64 1
  %i.ul = extractelement <4 x float> %i.uj, i64 0
  %i.um = extractelement <4 x float> %i.ty, i64 3 ; 2 uses
  %i.un = extractelement <4 x float> %i.uc, i64 1
  %i.uo = fneg float %i.un
  %i.up = fmul float %i.um, %i.uo
  %i.uq = extractelement <4 x float> %i.ty, i64 2 ; 2 uses
  %i.ur = extractelement <4 x float> %i.ty, i64 0
  %i.us = call noundef float @llvm.fmuladd.f32(float %.08.lcssa.i26121126140151171188214.i, float %i.uq, float %i.up)
  %i.ut = insertelement <4 x float> %i.uj, float %i.us, i64 2
  %i.uu = extractelement <2 x float> %i.jx, i64 0
  %i.uv = extractelement <2 x float> %i.jw, i64 0
  %i.uw = shufflevector <2 x float> %i.jx, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 0, i32 0>
  %12 = shufflevector <2 x float> %i.kc, <2 x float> %i.jw, <4 x i32> <i32 0, i32 3, i32 2, i32 2>
  %i.ux = shufflevector <2 x float> %i.jy, <2 x float> %i.kc, <4 x i32> <i32 0, i32 3, i32 2, i32 2>
  %i.uy = extractelement <4 x float> %i.uj, i64 2 ; 2 uses
  %i.uz = fmul float %.08.lcssa.i26121126140151171188214.i, %i.uy
  %i.va = call float @llvm.fmuladd.f32(float %i.ua, float %i.uk, float %i.uz)
  %i.vb = call noundef float @llvm.fmuladd.f32(float %i.um, float %i.ul, float %i.va)
  %i.vc = fdiv float 1.000000e+00, %i.vb          ; 3 uses
  %i.vd = fmul float %i.uy, %i.vc                 ; 2 uses
  %i.ve = fneg float %i.uq
  %i.vf = shufflevector <4 x float> %i.ty, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.vg = insertelement <2 x float> %i.vf, float %i.ua, i64 0
  %i.vh = shufflevector <4 x float> %i.uf, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.vi = insertelement <2 x float> %i.vh, float %i.ve, i64 0
  %i.vj = fmul <2 x float> %i.vg, %i.vi
  %i.vk = insertelement <2 x float> %i.vf, float %i.ua, i64 1
  %i.vl = shufflevector <4 x float> %i.ty, <4 x float> %i.ud, <2 x i32> <i32 0, i32 5>
  %i.vm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vk, <2 x float> %i.vl, <2 x float> %i.vj)
  %i.vn = insertelement <2 x float> poison, float %i.vc, i64 0
  %i.vo = shufflevector <2 x float> %i.vn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vp = fmul <2 x float> %i.vm, %i.vo           ; 3 uses
  %i.vq = insertelement <4 x float> poison, float %i.vc, i64 0
  %i.vr = shufflevector <4 x float> %i.vq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vs = fmul <4 x float> %i.ut, %i.vr           ; 5 uses
  %i.vt = fneg float %i.ur
  %i.vu = insertelement <2 x float> poison, float %.08.lcssa.i26121126140151171188214.i, i64 0
  %i.vv = insertelement <2 x float> %i.vu, float %i.ua, i64 1 ; 2 uses
  %i.vw = shufflevector <4 x float> %i.uf, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.vx = insertelement <2 x float> %i.vw, float %i.vt, i64 0
  %i.vy = fmul <2 x float> %i.vv, %i.vx
  %i.vz = shufflevector <2 x float> %i.vv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.wa = shufflevector <4 x float> %i.uc, <4 x float> %i.tz, <2 x i32> <i32 1, i32 6>
  %i.wb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vz, <2 x float> %i.wa, <2 x float> %i.vy)
  %i.wc = fmul <2 x float> %i.wb, %i.vo           ; 3 uses
  %i.wd = fmul float %i.uu, %i.vd
  %i.we = extractelement <4 x float> %i.vs, i64 1
  %i.wf = call float @llvm.fmuladd.f32(float %i.we, float %i.uv, float %i.wd)
  %i.wg = insertelement <4 x float> %i.uw, float %i.wf, i64 0
  %i.wh = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.vd, i64 1
  %i.wi = shufflevector <2 x float> %i.vp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wj = shufflevector <4 x float> %i.wh, <4 x float> %i.wi, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.wk = fmul <4 x float> %i.wg, %i.wj
  %i.wl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vs, <4 x float> %12, <4 x float> %i.wk) ; 2 uses
  %shift = shufflevector <2 x float> %i.vp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.ka, %shift
  %i.wm = shufflevector <4 x float> %i.vs, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 poison, i32 poison>
  %i.wn = shufflevector <2 x float> %i.wc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.wo = shufflevector <4 x float> %i.wm, <4 x float> %i.wn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.wp = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.wq = shufflevector <4 x float> %i.wp, <4 x float> %i.wl, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.wr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wo, <4 x float> %i.ux, <4 x float> %i.wq) ; 4 uses
  %i.ws = shufflevector <2 x float> %i.ka, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wt = shufflevector <4 x float> %i.wr, <4 x float> %i.ws, <4 x i32> <i32 0, i32 5, i32 4, i32 5>
  %i.wu = fmul <4 x float> %i.wt, %i.wj
  %i.wv = shufflevector <2 x float> %i.wc, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ww = shufflevector <4 x float> %i.wv, <4 x float> %i.vs, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %13 = shufflevector <2 x float> %i.kd, <2 x float> %i.jy, <4 x i32> <i32 0, i32 3, i32 2, i32 3>
  %i.wx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ww, <4 x float> %13, <4 x float> %i.wu) ; 2 uses
  %i.wy = extractelement <2 x float> %i.vp, i64 0
  %i.wz = fmul float %i.kb, %i.wy
  %i.xa = shufflevector <4 x float> %i.vs, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 poison>
  %i.xb = shufflevector <4 x float> %i.xa, <4 x float> %i.wn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.xc = shufflevector <2 x float> %i.kd, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.xd = insertelement <3 x float> %i.xc, float %i.jz, i64 2
  %i.xe = shufflevector <3 x float> %i.xd, <3 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 1>
  %i.xf = insertelement <4 x float> %i.wx, float %i.wz, i64 0
  %i.xg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xb, <4 x float> %i.xe, <4 x float> %i.xf) ; 4 uses
  %i.xh = extractelement <4 x float> %i.xg, i64 0
  %i.xi = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.xj = shufflevector <2 x float> %i.jx, <2 x float> %i.ka, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.xk = insertelement <4 x float> %i.xj, float 0.000000e+00, i64 3
  %i.xl = insertelement <4 x float> %i.xk, float %i.kb, i64 2 ; 3 uses
  %i.xm = shufflevector <4 x float> %i.wr, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 3, i32 3, i32 3, i32 7>
  %i.xn = fmul <4 x float> %i.xl, %i.xm
  %i.xo = shufflevector <2 x float> %i.jw, <2 x float> %i.jy, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.xp = insertelement <4 x float> %i.xo, float 0.000000e+00, i64 3
  %i.xq = insertelement <4 x float> %i.xp, float %i.jz, i64 2 ; 3 uses
  %i.xr = shufflevector <4 x float> %i.wl, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.xs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xq, <4 x float> %i.xr, <4 x float> %i.xn)
  %i.xt = shufflevector <2 x float> %i.kc, <2 x float> %i.kd, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.xu = insertelement <4 x float> %i.xt, float 0.000000e+00, i64 3
  %i.xv = insertelement <4 x float> %i.xu, float %i.ke, i64 2 ; 3 uses
  %i.xw = shufflevector <4 x float> %i.wr, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.xx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xv, <4 x float> %i.xw, <4 x float> %i.xs)
  store <4 x float> %i.xx, ptr %i.xi, align 8
  %i.xy = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.xz = shufflevector <4 x float> %i.wx, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.ya = fmul <4 x float> %i.xl, %i.xz
  %i.yb = shufflevector <4 x float> %i.wr, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 7>
  %i.yc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xq, <4 x float> %i.yb, <4 x float> %i.ya)
  %i.yd = shufflevector <4 x float> %i.xg, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.ye = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xv, <4 x float> %i.yd, <4 x float> %i.yc)
  store <4 x float> %i.ye, ptr %i.xy, align 8
  %i.yf = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.yg = extractelement <2 x float> %i.wc, i64 0
  %i.yh = call noundef float @llvm.fmuladd.f32(float %i.yg, float %i.ke, float %i.xh)
  %i.yi = shufflevector <4 x float> %i.xg, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 3, i32 3, i32 3, i32 7>
  %i.yj = fmul <4 x float> %i.xl, %i.yi
  %i.yk = shufflevector <4 x float> %i.xg, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 7>
  %i.yl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xq, <4 x float> %i.yk, <4 x float> %i.yj)
  %i.ym = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.yh, i64 0
  %i.yn = shufflevector <4 x float> %i.ym, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.yo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xv, <4 x float> %i.yn, <4 x float> %i.yl)
  store <4 x float> %i.yo, ptr %i.yf, align 8
  %i.yp = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.yq = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.yp, ptr noundef nonnull align 8 dereferenceable(204) %9)
          to label %bb.k unwind label %bb.p       ; 0 uses

bb.k:                                             ; preds = %.loopexit
  %i.yr = getelementptr inbounds nuw i8, ptr %3, i64 400 ; 2 uses
  %i.ys = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.yr, ptr noundef nonnull align 8 dereferenceable(204) %10)
          to label %bb.l unwind label %bb.p       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.yt = getelementptr inbounds nuw i8, ptr %3, i64 608 ; 2 uses
  %i.yu = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.yt, ptr noundef nonnull align 8 dereferenceable(204) %11)
          to label %bb.m unwind label %bb.p       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.yv = getelementptr inbounds nuw i8, ptr %3, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yv, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !260
  %i.yw = getelementptr inbounds nuw i8, ptr %3, i64 832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yw, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !260
  %i.yx = load <2 x float>, ptr %i.cg, align 8, !tbaa !253
  %i.yy = load <2 x float>, ptr %i.ch, align 8, !tbaa !253 ; 3 uses
  %i.yz = fsub <2 x float> %i.yx, %i.yy
  %i.za = load float, ptr %i.ci, align 8, !tbaa !253
  %i.zb = load float, ptr %i.cj, align 8, !tbaa !253 ; 2 uses
  %i.zc = fsub float %i.za, %i.zb
  %.sroa.3.12.vec.insert.i66 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.zc, i64 0
  %i.zd = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <2 x float> %i.yz, ptr %i.zd, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 120
  store <2 x float> %.sroa.3.12.vec.insert.i66, ptr %.sroa.52.0..sroa_idx, align 8, !tbaa !259
  %i.ze = load float, ptr %i.cm, align 8, !tbaa !253, !noalias !702
  %i.zf = load float, ptr %i.cn, align 8, !tbaa !253, !noalias !702
  %i.zg = load float, ptr %i.co, align 8, !tbaa !253, !noalias !702
  %i.zh = extractelement <2 x float> %i.yy, i64 0
  %i.zi = extractelement <2 x float> %i.yy, i64 1
  %i.zj = load ptr, ptr %i.bv, align 8, !tbaa !170
  %i.zk = getelementptr inbounds [256 x i8], ptr %i.zj, i64 %i.bx ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zk, i64 24
  %i.zn = load <2 x float>, ptr %i.cd, align 8, !tbaa !253, !noalias !702 ; 2 uses
  %i.zo = load <2 x float>, ptr %i.ck, align 8, !tbaa !253, !noalias !702 ; 2 uses
  %i.zp = load <2 x float>, ptr %i.cl, align 8, !tbaa !253, !noalias !702 ; 2 uses
  %i.zq = fneg float %i.zh                        ; 2 uses
  %i.zr = fneg float %i.zi                        ; 2 uses
  %i.zs = fneg float %i.zb
  %i.zt = insertelement <2 x float> poison, float %i.zr, i64 0
  %i.zu = shufflevector <2 x float> %i.zt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zv = fmul <2 x float> %i.zo, %i.zu
  %i.zw = insertelement <2 x float> poison, float %i.zq, i64 0
  %i.zx = shufflevector <2 x float> %i.zw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zn, <2 x float> %i.zx, <2 x float> %i.zv)
  %i.zz = insertelement <2 x float> poison, float %i.zs, i64 0 ; 2 uses
  %i.aaa = shufflevector <2 x float> %i.zz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aab = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zp, <2 x float> %i.aaa, <2 x float> %i.zy)
  %i.aac = load float, ptr %i.zm, align 4, !tbaa !253 ; 2 uses
  %i.aad = insertelement <2 x float> poison, float %i.aac, i64 0
  %i.aae = shufflevector <2 x float> %i.aad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaf = load <2 x float>, ptr %i.zl, align 4, !tbaa !253 ; 4 uses
  %i.aag = shufflevector <2 x float> %i.aaf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aah = shufflevector <2 x float> %i.aaf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aai = fmul <2 x float> %i.zo, %i.aah
  %i.aaj = shufflevector <2 x float> %i.aaf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aak = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaj, <2 x float> %i.zn, <2 x float> %i.aai)
  %i.aal = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aae, <2 x float> %i.zp, <2 x float> %i.aak)
  %i.aam = insertelement <2 x float> poison, float %i.zf, i64 0
  %i.aan = shufflevector <2 x float> %i.aam, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aao = insertelement <2 x float> %i.aaf, float %i.zr, i64 0
  %i.aap = fmul <2 x float> %i.aan, %i.aao
  %i.aaq = insertelement <2 x float> poison, float %i.ze, i64 0
  %i.aar = shufflevector <2 x float> %i.aaq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aas = insertelement <2 x float> %i.aag, float %i.zq, i64 0
  %i.aat = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aar, <2 x float> %i.aas, <2 x float> %i.aap)
  %i.aau = insertelement <2 x float> poison, float %i.zg, i64 0
  %i.aav = shufflevector <2 x float> %i.aau, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaw = insertelement <2 x float> %i.zz, float %i.aac, i64 1
  %i.aax = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aav, <2 x float> %i.aaw, <2 x float> %i.aat) ; 2 uses
  %i.aay = fadd <2 x float> %i.aab, %i.aal
  %shift199 = shufflevector <2 x float> %i.aax, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop200 = fadd <2 x float> %i.aax, %shift199
  %.sroa.3.12.vec.insert.i4.i.i202 = insertelement <2 x float> %foldExtExtBinop200, float 0.000000e+00, i64 1
  %i.aaz = getelementptr inbounds nuw i8, ptr %3, i64 856
  store <2 x float> %i.aay, ptr %i.aaz, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 864
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i202, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !259
  %i.aba = load ptr, ptr %i.eu, align 8, !tbaa !353
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 132 ; 2 uses
  %i.abc = load i8, ptr %i.abb, align 4
  %i.abd = or i8 %i.abc, 1
  store i8 %i.abd, ptr %i.abb, align 4
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 1216
  invoke void @_ZN20btAlignedObjectArrayIN10btSoftBody25DeformableNodeRigidAnchorEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.abe, ptr noundef nonnull align 8 dereferenceable(872) %3)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %11) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %10) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.yt) #40
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.yr) #40
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %i.yp) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret void

bb.o:                                             ; preds = %bb.a
  %i.abf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.q

bb.p:                                             ; preds = %bb.g, %bb.h, %bb.i, %.loopexit, %bb.k, %bb.l, %bb.m
  %i.abg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %11) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %10) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  call void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.abg, %bb.p ], [ %i.abf, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @_ZN10btSoftBody22DeformableRigidContactD2Ev(ptr noundef nonnull align 8 dead_on_return(872) dereferenceable(872) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
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

end_hunk_0
