Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3ConvexHullContact?download=true
inline.NumInlined: 2655
inline.NumDeleted: 497
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_Z15extractManifoldPK9b3Vector3iRS0_P6b3Int4:bb.a
  %i.be = fdiv <2 x float> splat (float 1.000000e+00), %i.bd ; 5 uses
  %i.bf = extractelement <2 x float> %i.be, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.aj, %i.be
  %i.bg = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bh = fmul float %i.ak, %i.bf                 ; 2 uses
  %foldExtExtBinop207 = fmul <2 x float> %i.aq, %i.be
  %i.bi = extractelement <2 x float> %foldExtExtBinop207, i64 0 ; 2 uses
  %i.bj = extractelement <2 x float> %i.be, i64 1
  %i.bk = fmul float %i.at, %i.bj                 ; 2 uses
  %i.bl = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bm = fmul <2 x float> %i.aw, %i.bl           ; 3 uses
  %i.bn = fneg float %i.bg
  %i.bo = fneg float %i.bh
  %i.bp = fneg float %i.bi
  %i.bq = fneg float %i.bk
  %i.br = fneg <2 x float> %i.bm                  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.bv = extractelement <2 x float> %i.br, i64 0
  %i.bw = extractelement <2 x float> %i.br, i64 1
  %i.bx = extractelement <2 x float> %i.bm, i64 0
  %i.by = extractelement <2 x float> %i.bm, i64 1
  %i.bz = extractelement <2 x float> %i.s, i64 0
  %i.ca = extractelement <2 x float> %i.s, i64 1
  %i.cb = extractelement <2 x float> %i.v, i64 0
  br label %bb.f

bb.d:                                             ; preds = %bb.d, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.sroa.15.0181 = phi <2 x float> [ zeroinitializer, %.new ], [ %.sroa.15.8.vec.insert177.1, %bb.d ] ; 2 uses
  %.sroa.0152.0180 = phi <2 x float> [ zeroinitializer, %.new ], [ %i.cl, %bb.d ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.d ]
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.cd = load <2 x float>, ptr %i.cc, align 16, !tbaa !18
  %i.ce = fadd <2 x float> %.sroa.0152.0180, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !18
  %.sroa.15.8.vec.extract175 = extractelement <2 x float> %.sroa.15.0181, i64 0
  %i.ch = fadd float %.sroa.15.8.vec.extract175, %i.cg
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load <2 x float>, ptr %i.cj, align 16, !tbaa !18
  %i.cl = fadd <2 x float> %i.ce, %i.ck           ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !18
  %i.co = fadd float %i.ch, %i.cn                 ; 2 uses
  %.sroa.15.8.vec.insert177.1 = insertelement <2 x float> %.sroa.15.0181, float %i.co, i64 0 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.d, !llvm.loop !168

bb.e:                                             ; preds = %bb.n
  %i.cp = load i32, ptr %3, align 16, !tbaa !18
  %.not = icmp eq i32 %i.cp, %.1
  br i1 %.not, label %bb.s, label %bb.o

bb.f:                                             ; preds = %bb.c, %bb.n
  %indvars.iv193 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next194, %bb.n ] ; 3 uses
  %.sroa.0.0188 = phi float [ f0x00800000, %bb.c ], [ %.sroa.0.1, %bb.n ] ; 2 uses
  %.sroa.5.0187 = phi float [ f0x00800000, %bb.c ], [ %.sroa.5.1, %bb.n ] ; 2 uses
  %.sroa.8.0186 = phi float [ f0x00800000, %bb.c ], [ %.sroa.8.1, %bb.n ] ; 2 uses
  %.sroa.11.0185 = phi float [ f0x00800000, %bb.c ], [ %.sroa.11.1, %bb.n ] ; 2 uses
  %.050184 = phi i32 [ -1, %bb.c ], [ %.1, %bb.n ]
  %.051183 = phi float [ f0x7F7FFFFF, %bb.c ], [ %.152, %bb.n ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv193 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !18 ; 2 uses
  %i.ct = fcmp olt float %i.cs, %.051183          ; 2 uses
  %.152 = select i1 %i.ct, float %i.cs, float %.051183
  %i.cu = trunc nuw nsw i64 %indvars.iv193 to i32 ; 5 uses
  %.1 = select i1 %i.ct, i32 %i.cu, i32 %.050184  ; 6 uses
  %i.cv = load float, ptr %i.cq, align 16, !tbaa !18
  %i.cw = fsub float %i.cv, %i.ca                 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !18
  %i.cz = fsub float %i.cy, %i.cb                 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.db = load float, ptr %i.da, align 8, !tbaa !18
  %i.dc = fsub float %i.db, %i.bz                 ; 4 uses
  %i.dd = fmul float %i.bh, %i.cz
  %i.de = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.cw, float %i.dd)
  %i.df = tail call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.dc, float %i.de) ; 2 uses
  %i.dg = fcmp olt float %i.df, %.sroa.0.0188
  br i1 %i.dg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.cu, ptr %3, align 16, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.1 = phi float [ %i.df, %bb.g ], [ %.sroa.0.0188, %bb.f ]
  %i.dh = fmul float %i.cz, %i.bo
  %i.di = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.cw, float %i.dh)
  %i.dj = tail call noundef float @llvm.fmuladd.f32(float %i.bp, float %i.dc, float %i.di) ; 2 uses
  %i.dk = fcmp olt float %i.dj, %.sroa.5.0187
  br i1 %i.dk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.cu, ptr %i.bs, align 4, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.5.1 = phi float [ %i.dj, %bb.i ], [ %.sroa.5.0187, %bb.h ]
  %i.dl = fmul float %i.bx, %i.cz
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.cw, float %i.dl)
  %i.dn = tail call noundef float @llvm.fmuladd.f32(float %i.by, float %i.dc, float %i.dm) ; 2 uses
  %i.do = fcmp olt float %i.dn, %.sroa.8.0186
  br i1 %i.do, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.cu, ptr %i.bt, align 8, !tbaa !18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.8.1 = phi float [ %i.dn, %bb.k ], [ %.sroa.8.0186, %bb.j ]
  %i.dp = fmul float %i.cz, %i.bv
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.cw, float %i.dp)
  %i.dr = tail call noundef float @llvm.fmuladd.f32(float %i.bw, float %i.dc, float %i.dq) ; 2 uses
  %i.ds = fcmp olt float %i.dr, %.sroa.11.0185
  br i1 %i.ds, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.cu, ptr %i.bu, align 4, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.11.1 = phi float [ %i.dr, %bb.m ], [ %.sroa.11.0185, %bb.l ]
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %exitcond197.not = icmp eq i64 %indvars.iv.next194, %wide.trip.count
  br i1 %exitcond197.not, label %bb.e, label %bb.f, !llvm.loop !169

bb.o:                                             ; preds = %bb.e
  %i.dt = load i32, ptr %i.bs, align 4, !tbaa !18
  %.not61 = icmp eq i32 %i.dt, %.1
  br i1 %.not61, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.du = load i32, ptr %i.bt, align 8, !tbaa !18
  %.not62 = icmp eq i32 %i.du, %.1
  br i1 %.not62, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = load i32, ptr %i.bu, align 4, !tbaa !18
  %.not63 = icmp eq i32 %i.dv, %.1
  br i1 %.not63, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %.1, ptr %3, align 16, !tbaa !18
  br label %bb.s

