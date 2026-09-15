Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btInternalEdgeUtility?download=true
inline.NumInlined: 489
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z26btGenerateInternalEdgeInfoP22btBvhTriangleMeshShapeP17btTriangleInfoMap:bb.a

bb.al:                                            ; preds = %.split.2
  %i.gn = load i16, ptr %i.av, align 2, !tbaa !80
  %i.go = zext i16 %i.gn to i32
  br label %.split79.us.loopexit84

bb.am:                                            ; preds = %.split.2
  %i.gp = load i32, ptr %i.av, align 4, !tbaa !20
  br label %.split79.us.loopexit84

.split79.us.loopexit84:                           ; preds = %bb.am, %bb.al, %bb.ak, %.split.2
  %.042.2 = phi i32 [ undef, %.split.2 ], [ %i.gp, %bb.am ], [ %i.go, %bb.al ], [ %i.gm, %bb.ak ]
  %i.gq = mul nsw i32 %i.ba, %.042.2
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds i8, ptr %i.az, i64 %i.gr ; 2 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !82
  %i.gu = load float, ptr %i.m, align 8, !tbaa !24
  %i.gv = fpext float %i.gu to double
  %i.gw = fmul double %i.gt, %i.gv
  %i.gx = fptrunc double %i.gw to float
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gz = load <2 x double>, ptr %i.gy, align 8, !tbaa !82
  %i.ha = load <2 x float>, ptr %i.s, align 4, !tbaa !24
  %i.hb = fpext <2 x float> %i.ha to <2 x double>
  %i.hc = fmul <2 x double> %i.gz, %i.hb
  %i.hd = fptrunc <2 x double> %i.hc to <2 x float>
  br label %.split79.us

bb.an:                                            ; preds = %_ZN9btVector36setMaxERKS_.exit61
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.he = add nuw nsw i32 %.04480, 1              ; 2 uses
  %i.hf = load i32, ptr %i.g, align 4, !tbaa !20
  %i.hg = icmp slt i32 %i.he, %i.hf
  br i1 %i.hg, label %.lr.ph, label %._crit_edge, !llvm.loop !70

bb.ao:                                            ; preds = %_ZN9btVector36setMaxERKS_.exit61
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  resume { ptr, i32 } %i.hh

.loopexit:                                        ; preds = %._crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_Z26btGenerateInternalEdgeInfoP25btHeightfieldTerrainShapeP17btTriangleInfoMap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.btVector3, align 16          ; 5 uses
  %3 = alloca %class.btVector3, align 16          ; 5 uses
  %4 = alloca %struct.b3ProcessAllTrianglesHeightfield, align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store <4 x float> <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float 0.000000e+00>, ptr %3, align 16, !tbaa !24
  store <4 x float> <float f0xDD5E0B6B, float f0xDD5E0B6B, float f0xDD5E0B6B, float 0.000000e+00>, ptr %2, align 16, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV32b3ProcessAllTrianglesHeightfield, i64 16), ptr %4, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !35
  %i.e = load ptr, ptr %0, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.h
}

; Function Attrs: nounwind
declare void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_Z27btNearestPointInLineSegmentRK9btVector3S1_S1_RS_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load <2 x float>, ptr %2, align 4, !tbaa !24
  %i.b = load <2 x float>, ptr %1, align 4, !tbaa !24 ; 4 uses
  %i.c = fsub <2 x float> %i.a, %i.b              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !24 ; 3 uses
  %i.h = fsub float %i.e, %i.g                    ; 4 uses
  %i.i = extractelement <2 x float> %i.c, i64 1   ; 3 uses
  %i.j = fmul float %i.i, %i.i
  %i.k = extractelement <2 x float> %i.c, i64 0   ; 3 uses
  %i.l = tail call float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.j)
  %i.m = tail call noundef float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.l) ; 2 uses
  %i.n = fcmp olt float %i.m, f0x28800000
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !36
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.o = load float, ptr %0, align 4, !tbaa !24
  %i.p = extractelement <2 x float> %i.b, i64 0
  %i.q = fsub float %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !24
  %i.t = extractelement <2 x float> %i.b, i64 1
  %i.u = fsub float %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !24
  %i.x = fsub float %i.w, %i.g
  %i.y = fmul float %i.i, %i.u
  %i.z = tail call float @llvm.fmuladd.f32(float %i.q, float %i.k, float %i.y)
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %i.x, float %i.h, float %i.z)
  %i.ab = fdiv float %i.aa, %i.m                  ; 3 uses
  %i.ac = fcmp olt float %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = fcmp ogt float %i.ab, 1.000000e+00
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi float [ %i.ab, %bb.d ], [ 1.000000e+00, %bb.e ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.ae = insertelement <2 x float> poison, float %.0, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x float> %i.c, %i.af
  %i.ah = fmul float %i.h, %.0
  %i.ai = fadd <2 x float> %i.b, %i.ag
  %i.aj = fadd float %i.g, %i.ah
  %.sroa.3.12.vec.insert.i20 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aj, i64 0
  store <2 x float> %i.ai, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i20, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local noundef zeroext i1 @_Z13btClampNormalRK9btVector3S1_S1_fRS_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, float noundef %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %4) local_unnamed_addr #4 {
