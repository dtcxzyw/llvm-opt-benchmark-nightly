Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBody?download=true
inline.NumInlined: 2252
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN11btMultiBody11setupPlanarEifRK9btVector3iRK12btQuaternionS2_S2_b:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !36
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.j = getelementptr inbounds [688 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 %4, ptr %i.k, align 4, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false)
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.n = getelementptr inbounds [688 x i8], ptr %i.m, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.q = getelementptr inbounds [688 x i8], ptr %i.p, i64 %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !36
  %.sroa.0.0.copyload3.i = load <2 x float>, ptr %6, align 4 ; 4 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !11 ; 2 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.t = getelementptr inbounds [688 x i8], ptr %i.s, i64 %i.f ; 21 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 564
  store i32 3, ptr %i.u, align 4, !tbaa !85
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 556
  store i32 3, ptr %i.v, align 4, !tbaa !86
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 560
  store i32 3, ptr %i.w, align 8, !tbaa !87
  %.sroa.0.0.copyload3.i38 = load <2 x float>, ptr %6, align 4 ; 4 uses
  %.sroa.8.0.copyload.i40 = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !11 ; 2 uses
  %i.x = shufflevector <2 x float> %.sroa.0.0.copyload3.i, <2 x float> %.sroa.0.0.copyload3.i38, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.y = fmul <2 x float> %i.x, %i.x
  %i.z = shufflevector <2 x float> %.sroa.0.0.copyload3.i, <2 x float> %.sroa.0.0.copyload3.i38, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.z, <2 x float> %i.y)
  %i.ab = shufflevector <2 x float> %.sroa.8.0.copyload.i, <2 x float> %.sroa.8.0.copyload.i40, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ab, <2 x float> %i.aa)
  %i.ad = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ac)
  %i.ae = fdiv <2 x float> splat (float 1.000000e+00), %i.ad ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.copyload3.i, %i.ae
  %i.af = extractelement <2 x float> %foldExtExtBinop, i64 0
  %shift = shufflevector <2 x float> %.sroa.0.0.copyload3.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop114 = fmul <2 x float> %shift, %i.ae
  %i.ag = extractelement <2 x float> %foldExtExtBinop114, i64 0
  %foldExtExtBinop116 = fmul <2 x float> %.sroa.8.0.copyload.i, %i.ae
  %i.ah = extractelement <2 x float> %foldExtExtBinop116, i64 0
  %i.ai = fmul float %i.ag, 0.000000e+00
  %i.aj = fadd float %i.af, %i.ai
  %i.ak = tail call noundef float @llvm.fmuladd.f32(float %i.ah, float 0.000000e+00, float %i.aj)
  %i.al = fpext float %i.ak to double
  %i.am = fcmp ogt double %i.al, f0x3FEFF7CED916872B
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 140
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 148
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %i.as = getelementptr i8, ptr %i.t, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.aq, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  %i.at = getelementptr i8, ptr %i.t, i64 188
  %i.au = getelementptr i8, ptr %i.t, i64 192
  %i.av = getelementptr i8, ptr %i.t, i64 196
  store float 0.000000e+00, ptr %i.av, align 4, !tbaa !9
  %i.aw = getelementptr i8, ptr %i.t, i64 216
  %i.ax = insertelement <2 x i1> poison, i1 %i.am, i64 0
  %i.ay = shufflevector <2 x i1> %i.ax, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.az = select <2 x i1> %i.ay, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> <float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.ba = shufflevector <2 x float> %.sroa.8.0.copyload.i40, <2 x float> %.sroa.0.0.copyload3.i38, <2 x i32> <i32 0, i32 2>
  %i.bb = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bc = fmul <2 x float> %i.ba, %i.bb           ; 5 uses
  %i.bd = fmul <2 x float> %.sroa.0.0.copyload3.i38, %i.bb ; 3 uses
  %i.be = extractelement <2 x float> %i.bc, i64 1 ; 2 uses
  store float %i.be, ptr %i.an, align 8, !tbaa !9
  %i.bf = extractelement <2 x float> %i.bd, i64 1 ; 3 uses
  store float %i.bf, ptr %i.ao, align 4, !tbaa !9
  %i.bg = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  store float %i.bg, ptr %i.ap, align 8, !tbaa !9
  %i.bh = extractelement <2 x float> %i.az, i64 1
  %i.bi = fneg float %i.bh
  %i.bj = fneg <2 x float> %i.az
  %i.bk = shufflevector <2 x float> <float -0.000000e+00, float poison>, <2 x float> %i.bj, <2 x i32> <i32 0, i32 2>
  %i.bl = fmul <2 x float> %i.bd, %i.bk
  %i.bm = fmul float %i.bg, %i.bi
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.az, <2 x float> %i.bl) ; 4 uses
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bf, float 0.000000e+00, float %i.bm) ; 3 uses
  store float %i.bo, ptr %i.as, align 8, !tbaa !9
  %i.bp = extractelement <2 x float> %i.bn, i64 0 ; 2 uses
  store float %i.bp, ptr %i.at, align 4, !tbaa !9
  %i.bq = extractelement <2 x float> %i.bn, i64 1
  store float %i.bq, ptr %i.au, align 8, !tbaa !9
  %i.br = shufflevector <2 x float> %i.bd, <2 x float> %i.bc, <2 x i32> <i32 1, i32 2>
  %i.bs = fneg <2 x float> %i.br
  %i.bt = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bu = insertelement <2 x float> %i.bt, float %i.bo, i64 1
  %i.bv = fmul <2 x float> %i.bu, %i.bs
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bc, <2 x float> %i.bv)
  %i.bx = fneg float %i.be
  %i.by = fmul float %i.bp, %i.bx
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bf, float %i.by)
  store <2 x float> %i.bw, ptr %i.aw, align 8, !tbaa !9
  %i.ca = getelementptr i8, ptr %i.t, i64 224
  store float %i.bz, ptr %i.ca, align 8, !tbaa !9
  %i.cb = getelementptr i8, ptr %i.t, i64 228
  store float 0.000000e+00, ptr %i.cb, align 4, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 472
  store float 0.000000e+00, ptr %i.cc, align 8, !tbaa !9
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 464
  store <2 x float> zeroinitializer, ptr %i.cd, align 8, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 528
  store float 0.000000e+00, ptr %i.ce, align 8, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 520
  store <2 x float> zeroinitializer, ptr %i.cf, align 8, !tbaa !9
  br i1 %8, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 552 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !88
  %i.ci = or i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 8, !tbaa !88
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN15btMultibodyLink19updateCacheMultiDofEPf(ptr noundef nonnull align 8 dereferenceable(688) %i.t, ptr noundef null)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !39 ; 3 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !38  ; 6 uses
  br i1 %i.cl, label %.lr.ph.i, label %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit

