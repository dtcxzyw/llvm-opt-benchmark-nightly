Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDeformableBodySolver?download=true
inline.NumInlined: 1163
inline.NumDeleted: 279
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 123
begin_hunk_0_@_ZN22btDeformableBodySolver15applyTransformsEf:bb.a
  %i.il = insertelement <2 x float> poison, float %i.ii, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = shufflevector <2 x float> %i.ih, <2 x float> %i.ik, <2 x i32> <i32 1, i32 3>
  %i.io = fmul <2 x float> %i.im, %i.in
  %i.ip = shufflevector <2 x float> %i.ih, <2 x float> %i.ik, <2 x i32> <i32 0, i32 2>
  %i.iq = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> %i.ir, <2 x float> %i.io)
  %i.it = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.iu = insertelement <2 x float> %i.it, float %i.if, i64 1
  %i.iv = insertelement <2 x float> poison, float %i.ij, i64 0
  %i.iw = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ix = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iu, <2 x float> %i.iw, <2 x float> %i.is)
  %i.iy = load float, ptr %i.hd, align 8, !tbaa !62
  %i.iz = load float, ptr %i.he, align 4, !tbaa !62
  %i.ja = fmul float %i.ii, %i.iz
  %i.jb = call float @llvm.fmuladd.f32(float %i.iy, float %i.ig, float %i.ja)
  %i.jc = load float, ptr %i.hh, align 8, !tbaa !62
  %i.jd = call noundef float @llvm.fmuladd.f32(float %i.jc, float %i.ij, float %i.jb)
  %.sroa.3.12.vec.insert.i108 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jd, i64 0
  %i.je = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  store <2 x float> %i.ix, ptr %i.je, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store <2 x float> %.sroa.3.12.vec.insert.i108, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.je, i64 16, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.jf = load float, ptr %4, align 8, !tbaa !62  ; 5 uses
  %i.jg = load <2 x float>, ptr %i.h, align 4, !tbaa !62 ; 5 uses
  %i.jh = call noundef float @llvm.fabs.f32(float %i.jf) ; 3 uses
  %i.ji = extractelement <2 x float> %i.jg, i64 0 ; 3 uses
  %i.jj = call noundef float @llvm.fabs.f32(float %i.ji) ; 3 uses
  %i.jk = extractelement <2 x float> %i.jg, i64 1 ; 3 uses
  %i.jl = call noundef float @llvm.fabs.f32(float %i.jk) ; 2 uses
  %i.jm = fcmp ugt float %i.jh, %i.jj
  %i.jn = fcmp ugt float %i.jh, %i.jl
  %or.cond.i = or i1 %i.jm, %i.jn
  br i1 %or.cond.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.jo = fneg <2 x float> %i.jg
  %.sroa.035.4.vec.insert50.i322 = insertelement <2 x float> %i.jo, float 0.000000e+00, i64 0
  %i.jp = insertelement <2 x float> %i.jg, float 0.000000e+00, i64 1
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.jq = fcmp ugt float %i.jj, %i.jh
  %i.jr = fcmp ugt float %i.jj, %i.jl
  %or.cond15.i = or i1 %i.jq, %i.jr
  br i1 %or.cond15.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.js = fneg float %i.jk
  %.sroa.035.4.vec.insert48.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.js, i64 0
  %.sroa.11.12.vec.insert60.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jf, i64 0
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.jt = fneg float %i.ji
  %.sroa.035.0.vec.insert39.i = insertelement <2 x float> poison, float %i.jt, i64 0
  %.sroa.035.4.vec.insert46.i = insertelement <2 x float> %.sroa.035.0.vec.insert39.i, float %i.jf, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.n, %bb.o
  %.sroa.035.0.i = phi <2 x float> [ %.sroa.035.4.vec.insert46.i, %bb.o ], [ %.sroa.035.4.vec.insert48.i, %bb.n ], [ %.sroa.035.4.vec.insert50.i322, %bb.l ] ; 4 uses
  %.sroa.11.0.i = phi <2 x float> [ zeroinitializer, %bb.o ], [ %.sroa.11.12.vec.insert60.i, %bb.n ], [ %i.jp, %bb.l ] ; 2 uses
  %.sroa.035.0.vec.extract.i = extractelement <2 x float> %.sroa.035.0.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.035.0.i, %.sroa.035.0.i
  %i.ju = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.jv = call float @llvm.fmuladd.f32(float %.sroa.035.0.vec.extract.i, float %.sroa.035.0.vec.extract.i, float %i.ju)
  %.sroa.11.8.vec.extract.i = extractelement <2 x float> %.sroa.11.0.i, i64 0 ; 3 uses
  %i.jw = call noundef float @llvm.fmuladd.f32(float %.sroa.11.8.vec.extract.i, float %.sroa.11.8.vec.extract.i, float %i.jv)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.jw)
  %i.jx = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.jy = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.jz = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ka = fmul <2 x float> %.sroa.035.0.i, %i.jz  ; 4 uses
  %i.kb = fmul float %.sroa.11.8.vec.extract.i, %i.jx ; 3 uses
  %.sroa.11.8.vec.insert.i = insertelement <2 x float> %.sroa.11.0.i, float %i.kb, i64 0
  store <2 x float> %i.ka, ptr %5, align 8
  store <2 x float> %.sroa.11.8.vec.insert.i, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.kc = extractelement <2 x float> %i.ka, i64 1 ; 2 uses
  %i.kd = extractelement <2 x float> %i.ka, i64 0
  %i.ke = fneg float %i.kc
  %i.kf = fmul float %i.jk, %i.ke
  %i.kg = fneg float %i.kb
  %i.kh = fmul float %i.jf, %i.kg
  %i.ki = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kj = insertelement <2 x float> %i.ki, float %i.kb, i64 0
  %i.kk = insertelement <2 x float> poison, float %i.kf, i64 0
  %i.kl = insertelement <2 x float> %i.kk, float %i.kh, i64 1
  %i.km = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jg, <2 x float> %i.kj, <2 x float> %i.kl)
  %i.kn = fneg float %i.kd
  %i.ko = fmul float %i.ji, %i.kn
  %i.kp = call float @llvm.fmuladd.f32(float %i.jf, float %i.kc, float %i.ko)
  %.sroa.3.12.vec.insert.i.i115 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kp, i64 0
  store <2 x float> %i.km, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i115, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i8 1, ptr %i.m, align 8, !tbaa !258
  store ptr null, ptr %i.n, align 8, !tbaa !283
  store i32 0, ptr %i.o, align 4, !tbaa !259
  store i32 0, ptr %i.p, align 8, !tbaa !284
  store i8 1, ptr %i.q, align 8, !tbaa !258
  store ptr null, ptr %i.r, align 8, !tbaa !283
  store i32 0, ptr %i.s, align 4, !tbaa !259
  store i32 0, ptr %i.t, align 8, !tbaa !284
  store i8 1, ptr %i.u, align 8, !tbaa !258
  store ptr null, ptr %i.v, align 8, !tbaa !283
  store i32 0, ptr %i.w, align 4, !tbaa !259
  store i32 0, ptr %i.x, align 8, !tbaa !284
  store i8 1, ptr %i.y, align 8, !tbaa !258
  store ptr null, ptr %i.z, align 8, !tbaa !283
  store i32 0, ptr %i.aa, align 4, !tbaa !259
  store i32 0, ptr %i.ab, align 8, !tbaa !284
  store i8 1, ptr %i.ac, align 8, !tbaa !48
  store ptr null, ptr %i.ad, align 8, !tbaa !49
  store i32 0, ptr %i.ae, align 4, !tbaa !50
  store i32 0, ptr %i.af, align 8, !tbaa !51
  store i8 1, ptr %i.ag, align 8, !tbaa !263
  store ptr null, ptr %i.ah, align 8, !tbaa !285
  store i32 0, ptr %i.ai, align 4, !tbaa !264
  store i32 0, ptr %i.aj, align 8, !tbaa !286
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i8 1, ptr %i.ak, align 8, !tbaa !258
  store ptr null, ptr %i.al, align 8, !tbaa !283
  store i32 0, ptr %i.am, align 4, !tbaa !259
  store i32 0, ptr %i.an, align 8, !tbaa !284
  store i8 1, ptr %i.ao, align 8, !tbaa !258
  store ptr null, ptr %i.ap, align 8, !tbaa !283
  store i32 0, ptr %i.aq, align 4, !tbaa !259
  store i32 0, ptr %i.ar, align 8, !tbaa !284
  store i8 1, ptr %i.as, align 8, !tbaa !258
  store ptr null, ptr %i.at, align 8, !tbaa !283
  store i32 0, ptr %i.au, align 4, !tbaa !259
  store i32 0, ptr %i.av, align 8, !tbaa !284
  store i8 1, ptr %i.aw, align 8, !tbaa !258
  store ptr null, ptr %i.ax, align 8, !tbaa !283
  store i32 0, ptr %i.ay, align 4, !tbaa !259
  store i32 0, ptr %i.az, align 8, !tbaa !284
  store i8 1, ptr %i.ba, align 8, !tbaa !48
  store ptr null, ptr %i.bb, align 8, !tbaa !49
  store i32 0, ptr %i.bc, align 4, !tbaa !50
  store i32 0, ptr %i.bd, align 8, !tbaa !51
  store i8 1, ptr %i.be, align 8, !tbaa !263
  store ptr null, ptr %i.bf, align 8, !tbaa !285
  store i32 0, ptr %i.bg, align 4, !tbaa !264
  store i32 0, ptr %i.bh, align 8, !tbaa !286
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store i8 1, ptr %i.bi, align 8, !tbaa !258
  store ptr null, ptr %i.bj, align 8, !tbaa !283
  store i32 0, ptr %i.bk, align 4, !tbaa !259
  store i32 0, ptr %i.bl, align 8, !tbaa !284
  store i8 1, ptr %i.bm, align 8, !tbaa !258
  store ptr null, ptr %i.bn, align 8, !tbaa !283
  store i32 0, ptr %i.bo, align 4, !tbaa !259
  store i32 0, ptr %i.bp, align 8, !tbaa !284
  store i8 1, ptr %i.bq, align 8, !tbaa !258
  store ptr null, ptr %i.br, align 8, !tbaa !283
  store i32 0, ptr %i.bs, align 4, !tbaa !259
  store i32 0, ptr %i.bt, align 8, !tbaa !284
  store i8 1, ptr %i.bu, align 8, !tbaa !258
  store ptr null, ptr %i.bv, align 8, !tbaa !283
  store i32 0, ptr %i.bw, align 4, !tbaa !259
  store i32 0, ptr %i.bx, align 8, !tbaa !284
  store i8 1, ptr %i.by, align 8, !tbaa !48
  store ptr null, ptr %i.bz, align 8, !tbaa !49
  store i32 0, ptr %i.ca, align 4, !tbaa !50
  store i32 0, ptr %i.cb, align 8, !tbaa !51
  store i8 1, ptr %i.cc, align 8, !tbaa !263
  store ptr null, ptr %i.cd, align 8, !tbaa !285
  store i32 0, ptr %i.ce, align 4, !tbaa !264
  store i32 0, ptr %i.cf, align 8, !tbaa !286
  %i.kq = load ptr, ptr %i.ey, align 8, !tbaa !275
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  invoke fastcc void @_ZL12findJacobianPK23btMultiBodyLinkColliderR23btMultiBodyJacobianDataRK9btVector3S6_(ptr noundef %i.gs, ptr noundef nonnull align 8 dereferenceable(204) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.kr, ptr noundef nonnull align 4 dereferenceable(16) %4)
          to label %bb.q unwind label %bb.bg

