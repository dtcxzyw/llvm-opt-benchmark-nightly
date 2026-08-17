inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@SetShaderValueTexture:bb.a

.thread.i:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.01519.lcssa.wide.i = phi i32 [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ]
  %i.f = load ptr, ptr @glad_glUniform1i, align 8
  tail call void %i.f(i32 noundef %2, i32 noundef %.01519.lcssa.wide.i) #56, !inline_history !279
  br label %rlSetUniformSampler.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2348), align 4 ; 2 uses
  %i.h = icmp eq i32 %i.g, %i.c
  br i1 %i.h, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2352), align 8 ; 2 uses
  %i.j = icmp eq i32 %i.i, %i.c
  br i1 %i.j, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2356), align 4 ; 2 uses
  %i.l = icmp eq i32 %i.k, %i.c
  br i1 %i.l, label %.thread.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.e
  %i.m = icmp eq i32 %i.d, 0
  br i1 %i.m, label %bb.f, label %.preheader.1.i

bb.f:                                             ; preds = %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.021.lcssa.wide.i = phi i64 [ 0, %.preheader.preheader.i ], [ 1, %.preheader.1.i ], [ 2, %.preheader.2.i ], [ 3, %.preheader.3.i ] ; 2 uses
  %i.n = trunc nuw nsw i64 %.021.lcssa.wide.i to i32
  %i.o = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2344), i64 %.021.lcssa.wide.i
  %i.p = load ptr, ptr @glad_glUniform1i, align 8
  %i.q = add nuw nsw i32 %i.n, 1
  tail call void %i.p(i32 noundef %2, i32 noundef %i.q) #56, !inline_history !279
  store i32 %i.c, ptr %i.o, align 4
  br label %rlSetUniformSampler.exit

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.r = icmp eq i32 %i.g, 0
  br i1 %i.r, label %bb.f, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.s = icmp eq i32 %i.i, 0
  br i1 %i.s, label %bb.f, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.t = icmp eq i32 %i.k, 0
  br i1 %i.t, label %bb.f, label %rlSetUniformSampler.exit