.lr.ph.i:                                         ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.ck to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.cm = icmp ult i32 %i.ck, 4
  br i1 %i.cm, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.d ] ; 5 uses
  %i.cn = phi <2 x i32> [ zeroinitializer, %.lr.ph.i.new ], [ %i.dh, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.d ]
  %i.co = getelementptr inbounds nuw [688 x i8], ptr %.pre, i64 %indvars.iv.i ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 328
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 556
  store <2 x i32> %i.cn, ptr %i.cp, align 8, !tbaa !89
  %i.cr = load <2 x i32>, ptr %i.cq, align 4, !tbaa !89
  %i.cs = add nsw <2 x i32> %i.cr, %i.cn          ; 2 uses
  %i.ct = getelementptr inbounds nuw [688 x i8], ptr %.pre, i64 %indvars.iv.i ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1016
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 1244
  store <2 x i32> %i.cs, ptr %i.cu, align 8, !tbaa !89
  %i.cw = load <2 x i32>, ptr %i.cv, align 4, !tbaa !89
  %i.cx = add nsw <2 x i32> %i.cw, %i.cs          ; 2 uses
  %i.cy = getelementptr inbounds nuw [688 x i8], ptr %.pre, i64 %indvars.iv.i ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1704
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 1932
  store <2 x i32> %i.cx, ptr %i.cz, align 8, !tbaa !89
  %i.db = load <2 x i32>, ptr %i.da, align 4, !tbaa !89
  %i.dc = add nsw <2 x i32> %i.db, %i.cx          ; 2 uses
  %i.dd = getelementptr inbounds nuw [688 x i8], ptr %.pre, i64 %indvars.iv.i ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 2392
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 2620
  store <2 x i32> %i.dc, ptr %i.de, align 8, !tbaa !89
  %i.dg = load <2 x i32>, ptr %i.df, align 4, !tbaa !89
  %i.dh = add nsw <2 x i32> %i.dg, %i.dc          ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !90