bb.q:                                             ; preds = %bb.p
  %i.ks = load ptr, ptr %i.ey, align 8, !tbaa !275
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  invoke fastcc void @_ZL12findJacobianPK23btMultiBodyLinkColliderR23btMultiBodyJacobianDataRK9btVector3S6_(ptr noundef %i.gs, ptr noundef nonnull align 8 dereferenceable(204) %8, ptr noundef nonnull align 4 dereferenceable(16) %i.kt, ptr noundef nonnull align 4 dereferenceable(16) %5)
          to label %bb.r unwind label %bb.bg

bb.r:                                             ; preds = %bb.q
  %i.ku = load ptr, ptr %i.ey, align 8, !tbaa !275
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  invoke fastcc void @_ZL12findJacobianPK23btMultiBodyLinkColliderR23btMultiBodyJacobianDataRK9btVector3S6_(ptr noundef %i.gs, ptr noundef nonnull align 8 dereferenceable(204) %9, ptr noundef nonnull align 4 dereferenceable(16) %i.kv, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.s unwind label %bb.bg

bb.s:                                             ; preds = %bb.r
  %i.kw = load ptr, ptr %i.n, align 8, !tbaa !283 ; 15 uses
  %i.kx = load ptr, ptr %i.al, align 8, !tbaa !283 ; 15 uses
  %i.ky = load ptr, ptr %i.bj, align 8, !tbaa !283 ; 15 uses
  %i.kz = load ptr, ptr %i.r, align 8, !tbaa !283 ; 15 uses
  %i.la = load ptr, ptr %i.ap, align 8, !tbaa !283 ; 15 uses
  %i.lb = load ptr, ptr %i.bn, align 8, !tbaa !283 ; 15 uses
  %i.lc = load <2 x float>, ptr %6, align 8, !tbaa !62 ; 4 uses
  %i.ld = load <2 x float>, ptr %4, align 8, !tbaa !62 ; 4 uses
  %i.le = load <2 x float>, ptr %i.h, align 4, !tbaa !62 ; 3 uses
  %i.lf = load float, ptr %i.i, align 8, !tbaa !62 ; 4 uses
  %i.lg = load float, ptr %5, align 8, !tbaa !62  ; 5 uses
  %i.lh = load <2 x float>, ptr %i.k, align 4, !tbaa !62 ; 4 uses
  %i.li = load <2 x float>, ptr %i.cg, align 4, !tbaa !62 ; 4 uses
  %i.lj = load float, ptr %i.l, align 8, !tbaa !62 ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.gs, i64 376
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !289
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 628
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !298 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ez, i64 112
  %i.lp = load float, ptr %i.lo, align 8, !tbaa !167 ; 3 uses
  %i.lq = icmp sgt i32 %i.ln, -6
  br i1 %i.lq, label %.lr.ph.preheader.i.i, label %.loopexit

.lr.ph.preheader.i.i:                             ; preds = %bb.s
  %i.lr = add nsw i32 %i.ln, 6
  %wide.trip.count.i.i = zext nneg i32 %i.lr to i64 ; 19 uses
  %i.ls = add nsw i64 %wide.trip.count.i.i, -1    ; 9 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.lt = icmp ult i64 %i.ls, 3
  br i1 %i.lt, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 6 uses
  %.089.i.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i.i.new ], [ %i.mn, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.i.i
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !62, !noalias !452
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv.i.i
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !62, !noalias !452
  %i.ly = call float @llvm.fmuladd.f32(float %i.lv, float %i.lx, float %.089.i.i)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.next.i.i
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !62, !noalias !452
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv.next.i.i
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !62, !noalias !452
  %i.md = call float @llvm.fmuladd.f32(float %i.ma, float %i.mc, float %i.ly)
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.next.i.i.1
  %i.mf = load float, ptr %i.me, align 4, !tbaa !62, !noalias !452
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv.next.i.i.1
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !62, !noalias !452
  %i.mi = call float @llvm.fmuladd.f32(float %i.mf, float %i.mh, float %i.md)
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.next.i.i.2
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !62, !noalias !452
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv.next.i.i.2
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !62, !noalias !452
  %i.mn = call float @llvm.fmuladd.f32(float %i.mk, float %i.mm, float %i.mi) ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.i29.i.preheader.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !431

.lr.ph.i29.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i29.i.preheader, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph.i29.i.preheader.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.3, %.lr.ph.i29.i.preheader.unr-lcssa ]
  %.089.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %i.mn, %.lr.ph.i29.i.preheader.unr-lcssa ]
  %lcmp.mod332 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod332)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 3 uses
  %.089.i.i.epil = phi float [ %.089.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %i.ms, %.lr.ph.i.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.i.i.epil
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !62, !noalias !452
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv.i.i.epil
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !62, !noalias !452
  %i.ms = call float @llvm.fmuladd.f32(float %i.mp, float %i.mr, float %.089.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i29.i.preheader, label %.lr.ph.i.i.epil, !llvm.loop !432

.lr.ph.i29.i.preheader:                           ; preds = %.lr.ph.i.i.epil, %.lr.ph.i29.i.preheader.unr-lcssa
  %.lcssa = phi float [ %i.mn, %.lr.ph.i29.i.preheader.unr-lcssa ], [ %i.ms, %.lr.ph.i.i.epil ]
  %xtraiter333 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.mt = icmp ult i64 %i.ls, 3
  br i1 %i.mt, label %.lr.ph.i29.i.epil.preheader, label %.lr.ph.i29.i.preheader.new

.lr.ph.i29.i.preheader.new:                       ; preds = %.lr.ph.i29.i.preheader
  %unroll_iter338 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i29.i

.lr.ph.i29.i:                                     ; preds = %.lr.ph.i29.i, %.lr.ph.i29.i.preheader.new
  %indvars.iv.i30.i = phi i64 [ 0, %.lr.ph.i29.i.preheader.new ], [ %indvars.iv.next.i32.i.3, %.lr.ph.i29.i ] ; 6 uses
  %.089.i31.i = phi float [ 0.000000e+00, %.lr.ph.i29.i.preheader.new ], [ %i.nn, %.lr.ph.i29.i ]
  %niter339 = phi i64 [ 0, %.lr.ph.i29.i.preheader.new ], [ %niter339.next.3, %.lr.ph.i29.i ]
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.i30.i
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !62, !noalias !452
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.i30.i
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !62, !noalias !452
  %i.my = call float @llvm.fmuladd.f32(float %i.mv, float %i.mx, float %.089.i31.i)
  %indvars.iv.next.i32.i = or disjoint i64 %indvars.iv.i30.i, 1 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.next.i32.i
  %i.na = load float, ptr %i.mz, align 4, !tbaa !62, !noalias !452
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.next.i32.i
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !62, !noalias !452
  %i.nd = call float @llvm.fmuladd.f32(float %i.na, float %i.nc, float %i.my)
  %indvars.iv.next.i32.i.1 = or disjoint i64 %indvars.iv.i30.i, 2 ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.next.i32.i.1
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !62, !noalias !452
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.next.i32.i.1
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !62, !noalias !452
  %i.ni = call float @llvm.fmuladd.f32(float %i.nf, float %i.nh, float %i.nd)
  %indvars.iv.next.i32.i.2 = or disjoint i64 %indvars.iv.i30.i, 3 ; 2 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.next.i32.i.2
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !62, !noalias !452
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.next.i32.i.2
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !62, !noalias !452
  %i.nn = call float @llvm.fmuladd.f32(float %i.nk, float %i.nm, float %i.ni) ; 3 uses
  %indvars.iv.next.i32.i.3 = add nuw nsw i64 %indvars.iv.i30.i, 4 ; 2 uses
  %niter339.next.3 = add i64 %niter339, 4         ; 2 uses
  %niter339.ncmp.3 = icmp eq i64 %niter339.next.3, %unroll_iter338
  br i1 %niter339.ncmp.3, label %.lr.ph.i38.i.preheader.unr-lcssa, label %.lr.ph.i29.i, !llvm.loop !431

.lr.ph.i38.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i29.i
  %lcmp.mod335.not = icmp eq i64 %xtraiter333, 0
  br i1 %lcmp.mod335.not, label %.lr.ph.i38.i.preheader, label %.lr.ph.i29.i.epil.preheader

.lr.ph.i29.i.epil.preheader:                      ; preds = %.lr.ph.i38.i.preheader.unr-lcssa, %.lr.ph.i29.i.preheader
  %indvars.iv.i30.i.epil.init = phi i64 [ 0, %.lr.ph.i29.i.preheader ], [ %indvars.iv.next.i32.i.3, %.lr.ph.i38.i.preheader.unr-lcssa ]
  %.089.i31.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i29.i.preheader ], [ %i.nn, %.lr.ph.i38.i.preheader.unr-lcssa ]
  %lcmp.mod337 = icmp ne i64 %xtraiter333, 0
  call void @llvm.assume(i1 %lcmp.mod337)
  br label %.lr.ph.i29.i.epil

.lr.ph.i29.i.epil:                                ; preds = %.lr.ph.i29.i.epil, %.lr.ph.i29.i.epil.preheader
  %indvars.iv.i30.i.epil = phi i64 [ %indvars.iv.next.i32.i.epil, %.lr.ph.i29.i.epil ], [ %indvars.iv.i30.i.epil.init, %.lr.ph.i29.i.epil.preheader ] ; 3 uses
  %.089.i31.i.epil = phi float [ %i.ns, %.lr.ph.i29.i.epil ], [ %.089.i31.i.epil.init, %.lr.ph.i29.i.epil.preheader ]
  %epil.iter334 = phi i64 [ %epil.iter334.next, %.lr.ph.i29.i.epil ], [ 0, %.lr.ph.i29.i.epil.preheader ]
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.i30.i.epil
  %i.np = load float, ptr %i.no, align 4, !tbaa !62, !noalias !452
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.i30.i.epil
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !62, !noalias !452
  %i.ns = call float @llvm.fmuladd.f32(float %i.np, float %i.nr, float %.089.i31.i.epil) ; 2 uses
  %indvars.iv.next.i32.i.epil = add nuw nsw i64 %indvars.iv.i30.i.epil, 1
  %epil.iter334.next = add i64 %epil.iter334, 1   ; 2 uses
  %epil.iter334.cmp.not = icmp eq i64 %epil.iter334.next, %xtraiter333
  br i1 %epil.iter334.cmp.not, label %.lr.ph.i38.i.preheader, label %.lr.ph.i29.i.epil, !llvm.loop !433

.lr.ph.i38.i.preheader:                           ; preds = %.lr.ph.i29.i.epil, %.lr.ph.i38.i.preheader.unr-lcssa
  %.lcssa323 = phi float [ %i.nn, %.lr.ph.i38.i.preheader.unr-lcssa ], [ %i.ns, %.lr.ph.i29.i.epil ]
  %xtraiter340 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.nt = icmp ult i64 %i.ls, 3
  br i1 %i.nt, label %.lr.ph.i38.i.epil.preheader, label %.lr.ph.i38.i.preheader.new

.lr.ph.i38.i.preheader.new:                       ; preds = %.lr.ph.i38.i.preheader
  %unroll_iter345 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i, %.lr.ph.i38.i.preheader.new
  %indvars.iv.i39.i = phi i64 [ 0, %.lr.ph.i38.i.preheader.new ], [ %indvars.iv.next.i41.i.3, %.lr.ph.i38.i ] ; 6 uses
  %.089.i40.i = phi float [ 0.000000e+00, %.lr.ph.i38.i.preheader.new ], [ %i.on, %.lr.ph.i38.i ]
  %niter346 = phi i64 [ 0, %.lr.ph.i38.i.preheader.new ], [ %niter346.next.3, %.lr.ph.i38.i ]
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.i39.i
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !62, !noalias !452
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.i39.i
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !62, !noalias !452
  %i.ny = call float @llvm.fmuladd.f32(float %i.nv, float %i.nx, float %.089.i40.i)
  %indvars.iv.next.i41.i = or disjoint i64 %indvars.iv.i39.i, 1 ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.next.i41.i
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !62, !noalias !452
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.next.i41.i
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !62, !noalias !452
  %i.od = call float @llvm.fmuladd.f32(float %i.oa, float %i.oc, float %i.ny)
  %indvars.iv.next.i41.i.1 = or disjoint i64 %indvars.iv.i39.i, 2 ; 2 uses
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.next.i41.i.1
  %i.of = load float, ptr %i.oe, align 4, !tbaa !62, !noalias !452
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.next.i41.i.1
  %i.oh = load float, ptr %i.og, align 4, !tbaa !62, !noalias !452
  %i.oi = call float @llvm.fmuladd.f32(float %i.of, float %i.oh, float %i.od)
  %indvars.iv.next.i41.i.2 = or disjoint i64 %indvars.iv.i39.i, 3 ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.next.i41.i.2
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !62, !noalias !452
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.next.i41.i.2
  %i.om = load float, ptr %i.ol, align 4, !tbaa !62, !noalias !452
  %i.on = call float @llvm.fmuladd.f32(float %i.ok, float %i.om, float %i.oi) ; 3 uses
  %indvars.iv.next.i41.i.3 = add nuw nsw i64 %indvars.iv.i39.i, 4 ; 2 uses
  %niter346.next.3 = add i64 %niter346, 4         ; 2 uses
  %niter346.ncmp.3 = icmp eq i64 %niter346.next.3, %unroll_iter345
  br i1 %niter346.ncmp.3, label %.lr.ph.i47.i.preheader.unr-lcssa, label %.lr.ph.i38.i, !llvm.loop !431

.lr.ph.i47.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i38.i
  %lcmp.mod342.not = icmp eq i64 %xtraiter340, 0
  br i1 %lcmp.mod342.not, label %.lr.ph.i47.i.preheader, label %.lr.ph.i38.i.epil.preheader

.lr.ph.i38.i.epil.preheader:                      ; preds = %.lr.ph.i47.i.preheader.unr-lcssa, %.lr.ph.i38.i.preheader
  %indvars.iv.i39.i.epil.init = phi i64 [ 0, %.lr.ph.i38.i.preheader ], [ %indvars.iv.next.i41.i.3, %.lr.ph.i47.i.preheader.unr-lcssa ]
  %.089.i40.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i38.i.preheader ], [ %i.on, %.lr.ph.i47.i.preheader.unr-lcssa ]
  %lcmp.mod344 = icmp ne i64 %xtraiter340, 0
  call void @llvm.assume(i1 %lcmp.mod344)
  br label %.lr.ph.i38.i.epil

