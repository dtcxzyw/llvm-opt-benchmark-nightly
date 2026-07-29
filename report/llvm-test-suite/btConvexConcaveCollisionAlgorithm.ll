inline.NumInlined: 264
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN24btConvexTriangleCallback15processTriangleEP9btVector3ii:bb.a
  %i.ed = call float @llvm.fmuladd.f32(float %i.cx, float %i.do, float %i.ec)
  %i.ee = call noundef float @llvm.fmuladd.f32(float %i.db, float %i.dq, float %i.ed)
  %i.ef = fadd float %i.dd, %i.ee
  %.sroa.3.12.vec.insert.i42 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ef, i64 0
  store <2 x float> %i.eb, ptr %8, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i42, ptr %i.eg, align 8
  %i.eh = load ptr, ptr %i.cg, align 8, !tbaa !8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.ek = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !53 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.en = load float, ptr %i.dg, align 4, !tbaa !57 ; 2 uses
  %i.eo = load float, ptr %i.dh, align 4, !tbaa !57 ; 2 uses
  %i.ep = load float, ptr %i.di, align 4, !tbaa !57 ; 2 uses
  %i.eq = load <2 x float>, ptr %i.n, align 4, !tbaa !57 ; 2 uses
  %i.er = load <2 x float>, ptr %i.y, align 4, !tbaa !57 ; 2 uses
  %i.es = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = shufflevector <2 x float> %i.eq, <2 x float> %i.er, <2 x i32> <i32 1, i32 3>
  %i.ev = fmul <2 x float> %i.et, %i.eu
  %i.ew = shufflevector <2 x float> %i.eq, <2 x float> %i.er, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ex = insertelement <2 x float> poison, float %i.en, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.ey, <2 x float> %i.ev)
  %i.fa = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = load <2 x float>, ptr %i.x, align 4, !tbaa !57 ; 2 uses
  %i.fd = load float, ptr %i.an, align 4, !tbaa !57 ; 2 uses
  %i.fe = load float, ptr %i.ap, align 4, !tbaa !57 ; 2 uses
  %i.ff = fmul float %i.eo, %i.fe
  %i.fg = call float @llvm.fmuladd.f32(float %i.fd, float %i.en, float %i.ff)
  %i.fh = load float, ptr %i.at, align 4, !tbaa !57 ; 2 uses
  %i.fi = call noundef float @llvm.fmuladd.f32(float %i.fh, float %i.ep, float %i.fg)
  %i.fj = load float, ptr %i.aw, align 4, !tbaa !57 ; 2 uses
  %i.fk = fadd float %i.fj, %i.fi
  %.sroa.3.12.vec.insert.i47 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fk, i64 0
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fm = load <2 x float>, ptr %i.s, align 4, !tbaa !57 ; 2 uses
  %i.fn = load <2 x float>, ptr %i.z, align 4, !tbaa !57 ; 2 uses
  %i.fo = shufflevector <2 x float> %i.fm, <2 x float> %i.fn, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.fp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> %i.fb, <2 x float> %i.ez)
  %i.fq = fadd <2 x float> %i.fp, %i.fc
  store <2 x float> %i.fq, ptr %9, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i47, ptr %i.fl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.fr = load float, ptr %1, align 4, !tbaa !57  ; 2 uses
  %i.fs = load float, ptr %i.t, align 4, !tbaa !57 ; 2 uses
  %i.ft = load float, ptr %i.v, align 4, !tbaa !57 ; 2 uses
  %i.fu = shufflevector <2 x float> %i.fm, <2 x float> %i.fn, <2 x i32> <i32 0, i32 2>
  %i.fv = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = fmul <2 x float> %i.fu, %i.fw
  %i.fy = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ga = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.fz, <2 x float> %i.fx)
  %i.gb = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> %i.gc, <2 x float> %i.ga)
  %i.ge = fadd <2 x float> %i.fc, %i.gd
  %i.gf = fmul float %i.fe, %i.fs
  %i.gg = call float @llvm.fmuladd.f32(float %i.fd, float %i.fr, float %i.gf)
  %i.gh = call noundef float @llvm.fmuladd.f32(float %i.fh, float %i.ft, float %i.gg)
  %i.gi = fadd float %i.fj, %i.gh
  %.sroa.3.12.vec.insert.i52 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gi, i64 0
  store <2 x float> %i.ge, ptr %10, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i52, ptr %i.gj, align 8
  %i.gk = load ptr, ptr %i.em, align 8, !tbaa !8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !29
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 200
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !58
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !64
  %i.gt = icmp slt i32 %i.gs, 20
  br i1 %i.gt, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %11)
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTV15btTriangleShape, i64 16), ptr %11, align 8, !tbaa !8
  %.ptr5.i = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.gw = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 1, ptr %i.gw, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.ptr5.i, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !66
  %i.gx = getelementptr inbounds nuw i8, ptr %11, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, ptr noundef nonnull align 4 dereferenceable(16) %i.gu, i64 16, i1 false), !tbaa.struct !66
  %i.gy = getelementptr inbounds nuw i8, ptr %11, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 4 dereferenceable(16) %i.gv, i64 16, i1 false), !tbaa.struct !66
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ha = load float, ptr %i.gz, align 8, !tbaa !68
  %i.hb = getelementptr inbounds nuw i8, ptr %11, i64 56
  store float %i.ha, ptr %i.hb, align 8, !tbaa !69
  %i.hc = getelementptr inbounds nuw i8, ptr %i.d, i64 200 ; 3 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !58
  store ptr %11, ptr %i.hc, align 8, !tbaa !58
  %i.he = load ptr, ptr %i.gn, align 8, !tbaa !29
  %i.hf = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !31
  %i.hi = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = invoke noundef ptr %i.hk(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.he, ptr noundef %i.hf, ptr noundef %i.hh)
          to label %bb.g unwind label %bb.l       ; 5 uses

