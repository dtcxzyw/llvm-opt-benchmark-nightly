inline.NumInlined: 685
inline.NumDeleted: 224
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp3LWO12AnimResolver20UpdateAnimRangeSetupEv:bb.a
.lr.ph125:                                        ; preds = %bb.ab
  %i.di = uitofp i32 %.0129 to float
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph125, %bb.ae
  %.sroa.074.1123 = phi ptr [ %.sroa.074.0127, %.lr.ph125 ], [ %i.dq, %bb.ae ] ; 4 uses
  %i.dj = load double, ptr %.sroa.074.1123, align 8
  %i.dk = fsub double %i.dj, %.057128
  store double %i.dk, ptr %.sroa.074.1123, align 8
  %i.dl = load i32, ptr %i.y, align 8
  %i.dm = icmp eq i32 %i.dl, 4
  br i1 %i.dm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.074.1123, i64 8 ; 2 uses
  %i.do = load float, ptr %i.dn, align 8
  %i.dp = call float @llvm.fmuladd.f32(float %i.di, float %i.x, float %i.do)
  store float %i.dp, ptr %i.dn, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.dq = getelementptr inbounds i8, ptr %.sroa.074.1123, i64 -40 ; 3 uses
  %i.dr = icmp ult ptr %.sroa.0.0, %i.dq
  br i1 %i.dr, label %bb.ac, label %._crit_edge126, !llvm.loop !13

._crit_edge126:                                   ; preds = %bb.ae, %bb.ab
  %.sroa.074.1.lcssa = phi ptr [ %.sroa.074.0127, %bb.ab ], [ %i.dq, %bb.ae ]
  %i.ds = fadd double %i.n, %.057128              ; 2 uses
  %i.dt = add i32 %.0129, 1
  %i.du = fcmp ugt double %i.ds, %i.cs
  br i1 %i.du, label %.loopexit, label %bb.y, !llvm.loop !14

