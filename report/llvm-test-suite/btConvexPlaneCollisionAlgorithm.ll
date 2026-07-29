inline.NumInlined: 262
inline.NumDeleted: 79
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionP17btCollisionObjectS4_RK16btDispatcherInfoP16btManifoldResult:bb.a
  %i.jq = fsub float %i.ij, %i.jp                 ; 2 uses
  %i.jr = fmul float %i.jq, %i.jc
  %i.js = call float @llvm.fmuladd.f32(float %i.jb, float %i.jo, float %i.jr)
  %i.jt = call noundef float @llvm.fmuladd.f32(float %i.jd, float %i.jm, float %i.js)
  %i.ju = fadd float %i.je, %i.jt
  %.sroa.3.12.vec.insert.i.i70 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ju, i64 0
  %i.jv = shufflevector <2 x float> %i.iy, <2 x float> %i.iz, <2 x i32> <i32 1, i32 3>
  %i.jw = insertelement <2 x float> poison, float %i.jq, i64 0
  %i.jx = shufflevector <2 x float> %i.jw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jy = fmul <2 x float> %i.jv, %i.jx
  %i.jz = shufflevector <2 x float> %i.iy, <2 x float> %i.iz, <2 x i32> <i32 0, i32 2>
  %i.ka = insertelement <2 x float> poison, float %i.jo, i64 0
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jz, <2 x float> %i.kb, <2 x float> %i.jy)
  %i.kd = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.ke = insertelement <2 x float> %i.kd, float %i.ix, i64 1
  %i.kf = insertelement <2 x float> poison, float %i.jm, i64 0
  %i.kg = shufflevector <2 x float> %i.kf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ke, <2 x float> %i.kg, <2 x float> %i.kc)
  %i.ki = fadd <2 x float> %i.ja, %i.kh
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.kj = load float, ptr %i.j, align 4, !tbaa !33 ; 2 uses
  %i.kk = load float, ptr %i.db, align 4, !tbaa !33 ; 2 uses
  %i.kl = load float, ptr %i.v, align 8, !tbaa !33
  %i.km = load float, ptr %i.de, align 4, !tbaa !33 ; 2 uses
  %i.kn = load float, ptr %i.w, align 8, !tbaa !33
  %i.ko = load <2 x float>, ptr %i.p, align 8, !tbaa !33 ; 2 uses
  %i.kp = load <2 x float>, ptr %i.q, align 8, !tbaa !33 ; 2 uses
  %i.kq = insertelement <2 x float> poison, float %i.kk, i64 0
  %i.kr = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ks = shufflevector <2 x float> %i.ko, <2 x float> %i.kp, <2 x i32> <i32 1, i32 3>
  %i.kt = fmul <2 x float> %i.kr, %i.ks
  %i.ku = shufflevector <2 x float> %i.ko, <2 x float> %i.kp, <2 x i32> <i32 0, i32 2>
  %i.kv = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ku, <2 x float> %i.kw, <2 x float> %i.kt)
  %i.ky = insertelement <2 x float> poison, float %i.kl, i64 0
  %i.kz = insertelement <2 x float> %i.ky, float %i.kn, i64 1
  %i.la = insertelement <2 x float> poison, float %i.km, i64 0
  %i.lb = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kz, <2 x float> %i.lb, <2 x float> %i.kx)
  %i.ld = load float, ptr %i.r, align 8, !tbaa !33
  %i.le = load float, ptr %i.u, align 4, !tbaa !33
  %i.lf = fmul float %i.kk, %i.le
  %i.lg = call float @llvm.fmuladd.f32(float %i.ld, float %i.kj, float %i.lf)
  %i.lh = load float, ptr %i.x, align 8, !tbaa !33
  %i.li = call noundef float @llvm.fmuladd.f32(float %i.lh, float %i.km, float %i.lg)
  %.sroa.3.12.vec.insert.i75 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.li, i64 0
  store <2 x float> %i.lc, ptr %7, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i75, ptr %i.lj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  store <2 x float> %i.ki, ptr %8, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i70, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !44
  %i.lk = load ptr, ptr %5, align 8, !tbaa !8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 32
  %i.lm = load ptr, ptr %i.ll, align 8
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, float noundef %i.iv)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(744)) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN31btConvexPlaneCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef %4) unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %class.btQuaternion, align 16       ; 4 uses
  %6 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !18, !range !22, !noundef !23
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = select i1 %i.e, ptr %2, ptr %1
  %i.g = select i1 %i.e, ptr %1, ptr %2
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %5, align 16, !tbaa !33
  call void @_ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionP17btCollisionObjectS4_RK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef %1, ptr noundef %2, ptr nonnull align 8 poison, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 728
  %i.p = load i32, ptr %i.o, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !20
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 68 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !33 ; 4 uses
  %i.v = tail call noundef float @llvm.fabs.f32(float %i.u)
  %i.w = fcmp ogt float %i.v, f0x3F3504F3
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.y = load float, ptr %i.x, align 4, !tbaa !33 ; 3 uses
  %i.z = fmul nnan float %i.u, %i.u
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.z)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.aa)
  %i.ab = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.ac = fneg float %i.u
  %i.ad = fmul float %i.ab, %i.ac
  %i.ae = fmul float %i.y, %i.ab
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.af = load float, ptr %i.l, align 4, !tbaa !33 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !33 ; 3 uses
  %i.ai = fmul float %i.ah, %i.ah
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ai)
  %sqrt46.i = tail call float @llvm.sqrt.f32(float %i.aj)
  %i.ak = fdiv float 1.000000e+00, %sqrt46.i      ; 2 uses
  %i.al = fneg float %i.ah
  %i.am = fmul float %i.ak, %i.al
  %i.an = fmul float %i.af, %i.ak
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit:         ; preds = %bb.d, %bb.e
  %.sroa.052.0 = phi float [ 0.000000e+00, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.sroa.553.0 = phi float [ %i.ad, %bb.d ], [ %i.an, %bb.e ] ; 3 uses
  %.sroa.854.0 = phi float [ %i.ae, %bb.d ], [ 0.000000e+00, %bb.e ] ; 3 uses
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef float %i.aq(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  %i.as = load float, ptr @gContactBreakingThreshold, align 4, !tbaa !33
  %i.at = fdiv float %i.as, %i.ar                 ; 2 uses
  %i.au = fcmp ogt float %i.at, f0x3EC90FDB
  %storemerge = select i1 %i.au, float f0x3EC90FDB, float %i.at
  %i.av = fmul float %.sroa.553.0, %.sroa.553.0
  %i.aw = tail call float @llvm.fmuladd.f32(float %.sroa.052.0, float %.sroa.052.0, float %i.av)
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %.sroa.854.0, float %.sroa.854.0, float %i.aw)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ax)
  %i.ay = fmul float %storemerge, 5.000000e-01    ; 2 uses
  %i.az = tail call noundef float @sinf(float noundef %i.ay) #9, !tbaa !4
  %i.ba = fdiv float %i.az, %sqrt.i.i.i           ; 2 uses
  %i.bb = fmul float %.sroa.553.0, %i.ba          ; 4 uses
  %i.bc = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = insertelement <2 x float> poison, float %.sroa.854.0, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %.sroa.052.0, i64 1
  %i.bg = fmul <2 x float> %i.bf, %i.bd           ; 5 uses
  %i.bh = tail call noundef float @cosf(float noundef %i.ay) #9, !tbaa !4 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !19 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bm = insertelement <2 x float> poison, float %i.bb, i64 1
  %i.bn = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bo = insertelement <2 x float> %i.bn, float %i.bb, i64 0
  %i.bp = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bs = extractelement <2 x float> %i.bg, i64 1 ; 2 uses
  %i.bt = shufflevector <2 x float> %i.bm, <2 x float> %i.bg, <2 x i32> <i32 3, i32 1>
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %i.bu = phi i32 [ %i.bj, %.lr.ph ], [ %i.dr, %bb.f ]
  %.060 = phi i32 [ 0, %.lr.ph ], [ %i.dq, %bb.f ] ; 2 uses
  %i.bv = uitofp nneg i32 %.060 to float
  %i.bw = sitofp i32 %i.bu to float
  %i.bx = fdiv nnan float f0x40C90FDB, %i.bw
  %i.by = fmul float %i.bx, %i.bv
  %i.bz = fmul float %i.by, 5.000000e-01          ; 2 uses
  %i.ca = tail call noundef float @sinf(float noundef %i.bz) #9, !tbaa !4
  %i.cb = tail call noundef float @cosf(float noundef %i.bz) #9, !tbaa !4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.cc = load <2 x float>, ptr %i.l, align 4, !tbaa !33 ; 4 uses
  %i.cd = load float, ptr %i.t, align 4, !tbaa !33 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.cc, %i.cc
  %i.ce = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cf = extractelement <2 x float> %i.cc, i64 0 ; 2 uses
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cf, float %i.ce)
  %i.ch = tail call noundef float @llvm.fmuladd.f32(float %i.cd, float %i.cd, float %i.cg)
  %sqrt.i.i.i25 = tail call noundef float @llvm.sqrt.f32(float %i.ch)
  %i.ci = fdiv float %i.ca, %sqrt.i.i.i25         ; 2 uses
  %i.cj = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x float> %i.cc, %i.ck           ; 6 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 0 ; 4 uses
  %i.cn = fmul float %i.cd, %i.ci                 ; 8 uses
  %i.co = fneg float %i.cm                        ; 2 uses
  %i.cp = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cq = insertelement <2 x float> %i.cp, float %i.cn, i64 0
  %i.cr = fneg <2 x float> %i.cq
  %i.cs = insertelement <2 x float> %i.cp, float %i.cn, i64 1
  %i.ct = fneg <2 x float> %i.cs                  ; 2 uses
  %7 = fmul float %i.bh, %i.co
  %8 = fmul <2 x float> %i.bq, %i.ct
  %i.cu = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.bo, <2 x float> %8)
  %9 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.bt, <2 x float> %i.cw)
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.bg, <2 x float> %9) ; 3 uses
  %i.cy = extractelement <2 x float> %i.cx, i64 1 ; 3 uses
  %10 = fmul float %i.bs, %i.cm
  %11 = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.bh, float %10)
  %i.cz = extractelement <2 x float> %i.cl, i64 1 ; 3 uses
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.bb, float %11)
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.br, float %i.da) ; 3 uses
  %12 = fneg float %i.cy
  %13 = fneg <2 x float> %i.cx                    ; 2 uses
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.bs, float %7)
  %i.dd = extractelement <2 x float> %i.ct, i64 0
  %14 = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.br, float %i.dc)
  %15 = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.bb, float %14) ; 4 uses
  %i.de = fmul float %i.cb, %15
  %16 = tail call float @llvm.fmuladd.f32(float %i.db, float %i.cm, float %i.de)
  %17 = extractelement <2 x float> %i.cx, i64 0   ; 2 uses
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %i.cn, float %16)
  %19 = tail call float @llvm.fmuladd.f32(float %12, float %i.cz, float %18)
  %20 = fmul float %i.cb, %17
  %21 = tail call float @llvm.fmuladd.f32(float %i.db, float %i.cz, float %20)
  %22 = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.cm, float %21)
  %i.df = fneg float %15
  %23 = tail call float @llvm.fmuladd.f32(float %i.df, float %i.cn, float %22)
  %24 = fmul float %15, %i.co
  %25 = fmul float %i.cb, %i.cy
  %26 = insertelement <2 x float> poison, float %i.db, i64 0
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = insertelement <2 x float> %i.cv, float %i.cn, i64 0
  %i.dh = insertelement <2 x float> poison, float %25, i64 0
  %i.di = insertelement <2 x float> %i.dh, float %24, i64 1
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %27, <2 x float> %i.dg, <2 x float> %i.di)
  %i.dk = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dl = insertelement <2 x float> %i.dk, float %15, i64 0
  %i.dm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dm, <2 x float> %i.dj)
  %i.do = insertelement <2 x float> %i.cl, float %i.cn, i64 1
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %i.do, <2 x float> %i.dn)
  %.sroa.0.0.vec.insert.i32 = insertelement <2 x float> poison, float %19, i64 0
  %.sroa.0.4.vec.insert.i33 = insertelement <2 x float> %.sroa.0.0.vec.insert.i32, float %23, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i33, ptr %6, align 8
  store <2 x float> %i.dp, ptr %i.bl, align 8
  call void @_ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionP17btCollisionObjectS4_RK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef %1, ptr noundef %2, ptr nonnull align 8 poison, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.dq = add nuw nsw i32 %.060, 1                ; 2 uses
  %i.dr = load i32, ptr %i.bi, align 4, !tbaa !19 ; 2 uses
  %i.ds = icmp slt i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.f, label %.loopexit

