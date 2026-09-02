Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ComputeUVMappingProcess?download=true
inline.NumInlined: 245
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp23ComputeUVMappingProcess19ComputePlaneMappingEP6aiMeshRK10aiVector3tIfEPS4_:bb.a
  %i.g = fmul float %i.f, 0.000000e+00            ; 2 uses
  %i.h = fadd float %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load float, ptr %i.i, align 4            ; 3 uses
  %i.k = tail call noundef float @llvm.fmuladd.f32(float %i.j, float 0.000000e+00, float %i.h)
  %i.l = fcmp ult float %i.k, f0x3F733333
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4
  call void @_ZN6Assimp14FindMeshCenterEP6aiMeshR10aiVector3tIfES4_S4_(ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %7)
  %i.o = load <2 x float>, ptr %i.m, align 4
  %i.p = load <2 x float>, ptr %i.n, align 4      ; 2 uses
  %i.q = fsub <2 x float> %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.y = load <2 x float>, ptr %i.x, align 4
  %i.z = fsub <2 x float> %i.y, %i.p
  %i.aa = fdiv <2 x float> %i.z, %i.q
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ab, ptr %i.w, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store float 0.000000e+00, ptr %i.ac, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load i32, ptr %i.r, align 4
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp samesign ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %bb.c, label %.loopexit, !llvm.loop !15

bb.d:                                             ; preds = %bb.a
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.d, float 0.000000e+00, float %i.f)
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %i.j, float 0.000000e+00, float %i.ag)
  %i.ai = fcmp ult float %i.ah, f0x3F733333
  br i1 %i.ai, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN6Assimp14FindMeshCenterEP6aiMeshR10aiVector3tIfES4_S4_(ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %7)
  %i.aj = load float, ptr %7, align 8
  %i.ak = load float, ptr %6, align 8
  %i.al = load float, ptr %i.c, align 8
  %i.am = load float, ptr %i.b, align 8
  %i.an = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.al, i64 1
  %i.ap = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.am, i64 1 ; 2 uses
  %i.ar = fsub <2 x float> %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %.not62 = icmp eq i32 %i.at, 0
  br i1 %.not62, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph57, %bb.f
  %indvars.iv68 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next69, %bb.f ] ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.av, i64 %indvars.iv68 ; 2 uses
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv68 ; 2 uses
  %i.ay = load float, ptr %i.aw, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.ba, i64 1
  %i.bd = fsub <2 x float> %i.bc, %i.aq
  %i.be = fdiv <2 x float> %i.bd, %i.ar
  store <2 x float> %i.be, ptr %i.ax, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store float 0.000000e+00, ptr %i.bf, align 4
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %i.bg = load i32, ptr %i.as, align 4
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp samesign ult i64 %indvars.iv.next69, %i.bh
  br i1 %i.bi, label %bb.f, label %.loopexit, !llvm.loop !16

