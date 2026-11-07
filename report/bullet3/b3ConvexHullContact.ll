Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3ConvexHullContact?download=true
inline.NumInlined: 2655
inline.NumDeleted: 497
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_Z27computeContactPlaneCompoundiiiiiPK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataPK15b3GpuChildShapePK9b3Vector3PKiPK9b3GpuFaceP10b3Contact4Rii:bb.a
  %i.mz = icmp sgt i32 %.085, 0
  br i1 %i.mz, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.na = load i32, ptr %13, align 4, !tbaa !38   ; 3 uses
  %i.nb = icmp slt i32 %i.na, %14
  br i1 %i.nb, label %.lr.ph385.preheader, label %.thread

.lr.ph385.preheader:                              ; preds = %bb.i
  %i.nc = add nsw i32 %i.na, 1
  store i32 %i.nc, ptr %13, align 4, !tbaa !38
  %i.nd = sext i32 %i.na to i64
  %i.ne = getelementptr inbounds [112 x i8], ptr %12, i64 %i.nd ; 11 uses
  %i.nf = fneg <2 x float> %i.er
  %i.ng = fneg float %i.ex
  %.sroa.3.12.vec.insert.i.i164 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ng, i64 0
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 64
  store <2 x float> %i.nf, ptr %i.nh, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ne, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i.i164, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !37
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ne, i64 82
  store i16 -19662, ptr %i.ni, align 2, !tbaa !55
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ne, i64 80
  store i16 0, ptr %i.nj, align 16, !tbaa !54
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ne, i64 84
  store i32 %0, ptr %i.nk, align 4, !tbaa !56
  %i.nl = load float, ptr %i.p, align 4, !tbaa !34
  %i.nm = fcmp oeq float %i.nl, 0.000000e+00
  %i.nn = select i1 %i.nm, i32 %i.q, i32 %1
  %i.no = getelementptr inbounds nuw i8, ptr %i.ne, i64 88
  store i32 %i.nn, ptr %i.no, align 8, !tbaa !57
  %i.np = load float, ptr %i.r, align 4, !tbaa !34
  %i.nq = fcmp oeq float %i.np, 0.000000e+00
  %i.nr = select i1 %i.nq, i32 %i.s, i32 %2
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ne, i64 92
  store i32 %i.nr, ptr %i.ns, align 4, !tbaa !58
  %wide.trip.count395 = zext nneg i32 %.085 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count395, 1
  %i.nt = icmp eq i32 %.085, 1
  br i1 %i.nt, label %.lr.ph385.epil.preheader, label %.lr.ph385.preheader.new

.lr.ph385.preheader.new:                          ; preds = %.lr.ph385.preheader
  %unroll_iter = and i64 %wide.trip.count395, 2147483646
  br label %.lr.ph385

._crit_edge386.unr-lcssa:                         ; preds = %.lr.ph385
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge386, label %.lr.ph385.epil.preheader

.lr.ph385.epil.preheader:                         ; preds = %._crit_edge386.unr-lcssa, %.lr.ph385.preheader
  %indvars.iv392.epil.init = phi i64 [ 0, %.lr.ph385.preheader ], [ %indvars.iv.next393.1, %._crit_edge386.unr-lcssa ] ; 2 uses
  %lcmp.mod416 = trunc i32 %.085 to i1
  tail call void @llvm.assume(i1 %lcmp.mod416)
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %indvars.iv392.epil.init
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !37
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds [16 x i8], ptr %16, i64 %i.nw
  %i.ny = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv392.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ny, ptr noundef nonnull align 16 dereferenceable(16) %i.nx, i64 16, i1 false)
  br label %._crit_edge386

._crit_edge386:                                   ; preds = %._crit_edge386.unr-lcssa, %.lr.ph385.epil.preheader
  %i.nz = uitofp nneg i32 %.085 to float
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ne, i64 76
  store float %i.nz, ptr %i.oa, align 4, !tbaa !37
  br label %.thread

.lr.ph385:                                        ; preds = %.lr.ph385, %.lr.ph385.preheader.new
  %indvars.iv392 = phi i64 [ 0, %.lr.ph385.preheader.new ], [ %indvars.iv.next393.1, %.lr.ph385 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph385.preheader.new ], [ %niter.next.1, %.lr.ph385 ]
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %indvars.iv392
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !37
  %i.od = sext i32 %i.oc to i64
  %i.oe = getelementptr inbounds [16 x i8], ptr %16, i64 %i.od
  %i.of = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.of, ptr noundef nonnull align 16 dereferenceable(16) %i.oe, i64 16, i1 false)
  %indvars.iv.next393 = or disjoint i64 %indvars.iv392, 1 ; 2 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %indvars.iv.next393
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !37
  %i.oi = sext i32 %i.oh to i64
  %i.oj = getelementptr inbounds [16 x i8], ptr %16, i64 %i.oi
  %i.ok = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv.next393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ok, ptr noundef nonnull align 16 dereferenceable(16) %i.oj, i64 16, i1 false)
  %indvars.iv.next393.1 = add nuw nsw i64 %indvars.iv392, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge386.unr-lcssa, label %.lr.ph385, !llvm.loop !335

