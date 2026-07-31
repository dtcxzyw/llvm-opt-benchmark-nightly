inline.NumInlined: 2865
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_ZN10btSoftBody6CJoint5SolveEff:bb.a
  %i.gf = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = fmul <2 x float> %i.gg, %i.gb
  store <2 x float> %i.gh, ptr %4, align 8, !tbaa !159, !alias.scope !630
  %i.gi = fmul float %i.ge, %i.gc
  store float %i.gi, ptr %.sroa.7.0..sroa_idx86, align 8, !tbaa !159, !alias.scope !630
  %i.gj = fmul float %i.ge, -0.000000e+00         ; 2 uses
  store float %i.gj, ptr %.sroa.9.0..sroa_idx88, align 8, !tbaa !159, !alias.scope !630
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.gl = fmul float %i.ge, -0.000000e+00
  store float %i.gl, ptr %i.gk, align 4, !tbaa !159, !alias.scope !630
  store float %i.gj, ptr %.sroa.12.0..sroa_idx90, align 8, !tbaa !159, !alias.scope !630
  %i.gm = trunc i32 %i.ga to i8                   ; 2 uses
  %i.gn = and i8 %i.gm, 1
  %.not.i = icmp eq i8 %i.gn, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNK10btSoftBody4Body13applyVImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(33) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  %.pre.i = load i8, ptr %.sroa.14.0..sroa_idx92, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.go = phi i8 [ %.pre.i, %bb.m ], [ %i.gm, %bb.l ]
  %.mask.i = and i8 %i.go, 2
  %.not7.i = icmp eq i8 %.mask.i, 0
  br i1 %.not7.i, label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.0..sroa_idx88, ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  br label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit

_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.gp = load ptr, ptr %i.a, align 8, !tbaa !293
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 412
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !629 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %3, i64 36, i1 false), !tbaa.struct !612
  %i.gs = load <2 x float>, ptr %5, align 8, !tbaa !159, !alias.scope !633
  %i.gt = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gv = fmul <2 x float> %i.gu, %i.gs
  store <2 x float> %i.gv, ptr %5, align 8, !tbaa !159, !alias.scope !633
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.gx = load float, ptr %i.gw, align 8, !tbaa !159, !alias.scope !633
  %i.gy = fmul float %i.gr, %i.gx
  store float %i.gy, ptr %i.gw, align 8, !tbaa !159, !alias.scope !633
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ha = load <2 x float>, ptr %i.gz, align 8, !tbaa !159, !alias.scope !633
  %i.hb = fmul <2 x float> %i.gu, %i.ha
  store <2 x float> %i.hb, ptr %i.gz, align 8, !tbaa !159, !alias.scope !633
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.hd = load float, ptr %i.hc, align 8, !tbaa !159, !alias.scope !633
  %i.he = fmul float %i.gr, %i.hd
  store float %i.he, ptr %i.hc, align 8, !tbaa !159, !alias.scope !633
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 8             ; 2 uses
  %i.hh = and i8 %i.hg, 1
  %.not.i64 = icmp eq i8 %i.hh, 0
  br i1 %.not.i64, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit
  call void @_ZNK10btSoftBody4Body13applyVImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 4 dereferenceable(33) %5, ptr noundef nonnull align 4 dereferenceable(16) %i.ax)
  %.pre.i65 = load i8, ptr %i.hf, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit
  %i.hi = phi i8 [ %.pre.i65, %bb.p ], [ %i.hg, %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit ]
  %.mask.i66 = and i8 %i.hi, 2
  %.not7.i67 = icmp eq i8 %.mask.i66, 0
  br i1 %.not7.i67, label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit68, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 4 dereferenceable(16) %i.gz, ptr noundef nonnull align 4 dereferenceable(16) %i.ax)
  br label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit68

_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit68: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84

