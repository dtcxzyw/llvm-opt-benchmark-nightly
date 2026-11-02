Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexConvexAlgorithm?download=true
inline.NumInlined: 595
inline.NumDeleted: 165
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN23btConvexConvexAlgorithm10CreateFuncC2EP30btConvexPenetrationDepthSolver:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN23btConvexConvexAlgorithm10CreateFuncD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(32) %0) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN23btConvexConvexAlgorithm10CreateFuncD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #19
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btConvexConvexAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoPK24btCollisionObjectWrapperS7_P30btConvexPenetrationDepthSolverii(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN30btActivatingCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoPK24btCollisionObjectWrapperS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV23btConvexConvexAlgorithm, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %5, ptr %i.a, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.b, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.d, align 4, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.e, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.h, align 4, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.i, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %1, ptr %i.k, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.l, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %6, ptr %i.m, align 4, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %7, ptr %i.n, align 8, !tbaa !35
  ret void
}

declare void @_ZN30btActivatingCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoPK24btCollisionObjectWrapperS5_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !36
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #20
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN30btActivatingCollisionAlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN23btConvexConvexAlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116) initializes((0, 8)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV23btConvexConvexAlgorithm, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i8, ptr %i.a, align 8, !tbaa !31, !range !36, !noundef !37
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.e)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i8, ptr %i.m, align 8, !range !36
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.o, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.l)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #20
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %bb.d, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i1 = icmp ne ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load i8, ptr %i.t, align 8, !range !36
  %i.v = trunc nuw i8 %i.u to i1
  %or.cond.i.i2 = select i1 %.not.i.i.i1, i1 %i.v, i1 false
  br i1 %or.cond.i.i2, label %bb.g, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit3

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.s)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit3 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #20
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit3:  ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit, %bb.g
  tail call void @_ZN30btActivatingCollisionAlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  ret void

bb.i:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #20
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN23btConvexConvexAlgorithmD0Ev(ptr noundef nonnull align 8 dereferenceable(116) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN23btConvexConvexAlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN23btConvexConvexAlgorithm19setLowLevelOfDetailEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(116) initializes((104, 105)) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.a, ptr %i.b, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btConvexConvexAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %3, ptr noundef initializes((8, 16)) %4) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %sincos.sin.i.i331 = alloca float, align 4      ; 4 uses
  %sincos.cos.i.i332 = alloca float, align 4      ; 4 uses
  %sincos.sin.i.i = alloca float, align 4         ; 4 uses
  %sincos.cos.i.i = alloca float, align 4         ; 4 uses
  %5 = alloca %class.btVector3, align 4           ; 9 uses
  %6 = alloca %class.btVector3, align 4           ; 9 uses
  %7 = alloca %"struct.btDiscreteCollisionDetectorInterface::ClosestPointInput", align 8 ; 26 uses
  %8 = alloca %class.btVoronoiSimplexSolver, align 4 ; 7 uses
  %9 = alloca %class.btGjkPairDetector, align 8   ; 13 uses
  %10 = alloca %struct.btWithoutMarginResult, align 8 ; 12 uses
  %11 = alloca %class.btVector3, align 4          ; 5 uses
  %12 = alloca %class.btAlignedObjectArray, align 8 ; 13 uses
  %13 = alloca %class.btVector3, align 8          ; 6 uses
  %14 = alloca %class.btVector3, align 8          ; 6 uses
  %15 = alloca %class.btVector3, align 8          ; 6 uses
  %16 = alloca %class.btVector3, align 4          ; 5 uses
  %17 = alloca [3 x %class.btVector3], align 16   ; 13 uses
  %18 = alloca %class.btConvexPolyhedron, align 8 ; 11 uses
  %19 = alloca %struct.btFace, align 8            ; 17 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %20 = alloca %struct.btFace, align 8            ; 16 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %21 = alloca %class.btVector3, align 4          ; 4 uses
  %22 = alloca %class.btTransform, align 4        ; 10 uses
  %23 = alloca %struct.btPerturbedContactResult, align 8 ; 20 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.l, ptr noundef %i.n) ; 2 uses
  store ptr %i.r, ptr %i.g, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.s, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi ptr [ %i.r, %bb.b ], [ %i.h, %bb.a ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !48
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110  ; 16 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !110  ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !50
  switch i32 %i.aa, label %.thread521 [
    i32 10, label %bb.d
    i32 8, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !50
  switch i32 %i.ac, label %.thread521 [
    i32 10, label %bb.e
    i32 8, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.ad = tail call noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(880) %i.t)
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.af = load float, ptr %i.ae, align 8, !tbaa !111
  %i.ag = fadd float %i.ad, %i.af                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !113 ; 3 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ak
  %i.am = load float, ptr %i.al, align 4, !tbaa !54
  %i.an = add nsw i32 %i.aj, 2
  %i.ao = srem i32 %i.an, 3
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.au = load i32, ptr %i.at, align 8, !tbaa !113 ; 3 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !54
  %i.ay = add nsw i32 %i.au, 2
  %i.az = srem i32 %i.ay, 3
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !54
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !114, !nonnull !37, !align !115
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !114, !nonnull !37, !align !115
  %i.bh = call fastcc noundef float @_ZL22capsuleCapsuleDistanceR9btVector3S0_ffffiiRK11btTransformS3_f(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, float noundef %i.am, float noundef %i.ar, float noundef %i.ax, float noundef %i.bc, i32 noundef %i.aj, i32 noundef %i.au, ptr noundef nonnull align 4 dereferenceable(64) %i.be, ptr noundef nonnull align 4 dereferenceable(64) %i.bg, float noundef %i.ag) ; 2 uses
  %i.bi = fcmp olt float %i.bh, %i.ag
  br i1 %i.bi, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bj = load ptr, ptr %4, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, float noundef %i.bh)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bm = load ptr, ptr %i.u, align 8, !tbaa !48  ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 856
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !57
  %.not.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 840
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !59
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !44 ; 3 uses
  %.not1.i = icmp eq ptr %i.bq, %i.bu             ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !60
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !44 ; 2 uses
  %. = select i1 %.not1.i, ptr %i.by, ptr %i.bu
  %.570 = select i1 %.not1.i, ptr %i.bu, ptr %i.by
  %.sink.i = getelementptr inbounds nuw i8, ptr %.570, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %., i64 8
  call void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(880) %i.bm, ptr noundef nonnull align 4 dereferenceable(64) %.sink.i, ptr noundef nonnull align 4 dereferenceable(64) %i.bz)
  br label %_ZN16btManifoldResult20refreshContactPointsEv.exit

bb.h:                                             ; preds = %bb.d
  %i.ca = tail call noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(880) %i.t)
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !111
  %i.cd = fadd float %i.ca, %i.cc                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !113 ; 3 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !54
  %i.ck = add nsw i32 %i.cg, 2
  %i.cl = srem i32 %i.ck, 3
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cm
  %i.co = load float, ptr %i.cn, align 4, !tbaa !54
  %i.cp = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.cq = load float, ptr %i.cp, align 8, !tbaa !54
  %i.cr = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !54
  %i.ct = fmul float %i.cq, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !114, !nonnull !37, !align !115
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !114, !nonnull !37, !align !115
  %i.cy = call fastcc noundef float @_ZL22capsuleCapsuleDistanceR9btVector3S0_ffffiiRK11btTransformS3_f(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, float noundef %i.cj, float noundef %i.co, float noundef 0.000000e+00, float noundef %i.ct, i32 noundef %i.cg, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %i.cv, ptr noundef nonnull align 4 dereferenceable(64) %i.cx, float noundef %i.cd) ; 2 uses
  %i.cz = fcmp olt float %i.cy, %i.cd
  br i1 %i.cz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.da = load ptr, ptr %4, align 8, !tbaa !13
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, float noundef %i.cy)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dd = load ptr, ptr %i.u, align 8, !tbaa !48  ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 856
  %i.df = load i32, ptr %i.de, align 8, !tbaa !57
  %.not.i274 = icmp eq i32 %i.df, 0
  br i1 %.not.i274, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %.sink.split.i276

.sink.split.i276:                                 ; preds = %bb.j
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 840
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !58
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !59
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !44 ; 3 uses
  %.not1.i275 = icmp eq ptr %i.dh, %i.dl          ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !60
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !44 ; 2 uses
  %.571 = select i1 %.not1.i275, ptr %i.dp, ptr %i.dl
  %.572 = select i1 %.not1.i275, ptr %i.dl, ptr %i.dp
  %.sink.i279 = getelementptr inbounds nuw i8, ptr %.572, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.571, i64 8
  call void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(880) %i.dd, ptr noundef nonnull align 4 dereferenceable(64) %.sink.i279, ptr noundef nonnull align 4 dereferenceable(64) %i.dq)
  br label %_ZN16btManifoldResult20refreshContactPointsEv.exit