bb.s:                                             ; preds = %bb.e, %bb.o, %bb.p, %bb.q, %bb.r, %bb.b, %bb.a
  %.054 = phi i32 [ %1, %bb.b ], [ 0, %bb.a ], [ 4, %bb.r ], [ 4, %bb.q ], [ 4, %bb.p ], [ 4, %bb.o ], [ 4, %bb.e ]
  ret i32 %.054
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147483648, 2147483647) i32 @_Z18clipHullHullSingleiiRK9b3Vector3RK12b3QuaternionS1_S4_iiPK20b3AlignedObjectArrayI15b3RigidBodyDataEPS5_I10b3Contact4ERiRKS5_I22b3ConvexPolyhedronDataESH_RKS5_IS_ESK_RKS5_I9b3GpuFaceERKS5_IiESK_SK_SO_SR_RKS5_I12b3CollidableESV_S1_i(i32 noundef %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr noundef %9, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %13, ptr nofree nonnull readnone align 8 captures(none) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %15, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %16, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %17, ptr nofree nonnull readnone align 8 captures(none) %18, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %19, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %20, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %21, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %22, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %23, i32 noundef %24) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %25 = alloca %class.b3Quaternion, align 16      ; 5 uses
  %26 = alloca %class.b3Quaternion, align 16      ; 5 uses
  %27 = alloca [1024 x %class.b3Vector3], align 16 ; 9 uses
  %28 = alloca [1024 x %class.b3Vector3], align 16 ; 4 uses
  %29 = alloca [1024 x %class.b3Vector3], align 16 ; 4 uses
  %30 = alloca %class.b3Vector3, align 16         ; 8 uses
  %31 = alloca %class.b3Transform, align 16       ; 18 uses
  %32 = alloca %class.b3Transform, align 16       ; 18 uses
  %33 = alloca %class.b3Quaternion, align 16      ; 6 uses
  %34 = alloca %class.b3Quaternion, align 16      ; 6 uses
  %35 = alloca %struct.b3Int4, align 16           ; 9 uses
  %36 = alloca %struct.b3Contact4, align 16       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170
  %i.c = sext i32 %6 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.424.0.copyload = load i32, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.f = sext i32 %.sroa.424.0.copyload to i64
  %i.g = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !170
  %i.i = sext i32 %7 to i64
  %i.j = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.i
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.l = sext i32 %.sroa.4.0.copyload to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  %i.m = load <4 x float>, ptr %23, align 16      ; 2 uses
  %i.n = extractelement <4 x float> %i.m, i64 2
  %.sroa.0.4.vec.insert.i = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.n, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %30, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %30, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  %37 = load <4 x float>, ptr %2, align 16        ; 2 uses
  %38 = extractelement <4 x float> %37, i64 2
  %.sroa.0.4.vec.insert.i87 = shufflevector <4 x float> %37, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i88 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %38, i64 0
  %i.p = getelementptr inbounds nuw i8, ptr %31, i64 48 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i87, ptr %i.p, align 16
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i88, ptr %.sroa.4112.0..sroa_idx, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %31, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %31, i64 12
  store float 0.000000e+00, ptr %i.v, align 4, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %31, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %31, i64 28
  store float 0.000000e+00, ptr %i.z, align 4, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %31, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %31, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %31, i64 44
  store float 0.000000e+00, ptr %i.ad, align 4, !tbaa !18
  %39 = load <4 x float>, ptr %4, align 16        ; 2 uses
  %40 = extractelement <4 x float> %39, i64 2
  %.sroa.0.4.vec.insert.i92 = shufflevector <4 x float> %39, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i93 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %40, i64 0
  %i.ae = getelementptr inbounds nuw i8, ptr %32, i64 48 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i92, ptr %i.ae, align 16
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %32, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i93, ptr %.sroa.4106.0..sroa_idx, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ai = load <2 x float>, ptr %3, align 16, !tbaa !28 ; 6 uses
  %i.aj = load float, ptr %i.q, align 4, !tbaa !28 ; 3 uses
  %i.ak = load <2 x float>, ptr %i.r, align 8, !tbaa !28 ; 4 uses
  %i.al = load float, ptr %i.s, align 4, !tbaa !28 ; 3 uses
  %i.am = load <2 x float>, ptr %5, align 16, !tbaa !28 ; 3 uses
  %i.an = load float, ptr %i.af, align 4, !tbaa !28 ; 3 uses
  %i.ao = load <2 x float>, ptr %i.ag, align 8, !tbaa !28 ; 3 uses
  %i.ap = load float, ptr %i.ah, align 4, !tbaa !28 ; 3 uses
  %i.aq = shufflevector <2 x float> %i.ai, <2 x float> %i.am, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ar = fmul <2 x float> %i.aq, %i.aq
  %i.as = shufflevector <2 x float> %i.ai, <2 x float> %i.am, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.as, <2 x float> %i.ar)
  %i.au = shufflevector <2 x float> %i.ak, <2 x float> %i.ao, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.au, <2 x float> %i.at)
  %i.aw = shufflevector <2 x float> %i.ak, <2 x float> %i.ao, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.aw, <2 x float> %i.av)
  %i.ay = fdiv <2 x float> splat (float 2.000000e+00), %i.ax ; 4 uses
  %i.az = extractelement <2 x float> %i.ay, i64 0
  %i.ba = extractelement <2 x float> %i.ai, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.ai, %i.ay ; 2 uses
  %i.bb = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bc = fmul float %i.aj, %i.az                 ; 3 uses
  %foldExtExtBinop121 = fmul <2 x float> %i.ak, %i.ay ; 3 uses
  %i.bd = extractelement <2 x float> %foldExtExtBinop121, i64 0 ; 2 uses
  %i.be = fmul float %i.al, %i.bb                 ; 2 uses
  %i.bf = fmul float %i.al, %i.bc                 ; 2 uses
  %i.bg = fmul float %i.al, %i.bd                 ; 2 uses
  %foldExtExtBinop123 = fmul <2 x float> %i.ai, %foldExtExtBinop ; 2 uses
  %i.bh = extractelement <2 x float> %foldExtExtBinop123, i64 0
  %i.bi = fmul float %i.ba, %i.bc                 ; 2 uses
  %foldExtExtBinop125 = fmul <2 x float> %i.ai, %foldExtExtBinop121
  %i.bj = extractelement <2 x float> %foldExtExtBinop125, i64 0 ; 2 uses
  %i.bk = fmul float %i.aj, %i.bc                 ; 2 uses
  %i.bl = fmul float %i.aj, %i.bd                 ; 2 uses
  %foldExtExtBinop127 = fmul <2 x float> %i.ak, %foldExtExtBinop121 ; 2 uses
  %i.bm = extractelement <2 x float> %foldExtExtBinop127, i64 0
  %i.bn = fadd float %i.bk, %i.bm
  %i.bo = fsub float 1.000000e+00, %i.bn
  %i.bp = fsub float %i.bi, %i.bg
  %i.bq = fadd float %i.bj, %i.bf
  %i.br = fadd float %i.bi, %i.bg
  %foldExtExtBinop129 = fadd <2 x float> %foldExtExtBinop123, %foldExtExtBinop127
  %i.bs = extractelement <2 x float> %foldExtExtBinop129, i64 0
  %i.bt = fsub float 1.000000e+00, %i.bs
  %i.bu = fsub float %i.bl, %i.be
  %i.bv = fsub float %i.bj, %i.bf
  %i.bw = fadd float %i.bl, %i.be
  %i.bx = fadd float %i.bh, %i.bk
  %i.by = fsub float 1.000000e+00, %i.bx
  store float %i.bo, ptr %31, align 16, !tbaa !18
  store float %i.bp, ptr %i.t, align 4, !tbaa !18
  store float %i.bq, ptr %i.u, align 8, !tbaa !18
  store float %i.br, ptr %i.w, align 16, !tbaa !18
  store float %i.bt, ptr %i.x, align 4, !tbaa !18
  store float %i.bu, ptr %i.y, align 8, !tbaa !18
  store float %i.bv, ptr %i.aa, align 16, !tbaa !18
  store float %i.bw, ptr %i.ab, align 4, !tbaa !18
  store float %i.by, ptr %i.ac, align 8, !tbaa !18
  %i.bz = extractelement <2 x float> %i.ay, i64 1 ; 3 uses
  %i.ca = extractelement <2 x float> %i.am, i64 0 ; 4 uses
  %i.cb = fmul float %i.ca, %i.bz                 ; 2 uses
  %i.cc = fmul float %i.an, %i.bz                 ; 3 uses
  %i.cd = extractelement <2 x float> %i.ao, i64 0 ; 2 uses
  %i.ce = fmul float %i.cd, %i.bz                 ; 4 uses
  %i.cf = fmul float %i.ap, %i.cb                 ; 2 uses
  %i.cg = fmul float %i.ap, %i.cc                 ; 2 uses
  %i.ch = fmul float %i.ap, %i.ce                 ; 2 uses
  %i.ci = fmul float %i.ca, %i.cb                 ; 2 uses
  %i.cj = fmul float %i.ca, %i.cc                 ; 2 uses
  %i.ck = fmul float %i.ca, %i.ce                 ; 2 uses
  %i.cl = fmul float %i.an, %i.cc                 ; 2 uses
  %i.cm = fmul float %i.an, %i.ce                 ; 2 uses
  %i.cn = fmul float %i.cd, %i.ce                 ; 2 uses
  %i.co = fadd float %i.cl, %i.cn
  %i.cp = fsub float 1.000000e+00, %i.co
  %i.cq = fsub float %i.cj, %i.ch
  %i.cr = fadd float %i.ck, %i.cg
  %i.cs = fadd float %i.cj, %i.ch
  %i.ct = fadd float %i.ci, %i.cn
  %i.cu = fsub float 1.000000e+00, %i.ct
  %i.cv = fsub float %i.cm, %i.cf
  %i.cw = fsub float %i.ck, %i.cg
  %i.cx = fadd float %i.cm, %i.cf
  %i.cy = fadd float %i.ci, %i.cl
  %i.cz = fsub float 1.000000e+00, %i.cy
  store float %i.cp, ptr %32, align 16, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %32, i64 4
  store float %i.cq, ptr %i.da, align 4, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %32, i64 8
  store float %i.cr, ptr %i.db, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %32, i64 12
  store float 0.000000e+00, ptr %i.dc, align 4, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %32, i64 16
  store float %i.cs, ptr %i.dd, align 16, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %32, i64 20
  store float %i.cu, ptr %i.de, align 4, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %32, i64 24
  store float %i.cv, ptr %i.df, align 8, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %32, i64 28
  store float 0.000000e+00, ptr %i.dg, align 4, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %32, i64 32
  store float %i.cw, ptr %i.dh, align 16, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %32, i64 36
  store float %i.cx, ptr %i.di, align 4, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %32, i64 40
  store float %i.cz, ptr %i.dj, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %32, i64 44
  store float 0.000000e+00, ptr %i.dk, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @_ZNK11b3Matrix3x311getRotationER12b3Quaternion(ptr noundef nonnull align 16 dereferenceable(64) %31, ptr noundef nonnull align 16 dereferenceable(16) %26)
  %.fca.0.load.i = load <2 x float>, ptr %26, align 16
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  store <2 x float> %.fca.0.load.i, ptr %33, align 16
  %i.dl = getelementptr inbounds nuw i8, ptr %33, i64 8
  store <2 x float> %.fca.1.load.i, ptr %i.dl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @_ZNK11b3Matrix3x311getRotationER12b3Quaternion(ptr noundef nonnull align 16 dereferenceable(64) %32, ptr noundef nonnull align 16 dereferenceable(16) %25)
  %.fca.0.load.i98 = load <2 x float>, ptr %25, align 16
  %.fca.1.gep.i100 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.fca.1.load.i101 = load <2 x float>, ptr %.fca.1.gep.i100, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  store <2 x float> %.fca.0.load.i98, ptr %34, align 16
  %i.dm = getelementptr inbounds nuw i8, ptr %34, i64 8
  store <2 x float> %.fca.1.load.i101, ptr %i.dm, align 8
  %i.dn = load ptr, ptr %i.e, align 8, !tbaa !174
  %i.do = getelementptr inbounds [96 x i8], ptr %i.dn, i64 %i.f
  %i.dp = load ptr, ptr %i.k, align 8, !tbaa !174
  %i.dq = getelementptr inbounds [96 x i8], ptr %i.dp, i64 %i.l
  %i.dr = call fastcc noundef i32 @_ZL19clipHullAgainstHullRK9b3Vector3RK22b3ConvexPolyhedronDataS4_S1_RK12b3QuaternionS1_S7_PS_S8_iffRK20b3AlignedObjectArrayIS_ERKS9_I9b3GpuFaceERKS9_IiESC_SG_SJ_S8_i(ptr noundef nonnull align 16 dereferenceable(16) %30, ptr noundef nonnull align 16 dereferenceable(96) %i.do, ptr noundef nonnull align 16 dereferenceable(96) %i.dq, ptr noundef nonnull align 16 dereferenceable(16) %i.p, ptr noundef nonnull align 16 dereferenceable(16) %33, ptr noundef nonnull align 16 dereferenceable(16) %i.ae, ptr noundef nonnull align 16 dereferenceable(16) %34, ptr noundef %28, ptr noundef %29, i32 noundef 1024, float noundef -1.000000e+00, ptr noundef nonnull align 8 dereferenceable(25) %13, ptr noundef nonnull align 8 dereferenceable(25) %15, ptr noundef nonnull align 8 dereferenceable(25) %16, ptr noundef nonnull align 8 dereferenceable(25) %17, ptr noundef nonnull align 8 dereferenceable(25) %19, ptr noundef nonnull align 8 dereferenceable(25) %20, ptr noundef %27, i32 noundef 1024) ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %bb.b, label %_ZN13b3ProfileZoneD2Ev.exit