bb.g:                                             ; preds = %bb.f
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !72 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8
  invoke void %i.hq(ptr noundef nonnull align 8 dereferenceable(176) %i.hn, i32 noundef %2, i32 noundef %3)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.hr = load ptr, ptr %i.gn, align 8, !tbaa !29
  %i.hs = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.ht = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.hu = load ptr, ptr %i.hm, align 8, !tbaa !72
  %i.hv = load ptr, ptr %i.hl, align 8, !tbaa !8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8
  invoke void %i.hx(ptr noundef nonnull align 8 dereferenceable(16) %i.hl, ptr noundef %i.hr, ptr noundef %i.hs, ptr noundef nonnull align 8 dereferenceable(56) %i.ht, ptr noundef %i.hu)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.hy = load ptr, ptr %i.hl, align 8, !tbaa !8
  %i.hz = load ptr, ptr %i.hy, align 8
  invoke void %i.hz(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.hl)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ia = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 104
  %i.ic = load ptr, ptr %i.ib, align 8
  invoke void %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.hl)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.hd, ptr %i.hc, align 8, !tbaa !58
  call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %11)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  resume { ptr, i32 } %i.id

bb.n:                                             ; preds = %bb.k, %bb.e
  ret void

bb.o:                                             ; preds = %bb.l
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  call void @__clang_call_terminate(ptr %i.if) #11
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN21btConvexInternalShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(64) %0, float noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %1, ptr %i.a, align 8, !tbaa !69
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN24btConvexTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(96) initializes((56, 64), (72, 84)) %0, float noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %4 = alloca %class.btTransform, align 8         ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %2, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %1, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %3, ptr %i.c, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30   ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.l = load float, ptr %i.i, align 4, !tbaa !57, !noalias !73 ; 2 uses
  %i.m = load float, ptr %i.j, align 4, !tbaa !57, !noalias !73 ; 2 uses
  %i.n = load float, ptr %i.k, align 4, !tbaa !57, !noalias !73 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.p = load float, ptr %i.o, align 4, !tbaa !57, !noalias !78
  %i.q = fneg float %i.p                          ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.s = load float, ptr %i.r, align 4, !tbaa !57, !noalias !78
  %i.t = fneg float %i.s                          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.v = load float, ptr %i.u, align 4, !tbaa !57, !noalias !78
  %i.w = fneg float %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29   ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %5 = load float, ptr %i.ac, align 4, !tbaa !57, !noalias !79 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %6 = load float, ptr %i.ad, align 4, !tbaa !57, !noalias !79 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %7 = load float, ptr %i.ae, align 4, !tbaa !57, !noalias !79 ; 3 uses
  %8 = fmul float %i.m, %6
  %9 = tail call float @llvm.fmuladd.f32(float %5, float %i.l, float %8)
  %10 = tail call noundef float @llvm.fmuladd.f32(float %7, float %i.n, float %9)
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !57, !noalias !84 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.f, align 4, !tbaa !57, !noalias !73 ; 6 uses
  %i.aj = load <2 x float>, ptr %i.g, align 4, !tbaa !57, !noalias !73 ; 6 uses
  %i.ak = load <2 x float>, ptr %i.h, align 4, !tbaa !57, !noalias !73 ; 6 uses
  %i.al = insertelement <2 x float> poison, float %i.t, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.aj, %i.am
  %i.ao = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.ap, <2 x float> %i.an)
  %i.ar = insertelement <2 x float> poison, float %i.w, i64 0 ; 2 uses
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.as, <2 x float> %i.aq)
  %11 = extractelement <2 x float> %i.aj, i64 0
  %12 = fmul float %11, %6
  %13 = extractelement <2 x float> %i.ai, i64 0
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %13, float %12)
  %15 = extractelement <2 x float> %i.ak, i64 0
  %16 = tail call noundef float @llvm.fmuladd.f32(float %7, float %15, float %14)
  %17 = extractelement <2 x float> %i.aj, i64 1
  %18 = fmul float %17, %6
  %19 = extractelement <2 x float> %i.ai, i64 1
  %20 = tail call float @llvm.fmuladd.f32(float %5, float %19, float %18)
  %21 = extractelement <2 x float> %i.ak, i64 1
  %22 = tail call noundef float @llvm.fmuladd.f32(float %7, float %21, float %20)
  %i.au = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = load <2 x float>, ptr %i.af, align 4, !tbaa !57, !noalias !84 ; 4 uses
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %25 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %26 = fmul <2 x float> %i.aj, %25
  %27 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %27, <2 x float> %26)
  %28 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.av, <2 x float> %i.aw)
  %i.ax = fadd <2 x float> %i.at, %28
  %i.ay = insertelement <2 x float> poison, float %i.m, i64 0
  %29 = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %30 = insertelement <2 x float> %23, float %i.t, i64 0
  %31 = fmul <2 x float> %29, %30
  %32 = insertelement <2 x float> poison, float %i.l, i64 0
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %34 = insertelement <2 x float> %24, float %i.q, i64 0
  %35 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %33, <2 x float> %34, <2 x float> %31)
  %36 = insertelement <2 x float> poison, float %i.n, i64 0
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %38 = insertelement <2 x float> %i.ar, float %i.ah, i64 1
  %39 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %37, <2 x float> %38, <2 x float> %35) ; 2 uses
  %shift = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %39, %shift
  %.sroa.3.12.vec.insert.i.i24 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  %i.az = load <2 x float>, ptr %i.z, align 4, !tbaa !57, !noalias !79 ; 3 uses
  %i.ba = load <2 x float>, ptr %i.aa, align 4, !tbaa !57, !noalias !79 ; 3 uses
  %40 = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %41 = fmul <2 x float> %40, %i.ba
  %42 = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %43 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %42, <2 x float> %41)
  %44 = load <2 x float>, ptr %i.ab, align 4, !tbaa !57, !noalias !79 ; 3 uses
  %45 = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %46 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %44, <2 x float> %45, <2 x float> %43)
  store <2 x float> %46, ptr %4, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %16, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %.sroa.618.0..sroa_idx, align 4, !tbaa !67
  %47 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %48 = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %49 = fmul <2 x float> %48, %i.ba
  %50 = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %51 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %50, <2 x float> %49)
  %52 = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %53 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %44, <2 x float> %52, <2 x float> %51)
  store <2 x float> %53, ptr %47, align 8
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %22, ptr %.sroa.10.16..sroa_idx, align 8
  %.sroa.1120.16..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float 0.000000e+00, ptr %.sroa.1120.16..sroa_idx, align 4, !tbaa !67
  %54 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %55 = fmul <2 x float> %29, %i.ba
  %56 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %33, <2 x float> %55)
  %57 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %44, <2 x float> %37, <2 x float> %56)
  store <2 x float> %57, ptr %54, align 8
  %.sroa.1521.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %10, ptr %.sroa.1521.32..sroa_idx, align 8
  %.sroa.1622.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %.sroa.1622.32..sroa_idx, align 4, !tbaa !67
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %i.ax, ptr %i.bb, align 8
  %.sroa.19.48..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i24, ptr %.sroa.19.48..sroa_idx, align 8, !tbaa !67
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 200
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !58 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.be, ptr noundef nonnull align 4 dereferenceable(16) %i.bf)
  %i.bj = load <2 x float>, ptr %i.bf, align 8, !tbaa !57
  %i.bk = insertelement <2 x float> poison, float %1, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bm = fadd <2 x float> %i.bl, %i.bj
  store <2 x float> %i.bm, ptr %i.bf, align 8, !tbaa !57
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 8, !tbaa !57
  %i.bp = fadd float %1, %i.bo
  store float %i.bp, ptr %i.bn, align 8, !tbaa !57
  %i.bq = load <2 x float>, ptr %i.be, align 8, !tbaa !57
  %i.br = fsub <2 x float> %i.bq, %i.bl
  store <2 x float> %i.br, ptr %i.be, align 8, !tbaa !57
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !57
  %i.bu = fsub float %i.bt, %1
  store float %i.bu, ptr %i.bs, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN33btConvexConcaveCollisionAlgorithm10clearCacheEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.d), !inline_history !32
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN33btConvexConcaveCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !10, !range !51, !noundef !52
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr %2, ptr %1           ; 2 uses
  %i.e = select i1 %i.c, ptr %1, ptr %2           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !64
  %i.j = add i32 %i.i, -21
  %i.k = icmp ult i32 %i.j, 9
  br i1 %i.k, label %bb.b, label %_ZN16btManifoldResult20refreshContactPointsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !64
  %i.p = icmp slt i32 %i.o, 20
  br i1 %i.p, label %bb.c, label %_ZN16btManifoldResult20refreshContactPointsEv.exit

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef float %i.s(ptr noundef nonnull align 8 dereferenceable(28) %i.g)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !85
  tail call void @_ZN24btConvexTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(96) %i.u, float noundef %i.t, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull %4)
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !35   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 712
  store ptr %i.d, ptr %i.z, align 8, !tbaa !88
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 720
  store ptr %i.e, ptr %i.aa, align 8, !tbaa !91
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(28) %i.g, ptr noundef nonnull %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %i.ac)
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !85  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 728
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !92
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 712
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !88
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !93
  %.not1.i = icmp eq ptr %i.ak, %i.am             ; 2 uses
  %..i = select i1 %.not1.i, i64 16, i64 80
  %.5.i = select i1 %.not1.i, i64 80, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 %..i
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 %.5.i
  tail call void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(744) %i.ag, ptr noundef nonnull align 4 dereferenceable(64) %i.an, ptr noundef nonnull align 4 dereferenceable(64) %i.ao)
  br label %_ZN16btManifoldResult20refreshContactPointsEv.exit