end_hunk_0
begin_hunk_1_@_ZN23btConvexConvexAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResult:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %i.rj = load ptr, ptr %i.hx, align 8, !tbaa !127
  %i.rk = load ptr, ptr %i.hz, align 8, !tbaa !127
  %i.rl = load ptr, ptr %i.gk, align 8, !tbaa !114, !nonnull !37, !align !115
  %i.rm = load ptr, ptr %i.gs, align 8, !tbaa !114, !nonnull !37, !align !115
  %i.rn = invoke noundef zeroext i1 @_ZN27btPolyhedralContactClipping18findSeparatingAxisERK18btConvexPolyhedronS2_RK11btTransformS5_R9btVector3RN36btDiscreteCollisionDetectorInterface6ResultE(ptr noundef nonnull align 8 dereferenceable(172) %i.rj, ptr noundef nonnull align 8 dereferenceable(172) %i.rk, ptr noundef nonnull align 4 dereferenceable(64) %i.rl, ptr noundef nonnull align 4 dereferenceable(64) %i.rm, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.bx unwind label %bb.bw

bb.bs:                                            ; preds = %._crit_edge531
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bk, %bb.bj, %bb.bi
  %.pn240.pn = phi { ptr, i32 } [ %i.qp, %bb.bi ], [ %i.qr, %bb.bk ], [ %i.qq, %bb.bj ], [ %i.ro, %bb.bs ]
  call void @_ZN6btFaceD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bh, %bb.ax
  %.pn244 = phi { ptr, i32 } [ %i.pe, %bb.ax ], [ %.pn240.pn, %bb.bt ], [ %.pn.pn, %bb.bh ]
  call void @_ZN18btConvexPolyhedronD1Ev(ptr noundef nonnull align 8 dead_on_return(172) dereferenceable(172) %18) #21
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.aw
  %.pn244.pn = phi { ptr, i32 } [ %.pn244, %bb.bu ], [ %i.pd, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.ce

bb.bw:                                            ; preds = %bb.cc, %bb.bz, %bb.br
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.bx:                                            ; preds = %bb.br
  br i1 %i.rn, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  invoke void @_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.rq, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %21)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  %i.rr = load ptr, ptr %i.hx, align 8, !tbaa !127
  %i.rs = load ptr, ptr %i.gk, align 8, !tbaa !114, !nonnull !37, !align !115
  %i.rt = fsub float -1.000000e+30, %i.lk
  invoke void @_ZN27btPolyhedralContactClipping19clipFaceAgainstHullERK9btVector3RK18btConvexPolyhedronRK11btTransformR20btAlignedObjectArrayIS0_ESB_ffRN36btDiscreteCollisionDetectorInterface6ResultE(ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(172) %i.rr, ptr noundef nonnull align 4 dereferenceable(64) %i.rs, ptr noundef nonnull align 8 dereferenceable(25) %12, ptr noundef nonnull align 8 dereferenceable(25) %i.rq, float noundef %i.rt, float noundef %i.lk, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.cb unwind label %bb.bw

bb.ca:                                            ; preds = %bb.by
  %i.ru = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.ce

bb.cb:                                            ; preds = %bb.bz, %bb.bx
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.rw = load i8, ptr %i.rv, align 8, !tbaa !31, !range !36, !noundef !37
  %i.rx = trunc nuw i8 %i.rw to i1
  br i1 %i.rx, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN16btManifoldResult20refreshContactPointsEv(ptr noundef nonnull align 8 dereferenceable(52) %4)
          to label %bb.cd unwind label %bb.bw

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %.critedge

bb.ce:                                            ; preds = %bb.ca, %bb.bw, %bb.bv
  %.pn248 = phi { ptr, i32 } [ %i.rp, %bb.bw ], [ %i.ru, %bb.ca ], [ %.pn244.pn, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.cf

bb.cf:                                            ; preds = %bb.av, %bb.ce, %bb.au, %bb.at, %bb.as
  %.pn248.pn.pn = phi { ptr, i32 } [ %i.oz, %bb.as ], [ %i.pb, %bb.au ], [ %i.pa, %bb.at ], [ %.pn248, %bb.ce ], [ %i.pc, %bb.av ]
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn248.pn.pn

bb.cg:                                            ; preds = %bb.s, %.thread523, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.o, %.thread521
  %i.ry = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !130
  call void @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr noundef nonnull align 8 dereferenceable(100) %9, ptr noundef nonnull align 4 dereferenceable(132) %7, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.rz, i1 noundef zeroext false)
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !34
  %.not261 = icmp eq i32 %i.sb, 0
  br i1 %.not261, label %bb.cq, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.sc = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 856
  %i.se = load i32, ptr %i.sd, align 8, !tbaa !57
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.sg = load i32, ptr %i.sf, align 8, !tbaa !35
  %i.sh = icmp slt i32 %i.se, %i.sg
  br i1 %i.sh, label %bb.cj, label %bb.cq

bb.cj:                                            ; preds = %bb.ci
  %i.si = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.sj = load float, ptr %i.si, align 8, !tbaa !54 ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.sl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.sm = load float, ptr %i.sk, align 4, !tbaa !54 ; 3 uses
  %i.sn = fmul float %i.sm, %i.sm
  %i.so = call float @llvm.fmuladd.f32(float %i.sj, float %i.sj, float %i.sn)
  %i.sp = load float, ptr %i.sl, align 8, !tbaa !54 ; 3 uses
  %i.sq = call noundef float @llvm.fmuladd.f32(float %i.sp, float %i.sp, float %i.so) ; 2 uses
  %i.sr = fcmp ogt float %i.sq, f0x34000000
  br i1 %i.sr, label %bb.ck, label %bb.cq

bb.ck:                                            ; preds = %bb.cj
  %i.ss = fdiv float 1.000000e+00, %i.sq          ; 2 uses
  %i.st = fmul float %i.sm, %i.ss                 ; 8 uses
  %i.su = insertelement <2 x float> poison, float %i.sp, i64 0
  %i.sv = insertelement <2 x float> %i.su, float %i.sj, i64 1
  %i.sw = insertelement <2 x float> poison, float %i.ss, i64 0
  %i.sx = shufflevector <2 x float> %i.sw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sy = fmul <2 x float> %i.sv, %i.sx           ; 9 uses
  %i.sz = extractelement <2 x float> %i.sy, i64 0 ; 2 uses
  %i.ta = call noundef float @llvm.fabs.f32(float %i.sz)
  %i.tb = fcmp ogt float %i.ta, f0x3F3504F3
  br i1 %i.tb, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %foldExtExtBinop595 = fmul nnan <2 x float> %i.sy, %i.sy
  %i.tc = extractelement <2 x float> %foldExtExtBinop595, i64 0
  %i.td = call float @llvm.fmuladd.f32(float %i.st, float %i.st, float %i.tc)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.td)
  %i.te = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.tf = fneg float %i.sz
  %i.tg = fmul float %i.te, %i.tf
  %i.th = fmul float %i.st, %i.te
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

bb.cm:                                            ; preds = %bb.ck
  %i.ti = fmul float %i.st, %i.st
  %i.tj = extractelement <2 x float> %i.sy, i64 1 ; 3 uses
  %i.tk = call float @llvm.fmuladd.f32(float %i.tj, float %i.tj, float %i.ti)
  %sqrt43.i = call float @llvm.sqrt.f32(float %i.tk)
  %i.tl = fdiv float 1.000000e+00, %sqrt43.i      ; 2 uses
  %i.tm = fneg float %i.st
  %i.tn = fmul float %i.tl, %i.tm
  %i.to = fmul float %i.tj, %i.tl
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit:   ; preds = %bb.cm, %bb.cl
  %.sroa.13476.0 = phi float [ %i.th, %bb.cl ], [ 0.000000e+00, %bb.cm ] ; 3 uses
  %.sroa.8473.0 = phi float [ %i.tg, %bb.cl ], [ %i.to, %bb.cm ] ; 2 uses
  %.sroa.0470.0 = phi float [ 0.000000e+00, %bb.cl ], [ %i.tn, %bb.cm ] ; 3 uses
  %i.tp = load ptr, ptr %i.w, align 8, !tbaa !13
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 32
  %i.tr = load ptr, ptr %i.tq, align 8
  %i.ts = call noundef float %i.tr(ptr noundef nonnull align 8 dereferenceable(32) %i.w) ; 2 uses
  %i.tt = load ptr, ptr %i.y, align 8, !tbaa !13
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 32
  %i.tv = load ptr, ptr %i.tu, align 8
  %i.tw = call noundef float %i.tv(ptr noundef nonnull align 8 dereferenceable(32) %i.y) ; 2 uses
  %i.tx = fcmp olt float %i.ts, %i.tw             ; 7 uses
  %i.ty = load float, ptr @gContactBreakingThreshold, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  %i.tz = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ua = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.ub = getelementptr inbounds nuw i8, ptr %22, i64 48
  %.582 = select i1 %i.tx, ptr %7, ptr %i.gu
  %.583 = select i1 %i.tx, ptr %i.gn, ptr %i.gw
  %.584.a = select i1 %i.tx, ptr %i.gp, ptr %i.gy
  %.585.a = select i1 %i.tx, ptr %i.gr, ptr %i.ha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %22, ptr noundef nonnull align 8 dereferenceable(64) %.582, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.tz, ptr noundef nonnull align 8 dereferenceable(16) %.583, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ua, ptr noundef nonnull align 8 dereferenceable(16) %.584.a, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ub, ptr noundef nonnull align 8 dereferenceable(16) %.585.a, i64 16, i1 false)
  %i.uc = load i32, ptr %i.sa, align 4, !tbaa !34 ; 2 uses
  %i.ud = icmp sgt i32 %i.uc, 0
  br i1 %i.ud, label %.lr.ph535, label %._crit_edge536.split

.lr.ph535:                                        ; preds = %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit
  %storemerge.v = select i1 %i.tx, float %i.ts, float %i.tw
  %storemerge = fdiv float %i.ty, %storemerge.v   ; 2 uses
  %i.ue = fcmp ogt float %storemerge, f0x3EC90FDB
  %storemerge262 = select i1 %i.ue, float f0x3EC90FDB, float %storemerge
  %i.uf = insertelement <2 x float> poison, float %.sroa.8473.0, i64 0
  %i.ug = insertelement <2 x float> %i.uf, float %i.st, i64 1 ; 2 uses
  %i.uh = fmul <2 x float> %i.ug, %i.ug
  %i.ui = fmul float %storemerge262, 5.000000e-01
  %i.uj = insertelement <2 x float> %i.sy, float %.sroa.0470.0, i64 0
  %i.uk = insertelement <2 x float> %i.sy, float %.sroa.0470.0, i64 0
  %i.ul = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uj, <2 x float> %i.uk, <2 x float> %i.uh)
  %i.um = shufflevector <2 x float> %i.sy, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.un = insertelement <2 x float> %i.um, float %.sroa.13476.0, i64 0
  %i.uo = insertelement <2 x float> poison, float %.sroa.13476.0, i64 0
  %i.up = shufflevector <2 x float> %i.uo, <2 x float> %i.sy, <2 x i32> <i32 0, i32 2>
  %i.uq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.un, <2 x float> %i.up, <2 x float> %i.ul) ; 2 uses
  %i.ur = extractelement <2 x float> %i.uq, i64 0
  %i.us = fcmp ogt float %i.ur, f0x34000000
  %i.ut = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.uq)
  %.sroa.6381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 72
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 88
  %.sroa.12384.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 92
  %.sroa.6407.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.11411.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.12412.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.uu = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.uv = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.uw = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.ux = getelementptr inbounds nuw i8, ptr %23, i64 80
  %i.uy = getelementptr inbounds nuw i8, ptr %23, i64 96
  %i.uz = getelementptr inbounds nuw i8, ptr %23, i64 112
  %i.va = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.vb = getelementptr inbounds nuw i8, ptr %23, i64 144
  %i.vc = getelementptr inbounds nuw i8, ptr %23, i64 160
  %i.vd = getelementptr inbounds nuw i8, ptr %23, i64 176
  %i.ve = getelementptr inbounds nuw i8, ptr %23, i64 192
  %i.vf = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.vg = getelementptr inbounds nuw i8, ptr %23, i64 208
  %i.vh = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.vi = getelementptr inbounds nuw i8, ptr %23, i64 224
  %i.vj = getelementptr inbounds nuw i8, ptr %23, i64 240
  %i.vk = getelementptr inbounds nuw i8, ptr %22, i64 48
  %i.vl = zext i1 %i.tx to i8
  %i.vm = getelementptr inbounds nuw i8, ptr %23, i64 256
  %i.vn = getelementptr inbounds nuw i8, ptr %23, i64 264
  br i1 %i.us, label %.lr.ph535.split.preheader, label %._crit_edge536.split

.lr.ph535.split.preheader:                        ; preds = %.lr.ph535
  %i.vo = insertelement <2 x float> poison, float %.sroa.8473.0, i64 0
  %i.vp = insertelement <2 x float> %i.vo, float %.sroa.13476.0, i64 1
  br label %.lr.ph535.split