bb.b:                                             ; preds = %bb.a
  call void @b3EnterProfileZone(ptr noundef nonnull @.str.33)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %35, align 16, !tbaa !18
  %i.dt = call noundef i32 @_Z15extractManifoldPK9b3Vector3iRS0_P6b3Int4(ptr noundef nonnull %27, i32 noundef %i.dr, ptr noundef nonnull align 16 dereferenceable(16) %30, ptr noundef nonnull %35) ; 5 uses
  %i.du = load i32, ptr %10, align 4, !tbaa !19   ; 2 uses
  %i.dv = icmp slt i32 %i.du, %24
  br i1 %i.dv, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %36, i8 0, i64 112, i1 false)
  %i.dw = invoke noundef nonnull align 16 dereferenceable(112) ptr @_ZN20b3AlignedObjectArrayI10b3Contact4E6expandERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %9, ptr noundef nonnull align 16 dereferenceable(112) %36)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  %i.dx = load i32, ptr %10, align 4, !tbaa !19
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !178
  %i.ea = sext i32 %i.dx to i64
  %i.eb = getelementptr inbounds [112 x i8], ptr %i.dz, i64 %i.ea ; 11 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 84
  store i32 0, ptr %i.ec, align 4, !tbaa !56
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !182 ; 2 uses
  %i.ef = sext i32 %0 to i64
  %i.eg = getelementptr inbounds [80 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 68
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !15
  %i.ej = fcmp oeq float %i.ei, 0.000000e+00
  %i.ek = sub nsw i32 0, %0
  %i.el = select i1 %i.ej, i32 %i.ek, i32 %0
  %i.em = getelementptr inbounds nuw i8, ptr %i.eb, i64 88
  store i32 %i.el, ptr %i.em, align 8, !tbaa !57
  %i.en = sext i32 %1 to i64
  %i.eo = getelementptr inbounds [80 x i8], ptr %i.ee, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 68
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !15
  %i.er = fcmp oeq float %i.eq, 0.000000e+00
  %i.es = sub nsw i32 0, %1
  %i.et = select i1 %i.er, i32 %i.es, i32 %1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eb, i64 92
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !58
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eb, i64 82
  store i16 -19662, ptr %i.ev, align 2, !tbaa !55
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eb, i64 80
  store i16 0, ptr %i.ew, align 16, !tbaa !52
  %i.ex = icmp sgt i32 %i.dt, 0
  br i1 %i.ex, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eb, i64 64 ; 4 uses
  %i.ez = load i32, ptr %35, align 16, !tbaa !18
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [16 x i8], ptr %27, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.eb, ptr noundef nonnull align 16 dereferenceable(16) %i.fb, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ey, ptr noundef nonnull align 16 dereferenceable(16) %30, i64 16, i1 false)
  %exitcond.not = icmp eq i32 %i.dt, 1
