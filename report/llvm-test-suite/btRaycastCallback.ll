inline.NumInlined: 110
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN25btTriangleRaycastCallback15processTriangleEP9btVector3ii:bb.a
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.av, float %i.ci) ; 3 uses
  %i.ck = fmul float %i.at, %i.bv
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.ap, float %i.ck) ; 3 uses
  %i.cm = fsub float %i.d, %i.ch                  ; 4 uses
  %i.cn = fsub float %i.ag, %i.cj                 ; 4 uses
  %i.co = fsub float %i.ak, %i.cl                 ; 4 uses
  %i.cp = fsub float %i.c, %i.ch                  ; 4 uses
  %i.cq = extractelement <2 x float> %i.i, i64 0
  %i.cr = fsub float %i.cq, %i.cj                 ; 4 uses
  %i.cs = extractelement <2 x float> %i.i, i64 1
  %i.ct = fsub float %i.cs, %i.cl                 ; 4 uses
  %i.cu = fneg float %i.cr
  %i.cv = fmul float %i.co, %i.cu
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.ct, float %i.cv)
  %i.cx = fneg float %i.ct
  %i.cy = fmul float %i.cm, %i.cx
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.co, float %i.cp, float %i.cy)
  %i.da = fneg float %i.cp
  %i.db = fmul float %i.cn, %i.da
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cr, float %i.db)
  %i.dd = fmul float %i.af, %i.cz
  %i.de = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.ai, float %i.dd)
  %i.df = tail call noundef float @llvm.fmuladd.f32(float %i.dc, float %i.ae, float %i.de)
  %i.dg = fcmp ult float %i.df, %i.cc
  br i1 %i.dg, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dh = fsub float %i.g, %i.ch                  ; 4 uses
  %i.di = extractelement <2 x float> %i.q, i64 0
  %i.dj = fsub float %i.di, %i.cj                 ; 4 uses
  %i.dk = extractelement <2 x float> %i.q, i64 1
  %i.dl = fsub float %i.dk, %i.cl                 ; 4 uses
  %i.dm = fneg float %i.dj
  %i.dn = fmul float %i.ct, %i.dm
  %i.do = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.dl, float %i.dn)
  %i.dp = fneg float %i.dl
  %i.dq = fmul float %i.cp, %i.dp
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.dh, float %i.dq)
  %i.ds = fneg float %i.dh
  %i.dt = fmul float %i.cr, %i.ds
  %i.du = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.dj, float %i.dt)
  %i.dv = fmul float %i.af, %i.dr
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.do, float %i.ai, float %i.dv)
  %i.dx = tail call noundef float @llvm.fmuladd.f32(float %i.du, float %i.ae, float %i.dw)
  %i.dy = fcmp ult float %i.dx, %i.cc
  br i1 %i.dy, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dz = fneg float %i.cn
  %i.ea = fmul float %i.dl, %i.dz
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.co, float %i.ea)
  %i.ec = fneg float %i.co
  %i.ed = fmul float %i.dh, %i.ec
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.dl, float %i.cm, float %i.ed)
  %i.ef = fneg float %i.cm
  %i.eg = fmul float %i.dj, %i.ef
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.cn, float %i.eg)
  %i.ei = fmul float %i.af, %i.ee
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.eb, float %i.ai, float %i.ei)
  %i.ek = tail call noundef float @llvm.fmuladd.f32(float %i.eh, float %i.ae, float %i.ej)
  %i.el = fcmp ult float %i.ek, %i.cc
  br i1 %i.el, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cb)
  %i.em = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.en = insertelement <2 x float> poison, float %i.em, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x float> %i.x, %i.eo            ; 2 uses
  store <2 x float> %i.ep, ptr %4, align 8, !tbaa !18
  %i.eq = fmul float %i.ae, %i.em                 ; 2 uses
  store float %i.eq, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !18
  %i.er = and i32 %i.br, 2
  %i.es = icmp ne i32 %i.er, 0
  %i.et = fcmp ole float %i.bm, 0.000000e+00
  %or.cond3 = or i1 %i.et, %i.es
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.eu = fneg <2 x float> %i.ep
  %i.ev = fneg float %i.eq
  %.sroa.3.12.vec.insert.i97 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ev, i64 0
  store <2 x float> %i.eu, ptr %5, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i97, ptr %i.ew, align 8
  %i.ex = load ptr, ptr %0, align 8, !tbaa !8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = call noundef float %i.ez(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %5, float noundef %i.bv, i32 noundef %2, i32 noundef %3)
  store float %i.fa, ptr %i.bw, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.fb = load ptr, ptr %0, align 8, !tbaa !8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = call noundef float %i.fd(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef %i.bv, i32 noundef %2, i32 noundef %3)
  store float %i.fe, ptr %i.bw, align 4, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.f, %bb.i, %bb.h, %bb.e, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN28btTriangleConvexcastCallbackC2EPK13btConvexShapeRK11btTransformS5_S5_f(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(216) initializes((0, 216)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, float noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV28btTriangleConvexcastCallback, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !10
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !10
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !10
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !10
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !10
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !10
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 16, i1 false), !tbaa.struct !10
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !10
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !10
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  store float 1.000000e+00, ptr %i.w, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 212
  store float %5, ptr %i.x, align 4, !tbaa !26
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: uwtable
define dso_local void @_ZN28btTriangleConvexcastCallback15processTriangleEP9btVector3ii(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.btTriangleShape, align 8     ; 13 uses
  %5 = alloca %class.btVoronoiSimplexSolver, align 4 ; 5 uses
  %6 = alloca %class.btGjkEpaPenetrationDepthSolver, align 8 ; 5 uses
  %7 = alloca %class.btContinuousConvexCollision, align 8 ; 7 uses
  %8 = alloca %"struct.btConvexCast::CastResult", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTV15btTriangleShape, i64 16), ptr %4, align 8, !tbaa !8
  %.ptr5.i = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.ptr5.i, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !10
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !10
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.g = load float, ptr %i.f, align 4, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  store float %i.g, ptr %i.h, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 328
  store i8 0, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV30btGjkEpaPenetrationDepthSolver, i64 16), ptr %6, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  invoke void @_ZN27btContinuousConvexCollisionC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %i.k, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12btConvexCast10CastResultE, i64 16), ptr %8, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 168 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 176
  store ptr null, ptr %i.m, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 184
  store float 0.000000e+00, ptr %i.n, align 8, !tbaa !35
  store float 1.000000e+00, ptr %i.l, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.r = invoke noundef zeroext i1 @_ZN27btContinuousConvexCollision16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 4 dereferenceable(64) %i.o, ptr noundef nonnull align 4 dereferenceable(64) %i.p, ptr noundef nonnull align 4 dereferenceable(64) %i.q, ptr noundef nonnull align 4 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(188) %8)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  br i1 %i.r, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 136 ; 3 uses
  %i.t = load float, ptr %i.s, align 8, !tbaa !18 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 140 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !18 ; 3 uses
  %i.w = fmul float %i.v, %i.v
  %i.x = call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 144 ; 2 uses
  %i.z = load float, ptr %i.y, align 8, !tbaa !18 ; 3 uses
  %i.aa = call noundef float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.x) ; 2 uses
  %i.ab = fcmp ogt float %i.aa, f0x38D1B717
  br i1 %i.ab, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load float, ptr %i.l, align 8, !tbaa !36 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !25
  %i.af = fcmp olt float %i.ac, %i.ae
  br i1 %i.af, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.aa)
  %i.ag = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.ah = fmul float %i.t, %i.ag
  store float %i.ah, ptr %i.s, align 8, !tbaa !18
  %i.ai = fmul float %i.v, %i.ag
  store float %i.ai, ptr %i.u, align 4, !tbaa !18
  %i.aj = fmul float %i.z, %i.ag
  store float %i.aj, ptr %i.y, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.al = load ptr, ptr %0, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef float %i.an(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %i.ak, float noundef %i.ac, i32 noundef %2, i32 noundef %3)
          to label %bb.i unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.i, %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.f, %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %bb.k unwind label %bb.m

bb.i:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void

bb.k:                                             ; preds = %bb.h, %bb.g
  %.pn11 = phi { ptr, i32 } [ %i.ap, %bb.g ], [ %i.aq, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  resume { ptr, i32 } %.pn11

bb.m:                                             ; preds = %bb.k, %bb.h
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #15
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN21btConvexInternalShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(64) %0, float noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %1, ptr %i.a, align 8, !tbaa !29
  ret void
}

declare void @_ZN27btContinuousConvexCollisionC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7

declare noundef zeroext i1 @_ZN27btContinuousConvexCollision16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(188)) unnamed_addr #7

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResultD2Ev(ptr noundef nonnull align 8 dead_on_return(188) dereferenceable(188) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN25btTriangleRaycastCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #15
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

declare void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN28btTriangleConvexcastCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #15
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #7

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN15btTriangleShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.d

_ZN13btConvexShapedlEPv.exit:                     ; preds = %bb.c
  resume { ptr, i32 } %i.a

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #15
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  ret void
}

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #7

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #7

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #7

declare void @_ZN21btConvexInternalShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #7

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK21btConvexInternalShape15getLocalScalingEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 comdat align 2 {
bb.a:
end_hunk_0