end_hunk_0
begin_hunk_1_@_ZN22btDeformableBodySolver15applyTransformsEf:bb.a
  %i.sd = call float @llvm.fmuladd.f32(float %i.sa, float %i.sc, float %i.ry)
  %indvars.iv.next.i77.i.1 = or disjoint i64 %indvars.iv.i75.i, 2 ; 2 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i77.i.1
  %i.sf = load float, ptr %i.se, align 4, !tbaa !62, !noalias !452
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv.next.i77.i.1
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !62, !noalias !452
  %i.si = call float @llvm.fmuladd.f32(float %i.sf, float %i.sh, float %i.sd)
  %indvars.iv.next.i77.i.2 = or disjoint i64 %indvars.iv.i75.i, 3 ; 2 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i77.i.2
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !62, !noalias !452
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv.next.i77.i.2
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !62, !noalias !452
  %i.sn = call float @llvm.fmuladd.f32(float %i.sk, float %i.sm, float %i.si) ; 3 uses
  %indvars.iv.next.i77.i.3 = add nuw nsw i64 %indvars.iv.i75.i, 4 ; 2 uses
  %niter374.next.3 = add i64 %niter374, 4         ; 2 uses
  %niter374.ncmp.3 = icmp eq i64 %niter374.next.3, %unroll_iter373
  br i1 %niter374.ncmp.3, label %.lr.ph.i83.i.preheader.unr-lcssa, label %.lr.ph.i74.i, !llvm.loop !431