bb.g:                                             ; preds = %bb.d
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.d, float 0.000000e+00, float %i.g)
  %i.bk = fadd float %i.j, %i.bj
  %i.bl = fcmp ult float %i.bk, f0x3F733333
  br i1 %i.bl, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN6Assimp14FindMeshCenterEP6aiMeshR10aiVector3tIfES4_S4_(ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %7)
  %i.bm = load <2 x float>, ptr %7, align 8
  %i.bn = load <2 x float>, ptr %6, align 8       ; 2 uses
  %i.bo = fsub <2 x float> %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %.not63 = icmp eq i32 %i.bq, 0
  br i1 %.not63, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph59, %bb.i
  %indvars.iv71 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next72, %bb.i ] ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw [12 x i8], ptr %i.bs, i64 %indvars.iv71
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv71 ; 2 uses
  %i.bv = load <2 x float>, ptr %i.bt, align 4
  %i.bw = fsub <2 x float> %i.bv, %i.bn
  %i.bx = fdiv <2 x float> %i.bw, %i.bo
  store <2 x float> %i.bx, ptr %i.bu, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store float 0.000000e+00, ptr %i.by, align 4
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %i.bz = load i32, ptr %i.bp, align 4
  %i.ca = zext i32 %i.bz to i64
  %i.cb = icmp samesign ult i64 %indvars.iv.next72, %i.ca
  br i1 %i.cb, label %bb.i, label %.loopexit, !llvm.loop !17

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 60
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 12
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %4, align 16
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 24
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ci, align 16
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store float 1.000000e+00, ptr %i.cl, align 16
  %i.cm = call noundef nonnull align 4 dereferenceable(36) ptr @_ZN12aiMatrix3x3tIfE12FromToMatrixERK10aiVector3tIfES4_RS0_(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) @_ZN12_GLOBAL__N_111base_axis_yE, ptr noundef nonnull align 4 dereferenceable(36) %4) ; 0 uses
  %i.cn = load float, ptr %i.cg, align 8
  %i.co = load float, ptr %i.cj, align 4
  %i.cp = load float, ptr %i.cl, align 16
  %i.cq = load <2 x float>, ptr %4, align 16
  store <2 x float> %i.cq, ptr %8, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store float %i.cn, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cr = load <2 x float>, ptr %i.ch, align 4
  store <2 x float> %i.cr, ptr %.sroa.7.0..sroa_idx.i, align 8
  store float %i.co, ptr %i.cc, align 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 28
  store float 0.000000e+00, ptr %.sroa.10.0..sroa_idx.i, align 4
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.cs = load <2 x float>, ptr %i.ck, align 8
  store <2 x float> %i.cs, ptr %.sroa.11.0..sroa_idx.i, align 8
  store float %i.cp, ptr %i.cd, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cf, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN6Assimp25FindMeshCenterTransformedEP6aiMeshR10aiVector3tIfES4_S4_RK12aiMatrix4x4tIfE(ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(64) %8)
  %i.ct = load float, ptr %7, align 8
  %i.cu = load float, ptr %6, align 8
  %i.cv = load float, ptr %i.c, align 8
  %i.cw = load float, ptr %i.b, align 8
  %i.cx = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cv, i64 1
  %i.cz = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.cw, i64 1 ; 2 uses
  %i.db = fsub <2 x float> %i.cy, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4
  %.not64 = icmp eq i32 %i.dd, 0
  br i1 %.not64, label %._crit_edge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.df = load <2 x float>, ptr %8, align 8       ; 2 uses
  %i.dg = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i, align 8 ; 2 uses
  %i.dh = load <2 x float>, ptr %.sroa.11.0..sroa_idx.i, align 8 ; 2 uses
  %i.di = load <2 x float>, ptr %i.cd, align 8    ; 2 uses
  %i.dj = shufflevector <2 x float> %i.dg, <2 x float> %i.di, <2 x i32> <i32 0, i32 2>
  %i.dk = shufflevector <2 x float> %i.df, <2 x float> %i.dh, <2 x i32> <i32 0, i32 2>
  %i.dl = shufflevector <2 x float> %i.df, <2 x float> %i.dh, <2 x i32> <i32 1, i32 3>
  %i.dm = shufflevector <2 x float> %i.dg, <2 x float> %i.di, <2 x i32> <i32 1, i32 3>
  br label %bb.k

._crit_edge:                                      ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.loopexit

bb.k:                                             ; preds = %.lr.ph61, %bb.k
  %indvars.iv74 = phi i64 [ 0, %.lr.ph61 ], [ %indvars.iv.next75, %bb.k ] ; 3 uses
  %i.dn = load ptr, ptr %i.de, align 8
  %i.do = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %indvars.iv74 ; 3 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %10 = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dp = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv74 ; 2 uses
  %11 = load float, ptr %9, align 4
  %12 = load float, ptr %i.do, align 4
  %13 = load float, ptr %10, align 4
  %14 = insertelement <2 x float> poison, float %11, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x float> %15, %i.dl
  %16 = insertelement <2 x float> poison, float %12, i64 0
  %i.dr = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.dr, <2 x float> %i.dq)
  %17 = insertelement <2 x float> poison, float %13, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %18, <2 x float> %i.ds)
  %i.du = fadd <2 x float> %i.dt, %i.dm
  %i.dv = fsub <2 x float> %i.du, %i.da
  %i.dw = fdiv <2 x float> %i.dv, %i.db
  store <2 x float> %i.dw, ptr %i.dp, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store float 0.000000e+00, ptr %i.dx, align 4
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.dy = load i32, ptr %i.dc, align 4
  %i.dz = zext i32 %i.dy to i64
  %i.ea = icmp samesign ult i64 %indvars.iv.next75, %i.dz
  br i1 %i.ea, label %bb.k, label %._crit_edge, !llvm.loop !18