.lr.ph535.split:                                  ; preds = %.lr.ph535.split.preheader, %bb.cp
  %i.vq = phi i32 [ %i.aib, %bb.cp ], [ %i.uc, %.lr.ph535.split.preheader ]
  %.0185533 = phi i32 [ %i.aia, %bb.cp ], [ 0, %.lr.ph535.split.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos.i.i)
  call void @sincosf(float %i.ui, ptr nonnull %sincos.sin.i.i, ptr nonnull %sincos.cos.i.i)
  %sin.i.i = load float, ptr %sincos.sin.i.i, align 4
  %cos.i.i = load float, ptr %sincos.cos.i.i, align 4 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos.i.i)
  %i.vr = uitofp nneg i32 %.0185533 to float
  %i.vs = sitofp i32 %i.vq to float
  %i.vt = fdiv nnan float f0x40C90FDB, %i.vs
  %i.vu = fmul float %i.vt, %i.vr
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin.i.i331)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos.i.i332)
  %i.vv = fmul float %i.vu, 5.000000e-01
  call void @sincosf(float %i.vv, ptr nonnull %sincos.sin.i.i331, ptr nonnull %sincos.cos.i.i332)
  %sin.i.i334 = load float, ptr %sincos.sin.i.i331, align 4
  %cos.i.i335 = load float, ptr %sincos.cos.i.i332, align 4 ; 10 uses
  %i.vw = insertelement <2 x float> poison, float %sin.i.i, i64 0
  %i.vx = insertelement <2 x float> %i.vw, float %sin.i.i334, i64 1
  %i.vy = fdiv <2 x float> %i.vx, %i.ut           ; 4 uses
  %i.vz = extractelement <2 x float> %i.vy, i64 0
  %i.wa = fmul float %.sroa.0470.0, %i.vz         ; 8 uses
  %i.wb = shufflevector <2 x float> %i.vy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wc = fmul <2 x float> %i.vp, %i.wb           ; 8 uses
  %i.wd = extractelement <2 x float> %i.vy, i64 1
  %i.we = fmul float %i.st, %i.wd                 ; 12 uses
  %i.wf = shufflevector <2 x float> %i.vy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wg = fmul <2 x float> %i.sy, %i.wf           ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin.i.i331)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos.i.i332)
  br i1 %i.tx, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.lr.ph535.split
  %i.wh = extractelement <2 x float> %i.wg, i64 1 ; 3 uses
  %i.wi = fneg float %i.wh                        ; 3 uses
  %i.wj = shufflevector <2 x float> %i.wg, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.wk = insertelement <2 x float> %i.wj, float %i.we, i64 0 ; 2 uses
  %i.wl = fneg <2 x float> %i.wk                  ; 3 uses
  %i.wm = fmul float %i.wa, %i.wh
  %i.wn = call float @llvm.fmuladd.f32(float %cos.i.i335, float %cos.i.i, float %i.wm)
  %i.wo = extractelement <2 x float> %i.wc, i64 0 ; 2 uses
  %i.wp = call float @llvm.fmuladd.f32(float %i.we, float %i.wo, float %i.wn)
  %i.wq = load ptr, ptr %i.gk, align 8, !tbaa !114, !nonnull !37, !align !115 ; 6 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wq, i64 32
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wq, i64 4
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wq, i64 36
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wq, i64 24
  %i.ww = insertelement <2 x float> poison, float %cos.i.i, i64 0
  %i.wx = shufflevector <2 x float> %i.ww, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wy = shufflevector <2 x float> %i.wl, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.wz = insertelement <2 x float> %i.wy, float %i.wi, i64 0
  %i.xa = fmul <2 x float> %i.wx, %i.wz
  %i.xb = insertelement <2 x float> poison, float %cos.i.i335, i64 0
  %i.xc = shufflevector <2 x float> %i.xb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xd = shufflevector <2 x float> %i.wc, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.xe = insertelement <2 x float> %i.xd, float %i.wa, i64 0
  %i.xf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xc, <2 x float> %i.xe, <2 x float> %i.xa)
  %i.xg = insertelement <2 x float> %i.xd, float %i.wa, i64 1
  %i.xh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wl, <2 x float> %i.xg, <2 x float> %i.xf)
  %i.xi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wg, <2 x float> %i.wc, <2 x float> %i.xh) ; 5 uses
  %i.xj = extractelement <2 x float> %i.xi, i64 1 ; 2 uses
  %i.xk = extractelement <2 x float> %i.wl, i64 1
  %i.xl = fmul float %cos.i.i, %i.xk
  %i.xm = extractelement <2 x float> %i.wc, i64 1 ; 2 uses
  %i.xn = call float @llvm.fmuladd.f32(float %cos.i.i335, float %i.xm, float %i.xl)
  %i.xo = call float @llvm.fmuladd.f32(float %i.wi, float %i.wo, float %i.xn)
  %i.xp = call float @llvm.fmuladd.f32(float %i.we, float %i.wa, float %i.xo) ; 3 uses
  %i.xq = extractelement <2 x float> %i.wg, i64 0 ; 3 uses
  %i.xr = call float @llvm.fmuladd.f32(float %i.xq, float %i.xm, float %i.wp) ; 3 uses
  %i.xs = extractelement <2 x float> %i.xi, i64 0 ; 2 uses
  %i.xt = fmul float %cos.i.i335, %i.xs
  %i.xu = call float @llvm.fmuladd.f32(float %i.xr, float %i.wh, float %i.xt)
  %i.xv = call float @llvm.fmuladd.f32(float %i.xj, float %i.xq, float %i.xu)
  %i.xw = fneg float %i.xp                        ; 2 uses
  %i.xx = call float @llvm.fmuladd.f32(float %i.xw, float %i.we, float %i.xv) ; 5 uses
  %i.xy = shufflevector <2 x float> %i.xi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xz = insertelement <2 x float> %i.xy, float %i.xp, i64 1
  %i.ya = fmul <2 x float> %i.xc, %i.xz
  %i.yb = insertelement <2 x float> poison, float %i.xr, i64 0
  %i.yc = shufflevector <2 x float> %i.yb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yc, <2 x float> %i.wk, <2 x float> %i.ya)
  %i.ye = insertelement <2 x float> poison, float %i.xp, i64 0
  %i.yf = shufflevector <2 x float> %i.ye, <2 x float> %i.xi, <2 x i32> <i32 0, i32 2>
  %i.yg = insertelement <2 x float> %i.wj, float %i.we, i64 1
  %i.yh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yf, <2 x float> %i.yg, <2 x float> %i.yd)
  %i.yi = fneg <2 x float> %i.xi
  %i.yj = fneg float %i.xj
  %i.yk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yi, <2 x float> %i.wg, <2 x float> %i.yh) ; 6 uses
  %i.yl = fmul float %i.xs, %i.wi
  %i.ym = call float @llvm.fmuladd.f32(float %i.xr, float %cos.i.i335, float %i.yl)
  %i.yn = call float @llvm.fmuladd.f32(float %i.yj, float %i.we, float %i.ym)
  %i.yo = call float @llvm.fmuladd.f32(float %i.xw, float %i.xq, float %i.yn) ; 4 uses
  %foldExtExtBinop597 = fmul <2 x float> %i.yk, %i.yk
  %i.yp = extractelement <2 x float> %foldExtExtBinop597, i64 0
  %i.yq = call float @llvm.fmuladd.f32(float %i.xx, float %i.xx, float %i.yp)
  %i.yr = extractelement <2 x float> %i.yk, i64 1 ; 2 uses
  %i.ys = call float @llvm.fmuladd.f32(float %i.yr, float %i.yr, float %i.yq)
  %i.yt = call noundef float @llvm.fmuladd.f32(float %i.yo, float %i.yo, float %i.ys)
  %i.yu = fdiv float 2.000000e+00, %i.yt          ; 2 uses
  %i.yv = fmul float %i.xx, %i.yu                 ; 2 uses
  %i.yw = insertelement <2 x float> poison, float %i.yu, i64 0
  %i.yx = shufflevector <2 x float> %i.yw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yy = fmul <2 x float> %i.yk, %i.yx           ; 4 uses
  %i.yz = insertelement <2 x float> poison, float %i.yo, i64 0
  %i.za = shufflevector <2 x float> %i.yz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zb = shufflevector <2 x float> %i.yy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.zc = fmul <2 x float> %i.za, %i.zb           ; 3 uses
  %i.zd = fmul float %i.xx, %i.yv
  %i.ze = insertelement <2 x float> poison, float %i.xx, i64 0
  %i.zf = shufflevector <2 x float> %i.ze, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zg = fmul <2 x float> %i.zf, %i.yy           ; 3 uses
  %shift = shufflevector <2 x float> %i.yy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop599 = fmul <2 x float> %i.yk, %shift ; 2 uses
  %i.zh = extractelement <2 x float> %foldExtExtBinop599, i64 0
  %i.zi = fmul <2 x float> %i.yk, %i.yy           ; 2 uses
  %i.zj = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.zi)
  %i.zk = fadd <2 x float> %i.zg, %i.zc           ; 2 uses
  %i.zl = shufflevector <2 x float> %i.zk, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.zm = load <2 x float>, ptr %i.wq, align 4, !tbaa !54, !noalias !131 ; 3 uses
  %i.zn = load float, ptr %i.wv, align 4, !tbaa !54, !noalias !131 ; 3 uses
  %i.zo = load <2 x float>, ptr %i.ws, align 4, !tbaa !54, !noalias !131 ; 3 uses
  %i.zp = fmul float %i.yo, %i.yv                 ; 2 uses
  %i.zq = shufflevector <2 x float> %foldExtExtBinop599, <2 x float> %i.zg, <2 x i32> <i32 0, i32 3>
  %i.zr = insertelement <2 x float> %i.zc, float %i.zp, i64 0
  %i.zs = fsub <2 x float> %i.zq, %i.zr           ; 2 uses
  %i.zt = shufflevector <2 x float> %i.zs, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.zu = fadd float %i.zh, %i.zp                 ; 2 uses
  %i.zv = shufflevector <2 x float> %i.zm, <2 x float> %i.zo, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.zw = insertelement <2 x float> poison, float %i.zd, i64 0
  %i.zx = shufflevector <2 x float> %i.zw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zy = fadd <2 x float> %i.zx, %i.zi
  %i.zz = fsub <2 x float> splat (float 1.000000e+00), %i.zy
  %i.aaa = shufflevector <2 x float> %i.zz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aab = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x float> %i.aaa, <4 x i32> <i32 0, i32 5, i32 5, i32 5>
  %i.aac = load <2 x float>, ptr %i.wu, align 4, !tbaa !54, !noalias !131 ; 4 uses
  %i.aad = shufflevector <2 x float> %i.aac, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aae = shufflevector <2 x float> %i.aac, <2 x float> %i.zm, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.aaf = shufflevector <4 x float> %i.zv, <4 x float> %i.aad, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aag = shufflevector <2 x float> %i.zo, <2 x float> %i.aac, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.aah = insertelement <4 x float> %i.aag, float 0.000000e+00, i64 3
  %i.aai = shufflevector <4 x float> %i.aaa, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.aaj = fsub float 1.000000e+00, %i.zj         ; 2 uses
  %foldExtExtBinop601 = fsub <2 x float> %i.zg, %i.zc ; 2 uses
  %i.aak = extractelement <2 x float> %foldExtExtBinop601, i64 0
  %i.aal = load <2 x float>, ptr %i.wr, align 4, !tbaa !54, !noalias !131 ; 4 uses
  %i.aam = shufflevector <2 x float> %foldExtExtBinop601, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aan = fmul <2 x float> %i.aam, %i.aal
  %i.aao = fmul float %i.aak, %i.zn
  %i.aap = extractelement <2 x float> %i.aal, i64 0
  %i.aaq = fmul float %i.zu, %i.aap
  %i.aar = insertelement <2 x float> poison, float %i.aaj, i64 0
  %i.aas = shufflevector <2 x float> %i.aar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aat = shufflevector <2 x float> %i.aal, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aau = shufflevector <2 x float> %i.zo, <2 x float> %i.aac, <2 x i32> <i32 0, i32 2>
  %i.aav = shufflevector <2 x float> %i.zk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aaw = load <2 x float>, ptr %i.wt, align 4, !tbaa !54, !noalias !131 ; 4 uses
  %i.aax = shufflevector <2 x float> %i.aaw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aay = shufflevector <4 x float> %i.aae, <4 x float> %i.aax, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.aaz = insertelement <2 x float> poison, float %i.zu, i64 0
  %i.aba = shufflevector <2 x float> %i.aaz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abb = shufflevector <2 x float> %i.aal, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.abc = insertelement <2 x float> %i.abb, float %i.zn, i64 1
  %i.abd = fmul <2 x float> %i.aba, %i.abc
  %i.abe = shufflevector <2 x float> %i.zm, <2 x float> %i.aaw, <2 x i32> <i32 0, i32 2>
  %i.abf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abe, <2 x float> %i.aas, <2 x float> %i.aan)
  %i.abg = extractelement <2 x float> %i.aaw, i64 1
  %i.abh = call float @llvm.fmuladd.f32(float %i.abg, float %i.aaj, float %i.aao)
  %i.abi = insertelement <4 x float> poison, float %i.abh, i64 0
  %i.abj = shufflevector <4 x float> %i.abi, <4 x float> %i.aat, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.abk = insertelement <4 x float> %i.abj, float %i.zn, i64 3
  %i.abl = fmul <4 x float> %i.abk, %i.aab
  %i.abm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aay, <4 x float> %i.zl, <4 x float> %i.abl) ; 2 uses
  %i.abn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aau, <2 x float> %i.aav, <2 x float> %i.abf)
  %i.abo = insertelement <4 x float> %i.abm, float %i.aaq, i64 0
  %i.abp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaf, <4 x float> %i.zt, <4 x float> %i.abo) ; 3 uses
  %i.abq = shufflevector <2 x float> %i.zs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.abr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaw, <2 x float> %i.abq, <2 x float> %i.abd)
  %i.abs = insertelement <4 x float> %i.abp, float 0.000000e+00, i64 3
  %i.abt = shufflevector <2 x float> %i.abr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.abu = shufflevector <4 x float> %i.abs, <4 x float> %i.abt, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.abv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aah, <4 x float> %i.aai, <4 x float> %i.abu)
  store <2 x float> %i.abn, ptr %7, align 8
  %i.abw = shufflevector <4 x float> %i.abm, <4 x float> %i.abp, <4 x i32> <i32 0, i32 poison, i32 5, i32 6>
  %i.abx = insertelement <4 x float> %i.abw, float 0.000000e+00, i64 1
  store <4 x float> %i.abx, ptr %.sroa.6407.0..sroa_idx, align 8
  %i.aby = extractelement <4 x float> %i.abp, i64 3
  store float %i.aby, ptr %.sroa.11411.16..sroa_idx, align 8
  store float 0.000000e+00, ptr %.sroa.12412.16..sroa_idx, align 4, !tbaa !68
  store <4 x float> %i.abv, ptr %i.gp, align 8
  %i.abz = load ptr, ptr %i.gs, align 8, !tbaa !114, !nonnull !37, !align !115 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gu, ptr noundef nonnull align 4 dereferenceable(64) %i.abz, i64 16, i1 false), !tbaa.struct !69
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, ptr noundef nonnull align 4 dereferenceable(16) %i.aca, i64 16, i1 false), !tbaa.struct !69
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abz, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 4 dereferenceable(16) %i.acb, i64 16, i1 false), !tbaa.struct !69
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abz, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ha, ptr noundef nonnull align 4 dereferenceable(16) %i.acc, i64 16, i1 false), !tbaa.struct !69
  br label %bb.cp