_ZN16btManifoldResult20refreshContactPointsEv.exit: ; preds = %.sink.split.i, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local noundef float @_ZN33btConvexConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btVector3, align 8           ; 9 uses
  %6 = alloca %class.btVector3, align 8           ; 6 uses
  %7 = alloca %struct.LocalTriangleSphereCastCallback, align 8 ; 31 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !10, !range !51, !noundef !52
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr %2, ptr %1           ; 21 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.g = load float, ptr %i.e, align 4, !tbaa !57 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 124 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !57 ; 3 uses
  %i.l = load float, ptr %i.j, align 4, !tbaa !57 ; 2 uses
  %i.m = extractelement <2 x float> %i.k, i64 0   ; 2 uses
  %i.n = fsub float %i.g, %i.m                    ; 2 uses
  %i.o = fsub float %i.i, %i.l                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.q = load float, ptr %i.p, align 4, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.s = load float, ptr %i.r, align 4, !tbaa !57 ; 3 uses
  %i.t = fsub float %i.q, %i.s                    ; 2 uses
  %i.u = fmul float %i.o, %i.o
  %i.v = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.u)
  %i.w = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 268
  %i.y = load float, ptr %i.x, align 4, !tbaa !94 ; 2 uses
  %i.z = fmul float %i.y, %i.y
  %i.aa = fcmp olt float %i.w, %i.z
  br i1 %i.aa, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ad = select i1 %i.c, ptr %1, ptr %2          ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ak = load float, ptr %i.ah, align 4, !tbaa !57, !noalias !95 ; 4 uses
  %i.al = load float, ptr %i.ai, align 4, !tbaa !57, !noalias !95 ; 4 uses
  %i.am = load float, ptr %i.aj, align 4, !tbaa !57, !noalias !95 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ao = load float, ptr %i.an, align 4, !tbaa !57, !noalias !100
  %i.ap = fneg float %i.ao                        ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !57, !noalias !100
  %i.as = fneg float %i.ar                        ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.au = load float, ptr %i.at, align 4, !tbaa !57, !noalias !100
  %i.av = fneg float %i.au                        ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.az = load float, ptr %i.ay, align 4, !tbaa !57, !noalias !101 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !57, !noalias !101 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !57, !noalias !101 ; 3 uses
  %i.be = fmul float %i.al, %i.bb
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.az, float %i.ak, float %i.be)
  %i.bg = tail call noundef float @llvm.fmuladd.f32(float %i.bd, float %i.am, float %i.bf)
  %i.bh = fmul float %i.al, %i.l
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.m, float %i.bh)
  %i.bj = tail call noundef float @llvm.fmuladd.f32(float %i.am, float %i.s, float %i.bi)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !57, !noalias !106 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !57, !noalias !106 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.br = load float, ptr %i.bq, align 4, !tbaa !57, !noalias !106 ; 3 uses
  %i.bs = fmul float %i.al, %i.bp
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.ak, float %i.bs)
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.br, float %i.am, float %i.bt)
  %i.bv = load <2 x float>, ptr %i.ae, align 4, !tbaa !57, !noalias !95 ; 7 uses
  %i.bw = load <2 x float>, ptr %i.af, align 4, !tbaa !57, !noalias !95 ; 7 uses
  %i.bx = load <2 x float>, ptr %i.ag, align 4, !tbaa !57, !noalias !95 ; 7 uses
  %i.by = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bz = insertelement <2 x float> %i.by, float %i.as, i64 1 ; 2 uses
  %i.ca = fmul <2 x float> %i.bw, %i.bz
  %i.cb = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