end_hunk_0
begin_hunk_1_@_Z26processCompoundPairsKernelPK6b3Int4PK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3Vector3ESF_RKSB_I9b3GpuFaceERKSB_IiEP6b3AabbPK15b3GpuChildShapeRSD_RSK_ii:bb.a
  %i.gq = icmp ne i32 %i.gn, 3
  %i.gr = icmp ne i32 %i.gp, 3
  %or.cond = select i1 %i.gq, i1 true, i1 %i.gr
  br i1 %or.cond, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !18
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float f0x7F7FFFFF, ptr %i.a, align 4, !tbaa !28
  %i.gw = getelementptr inbounds nuw i8, ptr %15, i64 12
  store float 0.000000e+00, ptr %i.gw, align 4, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %17, i64 12
  store float 0.000000e+00, ptr %i.gx, align 4, !tbaa !18
  %i.gy = sext i32 %i.gv to i64
  %i.gz = getelementptr inbounds [96 x i8], ptr %3, i64 %i.gy ; 5 uses
  %.sroa.5144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %.sroa.5144.0.copyload = load float, ptr %.sroa.5144.0..sroa_idx, align 8
  %i.ha = load <4 x float>, ptr %15, align 16
  %i.hb = shufflevector <4 x float> %i.ha, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.hc = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.he = sext i32 %i.gt to i64
  %i.hf = getelementptr inbounds [96 x i8], ptr %3, i64 %i.he ; 5 uses
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %.sroa.5139.0.copyload = load float, ptr %.sroa.5139.0..sroa_idx, align 8 ; 2 uses
  %.sroa.32.48..sroa_idx.i125 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.32.48.copyload.i126 = load float, ptr %.sroa.32.48..sroa_idx.i125, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %16, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.hi = load <2 x float>, ptr %15, align 16
  %i.hj = insertelement <2 x float> poison, float %.sroa.5144.0.copyload, i64 0 ; 2 uses
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hl = load <2 x float>, ptr %17, align 16
  %i.hm = insertelement <2 x float> poison, float %.sroa.5139.0.copyload, i64 0
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ho = load <2 x float>, ptr %i.gz, align 16   ; 4 uses
  %i.hp = load <2 x float>, ptr %i.hf, align 16   ; 4 uses
  %i.hq = load <2 x float>, ptr %i.hc, align 8, !tbaa !18 ; 3 uses
  %i.hr = load float, ptr %i.hd, align 4, !tbaa !18
  %i.hs = load <2 x float>, ptr %14, align 16, !tbaa !18 ; 3 uses
  %i.ht = load <2 x float>, ptr %i.hg, align 8, !tbaa !18 ; 3 uses
  %i.hu = load float, ptr %i.hh, align 4, !tbaa !18
  %i.hv = load <2 x float>, ptr %16, align 16, !tbaa !18 ; 3 uses
  %i.hw = shufflevector <2 x float> %i.hs, <2 x float> %i.hv, <2 x i32> <i32 1, i32 3> ; 5 uses
  %i.hx = fmul <2 x float> %i.hw, %i.hw
  %i.hy = shufflevector <2 x float> %i.hs, <2 x float> %i.hv, <2 x i32> <i32 0, i32 2> ; 5 uses
  %i.hz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hy, <2 x float> %i.hy, <2 x float> %i.hx)
  %i.ia = shufflevector <2 x float> %i.hq, <2 x float> %i.ht, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ib = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ia, <2 x float> %i.ia, <2 x float> %i.hz)
  %i.ic = shufflevector <2 x float> %i.hq, <2 x float> %i.ht, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.id = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ic, <2 x float> %i.ic, <2 x float> %i.ib)
  %i.ie = fdiv <2 x float> splat (float 2.000000e+00), %i.id ; 3 uses
  %i.if = fmul <2 x float> %i.hw, %i.ie           ; 4 uses
  %foldExtExtBinop172 = fmul <2 x float> %i.hs, %i.if ; 2 uses
  %i.ig = extractelement <2 x float> %foldExtExtBinop172, i64 0
  %i.ih = fmul <2 x float> %i.ia, %i.ie           ; 5 uses
  %i.ii = extractelement <2 x float> %i.ih, i64 0
  %foldExtExtBinop174 = fmul <2 x float> %i.hq, %i.ih ; 2 uses
  %i.ij = fmul <2 x float> %i.hw, %i.if           ; 3 uses
  %foldExtExtBinop176 = fadd <2 x float> %i.ij, %foldExtExtBinop174
  %i.ik = extractelement <2 x float> %foldExtExtBinop176, i64 0
  %i.il = fsub float 1.000000e+00, %i.ik
  %i.im = fmul <2 x float> %i.hy, %i.ie           ; 2 uses
  %i.in = fmul <2 x float> %i.hy, %i.im           ; 3 uses
  %foldExtExtBinop178 = fadd <2 x float> %i.in, %foldExtExtBinop174
  %i.io = fmul float %i.hr, %i.ii                 ; 2 uses
  %i.ip = fadd float %i.ig, %i.io
  %i.iq = insertelement <2 x float> %foldExtExtBinop172, float 1.000000e+00, i64 1
  %i.ir = insertelement <2 x float> poison, float %i.io, i64 0
  %i.is = shufflevector <2 x float> %i.ir, <2 x float> %foldExtExtBinop178, <2 x i32> <i32 0, i32 2>
  %i.it = fsub <2 x float> %i.iq, %i.is
  %i.iu = fmul <2 x float> %i.ic, %i.im           ; 3 uses
  %i.iv = fmul <2 x float> %i.hw, %i.ih           ; 3 uses
  %foldExtExtBinop180 = fsub <2 x float> %i.iv, %i.iu
  %i.iw = fmul <2 x float> %i.ic, %i.if           ; 3 uses
  %i.ix = fmul <2 x float> %i.hy, %i.ih           ; 3 uses
  %foldExtExtBinop182 = fadd <2 x float> %i.ix, %i.iw
  %i.iy = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iz = fmul <2 x float> %i.iy, %i.it
  %i.ja = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jb = insertelement <2 x float> poison, float %i.il, i64 0
  %i.jc = insertelement <2 x float> %i.jb, float %i.ip, i64 1
  %i.jd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ja, <2 x float> %i.jc, <2 x float> %i.iz)
  %i.je = shufflevector <2 x float> %foldExtExtBinop182, <2 x float> %foldExtExtBinop180, <2 x i32> <i32 0, i32 2>
  %i.jf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hk, <2 x float> %i.je, <2 x float> %i.jd)
  %i.jg = fadd <2 x float> %i.hi, %i.jf
  %shift = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop184 = fmul <2 x float> %i.hv, %shift ; 2 uses
  %i.jh = extractelement <2 x float> %foldExtExtBinop184, i64 0
  %i.ji = extractelement <2 x float> %i.ih, i64 1 ; 2 uses
  %i.jj = extractelement <2 x float> %i.ht, i64 0
  %i.jk = fmul float %i.jj, %i.ji                 ; 2 uses
  %i.jl = extractelement <2 x float> %i.ij, i64 1
  %i.jm = fadd float %i.jl, %i.jk
  %i.jn = fsub float 1.000000e+00, %i.jm
  %i.jo = extractelement <2 x float> %i.in, i64 1
  %i.jp = fadd float %i.jo, %i.jk
  %i.jq = fmul float %i.hu, %i.ji                 ; 2 uses
  %i.jr = fadd float %i.jh, %i.jq
  %i.js = insertelement <2 x float> %foldExtExtBinop184, float 1.000000e+00, i64 1
  %i.jt = insertelement <2 x float> poison, float %i.jq, i64 0
  %i.ju = insertelement <2 x float> %i.jt, float %i.jp, i64 1
  %i.jv = fsub <2 x float> %i.js, %i.ju
  %foldExtExtBinop186 = fsub <2 x float> %i.iv, %i.iu
  %foldExtExtBinop188 = fadd <2 x float> %i.ix, %i.iw
  %i.jw = fsub <2 x float> %i.ix, %i.iw
  %i.jx = fadd <2 x float> %i.iv, %i.iu
  %i.jy = fadd <2 x float> %i.in, %i.ij
  %i.jz = fsub <2 x float> splat (float 1.000000e+00), %i.jy
  %i.ka = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kb = fmul <2 x float> %i.ka, %i.jv
  %i.kc = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kd = insertelement <2 x float> poison, float %i.jn, i64 0
  %i.ke = insertelement <2 x float> %i.kd, float %i.jr, i64 1
  %i.kf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kc, <2 x float> %i.ke, <2 x float> %i.kb)
  %i.kg = shufflevector <2 x float> %foldExtExtBinop188, <2 x float> %foldExtExtBinop186, <2 x i32> <i32 1, i32 3>
  %i.kh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hn, <2 x float> %i.kg, <2 x float> %i.kf)
  %i.ki = shufflevector <2 x float> %i.ho, <2 x float> %i.hp, <2 x i32> <i32 1, i32 3>
  %i.kj = fmul <2 x float> %i.ki, %i.jx
  %i.kk = shufflevector <2 x float> %i.ho, <2 x float> %i.hp, <2 x i32> <i32 0, i32 2>
  %i.kl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kk, <2 x float> %i.jw, <2 x float> %i.kj)
  %i.km = insertelement <2 x float> %i.hj, float %.sroa.5139.0.copyload, i64 1
  %i.kn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.km, <2 x float> %i.jz, <2 x float> %i.kl)
  %i.ko = fadd <2 x float> %i.hl, %i.kh
  %i.kp = insertelement <2 x float> %i.hb, float %.sroa.32.48.copyload.i126, i64 1
  %i.kq = fadd <2 x float> %i.kp, %i.kn           ; 2 uses
  %i.kr = fsub <2 x float> %i.jg, %i.ko
  %shift190 = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop191 = fsub <2 x float> %i.kq, %shift190
  %.sroa.3.12.vec.insert.i.i134199 = insertelement <2 x float> %foldExtExtBinop191, float 0.000000e+00, i64 1
  store <2 x float> %i.kr, ptr %18, align 16
  %i.ks = getelementptr inbounds nuw i8, ptr %18, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i134199, ptr %i.ks, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %19, align 16
  %i.kt = getelementptr inbounds nuw i8, ptr %19, i64 8
  store <2 x float> zeroinitializer, ptr %i.kt, align 8
  %i.ku = call fastcc noundef zeroext i1 @_ZL18findSeparatingAxisRK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_RK20b3AlignedObjectArrayIS2_ESB_RKS8_I9b3GpuFaceERKS8_IiESB_SB_SF_SI_RS2_(ptr noundef nonnull align 16 dereferenceable(96) %i.gz, ptr noundef nonnull align 16 dereferenceable(96) %i.hf, ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %17, ptr noundef nonnull align 16 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 16 dereferenceable(16) %19)
  br i1 %i.ku, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.kv = call fastcc noundef zeroext i1 @_ZL18findSeparatingAxisRK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_RK20b3AlignedObjectArrayIS2_ESB_RKS8_I9b3GpuFaceERKS8_IiESB_SB_SF_SI_RS2_(ptr noundef nonnull align 16 dereferenceable(96) %i.hf, ptr noundef nonnull align 16 dereferenceable(96) %i.gz, ptr noundef nonnull align 16 dereferenceable(16) %17, ptr noundef nonnull align 16 dereferenceable(16) %16, ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 16 dereferenceable(16) %19)
  br i1 %i.kv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.kw = call noundef zeroext i1 @_Z26findSeparatingAxisEdgeEdgePK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_RK20b3AlignedObjectArrayIS2_ESB_RKS8_I9b3GpuFaceERKS8_IiEPS2_Pf(ptr noundef nonnull %i.gz, ptr noundef nonnull %i.hf, ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %17, ptr noundef nonnull align 16 dereferenceable(16) %16, ptr noundef nonnull align 16 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef nonnull align 8 dereferenceable(25) %5, ptr nonnull align 8 poison, ptr nonnull align 8 poison, ptr noundef nonnull %19, ptr noundef nonnull %i.a) ; 0 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !149
  %i.kz = getelementptr inbounds [16 x i8], ptr %i.ky, i64 %i.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.kz, ptr noundef nonnull align 16 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !24
  %i.la = load ptr, ptr %i.gf, align 8, !tbaa !162
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.la, i64 %i.c
  store i32 1, ptr %i.lb, align 4, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL18findSeparatingAxisRK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_RK20b3AlignedObjectArrayIS2_ESB_RKS8_I9b3GpuFaceERKS8_IiESB_SB_SF_SI_RS2_(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(96) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %11, ptr nofree noundef nonnull align 16 captures(none) dereferenceable(16) %12) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %13 = alloca %class.b3Vector3, align 16         ; 9 uses
  %14 = alloca %class.b3Vector3, align 16         ; 9 uses
  %15 = alloca %class.b3Vector3, align 16         ; 8 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %16 = alloca %class.b3Vector3, align 16         ; 8 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %17 = alloca %class.b3Vector3, align 16         ; 8 uses
  %i.c = alloca float, align 4                    ; 5 uses
  tail call void @b3EnterProfileZone(ptr noundef nonnull @.str.73)
  %i.d = load i32, ptr @b3g_actualSATPairTests, align 4, !tbaa !19
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @b3g_actualSATPairTests, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !24
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 12
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !24
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 12
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !18
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %18 = load <4 x float>, ptr %.sroa.649.0..sroa_idx, align 8 ; 2 uses
  %19 = shufflevector <4 x float> %18, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.h = load <4 x float>, ptr %13, align 16
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.31.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.643.0.copyload = load float, ptr %.sroa.643.0..sroa_idx, align 8 ; 3 uses
  %.sroa.29.48.copyload.i179 = load float, ptr %14, align 16
  %.sroa.31.48..sroa_idx.i180 = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.p = load <2 x float>, ptr %3, align 16, !tbaa !18 ; 4 uses
  %i.q = load float, ptr %i.j, align 4, !tbaa !18 ; 3 uses
  %i.r = load <2 x float>, ptr %i.k, align 8, !tbaa !18 ; 5 uses
  %i.s = load float, ptr %i.l, align 4, !tbaa !18 ; 2 uses
  %i.t = load <2 x float>, ptr %5, align 16, !tbaa !18 ; 3 uses
  %i.u = load float, ptr %i.m, align 4, !tbaa !18 ; 3 uses
  %i.v = shufflevector <2 x float> %i.p, <2 x float> %i.t, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.w = fmul <2 x float> %i.v, %i.v
  %i.x = shufflevector <2 x float> %i.p, <2 x float> %i.t, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.x, <2 x float> %i.w)
  %i.z = load <2 x float>, ptr %i.n, align 8, !tbaa !18 ; 3 uses
  %i.aa = load float, ptr %i.o, align 4, !tbaa !18 ; 3 uses
  %i.ab = shufflevector <2 x float> %i.r, <2 x float> %i.z, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ab, <2 x float> %i.y)
  %i.ad = shufflevector <2 x float> %i.r, <2 x float> %i.z, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ad, <2 x float> %i.ac)
  %i.af = fdiv <2 x float> splat (float 2.000000e+00), %i.ae ; 2 uses
  %i.ag = extractelement <2 x float> %i.af, i64 1 ; 3 uses
  %i.ah = extractelement <2 x float> %i.t, i64 0  ; 4 uses
  %i.ai = fmul float %i.ah, %i.ag                 ; 2 uses
  %i.aj = extractelement <2 x float> %i.z, i64 0  ; 2 uses
  %i.ak = fmul float %i.ah, %i.ai                 ; 2 uses
  %i.al = load <2 x float>, ptr %0, align 16      ; 2 uses
  %i.am = load <2 x float>, ptr %1, align 16      ; 3 uses
  %.sroa.542.0.copyload = load float, ptr %.sroa.542.0..sroa_idx, align 4 ; 2 uses
  %i.an = shufflevector <2 x float> %i.p, <2 x float> %i.r, <4 x i32> <i32 0, i32 2, i32 poison, i32 2>
  %i.ao = insertelement <4 x float> %i.an, float %i.q, i64 2
  %i.ap = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> zeroinitializer
  %i.aq = fmul <4 x float> %i.ao, %i.ap           ; 4 uses
  %i.ar = extractelement <4 x float> %i.aq, i64 1
  %i.as = fmul float %i.q, %i.ar                  ; 2 uses
  %i.at = shufflevector <2 x float> %i.p, <2 x float> %i.r, <4 x i32> <i32 0, i32 2, i32 0, i32 0>
  %i.au = fmul <4 x float> %i.at, %i.aq           ; 3 uses
  %i.av = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aw = insertelement <4 x float> %i.av, float %i.q, i64 1
  %i.ax = insertelement <4 x float> %i.aw, float %i.s, i64 2
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.az = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.ba = fmul <4 x float> %i.ay, %i.az           ; 3 uses
  %i.bb = fadd <4 x float> %i.au, %i.ba           ; 3 uses
  %i.bc = shufflevector <4 x float> %i.au, <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x i32> <i32 3, i32 5, i32 6, i32 2>
  %i.bd = shufflevector <4 x float> %i.ba, <4 x float> %i.bb, <4 x i32> <i32 3, i32 5, i32 4, i32 2>
  %i.be = fsub <4 x float> %i.bc, %i.bd           ; 2 uses
  %i.bf = shufflevector <2 x float> %i.al, <2 x float> %i.am, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.bg = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 poison, i32 poison>
  %i.bh = shufflevector <2 x float> %i.al, <2 x float> %i.am, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.bi = shufflevector <4 x float> %i.be, <4 x float> %i.bb, <4 x i32> <i32 1, i32 6, i32 0, i32 poison>
  %i.bj = extractelement <2 x float> %i.am, i64 0 ; 2 uses
  %i.bk = load <2 x float>, ptr %.sroa.31.48..sroa_idx.i, align 4
  %i.bl = load <2 x float>, ptr %.sroa.31.48..sroa_idx.i180, align 4
  %shift = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.au, %shift
  %i.bm = extractelement <4 x float> %i.aq, i64 0
  %i.bn = fmul float %i.s, %i.bm                  ; 2 uses
  %i.bo = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.as, i64 0
  %i.bp = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bq = shufflevector <4 x float> %foldExtExtBinop, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.br = shufflevector <2 x float> %i.bp, <2 x float> %i.bq, <2 x i32> <i32 0, i32 2>
  %i.bs = fsub <2 x float> %i.bo, %i.br
  %i.bt = fmul float %i.aj, %i.ag                 ; 4 uses
  %i.bu = fmul float %i.u, %i.ag                  ; 3 uses
  %i.bv = fmul float %i.aa, %i.bu                 ; 2 uses
  %i.bw = fmul float %i.aa, %i.bt                 ; 2 uses
  %i.bx = fmul float %i.ah, %i.bt                 ; 2 uses
  %i.by = fmul float %i.ah, %i.bu                 ; 2 uses
  %i.bz = fmul float %i.u, %i.bu                  ; 2 uses
  %i.ca = fmul float %i.u, %i.bt                  ; 2 uses
  %i.cb = fmul float %i.aj, %i.bt                 ; 2 uses
  %i.cc = fadd float %i.bx, %i.bv
  %i.cd = fadd float %i.ak, %i.cb
  %i.ce = fsub float %i.bx, %i.bv
  %i.cf = fadd float %i.by, %i.bw
  %i.cg = fadd float %i.ak, %i.bz
  %i.ch = fmul float %i.aa, %i.ai                 ; 2 uses
  %i.ci = fadd float %i.ca, %i.ch
  %i.cj = fsub float 1.000000e+00, %i.cd
  %i.ck = fsub float 1.000000e+00, %i.cg
  %i.cl = fsub float %i.ca, %i.ch
  %i.cm = fadd float %i.bz, %i.cb
  %i.cn = fadd float %i.as, %i.bn
  %i.co = fsub float 1.000000e+00, %i.cm
  %i.cp = fsub float %i.by, %i.bw
  %i.cq = insertelement <4 x float> %i.bg, float %i.cn, i64 2
  %i.cr = insertelement <4 x float> %i.cq, float %i.cp, i64 3
  %i.cs = fmul <4 x float> %i.bf, %i.cr
  %i.ct = insertelement <4 x float> %i.bi, float %i.co, i64 3
  %i.cu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.ct, <4 x float> %i.cs) ; 2 uses
  %i.cv = shufflevector <4 x float> %18, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cw = shufflevector <4 x float> %i.cu, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.bs, <2 x float> %i.cw)
  %i.cy = fadd <2 x float> %i.bk, %i.cx
  %i.cz = fmul float %.sroa.542.0.copyload, %i.ci
  %i.da = fmul float %.sroa.542.0.copyload, %i.cj
  %i.db = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.ce, float %i.cz)
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.cf, float %i.da)
  %i.dd = tail call noundef float @llvm.fmuladd.f32(float %.sroa.643.0.copyload, float %i.ck, float %i.db)
  %i.de = tail call noundef float @llvm.fmuladd.f32(float %.sroa.643.0.copyload, float %i.cl, float %i.dc)
  %i.df = insertelement <2 x float> %19, float %.sroa.643.0.copyload, i64 1
  %i.dg = shufflevector <4 x float> %i.bb, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.dh = insertelement <2 x float> %i.dg, float %i.cc, i64 1
  %i.di = shufflevector <4 x float> %i.cu, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.dh, <2 x float> %i.di)
  %i.dk = insertelement <2 x float> %i.i, float %.sroa.29.48.copyload.i179, i64 1
  %i.dl = fadd <2 x float> %i.dk, %i.dj           ; 2 uses
  %i.dm = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.dd, i64 1
  %i.do = fadd <2 x float> %i.bl, %i.dn
  %shift126 = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop127 = fsub <2 x float> %i.dl, %shift126
  %i.dp = extractelement <2 x float> %foldExtExtBinop127, i64 0 ; 4 uses
  %i.dq = fsub <2 x float> %i.cy, %i.do           ; 7 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !25 ; 2 uses
  %.not77 = icmp sgt i32 %i.ds, 0
  br i1 %.not77, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ec = extractelement <2 x float> %i.dq, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.09379 = phi i32 [ 0, %.lr.ph ], [ %i.gn, %bb.g ] ; 2 uses
  %.09778 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.299.ph, %bb.g ] ; 2 uses
  %i.ed = load i32, ptr %i.dt, align 4, !tbaa !27
  %i.ee = add nsw i32 %i.ed, %.09379
  %i.ef = load ptr, ptr %i.du, align 8, !tbaa !157
  %i.eg = sext i32 %i.ee to i64
  %i.eh = getelementptr inbounds [32 x i8], ptr %i.ef, i64 %i.eg ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.ei = load float, ptr %i.l, align 4, !tbaa !28 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ek = load <2 x float>, ptr %i.j, align 4, !tbaa !28 ; 4 uses
  %i.el = load <2 x float>, ptr %i.eh, align 4, !tbaa !28 ; 5 uses
  %i.em = load <2 x float>, ptr %i.ej, align 4, !tbaa !28 ; 3 uses
  %i.en = load <2 x float>, ptr %3, align 16, !tbaa !28 ; 2 uses
  %i.eo = fmul <2 x float> %i.en, %i.em
  %i.ep = extractelement <2 x float> %i.el, i64 0
  %shift129 = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop130 = fmul <2 x float> %i.el, %shift129
  %i.eq = extractelement <2 x float> %foldExtExtBinop130, i64 0
  %i.er = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.et = shufflevector <2 x float> %i.em, <2 x float> %i.el, <2 x i32> <i32 1, i32 2>
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.et, <2 x float> %i.eo)
  %i.ev = extractelement <2 x float> %i.el, i64 1 ; 2 uses
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.ev, float %i.eq)
  %i.ex = fneg <2 x float> %i.ek                  ; 4 uses
  %i.ey = extractelement <2 x float> %i.en, i64 0 ; 2 uses
  %i.ez = fneg float %i.ey                        ; 4 uses
  %i.fa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.el, <2 x float> %i.eu) ; 5 uses
  %i.fb = extractelement <2 x float> %i.em, i64 1 ; 2 uses
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.fb, float %i.ew) ; 3 uses
  %i.fd = fneg float %i.ev
  %i.fe = extractelement <2 x float> %i.ek, i64 0
  %i.ff = fmul float %i.fe, %i.fd
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.ep, float %i.ff)
  %i.fh = extractelement <2 x float> %i.ex, i64 1 ; 2 uses
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.fb, float %i.fg) ; 2 uses
  %i.fj = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fk = insertelement <2 x float> %i.fj, float %i.fc, i64 1
  %i.fl = fmul <2 x float> %i.es, %i.fk
  %i.fm = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fp = insertelement <2 x float> %i.fo, float %i.ez, i64 0
  %i.fq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.fp, <2 x float> %i.fl)
  %i.fr = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> %i.fa, <2 x i32> <i32 0, i32 2>
  %i.ft = insertelement <2 x float> %i.fo, float %i.ez, i64 1
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.ft, <2 x float> %i.fq)
  %i.fv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %i.ek, <2 x float> %i.fu) ; 4 uses
  %i.fw = extractelement <2 x float> %i.fa, i64 0
  %i.fx = fmul float %i.ei, %i.fw
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.fh, float %i.fx)
  %i.fz = extractelement <2 x float> %i.fa, i64 1
  %i.ga = extractelement <2 x float> %i.ex, i64 0
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.ga, float %i.fy)
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.ey, float %i.gb) ; 3 uses
  %.sroa.3.12.vec.insert.i11.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gc, i64 0
  store <2 x float> %i.fv, ptr %15, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i11.i, ptr %i.dv, align 8
  %shift132 = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop133 = fmul <2 x float> %i.dq, %shift132
  %i.gd = extractelement <2 x float> %foldExtExtBinop133, i64 0
  %i.ge = extractelement <2 x float> %i.fv, i64 0
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.dp, float %i.ge, float %i.gd)
  %i.gg = tail call noundef float @llvm.fmuladd.f32(float %i.ec, float %i.gc, float %i.gf)
  %i.gh = fcmp olt float %i.gg, 0.000000e+00
  br i1 %i.gh, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.gi = fneg <2 x float> %i.fv
  store <2 x float> %i.gi, ptr %15, align 16, !tbaa !18
  %i.gj = fneg float %i.gc
  store float %i.gj, ptr %i.dv, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %.val173 = load i32, ptr %i.dw, align 4, !tbaa !30
  %.val174 = load i32, ptr %i.dx, align 16
  %.val175 = load i32, ptr %i.dy, align 4
  %.val176 = load i32, ptr %i.dz, align 16
  %.val177 = load ptr, ptr %i.ea, align 8
  %.val178 = load ptr, ptr %i.eb, align 8
  %i.gk = call fastcc noundef zeroext i1 @_ZL11TestSepAxisRK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_RK20b3AlignedObjectArrayIS2_ESB_Rf(i32 %.val173, i32 %.val174, i32 %.val175, i32 %.val176, ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %15, ptr %.val177, ptr %.val178, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.gk, label %bb.e, label %.thread54

bb.e:                                             ; preds = %bb.d
  %i.gl = load float, ptr %i.a, align 4, !tbaa !28 ; 2 uses
  %i.gm = fcmp olt float %i.gl, %.09778
  br i1 %i.gm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !24
  br label %bb.g

.thread54:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.x

bb.g:                                             ; preds = %bb.e, %bb.f
  %.299.ph = phi float [ %.09778, %bb.e ], [ %i.gl, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.gn = add nuw nsw i32 %.09379, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.gn, %i.ds
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !233

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.097.lcssa = phi float [ f0x7F7FFFFF, %bb.a ], [ %.299.ph, %bb.g ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !25 ; 2 uses
  %.not14880 = icmp sgt i32 %i.gp, 0
  br i1 %.not14880, label %.lr.ph84, label %.preheader

.lr.ph84:                                         ; preds = %._crit_edge
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.gr = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gz = extractelement <2 x float> %i.dq, i64 1
  br label %bb.h

.preheader:                                       ; preds = %bb.m, %._crit_edge
  %.4101.lcssa = phi float [ %.097.lcssa, %._crit_edge ], [ %.6103.ph, %bb.m ]
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !33 ; 2 uses
  %.not154.not95 = icmp sgt i32 %i.hb, 0
  br i1 %.not154.not95, label %.lr.ph99, label %._crit_edge100

.lr.ph99:                                         ; preds = %.preheader
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.hd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.pre = load i32, ptr %i.he, align 8, !tbaa !33 ; 3 uses
  %i.ho = extractelement <2 x float> %i.dq, i64 1
  br label %bb.n

bb.h:                                             ; preds = %.lr.ph84, %bb.m
  %.08982 = phi i32 [ 0, %.lr.ph84 ], [ %i.jy, %bb.m ] ; 2 uses
  %.410181 = phi float [ %.097.lcssa, %.lr.ph84 ], [ %.6103.ph, %bb.m ] ; 2 uses
  %i.hp = load i32, ptr %i.gq, align 4, !tbaa !27
  %i.hq = add nsw i32 %i.hp, %.08982
  %i.hr = load ptr, ptr %i.gr, align 8, !tbaa !157
  %i.hs = sext i32 %i.hq to i64
  %i.ht = getelementptr inbounds [32 x i8], ptr %i.hr, i64 %i.hs ; 2 uses
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.hu = load float, ptr %i.o, align 4, !tbaa !28 ; 3 uses
  %i.hv = load <2 x float>, ptr %i.ht, align 16   ; 5 uses
  %i.hw = load <2 x float>, ptr %.sroa.514.0..sroa_idx, align 4 ; 3 uses
  %i.hx = load <2 x float>, ptr %i.m, align 4, !tbaa !28 ; 4 uses
  %i.hy = load <2 x float>, ptr %5, align 16, !tbaa !28 ; 2 uses
  %i.hz = fmul <2 x float> %i.hw, %i.hy
  %i.ia = extractelement <2 x float> %i.hv, i64 0
  %shift135 = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop136 = fmul <2 x float> %i.hv, %shift135
  %i.ib = extractelement <2 x float> %foldExtExtBinop136, i64 0
  %i.ic = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.id = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ie = shufflevector <2 x float> %i.hw, <2 x float> %i.hv, <2 x i32> <i32 1, i32 2>
  %i.if = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.id, <2 x float> %i.ie, <2 x float> %i.hz)
  %i.ig = extractelement <2 x float> %i.hv, i64 1 ; 2 uses
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.hu, float %i.ig, float %i.ib)
  %i.ii = fneg <2 x float> %i.hx                  ; 4 uses
  %i.ij = extractelement <2 x float> %i.hy, i64 0 ; 2 uses
  %i.ik = fneg float %i.ij                        ; 4 uses
  %i.il = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.hv, <2 x float> %i.if) ; 5 uses
  %i.im = extractelement <2 x float> %i.hw, i64 1 ; 2 uses
  %i.in = tail call float @llvm.fmuladd.f32(float %i.ik, float %i.im, float %i.ih) ; 3 uses
  %i.io = fneg float %i.ig
  %i.ip = extractelement <2 x float> %i.hx, i64 0
  %i.iq = fmul float %i.ip, %i.io
  %i.ir = tail call float @llvm.fmuladd.f32(float %i.ik, float %i.ia, float %i.iq)
  %i.is = extractelement <2 x float> %i.ii, i64 1 ; 2 uses
  %i.it = tail call float @llvm.fmuladd.f32(float %i.is, float %i.im, float %i.ir) ; 2 uses
  %i.iu = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.iv = insertelement <2 x float> %i.iu, float %i.in, i64 1
  %i.iw = fmul <2 x float> %i.id, %i.iv
  %i.ix = insertelement <2 x float> poison, float %i.it, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ja = insertelement <2 x float> %i.iz, float %i.ik, i64 0
  %i.jb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iy, <2 x float> %i.ja, <2 x float> %i.iw)
  %i.jc = insertelement <2 x float> poison, float %i.in, i64 0
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> %i.il, <2 x i32> <i32 0, i32 2>
  %i.je = insertelement <2 x float> %i.iz, float %i.ik, i64 1
  %i.jf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jd, <2 x float> %i.je, <2 x float> %i.jb)
  %i.jg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.hx, <2 x float> %i.jf) ; 4 uses
  %i.jh = extractelement <2 x float> %i.il, i64 0
  %i.ji = fmul float %i.hu, %i.jh
  %i.jj = tail call float @llvm.fmuladd.f32(float %i.it, float %i.is, float %i.ji)
  %i.jk = extractelement <2 x float> %i.il, i64 1
  %i.jl = extractelement <2 x float> %i.ii, i64 0
  %i.jm = tail call float @llvm.fmuladd.f32(float %i.jk, float %i.jl, float %i.jj)
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.in, float %i.ij, float %i.jm) ; 3 uses
  %.sroa.3.12.vec.insert.i11.i191 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jn, i64 0
  store <2 x float> %i.jg, ptr %16, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i11.i191, ptr %i.gs, align 8
  %shift138 = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop139 = fmul <2 x float> %i.dq, %shift138
  %i.jo = extractelement <2 x float> %foldExtExtBinop139, i64 0
  %i.jp = extractelement <2 x float> %i.jg, i64 0
  %i.jq = tail call float @llvm.fmuladd.f32(float %i.dp, float %i.jp, float %i.jo)
  %i.jr = tail call noundef float @llvm.fmuladd.f32(float %i.gz, float %i.jn, float %i.jq)
  %i.js = fcmp olt float %i.jr, 0.000000e+00
  br i1 %i.js, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.jt = fneg <2 x float> %i.jg
  store <2 x float> %i.jt, ptr %16, align 16, !tbaa !18
  %i.ju = fneg float %i.jn
  store float %i.ju, ptr %i.gs, align 8, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %.val167 = load i32, ptr %i.gt, align 4, !tbaa !30
  %.val168 = load i32, ptr %i.gu, align 16
  %.val169 = load i32, ptr %i.gv, align 4
  %.val170 = load i32, ptr %i.gw, align 16
  %.val171 = load ptr, ptr %i.gx, align 8
  %.val172 = load ptr, ptr %i.gy, align 8
  %i.jv = call fastcc noundef zeroext i1 @_ZL11TestSepAxisRK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_RK20b3AlignedObjectArrayIS2_ESB_Rf(i32 %.val167, i32 %.val168, i32 %.val169, i32 %.val170, ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %16, ptr %.val171, ptr %.val172, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.jv, label %bb.k, label %.thread60

bb.k:                                             ; preds = %bb.j
  %i.jw = load float, ptr %i.b, align 4, !tbaa !28 ; 2 uses
  %i.jx = fcmp olt float %i.jw, %.410181
  br i1 %i.jx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %16, i64 16, i1 false), !tbaa.struct !24
  br label %bb.m