bb.co:                                            ; preds = %.lr.ph535.split
  %i.acd = load ptr, ptr %i.gk, align 8, !tbaa !114, !nonnull !37, !align !115 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(64) %i.acd, i64 16, i1 false), !tbaa.struct !69
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull align 4 dereferenceable(16) %i.ace, i64 16, i1 false), !tbaa.struct !69
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acd, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gp, ptr noundef nonnull align 4 dereferenceable(16) %i.acf, i64 16, i1 false), !tbaa.struct !69
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acd, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 4 dereferenceable(16) %i.acg, i64 16, i1 false), !tbaa.struct !69
  %i.ach = extractelement <2 x float> %i.wg, i64 1 ; 3 uses
  %i.aci = extractelement <2 x float> %i.wg, i64 0 ; 4 uses
  %i.acj = extractelement <2 x float> %i.wc, i64 1 ; 2 uses
  %i.ack = extractelement <2 x float> %i.wc, i64 0 ; 2 uses
  %i.acl = fmul float %i.wa, %i.ach
  %i.acm = call float @llvm.fmuladd.f32(float %cos.i.i335, float %cos.i.i, float %i.acl)
  %i.acn = call float @llvm.fmuladd.f32(float %i.we, float %i.ack, float %i.acm)
  %i.aco = load ptr, ptr %i.gs, align 8, !tbaa !114, !nonnull !37, !align !115 ; 6 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 16
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aco, i64 32
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aco, i64 4
  %i.acs = getelementptr inbounds nuw i8, ptr %i.aco, i64 36
  %i.act = getelementptr inbounds nuw i8, ptr %i.aco, i64 24
  %i.acu = fneg float %i.ach                      ; 3 uses
  %i.acv = shufflevector <2 x float> %i.wg, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.acw = insertelement <2 x float> %i.acv, float %i.we, i64 0 ; 2 uses
  %i.acx = fneg <2 x float> %i.acw                ; 2 uses
  %i.acy = fneg float %i.aci
  %i.acz = insertelement <2 x float> poison, float %cos.i.i, i64 0
  %i.ada = shufflevector <2 x float> %i.acz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adb = shufflevector <2 x float> %i.acx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.adc = insertelement <2 x float> %i.adb, float %i.acu, i64 0
  %i.add = fmul <2 x float> %i.ada, %i.adc
  %i.ade = insertelement <2 x float> poison, float %cos.i.i335, i64 0
  %i.adf = shufflevector <2 x float> %i.ade, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.adg = shufflevector <2 x float> %i.wc, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.adh = insertelement <2 x float> %i.adg, float %i.wa, i64 0
  %i.adi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adf, <2 x float> %i.adh, <2 x float> %i.add)
  %i.adj = insertelement <2 x float> %i.adg, float %i.wa, i64 1
  %i.adk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acx, <2 x float> %i.adj, <2 x float> %i.adi)
  %i.adl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wg, <2 x float> %i.wc, <2 x float> %i.adk) ; 5 uses
  %i.adm = extractelement <2 x float> %i.adl, i64 1 ; 2 uses
  %i.adn = fmul float %cos.i.i, %i.acy
  %i.ado = call float @llvm.fmuladd.f32(float %cos.i.i335, float %i.acj, float %i.adn)
  %i.adp = call float @llvm.fmuladd.f32(float %i.acu, float %i.ack, float %i.ado)
  %i.adq = call float @llvm.fmuladd.f32(float %i.we, float %i.wa, float %i.adp) ; 3 uses
  %i.adr = call float @llvm.fmuladd.f32(float %i.aci, float %i.acj, float %i.acn) ; 3 uses
  %i.ads = extractelement <2 x float> %i.adl, i64 0 ; 2 uses
  %i.adt = fmul float %cos.i.i335, %i.ads
  %i.adu = call float @llvm.fmuladd.f32(float %i.adr, float %i.ach, float %i.adt)
  %i.adv = call float @llvm.fmuladd.f32(float %i.adm, float %i.aci, float %i.adu)
  %i.adw = fneg float %i.adq                      ; 2 uses
  %i.adx = call float @llvm.fmuladd.f32(float %i.adw, float %i.we, float %i.adv) ; 5 uses
  %i.ady = shufflevector <2 x float> %i.adl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.adz = insertelement <2 x float> %i.ady, float %i.adq, i64 1
  %i.aea = fmul <2 x float> %i.adf, %i.adz
  %i.aeb = insertelement <2 x float> poison, float %i.adr, i64 0
  %i.aec = shufflevector <2 x float> %i.aeb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aed = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aec, <2 x float> %i.acw, <2 x float> %i.aea)
  %i.aee = insertelement <2 x float> poison, float %i.adq, i64 0
  %i.aef = shufflevector <2 x float> %i.aee, <2 x float> %i.adl, <2 x i32> <i32 0, i32 2>
  %i.aeg = insertelement <2 x float> %i.acv, float %i.we, i64 1
  %i.aeh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aef, <2 x float> %i.aeg, <2 x float> %i.aed)
  %i.aei = fneg <2 x float> %i.adl
  %i.aej = fneg float %i.adm
  %i.aek = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aei, <2 x float> %i.wg, <2 x float> %i.aeh) ; 6 uses
  %i.ael = fmul float %i.ads, %i.acu
  %i.aem = call float @llvm.fmuladd.f32(float %i.adr, float %cos.i.i335, float %i.ael)
  %i.aen = call float @llvm.fmuladd.f32(float %i.aej, float %i.we, float %i.aem)
  %i.aeo = call float @llvm.fmuladd.f32(float %i.adw, float %i.aci, float %i.aen) ; 4 uses
  %foldExtExtBinop603 = fmul <2 x float> %i.aek, %i.aek
  %i.aep = extractelement <2 x float> %foldExtExtBinop603, i64 0
  %i.aeq = call float @llvm.fmuladd.f32(float %i.adx, float %i.adx, float %i.aep)
  %i.aer = extractelement <2 x float> %i.aek, i64 1 ; 2 uses
  %i.aes = call float @llvm.fmuladd.f32(float %i.aer, float %i.aer, float %i.aeq)
  %i.aet = call noundef float @llvm.fmuladd.f32(float %i.aeo, float %i.aeo, float %i.aes)
  %i.aeu = fdiv float 2.000000e+00, %i.aet        ; 2 uses
  %i.aev = fmul float %i.adx, %i.aeu              ; 2 uses
  %i.aew = insertelement <2 x float> poison, float %i.aeu, i64 0
  %i.aex = shufflevector <2 x float> %i.aew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aey = fmul <2 x float> %i.aek, %i.aex        ; 4 uses
  %i.aez = insertelement <2 x float> poison, float %i.aeo, i64 0
  %i.afa = shufflevector <2 x float> %i.aez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afb = shufflevector <2 x float> %i.aey, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.afc = fmul <2 x float> %i.afa, %i.afb        ; 3 uses
  %i.afd = fmul float %i.adx, %i.aev
  %i.afe = insertelement <2 x float> poison, float %i.adx, i64 0
  %i.aff = shufflevector <2 x float> %i.afe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afg = fmul <2 x float> %i.aff, %i.aey        ; 3 uses
  %shift605 = shufflevector <2 x float> %i.aey, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop606 = fmul <2 x float> %i.aek, %shift605 ; 2 uses
  %i.afh = extractelement <2 x float> %foldExtExtBinop606, i64 0
  %i.afi = fmul <2 x float> %i.aek, %i.aey        ; 2 uses
  %i.afj = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.afi)
  %i.afk = fadd <2 x float> %i.afg, %i.afc        ; 2 uses
  %i.afl = shufflevector <2 x float> %i.afk, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.afm = load <2 x float>, ptr %i.aco, align 4, !tbaa !54, !noalias !132 ; 3 uses
  %i.afn = load float, ptr %i.act, align 4, !tbaa !54, !noalias !132 ; 3 uses
  %i.afo = load <2 x float>, ptr %i.acq, align 4, !tbaa !54, !noalias !132 ; 3 uses
  %i.afp = fmul float %i.aeo, %i.aev              ; 2 uses
  %i.afq = shufflevector <2 x float> %foldExtExtBinop606, <2 x float> %i.afg, <2 x i32> <i32 0, i32 3>
  %i.afr = insertelement <2 x float> %i.afc, float %i.afp, i64 0
  %i.afs = fsub <2 x float> %i.afq, %i.afr        ; 2 uses
  %i.aft = shufflevector <2 x float> %i.afs, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.afu = fadd float %i.afh, %i.afp              ; 2 uses
  %i.afv = shufflevector <2 x float> %i.afm, <2 x float> %i.afo, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.afw = insertelement <2 x float> poison, float %i.afd, i64 0
  %i.afx = shufflevector <2 x float> %i.afw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afy = fadd <2 x float> %i.afx, %i.afi
  %i.afz = fsub <2 x float> splat (float 1.000000e+00), %i.afy
  %i.aga = shufflevector <2 x float> %i.afz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.agb = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x float> %i.aga, <4 x i32> <i32 0, i32 5, i32 5, i32 5>
  %i.agc = load <2 x float>, ptr %i.acs, align 4, !tbaa !54, !noalias !132 ; 4 uses
  %i.agd = shufflevector <2 x float> %i.agc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.age = shufflevector <2 x float> %i.agc, <2 x float> %i.afm, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.agf = shufflevector <4 x float> %i.afv, <4 x float> %i.agd, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.agg = shufflevector <2 x float> %i.afo, <2 x float> %i.agc, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.agh = insertelement <4 x float> %i.agg, float 0.000000e+00, i64 3
  %i.agi = shufflevector <4 x float> %i.aga, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.agj = fsub float 1.000000e+00, %i.afj        ; 2 uses
  %foldExtExtBinop608 = fsub <2 x float> %i.afg, %i.afc ; 2 uses
  %i.agk = extractelement <2 x float> %foldExtExtBinop608, i64 0
  %i.agl = load <2 x float>, ptr %i.acp, align 4, !tbaa !54, !noalias !132 ; 4 uses
  %i.agm = shufflevector <2 x float> %foldExtExtBinop608, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agn = fmul <2 x float> %i.agm, %i.agl
  %i.ago = fmul float %i.agk, %i.afn
  %i.agp = extractelement <2 x float> %i.agl, i64 0
  %i.agq = fmul float %i.afu, %i.agp
  %i.agr = insertelement <2 x float> poison, float %i.agj, i64 0
  %i.ags = shufflevector <2 x float> %i.agr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agt = shufflevector <2 x float> %i.agl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.agu = shufflevector <2 x float> %i.afo, <2 x float> %i.agc, <2 x i32> <i32 0, i32 2>
  %i.agv = shufflevector <2 x float> %i.afk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.agw = load <2 x float>, ptr %i.acr, align 4, !tbaa !54, !noalias !132 ; 4 uses
  %i.agx = shufflevector <2 x float> %i.agw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.agy = shufflevector <4 x float> %i.age, <4 x float> %i.agx, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.agz = insertelement <2 x float> poison, float %i.afu, i64 0
  %i.aha = shufflevector <2 x float> %i.agz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahb = shufflevector <2 x float> %i.agl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ahc = insertelement <2 x float> %i.ahb, float %i.afn, i64 1
  %i.ahd = fmul <2 x float> %i.aha, %i.ahc
  %i.ahe = shufflevector <2 x float> %i.afm, <2 x float> %i.agw, <2 x i32> <i32 0, i32 2>
  %i.ahf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahe, <2 x float> %i.ags, <2 x float> %i.agn)
  %i.ahg = extractelement <2 x float> %i.agw, i64 1
  %i.ahh = call float @llvm.fmuladd.f32(float %i.ahg, float %i.agj, float %i.ago)
  %i.ahi = insertelement <4 x float> poison, float %i.ahh, i64 0
  %i.ahj = shufflevector <4 x float> %i.ahi, <4 x float> %i.agt, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ahk = insertelement <4 x float> %i.ahj, float %i.afn, i64 3
  %i.ahl = fmul <4 x float> %i.ahk, %i.agb
  %i.ahm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.agy, <4 x float> %i.afl, <4 x float> %i.ahl) ; 2 uses
  %i.ahn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agu, <2 x float> %i.agv, <2 x float> %i.ahf)
  %i.aho = insertelement <4 x float> %i.ahm, float %i.agq, i64 0
  %i.ahp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.agf, <4 x float> %i.aft, <4 x float> %i.aho) ; 3 uses
  %i.ahq = shufflevector <2 x float> %i.afs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ahr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agw, <2 x float> %i.ahq, <2 x float> %i.ahd)
  %i.ahs = insertelement <4 x float> %i.ahp, float 0.000000e+00, i64 3
  %i.aht = shufflevector <2 x float> %i.ahr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ahu = shufflevector <4 x float> %i.ahs, <4 x float> %i.aht, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ahv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.agh, <4 x float> %i.agi, <4 x float> %i.ahu)
  store <2 x float> %i.ahn, ptr %i.gu, align 8
  %i.ahw = shufflevector <4 x float> %i.ahm, <4 x float> %i.ahp, <4 x i32> <i32 0, i32 poison, i32 5, i32 6>
  %i.ahx = insertelement <4 x float> %i.ahw, float 0.000000e+00, i64 1
  store <4 x float> %i.ahx, ptr %.sroa.6381.0..sroa_idx, align 8
  %i.ahy = extractelement <4 x float> %i.ahp, i64 3
  store float %i.ahy, ptr %.sroa.11.16..sroa_idx, align 8
  store float 0.000000e+00, ptr %.sroa.12384.16..sroa_idx, align 4, !tbaa !68
  store <4 x float> %i.ahv, ptr %i.gy, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.ahz = load ptr, ptr %i.ry, align 8, !tbaa !130 ; 2 uses
  store float 0.000000e+00, ptr %i.uu, align 8, !tbaa !111
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV24btPerturbedContactResult, i64 16), ptr %23, align 8, !tbaa !13
  store ptr %4, ptr %i.uv, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.uw, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 16, i1 false), !tbaa.struct !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ux, ptr noundef nonnull align 8 dereferenceable(16) %i.gn, i64 16, i1 false), !tbaa.struct !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uy, ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i64 16, i1 false), !tbaa.struct !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uz, ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i64 16, i1 false), !tbaa.struct !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.va, ptr noundef nonnull align 8 dereferenceable(64) %i.gu, i64 16, i1 false), !tbaa.struct !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vb, ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i64 16, i1 false), !tbaa.struct !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vc, ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i64 16, i1 false), !tbaa.struct !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vd, ptr noundef nonnull align 8 dereferenceable(16) %i.ha, i64 16, i1 false), !tbaa.struct !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ve, ptr noundef nonnull align 4 dereferenceable(64) %22, i64 16, i1 false), !tbaa.struct !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vg, ptr noundef nonnull align 4 dereferenceable(16) %i.vf, i64 16, i1 false), !tbaa.struct !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vi, ptr noundef nonnull align 4 dereferenceable(16) %i.vh, i64 16, i1 false), !tbaa.struct !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vj, ptr noundef nonnull align 4 dereferenceable(16) %i.vk, i64 16, i1 false), !tbaa.struct !69
  store i8 %i.vl, ptr %i.vm, align 8, !tbaa !89
  store ptr %i.ahz, ptr %i.vn, align 8, !tbaa !133
  call void @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr noundef nonnull align 8 dereferenceable(100) %9, ptr noundef nonnull align 4 dereferenceable(132) %7, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %i.ahz, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  %i.aia = add nuw nsw i32 %.0185533, 1           ; 2 uses
  %i.aib = load i32, ptr %i.sa, align 4, !tbaa !34 ; 2 uses
  %i.aic = icmp slt i32 %i.aia, %i.aib
  br i1 %i.aic, label %.lr.ph535.split, label %._crit_edge536.split, !llvm.loop !109