rlSetUniformSampler.exit:                         ; preds = %.preheader.3.i, %bb.f, %.thread.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define void @GetScreenToWorldRay(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Ray) align 4 captures(none) initializes((0, 24)) %0, <2 x float> %1, ptr nofree noundef readonly byval(%struct.Camera3D) align 8 captures(none) %2) local_unnamed_addr #29 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8
  tail call void @GetScreenToWorldRayEx(ptr dead_on_unwind writable sret(%struct.Ray) align 4 %0, <2 x float> %1, ptr noundef nonnull byval(%struct.Camera3D) align 8 %2, i32 noundef %i.a, i32 noundef %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define void @GetScreenToWorldRayEx(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Ray) align 4 captures(none) initializes((0, 24)) %0, <2 x float> %1, ptr nofree noundef readonly byval(%struct.Camera3D) align 8 captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #29 {
bb.a:
  %5 = alloca %struct.Matrix, align 8             ; 17 uses
  %6 = alloca %struct.Matrix, align 8             ; 22 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.sroa.070.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = fmul float %.sroa.070.0.vec.extract, 2.000000e+00
  %i.b = sitofp i32 %3 to float
  %i.c = fdiv float %i.a, %i.b
  %i.d = fadd float %i.c, -1.000000e+00
  %.sroa.070.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.e = fmul float %.sroa.070.4.vec.extract, 2.000000e+00
  %i.f = sitofp i32 %4 to float
  %i.g = fdiv float %i.e, %i.f
  %i.h = fsub float 1.000000e+00, %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #56
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.055.0.copyload = load <2 x float>, ptr %2, align 8 ; 4 uses
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.256.0.copyload = load float, ptr %.sroa.256.0..sroa_idx, align 8 ; 4 uses
  %.sroa.053.0.copyload = load <2 x float>, ptr %i.i, align 4
  %.sroa.254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.254.0.copyload = load float, ptr %.sroa.254.0..sroa_idx, align 4
  %.sroa.051.0.copyload = load <2 x float>, ptr %i.j, align 8 ; 3 uses
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.252.0.copyload = load float, ptr %.sroa.252.0..sroa_idx, align 8 ; 2 uses
  %.sroa.069.0.vec.extract.i = extractelement <2 x float> %.sroa.055.0.copyload, i64 0 ; 3 uses
  %.sroa.069.4.vec.extract.i = extractelement <2 x float> %.sroa.055.0.copyload, i64 1 ; 2 uses
  %.sroa.057.0.vec.extract.i = extractelement <2 x float> %.sroa.051.0.copyload, i64 0
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.o = fsub <2 x float> %.sroa.055.0.copyload, %.sroa.053.0.copyload ; 5 uses
  %i.p = fsub float %.sroa.256.0.copyload, %.sroa.254.0.copyload ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.o, %i.o
  %i.q = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.r = extractelement <2 x float> %i.o, i64 0   ; 2 uses
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.q)
  %i.t = tail call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.s) ; 2 uses
  %sqrt87.i = tail call float @llvm.sqrt.f32(float %i.t)
  %i.u = fcmp oeq float %i.t, 0.000000e+00
  %i.v = fdiv float 1.000000e+00, %sqrt87.i
  %i.w = select i1 %i.u, float 1.000000e+00, float %i.v
  %i.x = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.y = insertelement <2 x float> %i.x, float %i.p, i64 1
  %i.z = insertelement <2 x float> poison, float %i.w, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = fmul <2 x float> %i.y, %i.aa            ; 4 uses
  %i.ac = fmul <2 x float> %i.o, %i.aa            ; 2 uses
  %i.ad = fneg <2 x float> %i.ac
  %i.ae = extractelement <2 x float> %i.ab, i64 1 ; 4 uses
  %i.af = fneg float %i.ae
  %i.ag = shufflevector <2 x float> %.sroa.051.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ah = insertelement <2 x float> %i.ag, float %.sroa.252.0.copyload, i64 1
  %i.ai = fmul <2 x float> %i.ah, %i.ad
  %i.aj = fmul float %.sroa.057.0.vec.extract.i, %i.af
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.051.0.copyload, <2 x float> %i.ab, <2 x float> %i.ai) ; 3 uses
  %i.al = extractelement <2 x float> %i.ac, i64 0 ; 5 uses
  %i.am = tail call float @llvm.fmuladd.f32(float %.sroa.252.0.copyload, float %i.al, float %i.aj) ; 3 uses
  %i.an = fmul float %i.am, %i.am
  %i.ao = extractelement <2 x float> %i.ak, i64 1 ; 2 uses
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %i.an)
  %i.aq = extractelement <2 x float> %i.ak, i64 0 ; 2 uses
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.ap) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.ar)
  %i.as = fcmp oeq float %i.ar, 0.000000e+00
  %i.at = fdiv float 1.000000e+00, %sqrt.i
  %i.au = select i1 %i.as, float 1.000000e+00, float %i.at ; 2 uses
  %i.av = insertelement <2 x float> poison, float %i.au, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.ak, %i.aw           ; 3 uses
  %i.ay = fmul float %i.am, %i.au                 ; 4 uses
  %i.az = extractelement <2 x float> %i.ax, i64 0 ; 3 uses
  %i.ba = fneg float %i.az
  %i.bb = fneg float %i.ay
  %i.bc = fmul float %i.al, %i.ba
  %i.bd = fmul float %i.ae, %i.bb
  %i.be = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.bc, i64 1
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ax, <2 x float> %i.bf) ; 3 uses
  %i.bh = extractelement <2 x float> %i.ax, i64 1 ; 3 uses
  %i.bi = fneg float %i.bh
  %i.bj = extractelement <2 x float> %i.ab, i64 0 ; 3 uses
  %i.bk = fmul float %i.bj, %i.bi
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.al, float %i.ay, float %i.bk) ; 2 uses
  store float %i.bh, ptr %5, align 8, !alias.scope !280
  store float %i.al, ptr %i.l, align 8, !alias.scope !280
  store float %i.ay, ptr %i.n, align 4, !alias.scope !280
  store <2 x float> %i.bg, ptr %i.k, align 8, !alias.scope !280
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 36
  store float %i.bj, ptr %i.bm, align 4, !alias.scope !280
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.az, ptr %i.bn, align 8, !alias.scope !280
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %i.bl, ptr %i.bo, align 8, !alias.scope !280
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 40
  store float %i.ae, ptr %i.bp, align 8, !alias.scope !280
  %i.bq = fmul float %.sroa.069.4.vec.extract.i, %i.ay
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bh, float %.sroa.069.0.vec.extract.i, float %i.bq)
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.az, float %.sroa.256.0.copyload, float %i.br)
  %i.bt = fneg float %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.bt, ptr %i.bu, align 4, !alias.scope !280
  %foldExtExtBinop89 = fmul <2 x float> %.sroa.055.0.copyload, %i.bg
  %i.bv = extractelement <2 x float> %foldExtExtBinop89, i64 1
  %i.bw = extractelement <2 x float> %i.bg, i64 0
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %.sroa.069.0.vec.extract.i, float %i.bv)
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bl, float %.sroa.256.0.copyload, float %i.bx)
  %i.bz = fneg float %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float %i.bz, ptr %i.ca, align 4, !alias.scope !280
  %i.cb = fmul float %.sroa.069.4.vec.extract.i, %i.bj
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.al, float %.sroa.069.0.vec.extract.i, float %i.cb)
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.ae, float %.sroa.256.0.copyload, float %i.cc)
  %i.ce = fneg float %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 44
  store float %i.ce, ptr %i.cf, align 4, !alias.scope !280
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.m, align 8, !alias.scope !280
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #56
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.cg, i8 0, i64 56, i1 false), !alias.scope !283
  store float 1.000000e+00, ptr %6, align 8, !alias.scope !283
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  store float 1.000000e+00, ptr %i.ch, align 4, !alias.scope !283
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  store float 1.000000e+00, ptr %i.ci, align 8, !alias.scope !283
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  store float 1.000000e+00, ptr %i.cj, align 4, !alias.scope !283
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cl = load i32, ptr %i.ck, align 8            ; 2 uses
  switch i32 %i.cl, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %.sink89.sroa.gep95 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.cn = load float, ptr %i.cm, align 4
  %i.co = fmul float %i.cn, f0x3C8EFA35
  %i.cp = fpext float %i.co to double
  %i.cq = sitofp i32 %3 to double
  %i.cr = sitofp i32 %4 to double
  %i.cs = fdiv double %i.cq, %i.cr
  %i.ct = load double, ptr @rlCullDistanceNear, align 8 ; 3 uses
  %i.cu = load double, ptr @rlCullDistanceFar, align 8 ; 2 uses
  %i.cv = fmul double %i.cp, 5.000000e-01
  %i.cw = tail call double @tan(double noundef %i.cv) #56, !noalias !286
  %i.cx = fmul double %i.ct, %i.cw                ; 4 uses
  %i.cy = fmul double %i.cs, %i.cx                ; 3 uses
  %i.cz = fadd double %i.cy, %i.cy
  %i.da = fptrunc double %i.cz to float
  %i.db = fadd double %i.cx, %i.cx
  %i.dc = fptrunc double %i.db to float
  %i.dd = fsub double %i.cu, %i.ct
  %i.de = fptrunc double %i.dd to float
  %i.df = fptrunc double %i.cu to float           ; 2 uses
  store float 0.000000e+00, ptr %i.cg, align 4
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i64 0, ptr %.sroa.679.0..sroa_idx, align 4
  %i.dg = fptrunc double %i.cx to float           ; 2 uses
  %i.dh = fsub float %i.dg, %i.dg
  %i.di = fptrunc double %i.ct to float           ; 3 uses
  %i.dj = fptrunc double %i.cy to float           ; 2 uses
  %i.dk = fmul float %i.di, 2.000000e+00          ; 2 uses
  %i.dl = fsub float %i.dj, %i.dj
  %i.dm = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.dk, i64 1
  %i.do = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fdiv <2 x float> %i.dn, %i.dp           ; 2 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 0
  store float %i.dr, ptr %.sroa.578.0..sroa_idx, align 8
  %i.ds = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dt = insertelement <2 x float> %i.ds, float %i.dh, i64 1
  %i.du = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = fdiv <2 x float> %i.dt, %i.dv
  %i.dx = fadd float %i.di, %i.df
  %i.dy = fneg float %i.dx
  %i.dz = fmul float %i.di, %i.df
  %i.ea = fmul float %i.dz, -2.000000e+00
  %i.eb = extractelement <2 x float> %i.dq, i64 1
  store float %i.eb, ptr %6, align 8
  store <2 x float> %i.dw, ptr %i.ch, align 4
  %.sroa.882.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.882.0..sroa_idx, i8 0, i64 12, i1 false)
  %i.ec = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ed = insertelement <2 x float> %i.ec, float %i.ea, i64 1
  %i.ee = insertelement <2 x float> poison, float %i.de, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fdiv <2 x float> %i.ed, %i.ef
  store <2 x float> %i.eg, ptr %i.ci, align 8
  %.sroa.1086.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 0, ptr %.sroa.1086.0..sroa_idx, align 8
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %.sink89.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.eh = sitofp i32 %3 to double
  %i.ei = sitofp i32 %4 to double
  %i.ej = fdiv double %i.eh, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.el = load float, ptr %i.ek, align 4
  %i.em = fpext float %i.el to double
  %i.en = fmul double %i.em, 5.000000e-01         ; 2 uses
  %i.eo = fmul double %i.ej, %i.en
  %i.ep = load double, ptr @rlCullDistanceNear, align 8 ; 2 uses
  %i.eq = load double, ptr @rlCullDistanceFar, align 8 ; 2 uses
  %i.er = fsub double %i.eq, %i.ep
  %i.es = fptrunc double %i.er to float
  %i.et = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.eu = insertelement <2 x double> %i.et, double %i.en, i64 1 ; 3 uses
  %i.ev = fadd <2 x double> %i.eu, %i.eu
  %i.ew = fptrunc <2 x double> %i.ev to <2 x float>
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ey = fptrunc <2 x double> %i.eu to <2 x float> ; 2 uses
  %i.ez = fsub <2 x float> %i.ey, %i.ey
  %i.fa = fneg <2 x float> %i.ez
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x float> <float 2.000000e+00, float 2.000000e+00, float poison, float poison>, <4 x float> %i.fb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fd = fdiv <4 x float> %i.fc, %i.ex           ; 4 uses
  %i.fe = fptrunc double %i.eq to float
  %i.ff = fptrunc double %i.ep to float
  %i.fg = fadd float %i.ff, %i.fe
  %i.fh = fneg float %i.fg
  %i.fi = extractelement <4 x float> %i.fd, i64 0
  store float %i.fi, ptr %6, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.fj = extractelement <4 x float> %i.fd, i64 2
  store float %i.fj, ptr %.sroa.6.0..sroa_idx, align 4
  %i.fk = extractelement <4 x float> %i.fd, i64 1
  store float %i.fk, ptr %i.ch, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.fl = extractelement <4 x float> %i.fd, i64 3
  store float %i.fl, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 36
  store float 0.000000e+00, ptr %.sroa.12.0..sroa_idx, align 4
  %i.fm = insertelement <2 x float> <float -2.000000e+00, float poison>, float %i.fh, i64 1
  %i.fn = insertelement <2 x float> poison, float %i.es, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = fdiv <2 x float> %i.fm, %i.fo
  store <2 x float> %i.fp, ptr %i.ci, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink89.sroa.phi = phi ptr [ %.sink89.sroa.gep, %bb.c ], [ %.sink89.sroa.gep95, %bb.b ]
  %.sink88 = phi float [ 0.000000e+00, %bb.c ], [ -1.000000e+00, %bb.b ]
  %.sink = phi float [ 1.000000e+00, %bb.c ], [ 0.000000e+00, %bb.b ]
  store float %.sink88, ptr %.sink89.sroa.phi, align 4
  store float %.sink, ptr %i.cj, align 4
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.sroa.041.0.vec.insert = insertelement <2 x float> poison, float %i.d, i64 0
  %.sroa.041.4.vec.insert = insertelement <2 x float> %.sroa.041.0.vec.insert, float %i.h, i64 1 ; 3 uses
  %i.fq = tail call { <2 x float>, float } @Vector3Unproject(<2 x float> %.sroa.041.4.vec.insert, float 0.000000e+00, ptr noundef nonnull byval(%struct.Matrix) align 8 %6, ptr noundef nonnull byval(%struct.Matrix) align 8 %5) ; 2 uses
  %.fca.0.extract35 = extractvalue { <2 x float>, float } %i.fq, 0
  %.fca.1.extract36 = extractvalue { <2 x float>, float } %i.fq, 1
  %i.fr = tail call { <2 x float>, float } @Vector3Unproject(<2 x float> %.sroa.041.4.vec.insert, float 1.000000e+00, ptr noundef nonnull byval(%struct.Matrix) align 8 %6, ptr noundef nonnull byval(%struct.Matrix) align 8 %5) ; 2 uses
  %.fca.0.extract24 = extractvalue { <2 x float>, float } %i.fr, 0
  %.fca.1.extract25 = extractvalue { <2 x float>, float } %i.fr, 1
  %i.fs = tail call { <2 x float>, float } @Vector3Unproject(<2 x float> %.sroa.041.4.vec.insert, float -1.000000e+00, ptr noundef nonnull byval(%struct.Matrix) align 8 %6, ptr noundef nonnull byval(%struct.Matrix) align 8 %5) ; 2 uses
  %.fca.0.extract14 = extractvalue { <2 x float>, float } %i.fs, 0
  %.fca.1.extract15 = extractvalue { <2 x float>, float } %i.fs, 1
  %i.ft = fsub <2 x float> %.fca.0.extract24, %.fca.0.extract35 ; 5 uses
  %i.fu = fsub float %.fca.1.extract25, %.fca.1.extract36 ; 4 uses
  %foldExtExtBinop91 = fmul <2 x float> %i.ft, %i.ft
  %i.fv = extractelement <2 x float> %foldExtExtBinop91, i64 1
  %i.fw = extractelement <2 x float> %i.ft, i64 0 ; 2 uses
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.fw, float %i.fv)
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.fu, float %i.fx) ; 2 uses
  %i.fz = fcmp une float %i.fy, 0.000000e+00
  br i1 %i.fz, label %bb.e, label %Vector3Normalize.exit