.lr.ph.i83.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i74.i
  %lcmp.mod370.not = icmp eq i64 %xtraiter368, 0
  br i1 %lcmp.mod370.not, label %.lr.ph.i83.i.preheader, label %.lr.ph.i74.i.epil.preheader

.lr.ph.i74.i.epil.preheader:                      ; preds = %.lr.ph.i83.i.preheader.unr-lcssa, %.lr.ph.i74.i.preheader
  %indvars.iv.i75.i.epil.init = phi i64 [ 0, %.lr.ph.i74.i.preheader ], [ %indvars.iv.next.i77.i.3, %.lr.ph.i83.i.preheader.unr-lcssa ]
  %.089.i76.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i74.i.preheader ], [ %i.sn, %.lr.ph.i83.i.preheader.unr-lcssa ]
  %lcmp.mod372 = icmp ne i64 %xtraiter368, 0
  call void @llvm.assume(i1 %lcmp.mod372)
  br label %.lr.ph.i74.i.epil

.lr.ph.i74.i.epil:                                ; preds = %.lr.ph.i74.i.epil, %.lr.ph.i74.i.epil.preheader
  %indvars.iv.i75.i.epil = phi i64 [ %indvars.iv.next.i77.i.epil, %.lr.ph.i74.i.epil ], [ %indvars.iv.i75.i.epil.init, %.lr.ph.i74.i.epil.preheader ] ; 3 uses
  %.089.i76.i.epil = phi float [ %i.ss, %.lr.ph.i74.i.epil ], [ %.089.i76.i.epil.init, %.lr.ph.i74.i.epil.preheader ]
  %epil.iter369 = phi i64 [ %epil.iter369.next, %.lr.ph.i74.i.epil ], [ 0, %.lr.ph.i74.i.epil.preheader ]
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i75.i.epil
  %i.sp = load float, ptr %i.so, align 4, !tbaa !62, !noalias !452
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv.i75.i.epil
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !62, !noalias !452
  %i.ss = call float @llvm.fmuladd.f32(float %i.sp, float %i.sr, float %.089.i76.i.epil) ; 2 uses
  %indvars.iv.next.i77.i.epil = add nuw nsw i64 %indvars.iv.i75.i.epil, 1
  %epil.iter369.next = add i64 %epil.iter369, 1   ; 2 uses
  %epil.iter369.cmp.not = icmp eq i64 %epil.iter369.next, %xtraiter368
  br i1 %epil.iter369.cmp.not, label %.lr.ph.i83.i.preheader, label %.lr.ph.i74.i.epil, !llvm.loop !438

.lr.ph.i83.i.preheader:                           ; preds = %.lr.ph.i74.i.epil, %.lr.ph.i83.i.preheader.unr-lcssa
  %.lcssa328 = phi float [ %i.sn, %.lr.ph.i83.i.preheader.unr-lcssa ], [ %i.ss, %.lr.ph.i74.i.epil ]
  %xtraiter375 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.st = icmp ult i64 %i.ls, 3
  br i1 %i.st, label %.lr.ph.i83.i.epil.preheader, label %.lr.ph.i83.i.preheader.new

.lr.ph.i83.i.preheader.new:                       ; preds = %.lr.ph.i83.i.preheader
  %unroll_iter380 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i83.i