._crit_edge536.split:                             ; preds = %bb.cp, %.lr.ph535, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  br label %bb.cq

.critedge:                                        ; preds = %bb.cd, %_ZN16btManifoldResult20refreshContactPointsEv.exit295
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZN16btManifoldResult20refreshContactPointsEv.exit

bb.cq:                                            ; preds = %bb.cj, %._crit_edge536.split, %bb.ch, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.aid = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aie = load i8, ptr %i.aid, align 8, !tbaa !31, !range !36, !noundef !37
  %i.aif = trunc nuw i8 %i.aie to i1
  br i1 %i.aif, label %bb.cr, label %_ZN16btManifoldResult20refreshContactPointsEv.exit

bb.cr:                                            ; preds = %bb.cq
  %i.aig = load ptr, ptr %i.u, align 8, !tbaa !48 ; 3 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 856
  %i.aii = load i32, ptr %i.aih, align 8, !tbaa !57
  %.not.i367 = icmp eq i32 %i.aii, 0
  br i1 %.not.i367, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %.sink.split.i369

.sink.split.i369:                                 ; preds = %bb.cr
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aig, i64 840
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !58
  %i.ail = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aim = load ptr, ptr %i.ail, align 8, !tbaa !59
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 16
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !44 ; 3 uses
  %.not1.i368 = icmp eq ptr %i.aik, %i.aio        ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !60
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 16
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !44 ; 2 uses
  %.580 = select i1 %.not1.i368, ptr %i.ais, ptr %i.aio
  %.581 = select i1 %.not1.i368, ptr %i.aio, ptr %i.ais
  %.sink.i372 = getelementptr inbounds nuw i8, ptr %.581, i64 8
  %i.ait = getelementptr inbounds nuw i8, ptr %.580, i64 8
  call void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(880) %i.aig, ptr noundef nonnull align 4 dereferenceable(64) %.sink.i372, ptr noundef nonnull align 4 dereferenceable(64) %i.ait)
  br label %_ZN16btManifoldResult20refreshContactPointsEv.exit

_ZN16btManifoldResult20refreshContactPointsEv.exit: ; preds = %.sink.split.i369, %bb.cr, %.sink.split.i283, %bb.n, %.sink.split.i276, %bb.j, %.sink.split.i, %bb.g, %bb.cq, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