.loopexit:                                        ; preds = %bb.f, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit, %bb.b
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.du = load i8, ptr %i.dt, align 8, !tbaa !10, !range !22, !noundef !23
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.g, label %_ZN16btManifoldResult20refreshContactPointsEv.exit

bb.g:                                             ; preds = %.loopexit
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 728
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !45
  %.not24 = icmp eq i32 %i.dy, 0
  br i1 %.not24, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dz = load ptr, ptr %i.m, align 8, !tbaa !40  ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 728
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !45
  %.not.i = icmp eq i32 %i.eb, 0
  br i1 %.not.i, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 712
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !48
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !49
  %.not1.i = icmp eq ptr %i.ed, %i.ef             ; 2 uses
  %..i = select i1 %.not1.i, i64 16, i64 80
  %.5.i = select i1 %.not1.i, i64 80, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 %..i
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 %.5.i
  tail call void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(744) %i.dz, ptr noundef nonnull align 4 dereferenceable(64) %i.eg, ptr noundef nonnull align 4 dereferenceable(64) %i.eh)
  br label %_ZN16btManifoldResult20refreshContactPointsEv.exit

_ZN16btManifoldResult20refreshContactPointsEv.exit: ; preds = %.sink.split.i, %bb.h, %.loopexit, %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_ZN31btConvexPlaneCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #5 align 2 {
bb.a:
  ret float 1.000000e+00
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN31btConvexPlaneCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !22
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !50   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !55
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  %i.k = shl nsw i32 %i.g, 1
  %i.l = select i1 %.not.i.i, i32 1, i32 %i.k     ; 4 uses
  %i.m = icmp slt i32 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.o, i32 noundef 16)
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !50
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi i32 [ %.pre.i, %bb.e ], [ %i.g, %bb.d ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.p, %bb.e ], [ null, %bb.d ] ; 8 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56   ; 9 uses
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %i.u = ptrtoaddr ptr %i.t to i64
  %.0.i.i.i8 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.q to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  %i.v = sub i64 %i.u, %.0.i.i.i8
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond10 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond10, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x ptr>, ptr %i.x, align 8, !tbaa !57
  %wide.load9 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x ptr> %wide.load, ptr %i.w, align 8, !tbaa !57
  store <2 x ptr> %wide.load9, ptr %i.z, align 8, !tbaa !57
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.prol
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !57
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !57
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !61

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ae = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !57
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !57
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !57
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.1
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !57
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.2
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !57
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !57
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !63

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load i8, ptr %i.as, align 8, !tbaa !64, !range !22, !noundef !23
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.f, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.t)
  %.pre2.pre.pre.i = load i32, ptr %i.f, align 4, !tbaa !50
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.q, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.f ], [ %i.q, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.av, align 8, !tbaa !64
  store ptr %.0.i.i.i, ptr %i.s, align 8, !tbaa !56
  store i32 %i.l, ptr %i.h, align 8, !tbaa !55
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !57
end_hunk_0