end_hunk_0
begin_hunk_1_@_ZZN33btConvexConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallbackD0Ev:bb.a
bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  resume { ptr, i32 } %i.a
}

; Function Attrs: uwtable
define internal void @_ZZN33btConvexConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallback15processTriangleEP9btVector3ii(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.btTransform, align 4         ; 11 uses
  %5 = alloca %"struct.btConvexCast::CastResult", align 8 ; 8 uses
  %6 = alloca %class.btSphereShape, align 8       ; 11 uses
  %7 = alloca %class.btTriangleShape, align 8     ; 12 uses
  %8 = alloca %class.btVoronoiSimplexSolver, align 4 ; 5 uses
  %9 = alloca %class.btSubsimplexConvexCast, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store float 1.000000e+00, ptr %4, align 4, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12btConvexCast10CastResultE, i64 16), ptr %5, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 176
  store ptr null, ptr %i.g, align 8, !tbaa !117
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 184
  store float 0.000000e+00, ptr %i.h, align 8, !tbaa !119
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !116
  store float %i.j, ptr %i.f, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.l = load float, ptr %i.k, align 8, !tbaa !113 ; 2 uses
  call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6)
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV13btSphereShape, i64 16), ptr %6, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 8, ptr %i.m, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 40
  store float %i.l, ptr %i.n, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 56
  store float %i.l, ptr %i.o, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  invoke void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTV15btTriangleShape, i64 16), ptr %7, align 8, !tbaa !8
  %.ptr5.i = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 1, ptr %i.r, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.ptr5.i, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !66
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !66
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !66
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 328 ; 2 uses
  %i.v = load i8, ptr %i.u, align 4
  %i.w = and i8 %i.v, -16
  store i8 %i.w, ptr %i.u, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  invoke void @_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = invoke noundef zeroext i1 @_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(64) %i.x, ptr noundef nonnull align 4 dereferenceable(64) %i.y, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(188) %5)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.z, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.aa = load float, ptr %i.i, align 4, !tbaa !116
  %i.ab = load float, ptr %i.f, align 8, !tbaa !120 ; 2 uses
  %i.ac = fcmp ogt float %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store float %i.ab, ptr %i.i, align 4, !tbaa !116
  br label %bb.j