.lr.ph.i83.i:                                     ; preds = %.lr.ph.i83.i, %.lr.ph.i83.i.preheader.new
  %indvars.iv.i84.i = phi i64 [ 0, %.lr.ph.i83.i.preheader.new ], [ %indvars.iv.next.i86.i.3, %.lr.ph.i83.i ] ; 6 uses
  %.089.i85.i = phi float [ 0.000000e+00, %.lr.ph.i83.i.preheader.new ], [ %i.tn, %.lr.ph.i83.i ]
  %niter381 = phi i64 [ 0, %.lr.ph.i83.i.preheader.new ], [ %niter381.next.3, %.lr.ph.i83.i ]
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i84.i
  %i.sv = load float, ptr %i.su, align 4, !tbaa !62, !noalias !452
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.i84.i
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !62, !noalias !452
  %i.sy = call float @llvm.fmuladd.f32(float %i.sv, float %i.sx, float %.089.i85.i)
  %indvars.iv.next.i86.i = or disjoint i64 %indvars.iv.i84.i, 1 ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i86.i
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !62, !noalias !452
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.next.i86.i
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !62, !noalias !452
  %i.td = call float @llvm.fmuladd.f32(float %i.ta, float %i.tc, float %i.sy)
  %indvars.iv.next.i86.i.1 = or disjoint i64 %indvars.iv.i84.i, 2 ; 2 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i86.i.1
  %i.tf = load float, ptr %i.te, align 4, !tbaa !62, !noalias !452
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.next.i86.i.1
  %i.th = load float, ptr %i.tg, align 4, !tbaa !62, !noalias !452
  %i.ti = call float @llvm.fmuladd.f32(float %i.tf, float %i.th, float %i.td)
  %indvars.iv.next.i86.i.2 = or disjoint i64 %indvars.iv.i84.i, 3 ; 2 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i86.i.2
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !62, !noalias !452
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.next.i86.i.2
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !62, !noalias !452
  %i.tn = call float @llvm.fmuladd.f32(float %i.tk, float %i.tm, float %i.ti) ; 3 uses
  %indvars.iv.next.i86.i.3 = add nuw nsw i64 %indvars.iv.i84.i, 4 ; 2 uses
  %niter381.next.3 = add i64 %niter381, 4         ; 2 uses
  %niter381.ncmp.3 = icmp eq i64 %niter381.next.3, %unroll_iter380
  br i1 %niter381.ncmp.3, label %.lr.ph.i92.i.preheader.unr-lcssa, label %.lr.ph.i83.i, !llvm.loop !431

.lr.ph.i92.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i83.i
  %lcmp.mod377.not = icmp eq i64 %xtraiter375, 0
  br i1 %lcmp.mod377.not, label %.lr.ph.i92.i.preheader, label %.lr.ph.i83.i.epil.preheader

.lr.ph.i83.i.epil.preheader:                      ; preds = %.lr.ph.i92.i.preheader.unr-lcssa, %.lr.ph.i83.i.preheader
  %indvars.iv.i84.i.epil.init = phi i64 [ 0, %.lr.ph.i83.i.preheader ], [ %indvars.iv.next.i86.i.3, %.lr.ph.i92.i.preheader.unr-lcssa ]
  %.089.i85.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i83.i.preheader ], [ %i.tn, %.lr.ph.i92.i.preheader.unr-lcssa ]
  %lcmp.mod379 = icmp ne i64 %xtraiter375, 0
  call void @llvm.assume(i1 %lcmp.mod379)
  br label %.lr.ph.i83.i.epil

.lr.ph.i83.i.epil:                                ; preds = %.lr.ph.i83.i.epil, %.lr.ph.i83.i.epil.preheader
  %indvars.iv.i84.i.epil = phi i64 [ %indvars.iv.next.i86.i.epil, %.lr.ph.i83.i.epil ], [ %indvars.iv.i84.i.epil.init, %.lr.ph.i83.i.epil.preheader ] ; 3 uses
  %.089.i85.i.epil = phi float [ %i.ts, %.lr.ph.i83.i.epil ], [ %.089.i85.i.epil.init, %.lr.ph.i83.i.epil.preheader ]
  %epil.iter376 = phi i64 [ %epil.iter376.next, %.lr.ph.i83.i.epil ], [ 0, %.lr.ph.i83.i.epil.preheader ]
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i84.i.epil
  %i.tp = load float, ptr %i.to, align 4, !tbaa !62, !noalias !452
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.i84.i.epil
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !62, !noalias !452
  %i.ts = call float @llvm.fmuladd.f32(float %i.tp, float %i.tr, float %.089.i85.i.epil) ; 2 uses
  %indvars.iv.next.i86.i.epil = add nuw nsw i64 %indvars.iv.i84.i.epil, 1
  %epil.iter376.next = add i64 %epil.iter376, 1   ; 2 uses
  %epil.iter376.cmp.not = icmp eq i64 %epil.iter376.next, %xtraiter375
  br i1 %epil.iter376.cmp.not, label %.lr.ph.i92.i.preheader, label %.lr.ph.i83.i.epil, !llvm.loop !439

.lr.ph.i92.i.preheader:                           ; preds = %.lr.ph.i83.i.epil, %.lr.ph.i92.i.preheader.unr-lcssa
  %.lcssa329 = phi float [ %i.tn, %.lr.ph.i92.i.preheader.unr-lcssa ], [ %i.ts, %.lr.ph.i83.i.epil ]
  %xtraiter382 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.tt = icmp ult i64 %i.ls, 3
  br i1 %i.tt, label %.lr.ph.i92.i.epil.preheader, label %.lr.ph.i92.i.preheader.new

.lr.ph.i92.i.preheader.new:                       ; preds = %.lr.ph.i92.i.preheader
  %unroll_iter387 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i92.i

.lr.ph.i92.i:                                     ; preds = %.lr.ph.i92.i, %.lr.ph.i92.i.preheader.new
  %indvars.iv.i93.i = phi i64 [ 0, %.lr.ph.i92.i.preheader.new ], [ %indvars.iv.next.i95.i.3, %.lr.ph.i92.i ] ; 6 uses
  %.089.i94.i = phi float [ 0.000000e+00, %.lr.ph.i92.i.preheader.new ], [ %i.un, %.lr.ph.i92.i ]
  %niter388 = phi i64 [ 0, %.lr.ph.i92.i.preheader.new ], [ %niter388.next.3, %.lr.ph.i92.i ]
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i93.i
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !62, !noalias !452
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.i93.i
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !62, !noalias !452
  %i.ty = call float @llvm.fmuladd.f32(float %i.tv, float %i.tx, float %.089.i94.i)
  %indvars.iv.next.i95.i = or disjoint i64 %indvars.iv.i93.i, 1 ; 2 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i95.i
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !62, !noalias !452
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.next.i95.i
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !62, !noalias !452
  %i.ud = call float @llvm.fmuladd.f32(float %i.ua, float %i.uc, float %i.ty)
  %indvars.iv.next.i95.i.1 = or disjoint i64 %indvars.iv.i93.i, 2 ; 2 uses
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i95.i.1
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !62, !noalias !452
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.next.i95.i.1
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !62, !noalias !452
  %i.ui = call float @llvm.fmuladd.f32(float %i.uf, float %i.uh, float %i.ud)
  %indvars.iv.next.i95.i.2 = or disjoint i64 %indvars.iv.i93.i, 3 ; 2 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i95.i.2
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !62, !noalias !452
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.next.i95.i.2
  %i.um = load float, ptr %i.ul, align 4, !tbaa !62, !noalias !452
  %i.un = call float @llvm.fmuladd.f32(float %i.uk, float %i.um, float %i.ui) ; 3 uses
  %indvars.iv.next.i95.i.3 = add nuw nsw i64 %indvars.iv.i93.i, 4 ; 2 uses
  %niter388.next.3 = add i64 %niter388, 4         ; 2 uses
  %niter388.ncmp.3 = icmp eq i64 %niter388.next.3, %unroll_iter387
  br i1 %niter388.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i92.i, !llvm.loop !431

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i92.i
  %lcmp.mod384.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod384.not, label %.loopexit.loopexit, label %.lr.ph.i92.i.epil.preheader