declare noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(880)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef float @_ZL22capsuleCapsuleDistanceR9btVector3S0_ffffiiRK11btTransformS3_f(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %9, float noundef %10) unnamed_addr #11 {
bb.a:
  %i.a = sext i32 %6 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %8, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.d = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.f = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.a
  %i.g = load float, ptr %i.b, align 4, !tbaa !54 ; 6 uses
  %i.h = load float, ptr %i.d, align 4, !tbaa !54 ; 9 uses
  %i.i = load float, ptr %i.f, align 4, !tbaa !54 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 48
  %.sroa.094.0.copyload = load float, ptr %i.j, align 4
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 52
end_hunk_1
begin_hunk_2_@_ZN23btConvexConvexAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE:bb.a
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %i.u = ptrtoaddr ptr %i.t to i64
  %.0.i.i.i9 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.q to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  %i.v = sub i64 %i.u, %.0.i.i.i9
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond11 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond11, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x ptr>, ptr %i.x, align 8, !tbaa !174
  %wide.load10 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !174
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x ptr> %wide.load, ptr %i.w, align 8, !tbaa !174
  store <2 x ptr> %wide.load10, ptr %i.z, align 8, !tbaa !174
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !165

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
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !174
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !174
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !166

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ae = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !174
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !174
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !174
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !174
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.1
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !174
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !174
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.2
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !174
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !174
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !167

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load i8, ptr %i.as, align 8, !tbaa !175, !range !36, !noundef !37
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.f, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.t)
  %.pre2.pre.pre.i = load i32, ptr %i.f, align 4, !tbaa !171
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.q, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.f ], [ %i.q, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.av, align 8, !tbaa !175
  store ptr %.0.i.i.i, ptr %i.s, align 8, !tbaa !173
  store i32 %i.l, ptr %i.h, align 8, !tbaa !172
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !174
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i
  %i.aw = phi ptr [ %.pre, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  %i.ax = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.g, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !173
  %i.ba = sext i32 %i.ax to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  store ptr %i.aw, ptr %i.bb, align 8, !tbaa !174
  %i.bc = add nsw i32 %i.ax, 1
  store i32 %i.bc, ptr %i.f, align 4, !tbaa !171
  br label %bb.g

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

declare void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(880), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN23btConvexConvexAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResultEN21btWithoutMarginResultD0Ev(ptr noundef nonnull align 8 dereferenceable(45) %0) unnamed_addr #14 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZZN23btConvexConvexAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResultEN21btWithoutMarginResult20setShapeIdentifiersAEii(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i32 %2) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZZN23btConvexConvexAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResultEN21btWithoutMarginResult20setShapeIdentifiersBEii(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i32 %2) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZZN23btConvexConvexAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResultEN21btWithoutMarginResult15addContactPointERK9btVector3SB_f(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(45) initializes((16, 32), (40, 44)) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, float noundef %3) unnamed_addr #9 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store float %3, ptr %i.a, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !69
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load float, ptr %i.c, align 4, !tbaa !54 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !54
  %i.g = fmul float %i.d, %i.f
  %i.h = load <2 x float>, ptr %1, align 4, !tbaa !54
  %i.i = insertelement <2 x float> poison, float %i.d, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x float> %i.j, %i.h
  %i.l = load <2 x float>, ptr %2, align 4, !tbaa !54
  %i.m = fsub <2 x float> %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !54
  %i.p = fsub float %i.o, %i.g
  %.sroa.3.12.vec.insert.i9 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.p, i64 0
  store <2 x float> %i.m, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i9, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load float, ptr %i.r, align 8, !tbaa !73
  %i.t = fadd float %i.d, %i.s
  %i.u = fadd float %3, %i.t                      ; 3 uses
  store float %i.u, ptr %i.a, align 8, !tbaa !76
  %i.v = fcmp olt float %i.u, 0.000000e+00
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.w, align 4, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !72   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN24btPerturbedContactResultD0Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 272) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16btManifoldResult20setShapeIdentifiersAEii(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %1, ptr %i.a, align 8, !tbaa !176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %2, ptr %i.b, align 8, !tbaa !177
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16btManifoldResult20setShapeIdentifiersBEii(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.a, align 4, !tbaa !178
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %2, ptr %i.b, align 4, !tbaa !179
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN24btPerturbedContactResult15addContactPointERK9btVector3S2_f(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %3) unnamed_addr #9 comdat align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i8, ptr %i.a, align 8, !tbaa !89, !range !36, !noundef !37
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load <2 x float>, ptr %1, align 4, !tbaa !54 ; 3 uses
  %i.h = extractelement <2 x float> %i.g, i64 0   ; 3 uses
  %i.i = fmul float %3, %i.h
  %i.j = extractelement <2 x float> %i.g, i64 1   ; 3 uses
  %i.k = fmul float %3, %i.j
  %i.l = load float, ptr %i.d, align 4, !tbaa !54 ; 4 uses
  %i.m = fmul float %3, %i.l
  %i.n = load float, ptr %2, align 4, !tbaa !54   ; 4 uses
  %i.o = fadd float %i.i, %i.n                    ; 3 uses
  %i.p = load float, ptr %i.e, align 4, !tbaa !54 ; 4 uses
  %i.q = fadd float %i.k, %i.p                    ; 3 uses
  %i.r = load float, ptr %i.f, align 4, !tbaa !54 ; 4 uses
  %i.s = fadd float %i.m, %i.r                    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load float, ptr %i.w, align 8, !tbaa !54, !noalias !196 ; 3 uses
  %i.ad = load float, ptr %i.y, align 4, !tbaa !54, !noalias !196 ; 3 uses
  %i.ae = load float, ptr %i.aa, align 8, !tbaa !54, !noalias !196 ; 3 uses
  %i.af = load float, ptr %i.ab, align 8, !tbaa !54, !noalias !196 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !54, !noalias !197
  %i.ai = fneg float %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !54, !noalias !197
  %i.al = fneg float %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.an = load float, ptr %i.am, align 8, !tbaa !54, !noalias !197
  %i.ao = fneg float %i.an                        ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.aw = load <2 x float>, ptr %i.v, align 8, !tbaa !54, !noalias !196 ; 4 uses
  %i.ax = load float, ptr %i.x, align 4, !tbaa !54, !noalias !196
  %i.ay = load float, ptr %i.z, align 8, !tbaa !54, !noalias !196
  %i.az = load <3 x float>, ptr %i.u, align 8, !tbaa !54, !noalias !196 ; 5 uses
  %i.ba = shufflevector <3 x float> %i.az, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bb = load <2 x float>, ptr %i.au, align 8, !tbaa !54, !noalias !198 ; 3 uses
  %i.bc = load float, ptr %i.av, align 4, !tbaa !54, !noalias !198 ; 3 uses
  %i.bd = shufflevector <2 x float> %i.aw, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.be = shufflevector <3 x float> %i.bd, <3 x float> %i.az, <4 x i32> <i32 0, i32 1, i32 poison, i32 4>
  %i.bf = insertelement <4 x float> %i.be, float %i.ae, i64 2
  %i.bg = insertelement <2 x float> %i.bb, float %i.al, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bi = fmul <4 x float> %i.bf, %i.bh
  %i.bj = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bk = insertelement <2 x float> %i.bj, float %i.ai, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> %i.bl, <4 x float> %i.bi) ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bo = load float, ptr %i.bn, align 8, !tbaa !54, !noalias !198 ; 4 uses
  %i.bp = extractelement <4 x float> %i.bm, i64 3
  %i.bq = tail call noundef float @llvm.fmuladd.f32(float %i.ay, float %i.bo, float %i.bp)
  %i.br = fmul float %i.ax, %i.bc
  %i.bs = extractelement <2 x float> %i.aw, i64 0
  %i.bt = extractelement <2 x float> %i.bb, i64 0 ; 3 uses
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bt, float %i.br)
  %i.bv = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.bo, float %i.bu)
  %i.bw = fmul float %i.ad, %i.bc
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.bt, float %i.bw)
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.af, float %i.bo, float %i.bx)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !54, !noalias !199
  %i.cc = fmul float %i.q, %i.bv
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.o, float %i.bq, float %i.cc)
  %i.ce = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.by, float %i.cd)
  %i.cf = extractelement <4 x float> %i.bm, i64 0
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %i.ac, float %i.ao, float %i.cf) ; 2 uses
  %i.ch = extractelement <4 x float> %i.bm, i64 1
  %i.ci = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.ao, float %i.ch) ; 2 uses
  %i.cj = extractelement <4 x float> %i.bm, i64 2
  %i.ck = tail call noundef float @llvm.fmuladd.f32(float %i.af, float %i.ao, float %i.cj) ; 2 uses
  %i.cl = load <2 x float>, ptr %i.t, align 8
  %i.cm = load <2 x float>, ptr %i.ap, align 4
  %i.cn = load <2 x float>, ptr %i.aq, align 8
  %i.co = load float, ptr %i.ar, align 8, !tbaa !54, !noalias !198
  %i.cp = load float, ptr %i.as, align 4, !tbaa !54, !noalias !198
  %i.cq = shufflevector <3 x float> %i.az, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cr = insertelement <2 x float> %i.cm, float %i.cp, i64 1 ; 4 uses
  %i.cs = fmul <2 x float> %i.cq, %i.cr
  %i.ct = shufflevector <3 x float> %i.az, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cu = insertelement <2 x float> %i.cl, float %i.co, i64 1 ; 4 uses
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.cu, <2 x float> %i.cs)
  %i.cw = load float, ptr %i.at, align 8, !tbaa !54, !noalias !198
  %i.cx = shufflevector <3 x float> %i.az, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cy = insertelement <2 x float> %i.cn, float %i.cw, i64 1 ; 4 uses
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.cy, <2 x float> %i.cv)
  %i.da = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.db = fmul <2 x float> %i.da, %i.cr
  %i.dc = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.cu, <2 x float> %i.db)
  %i.de = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.cy, <2 x float> %i.dd)
  %i.dh = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x float> %i.di, %i.cr
  %i.dk = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.cu, <2 x float> %i.dj)
  %i.dn = insertelement <2 x float> poison, float %i.af, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.cy, <2 x float> %i.dm)
  %i.dq = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x float> %i.cr, %i.dr
  %i.dt = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.cu, <2 x float> %i.ds)
  %i.dw = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.cy, <2 x float> %i.dv)
  %i.dz = fmul float %i.ci, %i.bc
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.bt, float %i.dz)
  %i.eb = tail call noundef float @llvm.fmuladd.f32(float %i.ck, float %i.bo, float %i.ea)
  %i.ec = load <2 x float>, ptr %i.bz, align 8, !tbaa !54, !noalias !199
  %i.ed = fadd <2 x float> %i.dy, %i.ec
  %i.ee = fadd float %i.eb, %i.cb
  %i.ef = insertelement <2 x float> poison, float %i.q, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x float> %i.eg, %i.dg
  %i.ei = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.cz, <2 x float> %i.eh)
  %i.el = insertelement <2 x float> poison, float %i.s, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.dp, <2 x float> %i.ek)
  %i.eo = fadd <2 x float> %i.en, %i.ed           ; 3 uses
  %i.ep = fadd float %i.ee, %i.ce                 ; 2 uses
  %i.eq = extractelement <2 x float> %i.eo, i64 0
  %i.er = fsub float %i.eq, %i.n
  %i.es = extractelement <2 x float> %i.eo, i64 1
  %i.et = fsub float %i.es, %i.p
  %i.eu = fsub float %i.ep, %i.r
  %i.ev = fmul float %i.j, %i.et
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.er, float %i.h, float %i.ev)
  %i.ex = tail call noundef float @llvm.fmuladd.f32(float %i.eu, float %i.l, float %i.ew) ; 3 uses
  %i.ey = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = fmul <2 x float> %i.g, %i.ez
  %i.fb = fmul float %i.l, %i.ex
  %i.fc = fsub <2 x float> %i.eo, %i.fa
  %i.fd = fsub float %i.ep, %i.fb
  %.sroa.3.12.vec.insert.i35 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fd, i64 0
  store <2 x float> %i.fc, ptr %4, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i35, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !68
  br label %bb.d