bb.e:                                             ; preds = %bb.d
  %sqrt.i74 = tail call float @llvm.sqrt.f32(float %i.fy)
  %i.ga = fdiv float 1.000000e+00, %sqrt.i74      ; 2 uses
  %i.gb = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = fmul <2 x float> %i.ft, %i.gc
  %i.ge = fmul float %i.fu, %i.ga
  br label %Vector3Normalize.exit

Vector3Normalize.exit:                            ; preds = %bb.d, %bb.e
  %.sroa.013.0.i = phi <2 x float> [ %i.gd, %bb.e ], [ %i.ft, %bb.d ]
  %.sroa.617.0.i = phi float [ %i.ge, %bb.e ], [ %i.fu, %bb.d ]
  switch i32 %i.cl, label %bb.h [
    i32 0, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %Vector3Normalize.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %Vector3Normalize.exit
  store <2 x float> %.fca.0.extract14, ptr %0, align 4
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.fca.1.extract15, ptr %.sroa.423.0..sroa_idx, align 4
  br label %bb.h

bb.h:                                             ; preds = %Vector3Normalize.exit, %bb.g, %bb.f
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %.sroa.013.0.i, ptr %i.gf, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.sroa.617.0.i, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @GetCameraMatrix(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly byval(%struct.Camera3D) align 8 captures(none) %1) local_unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.03.0.copyload = load <2 x float>, ptr %1, align 8 ; 4 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 8 ; 4 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.a, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.b, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.069.0.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload, i64 0 ; 3 uses
  %.sroa.069.4.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload, i64 1 ; 2 uses
  %.sroa.057.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload, i64 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = fsub <2 x float> %.sroa.03.0.copyload, %.sroa.01.0.copyload ; 5 uses
  %i.h = fsub float %.sroa.24.0.copyload, %.sroa.22.0.copyload ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.g, %i.g
  %i.i = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.j = extractelement <2 x float> %i.g, i64 0   ; 2 uses
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.i)
  %i.l = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.k) ; 2 uses
  %sqrt87.i = tail call float @llvm.sqrt.f32(float %i.l)
  %i.m = fcmp oeq float %i.l, 0.000000e+00
  %i.n = fdiv float 1.000000e+00, %sqrt87.i
  %i.o = select i1 %i.m, float 1.000000e+00, float %i.n
  %i.p = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.q = insertelement <2 x float> %i.p, float %i.h, i64 1
  %i.r = insertelement <2 x float> poison, float %i.o, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.t = fmul <2 x float> %i.q, %i.s              ; 4 uses
  %i.u = fmul <2 x float> %i.g, %i.s              ; 2 uses
  %i.v = fneg <2 x float> %i.u
  %i.w = extractelement <2 x float> %i.t, i64 1   ; 4 uses
  %i.x = fneg float %i.w
  %i.y = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.z = insertelement <2 x float> %i.y, float %.sroa.2.0.copyload, i64 1
  %i.aa = fmul <2 x float> %i.z, %i.v
  %i.ab = fmul float %.sroa.057.0.vec.extract.i, %i.x
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.0.0.copyload, <2 x float> %i.t, <2 x float> %i.aa) ; 3 uses
  %i.ad = extractelement <2 x float> %i.u, i64 0  ; 5 uses
  %i.ae = tail call float @llvm.fmuladd.f32(float %.sroa.2.0.copyload, float %i.ad, float %i.ab) ; 3 uses
  %i.af = fmul float %i.ae, %i.ae
  %i.ag = extractelement <2 x float> %i.ac, i64 1 ; 2 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.af)
  %i.ai = extractelement <2 x float> %i.ac, i64 0 ; 2 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.ah) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.aj)
  %i.ak = fcmp oeq float %i.aj, 0.000000e+00
  %i.al = fdiv float 1.000000e+00, %sqrt.i
  %i.am = select i1 %i.ak, float 1.000000e+00, float %i.al ; 2 uses
  %i.an = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.ac, %i.ao           ; 3 uses
  %i.aq = fmul float %i.ae, %i.am                 ; 4 uses
  %i.ar = extractelement <2 x float> %i.ap, i64 0 ; 3 uses
  %i.as = fneg float %i.ar
  %i.at = fneg float %i.aq
  %i.au = fmul float %i.ad, %i.as
  %i.av = fmul float %i.w, %i.at
  %i.aw = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.au, i64 1
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.ap, <2 x float> %i.ax) ; 3 uses
  %i.az = extractelement <2 x float> %i.ap, i64 1 ; 3 uses
  %i.ba = fneg float %i.az
  %i.bb = extractelement <2 x float> %i.t, i64 0  ; 3 uses
  %i.bc = fmul float %i.bb, %i.ba
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.aq, float %i.bc) ; 2 uses
  store float %i.az, ptr %0, align 4, !alias.scope !289
  store float %i.ad, ptr %i.d, align 4, !alias.scope !289
  store float %i.aq, ptr %i.f, align 4, !alias.scope !289
  store <2 x float> %i.ay, ptr %i.c, align 4, !alias.scope !289
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.bb, ptr %i.be, align 4, !alias.scope !289
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ar, ptr %i.bf, align 4, !alias.scope !289
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.bd, ptr %i.bg, align 4, !alias.scope !289
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.w, ptr %i.bh, align 4, !alias.scope !289
  %i.bi = fmul float %.sroa.069.4.vec.extract.i, %i.aq
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.az, float %.sroa.069.0.vec.extract.i, float %i.bi)
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.ar, float %.sroa.24.0.copyload, float %i.bj)
  %i.bl = fneg float %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.bl, ptr %i.bm, align 4, !alias.scope !289
  %foldExtExtBinop6 = fmul <2 x float> %.sroa.03.0.copyload, %i.ay
  %i.bn = extractelement <2 x float> %foldExtExtBinop6, i64 1
  %i.bo = extractelement <2 x float> %i.ay, i64 0
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %.sroa.069.0.vec.extract.i, float %i.bn)
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bd, float %.sroa.24.0.copyload, float %i.bp)
  %i.br = fneg float %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.br, ptr %i.bs, align 4, !alias.scope !289
  %i.bt = fmul float %.sroa.069.4.vec.extract.i, %i.bb
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.ad, float %.sroa.069.0.vec.extract.i, float %i.bt)
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.w, float %.sroa.24.0.copyload, float %i.bu)
  %i.bw = fneg float %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.bw, ptr %i.bx, align 4, !alias.scope !289
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.e, align 4, !alias.scope !289
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define <2 x float> @GetWorldToScreen(<2 x float> %0, float %1, ptr nofree noundef readonly byval(%struct.Camera3D) align 8 captures(none) %2) local_unnamed_addr #44 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8
  %i.c = tail call <2 x float> @GetWorldToScreenEx(<2 x float> %0, float %1, ptr noundef nonnull byval(%struct.Camera3D) align 8 %2, i32 noundef %i.a, i32 noundef %i.b)
  ret <2 x float> %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define <2 x float> @GetWorldToScreenEx(<2 x float> %0, float %1, ptr nofree noundef readonly byval(%struct.Camera3D) align 8 captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #44 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.d = load float, ptr %i.c, align 4
  %i.e = fmul float %i.d, f0x3C8EFA35
  %i.f = fpext float %i.e to double
  %i.g = sitofp i32 %3 to double
  %i.h = sitofp i32 %4 to double
  %i.i = fdiv double %i.g, %i.h
  %i.j = load double, ptr @rlCullDistanceNear, align 8 ; 2 uses
end_hunk_0