.loopexit:                                        ; preds = %bb.c, %bb.f, %bb.i, %bb.b, %bb.e, %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp23ComputeUVMappingProcess17ComputeBoxMappingEP6aiMeshP10aiVector3tIfE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull @.str)
  ret void
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp23ComputeUVMappingProcess7ExecuteEP7aiScene(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %2 = alloca %"class.std::__cxx11::list", align 8 ; 25 uses
  %3 = alloca %"struct.Assimp::ComputeUVMappingProcess::MappingInfo", align 4 ; 9 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull @.str.3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.d = load i32, ptr %1, align 8
  %i.e = and i32 %i.d, 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #19
  br label %bb.bs

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %2, ptr %i.h, align 8
  store ptr %2, ptr %2, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %.not129 = icmp eq i32 %i.k, 0
  br i1 %.not129, label %._crit_edge128, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.f

._crit_edge128:                                   ; preds = %.loopexit119, %bb.e
  %i.s = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bo unwind label %bb.bq

bb.f:                                             ; preds = %.lr.ph127, %.loopexit119
  %indvars.iv148 = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next149, %.loopexit119 ] ; 4 uses
  %i.t = load ptr, ptr %2, align 8                ; 2 uses
  %.not8.i.i = icmp eq ptr %i.t, %2
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listIN6Assimp23ComputeUVMappingProcess11MappingInfoESaIS3_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.t, %bb.f ] ; 2 uses
  %i.u = load ptr, ptr %.09.i.i, align 8          ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 40) #21
  %.not.i.i = icmp eq ptr %i.u, %2
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIN6Assimp23ComputeUVMappingProcess11MappingInfoESaIS3_EE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !19

_ZNSt7__cxx114listIN6Assimp23ComputeUVMappingProcess11MappingInfoESaIS3_EE5clearEv.exit: ; preds = %.lr.ph.i.i, %bb.f
  store ptr %2, ptr %i.h, align 8
  store ptr %2, ptr %2, align 8
  store i64 0, ptr %i.i, align 8
  %i.v = load ptr, ptr %i.l, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv148
  %i.x = load ptr, ptr %i.w, align 8              ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %.preheader118

.preheader118:                                    ; preds = %_ZNSt7__cxx114listIN6Assimp23ComputeUVMappingProcess11MappingInfoESaIS3_EE5clearEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8
  %.not130 = icmp eq i32 %i.aa, 0
  br i1 %.not130, label %.loopexit119, label %.lr.ph124

bb.g:                                             ; preds = %_ZNSt7__cxx114listIN6Assimp23ComputeUVMappingProcess11MappingInfoESaIS3_EE5clearEv.exit
  %i.ab = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ab, ptr noundef nonnull @.str.5)
          to label %.loopexit119 unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.lr.ph124:                                        ; preds = %.preheader118, %.critedge
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %.critedge ], [ 0, %.preheader118 ] ; 2 uses
  %i.ad = load ptr, ptr %i.x, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv145
  %i.af = load ptr, ptr %i.ae, align 8            ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(13) @.str.6) #22
  %.not80 = icmp eq i32 %i.ah, 0
  br i1 %.not80, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph124
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1048
  %i.aj = load ptr, ptr %i.ai, align 8            ; 7 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %.not81 = icmp eq i32 %i.ak, 0
  br i1 %.not81, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  br i1 %i.al, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 1028
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = invoke ptr @aiTextureTypeToString(i32 noundef %i.an)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 1032
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = load i32, ptr %i.aj, align 4
  %i.as = invoke noundef ptr @_ZN6Assimp19MappingTypeToStringE16aiTextureMapping(i32 noundef %i.ar)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.at = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.7, ptr noundef %i.ao, i32 noundef %i.aq, ptr noundef %i.as) #19 ; 0 uses
  %i.au = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6Assimp6Logger4infoIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.au, ptr noundef nonnull align 1 dereferenceable(1024) %i.a)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.r:                                             ; preds = %bb.p, %bb.l
  %i.aw = load i32, ptr %i.aj, align 4
  %i.ax = icmp eq i32 %i.aw, 5
  br i1 %i.ax, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ay = load i32, ptr %i.aj, align 4            ; 2 uses
  store i32 %i.ay, ptr %3, align 4
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.m, align 4
  store float 0.000000e+00, ptr %i.o, align 4
  store i32 0, ptr %i.p, align 4
  %i.az = load i32, ptr %i.z, align 8             ; 2 uses
  %.not131 = icmp eq i32 %i.az, 0
  br i1 %.not131, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.ba = load ptr, ptr %i.x, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 1028
  %i.bc = load i32, ptr %i.bb, align 4
end_hunk_0
