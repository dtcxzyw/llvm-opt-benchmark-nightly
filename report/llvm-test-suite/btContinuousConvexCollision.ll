inline.NumInlined: 355
inline.NumDeleted: 76
begin_hunk_0_@_ZN27btContinuousConvexCollision16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE:bb.a
  %i.fv = load ptr, ptr %i.ct, align 8, !tbaa !17
  invoke void @_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr noundef nonnull align 8 dereferenceable(96) %22, ptr noundef %i.fs, ptr noundef %i.ft, ptr noundef %i.fu, ptr noundef %i.fv)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #13
  store float f0x5D5E0B6B, ptr %i.ef, align 8, !tbaa !34
  store ptr null, ptr %i.eg, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %23, ptr noundef nonnull align 4 dereferenceable(64) %18, i64 16, i1 false), !tbaa.struct !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 4 dereferenceable(16) %i.ea, i64 16, i1 false), !tbaa.struct !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 4 dereferenceable(16) %i.ec, i64 16, i1 false), !tbaa.struct !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 4 dereferenceable(16) %i.dx, i64 16, i1 false), !tbaa.struct !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ek, ptr noundef nonnull align 4 dereferenceable(64) %19, i64 16, i1 false), !tbaa.struct !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 4 dereferenceable(16) %i.dz, i64 16, i1 false), !tbaa.struct !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 4 dereferenceable(16) %i.eb, i64 16, i1 false), !tbaa.struct !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 4 dereferenceable(16) %i.dy, i64 16, i1 false), !tbaa.struct !40
  invoke void @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr noundef nonnull align 8 dereferenceable(96) %22, ptr noundef nonnull align 8 dereferenceable(144) %23, ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef null, i1 noundef zeroext false)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.fw = load i8, ptr %i.ee, align 4, !tbaa !33, !range !41, !noundef !42
  %i.fx = trunc nuw i8 %i.fw to i1                ; 2 uses
  br i1 %i.fx, label %bb.ac, label %.thread203

bb.ac:                                            ; preds = %bb.ab
  %i.fy = load float, ptr %i.ed, align 8, !tbaa !29 ; 3 uses
  %i.fz = fcmp olt float %i.fy, 0.000000e+00
  br i1 %i.fz, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 168
  store float %i.fg, ptr %i.ga, align 8, !tbaa !46
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.gc = load <4 x float>, ptr %i.ep, align 8
  store <4 x float> %i.gc, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false), !tbaa.struct !40
  br label %.thread203

bb.ae:                                            ; preds = %bb.z
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.af:                                            ; preds = %bb.aa
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  br label %bb.ah