end_hunk_2
begin_hunk_3_@_ZN20btAlignedObjectArrayI6btFaceE7reserveEi:bb.a
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i.i.i.i.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !84
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !84
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 2 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.au = load i32, ptr %i.at, align 4, !tbaa !84
  store i32 %i.au, ptr %i.as, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 3 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !84
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i.i, label %scalar.ph21, !llvm.loop !206

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i.i
  %.not.i5.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i5.i.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i.i: ; preds = %scalar.ph21.prol.loopexit, %scalar.ph21, %middle.block32, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i.i
  %i.ay = load i8, ptr %i.n, align 8, !tbaa !80, !range !36, !noundef !37
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.e, label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.z)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i.i
  store i8 1, ptr %i.n, align 8, !tbaa !80
  store ptr %i.w, ptr %i.o, align 8, !tbaa !81
  store i32 %i.s, ptr %i.q, align 8, !tbaa !83
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 0, i64 %i.v, i1 false), !tbaa !84
  store i32 %i.s, ptr %i.p, align 4, !tbaa !82
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !81 ; 7 uses
  %min.iters.check = icmp ult i32 %i.s, 8
  %i.bc = ptrtoaddr ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.x
  %diff.check = icmp ugt i64 %i.bd, -32
  %or.cond36 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond36, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %i.u, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <4 x i32>, ptr %i.bf, align 4, !tbaa !84
  %wide.load18 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !84
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x i32> %wide.load, ptr %i.be, align 4, !tbaa !84
  store <4 x i32> %wide.load18, ptr %i.bh, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.u
  br i1 %cmp.n, label %_ZN6btFaceC2ERKS_.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %indvars.iv.i6.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter37 = and i64 %i.u, 3                   ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i6.i.i.i.prol = phi i64 [ %indvars.iv.next.i7.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i6.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter39 = phi i64 [ %prol.iter39.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i6.i.i.i.prol
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i6.i.i.i.prol
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !84
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !84
  %indvars.iv.next.i7.i.i.i.prol = add nuw nsw i64 %indvars.iv.i6.i.i.i.prol, 1 ; 2 uses
  %prol.iter39.next = add i64 %prol.iter39, 1     ; 2 uses
  %prol.iter39.cmp.not = icmp eq i64 %prol.iter39.next, %xtraiter37
  br i1 %prol.iter39.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !208

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i6.i.i.i.unr = phi i64 [ %indvars.iv.i6.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i7.i.i.i.prol, %scalar.ph.prol ]
  %i.bm = sub nsw i64 %indvars.iv.i6.i.i.i.ph, %i.u
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %_ZN6btFaceC2ERKS_.exit.i, label %scalar.ph

_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i.i: ; preds = %bb.d
  store i32 %i.s, ptr %i.p, align 4, !tbaa !82
  br label %_ZN6btFaceC2ERKS_.exit.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i6.i.i.i = phi i64 [ %indvars.iv.next.i7.i.i.i.3, %scalar.ph ], [ %indvars.iv.i6.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i6.i.i.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i6.i.i.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !84
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !84
  %indvars.iv.next.i7.i.i.i = add nuw nsw i64 %indvars.iv.i6.i.i.i, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i7.i.i.i
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.i7.i.i.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !84
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !84
  %indvars.iv.next.i7.i.i.i.1 = add nuw nsw i64 %indvars.iv.i6.i.i.i, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i7.i.i.i.1
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.i7.i.i.i.1
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !84
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !84
  %indvars.iv.next.i7.i.i.i.2 = add nuw nsw i64 %indvars.iv.i6.i.i.i, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i7.i.i.i.2
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.i7.i.i.i.2
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !84
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !84
  %indvars.iv.next.i7.i.i.i.3 = add nuw nsw i64 %indvars.iv.i6.i.i.i, 4 ; 2 uses
  %exitcond.not.i8.i.i.i.3 = icmp eq i64 %indvars.iv.next.i7.i.i.i.3, %i.u
  br i1 %exitcond.not.i8.i.i.i.3, label %_ZN6btFaceC2ERKS_.exit.i, label %scalar.ph, !llvm.loop !209

_ZN6btFaceC2ERKS_.exit.i:                         ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !69
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cc = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.cc, label %_ZNK20btAlignedObjectArrayI6btFaceE4copyEiiPS0_.exit, label %bb.d, !llvm.loop !210

_ZNK20btAlignedObjectArrayI6btFaceE4copyEiiPS0_.exit: ; preds = %_ZN6btFaceC2ERKS_.exit.i
  %.pre = load i32, ptr %i.g, align 4, !tbaa !96  ; 2 uses
  %i.cd = icmp sgt i32 %.pre, 0
  br i1 %i.cd, label %.lr.ph.i5, label %_ZN20btAlignedObjectArrayI6btFaceE7destroyEii.exit

.lr.ph.i5:                                        ; preds = %_ZNK20btAlignedObjectArrayI6btFaceE4copyEiiPS0_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %zext11 = zext nneg i32 %.pre to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZN6btFaceD2Ev.exit.i, %.lr.ph.i5
  %indvars.iv.i6 = phi i64 [ 0, %.lr.ph.i5 ], [ %indvars.iv.next.i7, %_ZN6btFaceD2Ev.exit.i ] ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !98
  %i.cg = getelementptr inbounds nuw [48 x i8], ptr %i.cf, i64 %indvars.iv.i6 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !81 ; 2 uses
  %.not.i.i.i.i.i = icmp ne ptr %i.ci, null
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ck = load i8, ptr %i.cj, align 8, !range !36
  %i.cl = trunc nuw i8 %i.ck to i1
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.cl, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.g, label %_ZN6btFaceD2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ci)
          to label %_ZN6btFaceD2Ev.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  tail call void @__clang_call_terminate(ptr %i.cn) #20
  unreachable

_ZN6btFaceD2Ev.exit.i:                            ; preds = %bb.g, %bb.f
  %indvars.iv.next.i7 = add nuw nsw i64 %indvars.iv.i6, 1 ; 2 uses
  %i.co = icmp eq i64 %indvars.iv.next.i7, %zext11
  br i1 %i.co, label %_ZN20btAlignedObjectArrayI6btFaceE7destroyEii.exit, label %bb.f, !llvm.loop !211

_ZN20btAlignedObjectArrayI6btFaceE7destroyEii.exit: ; preds = %_ZN6btFaceD2Ev.exit.i, %_ZN20btAlignedObjectArrayI6btFaceE8allocateEi.exit, %_ZNK20btAlignedObjectArrayI6btFaceE4copyEiiPS0_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !98 ; 2 uses
  %.not.i10 = icmp eq ptr %i.cq, null
  br i1 %.not.i10, label %_ZN20btAlignedObjectArrayI6btFaceE10deallocateEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN20btAlignedObjectArrayI6btFaceE7destroyEii.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !212, !range !36, !noundef !37
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.j, label %_ZN20btAlignedObjectArrayI6btFaceE10deallocateEv.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cq)
  br label %_ZN20btAlignedObjectArrayI6btFaceE10deallocateEv.exit

_ZN20btAlignedObjectArrayI6btFaceE10deallocateEv.exit: ; preds = %bb.i, %bb.j, %_ZN20btAlignedObjectArrayI6btFaceE7destroyEii.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.cu, align 8, !tbaa !212
  store ptr %.0.i, ptr %i.cp, align 8, !tbaa !98
  store i32 %1, ptr %i.a, align 8, !tbaa !97
  br label %bb.k

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayI6btFaceE10deallocateEv.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincosf(float noundef, ptr, ptr) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !85}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"bool", !6, i64 0}
!11 = !{!"_ZTS30btCollisionAlgorithmCreateFunc", !10, i64 8}
!12 = !{!"vtable pointer", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 _ZTS30btConvexPenetrationDepthSolver", !14, i64 0}
!16 = !{!"_ZTSN23btConvexConvexAlgorithm10CreateFuncE", !11, i64 0, !15, i64 16, !7, i64 24, !7, i64 28}
!17 = !{!16, !15, i64 16}
!18 = !{!"p1 _ZTS12btDispatcher", !14, i64 0}
!19 = !{!"_ZTS20btCollisionAlgorithm", !18, i64 8}
!20 = !{!"_ZTS30btActivatingCollisionAlgorithm", !19, i64 0}
!21 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!22 = !{!"p1 _ZTS9btVector3", !14, i64 0}
!23 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !21, i64 0, !7, i64 4, !7, i64 8, !22, i64 16, !10, i64 24}
!24 = !{!"p1 _ZTS20btPersistentManifold", !14, i64 0}
!25 = !{!"_ZTS23btConvexConvexAlgorithm", !20, i64 0, !15, i64 16, !23, i64 24, !23, i64 56, !10, i64 88, !24, i64 96, !10, i64 104, !7, i64 108, !7, i64 112}
!26 = !{!25, !15, i64 16}
!27 = !{!23, !10, i64 24}
!28 = !{!23, !22, i64 16}
!29 = !{!23, !7, i64 4}
!30 = !{!23, !7, i64 8}
!31 = !{!25, !10, i64 88}
!32 = !{!25, !24, i64 96}
!33 = !{!25, !10, i64 104}
!34 = !{!25, !7, i64 108}
!35 = !{!25, !7, i64 112}
!36 = !{i8 0, i8 2}
!37 = !{}
!38 = !{!19, !18, i64 8}
!39 = !{!"p1 _ZTS24btCollisionObjectWrapper", !14, i64 0}
!40 = !{!"p1 _ZTS16btCollisionShape", !14, i64 0}
!41 = !{!"p1 _ZTS17btCollisionObject", !14, i64 0}
!42 = !{!"p1 _ZTS11btTransform", !14, i64 0}
!43 = !{!"_ZTS24btCollisionObjectWrapper", !39, i64 0, !40, i64 8, !41, i64 16, !42, i64 24, !42, i64 32, !7, i64 40, !7, i64 44}
!44 = !{!43, !41, i64 16}
!45 = !{!"_ZTSN36btDiscreteCollisionDetectorInterface6ResultE"}
!46 = !{!"float", !6, i64 0}
!47 = !{!"_ZTS16btManifoldResult", !45, i64 0, !24, i64 8, !39, i64 16, !39, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !46, i64 48}
!48 = !{!47, !24, i64 8}
!49 = !{!"_ZTS16btCollisionShape", !7, i64 8, !14, i64 16, !7, i64 24, !7, i64 28}
!50 = !{!49, !7, i64 8}
!51 = !{!"_ZTS13btConvexShape", !49, i64 0}
!52 = !{!"_ZTS9btVector3", !6, i64 0}
!53 = !{!"_ZTS21btConvexInternalShape", !51, i64 0, !52, i64 32, !52, i64 48, !46, i64 64, !46, i64 68}
!54 = !{!46, !46, i64 0}
!55 = !{!"_ZTS13btTypedObject", !7, i64 0}
!56 = !{!"_ZTS20btPersistentManifold", !55, i64 0, !6, i64 8, !41, i64 840, !41, i64 848, !7, i64 856, !46, i64 860, !46, i64 864, !7, i64 868, !7, i64 872, !7, i64 876}
!57 = !{!56, !7, i64 856}
!58 = !{!56, !41, i64 840}
!59 = !{!47, !39, i64 16}
!60 = !{!47, !39, i64 24}
!61 = !{!"short", !6, i64 0}
!62 = !{!"_ZTS15btUsageBitfield", !61, i64 0, !61, i64 0, !61, i64 0, !61, i64 0, !61, i64 0, !61, i64 0, !61, i64 0, !61, i64 0}
!63 = !{!"_ZTS25btSubSimplexClosestResult", !52, i64 0, !62, i64 16, !6, i64 20, !10, i64 36}
!64 = !{!"_ZTS22btVoronoiSimplexSolver", !7, i64 0, !6, i64 4, !6, i64 84, !6, i64 164, !52, i64 244, !52, i64 260, !52, i64 276, !52, i64 292, !46, i64 308, !10, i64 312, !63, i64 316, !10, i64 356}
!65 = !{!64, !46, i64 308}
!66 = !{!"_ZTS11btMatrix3x3", !6, i64 0}
!67 = !{!"_ZTS11btTransform", !66, i64 0, !52, i64 48}
!68 = !{!6, !6, i64 0}
!69 = !{i64 0, i64 16, !68}
!70 = !{!"p1 _ZTSN36btDiscreteCollisionDetectorInterface6ResultE", !14, i64 0}
!71 = !{!"_ZTSZN23btConvexConvexAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResultE21btWithoutMarginResult", !45, i64 0, !70, i64 8, !52, i64 16, !46, i64 32, !46, i64 36, !46, i64 40, !10, i64 44}
!72 = !{!71, !70, i64 8}
!73 = !{!71, !46, i64 32}
!74 = !{!71, !10, i64 44}
!75 = !{!"p1 _ZTS12btIDebugDraw", !14, i64 0}
!76 = !{!71, !46, i64 40}
!77 = !{!"_ZTS18btAlignedAllocatorIiLj16EE"}
!78 = !{!"p1 int", !14, i64 0}
!79 = !{!"_ZTS20btAlignedObjectArrayIiE", !77, i64 0, !7, i64 4, !7, i64 8, !78, i64 16, !10, i64 24}
!80 = !{!79, !10, i64 24}
!81 = !{!79, !78, i64 16}
!82 = !{!79, !7, i64 4}
!83 = !{!79, !7, i64 8}
!84 = !{!7, !7, i64 0}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"p1 _ZTS16btManifoldResult", !14, i64 0}
!87 = !{!"_ZTS24btPerturbedContactResult", !47, i64 0, !86, i64 56, !67, i64 64, !67, i64 128, !67, i64 192, !10, i64 256, !75, i64 264}
!88 = !{!87, !86, i64 56}
!89 = !{!87, !10, i64 256}
!90 = !{!"llvm.loop.isvectorized", i32 1}
!91 = !{!"llvm.loop.unroll.runtime.disable"}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = !{!"_ZTS18btAlignedAllocatorI6btFaceLj16EE"}
!94 = !{!"p1 _ZTS6btFace", !14, i64 0}
!95 = !{!"_ZTS20btAlignedObjectArrayI6btFaceE", !93, i64 0, !7, i64 4, !7, i64 8, !94, i64 16, !10, i64 24}
!96 = !{!95, !7, i64 4}
!97 = !{!95, !7, i64 8}
!98 = !{!95, !94, i64 16}
!99 = !{!"any p2 pointer", !14, i64 0}
!100 = !{!11, !10, i64 8}
!101 = !{!16, !7, i64 24}
!102 = !{!16, !7, i64 28}
!103 = distinct !{!103, !85}
!104 = distinct !{!104, !85}
!105 = distinct !{!105, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!106 = distinct !{!106, !105, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!107 = distinct !{!107, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!108 = distinct !{!108, !107, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!109 = distinct !{!109, !85}
!110 = !{!43, !40, i64 8}
!111 = !{!47, !46, i64 48}
!112 = !{!"_ZTS14btCapsuleShape", !53, i64 0, !7, i64 72}
!113 = !{!112, !7, i64 72}
!114 = !{!43, !42, i64 24}
!115 = !{i64 4}
!116 = !{!"_ZTS36btDiscreteCollisionDetectorInterface"}
!117 = !{!"p1 _ZTS22btVoronoiSimplexSolver", !14, i64 0}
!118 = !{!"p1 _ZTS13btConvexShape", !14, i64 0}
!119 = !{!"_ZTS17btGjkPairDetector", !116, i64 0, !52, i64 8, !15, i64 24, !117, i64 32, !118, i64 40, !118, i64 48, !7, i64 56, !7, i64 60, !46, i64 64, !46, i64 68, !10, i64 72, !46, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!120 = !{!119, !118, i64 40}
!121 = !{!119, !118, i64 48}
!122 = !{!"_ZTSN36btDiscreteCollisionDetectorInterface17ClosestPointInputE", !67, i64 0, !67, i64 64, !46, i64 128}
!123 = !{!122, !46, i64 128}
!124 = !{!71, !46, i64 36}
!125 = !{!"p1 _ZTS18btConvexPolyhedron", !14, i64 0}
!126 = !{!"_ZTS23btPolyhedralConvexShape", !53, i64 0, !125, i64 72}
!127 = !{!126, !125, i64 72}
!128 = !{!"_ZTS16btDispatcherInfo", !46, i64 0, !7, i64 4, !7, i64 8, !46, i64 12, !10, i64 16, !75, i64 24, !10, i64 32, !10, i64 33, !10, i64 34, !46, i64 36, !10, i64 40, !46, i64 44, !10, i64 48}
!129 = !{!128, !10, i64 32}
!130 = !{!128, !75, i64 24}
!131 = !{!106}
!132 = !{!108}
!133 = !{!87, !75, i64 264}
!134 = distinct !{!134, !85}
!135 = distinct !{!135, !85, !90, !91}
!136 = distinct !{!136, !92}
!137 = distinct !{!137, !85, !90}
!138 = distinct !{!138, !85, !90, !91}
!139 = distinct !{!139, !92}
!140 = distinct !{!140, !85, !90}
!141 = distinct !{!141, !85, !90, !91}
!142 = distinct !{!142, !92}
!143 = distinct !{!143, !85, !90}
!144 = !{!"p1 _ZTS17btBroadphaseProxy", !14, i64 0}
!145 = !{!"_ZTS18btAlignedAllocatorIPK17btCollisionObjectLj16EE"}
!146 = !{!"p2 _ZTS17btCollisionObject", !99, i64 0}
!147 = !{!"_ZTS20btAlignedObjectArrayIPK17btCollisionObjectE", !145, i64 0, !7, i64 4, !7, i64 8, !146, i64 16, !10, i64 24}
!148 = !{!"_ZTS17btCollisionObject", !67, i64 8, !67, i64 72, !52, i64 136, !52, i64 152, !52, i64 168, !7, i64 184, !46, i64 188, !144, i64 192, !40, i64 200, !14, i64 208, !40, i64 216, !7, i64 224, !7, i64 228, !7, i64 232, !7, i64 236, !7, i64 240, !46, i64 244, !46, i64 248, !46, i64 252, !46, i64 256, !46, i64 260, !46, i64 264, !46, i64 268, !7, i64 272, !14, i64 280, !7, i64 288, !7, i64 292, !7, i64 296, !46, i64 300, !46, i64 304, !46, i64 308, !7, i64 312, !147, i64 320, !7, i64 352, !52, i64 356}
!149 = !{!148, !46, i64 308}
!150 = !{!10, !10, i64 0}
!151 = !{!148, !40, i64 200}
!152 = !{!148, !46, i64 304}
!153 = !{!53, !46, i64 64}
!154 = !{!53, !46, i64 68}
!155 = !{!"_ZTSN12btConvexCast10CastResultE", !67, i64 8, !67, i64 72, !52, i64 136, !52, i64 152, !46, i64 168, !75, i64 176, !46, i64 184, !7, i64 188, !46, i64 192}
!156 = !{!155, !46, i64 168}
!157 = !{!155, !75, i64 176}
!158 = !{!155, !46, i64 184}
!159 = !{!155, !7, i64 188}
!160 = !{!155, !46, i64 192}
!161 = !{!148, !46, i64 300}
!162 = !{!"_ZTS36btCollisionAlgorithmConstructionInfo", !18, i64 0, !24, i64 8}
!163 = !{!162, !18, i64 0}
!164 = !{!162, !24, i64 8}
!165 = distinct !{!165, !85, !90, !91}
!166 = distinct !{!166, !92}
!167 = distinct !{!167, !85, !90}
!168 = !{!"_ZTS18btAlignedAllocatorIP20btPersistentManifoldLj16EE"}
!169 = !{!"p2 _ZTS20btPersistentManifold", !99, i64 0}
!170 = !{!"_ZTS20btAlignedObjectArrayIP20btPersistentManifoldE", !168, i64 0, !7, i64 4, !7, i64 8, !169, i64 16, !10, i64 24}
!171 = !{!170, !7, i64 4}
!172 = !{!170, !7, i64 8}
!173 = !{!170, !169, i64 16}
!174 = !{!24, !24, i64 0}
!175 = !{!170, !10, i64 24}
!176 = !{!47, !7, i64 32}
!177 = !{!47, !7, i64 40}
!178 = !{!47, !7, i64 36}
!179 = !{!47, !7, i64 44}
!180 = distinct !{!180, i1 true, !"_ZNK11btTransform7inverseEv"}
!181 = distinct !{!181, !180, !"_ZNK11btTransform7inverseEv: argument 0"}
!182 = distinct !{!182, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!183 = distinct !{!183, !182, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!184 = distinct !{!184, i1 true, !"_ZNK11btTransformmlERKS_"}
!185 = distinct !{!185, !184, !"_ZNK11btTransformmlERKS_: argument 0"}
!186 = distinct !{!186, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!187 = distinct !{!187, !186, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!188 = distinct !{!188, i1 true, !"_ZNK11btTransform7inverseEv"}
!189 = distinct !{!189, !188, !"_ZNK11btTransform7inverseEv: argument 0"}
!190 = distinct !{!190, i1 true, !"_ZNK11btTransformmlERKS_"}
end_hunk_3