bb.s:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %3, i64 36, i1 false), !tbaa.struct !612
  %i.hj = load <2 x float>, ptr %6, align 8, !tbaa !159, !alias.scope !636
  %i.hk = fneg <2 x float> %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.hm = load float, ptr %i.hl, align 8, !tbaa !159, !alias.scope !636
  %i.hn = fneg float %i.hm
  %.sroa.3.12.vec.insert.i.i71 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hn, i64 0
  store <2 x float> %i.hk, ptr %6, align 8, !alias.scope !636
  store <2 x float> %.sroa.3.12.vec.insert.i.i71, ptr %i.hl, align 8, !tbaa !185, !alias.scope !636
  %i.ho = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.hp = load <2 x float>, ptr %i.ho, align 8, !tbaa !159, !alias.scope !636
  %i.hq = fneg <2 x float> %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.hs = load float, ptr %i.hr, align 8, !tbaa !159, !alias.scope !636
  %i.ht = fneg float %i.hs
  %.sroa.3.12.vec.insert.i5.i74 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ht, i64 0
  store <2 x float> %i.hq, ptr %i.ho, align 8, !alias.scope !636
  store <2 x float> %.sroa.3.12.vec.insert.i5.i74, ptr %i.hr, align 8, !tbaa !185, !alias.scope !636
  %i.hu = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 8             ; 2 uses
  %i.hw = and i8 %i.hv, 1
  %.not.i75 = icmp eq i8 %i.hw, 0
  br i1 %.not.i75, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZNK10btSoftBody4Body13applyVImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(33) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  %.pre.i76 = load i8, ptr %i.hu, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.hx = phi i8 [ %.pre.i76, %bb.t ], [ %i.hv, %bb.s ]
  %.mask.i77 = and i8 %i.hx, 2
  %.not7.i78 = icmp eq i8 %.mask.i77, 0
  br i1 %.not7.i78, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.ho, ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @_ZNK10btSoftBody4Body13applyVImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 4 dereferenceable(33) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.ax)
  %.pre.i81 = load i8, ptr %i.dd, align 8
  %.mask.i82 = and i8 %.pre.i81, 2
  %.not7.i83 = icmp eq i8 %.mask.i82, 0
  br i1 %.not7.i83, label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 4 dereferenceable(16) %i.hy, ptr noundef nonnull align 4 dereferenceable(16) %i.ax)
  br label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84

_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84: ; preds = %bb.x, %bb.w, %bb.j, %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit68, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody6CJoint9TerminateEf(ptr noundef nonnull align 8 dereferenceable(244) %0, float %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load float, ptr %i.a, align 8, !tbaa !308
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !159
  %i.g = fneg <2 x float> %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.i = load float, ptr %i.h, align 4, !tbaa !159
  %i.j = fneg float %i.i
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.j, i64 0
  store <2 x float> %i.g, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.n)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody14PSolve_AnchorsEPS_ff(ptr nofree noundef readonly captures(none) %0, float noundef %1, float %2) #0 align 2 {