.thread203:                                       ; preds = %bb.ab, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  br label %.thread

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false), !tbaa.struct !40
  %.sroa.11147.0.copyload153 = load float, ptr %.sroa.11147.0..sroa_idx152, align 4
  %i.gg = load <2 x float>, ptr %i.ep, align 8    ; 2 uses
  %i.gh = load <2 x float>, ptr %.sroa.14157.0..sroa_idx162, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  %i.gi = fcmp ogt float %i.fy, 1.000000e-03
  %i.gj = extractelement <2 x float> %i.gg, i64 0
  %i.gk = extractelement <2 x float> %i.gh, i64 0
  br i1 %i.gi, label %bb.h, label %._crit_edge

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %.pn89 = phi { ptr, i32 } [ %i.gf, %bb.af ], [ %i.ge, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %bb.ai

bb.ai:                                            ; preds = %bb.w, %bb.x, %bb.ah
  %.pn89.pn.pn.pn = phi { ptr, i32 } [ %i.fp, %bb.x ], [ %.pn89, %bb.ah ], [ %i.fo, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  br label %bb.ak

._crit_edge:                                      ; preds = %bb.ag, %.._crit_edge_crit_edge
  %.pre-phi = phi float [ %.pre, %.._crit_edge_crit_edge ], [ %i.fd, %bb.ag ]
  %.077.lcssa = phi float [ 0.000000e+00, %.._crit_edge_crit_edge ], [ %i.fg, %bb.ag ]
  %i.gl = phi <2 x float> [ %i.dn, %.._crit_edge_crit_edge ], [ %i.gg, %bb.ag ]
  %i.gm = phi <2 x float> [ %i.dv, %.._crit_edge_crit_edge ], [ %i.gh, %bb.ag ]
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.go = load float, ptr %i.gn, align 8, !tbaa !47
  %i.gp = fcmp ugt float %.pre-phi, %i.go
  br i1 %i.gp, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %._crit_edge
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 168
  store float %.077.lcssa, ptr %i.gq, align 8, !tbaa !46
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 136
  store <2 x float> %i.gl, ptr %i.gr, align 8
  %.sroa.14157.0..sroa_idx164 = getelementptr inbounds nuw i8, ptr %5, i64 144
  store <2 x float> %i.gm, ptr %.sroa.14157.0..sroa_idx164, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, ptr noundef nonnull align 4 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !40
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.p, %bb.o, %.thread203, %bb.f, %bb.aj, %._crit_edge
  %.475 = phi i1 [ false, %._crit_edge ], [ true, %bb.aj ], [ %i.fx, %.thread203 ], [ false, %bb.f ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.am

bb.ak:                                            ; preds = %bb.m, %bb.ai, %bb.n
  %.pn89.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ey, %bb.n ], [ %.pn, %bb.m ], [ %.pn89.pn.pn.pn, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %13)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  resume { ptr, i32 } %.pn89.pn.pn.pn.pn.pn.pn.pn

bb.am:                                            ; preds = %bb.a, %.thread
  %.576 = phi i1 [ %.475, %.thread ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  ret i1 %.576

bb.an:                                            ; preds = %bb.ak
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #14
  unreachable
}

declare void @_ZN22btVoronoiSimplexSolver5resetEv(ptr noundef nonnull align 4 dereferenceable(353)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !20
  %i.d = fmul float %3, %i.c
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !20
  %i.f = insertelement <2 x float> poison, float %3, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %i.g, %i.e
  %i.i = load <2 x float>, ptr %i.a, align 4, !tbaa !20
  %i.j = fadd <2 x float> %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load float, ptr %i.k, align 4, !tbaa !20
  %i.m = fadd float %i.d, %i.l
  %.sroa.3.12.vec.insert.i19 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.m, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %i.j, ptr %i.n, align 4
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i19, ptr %.sroa.460.0..sroa_idx, align 4, !tbaa !22
  %6 = load float, ptr %2, align 4, !tbaa !20     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !20 ; 3 uses
  %7 = fmul float %i.p, %i.p
  %8 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %7)
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %10 = load float, ptr %9, align 4, !tbaa !20    ; 3 uses
  %i.q = tail call noundef float @llvm.fmuladd.f32(float %10, float %10, float %8)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.q) ; 2 uses
  %i.r = fmul float %3, %sqrt.i
  %i.s = fcmp ogt float %i.r, f0x3F490FDB
  %i.t = fdiv float f0x3F490FDB, %3
  %.0 = select i1 %i.s, float %i.t, float %sqrt.i ; 6 uses
  %i.u = fcmp olt float %.0, 1.000000e-03
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = fmul float %3, %3
  %i.w = fmul float %3, %i.v
  %i.x = fmul float %i.w, f0x3CAAAAAB
  %i.y = fmul float %i.x, %.0
  %i.z = fneg float %.0
  %i.aa = fmul float %i.y, %i.z
  %i.ab = tail call float @llvm.fmuladd.f32(float %3, float 5.000000e-01, float %i.aa)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ac = fmul float %.0, 5.000000e-01
  %i.ad = fmul float %3, %i.ac
  %i.ae = tail call noundef float @sinf(float noundef %i.ad) #13, !tbaa !4
  %i.af = fdiv float %i.ae, %.0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink69 = phi float [ %i.af, %bb.c ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ag = fmul float %6, %.sink69                 ; 4 uses
  %11 = fmul float %i.p, %.sink69                 ; 3 uses
  %12 = fmul float %10, %.sink69                  ; 3 uses
  %i.ah = fmul float %3, %.0
  %i.ai = fmul float %i.ah, 5.000000e-01
  %i.aj = tail call noundef float @cosf(float noundef %i.ai) #13, !tbaa !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %.fca.0.load.i = load <2 x float>, ptr %5, align 8 ; 2 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.sroa.051.4.vec.extract.a = extractelement <2 x float> %.fca.0.load.i, i64 0 ; 4 uses
  %i.ak = extractelement <2 x float> %.fca.1.load.i, i64 1 ; 4 uses
  %i.al = fmul float %i.ag, %i.ak
  %i.am = call float @llvm.fmuladd.f32(float %i.aj, float %.sroa.051.4.vec.extract.a, float %i.al)
  %i.an = extractelement <2 x float> %.fca.1.load.i, i64 0 ; 4 uses
  %i.ao = call float @llvm.fmuladd.f32(float %11, float %i.an, float %i.am)
  %.sroa.051.4.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 1 ; 4 uses
  %i.ap = fneg float %12                          ; 2 uses
  %i.aq = call float @llvm.fmuladd.f32(float %i.ap, float %.sroa.051.4.vec.extract, float %i.ao) ; 3 uses
  %i.ar = fmul float %11, %i.ak
  %13 = call float @llvm.fmuladd.f32(float %i.aj, float %.sroa.051.4.vec.extract, float %i.ar)
  %14 = call float @llvm.fmuladd.f32(float %12, float %.sroa.051.4.vec.extract.a, float %13)
  %15 = fneg float %i.ag
  %16 = call float @llvm.fmuladd.f32(float %15, float %i.an, float %14) ; 3 uses
  %17 = fmul float %12, %i.ak
  %18 = call float @llvm.fmuladd.f32(float %i.aj, float %i.an, float %17)
  %19 = call float @llvm.fmuladd.f32(float %i.ag, float %.sroa.051.4.vec.extract, float %18)
  %20 = fneg float %11                            ; 2 uses
  %21 = call float @llvm.fmuladd.f32(float %20, float %.sroa.051.4.vec.extract.a, float %19) ; 3 uses
  %22 = fneg float %.sroa.051.4.vec.extract.a
  %23 = fmul float %i.ag, %22
  %i.as = call float @llvm.fmuladd.f32(float %i.aj, float %i.ak, float %23)
  %24 = call float @llvm.fmuladd.f32(float %20, float %.sroa.051.4.vec.extract, float %i.as)
  %i.at = call float @llvm.fmuladd.f32(float %i.ap, float %i.an, float %24) ; 3 uses
  %25 = fmul float %16, %16
  %i.au = call float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %25)
  %i.av = call float @llvm.fmuladd.f32(float %21, float %21, float %i.au)
  %i.aw = call noundef float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.av)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.aw)
  %i.ax = fdiv float 1.000000e+00, %sqrt.i.i      ; 4 uses
  %i.ay = fmul float %i.aq, %i.ax                 ; 6 uses
  %26 = fmul float %16, %i.ax                     ; 5 uses
  %i.az = fmul float %21, %i.ax                   ; 4 uses
  %i.ba = fmul float %i.at, %i.ax                 ; 5 uses
  %27 = fmul float %26, %26
  %i.bb = call float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %27)
  %i.bc = call float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.bb)
  %i.bd = call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.bc)
  %i.be = fdiv float 2.000000e+00, %i.bd          ; 3 uses
  %i.bf = fmul float %i.ay, %i.be                 ; 2 uses
  %i.bg = fmul float %26, %i.be                   ; 3 uses
  %i.bh = fmul float %i.az, %i.be                 ; 4 uses
  %i.bi = fmul float %i.ba, %i.bf                 ; 2 uses
  %28 = fmul float %i.ba, %i.bg                   ; 2 uses
  %29 = fmul float %i.ba, %i.bh                   ; 2 uses
  %30 = fmul float %i.ay, %i.bf                   ; 2 uses
  %31 = fmul float %i.ay, %i.bg                   ; 2 uses
  %i.bj = fmul float %i.ay, %i.bh                 ; 2 uses
  %i.bk = fmul float %26, %i.bg                   ; 2 uses
  %i.bl = fmul float %26, %i.bh                   ; 2 uses
  %i.bm = fmul float %i.az, %i.bh                 ; 2 uses
  %32 = fadd float %i.bk, %i.bm
  %33 = fsub float 1.000000e+00, %32
  %i.bn = fsub float %31, %29
  %34 = fadd float %i.bj, %28
  %i.bo = fadd float %31, %29
  %i.bp = fadd float %30, %i.bm
  %35 = fsub float 1.000000e+00, %i.bp
  %36 = fsub float %i.bl, %i.bi
  %37 = fsub float %i.bj, %28
  %38 = fadd float %i.bl, %i.bi
  %39 = fadd float %30, %i.bk
  %40 = fsub float 1.000000e+00, %39
  store float %33, ptr %4, align 4, !tbaa !20
  %41 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.bn, ptr %41, align 4, !tbaa !20
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %34, ptr %42, align 4, !tbaa !20
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %43, align 4, !tbaa !20
  %44 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %i.bo, ptr %44, align 4, !tbaa !20
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %35, ptr %45, align 4, !tbaa !20
  %46 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %36, ptr %46, align 4, !tbaa !20
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float 0.000000e+00, ptr %i.bq, align 4, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %37, ptr %i.br, align 4, !tbaa !20
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %38, ptr %i.bs, align 4, !tbaa !20
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %40, ptr %i.bt, align 4, !tbaa !20
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %i.bu, align 4, !tbaa !20
  ret void
}