.lr.ph.i92.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i92.i.preheader
  %indvars.iv.i93.i.epil.init = phi i64 [ 0, %.lr.ph.i92.i.preheader ], [ %indvars.iv.next.i95.i.3, %.loopexit.loopexit.unr-lcssa ]
  %.089.i94.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i92.i.preheader ], [ %i.un, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod386 = icmp ne i64 %xtraiter382, 0
  call void @llvm.assume(i1 %lcmp.mod386)
  br label %.lr.ph.i92.i.epil

.lr.ph.i92.i.epil:                                ; preds = %.lr.ph.i92.i.epil, %.lr.ph.i92.i.epil.preheader
  %indvars.iv.i93.i.epil = phi i64 [ %indvars.iv.next.i95.i.epil, %.lr.ph.i92.i.epil ], [ %indvars.iv.i93.i.epil.init, %.lr.ph.i92.i.epil.preheader ] ; 3 uses
  %.089.i94.i.epil = phi float [ %i.us, %.lr.ph.i92.i.epil ], [ %.089.i94.i.epil.init, %.lr.ph.i92.i.epil.preheader ]
  %epil.iter383 = phi i64 [ %epil.iter383.next, %.lr.ph.i92.i.epil ], [ 0, %.lr.ph.i92.i.epil.preheader ]
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i93.i.epil
  %i.up = load float, ptr %i.uo, align 4, !tbaa !62, !noalias !452
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.i93.i.epil
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !62, !noalias !452
  %i.us = call float @llvm.fmuladd.f32(float %i.up, float %i.ur, float %.089.i94.i.epil) ; 2 uses
  %indvars.iv.next.i95.i.epil = add nuw nsw i64 %indvars.iv.i93.i.epil, 1
  %epil.iter383.next = add i64 %epil.iter383, 1   ; 2 uses
  %epil.iter383.cmp.not = icmp eq i64 %epil.iter383.next, %xtraiter382
  br i1 %epil.iter383.cmp.not, label %.loopexit.loopexit, label %.lr.ph.i92.i.epil, !llvm.loop !440

.loopexit.loopexit:                               ; preds = %.lr.ph.i92.i.epil, %.loopexit.loopexit.unr-lcssa
  %.lcssa330 = phi float [ %i.un, %.loopexit.loopexit.unr-lcssa ], [ %i.us, %.lr.ph.i92.i.epil ]
  %i.ut = insertelement <4 x float> poison, float %.lcssa326, i64 0
  %i.uu = insertelement <4 x float> %i.ut, float %.lcssa327, i64 1
  %i.uv = insertelement <4 x float> %i.uu, float %.lcssa323, i64 2
  %i.uw = insertelement <4 x float> %i.uv, float %.lcssa324, i64 3
  %i.ux = fadd <4 x float> %i.uw, <float -0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.uy = fadd float %.lcssa325, 0.000000e+00
  %i.uz = fadd float %.lcssa328, 0.000000e+00
  %i.va = fadd float %.lcssa329, 0.000000e+00
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.s
  %.08.lcssa.i80220.i = phi float [ 0.000000e+00, %bb.s ], [ %i.va, %.loopexit.loopexit ] ; 2 uses
  %.08.lcssa.i44142149173186216.i = phi float [ 0.000000e+00, %bb.s ], [ %i.uy, %.loopexit.loopexit ] ; 4 uses
  %.08.lcssa.i115119128138153169190212.i = phi float [ 0.000000e+00, %bb.s ], [ %.lcssa, %.loopexit.loopexit ]
  %.08.lcssa.i71196206.i = phi float [ 0.000000e+00, %bb.s ], [ %i.uz, %.loopexit.loopexit ] ; 3 uses
  %.08.lcssa.i89.i = phi float [ 0.000000e+00, %bb.s ], [ %.lcssa330, %.loopexit.loopexit ]
  %i.vb = phi <4 x float> [ zeroinitializer, %bb.s ], [ %i.ux, %.loopexit.loopexit ] ; 5 uses
  %i.vc = fadd float %i.lp, %.08.lcssa.i115119128138153169190212.i ; 5 uses
  %i.vd = fadd float %i.lp, %.08.lcssa.i89.i      ; 2 uses
  %i.ve = extractelement <4 x float> %i.vb, i64 1 ; 2 uses
  %i.vf = fneg float %i.ve
  %i.vg = extractelement <4 x float> %i.vb, i64 3 ; 3 uses
  %i.vh = fneg float %.08.lcssa.i44142149173186216.i
  %i.vi = extractelement <4 x float> %i.vb, i64 2 ; 3 uses
  %i.vj = fmul float %i.vi, %i.vh
  %i.vk = extractelement <2 x float> %i.lh, i64 1 ; 2 uses
  %i.vl = extractelement <2 x float> %i.lc, i64 0
  %i.vm = extractelement <2 x float> %i.li, i64 0
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ex, i64 64
  %i.vo = extractelement <2 x float> %i.ld, i64 0
  %i.vp = shufflevector <2 x float> %i.lc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.vq = insertelement <4 x float> %i.vp, float 0.000000e+00, i64 3
  %10 = shufflevector <2 x float> %i.li, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.vr = shufflevector <4 x float> %i.vq, <4 x float> %10, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.vs = getelementptr inbounds nuw i8, ptr %i.ex, i64 80
  %i.vt = insertelement <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, float %i.lp, i64 0
  %i.vu = fadd <4 x float> %i.vt, %i.vb           ; 4 uses
  %i.vv = fneg float %.08.lcssa.i80220.i
  %i.vw = insertelement <4 x float> poison, float %.08.lcssa.i71196206.i, i64 0
  %i.vx = insertelement <4 x float> %i.vw, float %.08.lcssa.i80220.i, i64 1
  %i.vy = insertelement <4 x float> %i.vx, float %i.vd, i64 2 ; 2 uses
  %i.vz = shufflevector <4 x float> %i.vy, <4 x float> %i.vu, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.wa = fneg <4 x float> %i.vz                  ; 3 uses
  %i.wb = extractelement <4 x float> %i.wa, i64 2
  %i.wc = fmul <4 x float> %i.vu, %i.wa
  %i.wd = insertelement <4 x float> poison, float %.08.lcssa.i44142149173186216.i, i64 0
  %i.we = shufflevector <4 x float> %i.wd, <4 x float> %i.vu, <4 x i32> <i32 0, i32 4, i32 7, i32 6>
  %i.wf = shufflevector <4 x float> %i.vy, <4 x float> %i.vb, <4 x i32> <i32 1, i32 2, i32 1, i32 5>
  %i.wg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.we, <4 x float> %i.wf, <4 x float> %i.wc) ; 3 uses
  %i.wh = extractelement <4 x float> %i.wg, i64 1
  %i.wi = extractelement <4 x float> %i.wg, i64 0
  %11 = extractelement <4 x float> %i.wa, i64 0
  %i.wj = fmul float %i.vc, %i.vv
  %12 = call noundef float @llvm.fmuladd.f32(float %i.vi, float %.08.lcssa.i71196206.i, float %i.wj)
  %13 = extractelement <4 x float> %i.vu, i64 0
  %i.wk = call noundef float @llvm.fmuladd.f32(float %i.vc, float %13, float %i.vj)
  %14 = shufflevector <2 x float> %i.lh, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %15 = shufflevector <2 x float> %i.lc, <2 x float> %i.ld, <4 x i32> <i32 0, i32 poison, i32 2, i32 2>
  %16 = shufflevector <2 x float> %i.le, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %17 = shufflevector <4 x float> %15, <4 x float> %16, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %18 = shufflevector <2 x float> %i.lh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %19 = shufflevector <2 x float> %i.ld, <2 x float> %i.le, <4 x i32> <i32 poison, i32 0, i32 2, i32 3> ; 2 uses
  %20 = shufflevector <2 x float> %i.lc, <2 x float> %i.li, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %21 = insertelement <4 x float> %20, float 0.000000e+00, i64 3 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %i.ex, i64 96
  %i.wl = fmul float %i.vc, %i.vf
  %23 = call noundef float @llvm.fmuladd.f32(float %i.vg, float %.08.lcssa.i44142149173186216.i, float %i.wl)
  %i.wm = fmul float %.08.lcssa.i44142149173186216.i, %i.wb
  %24 = call noundef float @llvm.fmuladd.f32(float %i.ve, float %.08.lcssa.i71196206.i, float %i.wm) ; 2 uses
  %25 = fmul float %i.vi, %24
  %i.wn = call float @llvm.fmuladd.f32(float %i.vc, float %i.wh, float %25)
  %26 = call noundef float @llvm.fmuladd.f32(float %i.vg, float %i.wi, float %i.wn)
  %27 = fdiv float 1.000000e+00, %26              ; 6 uses
  %28 = fmul float %24, %27                       ; 2 uses
  %29 = fmul float %i.vg, %11
  %30 = call noundef float @llvm.fmuladd.f32(float %i.vc, float %i.vd, float %29)
  %31 = fmul float %30, %27                       ; 2 uses
  %32 = fmul float %23, %27                       ; 2 uses
  %33 = insertelement <4 x float> poison, float %27, i64 0
  %34 = shufflevector <4 x float> %33, <4 x float> poison, <4 x i32> zeroinitializer
  %35 = fmul <4 x float> %i.wg, %34               ; 6 uses
  %i.wo = fmul float %12, %27                     ; 3 uses
  %i.wp = fmul float %i.wk, %27                   ; 3 uses
  %36 = fmul float %i.lg, %28
  %37 = fmul float %i.vk, %31
  %38 = fmul float %i.vk, %32
  %i.wq = extractelement <4 x float> %35, i64 1
  %i.wr = call float @llvm.fmuladd.f32(float %i.wq, float %i.vo, float %36)
  %39 = insertelement <4 x float> %14, float %i.wr, i64 0
  %40 = insertelement <4 x float> %39, float %i.lg, i64 2
  %41 = shufflevector <4 x float> %40, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %42 = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %28, i64 1
  %43 = insertelement <4 x float> %42, float %31, i64 2
  %i.ws = insertelement <4 x float> %43, float %32, i64 3 ; 2 uses
  %44 = fmul <4 x float> %41, %i.ws
  %45 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %35, <4 x float> %17, <4 x float> %44) ; 4 uses
  %46 = extractelement <4 x float> %45, i64 2
  %47 = call noundef float @llvm.fmuladd.f32(float %i.wo, float %i.vl, float %46)
  %48 = shufflevector <4 x float> %45, <4 x float> %18, <4 x i32> <i32 3, i32 poison, i32 4, i32 5>
  %i.wt = insertelement <4 x float> %48, float %i.lg, i64 1
  %i.wu = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %47, i64 1
  %49 = shufflevector <4 x float> %i.wu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.wv = fmul <4 x float> %i.wt, %49
  %50 = insertelement <4 x float> %19, float %i.wp, i64 0
  %51 = shufflevector <4 x float> %i.vp, <4 x float> %45, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  %i.ww = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %50, <4 x float> %51, <4 x float> %i.wv) ; 2 uses
  %52 = shufflevector <4 x float> %i.ww, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %53 = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.ww, <4 x i32> <i32 5, i32 6, i32 7, i32 3>
  %i.wx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vr, <4 x float> %52, <4 x float> %53)
  store <4 x float> %i.wx, ptr %i.vn, align 8
  %54 = shufflevector <4 x float> %45, <4 x float> %18, <4 x i32> <i32 1, i32 5, i32 4, i32 4>
  %55 = fmul <4 x float> %54, %i.ws
  %i.wy = extractelement <4 x float> %35, i64 0
  %56 = shufflevector <2 x float> %i.li, <2 x float> %i.le, <4 x i32> <i32 0, i32 poison, i32 2, i32 2>
  %i.wz = insertelement <4 x float> %56, float %i.lf, i64 1
  %57 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %35, <4 x float> %i.wz, <4 x float> %55) ; 4 uses
  %58 = extractelement <4 x float> %57, i64 2
  %i.xa = call noundef float @llvm.fmuladd.f32(float %i.wo, float %i.vm, float %58)
  %59 = shufflevector <4 x float> %57, <4 x float> %18, <4 x i32> <i32 3, i32 poison, i32 4, i32 5>
  %i.xb = insertelement <4 x float> %59, float %i.lg, i64 1
  %i.xc = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.xa, i64 1
  %60 = shufflevector <4 x float> %i.xc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.xd = fmul <4 x float> %i.xb, %60
  %61 = insertelement <4 x float> %19, float %i.wp, i64 0
  %i.xe = insertelement <4 x float> %61, float %i.lf, i64 3
  %62 = shufflevector <4 x float> %10, <4 x float> %57, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  %63 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xe, <4 x float> %62, <4 x float> %i.xd) ; 2 uses
  %64 = shufflevector <4 x float> %63, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %65 = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %63, <4 x i32> <i32 5, i32 6, i32 7, i32 3>
  %i.xf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %21, <4 x float> %64, <4 x float> %65)
  store <4 x float> %i.xf, ptr %i.vs, align 8
  %66 = extractelement <4 x float> %57, i64 1
  %67 = call noundef float @llvm.fmuladd.f32(float %i.wy, float %i.lj, float %66)
  %i.xg = extractelement <4 x float> %35, i64 2
  %i.xh = call float @llvm.fmuladd.f32(float %i.xg, float %i.lf, float %37)
  %i.xi = call noundef float @llvm.fmuladd.f32(float %i.wo, float %i.lj, float %i.xh) ; 2 uses
  %68 = extractelement <4 x float> %35, i64 3
  %i.xj = call float @llvm.fmuladd.f32(float %68, float %i.lf, float %38)
  %i.xk = call noundef float @llvm.fmuladd.f32(float %i.wp, float %i.lj, float %i.xj)
  %i.xl = fmul float %i.lg, %i.xi
  %i.xm = insertelement <2 x float> poison, float %i.xi, i64 0
  %i.xn = shufflevector <2 x float> %i.ld, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xo = insertelement <4 x float> %i.xn, float 0.000000e+00, i64 3
  %i.xp = shufflevector <4 x float> %i.xo, <4 x float> %16, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.xq = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %67, i64 0
  %i.xr = shufflevector <4 x float> %i.xq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.xs = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.xl, i64 0
  %i.xt = shufflevector <2 x float> %i.lh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xu = shufflevector <2 x float> %i.xm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.xv = fmul <4 x float> %i.xt, %i.xu
  %i.xw = shufflevector <4 x float> %i.xs, <4 x float> %i.xv, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.xx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xp, <4 x float> %i.xr, <4 x float> %i.xw)
  %i.xy = insertelement <4 x float> %21, float %i.lj, i64 2
  %i.xz = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.xk, i64 0
  %i.ya = shufflevector <4 x float> %i.xz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.yb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xy, <4 x float> %i.ya, <4 x float> %i.xx)
  store <4 x float> %i.yb, ptr %22, align 8
  %i.yc = getelementptr inbounds nuw i8, ptr %i.ex, i64 192
  %i.yd = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.yc, ptr noundef nonnull align 8 dereferenceable(204) %7)
          to label %bb.t unwind label %bb.bh      ; 0 uses