.thread:                                          ; preds = %bb.b, %bb.i, %._crit_edge386, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.ol = add nuw nsw i32 %.090387, 1             ; 2 uses
  %exitcond397.not = icmp eq i32 %i.ol, %i.c
  br i1 %exitcond397.not, label %._crit_edge390, label %bb.b, !llvm.loop !336
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z26computeContactSphereConvexiiiiiPK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataPK9b3Vector3PKiPK9b3GpuFaceP10b3Contact4Rii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef writeonly captures(none) %11, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %12, i32 noundef %13) local_unnamed_addr #7 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr %6, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !37 ; 4 uses
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [80 x i8], ptr %5, i64 %i.e ; 4 uses
  %.sroa.0201.0.copyload = load float, ptr %i.f, align 16 ; 2 uses
  %.sroa.4202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.4202.0.copyload = load float, ptr %.sroa.4202.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5203.0.copyload = load float, ptr %.sroa.5203.0..sroa_idx, align 8 ; 2 uses
  %i.g = sext i32 %2 to i64
  %i.h = getelementptr inbounds [80 x i8], ptr %5, i64 %i.g ; 8 uses
  %.sroa.5199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5199.0.copyload = load float, ptr %.sroa.5199.0..sroa_idx, align 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.6196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %.sroa.6196.0.copyload = load float, ptr %.sroa.6196.0..sroa_idx, align 4 ; 5 uses
  %i.j = load <2 x float>, ptr %i.h, align 16     ; 3 uses
  %i.k = extractelement <2 x float> %i.j, i64 0
  %i.l = extractelement <2 x float> %i.j, i64 1
  %.sroa.0193.0.copyload = load float, ptr %i.i, align 16 ; 6 uses
  %.sroa.4194.0.copyload = load float, ptr %.sroa.4194.0..sroa_idx, align 4 ; 5 uses
  %.sroa.5195.0.copyload = load float, ptr %.sroa.5195.0..sroa_idx, align 8 ; 4 uses
  %i.m = fmul float %.sroa.4194.0.copyload, %.sroa.4194.0.copyload
  %i.n = tail call float @llvm.fmuladd.f32(float %.sroa.0193.0.copyload, float %.sroa.0193.0.copyload, float %i.m)
  %i.o = tail call float @llvm.fmuladd.f32(float %.sroa.5195.0.copyload, float %.sroa.5195.0.copyload, float %i.n)
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %.sroa.6196.0.copyload, float %.sroa.6196.0.copyload, float %i.o)
  %i.q = fdiv float 2.000000e+00, %i.p            ; 3 uses
  %i.r = fmul float %.sroa.0193.0.copyload, %i.q  ; 2 uses
  %i.s = fmul float %.sroa.4194.0.copyload, %i.q  ; 3 uses
  %i.t = fmul float %.sroa.5195.0.copyload, %i.q  ; 4 uses
  %i.u = fmul float %.sroa.6196.0.copyload, %i.r  ; 2 uses
  %i.v = fmul float %.sroa.6196.0.copyload, %i.s  ; 2 uses
  %i.w = fmul float %.sroa.6196.0.copyload, %i.t  ; 2 uses
  %i.x = fmul float %.sroa.0193.0.copyload, %i.r  ; 2 uses
  %i.y = fmul float %.sroa.0193.0.copyload, %i.s  ; 2 uses
  %i.z = fmul float %.sroa.0193.0.copyload, %i.t  ; 2 uses
  %i.aa = fmul float %.sroa.4194.0.copyload, %i.s ; 2 uses
  %i.ab = fmul float %.sroa.4194.0.copyload, %i.t ; 2 uses
  %i.ac = fmul float %.sroa.5195.0.copyload, %i.t ; 2 uses
  %i.ad = fadd float %i.aa, %i.ac
  %i.ae = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.y, i64 1
  %i.af = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.w, i64 1
  %i.ah = fsub <2 x float> %i.ae, %i.ag           ; 4 uses
  %i.ai = fadd float %i.z, %i.v                   ; 3 uses
  %i.aj = fadd float %i.y, %i.w                   ; 2 uses
  %i.ak = fadd float %i.x, %i.ac
  %i.al = fsub float 1.000000e+00, %i.ak          ; 2 uses
  %i.am = fsub float %i.ab, %i.u                  ; 3 uses
  %i.an = fsub float %i.z, %i.v                   ; 3 uses
  %i.ao = fadd float %i.ab, %i.u                  ; 3 uses
  %i.ap = fadd float %i.x, %i.aa
  %i.aq = fsub float 1.000000e+00, %i.ap          ; 4 uses
  %i.ar = fneg float %i.k                         ; 2 uses
  %i.as = fneg float %i.l                         ; 2 uses
  %i.at = fneg float %.sroa.5199.0.copyload       ; 2 uses
  %i.au = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.al, i64 1 ; 2 uses
  %i.aw = insertelement <2 x float> poison, float %i.as, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x float> %i.av, %i.ax
  %i.az = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.ba, <2 x float> %i.ay)
  %i.bc = insertelement <2 x float> poison, float %i.an, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %i.ao, i64 1 ; 2 uses
  %i.be = insertelement <2 x float> poison, float %i.at, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bf, <2 x float> %i.bb)
  %i.bh = fmul float %i.am, %i.as
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ar, float %i.bh)
  %i.bj = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %i.at, float %i.bi)
  %i.bk = insertelement <2 x float> poison, float %.sroa.4202.0.copyload, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.bl, %i.av
  %i.bn = insertelement <2 x float> poison, float %.sroa.0201.0.copyload, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.ah, <2 x float> %i.bm)
  %i.bq = insertelement <2 x float> poison, float %.sroa.5203.0.copyload, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.bd, <2 x float> %i.bp)
  %i.bt = fmul float %.sroa.4202.0.copyload, %i.am
  %i.bu = tail call float @llvm.fmuladd.f32(float %.sroa.0201.0.copyload, float %i.ai, float %i.bt)
  %i.bv = tail call noundef float @llvm.fmuladd.f32(float %.sroa.5203.0.copyload, float %i.aq, float %i.bu)
  %i.bw = fadd <2 x float> %i.bs, %i.bg           ; 6 uses
  %i.bx = fadd float %i.bv, %i.bj                 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.bz = load i32, ptr %i.by, align 16, !tbaa !33
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [16 x i8], ptr %6, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !37
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [96 x i8], ptr %7, i64 %i.ce ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !42 ; 2 uses
  %14 = icmp slt i32 %i.ch, 1
  br i1 %14, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 68
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !43
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %i.cl = fmul float %i.d, %i.d
  %i.cm = sext i32 %i.cj to i64
  %wide.trip.count = zext nneg i32 %i.ch to i64
  %invariant.gep = getelementptr [32 x i8], ptr %10, i64 %i.cm
  %i.cn = extractelement <2 x float> %i.bw, i64 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.081298 = phi float [ -1.000000e+06, %.lr.ph ], [ %.687225, %.thread ] ; 6 uses
  %.sroa.0141.0297 = phi <2 x float> [ undef, %.lr.ph ], [ %.sroa.0141.3224, %.thread ] ; 3 uses
  %.sroa.7142.0296 = phi <2 x float> [ undef, %.lr.ph ], [ %.sroa.7142.3223, %.thread ] ; 3 uses
  %.sroa.0143.0295 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0143.3222, %.thread ] ; 3 uses
  %.sroa.9146.0294 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.9146.3221, %.thread ] ; 3 uses
  %gep = getelementptr [32 x i8], ptr %invariant.gep, i64 %indvars.iv ; 4 uses
  %.sroa.7138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.co = load <2 x float>, ptr %.sroa.7138.0..sroa_idx, align 8 ; 3 uses
  %i.cp = extractelement <2 x float> %i.co, i64 0 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 16, !tbaa !38 ; 2 uses
  %.sroa.11140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep, i64 20
  %.sroa.11140.0.copyload = load i32, ptr %.sroa.11140.0..sroa_idx, align 4, !tbaa !38 ; 3 uses
  %i.cq = load <2 x float>, ptr %gep, align 16    ; 5 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 1 ; 2 uses
  %foldExtExtBinop394 = fmul <2 x float> %i.bw, %i.cq
  %i.cs = extractelement <2 x float> %foldExtExtBinop394, i64 1
  %i.ct = extractelement <2 x float> %i.cq, i64 0 ; 3 uses
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.cn, float %i.cs)
  %i.cv = tail call noundef float @llvm.fmuladd.f32(float %i.cp, float %i.bx, float %i.cu)
  %i.cw = extractelement <2 x float> %i.co, i64 1
  %i.cx = fadd float %i.cw, %i.cv                 ; 7 uses
  %i.cy = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x float> %i.cq, %i.cz
  %i.db = fmul float %i.cp, %i.cx
  %i.dc = fsub <2 x float> %i.bw, %i.da
  %i.dd = fsub float %i.bx, %i.db
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dd, i64 0
  %i.de = fcmp ogt float %i.cx, %i.d
  br i1 %i.de, label %.thread245, label %bb.c