declare void @_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN27btContinuousConvexCollisionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  resume { ptr, i32 } %i.a
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %4 = alloca %class.btMatrix3x3, align 16        ; 6 uses
  %5 = alloca %class.btQuaternion, align 4        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !20, !noalias !48
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load float, ptr %i.k, align 4, !tbaa !20, !noalias !48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load float, ptr %i.n, align 4, !tbaa !20, !noalias !48
  %i.p = load <2 x float>, ptr %i.c, align 4, !tbaa !20, !noalias !51 ; 3 uses
  %i.q = load <2 x float>, ptr %i.a, align 4, !tbaa !20, !noalias !51 ; 5 uses
  %i.r = fneg <2 x float> %i.p                    ; 3 uses
  %i.s = load <2 x float>, ptr %0, align 4, !tbaa !20, !noalias !51 ; 3 uses
  %i.t = extractelement <2 x float> %i.r, i64 1
  %i.u = extractelement <2 x float> %i.s, i64 0   ; 2 uses
  %i.v = extractelement <2 x float> %i.q, i64 0
  %i.w = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.x = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.y = insertelement <4 x float> %i.x, float -0.000000e+00, i64 3
  %i.z = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aa = shufflevector <4 x float> %i.y, <4 x float> %i.z, <4 x i32> <i32 0, i32 poison, i32 4, i32 3>
  %i.ab = load <2 x float>, ptr %i.b, align 4, !tbaa !20, !noalias !51 ; 4 uses
  %i.ac = load float, ptr %i.e, align 4, !tbaa !20, !noalias !51 ; 2 uses
  %i.ad = fneg float %i.ac
  %i.ae = load <2 x float>, ptr %i.f, align 4, !tbaa !20, !noalias !51 ; 3 uses
  %i.af = load float, ptr %i.d, align 4, !tbaa !20, !noalias !51
  %i.ag = load <2 x float>, ptr %i.g, align 4, !tbaa !20, !noalias !51 ; 5 uses
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ai = shufflevector <2 x float> %i.ae, <2 x float> %i.ab, <2 x i32> <i32 1, i32 2>
  %i.aj = fneg <2 x float> %i.ai                  ; 2 uses
  %i.ak = fmul <2 x float> %i.ag, %i.aj
  %i.al = fmul float %i.ac, %i.t
  %i.am = fmul float %i.u, %i.ad
  %i.an = extractelement <2 x float> %i.ag, i64 1
  %foldExtExtBinop = fmul <2 x float> %i.ah, %i.r
  %i.ao = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop23 = fmul <2 x float> %i.q, %i.aj
  %i.ap = extractelement <2 x float> %foldExtExtBinop23, i64 0
  %i.aq = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ar = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.aq, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> %i.w, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.at = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.au = shufflevector <4 x float> %i.as, <4 x float> %i.at, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.av = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aw = shufflevector <4 x float> %i.aa, <4 x float> %i.av, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.ax = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ap, i64 0
  %i.ay = insertelement <4 x float> %i.ax, float %i.ao, i64 1
  %i.az = insertelement <4 x float> %i.ay, float %i.am, i64 2
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %i.aw, <4 x float> %i.az) ; 2 uses
  %i.bb = extractelement <4 x float> %i.ba, i64 0
  %i.bc = extractelement <2 x float> %i.ag, i64 0
  %i.bd = fmul float %i.bc, %i.bb
  %i.be = shufflevector <2 x float> %i.ae, <2 x float> %i.ab, <2 x i32> <i32 0, i32 3>
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.be, <2 x float> %i.ak)
  %i.bg = extractelement <2 x float> %i.ab, i64 0
  %i.bh = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.af, float %i.al) ; 2 uses
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.u, float %i.bh, float %i.bd)
  %i.bj = fneg float %i.v
  %i.bk = shufflevector <2 x float> %i.q, <2 x float> %i.s, <4 x i32> <i32 1, i32 2, i32 3, i32 poison> ; 2 uses
  %i.bl = insertelement <4 x float> %i.bk, float 0.000000e+00, i64 3
  %i.bm = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bj, i64 2
  %i.bn = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bp = fmul <4 x float> %i.bl, %i.bo
  %i.bq = shufflevector <4 x float> %i.aw, <4 x float> %i.bk, <4 x i32> <i32 2, i32 6, i32 5, i32 poison>
  %i.br = insertelement <4 x float> %i.bq, float 0.000000e+00, i64 3
  %i.bs = shufflevector <2 x float> %i.p, <2 x float> %i.q, <4 x i32> <i32 1, i32 0, i32 3, i32 poison>
  %i.bt = insertelement <4 x float> %i.bs, float -0.000000e+00, i64 3
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.bt, <4 x float> %i.bp) ; 2 uses
  %i.bv = extractelement <4 x float> %i.bu, i64 0
  %i.bw = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.bv, float %i.bi)
  %i.bx = fdiv float 1.000000e+00, %i.bw
  %i.by = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bh, i64 0
  %i.bz = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ca = shufflevector <4 x float> %i.by, <4 x float> %i.bz, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.cb = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.bx, i64 0
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 3 uses
  %i.cd = fmul <4 x float> %i.ca, %i.cc           ; 2 uses
  %i.ce = fmul <4 x float> %i.ba, %i.cc           ; 2 uses
  %i.cf = fmul <4 x float> %i.bu, %i.cc           ; 2 uses
  %i.cg = load <2 x float>, ptr %1, align 4, !tbaa !20, !noalias !48 ; 2 uses
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ci = fmul <4 x float> %i.ch, %i.ce
  %i.cj = shufflevector <2 x float> %i.cg, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cd, <4 x float> %i.cj, <4 x float> %i.ci)
  %i.cl = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.i, i64 0
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.cm, <4 x float> %i.ck)
  store <4 x float> %i.cn, ptr %4, align 16, !tbaa !20, !alias.scope !48
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cp = load <2 x float>, ptr %i.j, align 4, !tbaa !20, !noalias !48 ; 2 uses
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.cr = insertelement <4 x float> %i.ce, float 1.000000e+00, i64 3 ; 2 uses
  %i.cs = fmul <4 x float> %i.cq, %i.cr
  %i.ct = insertelement <4 x float> %i.cd, float 0.000000e+00, i64 3 ; 2 uses
  %i.cu = shufflevector <2 x float> %i.cp, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> %i.cu, <4 x float> %i.cs)
  %i.cw = insertelement <4 x float> %i.cf, float 0.000000e+00, i64 3 ; 2 uses
  %i.cx = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.l, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.cy, <4 x float> %i.cv)
  store <4 x float> %i.cz, ptr %i.co, align 16, !tbaa !20, !alias.scope !48
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.db = load <2 x float>, ptr %i.m, align 4, !tbaa !20, !noalias !48 ; 2 uses
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.dd = fmul <4 x float> %i.dc, %i.cr
  %i.de = shufflevector <2 x float> %i.db, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> %i.de, <4 x float> %i.dd)
  %i.dg = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.o, i64 0
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.dh, <4 x float> %i.df)
  store <4 x float> %i.di, ptr %i.da, align 16, !tbaa !20, !alias.scope !48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.dj = load float, ptr %5, align 4, !tbaa !20  ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !20 ; 3 uses
  %i.dm = fmul float %i.dl, %i.dl
  %i.dn = call float @llvm.fmuladd.f32(float %i.dj, float %i.dj, float %i.dm)
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !20 ; 3 uses
  %i.dq = call float @llvm.fmuladd.f32(float %i.dp, float %i.dp, float %i.dn)
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !20 ; 3 uses
  %i.dt = call noundef float @llvm.fmuladd.f32(float %i.ds, float %i.ds, float %i.dq)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.dt)
  %i.du = fdiv float 1.000000e+00, %sqrt.i.i      ; 4 uses
  %i.dv = fmul float %i.dj, %i.du                 ; 3 uses
  %i.dw = fmul float %i.dl, %i.du                 ; 3 uses
  %i.dx = fmul float %i.dp, %i.du                 ; 3 uses
  %i.dy = fmul float %i.ds, %i.du
  %i.dz = call noundef float @acosf(float noundef %i.dy) #13, !tbaa !4
  %i.ea = fmul float %i.dz, 2.000000e+00
  store float %i.ea, ptr %3, align 4, !tbaa !20
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float 0.000000e+00, ptr %.sroa.616.0..sroa_idx, align 4, !tbaa !20
  %i.eb = fmul float %i.dw, %i.dw
  %i.ec = call float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %i.eb)
  %i.ed = call noundef float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %i.ec) ; 2 uses
  %i.ee = fcmp olt float %i.ed, f0x28800000
  br i1 %i.ee, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sqrt = call float @llvm.sqrt.f32(float %i.ed)
  %i.ef = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.eg = fmul float %i.dv, %i.ef
  %i.eh = fmul float %i.dw, %i.ef
  %i.ei = fmul float %i.dx, %i.ef
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink21 = phi float [ %i.eg, %bb.b ], [ 1.000000e+00, %bb.a ]
  %.sink20 = phi float [ %i.eh, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sink = phi float [ %i.ei, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %.sink21, ptr %2, align 4
  store float %.sink20, ptr %.sroa.414.0..sroa_idx, align 4
  store float %.sink, ptr %.sroa.515.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !20   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !20 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !20 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = fadd float %i.h, 1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #13, !tbaa !4 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.n, align 4, !tbaa !20
  %i.t = load float, ptr %i.m, align 4, !tbaa !20
  %i.u = load float, ptr %i.j, align 4, !tbaa !20
  %i.v = load float, ptr %i.k, align 4, !tbaa !20
  %i.w = load float, ptr %i.o, align 4, !tbaa !20
  %i.x = load float, ptr %i.p, align 4, !tbaa !20
  %i.y = fsub float %i.v, %i.x
  %i.z = fsub float %i.w, %i.u
  %i.aa = fsub float %i.t, %i.s
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 1
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ae = insertelement <4 x float> <float poison, float poison, float poison, float 5.000000e-01>, float %i.aa, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.z, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.y, i64 2
  %i.ah = fmul <4 x float> %i.ad, %i.ag
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = fcmp olt float %i.b, %i.d
  %i.aj = fcmp olt float %i.d, %i.g
  %i.ak = select i1 %i.aj, i32 2, i32 1
  %i.al = fcmp olt float %i.b, %i.g
  %i.am = select i1 %i.al, i32 2, i32 0
  %i.an = select i1 %i.ai, i32 %i.ak, i32 %i.am
  %.fr = freeze i32 %i.an                         ; 3 uses
  %i.ao = add nuw nsw i32 %.fr, 1                 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 3
  %i.aq = select i1 %i.ap, i32 0, i32 %i.ao
  %i.ar = add nuw nsw i32 %.fr, 2
  %i.as = urem i32 %i.ar, 3
  %i.at = zext nneg i32 %.fr to i64               ; 5 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load float, ptr %i.av, align 4, !tbaa !20
  %i.ax = sext i32 %i.aq to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !20
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.as to i64              ; 5 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load float, ptr %i.be, align 4, !tbaa !20
  %i.bg = fsub float %i.bb, %i.bf
  %i.bh = fadd float %i.bg, 1.000000e+00
  %i.bi = tail call noundef float @sqrtf(float noundef %i.bh) #13, !tbaa !4 ; 2 uses
  %i.bj = fmul float %i.bi, 5.000000e-01
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store float %i.bj, ptr %i.bk, align 4, !tbaa !20
  %i.bl = fdiv float 5.000000e-01, %i.bi          ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !20
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !20
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = fmul float %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.br, ptr %i.bs, align 4, !tbaa !20
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.at
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !20
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !20
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = fmul float %i.bl, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  store float %i.by, ptr %i.bz, align 4, !tbaa !20
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.at
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !20
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bc
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !20
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = fmul float %i.bl, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  store float %i.cf, ptr %i.cg, align 4, !tbaa !20
  %i.ch = load <4 x float>, ptr %i.a, align 16, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ci = phi <4 x float> [ %i.ch, %bb.c ], [ %i.ah, %bb.b ]
  store <4 x float> %i.ci, ptr %1, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

declare void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN16btPointCollectorD0Ev(ptr noundef nonnull align 8 dereferenceable(45) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btPointCollector20setShapeIdentifiersAEii(ptr noundef nonnull align 8 dereferenceable(45) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btPointCollector20setShapeIdentifiersBEii(ptr noundef nonnull align 8 dereferenceable(45) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btPointCollector15addContactPointERK9btVector3S2_f(ptr noundef nonnull align 8 dereferenceable(45) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %3) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !29
  %i.c = fcmp olt float %3, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.d, align 4, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !40
  store float %3, ptr %i.a, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

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
!10 = !{!11, !13, i64 8}
!11 = !{!"_ZTS27btContinuousConvexCollision", !12, i64 0, !13, i64 8, !15, i64 16, !16, i64 24, !16, i64 32}
!12 = !{!"_ZTS12btConvexCast"}
!13 = !{!"p1 _ZTS22btVoronoiSimplexSolver", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 _ZTS30btConvexPenetrationDepthSolver", !14, i64 0}
!16 = !{!"p1 _ZTS13btConvexShape", !14, i64 0}
!17 = !{!11, !15, i64 16}
!18 = !{!11, !16, i64 24}
!19 = !{!11, !16, i64 32}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !6, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!24, !5, i64 8}
!24 = !{!"_ZTS16btCollisionShape", !5, i64 8, !14, i64 16}
!25 = !{!26, !21, i64 56}
!26 = !{!"_ZTS21btConvexInternalShape", !27, i64 0, !28, i64 24, !28, i64 40, !21, i64 56, !21, i64 60}
!27 = !{!"_ZTS13btConvexShape", !24, i64 0}
!28 = !{!"_ZTS9btVector3", !6, i64 0}
!29 = !{!30, !21, i64 40}
!30 = !{!"_ZTS16btPointCollector", !31, i64 0, !28, i64 8, !28, i64 24, !21, i64 40, !32, i64 44}
!31 = !{!"_ZTSN36btDiscreteCollisionDetectorInterface6ResultE"}
!32 = !{!"bool", !6, i64 0}
!33 = !{!30, !32, i64 44}
!34 = !{!35, !21, i64 128}
!35 = !{!"_ZTSN36btDiscreteCollisionDetectorInterface17ClosestPointInputE", !36, i64 0, !36, i64 64, !21, i64 128, !38, i64 136}
!36 = !{!"_ZTS11btTransform", !37, i64 0, !28, i64 48}
!37 = !{!"_ZTS11btMatrix3x3", !6, i64 0}
!38 = !{!"p1 _ZTS12btStackAlloc", !14, i64 0}
!39 = !{!35, !38, i64 136}
!40 = !{i64 0, i64 16, !22}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!44, !45, i64 176}
!44 = !{!"_ZTSN12btConvexCast10CastResultE", !36, i64 8, !36, i64 72, !28, i64 136, !28, i64 152, !21, i64 168, !45, i64 176, !21, i64 184}
!45 = !{!"p1 _ZTS12btIDebugDraw", !14, i64 0}
!46 = !{!44, !21, i64 168}
!47 = !{!44, !21, i64 184}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!50 = distinct !{!50, !"_ZmlRK11btMatrix3x3S1_"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZNK11btMatrix3x37inverseEv: argument 0"}
!53 = distinct !{!53, !"_ZNK11btMatrix3x37inverseEv"}
end_hunk_0