bb.t:                                             ; preds = %.loopexit
  %i.ye = getelementptr inbounds nuw i8, ptr %i.ex, i64 400
  %i.yf = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.ye, ptr noundef nonnull align 8 dereferenceable(204) %8)
          to label %bb.u unwind label %bb.bh      ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ex, i64 608
  %i.yh = invoke noundef nonnull align 8 dereferenceable(204) ptr @_ZN23btMultiBodyJacobianDataaSERKS_(ptr noundef nonnull align 8 dereferenceable(204) %i.yg, ptr noundef nonnull align 8 dereferenceable(204) %9)
          to label %bb.v unwind label %bb.bh      ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.yi = getelementptr inbounds nuw i8, ptr %i.ex, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yi, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !60
  %i.yj = getelementptr inbounds nuw i8, ptr %i.ex, i64 832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yj, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !60
  %i.yk = load ptr, ptr %i.cd, align 8, !tbaa !285 ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.yk, null
  %i.yl = load i8, ptr %i.cc, align 8, !range !52
  %i.ym = trunc nuw i8 %i.yl to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.ym, i1 false
  br i1 %or.cond.i.i.i, label %bb.w, label %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i

bb.w:                                             ; preds = %bb.v
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.yk)
          to label %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.yn = landingpad { ptr, i32 }
          catch ptr null
  %i.yo = extractvalue { ptr, i32 } %i.yn, 0
  call void @__clang_call_terminate(ptr %i.yo) #26
  unreachable