bb.g:                                             ; preds = %bb.a, %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.h:                                             ; preds = %bb.j, %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.i:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.m unwind label %bb.p

bb.j:                                             ; preds = %bb.e, %bb.f, %bb.d
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void

bb.m:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.af, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %.pn, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %.pn12

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #11
  unreachable
}

declare void @_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(188)) unnamed_addr #1

declare void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResultD2Ev(ptr noundef nonnull align 8 dead_on_return(188) dereferenceable(188) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResult9DebugDrawEf(ptr noundef nonnull align 8 dereferenceable(188) %0, float noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(64) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResultD0Ev(ptr noundef nonnull align 8 dead_on_return(188) dereferenceable(188) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

declare void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !16, i64 16}
!11 = !{!"_ZTS33btConvexConcaveCollisionAlgorithm", !12, i64 0, !16, i64 16, !17, i64 24}
!12 = !{!"_ZTS30btActivatingCollisionAlgorithm", !13, i64 0}
!13 = !{!"_ZTS20btCollisionAlgorithm", !14, i64 8}
!14 = !{!"p1 _ZTS12btDispatcher", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!"_ZTS24btConvexTriangleCallback", !18, i64 0, !19, i64 8, !19, i64 16, !20, i64 24, !20, i64 40, !21, i64 56, !14, i64 64, !22, i64 72, !23, i64 80, !5, i64 84, !24, i64 88}
!18 = !{!"_ZTS18btTriangleCallback"}
!19 = !{!"p1 _ZTS17btCollisionObject", !15, i64 0}
!20 = !{!"_ZTS9btVector3", !6, i64 0}
!21 = !{!"p1 _ZTS16btManifoldResult", !15, i64 0}
!22 = !{!"p1 _ZTS16btDispatcherInfo", !15, i64 0}
!23 = !{!"float", !6, i64 0}
!24 = !{!"p1 _ZTS20btPersistentManifold", !15, i64 0}
!25 = !{!26, !14, i64 0}
!26 = !{!"_ZTS36btCollisionAlgorithmConstructionInfo", !14, i64 0, !24, i64 8}
!27 = !{!17, !14, i64 64}
!28 = !{!17, !22, i64 72}
!29 = !{!17, !19, i64 8}
!30 = !{!17, !19, i64 16}
!31 = !{!17, !24, i64 88}
!32 = !{ptr @_ZN24btConvexTriangleCallback10clearCacheEv}
!33 = !{ptr @_ZN24btConvexTriangleCallbackD2Ev, ptr @_ZN24btConvexTriangleCallback10clearCacheEv}
!34 = !{ptr @_ZN24btConvexTriangleCallbackD2Ev}
!35 = !{!11, !24, i64 112}
!36 = !{!37, !5, i64 4}
!37 = !{!"_ZTS20btAlignedObjectArrayIP20btPersistentManifoldE", !38, i64 0, !5, i64 4, !5, i64 8, !39, i64 16, !16, i64 24}
!38 = !{!"_ZTS18btAlignedAllocatorIP20btPersistentManifoldLj16EE"}
!39 = !{!"p2 _ZTS20btPersistentManifold", !40, i64 0}
!40 = !{!"any p2 pointer", !15, i64 0}
!41 = !{!37, !5, i64 8}
!42 = !{!37, !39, i64 16}
!43 = !{!24, !24, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = distinct !{!49, !45}
!50 = !{!37, !16, i64 24}
!51 = !{i8 0, i8 2}
!52 = !{}
!53 = !{!54, !55, i64 24}
!54 = !{!"_ZTS16btDispatcherInfo", !23, i64 0, !5, i64 4, !5, i64 8, !23, i64 12, !16, i64 16, !55, i64 24, !16, i64 32, !16, i64 33, !16, i64 34, !23, i64 36, !16, i64 40, !23, i64 44, !56, i64 48}
!55 = !{!"p1 _ZTS12btIDebugDraw", !15, i64 0}
!56 = !{!"p1 _ZTS12btStackAlloc", !15, i64 0}
!57 = !{!23, !23, i64 0}
!58 = !{!59, !63, i64 200}
!59 = !{!"_ZTS17btCollisionObject", !60, i64 8, !60, i64 72, !20, i64 136, !20, i64 152, !20, i64 168, !16, i64 184, !23, i64 188, !62, i64 192, !63, i64 200, !63, i64 208, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !23, i64 232, !23, i64 236, !23, i64 240, !15, i64 248, !5, i64 256, !23, i64 260, !23, i64 264, !23, i64 268, !16, i64 272, !6, i64 273}
!60 = !{!"_ZTS11btTransform", !61, i64 0, !20, i64 48}
!61 = !{!"_ZTS11btMatrix3x3", !6, i64 0}
!62 = !{!"p1 _ZTS17btBroadphaseProxy", !15, i64 0}
!63 = !{!"p1 _ZTS16btCollisionShape", !15, i64 0}
!64 = !{!65, !5, i64 8}
!65 = !{!"_ZTS16btCollisionShape", !5, i64 8, !15, i64 16}
!66 = !{i64 0, i64 16, !67}
!67 = !{!6, !6, i64 0}
!68 = !{!17, !23, i64 80}
!69 = !{!70, !23, i64 56}
!70 = !{!"_ZTS21btConvexInternalShape", !71, i64 0, !20, i64 24, !20, i64 40, !23, i64 56, !23, i64 60}
!71 = !{!"_ZTS13btConvexShape", !65, i64 0}
!72 = !{!17, !21, i64 56}
!73 = !{!74, !76}
!74 = distinct !{!74, !75, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!75 = distinct !{!75, !"_ZNK11btMatrix3x39transposeEv"}
!76 = distinct !{!76, !77, !"_ZNK11btTransform7inverseEv: argument 0"}
!77 = distinct !{!77, !"_ZNK11btTransform7inverseEv"}
!78 = !{!76}
!79 = !{!80, !82}
!80 = distinct !{!80, !81, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!81 = distinct !{!81, !"_ZmlRK11btMatrix3x3S1_"}
!82 = distinct !{!82, !83, !"_ZNK11btTransformmlERKS_: argument 0"}
!83 = distinct !{!83, !"_ZNK11btTransformmlERKS_"}
!84 = !{!82}
!85 = !{!86, !24, i64 8}
!86 = !{!"_ZTS16btManifoldResult", !87, i64 0, !24, i64 8, !60, i64 16, !60, i64 80, !19, i64 144, !19, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172}
!87 = !{!"_ZTSN36btDiscreteCollisionDetectorInterface6ResultE"}
!88 = !{!89, !15, i64 712}
!89 = !{!"_ZTS20btPersistentManifold", !90, i64 0, !6, i64 8, !15, i64 712, !15, i64 720, !5, i64 728, !23, i64 732, !23, i64 736, !5, i64 740}
!90 = !{!"_ZTS13btTypedObject", !5, i64 0}
!91 = !{!89, !15, i64 720}
!92 = !{!89, !5, i64 728}
!93 = !{!86, !19, i64 144}
!94 = !{!59, !23, i64 268}
!95 = !{!96, !98}
!96 = distinct !{!96, !97, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!97 = distinct !{!97, !"_ZNK11btMatrix3x39transposeEv"}
!98 = distinct !{!98, !99, !"_ZNK11btTransform7inverseEv: argument 0"}
!99 = distinct !{!99, !"_ZNK11btTransform7inverseEv"}
!100 = !{!98}
!101 = !{!102, !104}
!102 = distinct !{!102, !103, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!103 = distinct !{!103, !"_ZmlRK11btMatrix3x3S1_"}
!104 = distinct !{!104, !105, !"_ZNK11btTransformmlERKS_: argument 0"}
!105 = distinct !{!105, !"_ZNK11btTransformmlERKS_"}
!106 = !{!107, !109}
!107 = distinct !{!107, !108, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!108 = distinct !{!108, !"_ZmlRK11btMatrix3x3S1_"}
!109 = distinct !{!109, !110, !"_ZNK11btTransformmlERKS_: argument 0"}
!110 = distinct !{!110, !"_ZNK11btTransformmlERKS_"}
!111 = !{!109}
!112 = !{!59, !23, i64 264}
!113 = !{!114, !23, i64 200}
!114 = !{!"_ZTSZN33btConvexConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback", !18, i64 0, !60, i64 8, !60, i64 72, !60, i64 136, !23, i64 200, !23, i64 204}
!115 = !{!59, !23, i64 260}
!116 = !{!114, !23, i64 204}
!117 = !{!118, !55, i64 176}
!118 = !{!"_ZTSN12btConvexCast10CastResultE", !60, i64 8, !60, i64 72, !20, i64 136, !20, i64 152, !23, i64 168, !55, i64 176, !23, i64 184}
!119 = !{!118, !23, i64 184}
!120 = !{!118, !23, i64 168}
end_hunk_1