_ZN11btMultiBody21updateLinksDofOffsetsEv.exit.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x i32> [ zeroinitializer, %.lr.ph.i ], [ %i.dh, %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod122 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.e ] ; 2 uses
  %i.di = phi <2 x i32> [ %.epil.init, %.epil.preheader ], [ %i.dn, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.dj = getelementptr inbounds nuw [688 x i8], ptr %.pre, i64 %indvars.iv.i.epil ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 328
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 556
  store <2 x i32> %i.di, ptr %i.dk, align 8, !tbaa !89
  %i.dm = load <2 x i32>, ptr %i.dl, align 4, !tbaa !89
  %i.dn = add nsw <2 x i32> %i.dm, %i.di
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit, label %bb.e, !llvm.loop !95

_ZN11btMultiBody21updateLinksDofOffsetsEv.exit:   ; preds = %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit.loopexit.unr-lcssa, %bb.e, %bb.c
  %i.do = getelementptr inbounds [688 x i8], ptr %.pre, i64 %i.f ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 184    ; 2 uses
  %.sroa.0.0.copyload3.i59 = load <2 x float>, ptr %i.dp, align 4 ; 4 uses
  %.sroa.8.0..sroa_idx.i60 = getelementptr i8, ptr %i.do, i64 192 ; 2 uses
  %.sroa.8.0.copyload.i61 = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i60, align 4, !tbaa !11 ; 2 uses
  %.sroa.0.0.vec.extract.i62 = extractelement <2 x float> %.sroa.0.0.copyload3.i59, i64 0 ; 2 uses
  %foldExtExtBinop118 = fmul <2 x float> %.sroa.0.0.copyload3.i59, %.sroa.0.0.copyload3.i59
  %i.dq = extractelement <2 x float> %foldExtExtBinop118, i64 1
  %i.dr = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i62, float %.sroa.0.0.vec.extract.i62, float %i.dq)
  %.sroa.8.8.vec.extract.i64 = extractelement <2 x float> %.sroa.8.0.copyload.i61, i64 0 ; 3 uses
  %i.ds = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract.i64, float %.sroa.8.8.vec.extract.i64, float %i.dr)
  %sqrt.i.i.i65 = tail call noundef float @llvm.sqrt.f32(float %i.ds)
  %i.dt = fdiv float 1.000000e+00, %sqrt.i.i.i65  ; 2 uses
  %i.du = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x float> %.sroa.0.0.copyload3.i59, %i.dv
  %i.dx = fmul float %.sroa.8.8.vec.extract.i64, %i.dt
  %.sroa.8.8.vec.insert.i68 = insertelement <2 x float> %.sroa.8.0.copyload.i61, float %i.dx, i64 0
  store <2 x float> %i.dw, ptr %i.dp, align 8
  store <2 x float> %.sroa.8.8.vec.insert.i68, ptr %.sroa.8.0..sroa_idx.i60, align 8, !tbaa !11
  %i.dy = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.dz = getelementptr inbounds [688 x i8], ptr %i.dy, i64 %i.f ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 216    ; 2 uses
  %.sroa.0.0.copyload3.i71 = load <2 x float>, ptr %i.ea, align 4 ; 4 uses
  %.sroa.8.0..sroa_idx.i72 = getelementptr i8, ptr %i.dz, i64 224 ; 2 uses
  %.sroa.8.0.copyload.i73 = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i72, align 4, !tbaa !11 ; 2 uses
  %.sroa.0.0.vec.extract.i74 = extractelement <2 x float> %.sroa.0.0.copyload3.i71, i64 0 ; 2 uses
  %foldExtExtBinop120 = fmul <2 x float> %.sroa.0.0.copyload3.i71, %.sroa.0.0.copyload3.i71
  %i.eb = extractelement <2 x float> %foldExtExtBinop120, i64 1
  %i.ec = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i74, float %.sroa.0.0.vec.extract.i74, float %i.eb)
  %.sroa.8.8.vec.extract.i76 = extractelement <2 x float> %.sroa.8.0.copyload.i73, i64 0 ; 3 uses
  %i.ed = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract.i76, float %.sroa.8.8.vec.extract.i76, float %i.ec)
  %sqrt.i.i.i77 = tail call noundef float @llvm.sqrt.f32(float %i.ed)
  %i.ee = fdiv float 1.000000e+00, %sqrt.i.i.i77  ; 2 uses
  %i.ef = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x float> %.sroa.0.0.copyload3.i71, %i.eg
  %i.ei = fmul float %.sroa.8.8.vec.extract.i76, %i.ee
  %.sroa.8.8.vec.insert.i80 = insertelement <2 x float> %.sroa.8.0.copyload.i73, float %i.ei, i64 0
  store <2 x float> %i.eh, ptr %i.ea, align 8
  store <2 x float> %.sroa.8.8.vec.insert.i80, ptr %.sroa.8.0..sroa_idx.i72, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11btMultiBody16finalizeMultiDofEv(ptr nofree noundef nonnull align 8 dereferenceable(640) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43   ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !44
  %i.f = icmp slt i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 3 uses
  br i1 %i.f, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i, label %.lr.ph.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %bb.b
  %.not.i5.i.i = icmp ne ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !67
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond = select i1 %.not.i5.i.i, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

bb.c:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.h)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i: ; preds = %bb.c, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  store i8 1, ptr %i.i, align 8, !tbaa !41
  store ptr null, ptr %i.g, align 8, !tbaa !42
  store i32 0, ptr %i.d, align 8, !tbaa !44
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
  %i.l = phi ptr [ null, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ], [ %i.h, %bb.b ]
  %i.m = sext i32 %i.b to i64                     ; 2 uses
  %i.n = shl nsw i64 %i.m, 2
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.n
  %i.o = mul nsw i64 %i.m, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.o, i1 false), !tbaa !9
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit:    ; preds = %.lr.ph.i, %bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !96   ; 2 uses
  %i.r = add nsw i32 %i.q, 6                      ; 5 uses
  %i.s = icmp sgt i32 %i.q, -6
  br i1 %i.s, label %bb.d, label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit17