.thread60:                                        ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.x

bb.m:                                             ; preds = %bb.k, %bb.l
  %.6103.ph = phi float [ %.410181, %bb.k ], [ %i.jw, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.jy = add nuw nsw i32 %.08982, 1              ; 2 uses
  %exitcond102.not = icmp eq i32 %i.jy, %i.gp
  br i1 %exitcond102.not, label %.preheader, label %bb.h, !llvm.loop !234

bb.n:                                             ; preds = %.lr.ph99, %._crit_edge92
  %.pre103105 = phi i32 [ %.pre, %.lr.ph99 ], [ %.pre103106, %._crit_edge92 ] ; 2 uses
  %i.jz = phi i32 [ %i.hb, %.lr.ph99 ], [ %i.pn, %._crit_edge92 ]
  %i.ka = phi i32 [ %.pre, %.lr.ph99 ], [ %i.po, %._crit_edge92 ] ; 2 uses
  %i.kb = phi i32 [ %.pre, %.lr.ph99 ], [ %i.pp, %._crit_edge92 ] ; 2 uses
  %.08798 = phi i32 [ 0, %.lr.ph99 ], [ %i.pq, %._crit_edge92 ] ; 2 uses
  %.896 = phi float [ %.4101.lcssa, %.lr.ph99 ], [ %.9.lcssa, %._crit_edge92 ] ; 2 uses
  %i.kc = load i32, ptr %i.hc, align 4, !tbaa !34
  %i.kd = add nsw i32 %i.kc, %.08798
  %i.ke = load ptr, ptr %i.hd, align 8, !tbaa !149
  %i.kf = sext i32 %i.kd to i64
  %i.kg = getelementptr inbounds [16 x i8], ptr %i.ke, i64 %i.kf ; 2 uses
  %i.kh = load float, ptr %i.l, align 4, !tbaa !28 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.kj = load <2 x float>, ptr %i.j, align 4, !tbaa !28 ; 5 uses
  %i.kk = load <2 x float>, ptr %i.ki, align 4, !tbaa !28 ; 4 uses
  %i.kl = load <2 x float>, ptr %i.kg, align 4, !tbaa !28 ; 4 uses
  %i.km = load float, ptr %3, align 16, !tbaa !28 ; 3 uses
  %i.kn = shufflevector <2 x float> %i.kk, <2 x float> %i.kl, <2 x i32> <i32 1, i32 2>
  %i.ko = fmul <2 x float> %i.kn, %i.kj
  %i.kp = extractelement <2 x float> %i.kk, i64 0 ; 2 uses
  %i.kq = fmul float %i.kp, %i.km
  %i.kr = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ks = insertelement <2 x float> %i.kr, float %i.km, i64 1 ; 2 uses
  %i.kt = fneg <2 x float> %i.ks                  ; 3 uses
  %i.ku = insertelement <2 x float> poison, float %i.kh, i64 0
  %i.kv = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kv, <2 x float> %i.kl, <2 x float> %i.ko) ; 2 uses
  %i.kx = extractelement <2 x float> %i.kk, i64 1 ; 2 uses
  %i.ky = tail call float @llvm.fmuladd.f32(float %i.kh, float %i.kx, float %i.kq)
  %i.kz = fneg <2 x float> %i.kj                  ; 2 uses
  %i.la = insertelement <2 x float> poison, float %i.km, i64 0
  %i.lb = shufflevector <2 x float> %i.la, <2 x float> %i.kj, <2 x i32> <i32 0, i32 2>
  %i.lc = fneg <2 x float> %i.lb
  %i.ld = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kt, <2 x float> %i.kk, <2 x float> %i.kw) ; 4 uses
  %i.le = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lf = insertelement <2 x float> %i.le, float %i.ky, i64 0
  %i.lg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kz, <2 x float> %i.kl, <2 x float> %i.lf) ; 3 uses
  %i.lh = fneg float %i.kp
  %i.li = extractelement <2 x float> %i.kj, i64 0 ; 2 uses
  %i.lj = fmul float %i.li, %i.lh
  %i.lk = extractelement <2 x float> %i.kt, i64 1 ; 2 uses
  %i.ll = extractelement <2 x float> %i.kl, i64 0
  %i.lm = tail call float @llvm.fmuladd.f32(float %i.lk, float %i.ll, float %i.lj)
  %i.ln = extractelement <2 x float> %i.kt, i64 0 ; 2 uses
  %i.lo = tail call float @llvm.fmuladd.f32(float %i.ln, float %i.kx, float %i.lm) ; 2 uses
  %i.lp = shufflevector <2 x float> %i.ld, <2 x float> %i.lg, <2 x i32> <i32 1, i32 2>
  %i.lq = fmul <2 x float> %i.kv, %i.lp
  %i.lr = extractelement <2 x float> %i.ld, i64 0
  %i.ls = fmul float %i.kh, %i.lr
  %i.lt = insertelement <2 x float> poison, float %i.lo, i64 0
  %i.lu = shufflevector <2 x float> %i.lt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lu, <2 x float> %i.kz, <2 x float> %i.lq)
  %i.lw = tail call float @llvm.fmuladd.f32(float %i.lo, float %i.lk, float %i.ls)
  %i.lx = extractelement <2 x float> %i.ld, i64 1
  %i.ly = tail call float @llvm.fmuladd.f32(float %i.lx, float %i.ln, float %i.lw)
  %i.lz = extractelement <2 x float> %i.lg, i64 0
  %i.ma = tail call float @llvm.fmuladd.f32(float %i.lz, float %i.li, float %i.ly) ; 2 uses
  %i.mb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lg, <2 x float> %i.lc, <2 x float> %i.lv)
  %i.mc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ld, <2 x float> %i.ks, <2 x float> %i.mb) ; 3 uses
  %.not15386 = icmp sgt i32 %i.kb, 0
  br i1 %.not15386, label %.lr.ph91.preheader, label %._crit_edge92