.thread245:                                       ; preds = %bb.b
  %i.df = load i32, ptr @_ZZ26computeContactSphereConvexiiiiiPK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataPK9b3Vector3PKiPK9b3GpuFaceP10b3Contact4RiiE9numChecks, align 4, !tbaa !38
  %i.dg = add nsw i32 %i.df, 1
  store i32 %i.dg, ptr @_ZZ26computeContactSphereConvexiiiiiPK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataPK9b3Vector3PKiPK9b3GpuFaceP10b3Contact4RiiE9numChecks, align 4, !tbaa !38
  br label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.dh = fcmp ogt float %i.cx, 0.000000e+00
  br i1 %i.dh, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.di = load i32, ptr %i.ck, align 16, !tbaa !46
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [16 x i8], ptr %8, i64 %i.dj ; 2 uses
  %i.dl = icmp slt i32 %.sroa.11140.0.copyload, 2
  br i1 %i.dl, label %bb.k, label %.critedge.lr.ph.i

.critedge.lr.ph.i:                                ; preds = %bb.d
  %i.dm = add nsw i32 %.sroa.11140.0.copyload, %.sroa.10.0.copyload
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr [4 x i8], ptr %9, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 -4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !38
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [16 x i8], ptr %i.dk, i64 %i.dr ; 2 uses
  %.sroa.019.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dt = load <2 x float>, ptr %.sroa.019.sroa.5.0..sroa_idx.i, align 8
  %i.du = load <2 x float>, ptr %i.ds, align 16
  %i.dv = fneg float %i.cr
  %i.dw = fneg float %i.cp
  %i.dx = fneg float %i.ct
  %i.dy = zext nneg i32 %.sroa.11140.0.copyload to i64
  br label %.critedge.i

bb.e:                                             ; preds = %.critedge.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.dy
  br i1 %.not.i, label %_Z16IsPointInPolygonRK9b3Vector3PK9b3GpuFacePS0_PKiPS_.exit, label %.critedge.i, !llvm.loop !337