bb.d:                                             ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !44
  %i.v = icmp slt i32 %i.u, %i.r
  br i1 %i.v, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i, label %..lr.ph.i3_crit_edge

..lr.ph.i3_crit_edge:                             ; preds = %bb.d
  %.phi.trans.insert118 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.pre119 = load ptr, ptr %.phi.trans.insert118, align 8, !tbaa !42
  %.pre132 = zext nneg i32 %i.r to i64
  %.pre133 = shl nuw nsw i64 %.pre132, 2
  br label %.lr.ph.i3

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i: ; preds = %bb.d
  %i.w = zext nneg i32 %i.r to i64
  %i.x = shl nuw nsw i64 %i.w, 2                  ; 2 uses
  %i.y = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.x, i32 noundef 16) ; 9 uses
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !43 ; 3 uses
  %i.z = icmp sgt i32 %.pre.i, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42 ; 9 uses
  br i1 %i.z, label %.lr.ph.i.i.i12, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i8

.lr.ph.i.i.i12:                                   ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = ptrtoaddr ptr %i.y to i64
  %wide.trip.count.i.i.i13 = zext nneg i32 %.pre.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre.i, 8
  %i.ae = sub i64 %i.ac, %i.ad
  %diff.check = icmp ugt i64 %i.ae, -32
  %or.cond189 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond189, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i12
  %n.vec = and i64 %wide.trip.count.i.i.i13, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <4 x float>, ptr %i.ag, align 4, !tbaa !9
  %wide.load159 = load <4 x float>, ptr %i.ah, align 4, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <4 x float> %wide.load, ptr %i.af, align 4, !tbaa !9
  store <4 x float> %wide.load159, ptr %i.ai, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i13
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i10, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i12, %middle.block
  %indvars.iv.i.i.i14.ph = phi i64 [ 0, %.lr.ph.i.i.i12 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i13, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i14.prol = phi i64 [ %indvars.iv.next.i.i.i15.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i14.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i.i.i14.prol
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i14.prol
  %i.am = load float, ptr %i.al, align 4, !tbaa !9
  store float %i.am, ptr %i.ak, align 4, !tbaa !9
  %indvars.iv.next.i.i.i15.prol = add nuw nsw i64 %indvars.iv.i.i.i14.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !100

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i14.unr = phi i64 [ %indvars.iv.i.i.i14.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i15.prol, %scalar.ph.prol ]
  %i.an = sub nsw i64 %indvars.iv.i.i.i14.ph, %wide.trip.count.i.i.i13
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i10, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i14 = phi i64 [ %indvars.iv.next.i.i.i15.3, %scalar.ph ], [ %indvars.iv.i.i.i14.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i.i.i14
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i14
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !9
  store float %i.ar, ptr %i.ap, align 4, !tbaa !9
  %indvars.iv.next.i.i.i15 = add nuw nsw i64 %indvars.iv.i.i.i14, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i15
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i15
  %i.au = load float, ptr %i.at, align 4, !tbaa !9
  store float %i.au, ptr %i.as, align 4, !tbaa !9
  %indvars.iv.next.i.i.i15.1 = add nuw nsw i64 %indvars.iv.i.i.i14, 2 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i15.1
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i15.1
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !9
  store float %i.ax, ptr %i.av, align 4, !tbaa !9
  %indvars.iv.next.i.i.i15.2 = add nuw nsw i64 %indvars.iv.i.i.i14, 3 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i15.2
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i15.2
  %i.ba = load float, ptr %i.az, align 4, !tbaa !9
  store float %i.ba, ptr %i.ay, align 4, !tbaa !9
  %indvars.iv.next.i.i.i15.3 = add nuw nsw i64 %indvars.iv.i.i.i14, 4 ; 2 uses
  %exitcond.not.i.i.i16.3 = icmp eq i64 %indvars.iv.next.i.i.i15.3, %wide.trip.count.i.i.i13
  br i1 %exitcond.not.i.i.i16.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i10, label %scalar.ph, !llvm.loop !101

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i8: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %.not.i5.i.i9 = icmp eq ptr %i.ab, null
  br i1 %.not.i5.i.i9, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i11, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i10

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i10: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !41, !range !67, !noundef !68
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.e, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i11

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i10
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ab)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i11

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i11: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i10, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 1, ptr %i.be, align 8, !tbaa !41
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !42
  store i32 %i.r, ptr %i.t, align 8, !tbaa !44
  br label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %..lr.ph.i3_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i11
  %.pre-phi = phi i64 [ %.pre133, %..lr.ph.i3_crit_edge ], [ %i.x, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i11 ]
  %i.bf = phi ptr [ %.pre119, %..lr.ph.i3_crit_edge ], [ %i.y, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i11 ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bf, i8 0, i64 %.pre-phi, i1 false), !tbaa !9
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit17

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit17:  ; preds = %.lr.ph.i3, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  store i32 %i.r, ptr %i.a, align 4, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 4 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !43 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %bb.f, label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit34

bb.f:                                             ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit17
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !44
  %i.bl = icmp slt i32 %i.bk, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !42 ; 3 uses
  br i1 %i.bl, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i25, label %.lr.ph.i18

end_hunk_0