.lr.ph91.preheader:                               ; preds = %bb.n
  %i.md = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.me = insertelement <2 x float> %i.md, float %i.ma, i64 1
  %i.mf = extractelement <2 x float> %i.mc, i64 0
  br label %.lr.ph91

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %_Z12IsAlmostZeroRK9b3Vector3.exit.thread63
  %.pre103107 = phi i32 [ %.pre103108, %_Z12IsAlmostZeroRK9b3Vector3.exit.thread63 ], [ %.pre103105, %.lr.ph91.preheader ] ; 2 uses
  %i.mg = phi i32 [ %i.pl, %_Z12IsAlmostZeroRK9b3Vector3.exit.thread63 ], [ %i.ka, %.lr.ph91.preheader ]
  %.089 = phi i32 [ %i.pm, %_Z12IsAlmostZeroRK9b3Vector3.exit.thread63 ], [ 0, %.lr.ph91.preheader ] ; 2 uses
  %.987 = phi float [ %.1366, %_Z12IsAlmostZeroRK9b3Vector3.exit.thread63 ], [ %.896, %.lr.ph91.preheader ] ; 3 uses
  %i.mh = load i32, ptr %i.hf, align 4, !tbaa !34
  %i.mi = add nsw i32 %i.mh, %.089
  %i.mj = load ptr, ptr %i.hg, align 8, !tbaa !149
  %i.mk = sext i32 %i.mi to i64
  %i.ml = getelementptr inbounds [16 x i8], ptr %i.mj, i64 %i.mk ; 2 uses
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  %20 = load <4 x float>, ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %.sroa.05.0.copyload = load float, ptr %i.ml, align 16 ; 4 uses
  %i.mm = load <2 x float>, ptr %.sroa.5.0..sroa_idx6, align 4 ; 6 uses
  %i.mn = load <2 x float>, ptr %i.m, align 4, !tbaa !28 ; 3 uses
  %i.mo = load float, ptr %i.m, align 4, !tbaa !28
  %i.mp = load <2 x float>, ptr %5, align 16, !tbaa !28 ; 3 uses
  %i.mq = shufflevector <2 x float> %i.mm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mr = insertelement <2 x float> %i.mq, float %.sroa.05.0.copyload, i64 0
  %i.ms = shufflevector <2 x float> %i.mn, <2 x float> %i.mp, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.mt = fmul <2 x float> %i.mr, %i.ms
  %i.mu = insertelement <2 x float> %i.mq, float %.sroa.05.0.copyload, i64 1 ; 2 uses
  %i.mv = fmul <2 x float> %i.mu, %i.mn
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 4 uses
  %i.mw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> %i.mm, <2 x float> %i.mt)
  %i.mx = insertelement <2 x float> poison, float %.sroa.05.0.copyload, i64 0
  %i.my = shufflevector <2 x float> %i.mx, <2 x float> %i.mm, <2 x i32> <i32 0, i32 2>
  %i.mz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> %i.my, <2 x float> %i.mv)
  %i.na = fneg <2 x float> %i.mp                  ; 4 uses
  %i.nb = extractelement <2 x float> %i.mn, i64 1
  %i.nc = fneg float %i.nb                        ; 3 uses
  %i.nd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.na, <2 x float> %i.mu, <2 x float> %i.mw) ; 3 uses
  %i.ne = shufflevector <2 x float> %i.na, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.nf = insertelement <2 x float> %i.ne, float %i.nc, i64 0 ; 2 uses
  %i.ng = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nf, <2 x float> %i.mm, <2 x float> %i.mz) ; 3 uses
  %i.nh = extractelement <2 x float> %i.mm, i64 0
  %i.ni = fneg float %i.nh
  %i.nj = fmul float %i.mo, %i.ni
  %i.nk = extractelement <2 x float> %i.na, i64 0
  %i.nl = tail call float @llvm.fmuladd.f32(float %i.nk, float %.sroa.05.0.copyload, float %i.nj)
  %i.nm = extractelement <2 x float> %i.mm, i64 1
  %i.nn = tail call float @llvm.fmuladd.f32(float %i.nc, float %i.nm, float %i.nl)
  %i.no = shufflevector <2 x float> %i.nd, <2 x float> %i.ng, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.np = fmul <2 x float> %21, %i.no
  %i.nq = fmul <2 x float> %21, %i.nd
  %i.nr = insertelement <2 x float> poison, float %i.nn, i64 0
  %i.ns = shufflevector <2 x float> %i.nr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ns, <2 x float> %i.nf, <2 x float> %i.np)
  %i.nu = insertelement <2 x float> %i.ne, float %i.nc, i64 1 ; 2 uses
  %i.nv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ns, <2 x float> %i.nu, <2 x float> %i.nq)
  %i.nw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ng, <2 x float> %i.nu, <2 x float> %i.nt)
  %i.nx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.no, <2 x float> %i.na, <2 x float> %i.nv)
  %i.ny = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nd, <2 x float> %i.mp, <2 x float> %i.nw) ; 2 uses
  %i.nz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ng, <2 x float> %i.ms, <2 x float> %i.nx) ; 2 uses
  %i.oa = fneg <2 x float> %i.nz
  %i.ob = fmul <2 x float> %i.me, %i.oa
  %i.oc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mc, <2 x float> %i.ny, <2 x float> %i.ob) ; 5 uses
  %i.od = extractelement <2 x float> %i.ny, i64 1
  %i.oe = fneg float %i.od
  %i.of = fmul float %i.mf, %i.oe
  %i.og = extractelement <2 x float> %i.nz, i64 0
  %i.oh = tail call float @llvm.fmuladd.f32(float %i.ma, float %i.og, float %i.of) ; 5 uses
  %.sroa.3.12.vec.insert.i.i206 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.oh, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i.i206, ptr %i.hh, align 8
  %i.oi = extractelement <2 x float> %i.oc, i64 0 ; 3 uses
  %i.oj = tail call float @llvm.fabs.f32(float %i.oi)
  %i.ok = fpext float %i.oj to double
  %i.ol = fcmp ogt double %i.ok, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ol, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph91
  %i.om = extractelement <2 x float> %i.oc, i64 1
  %i.on = tail call float @llvm.fabs.f32(float %i.om)
  %i.oo = fpext float %i.on to double
  %i.op = fcmp ogt double %i.oo, f0x3EB0C6F7A0B5ED8D
  br i1 %i.op, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.oq = tail call float @llvm.fabs.f32(float %i.oh)
  %i.or = fpext float %i.oq to double
  %i.os = fcmp ogt double %i.or, f0x3EB0C6F7A0B5ED8D
  br i1 %i.os, label %bb.q, label %_Z12IsAlmostZeroRK9b3Vector3.exit.thread63