.loopexit:                                        ; preds = %._crit_edge126, %._crit_edge, %bb.d, %bb.c, %bb.b
  %.sroa.084.0 = load ptr, ptr %.sroa.084.0134, align 8 ; 2 uses
  %i.dv = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %.not = icmp eq ptr %.sroa.084.0, %i.dv
  br i1 %.not, label %._crit_edge137, label %bb.b, !llvm.loop !15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZN6Assimp3LWO12AnimResolver15ExtractBindPoseER12aiMatrix4x4tIfE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(64) initializes((0, 64)) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, %i.a
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float 1.000000e+00, ptr %1, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float 1.000000e+00, ptr %.sroa.5192.0..sroa_idx, align 4
  %.sroa.6193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6193.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8194.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load float, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0182.0 = phi float [ 0.000000e+00, %bb.c ], [ %i.i, %bb.d ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.k, null
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load float, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.5183.0 = phi float [ 0.000000e+00, %bb.e ], [ %i.o, %bb.f ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.q, null
  br i1 %.not12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load float, ptr %i.t, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.8184.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not13 = icmp eq ptr %i.w, null
  br i1 %.not13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load float, ptr %i.z, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0188.0 = phi float [ 0.000000e+00, %bb.i ], [ %i.aa, %bb.j ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not14 = icmp eq ptr %i.ac, null
  br i1 %.not14, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load float, ptr %i.af, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.5189.0 = phi float [ 0.000000e+00, %bb.k ], [ %i.ag, %bb.l ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not15 = icmp eq ptr %i.ai, null
  br i1 %.not15, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load float, ptr %i.al, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.8190.0 = phi float [ 0.000000e+00, %bb.m ], [ %i.am, %bb.n ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not16 = icmp eq ptr %i.ao, null
  br i1 %.not16, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load float, ptr %i.ar, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.0185.0 = phi float [ 1.000000e+00, %bb.o ], [ %i.as, %bb.p ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not17 = icmp eq ptr %i.au, null
  br i1 %.not17, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load float, ptr %i.ax, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.5186.0 = phi float [ 1.000000e+00, %bb.q ], [ %i.ay, %bb.r ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not18 = icmp eq ptr %i.ba, null
  br i1 %.not18, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load float, ptr %i.bd, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.8187.0 = phi float [ 1.000000e+00, %bb.s ], [ %i.be, %bb.t ] ; 2 uses
  %i.bf = tail call noundef float @cosf(float noundef %.sroa.8190.0) #16 ; 8 uses
  %i.bg = tail call noundef float @sinf(float noundef %.sroa.8190.0) #16 ; 5 uses
  %i.bh = fneg float %i.bg                        ; 4 uses
  %2 = insertelement <4 x float> poison, float %.sroa.0182.0, i64 0
  %3 = fadd float %.sroa.0182.0, 0.000000e+00     ; 4 uses
  %4 = insertelement <2 x float> poison, float %3, i64 0
  %5 = fadd float %.sroa.5183.0, 0.000000e+00     ; 4 uses
  %i.bi = tail call noundef float @cosf(float noundef %.sroa.5189.0) #16 ; 8 uses
  %i.bj = tail call noundef float @sinf(float noundef %.sroa.5189.0) #16 ; 6 uses
  %i.bk = fneg float %i.bj                        ; 3 uses
  %i.bl = tail call noundef float @cosf(float noundef %.sroa.0188.0) #16 ; 5 uses
  %i.bm = tail call noundef float @sinf(float noundef %.sroa.0188.0) #16 ; 4 uses
  %i.bn = fneg float %i.bm                        ; 2 uses
  %i.bo = fadd float %i.bl, 0.000000e+00
  %.scalar = fadd float %i.bm, 0.000000e+00
  %i.bp = insertelement <4 x float> <float 0.000000e+00, float poison, float 1.000000e+00, float 0.000000e+00>, float %.scalar, i64 1
  %i.bq = insertelement <4 x float> %2, float %i.bl, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %.sroa.5183.0, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %i.bm, i64 3
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> zeroinitializer, <4 x float> %i.bp) ; 4 uses
  %i.bu = extractelement <4 x float> %i.bt, i64 3
  %i.bv = fadd float %i.bl, %i.bu
  %i.bw = extractelement <4 x float> %i.bt, i64 0 ; 3 uses
  %i.bx = fmul float %i.bw, 0.000000e+00          ; 2 uses
  %i.by = fmul float %i.bw, %i.bi
  %i.bz = fmul float %i.bw, %i.bk
  %i.ca = extractelement <4 x float> %i.bt, i64 2 ; 3 uses
  %i.cb = fmul float %i.ca, %i.bi
  %i.cc = fmul float %i.ca, %i.bk
  %i.cd = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.ce = insertelement <4 x float> %i.cd, float %.sroa.8184.0, i64 1
  %i.cf = insertelement <4 x float> %i.ce, float %i.bn, i64 2
  %i.cg = insertelement <4 x float> %i.cf, float %.sroa.0182.0, i64 3
  %i.ch = shufflevector <4 x float> %i.bt, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 5, i32 poison, i32 1>
  %i.ci = insertelement <4 x float> %i.ch, float %i.bo, i64 2
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> zeroinitializer, <4 x float> %i.ci) ; 5 uses
  %i.ck = extractelement <4 x float> %i.cj, i64 0
  %i.cl = extractelement <4 x float> %i.cj, i64 1 ; 3 uses
  %i.cm = fmul float %i.cl, 0.000000e+00          ; 2 uses
  %i.cn = fmul float %i.cl, %i.bi
  %i.co = fmul float %i.cl, %i.bk
  %i.cp = extractelement <4 x float> %i.cj, i64 2
  %i.cq = tail call float @llvm.fmuladd.f32(float %.sroa.0182.0, float 0.000000e+00, float %i.cp) ; 4 uses
  %i.cr = fadd float %i.bx, %i.cq
  %6 = extractelement <4 x float> %i.cj, i64 3    ; 4 uses
  %7 = tail call float @llvm.fmuladd.f32(float %6, float 0.000000e+00, float %i.cr)
  %8 = tail call float @llvm.fmuladd.f32(float %3, float 0.000000e+00, float %7) ; 3 uses
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cq, float 0.000000e+00, float %i.bz)
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cq, float 0.000000e+00, float %i.bx)
  %i.cu = tail call float @llvm.fmuladd.f32(float %6, float 0.000000e+00, float %i.ct)
  %9 = fadd float %3, %i.cu                       ; 4 uses
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.bl, float 0.000000e+00, float 0.000000e+00) ; 2 uses
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.bn, float 0.000000e+00, float %i.cv) ; 2 uses
  %i.cx = tail call float @llvm.fmuladd.f32(float %.sroa.5183.0, float 0.000000e+00, float %i.ck) ; 4 uses
  %i.cy = tail call float @llvm.fmuladd.f32(float %.sroa.5183.0, float 0.000000e+00, float %i.cw) ; 4 uses
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float 0.000000e+00, float %i.cb)
  %10 = tail call float @llvm.fmuladd.f32(float %i.cq, float 0.000000e+00, float %i.by)
  %11 = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.cx, float %i.cz)
  %i.da = tail call float @llvm.fmuladd.f32(float %i.bj, float %6, float %10)
  %12 = insertelement <4 x float> poison, float %3, i64 0
  %13 = insertelement <4 x float> %12, float %i.bj, i64 1
  %14 = insertelement <4 x float> %13, float %i.bi, i64 2
  %15 = insertelement <4 x float> %14, float %5, i64 3
  %16 = insertelement <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float poison>, float %i.da, i64 0
  %17 = insertelement <4 x float> %16, float %11, i64 3
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %15, <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %17) ; 3 uses
  %i.db = extractelement <4 x float> %18, i64 0   ; 2 uses
  %19 = fmul float %i.bg, %i.db
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.bf, float %8, float %19)
  %i.dd = fmul float %i.db, 0.000000e+00
  %i.de = tail call float @llvm.fmuladd.f32(float %i.bi, float %6, float %i.cs)
  %20 = insertelement <2 x float> %4, float %8, i64 1
  %21 = insertelement <2 x float> poison, float %i.de, i64 0
  %22 = insertelement <2 x float> %21, float %i.dd, i64 1
  %23 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> zeroinitializer, <2 x float> %22) ; 2 uses
  %24 = extractelement <2 x float> %23, i64 0     ; 4 uses
  %i.df = tail call float @llvm.fmuladd.f32(float %24, float 0.000000e+00, float %i.dc)
  %i.dg = tail call float @llvm.fmuladd.f32(float %9, float 0.000000e+00, float %i.df)
  %25 = insertelement <4 x float> <float poison, float -0.000000e+00, float 0.000000e+00, float poison>, float %i.bf, i64 0
  %26 = insertelement <4 x float> %25, float %i.bg, i64 3
  %27 = fmul <4 x float> %26, %18                 ; 3 uses
  %28 = extractelement <4 x float> %27, i64 0
  %29 = tail call float @llvm.fmuladd.f32(float %i.bh, float %8, float %28)
  %i.dh = tail call float @llvm.fmuladd.f32(float %24, float 0.000000e+00, float %29)
  %i.di = tail call float @llvm.fmuladd.f32(float %9, float 0.000000e+00, float %i.dh)
  %30 = extractelement <2 x float> %23, i64 1     ; 2 uses
  %31 = fadd float %24, %30
  %32 = tail call float @llvm.fmuladd.f32(float %9, float 0.000000e+00, float %31)
  %33 = tail call float @llvm.fmuladd.f32(float %24, float 0.000000e+00, float %30)
  %34 = fadd float %9, %33
  %35 = fsub float %i.cv, %i.bm
  %36 = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %37 = insertelement <4 x float> %36, float %i.cy, i64 0
  %38 = insertelement <4 x float> %37, float %i.cw, i64 2
  %39 = fadd <4 x float> %38, <float -0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison> ; 4 uses
  %40 = shufflevector <4 x float> %39, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %41 = fmul float %i.ca, 0.000000e+00            ; 2 uses
  %42 = fadd float %41, %i.cy
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.cx, float 0.000000e+00, float %42)
  %i.dk = tail call float @llvm.fmuladd.f32(float %5, float 0.000000e+00, float %i.dj) ; 3 uses
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.cy, float 0.000000e+00, float %i.cc)
  %i.dm = insertelement <4 x float> poison, float %41, i64 0
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> %39, <4 x i32> <i32 0, i32 6, i32 poison, i32 poison>
  %43 = shufflevector <4 x float> %i.dn, <4 x float> %27, <4 x i32> <i32 0, i32 1, i32 6, i32 5>
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %40, <4 x float> zeroinitializer, <4 x float> %43) ; 4 uses
  %i.dp = extractelement <4 x float> %i.do, i64 0
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.cx, float 0.000000e+00, float %i.dp)
  %i.dr = fadd float %5, %i.dq                    ; 4 uses
  %i.ds = extractelement <4 x float> %i.do, i64 1
  %i.dt = fadd float %i.ds, 0.000000e+00          ; 3 uses
  %i.du = extractelement <4 x float> %i.do, i64 2
  %i.dv = extractelement <4 x float> %39, i64 1   ; 3 uses
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.dv, float %i.du)
  %i.dx = fadd float %i.dw, 0.000000e+00          ; 3 uses
  %i.dy = extractelement <4 x float> %i.do, i64 3
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.dv, float %i.dy)
  %i.ea = fadd float %i.dz, 0.000000e+00          ; 4 uses
  %i.eb = extractelement <4 x float> %39, i64 2
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.eb, float 0.000000e+00, float 0.000000e+00)
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.dv, float 0.000000e+00, float %i.ec)
  %i.ee = fadd float %i.ed, 1.000000e+00          ; 4 uses
  %44 = extractelement <4 x float> %27, i64 3
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.dk, float %44)
  %45 = extractelement <4 x float> %18, i64 3     ; 2 uses
  %i.eg = fmul float %45, 0.000000e+00
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.cx, float %i.dl)
  %i.ei = insertelement <2 x float> poison, float %5, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.dk, i64 1
  %i.ek = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.el = insertelement <2 x float> %i.ek, float %i.eg, i64 1
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> zeroinitializer, <2 x float> %i.el) ; 5 uses
  %i.en = extractelement <2 x float> %i.em, i64 0 ; 2 uses
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.en, float 0.000000e+00, float %i.ef)
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.dr, float 0.000000e+00, float %i.eo)
  %i.eq = fmul float %i.bf, %45
  %i.er = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.dk, float %i.eq)
  %i.es = tail call float @llvm.fmuladd.f32(float %i.en, float 0.000000e+00, float %i.er)
  %i.et = tail call float @llvm.fmuladd.f32(float %i.dr, float 0.000000e+00, float %i.es)
  %shift = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.em, %shift
  %i.eu = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ev = fadd float %.sroa.8184.0, 0.000000e+00  ; 4 uses
  %i.ew = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.ex = insertelement <4 x float> %i.ew, float %i.dr, i64 0
  %i.ey = insertelement <4 x float> %i.ex, float %.sroa.8184.0, i64 2
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.fa = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fb = insertelement <4 x float> %i.fa, float %i.eu, i64 0
  %i.fc = insertelement <4 x float> %i.fb, float %i.bv, i64 2
  %i.fd = insertelement <4 x float> %i.fc, float %35, i64 3
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ez, <4 x float> zeroinitializer, <4 x float> %i.fd) ; 4 uses
  %i.ff = extractelement <4 x float> %i.fe, i64 1
  %i.fg = fadd float %i.dr, %i.ff
  %i.fh = extractelement <4 x float> %i.fe, i64 3 ; 4 uses
  %i.fi = fadd float %i.cm, %i.fh
  %i.fj = extractelement <4 x float> %i.fe, i64 2 ; 4 uses
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.fj, float 0.000000e+00, float %i.fi)
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.ev, float 0.000000e+00, float %i.fk) ; 3 uses
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.fh, float 0.000000e+00, float %i.cn)
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.fj, float %i.fm)
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.ev, float 0.000000e+00, float %i.fn) ; 3 uses
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.fh, float 0.000000e+00, float %i.co)
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fh, float 0.000000e+00, float %i.cm)
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.fj, float 0.000000e+00, float %i.fq)
  %i.fs = fadd float %i.ev, %i.fr                 ; 4 uses
  %i.ft = fmul float %i.bg, %i.fo
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.fl, float %i.ft)
  %i.fv = fmul float %i.fo, 0.000000e+00
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.fj, float %i.fp)
  %i.fx = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.fy = insertelement <2 x float> %i.fx, float %i.fl, i64 1
  %i.fz = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.ga = insertelement <2 x float> %i.fz, float %i.fv, i64 1
  %i.gb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> zeroinitializer, <2 x float> %i.ga) ; 2 uses
  %i.gc = extractelement <2 x float> %i.gb, i64 0 ; 4 uses
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.gc, float 0.000000e+00, float %i.fu)
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.fs, float 0.000000e+00, float %i.gd)
  %i.gf = fmul float %i.bf, %i.fo
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.fl, float %i.gf)
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.gc, float 0.000000e+00, float %i.gg)
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.fs, float 0.000000e+00, float %i.gh)
  %i.gj = extractelement <2 x float> %i.gb, i64 1 ; 2 uses
  %i.gk = fadd float %i.gc, %i.gj
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.fs, float 0.000000e+00, float %i.gk)
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gc, float 0.000000e+00, float %i.gj)
  %i.gn = fadd float %i.fs, %i.gm
  %i.go = fmul float %i.bg, %i.dx
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.dt, float %i.go)
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.ea, float 0.000000e+00, float %i.gp)
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.ee, float 0.000000e+00, float %i.gq) ; 2 uses
  %i.gs = fmul float %i.bf, %i.dx
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.dt, float %i.gs)
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.ea, float 0.000000e+00, float %i.gt)
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.ee, float 0.000000e+00, float %i.gu)
  %i.gw = fmul float %i.dx, 0.000000e+00
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.dt, float 0.000000e+00, float %i.gw) ; 2 uses
  %i.gy = fadd float %i.ea, %i.gx
  %i.gz = tail call float @llvm.fmuladd.f32(float %i.ee, float 0.000000e+00, float %i.gy) ; 3 uses
  %i.ha = tail call float @llvm.fmuladd.f32(float %i.ea, float 0.000000e+00, float %i.gx)
  %i.hb = fadd float %i.ee, %i.ha                 ; 2 uses
  %i.hc = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.sroa.5186.0, i64 1 ; 4 uses
  %i.hd = insertelement <2 x float> poison, float %i.di, i64 0
  %i.he = shufflevector <2 x float> %i.hc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.hf = shufflevector <2 x float> %i.hd, <2 x float> poison, <4 x i32> zeroinitializer
  %i.hg = fmul <4 x float> %i.he, %i.hf
  %i.hh = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.sroa.0185.0, i64 0 ; 3 uses
  %i.hi = insertelement <4 x float> poison, float %i.dg, i64 0
  %i.hj = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hh, <4 x float> %i.hj, <4 x float> %i.hg)
  %i.hl = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %.sroa.8187.0, i64 2 ; 3 uses
  %i.hm = insertelement <4 x float> poison, float %32, i64 0
  %i.hn = shufflevector <4 x float> %i.hm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ho = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hl, <4 x float> %i.hn, <4 x float> %i.hk)
  %i.hp = insertelement <4 x float> poison, float %34, i64 0
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hq, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ho)
  store <4 x float> %i.hr, ptr %1, align 4
  %.sroa.15100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hs = insertelement <2 x float> poison, float %i.et, i64 0
  %i.ht = shufflevector <2 x float> %i.hc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.hu = shufflevector <2 x float> %i.hs, <2 x float> poison, <4 x i32> zeroinitializer
  %i.hv = fmul <4 x float> %i.ht, %i.hu
  %i.hw = insertelement <4 x float> poison, float %i.ep, i64 0
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hh, <4 x float> %i.hx, <4 x float> %i.hv)
  %i.hz = shufflevector <4 x float> %i.fe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ia = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hl, <4 x float> %i.hz, <4 x float> %i.hy)
  %i.ib = insertelement <4 x float> poison, float %i.fg, i64 0
  %i.ic = shufflevector <4 x float> %i.ib, <4 x float> poison, <4 x i32> zeroinitializer
  %i.id = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ic, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ia)
  store <4 x float> %i.id, ptr %.sroa.15100.0..sroa_idx, align 4
  %.sroa.27104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ie = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.if = shufflevector <2 x float> %i.hc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.ig = shufflevector <2 x float> %i.ie, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ih = fmul <4 x float> %i.if, %i.ig
  %i.ii = insertelement <4 x float> poison, float %i.ge, i64 0
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ik = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hh, <4 x float> %i.ij, <4 x float> %i.ih)
  %i.il = insertelement <4 x float> poison, float %i.gl, i64 0
  %i.im = shufflevector <4 x float> %i.il, <4 x float> poison, <4 x i32> zeroinitializer
  %i.in = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hl, <4 x float> %i.im, <4 x float> %i.ik)
  %i.io = insertelement <4 x float> poison, float %i.gn, i64 0
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ip, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.in)
  store <4 x float> %i.iq, ptr %.sroa.27104.0..sroa_idx, align 4
  %.sroa.39108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ir = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.is = shufflevector <2 x float> %i.ir, <2 x float> poison, <2 x i32> zeroinitializer
  %i.it = fmul <2 x float> %i.hc, %i.is           ; 2 uses
  %i.iu = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.0185.0, i64 0
  %i.iv = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.iw = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ix = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iu, <2 x float> %i.iw, <2 x float> %i.it)
  %i.iy = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.iz = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ja = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iz, <2 x float> zeroinitializer, <2 x float> %i.ix)
  %i.jb = insertelement <2 x float> poison, float %i.hb, i64 0 ; 2 uses
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jc, <2 x float> zeroinitializer, <2 x float> %i.ja)
  %i.je = extractelement <2 x float> %i.it, i64 0
  %i.jf = tail call float @llvm.fmuladd.f32(float %i.gr, float 0.000000e+00, float %i.je) ; 2 uses
  %i.jg = tail call float @llvm.fmuladd.f32(float %.sroa.8187.0, float %i.gz, float %i.jf)
  %i.jh = insertelement <2 x float> %i.jb, float %i.gz, i64 1
  %i.ji = insertelement <2 x float> poison, float %i.jg, i64 0
  %i.jj = insertelement <2 x float> %i.ji, float %i.jf, i64 1
  %i.jk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jh, <2 x float> zeroinitializer, <2 x float> %i.jj) ; 2 uses
  %i.jl = extractelement <2 x float> %i.jk, i64 1
  %i.jm = fadd float %i.hb, %i.jl
  store <2 x float> %i.jd, ptr %.sroa.39108.0..sroa_idx, align 4
  %.sroa.45110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.jn = extractelement <2 x float> %i.jk, i64 0
  store float %i.jn, ptr %.sroa.45110.0..sroa_idx, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.b
  %.sink = phi float [ %i.jm, %bb.u ], [ 1.000000e+00, %bb.b ]
  %.sroa.48111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float %.sink, ptr %.sroa.48111.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp3LWO12AnimResolver15DoInterpolationEN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEEPNS0_8EnvelopeEdRf(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2, double noundef %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 40
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load float, ptr %i.i, align 8
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq ptr %1, %i.d
  br i1 %i.k, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i32, ptr %i.l, align 8
  switch i32 %i.m, label %bb.i [
    i32 5, label %bb.e
    i32 0, label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.o = load i32, ptr %i.n, align 4
  %cond.i = icmp eq i32 %i.o, 0
  br i1 %cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load float, ptr %i.p, align 8
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load double, ptr %i.r, align 8
  %i.t = load double, ptr %1, align 8             ; 2 uses
  %i.u = fsub double %i.s, %i.t                   ; 2 uses
  %i.v = fcmp ogt double %i.u, 0.000000e+00
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load float, ptr %i.w, align 8            ; 3 uses
  br i1 %i.v, label %bb.h, label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load float, ptr %i.y, align 8
  %i.aa = fsub float %i.z, %i.x
  %i.ab = fsub double %3, %i.t
  %i.ac = fdiv double %i.ab, %i.u
  %i.ad = fptrunc double %i.ac to float
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.ad, float %i.x)
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.i:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load float, ptr %i.af, align 8
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.j:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds i8, ptr %i.c, i64 -40 ; 2 uses
  %i.ai = icmp eq ptr %1, %i.ah
  br i1 %i.ai, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.aj = load double, ptr %i.ah, align 8
  %i.ak = fcmp ogt double %3, %i.aj
  br i1 %i.ak, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.am = load i32, ptr %i.al, align 4
  switch i32 %i.am, label %bb.q [
    i32 5, label %bb.m
    i32 0, label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit
  ]

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds i8, ptr %1, i64 -28
  %i.ao = load i32, ptr %i.an, align 4
  %cond.i25 = icmp eq i32 %i.ao, 0
  br i1 %cond.i25, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load float, ptr %i.ap, align 8
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.o:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds i8, ptr %1, i64 -40
  %i.as = load double, ptr %i.ar, align 8
  %i.at = load double, ptr %1, align 8            ; 2 uses
  %i.au = fsub double %i.as, %i.at                ; 2 uses
  %i.av = fcmp ogt double %i.au, 0.000000e+00
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load float, ptr %i.aw, align 8          ; 3 uses
  br i1 %i.av, label %bb.p, label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds i8, ptr %1, i64 -32
  %i.az = load float, ptr %i.ay, align 8
  %i.ba = fsub float %i.az, %i.ax
  %i.bb = fsub double %3, %i.at
  %i.bc = fdiv double %i.bb, %i.au
  %i.bd = fptrunc double %i.bc to float
  %i.be = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.bd, float %i.ax)
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.q:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load float, ptr %i.bf, align 8
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

.critedge:                                        ; preds = %bb.j, %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bi = load i32, ptr %i.bh, align 4
  %cond.i28 = icmp eq i32 %i.bi, 0
  br i1 %cond.i28, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge
  %i.bj = getelementptr inbounds i8, ptr %1, i64 -32
  %i.bk = load float, ptr %i.bj, align 8
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.s:                                             ; preds = %.critedge
end_hunk_0