_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i: ; preds = %bb.w, %bb.v
  %i.yp = load ptr, ptr %i.bz, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i1.i = icmp ne ptr %i.yp, null
  %i.yq = load i8, ptr %i.by, align 8, !range !52
  %i.yr = trunc nuw i8 %i.yq to i1
  %or.cond.i.i2.i = select i1 %.not.i.i.i1.i, i1 %i.yr, i1 false
  br i1 %or.cond.i.i2.i, label %bb.y, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i

bb.y:                                             ; preds = %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.yp)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ys = landingpad { ptr, i32 }
          catch ptr null
  %i.yt = extractvalue { ptr, i32 } %i.ys, 0
  call void @__clang_call_terminate(ptr %i.yt) #26
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i: ; preds = %bb.y, %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i
  %i.yu = load ptr, ptr %i.bv, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i3.i = icmp ne ptr %i.yu, null
  %i.yv = load i8, ptr %i.bu, align 8, !range !52
  %i.yw = trunc nuw i8 %i.yv to i1
  %or.cond.i.i4.i = select i1 %.not.i.i.i3.i, i1 %i.yw, i1 false
  br i1 %or.cond.i.i4.i, label %bb.aa, label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i

bb.aa:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.yu)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.yx = landingpad { ptr, i32 }
          catch ptr null
  %i.yy = extractvalue { ptr, i32 } %i.yx, 0
  call void @__clang_call_terminate(ptr %i.yy) #26
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit.i:          ; preds = %bb.aa, %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i
  %i.yz = load ptr, ptr %i.br, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i5.i = icmp ne ptr %i.yz, null
  %i.za = load i8, ptr %i.bq, align 8, !range !52
  %i.zb = trunc nuw i8 %i.za to i1
  %or.cond.i.i6.i = select i1 %.not.i.i.i5.i, i1 %i.zb, i1 false
  br i1 %or.cond.i.i6.i, label %bb.ac, label %_ZN20btAlignedObjectArrayIfED2Ev.exit7.i

bb.ac:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.yz)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit7.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.zc = landingpad { ptr, i32 }
          catch ptr null
  %i.zd = extractvalue { ptr, i32 } %i.zc, 0
  call void @__clang_call_terminate(ptr %i.zd) #26
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit7.i:         ; preds = %bb.ac, %_ZN20btAlignedObjectArrayIfED2Ev.exit.i
  %i.ze = load ptr, ptr %i.bn, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i8.i = icmp ne ptr %i.ze, null
  %i.zf = load i8, ptr %i.bm, align 8, !range !52
  %i.zg = trunc nuw i8 %i.zf to i1
  %or.cond.i.i9.i = select i1 %.not.i.i.i8.i, i1 %i.zg, i1 false
  br i1 %or.cond.i.i9.i, label %bb.ae, label %_ZN20btAlignedObjectArrayIfED2Ev.exit10.i

bb.ae:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit7.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ze)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit10.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.zh = landingpad { ptr, i32 }
          catch ptr null
  %i.zi = extractvalue { ptr, i32 } %i.zh, 0
  call void @__clang_call_terminate(ptr %i.zi) #26
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit10.i:        ; preds = %bb.ae, %_ZN20btAlignedObjectArrayIfED2Ev.exit7.i
  %i.zj = load ptr, ptr %i.bj, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i11.i = icmp ne ptr %i.zj, null
  %i.zk = load i8, ptr %i.bi, align 8, !range !52
  %i.zl = trunc nuw i8 %i.zk to i1
  %or.cond.i.i12.i = select i1 %.not.i.i.i11.i, i1 %i.zl, i1 false
  br i1 %or.cond.i.i12.i, label %bb.ag, label %_ZN23btMultiBodyJacobianDataD2Ev.exit

bb.ag:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit10.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.zj)
          to label %_ZN23btMultiBodyJacobianDataD2Ev.exit unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.zm = landingpad { ptr, i32 }
          catch ptr null
  %i.zn = extractvalue { ptr, i32 } %i.zm, 0
  call void @__clang_call_terminate(ptr %i.zn) #26
  unreachable

_ZN23btMultiBodyJacobianDataD2Ev.exit:            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit10.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.zo = load ptr, ptr %i.bf, align 8, !tbaa !285 ; 2 uses
  %.not.i.i.i.i120 = icmp ne ptr %i.zo, null
  %i.zp = load i8, ptr %i.be, align 8, !range !52
  %i.zq = trunc nuw i8 %i.zp to i1
  %or.cond.i.i.i121 = select i1 %.not.i.i.i.i120, i1 %i.zq, i1 false
  br i1 %or.cond.i.i.i121, label %bb.ai, label %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i122

bb.ai:                                            ; preds = %_ZN23btMultiBodyJacobianDataD2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.zo)
          to label %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i122 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.zr = landingpad { ptr, i32 }
          catch ptr null
  %i.zs = extractvalue { ptr, i32 } %i.zr, 0
  call void @__clang_call_terminate(ptr %i.zs) #26
  unreachable

_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i122: ; preds = %bb.ai, %_ZN23btMultiBodyJacobianDataD2Ev.exit
  %i.zt = load ptr, ptr %i.bb, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i1.i123 = icmp ne ptr %i.zt, null
  %i.zu = load i8, ptr %i.ba, align 8, !range !52
  %i.zv = trunc nuw i8 %i.zu to i1
  %or.cond.i.i2.i124 = select i1 %.not.i.i.i1.i123, i1 %i.zv, i1 false
  br i1 %or.cond.i.i2.i124, label %bb.ak, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i125

bb.ak:                                            ; preds = %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i122
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.zt)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i125 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.zw = landingpad { ptr, i32 }
          catch ptr null
  %i.zx = extractvalue { ptr, i32 } %i.zw, 0
  call void @__clang_call_terminate(ptr %i.zx) #26
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i125: ; preds = %bb.ak, %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit.i122
  %i.zy = load ptr, ptr %i.ax, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i3.i126 = icmp ne ptr %i.zy, null
  %i.zz = load i8, ptr %i.aw, align 8, !range !52
  %i.aaa = trunc nuw i8 %i.zz to i1
  %or.cond.i.i4.i127 = select i1 %.not.i.i.i3.i126, i1 %i.aaa, i1 false
  br i1 %or.cond.i.i4.i127, label %bb.am, label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i128

bb.am:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i125
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.zy)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i128 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.aab = landingpad { ptr, i32 }
          catch ptr null
  %i.aac = extractvalue { ptr, i32 } %i.aab, 0
  call void @__clang_call_terminate(ptr %i.aac) #26
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit.i128:       ; preds = %bb.am, %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i125
  %i.aad = load ptr, ptr %i.at, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i5.i129 = icmp ne ptr %i.aad, null
  %i.aae = load i8, ptr %i.as, align 8, !range !52
  %i.aaf = trunc nuw i8 %i.aae to i1
  %or.cond.i.i6.i130 = select i1 %.not.i.i.i5.i129, i1 %i.aaf, i1 false
  br i1 %or.cond.i.i6.i130, label %bb.ao, label %_ZN20btAlignedObjectArrayIfED2Ev.exit7.i131

bb.ao:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit.i128
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aad)
end_hunk_1