bb.q:                                             ; preds = %bb.p, %bb.o, %.lr.ph91
  %foldExtExtBinop141 = fmul <2 x float> %i.oc, %i.oc
  %i.ot = extractelement <2 x float> %foldExtExtBinop141, i64 1
  %i.ou = tail call float @llvm.fmuladd.f32(float %i.oi, float %i.oi, float %i.ot)
  %i.ov = tail call noundef float @llvm.fmuladd.f32(float %i.oh, float %i.oh, float %i.ou)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ov)
  %i.ow = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ox = insertelement <2 x float> poison, float %i.ow, i64 0
  %i.oy = shufflevector <2 x float> %i.ox, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oz = fmul <2 x float> %i.oc, %i.oy           ; 4 uses
  %i.pa = extractelement <2 x float> %i.oz, i64 0
  store <2 x float> %i.oz, ptr %17, align 16, !tbaa !18
  %i.pb = fmul float %i.oh, %i.ow                 ; 3 uses
  store float %i.pb, ptr %i.hh, align 8, !tbaa !18
  %shift143 = shufflevector <2 x float> %i.oz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop144 = fmul <2 x float> %i.dq, %shift143
  %i.pc = extractelement <2 x float> %foldExtExtBinop144, i64 0
  %i.pd = tail call float @llvm.fmuladd.f32(float %i.dp, float %i.pa, float %i.pc)
  %i.pe = tail call noundef float @llvm.fmuladd.f32(float %i.ho, float %i.pb, float %i.pd)
  %i.pf = fcmp olt float %i.pe, 0.000000e+00
  br i1 %i.pf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.pg = fneg <2 x float> %i.oz
  store <2 x float> %i.pg, ptr %17, align 16, !tbaa !18
  %i.ph = fneg float %i.pb
  store float %i.ph, ptr %i.hh, align 8, !tbaa !18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %.val = load i32, ptr %i.hi, align 4, !tbaa !30
  %.val162 = load i32, ptr %i.hj, align 16
  %.val163 = load i32, ptr %i.hk, align 4
  %.val164 = load i32, ptr %i.hl, align 16
  %.val165 = load ptr, ptr %i.hm, align 8
  %.val166 = load ptr, ptr %i.hn, align 8
  %i.pi = call fastcc noundef zeroext i1 @_ZL11TestSepAxisRK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_RK20b3AlignedObjectArrayIS2_ESB_Rf(i32 %.val, i32 %.val162, i32 %.val163, i32 %.val164, ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %17, ptr %.val165, ptr %.val166, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  br i1 %i.pi, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.pj = load float, ptr %i.c, align 4, !tbaa !28 ; 2 uses
  %i.pk = fcmp olt float %i.pj, %.987
  br i1 %i.pk, label %bb.u, label %_Z12IsAlmostZeroRK9b3Vector3.exit.thread68

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !24
  %.pre103.pre = load i32, ptr %i.he, align 8, !tbaa !33
  br label %_Z12IsAlmostZeroRK9b3Vector3.exit.thread68

_Z12IsAlmostZeroRK9b3Vector3.exit.thread68:       ; preds = %bb.u, %bb.t
  %.pre103 = phi i32 [ %.pre103107, %bb.t ], [ %.pre103.pre, %bb.u ] ; 2 uses
  %.11.ph = phi float [ %.987, %bb.t ], [ %i.pj, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %_Z12IsAlmostZeroRK9b3Vector3.exit.thread63

_Z12IsAlmostZeroRK9b3Vector3.exit.thread63:       ; preds = %bb.p, %_Z12IsAlmostZeroRK9b3Vector3.exit.thread68
  %.pre103108 = phi i32 [ %.pre103, %_Z12IsAlmostZeroRK9b3Vector3.exit.thread68 ], [ %.pre103107, %bb.p ] ; 2 uses
  %i.pl = phi i32 [ %.pre103, %_Z12IsAlmostZeroRK9b3Vector3.exit.thread68 ], [ %i.mg, %bb.p ] ; 4 uses
  %.1366 = phi float [ %.11.ph, %_Z12IsAlmostZeroRK9b3Vector3.exit.thread68 ], [ %.987, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.pm = add nuw nsw i32 %.089, 1                ; 2 uses
  %.not153 = icmp slt i32 %i.pm, %i.pl
  br i1 %.not153, label %.lr.ph91, label %._crit_edge92.loopexit, !llvm.loop !235

._crit_edge92.loopexit:                           ; preds = %_Z12IsAlmostZeroRK9b3Vector3.exit.thread63
  %.pre104 = load i32, ptr %i.ha, align 8, !tbaa !33
  br label %._crit_edge92

._crit_edge92:                                    ; preds = %._crit_edge92.loopexit, %bb.n
  %.pre103106 = phi i32 [ %.pre103105, %bb.n ], [ %.pre103108, %._crit_edge92.loopexit ]
  %i.pn = phi i32 [ %i.jz, %bb.n ], [ %.pre104, %._crit_edge92.loopexit ] ; 2 uses
  %i.po = phi i32 [ %i.ka, %bb.n ], [ %i.pl, %._crit_edge92.loopexit ]
  %i.pp = phi i32 [ %i.kb, %bb.n ], [ %i.pl, %._crit_edge92.loopexit ]
  %.9.lcssa = phi float [ %.896, %bb.n ], [ %.1366, %._crit_edge92.loopexit ]
  %i.pq = add nuw nsw i32 %.08798, 1              ; 2 uses
  %.not154.not = icmp slt i32 %i.pq, %i.pn
  br i1 %.not154.not, label %bb.n, label %._crit_edge100, !llvm.loop !236

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.x

._crit_edge100:                                   ; preds = %._crit_edge92, %.preheader
  %i.pr = fneg float %i.dp
  %i.ps = fneg <2 x float> %i.dq                  ; 2 uses
  %i.pt = load <2 x float>, ptr %12, align 16, !tbaa !18 ; 3 uses
  %shift146 = shufflevector <2 x float> %i.pt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop147 = fmul <2 x float> %shift146, %i.ps
  %i.pu = extractelement <2 x float> %foldExtExtBinop147, i64 0
  %i.pv = extractelement <2 x float> %i.pt, i64 0
  %i.pw = tail call float @llvm.fmuladd.f32(float %i.pr, float %i.pv, float %i.pu)
  %i.px = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.py = load float, ptr %i.px, align 8, !tbaa !18 ; 2 uses
  %i.pz = extractelement <2 x float> %i.ps, i64 1
  %i.qa = tail call noundef float @llvm.fmuladd.f32(float %i.pz, float %i.py, float %i.pw)
  %i.qb = fcmp ogt float %i.qa, 0.000000e+00
  br i1 %i.qb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge100
  %i.qc = fneg <2 x float> %i.pt
  %i.qd = fneg float %i.py
  %.sroa.3.12.vec.insert.i.i216 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qd, i64 0
  store <2 x float> %i.qc, ptr %12, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i216, ptr %i.px, align 8, !tbaa !18
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %.thread60, %.thread54, %._crit_edge100, %bb.w
  %.15 = phi i1 [ false, %.thread54 ], [ false, %.thread60 ], [ true, %._crit_edge100 ], [ true, %bb.w ], [ false, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.qe = landingpad { ptr, i32 }
          catch ptr null
  %i.qf = extractvalue { ptr, i32 } %i.qe, 0
  tail call void @__clang_call_terminate(ptr %i.qf) #27
  unreachable

_ZN13b3ProfileZoneD2Ev.exit:                      ; preds = %bb.x
  ret i1 %.15
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z27clipCompoundsHullHullKernelPK6b3Int4PK15b3RigidBodyDataPK12b3CollidablePK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3Vector3ESF_RKSB_I9b3GpuFaceERKSB_IiEPK15b3GpuChildShapeSF_SM_P14b3Contact4DataPiiii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %4, ptr nofree nonnull readnone align 8 captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %10, ptr nofree noundef writeonly captures(none) %11, ptr nofree noundef captures(none) %12, i32 noundef %13, i32 noundef %14, i32 noundef %15) local_unnamed_addr #2 {
bb.a:
  %16 = alloca [64 x %class.b3Vector3], align 16  ; 3 uses
  %17 = alloca [64 x %class.b3Vector3], align 16  ; 3 uses
  %18 = alloca [64 x %class.b3Vector3], align 16  ; 8 uses
  %19 = alloca %class.b3Quaternion, align 16      ; 9 uses
  %20 = alloca %class.b3Vector3, align 16         ; 7 uses
  %21 = alloca %class.b3Quaternion, align 16      ; 9 uses
  %22 = alloca %class.b3Vector3, align 16         ; 7 uses
  %23 = alloca %class.b3Vector3, align 16         ; 5 uses
  %24 = alloca %struct.b3Int4, align 16           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
end_hunk_1