bb.a:
  %.sroa.063.0.copyload = load float, ptr %1, align 4 ; 3 uses
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.564.0.copyload = load float, ptr %.sroa.564.0..sroa_idx, align 4 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = fneg float %.sroa.564.0.copyload
  %i.d = fneg float %.sroa.7.0.copyload
  %i.e = fneg float %.sroa.063.0.copyload
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load float, ptr %0, align 4, !tbaa !24   ; 5 uses
  %i.g = fmul float %i.f, %i.d
  %i.h = load float, ptr %i.a, align 4, !tbaa !24 ; 5 uses
  %i.i = load float, ptr %i.b, align 4, !tbaa !24 ; 5 uses
  %i.j = fmul float %i.i, %i.c
  %i.k = tail call float @llvm.fmuladd.f32(float %i.h, float %.sroa.7.0.copyload, float %i.j) ; 3 uses
  %i.l = tail call float @llvm.fmuladd.f32(float %i.i, float %.sroa.063.0.copyload, float %i.g) ; 3 uses
  %i.m = fmul float %i.h, %i.e
  %i.n = tail call float @llvm.fmuladd.f32(float %i.f, float %.sroa.564.0.copyload, float %i.m) ; 3 uses
  %i.o = fmul float %i.l, %i.l
  %i.p = tail call float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.o)
  %i.q = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.p)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.q)
  %i.r = fdiv float 1.000000e+00, %sqrt.i.i       ; 3 uses
  %i.s = fmul float %i.k, %i.r
  %i.t = fmul float %i.l, %i.r
  %i.u = fmul float %i.n, %i.r
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.7.0.copyload.i.a = load float, ptr %2, align 4 ; 4 uses
  %.sroa.7.0.copyload.i = load float, ptr %.sroa.7.0..sroa_idx.i, align 4 ; 4 uses
  %i.v = fmul float %.sroa.5.0.copyload.i, %i.t
  %i.w = tail call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload.i.a, float %i.s, float %i.v)
  %i.x = tail call noundef float @llvm.fmuladd.f32(float %.sroa.7.0.copyload.i, float %i.u, float %i.w)
  %i.y = fmul float %.sroa.564.0.copyload, %.sroa.5.0.copyload.i
  %i.z = tail call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload.i.a, float %.sroa.063.0.copyload, float %i.y)
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %.sroa.7.0.copyload.i, float %.sroa.7.0.copyload, float %i.z)
  %i.ab = tail call noundef float @atan2f(float noundef %i.x, float noundef %i.aa) #18 ; 3 uses
  %i.ac = fcmp olt float %3, 0.000000e+00
  %i.ad = fcmp olt float %i.ab, %3
  %or.cond = and i1 %i.ac, %i.ad
  br i1 %or.cond, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = fcmp oge float %3, 0.000000e+00
  %i.af = fcmp ogt float %i.ab, %3
  %or.cond24 = and i1 %i.ae, %i.af
  br i1 %or.cond24, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %i.ag = fsub float %3, %i.ab
  %i.ah = fmul float %i.h, %i.h
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.f, float %i.f, float %i.ah)
  %i.aj = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.ai)
  %sqrt.i.i.i30 = tail call noundef float @llvm.sqrt.f32(float %i.aj)
  %i.ak = fmul float %i.ag, 5.000000e-01          ; 2 uses
  %i.al = tail call noundef float @sinf(float noundef %i.ak) #18
  %i.am = tail call noundef float @cosf(float noundef %i.ak) #18 ; 5 uses
  %i.an = fdiv float %i.al, %sqrt.i.i.i30         ; 3 uses
  %i.ao = fmul float %i.f, %i.an                  ; 6 uses
  %i.ap = fmul float %i.h, %i.an                  ; 5 uses
  %i.aq = fmul float %i.i, %i.an                  ; 4 uses
  %i.ar = fmul float %i.ap, %i.ap
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %i.ar)
  %i.at = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.as)
  %i.au = tail call noundef float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.at)
  %i.av = fdiv float 2.000000e+00, %i.au          ; 3 uses
  %i.aw = fmul float %i.ao, %i.av                 ; 2 uses
  %i.ax = fmul float %i.aq, %i.av                 ; 4 uses
  %i.ay = fmul float %i.ap, %i.av                 ; 3 uses
  %i.az = fmul float %i.aq, %i.ax                 ; 2 uses
  %i.ba = fmul float %i.am, %i.aw                 ; 2 uses
  %i.bb = fmul float %i.am, %i.ay                 ; 2 uses
  %i.bc = fmul float %i.ao, %i.aw                 ; 2 uses
  %i.bd = fmul float %i.ap, %i.ay                 ; 2 uses
  %i.be = fmul float %i.ap, %i.ax                 ; 2 uses
  %i.bf = fmul float %i.ao, %i.ax                 ; 2 uses
  %i.bg = fmul float %i.ao, %i.ay                 ; 2 uses
  %i.bh = fadd float %i.bd, %i.az
  %i.bi = fadd float %i.bc, %i.az
  %i.bj = fmul float %i.am, %i.ax                 ; 2 uses
  %i.bk = fadd float %i.bg, %i.bj
  %i.bl = fsub float 1.000000e+00, %i.bh
  %i.bm = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.bg, i64 0
  %i.bn = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.bi, i64 1
  %i.bp = fsub <2 x float> %i.bm, %i.bo
  %i.bq = fsub float %i.be, %i.ba
  %i.br = fadd float %i.bf, %i.bb
  %i.bs = fsub float %i.bf, %i.bb
  %i.bt = fadd float %i.be, %i.ba
  %i.bu = fadd float %i.bc, %i.bd
  %i.bv = fsub float 1.000000e+00, %i.bu
  %5 = insertelement <2 x float> poison, float %.sroa.5.0.copyload.i, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x float> %6, %i.bp
  %7 = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bx = insertelement <2 x float> %7, float %i.bk, i64 1
  %i.by = insertelement <2 x float> poison, float %.sroa.7.0.copyload.i.a, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bz, <2 x float> %i.bw)
  %i.cb = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %i.bq, i64 1
  %i.cd = insertelement <2 x float> poison, float %.sroa.7.0.copyload.i, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.ce, <2 x float> %i.ca)
  %i.cg = fmul float %.sroa.5.0.copyload.i, %i.bt
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.bs, float %.sroa.7.0.copyload.i.a, float %i.cg)
  %i.ci = tail call noundef float @llvm.fmuladd.f32(float %i.bv, float %.sroa.7.0.copyload.i, float %i.ch)
  %.sroa.3.12.vec.insert.i33 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ci, i64 0
  store <2 x float> %i.cf, ptr %4, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i33, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZmlRK11btMatrix3x3RK9btVector3(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load <4 x float>, ptr %i.i, align 4
  %i.k = shufflevector <4 x float> %i.j, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load float, ptr %i.m, align 4, !tbaa !24
  %i.o = load float, ptr %i.d, align 4, !tbaa !24 ; 2 uses
  %i.p = load float, ptr %1, align 4, !tbaa !24   ; 2 uses
  %i.q = load float, ptr %i.g, align 4, !tbaa !24 ; 2 uses
  %i.r = fmul float %i.c, %i.o
  %i.s = tail call float @llvm.fmuladd.f32(float %i.a, float %i.p, float %i.r)
  %i.t = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.q, float %i.s)
  %i.u = load <2 x float>, ptr %i.h, align 4, !tbaa !24 ; 2 uses
  %i.v = load <2 x float>, ptr %i.l, align 4, !tbaa !24 ; 2 uses
  %i.w = insertelement <2 x float> poison, float %i.o, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 1, i32 3>
  %i.z = fmul <2 x float> %i.x, %i.y
  %i.aa = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 0, i32 2>
  %i.ab = insertelement <2 x float> poison, float %i.p, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.ac, <2 x float> %i.z)
  %i.ae = insertelement <2 x float> %i.k, float %i.n, i64 1
  %i.af = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ag, <2 x float> %i.ad) ; 2 uses
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ai = shufflevector <2 x float> %.sroa.0.0.vec.insert, <2 x float> %i.ah, <2 x i32> <i32 0, i32 2>
  %i.aj = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ah, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ai, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.aj, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z28btAdjustInternalEdgeContactsR15btManifoldPointPK24btCollisionObjectWrapperS3_iii(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 {
bb.a:
  %6 = alloca %class.btVector3, align 8           ; 9 uses
  %7 = alloca %class.btVector3, align 8           ; 9 uses
  %8 = alloca %class.btVector3, align 8           ; 14 uses
  %9 = alloca %class.btVector3, align 8           ; 15 uses
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  %11 = alloca %class.btVector3, align 8          ; 5 uses
  %12 = alloca %class.btQuaternion, align 16      ; 4 uses
  %13 = alloca %class.btVector3, align 4          ; 7 uses
  %14 = alloca %class.btVector3, align 8          ; 5 uses
  %15 = alloca %class.btVector3, align 8          ; 5 uses
  %16 = alloca %class.btQuaternion, align 16      ; 4 uses
  %17 = alloca %class.btVector3, align 8          ; 5 uses
  %18 = alloca %class.btVector3, align 4          ; 7 uses
  %19 = alloca %class.btVector3, align 8          ; 5 uses
  %20 = alloca %class.btVector3, align 8          ; 5 uses
  %21 = alloca %class.btQuaternion, align 16      ; 4 uses
  %22 = alloca %class.btVector3, align 8          ; 5 uses
  %23 = alloca %class.btVector3, align 4          ; 7 uses
  %24 = alloca %class.btVector3, align 8          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37
  %.not = icmp eq i32 %i.d, 1
  br i1 %.not, label %bb.b, label %.thread668

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !37
  switch i32 %i.j, label %.thread668 [
    i32 24, label %.thread657
    i32 22, label %bb.c
    i32 21, label %.thread663
  ]

.thread657:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  br label %.thread659

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !114  ; 2 uses
  %.not222 = icmp eq ptr %i.m, null
  br i1 %.not222, label %.thread668, label %.thread663

.thread663:                                       ; preds = %bb.b, %bb.c
  %.0188667 = phi ptr [ %i.m, %bb.c ], [ %i.h, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0188667, i64 88
  br label %.thread659

.thread659:                                       ; preds = %.thread657, %.thread663
  %.1.in = phi ptr [ %i.n, %.thread663 ], [ %i.k, %.thread657 ]
  %.1 = load ptr, ptr %.1.in, align 8, !tbaa !115 ; 14 uses
  %.not223 = icmp eq ptr %.1, null
  br i1 %.not223, label %.thread668, label %bb.d

bb.d:                                             ; preds = %.thread659
  %i.o = shl i32 %3, 27
  %i.p = or i32 %i.o, %4                          ; 2 uses
  %i.q = shl i32 %4, 15
  %i.r = xor i32 %i.q, -1
  %i.s = add i32 %i.p, %i.r                       ; 2 uses
  %i.t = lshr i32 %i.s, 10
  %i.u = xor i32 %i.t, %i.s
  %i.v = mul i32 %i.u, 9                          ; 2 uses
  %i.w = lshr i32 %i.v, 6
  %i.x = xor i32 %i.w, %i.v                       ; 2 uses
  %i.y = shl i32 %i.x, 11
  %i.z = xor i32 %i.y, -1
  %i.aa = add i32 %i.x, %i.z                      ; 2 uses
  %i.ab = lshr i32 %i.aa, 16
  %i.ac = xor i32 %i.ab, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %.1, i64 80
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !41
  %i.af = add nsw i32 %i.ae, -1
  %i.ag = and i32 %i.af, %i.ac                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.1, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !45
  %.not.i.i = icmp ult i32 %i.ag, %i.ai
  br i1 %.not.i.i, label %bb.e, label %.thread668

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !46
  %i.al = sext i32 %i.ag to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %.012.i.i = load i32, ptr %i.am, align 4, !tbaa !20 ; 2 uses
  %.not1113.i.i = icmp eq i32 %.012.i.i, -1
  br i1 %.not1113.i.i, label %.thread668, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.1, i64 120
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %.1, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.014.i.i = phi i32 [ %.012.i.i, %.lr.ph.i.i ], [ %.0.i.i, %bb.g ]
  %i.ar = sext i32 %.014.i.i to i64               ; 3 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !52
  %i.au = icmp eq i32 %i.p, %i.at
  br i1 %i.au, label %_ZN9btHashMapI9btHashInt14btTriangleInfoE4findERKS0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ar
  %.0.i.i = load i32, ptr %i.av, align 4, !tbaa !20 ; 2 uses
  %.not11.i.i = icmp eq i32 %.0.i.i, -1
  br i1 %.not11.i.i, label %.thread668, label %bb.f, !llvm.loop !0

_ZN9btHashMapI9btHashInt14btTriangleInfoE4findERKS0_.exit: ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %.1, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !53 ; 2 uses
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.ax, i64 %i.ar ; 9 uses
  %.not224 = icmp eq ptr %i.ax, null
  br i1 %.not224, label %.thread668, label %bb.h

bb.h:                                             ; preds = %_ZN9btHashMapI9btHashInt14btTriangleInfoE4findERKS0_.exit
  %i.az = and i32 %5, 1
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = select i1 %i.ba, float 1.000000e+00, float -1.000000e+00 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 224
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %6)
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(16) %7)
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 224
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(16) %8)
end_hunk_0