bb.a:
  %3 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load float, ptr %i.a, align 8, !tbaa !639
  %i.c = fmul float %1, %i.b                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.e = load float, ptr %i.d, align 8, !tbaa !487 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 948
  %i.g = load i32, ptr %i.f, align 4, !tbaa !126  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !125
  %i.l = getelementptr inbounds nuw [104 x i8], ptr %i.k, i64 %indvars.iv ; 15 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !522  ; 18 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !261  ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load float, ptr %i.o, align 4, !tbaa !159
  %i.s = load float, ptr %i.q, align 8, !tbaa !159 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 76
  %i.u = load float, ptr %i.t, align 4, !tbaa !159
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.w = load float, ptr %i.v, align 4, !tbaa !159 ; 3 uses
  %i.x = fmul float %i.u, %i.w
  %i.y = call float @llvm.fmuladd.f32(float %i.r, float %i.s, float %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.aa = load float, ptr %i.z, align 4, !tbaa !159
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !159 ; 3 uses
  %i.ad = call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.ac, float %i.y)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.af = load float, ptr %i.ae, align 4, !tbaa !159
  %i.ag = fadd float %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !159
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 92
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !159
  %i.al = fmul float %i.w, %i.ak
  %i.am = call float @llvm.fmuladd.f32(float %i.ai, float %i.s, float %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.ao = load float, ptr %i.an, align 4, !tbaa !159
  %i.ap = call noundef float @llvm.fmuladd.f32(float %i.ao, float %i.ac, float %i.am)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 124
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !159
  %i.as = fadd float %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.au = load float, ptr %i.at, align 4, !tbaa !159
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 108
  %i.aw = load float, ptr %i.av, align 4, !tbaa !159
  %i.ax = fmul float %i.w, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.az = load float, ptr %i.ay, align 4, !tbaa !159
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !159
  %4 = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 328
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 344
  %i.be = getelementptr inbounds nuw i8, ptr %i.n, i64 348
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %5 = load float, ptr %i.bf, align 8, !tbaa !159 ; 2 uses
  %i.bg = load float, ptr %i.bd, align 4, !tbaa !159
  %6 = fneg float %5
  %7 = call float @llvm.fmuladd.f32(float %i.au, float %i.s, float %i.ax)
  %8 = load <2 x float>, ptr %i.be, align 4, !tbaa !159
  %9 = load <2 x float>, ptr %4, align 8, !tbaa !159 ; 2 uses
  %10 = fneg <2 x float> %9
  %11 = insertelement <4 x float> poison, float %7, i64 0
  %12 = insertelement <4 x float> %11, float %i.bg, i64 1
  %13 = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %14 = shufflevector <4 x float> %12, <4 x float> %13, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %15 = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %6, i64 1
  %16 = shufflevector <2 x float> %10, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %17 = shufflevector <4 x float> %15, <4 x float> %16, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %18 = fmul <4 x float> %14, %17
  %19 = insertelement <4 x float> poison, float %i.az, i64 0
  %20 = shufflevector <4 x float> %19, <4 x float> %14, <4 x i32> <i32 0, i32 7, i32 5, i32 6>
  %21 = shufflevector <2 x float> %9, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %22 = insertelement <4 x float> %21, float %i.ac, i64 0
  %23 = insertelement <4 x float> %22, float %5, i64 3
  %24 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %20, <4 x float> %23, <4 x float> %18) ; 4 uses
  %25 = extractelement <4 x float> %24, i64 0
  %26 = fadd float %i.bb, %25
  %i.bh = load float, ptr %i.bc, align 4, !tbaa !159
  %27 = extractelement <4 x float> %24, i64 3
  %i.bi = fadd float %27, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 332
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !159
  %28 = extractelement <4 x float> %24, i64 1
  %i.bl = fadd float %i.bk, %28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 336
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !159
  %29 = extractelement <4 x float> %24, i64 2
  %i.bo = fadd float %29, %i.bn
  %i.bp = fmul float %i.e, %i.bi
  %i.bq = fmul float %i.e, %i.bl
  %i.br = fmul float %i.e, %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !159
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !159
  %i.bx = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !159 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !159
  %i.cb = fsub float %i.by, %i.ca
  %i.cc = fsub float %i.br, %i.cb
  %i.cd = fsub float %26, %i.by
  %i.ce = fmul float %i.c, %i.cd
  %i.cf = fadd float %i.ce, %i.cc                 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !159
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !159
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !159
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  %i.cp = load float, ptr %i.co, align 4, !tbaa !159
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !159
  %i.cs = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !159 ; 2 uses
  %i.cu = load <2 x float>, ptr %i.bs, align 4, !tbaa !159 ; 3 uses
  %i.cv = extractelement <2 x float> %i.cu, i64 0 ; 2 uses
  %i.cw = fsub float %i.cv, %i.bu
  %i.cx = extractelement <2 x float> %i.cu, i64 1 ; 2 uses
  %i.cy = fsub float %i.cx, %i.bw
  %i.cz = fsub float %i.bp, %i.cw
  %i.da = fsub float %i.bq, %i.cy
  %i.db = fsub float %i.ag, %i.cv
  %i.dc = fsub float %i.as, %i.cx
  %i.dd = fmul float %i.c, %i.db
  %i.de = fmul float %i.c, %i.dc
  %i.df = fadd float %i.dd, %i.cz                 ; 2 uses
  %i.dg = fadd float %i.de, %i.da                 ; 2 uses
  %i.dh = load <2 x float>, ptr %i.cg, align 8, !tbaa !159 ; 2 uses
  %i.di = load <2 x float>, ptr %i.cj, align 8, !tbaa !159 ; 2 uses
  %i.dj = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = shufflevector <2 x float> %i.dh, <2 x float> %i.di, <2 x i32> <i32 1, i32 3>
  %i.dm = fmul <2 x float> %i.dk, %i.dl
  %i.dn = shufflevector <2 x float> %i.dh, <2 x float> %i.di, <2 x i32> <i32 0, i32 2>
  %i.do = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.dp, <2 x float> %i.dm)
  %i.dr = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.cl, i64 1
  %i.dt = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.du, <2 x float> %i.dq) ; 2 uses
  %i.dw = fmul float %i.dg, %i.cp
  %i.dx = call float @llvm.fmuladd.f32(float %i.cn, float %i.df, float %i.dw)
  %i.dy = call noundef float @llvm.fmuladd.f32(float %i.cr, float %i.cf, float %i.dx) ; 2 uses
  %i.dz = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x float> %i.dv, %i.ea
  %i.ec = fmul float %i.ct, %i.dy
  %i.ed = fadd <2 x float> %i.cu, %i.eb
  store <2 x float> %i.ed, ptr %i.bs, align 4, !tbaa !159
  %i.ee = fadd float %i.by, %i.ec
  store float %i.ee, ptr %i.bx, align 4, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.ef = fneg <2 x float> %i.dv
  %i.eg = fneg float %i.dy
  %.sroa.3.12.vec.insert.i59 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eg, i64 0
  store <2 x float> %i.ef, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i59, ptr %i.j, align 8
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(564) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(564) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load float, ptr %i.a, align 8, !tbaa !523 ; 3 uses
  %i.c = fcmp une float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !159
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.i = load float, ptr %i.h, align 4, !tbaa !159 ; 2 uses
  %i.j = fmul float %i.g, %i.i
  %i.k = fmul float %i.b, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.m = load <2 x float>, ptr %1, align 4, !tbaa !159
  %i.n = load <2 x float>, ptr %i.d, align 4, !tbaa !159 ; 3 uses
  %i.o = fmul <2 x float> %i.m, %i.n
  %i.p = insertelement <2 x float> poison, float %i.b, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %i.q, %i.o
  %i.s = load <2 x float>, ptr %i.l, align 8, !tbaa !159
  %i.t = fadd <2 x float> %i.r, %i.s
  store <2 x float> %i.t, ptr %i.l, align 8, !tbaa !159
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.v = load float, ptr %i.u, align 8, !tbaa !159
  %i.w = fadd float %i.k, %i.v
  store float %i.w, ptr %i.u, align 8, !tbaa !159
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.y = load float, ptr %1, align 4, !tbaa !159
  %i.z = extractelement <2 x float> %i.n, i64 0
  %i.aa = fmul float %i.z, %i.y                   ; 2 uses
  %i.ab = load float, ptr %i.e, align 4, !tbaa !159
  %i.ac = extractelement <2 x float> %i.n, i64 1
  %i.ad = fmul float %i.ab, %i.ac                 ; 2 uses
  %i.ae = load float, ptr %i.f, align 4, !tbaa !159
  %i.af = fmul float %i.ae, %i.i                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !159 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !159 ; 2 uses
  %i.ak = fneg float %i.ad
  %i.al = fmul float %i.aj, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.af, float %i.al) ; 2 uses
  %i.an = load float, ptr %2, align 4, !tbaa !159 ; 2 uses
  %i.ao = fneg float %i.af
  %i.ap = fmul float %i.an, %i.ao
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.aa, float %i.ap) ; 2 uses
  %i.ar = fneg float %i.aa
  %i.as = fmul float %i.ah, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ad, float %i.as) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aw = load float, ptr %i.av, align 8, !tbaa !159
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.az = load float, ptr %i.ay, align 8, !tbaa !159
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !159
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !159
  %i.be = fmul float %i.aq, %i.bd
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.am, float %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !159
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.at, float %i.bf)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !159
  %i.bl = fmul float %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bn = load <2 x float>, ptr %i.au, align 8, !tbaa !159 ; 2 uses
  %i.bo = load <2 x float>, ptr %i.ax, align 8, !tbaa !159 ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bn, <2 x float> %i.bo, <2 x i32> <i32 1, i32 3>
  %i.bq = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x float> %i.bp, %i.br
  %i.bt = shufflevector <2 x float> %i.bn, <2 x float> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.bu = insertelement <2 x float> poison, float %i.am, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bv, <2 x float> %i.bs)
  %i.bx = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.az, i64 1
  %i.bz = insertelement <2 x float> poison, float %i.at, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.ca, <2 x float> %i.bw)
  %i.cc = load <2 x float>, ptr %i.x, align 4, !tbaa !159
  %i.cd = fmul <2 x float> %i.cb, %i.cc
  %i.ce = load <2 x float>, ptr %i.bm, align 8, !tbaa !159
  %i.cf = fadd <2 x float> %i.cd, %i.ce
  store <2 x float> %i.cf, ptr %i.bm, align 8, !tbaa !159
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !159
  %i.ci = fadd float %i.bl, %i.ch
  store float %i.ci, ptr %i.cg, align 8, !tbaa !159
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody16PSolve_RContactsEPS_ff(ptr nofree noundef readonly captures(none) %0, float noundef %1, float %2) #0 align 2 {
bb.a:
  %3 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load float, ptr %i.a, align 8, !tbaa !487 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !177  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef float %i.g(ptr noundef nonnull align 8 dereferenceable(24) %i.d) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 980
  %i.j = load i32, ptr %i.i, align 4, !tbaa !130  ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count = zext nneg i32 %i.j to i64
  %i.n = insertelement <2 x float> poison, float %i.b, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !129
  %i.q = getelementptr inbounds nuw [120 x i8], ptr %i.p, i64 %indvars.iv ; 19 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !570  ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 256
  %i.t = load i32, ptr %i.s, align 8, !tbaa !156
  %i.u = icmp ne i32 %i.t, 2
  %.not128 = icmp eq ptr %i.r, null
  %.not = or i1 %.not128, %i.u                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 328
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 344
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 348
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 92
  %i.aa = load float, ptr %i.v, align 8, !tbaa !159 ; 2 uses
  %i.ab = load float, ptr %i.x, align 8, !tbaa !159 ; 2 uses
  %i.ac = fneg float %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 336
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !159
  %i.af = load <2 x float>, ptr %i.y, align 4, !tbaa !159 ; 3 uses
  %i.ag = load <2 x float>, ptr %i.z, align 4, !tbaa !159 ; 3 uses
  %i.ah = fneg <2 x float> %i.ag
  %i.ai = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aj = insertelement <2 x float> %i.ai, float %i.ab, i64 1
  %i.ak = fmul <2 x float> %i.aj, %i.ah
  %i.al = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.am = insertelement <2 x float> %i.al, float %i.aa, i64 1
  %i.an = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.am, <2 x float> %i.ak)
  %i.ao = extractelement <2 x float> %i.af, i64 0
  %i.ap = fmul float %i.ao, %i.ac
  %i.aq = extractelement <2 x float> %i.ag, i64 0
  %i.ar = call float @llvm.fmuladd.f32(float %i.ab, float %i.aq, float %i.ap)
  %i.as = load <2 x float>, ptr %i.w, align 8, !tbaa !159
  %i.at = fadd <2 x float> %i.an, %i.as
  %i.au = fadd float %i.ar, %i.ae
  %i.av = fmul <2 x float> %i.o, %i.at
  %i.aw = fmul float %i.b, %i.au
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aw, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0121.1 = phi <2 x float> [ %i.av, %bb.c ], [ zeroinitializer, %bb.b ] ; 2 uses
  %.sroa.7.1 = phi <2 x float> [ %.sroa.3.12.vec.insert.i, %bb.c ], [ zeroinitializer, %bb.b ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !640 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bb = load float, ptr %i.az, align 4, !tbaa !159 ; 2 uses
  %i.bc = load float, ptr %i.ba, align 4, !tbaa !159
  %i.bd = fsub float %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  %i.bf = load float, ptr %i.be, align 4, !tbaa !159 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 36
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !159
  %i.bi = fsub float %i.bf, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !159 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !159
end_hunk_0