.critedge.i:                                      ; preds = %bb.e, %.critedge.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.critedge.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.dz = phi <2 x float> [ %i.du, %.critedge.lr.ph.i ], [ %i.ej, %bb.e ] ; 7 uses
  %i.ea = phi <2 x float> [ %i.dt, %.critedge.lr.ph.i ], [ %i.ek, %bb.e ] ; 4 uses
  %i.eb = extractelement <2 x float> %i.ea, i64 0 ; 4 uses
  %i.ec = trunc nuw i64 %indvars.iv.i to i32
  %i.ed = add i32 %.sroa.10.0.copyload, %i.ec
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !38
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [16 x i8], ptr %i.dk, i64 %i.eh ; 2 uses
  %i.ej = load <2 x float>, ptr %i.ei, align 16   ; 5 uses
  %.sroa.016.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load <2 x float>, ptr %.sroa.016.sroa.6.0..sroa_idx.i, align 8 ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.ej, %i.dz
  %i.el = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 5 uses
  %foldExtExtBinop384 = fsub <2 x float> %i.ej, %i.dz
  %i.em = extractelement <2 x float> %foldExtExtBinop384, i64 1 ; 5 uses
  %foldExtExtBinop386 = fsub <2 x float> %i.ek, %i.ea
  %i.en = extractelement <2 x float> %foldExtExtBinop386, i64 0 ; 5 uses
  %foldExtExtBinop388 = fsub <2 x float> %i.bw, %i.dz
  %i.eo = extractelement <2 x float> %foldExtExtBinop388, i64 0 ; 2 uses
  %foldExtExtBinop390 = fsub <2 x float> %i.bw, %i.dz
  %i.ep = extractelement <2 x float> %foldExtExtBinop390, i64 1 ; 2 uses
  %i.eq = fsub float %i.bx, %i.eb                 ; 2 uses
  %i.er = fmul float %i.en, %i.dv
  %i.es = tail call float @llvm.fmuladd.f32(float %i.em, float %i.cp, float %i.er)
  %i.et = fmul float %i.el, %i.dw
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.en, float %i.ct, float %i.et)
  %i.ev = fmul float %i.em, %i.dx
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.el, float %i.cr, float %i.ev)
  %i.ex = fmul float %i.ep, %i.eu
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.es, float %i.ex)
  %i.ez = tail call noundef float @llvm.fmuladd.f32(float %i.eq, float %i.ew, float %i.ey)
  %i.fa = fcmp ule float %i.ez, 0.000000e+00
  br i1 %i.fa, label %bb.e, label %bb.f

bb.f:                                             ; preds = %.critedge.i
  %i.fb = extractelement <2 x float> %i.ek, i64 0 ; 2 uses
  %i.fc = fmul float %i.em, %i.em
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.el, float %i.el, float %i.fc)
  %i.fe = tail call noundef float @llvm.fmuladd.f32(float %i.en, float %i.en, float %i.fd) ; 2 uses
  %i.ff = fcmp une float %i.fe, 0.000000e+00
  br i1 %i.ff, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.fg = fmul float %i.ep, %i.em
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.el, float %i.eo, float %i.fg)
  %i.fi = tail call noundef float @llvm.fmuladd.f32(float %i.en, float %i.eq, float %i.fh)
  %i.fj = fdiv float %i.fi, %i.fe                 ; 5 uses
  %i.fk = fcmp ugt float %i.fj, 0.000000e+00
  br i1 %i.fk, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.fl = fcmp ult float %i.fj, 1.000000e+00
  br i1 %i.fl, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.fm = fsub float 1.000000e+00, %i.fj          ; 2 uses
  %i.fn = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = fmul <2 x float> %i.ej, %i.fo
  %i.fq = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.dz, <2 x float> %i.fp)
  %i.ft = fmul float %i.fb, %i.fj
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.eb, float %i.ft) ; 2 uses
  %i.fv = insertelement <2 x float> <float poison, float undef>, float %i.fu, i64 0
  br label %bb.k

_Z16IsPointInPolygonRK9b3Vector3PK9b3GpuFacePS0_PKiPS_.exit: ; preds = %bb.e
  %i.fw = fcmp ogt float %i.cx, %.081298
  br i1 %i.fw, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.n, %_Z16IsPointInPolygonRK9b3Vector3PK9b3GpuFacePS0_PKiPS_.exit
  br label %.thread

bb.k:                                             ; preds = %bb.d, %bb.f, %bb.i, %bb.g, %bb.h
  %.sroa.11.0.ph = phi float [ %i.fb, %bb.h ], [ %i.eb, %bb.g ], [ %i.eb, %bb.f ], [ %i.fu, %bb.i ], [ undef, %bb.d ]
  %i.fx = phi <2 x float> [ %i.ej, %bb.h ], [ %i.dz, %bb.g ], [ %i.dz, %bb.f ], [ %i.fs, %bb.i ], [ undef, %bb.d ] ; 2 uses
  %i.fy = phi <2 x float> [ %i.ek, %bb.h ], [ %i.ea, %bb.g ], [ %i.ea, %bb.f ], [ %i.fv, %bb.i ], [ undef, %bb.d ]
  %i.fz = fsub <2 x float> %i.bw, %i.fx           ; 4 uses
  %i.ga = fsub float %i.bx, %.sroa.11.0.ph        ; 3 uses
  %foldExtExtBinop392 = fmul <2 x float> %i.fz, %i.fz
  %i.gb = extractelement <2 x float> %foldExtExtBinop392, i64 1
  %i.gc = extractelement <2 x float> %i.fz, i64 0 ; 2 uses
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.gc, float %i.gb)
  %i.ge = tail call noundef float @llvm.fmuladd.f32(float %i.ga, float %i.ga, float %i.gd) ; 2 uses
  %i.gf = fcmp olt float %i.ge, %i.cl
  br i1 %i.gf, label %bb.l, label %._crit_edge.thread

bb.l:                                             ; preds = %bb.k
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ge) ; 3 uses
  %i.gg = fcmp ogt float %sqrt, %.081298
  br i1 %i.gg, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.gh = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.gi = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = fmul <2 x float> %i.fz, %i.gj
  %i.gl = fmul float %i.ga, %i.gh
  %.sroa.3.12.vec.insert.i.i.i102 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gl, i64 0
  br label %.thread

bb.n:                                             ; preds = %bb.c
  %i.gm = fcmp ogt float %i.cx, %.081298
  br i1 %i.gm, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.l, %bb.m, %bb.j, %_Z16IsPointInPolygonRK9b3Vector3PK9b3GpuFacePS0_PKiPS_.exit, %bb.n
  %.687225 = phi float [ %sqrt, %bb.m ], [ %.081298, %bb.n ], [ %i.cx, %bb.j ], [ %.081298, %_Z16IsPointInPolygonRK9b3Vector3PK9b3GpuFacePS0_PKiPS_.exit ], [ %.081298, %bb.l ] ; 3 uses
  %.sroa.0141.3224 = phi <2 x float> [ %i.gk, %bb.m ], [ %.sroa.0141.0297, %bb.n ], [ %i.cq, %bb.j ], [ %.sroa.0141.0297, %_Z16IsPointInPolygonRK9b3Vector3PK9b3GpuFacePS0_PKiPS_.exit ], [ %.sroa.0141.0297, %bb.l ] ; 5 uses
  %.sroa.7142.3223 = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i.i102, %bb.m ], [ %.sroa.7142.0296, %bb.n ], [ %i.co, %bb.j ], [ %.sroa.7142.0296, %_Z16IsPointInPolygonRK9b3Vector3PK9b3GpuFacePS0_PKiPS_.exit ], [ %.sroa.7142.0296, %bb.l ] ; 3 uses
  %.sroa.0143.3222 = phi <2 x float> [ %i.fx, %bb.m ], [ %.sroa.0143.0295, %bb.n ], [ %i.dc, %bb.j ], [ %.sroa.0143.0295, %_Z16IsPointInPolygonRK9b3Vector3PK9b3GpuFacePS0_PKiPS_.exit ], [ %.sroa.0143.0295, %bb.l ] ; 5 uses
  %.sroa.9146.3221 = phi <2 x float> [ %i.fy, %bb.m ], [ %.sroa.9146.0294, %bb.n ], [ %.sroa.3.12.vec.insert.i.i.i, %bb.j ], [ %.sroa.9146.0294, %_Z16IsPointInPolygonRK9b3Vector3PK9b3GpuFacePS0_PKiPS_.exit ], [ %.sroa.9146.0294, %bb.l ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !338

._crit_edge.thread:                               ; preds = %bb.k, %bb.a
  %15 = load i32, ptr @_ZZ26computeContactSphereConvexiiiiiPK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataPK9b3Vector3PKiPK9b3GpuFaceP10b3Contact4RiiE9numChecks, align 4, !tbaa !38
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr @_ZZ26computeContactSphereConvexiiiiiPK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataPK9b3Vector3PKiPK9b3GpuFaceP10b3Contact4RiiE9numChecks, align 4, !tbaa !38
  br label %bb.r

._crit_edge:                                      ; preds = %.thread
  %i.gn = load i32, ptr @_ZZ26computeContactSphereConvexiiiiiPK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataPK9b3Vector3PKiPK9b3GpuFaceP10b3Contact4RiiE9numChecks, align 4, !tbaa !38
  %i.go = add nsw i32 %i.gn, 1
  store i32 %i.go, ptr @_ZZ26computeContactSphereConvexiiiiiPK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataPK9b3Vector3PKiPK9b3GpuFaceP10b3Contact4RiiE9numChecks, align 4, !tbaa !38
  %i.gp = fcmp ogt float %.687225, -1.000000e+04
  br i1 %i.gp, label %bb.o, label %bb.r

bb.o:                                             ; preds = %._crit_edge
  %.sroa.0141.0.vec.extract = extractelement <2 x float> %.sroa.0141.3224, i64 0
  %.sroa.0141.4.vec.extract = extractelement <2 x float> %.sroa.0141.3224, i64 1
  %.sroa.7142.8.vec.extract = extractelement <2 x float> %.sroa.7142.3223, i64 0
  %i.gq = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gr = insertelement <2 x float> %i.gq, float %i.al, i64 1 ; 2 uses
  %i.gs = shufflevector <2 x float> %.sroa.0141.3224, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gt = fmul <2 x float> %i.gr, %i.gs
  %i.gu = insertelement <2 x float> %i.ah, float %i.aj, i64 1 ; 2 uses
  %i.gv = shufflevector <2 x float> %.sroa.0141.3224, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> %i.gv, <2 x float> %i.gt)
  %i.gx = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.gy = insertelement <2 x float> %i.gx, float %i.am, i64 1 ; 2 uses
  %i.gz = shufflevector <2 x float> %.sroa.7142.3223, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.gz, <2 x float> %i.gw)
  %i.hb = fmul float %i.ao, %.sroa.0141.4.vec.extract
  %i.hc = tail call float @llvm.fmuladd.f32(float %i.an, float %.sroa.0141.0.vec.extract, float %i.hb)
  %i.hd = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %.sroa.7142.8.vec.extract, float %i.hc)
  %.sroa.3.12.vec.insert.i.i105 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hd, i64 0
  %.sroa.0143.0.vec.extract = extractelement <2 x float> %.sroa.0143.3222, i64 0
  %.sroa.0143.4.vec.extract = extractelement <2 x float> %.sroa.0143.3222, i64 1
  %.sroa.9146.8.vec.extract = extractelement <2 x float> %.sroa.9146.3221, i64 0
  %i.he = shufflevector <2 x float> %.sroa.0143.3222, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hf = fmul <2 x float> %i.gr, %i.he
  %i.hg = shufflevector <2 x float> %.sroa.0143.3222, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %i.gu, <2 x float> %i.hf)
  %i.hi = shufflevector <2 x float> %.sroa.9146.3221, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.gy, <2 x float> %i.hh)
  %i.hk = fadd <2 x float> %i.j, %i.hj
  %i.hl = fsub float %.687225, %i.d               ; 2 uses
  %i.hm = fcmp olt float %i.hl, 0.000000e+00
  br i1 %i.hm, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.hn = load i32, ptr %12, align 4, !tbaa !38   ; 3 uses
  %i.ho = icmp slt i32 %i.hn, %13
  br i1 %i.ho, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hp = fmul float %i.ao, %.sroa.0143.4.vec.extract
  %i.hq = tail call float @llvm.fmuladd.f32(float %.sroa.0143.0.vec.extract, float %i.an, float %i.hp)
  %i.hr = tail call noundef float @llvm.fmuladd.f32(float %.sroa.9146.8.vec.extract, float %i.aq, float %i.hq)
  %i.hs = fadd float %.sroa.5199.0.copyload, %i.hr
  %.sroa.3.12.vec.insert.i.i4.i110 = insertelement <2 x float> poison, float %i.hs, i64 0
  %.sroa.4.12.vec.insert = insertelement <2 x float> %.sroa.3.12.vec.insert.i.i4.i110, float %i.hl, i64 1
  %i.ht = add nsw i32 %i.hn, 1
  store i32 %i.ht, ptr %12, align 4, !tbaa !38
  %i.hu = sext i32 %i.hn to i64
  %i.hv = getelementptr inbounds [112 x i8], ptr %11, i64 %i.hu ; 10 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 64
  store <2 x float> %i.ha, ptr %i.hw, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i.i105, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !37
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 82
  store i16 -19662, ptr %i.hx, align 2, !tbaa !55
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 80
  store i16 0, ptr %i.hy, align 16, !tbaa !54
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 84
  store i32 %0, ptr %i.hz, align 4, !tbaa !56
  %i.ia = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !34
  %i.ic = fcmp oeq float %i.ib, 0.000000e+00
  %i.id = sub nsw i32 0, %1
  %i.ie = select i1 %i.ic, i32 %i.id, i32 %1
  %i.if = getelementptr inbounds nuw i8, ptr %i.hv, i64 88
  store i32 %i.ie, ptr %i.if, align 8, !tbaa !57
  %i.ig = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !34
  %i.ii = fcmp oeq float %i.ih, 0.000000e+00
  %i.ij = sub nsw i32 0, %2
  %i.ik = select i1 %i.ii, i32 %i.ij, i32 %2
  %i.il = getelementptr inbounds nuw i8, ptr %i.hv, i64 92
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !58
  store <2 x float> %i.hk, ptr %i.hv, align 16
  %.sroa.4.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store <2 x float> %.sroa.4.12.vec.insert, ptr %.sroa.4.0..sroa_idx113, align 8, !tbaa !37
  %i.im = getelementptr inbounds nuw i8, ptr %i.hv, i64 76
  store float 1.000000e+00, ptr %i.im, align 4, !tbaa !37
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread, %bb.o, %bb.q, %bb.p, %.thread245, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147483648, 2147483647) i32 @_Z27computeContactConvexConvex2iiiiiRK20b3AlignedObjectArrayI15b3RigidBodyDataERKS_I12b3CollidableERKS_I22b3ConvexPolyhedronDataERKS_I9b3Vector3ESF_RKS_IiERKS_I9b3GpuFaceERS_I10b3Contact4ERiiRKSO_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %11, ptr noundef nonnull align 8 dereferenceable(25) %12, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %13, i32 noundef %14, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(25) %15) local_unnamed_addr #8 {
bb.a:
  %16 = alloca %class.b3Vector3, align 16         ; 5 uses
  %17 = alloca %class.b3Quaternion, align 16      ; 5 uses
  %18 = alloca %class.b3Vector3, align 16         ; 5 uses
  %19 = alloca %class.b3Quaternion, align 16      ; 5 uses
  %20 = alloca %struct.b3ConvexPolyhedronData, align 16 ; 4 uses
  %21 = alloca %struct.b3ConvexPolyhedronData, align 16 ; 4 uses
  %22 = alloca %class.b3Vector3, align 16         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !152  ; 2 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [80 x i8], ptr %i.b, i64 %i.c ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %16, ptr noundef nonnull align 16 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %17, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds [80 x i8], ptr %i.b, i64 %i.f ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %18, ptr noundef nonnull align 16 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %19, ptr noundef nonnull align 16 dereferenceable(16) %i.h, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !140  ; 2 uses
  %i.k = sext i32 %3 to i64
  %i.l = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.k
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.sroa.32.0.copyload = load i32, ptr %.sroa.32.0..sroa_idx, align 4, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !144  ; 2 uses
  %i.o = sext i32 %.sroa.32.0.copyload to i64
  %i.p = getelementptr inbounds [96 x i8], ptr %i.n, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %20, ptr noundef nonnull align 16 dereferenceable(96) %i.p, i64 96, i1 false), !tbaa.struct !192
  %i.q = sext i32 %4 to i64
  %i.r = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.q
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !37
  %i.s = sext i32 %.sroa.3.0.copyload to i64
  %i.t = getelementptr inbounds [96 x i8], ptr %i.n, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %21, ptr noundef nonnull align 16 dereferenceable(96) %i.t, i64 96, i1 false), !tbaa.struct !192
  %i.u = call fastcc noundef zeroext i1 @_ZL18findSeparatingAxisRK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_RK20b3AlignedObjectArrayIS2_ESB_RKS8_I9b3GpuFaceERKS8_IiESB_SB_SF_SI_RS2_(ptr noundef nonnull align 16 dereferenceable(96) %20, ptr noundef nonnull align 16 dereferenceable(96) %21, ptr noundef nonnull align 16 dereferenceable(16) %16, ptr noundef nonnull align 16 dereferenceable(16) %17, ptr noundef nonnull align 16 dereferenceable(16) %18, ptr noundef nonnull align 16 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(25) %8, ptr noundef nonnull align 8 dereferenceable(25) %9, ptr noundef nonnull align 8 dereferenceable(25) %11, ptr noundef nonnull align 8 dereferenceable(25) %8, ptr noundef nonnull align 8 dereferenceable(25) %9, ptr noundef nonnull align 8 dereferenceable(25) %11, ptr noundef nonnull align 16 dereferenceable(16) %22)
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = call noundef i32 @_Z18clipHullHullSingleiiRK9b3Vector3RK12b3QuaternionS1_S4_iiPK20b3AlignedObjectArrayI15b3RigidBodyDataEPS5_I10b3Contact4ERiRKS5_I22b3ConvexPolyhedronDataESH_RKS5_IS_ESK_RKS5_I9b3GpuFaceERKS5_IiESK_SK_SO_SR_RKS5_I12b3CollidableESV_S1_i(i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 16 dereferenceable(16) %16, ptr noundef nonnull align 16 dereferenceable(16) %17, ptr noundef nonnull align 16 dereferenceable(16) %18, ptr noundef nonnull align 16 dereferenceable(16) %19, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %12, ptr noundef nonnull align 4 dereferenceable(4) %13, ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef nonnull align 8 dereferenceable(25) %8, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(25) %11, ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef nonnull align 8 dereferenceable(25) %8, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(25) %11, ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 16 dereferenceable(16) %22, i32 noundef %14)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.v, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15GpuSatCollision33computeConvexConvexContactsGPUSATEP13b3OpenCLArrayI6b3Int4EiPKS0_I15b3RigidBodyDataEPS0_I10b3Contact4ERiPKS9_iiRKS0_I22b3ConvexPolyhedronDataERKS0_I9b3Vector3ESL_RKS0_I9b3GpuFaceERKS0_IiERKS0_I12b3CollidableERKS0_I15b3GpuChildShapeERKS0_I6b3AabbES14_RSJ_RS2_S15_S15_S15_R20b3AlignedObjectArrayIP14b3OptimizedBvhEPS0_I18b3QuantizedBvhNodeEPS0_I16b3BvhSubtreeInfoEPS0_I9b3BvhInfoEiiS16_SB_(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr nofree noundef readnone captures(none) %6, i32 noundef %7, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(50) %9, ptr noundef nonnull align 8 dereferenceable(50) %10, ptr noundef nonnull align 8 dereferenceable(50) %11, ptr noundef nonnull align 8 dereferenceable(50) %12, ptr noundef nonnull align 8 dereferenceable(50) %13, ptr noundef nonnull align 8 dereferenceable(50) %14, ptr noundef nonnull align 8 dereferenceable(50) %15, ptr noundef nonnull align 8 dereferenceable(50) %16, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(50) %17, ptr noundef nonnull align 8 dereferenceable(50) %18, ptr noundef nonnull align 8 dereferenceable(50) %19, ptr noundef nonnull align 8 dereferenceable(50) %20, ptr noundef nonnull align 8 dereferenceable(50) %21, ptr noundef nonnull align 8 dereferenceable(50) %22, ptr nofree noundef nonnull readnone align 1 captures(none) %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, i32 noundef %27, i32 noundef %28, ptr noundef nonnull align 8 dereferenceable(50) %29, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(4) %30) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [3 x i64], align 16               ; 6 uses
  %i.c = alloca [3 x i64], align 16               ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [3 x i64], align 16               ; 6 uses
  %i.f = alloca [3 x i64], align 16               ; 6 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca [3 x i64], align 16               ; 6 uses
  %i.i = alloca [3 x i64], align 16               ; 6 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca [3 x i64], align 16               ; 6 uses
  %i.l = alloca [3 x i64], align 16               ; 6 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca [3 x i64], align 16               ; 6 uses
  %i.o = alloca [3 x i64], align 16               ; 6 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca [3 x i64], align 16               ; 6 uses
  %i.r = alloca [3 x i64], align 16               ; 6 uses
  %31 = alloca %struct.b3KernelArgData, align 16  ; 7 uses
  %32 = alloca %struct.b3KernelArgData, align 16  ; 7 uses
  %i.s = alloca [3 x i64], align 16               ; 6 uses
  %i.t = alloca [3 x i64], align 16               ; 6 uses
  %33 = alloca %struct.b3KernelArgData, align 16  ; 7 uses
  %34 = alloca %struct.b3KernelArgData, align 16  ; 7 uses
  %i.u = alloca [3 x i64], align 16               ; 6 uses
  %i.v = alloca [3 x i64], align 16               ; 6 uses
  %35 = alloca %struct.b3KernelArgData, align 16  ; 7 uses
  %36 = alloca %struct.b3KernelArgData, align 16  ; 7 uses
  %i.w = alloca i32, align 4                      ; 4 uses
  %i.x = alloca [3 x i64], align 16               ; 6 uses
  %i.y = alloca [3 x i64], align 16               ; 6 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %i.aa = alloca [3 x i64], align 16              ; 6 uses
  %i.ab = alloca [3 x i64], align 16              ; 6 uses
  %i.ac = alloca i32, align 4                     ; 4 uses
  %i.ad = alloca [3 x i64], align 16              ; 6 uses
  %i.ae = alloca [3 x i64], align 16              ; 6 uses
  %i.af = alloca i32, align 4                     ; 4 uses
  %i.ag = alloca [3 x i64], align 16              ; 6 uses
  %i.ah = alloca [3 x i64], align 16              ; 6 uses
  %i.ai = alloca i32, align 4                     ; 4 uses
  %i.aj = alloca [3 x i64], align 16              ; 6 uses
  %i.ak = alloca [3 x i64], align 16              ; 6 uses
  %i.al = alloca [3 x i64], align 16              ; 6 uses
  %i.am = alloca [3 x i64], align 16              ; 6 uses
  %i.an = alloca [3 x i64], align 16              ; 6 uses
  %i.ao = alloca [3 x i64], align 16              ; 6 uses
  %i.ap = alloca [3 x i64], align 16              ; 6 uses
  %i.aq = alloca [3 x i64], align 16              ; 6 uses
  %i.ar = alloca i32, align 4                     ; 4 uses
  %i.as = alloca [3 x i64], align 16              ; 6 uses
  %i.at = alloca [3 x i64], align 16              ; 6 uses
  %i.au = alloca i32, align 4                     ; 4 uses
  %i.av = alloca i32, align 4                     ; 4 uses
  %i.aw = alloca [3 x i64], align 16              ; 6 uses
  %i.ax = alloca [3 x i64], align 16              ; 6 uses
  %i.ay = alloca i32, align 4                     ; 38 uses
  %i.az = alloca i32, align 4                     ; 29 uses
  %i.ba = alloca i32, align 4                     ; 9 uses
  %i.bb = alloca i32, align 4                     ; 9 uses
  %37 = alloca [10 x %struct.b3BufferInfoCL], align 16 ; 24 uses
  %38 = alloca %class.b3LauncherCL, align 8       ; 26 uses
  %i.bc = alloca i32, align 4                     ; 5 uses
  %i.bd = alloca i32, align 4                     ; 5 uses
  %i.be = alloca i32, align 4                     ; 20 uses
  %i.bf = alloca i32, align 4                     ; 44 uses
  %39 = alloca [9 x %struct.b3BufferInfoCL], align 16 ; 22 uses
  %40 = alloca %class.b3LauncherCL, align 8       ; 26 uses
  %41 = alloca [12 x %struct.b3BufferInfoCL], align 16 ; 28 uses
  %42 = alloca %class.b3LauncherCL, align 8       ; 19 uses
  %i.bg = alloca i32, align 4                     ; 6 uses
  %43 = alloca [13 x %struct.b3BufferInfoCL], align 16 ; 30 uses
  %44 = alloca %class.b3LauncherCL, align 8       ; 26 uses
  %45 = alloca [9 x %struct.b3BufferInfoCL], align 16 ; 22 uses
  %46 = alloca %class.b3LauncherCL, align 8       ; 26 uses
  %i.bh = alloca i32, align 4                     ; 5 uses
  %47 = alloca [11 x %struct.b3BufferInfoCL], align 16 ; 26 uses
  %48 = alloca %class.b3LauncherCL, align 8       ; 19 uses
  %49 = alloca %class.b3AlignedObjectArray.44, align 8 ; 9 uses
  %50 = alloca %class.b3AlignedObjectArray.29, align 8 ; 9 uses
  %51 = alloca %class.b3AlignedObjectArray.23, align 8 ; 9 uses
  %52 = alloca %class.b3AlignedObjectArray.64, align 8 ; 9 uses
  %53 = alloca %class.b3AlignedObjectArray.25, align 8 ; 9 uses
  %54 = alloca %class.b3AlignedObjectArray, align 8 ; 9 uses
  %55 = alloca %class.b3AlignedObjectArray.21, align 8 ; 9 uses
  %56 = alloca %class.b3AlignedObjectArray, align 8 ; 9 uses
  %57 = alloca %class.b3AlignedObjectArray, align 8 ; 9 uses
  %58 = alloca %class.b3AlignedObjectArray.19, align 8 ; 9 uses
  %59 = alloca %class.b3AlignedObjectArray.21, align 8 ; 9 uses
  %60 = alloca %class.b3AlignedObjectArray.27, align 8 ; 10 uses
  %.sroa.02530 = alloca %struct.b3Contact4Data, align 16 ; 9 uses
  %i.bi = alloca float, align 4                   ; 12 uses
  %61 = alloca %class.b3Vector3, align 16         ; 14 uses
  %62 = alloca %class.b3Vector3, align 16         ; 14 uses
  %63 = alloca %class.b3Quaternion, align 16      ; 15 uses
  %64 = alloca %class.b3Quaternion, align 16      ; 15 uses
  %65 = alloca %class.b3Vector3, align 16         ; 8 uses
  %66 = alloca %class.b3Vector3, align 16         ; 7 uses
  %67 = alloca %class.b3Vector3, align 16         ; 10 uses
  %i.bj = alloca float, align 4                   ; 5 uses
  %68 = alloca %class.b3Vector3, align 16         ; 6 uses
  %69 = alloca %class.b3Vector3, align 16         ; 6 uses
  %i.bk = alloca float, align 4                   ; 8 uses
  %70 = alloca %class.b3Vector3, align 16         ; 8 uses
  %71 = alloca %class.b3Vector3, align 16         ; 7 uses
  %72 = alloca [15 x %struct.b3BufferInfoCL], align 16 ; 34 uses
  %73 = alloca %class.b3LauncherCL, align 8       ; 26 uses
  %74 = alloca [12 x %struct.b3BufferInfoCL], align 16 ; 28 uses
  %75 = alloca %class.b3LauncherCL, align 8       ; 26 uses
  %76 = alloca [12 x %struct.b3BufferInfoCL], align 16 ; 28 uses
  %77 = alloca %class.b3LauncherCL, align 8       ; 19 uses
  %i.bl = alloca i32, align 4                     ; 20 uses
  %78 = alloca %class.b3LauncherCL, align 8       ; 34 uses
  %79 = alloca %class.b3AlignedObjectArray.44, align 8 ; 9 uses
  %80 = alloca %class.b3AlignedObjectArray.29, align 8 ; 9 uses
  %81 = alloca %class.b3AlignedObjectArray.23, align 8 ; 9 uses
  %82 = alloca %class.b3AlignedObjectArray.42, align 8 ; 9 uses
  %83 = alloca %class.b3AlignedObjectArray.44, align 8 ; 9 uses
  %84 = alloca %class.b3AlignedObjectArray.40, align 8 ; 9 uses
  %85 = alloca %class.b3AlignedObjectArray.33, align 8 ; 9 uses
  %86 = alloca %class.b3AlignedObjectArray.31, align 8 ; 9 uses
  %i.bm = alloca i32, align 4                     ; 8 uses
  %87 = alloca [17 x %struct.b3BufferInfoCL], align 16 ; 38 uses
  %88 = alloca %class.b3LauncherCL, align 8       ; 16 uses
  %89 = alloca [17 x %struct.b3BufferInfoCL], align 16 ; 38 uses
  %90 = alloca %class.b3LauncherCL, align 8       ; 16 uses
  %91 = alloca [16 x %struct.b3BufferInfoCL], align 16 ; 36 uses
  %92 = alloca %class.b3LauncherCL, align 8       ; 16 uses
end_hunk_0
