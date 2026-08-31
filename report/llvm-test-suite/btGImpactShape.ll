Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btGImpactShape?download=true
inline.NumInlined: 343
inline.NumDeleted: 120
begin_hunk_0_@_ZNK22btGImpactMeshShapePart19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.m:                                             ; preds = %bb.h, %bb.d
  %.pn13 = phi { ptr, i32 } [ %i.p, %bb.d ], [ %lpad.phi, %bb.h ]
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !57  ; 2 uses
  %.not.i.i.i16 = icmp ne ptr %i.ar, null
  %i.as = load i8, ptr %i.e, align 8, !range !77
  %i.at = trunc nuw i8 %i.as to i1
  %or.cond.i.i17 = select i1 %.not.i.i.i16, i1 %i.at, i1 false
  br i1 %or.cond.i.i17, label %bb.n, label %_ZN20btAlignedObjectArrayIiED2Ev.exit19

bb.n:                                             ; preds = %bb.m
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ar)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit19 unwind label %bb.o

_ZN20btAlignedObjectArrayIiED2Ev.exit19:          ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %.pn13

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #17
  unreachable
}

declare noundef zeroext i1 @_ZNK21btGImpactQuantizedBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 4 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: uwtable
define dso_local void @_ZNK18btGImpactMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46   ; 2 uses
  %.not5 = icmp eq i32 %i.b, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = sext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.f = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(272) %i.g, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  %.not = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN22btGImpactCompoundShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTV22btGImpactCompoundShape, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = load i8, ptr %i.c, align 8, !range !77
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIP16btCollisionShapeED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIP16btCollisionShapeED2Ev.exit unwind label %bb.g

_ZN20btAlignedObjectArrayIP16btCollisionShapeED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %.not.i.i.i4 = icmp ne ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.i = load i8, ptr %i.h, align 8, !range !77
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond.i.i5 = select i1 %.not.i.i.i4, i1 %i.j, i1 false
  br i1 %or.cond.i.i5, label %bb.c, label %_ZN20btAlignedObjectArrayI11btTransformED2Ev.exit

bb.c:                                             ; preds = %_ZN20btAlignedObjectArrayIP16btCollisionShapeED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.g)
          to label %_ZN20btAlignedObjectArrayI11btTransformED2Ev.exit unwind label %bb.i

_ZN20btAlignedObjectArrayI11btTransformED2Ev.exit: ; preds = %_ZN20btAlignedObjectArrayIP16btCollisionShapeED2Ev.exit, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTV23btGImpactShapeInterface, i64 16), ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 2 uses
  %.not.i.i.i.i.i.i = icmp ne ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load i8, ptr %i.m, align 8, !range !77
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.o, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.d, label %_ZN23btGImpactShapeInterfaceD2Ev.exit

bb.d:                                             ; preds = %_ZN20btAlignedObjectArrayI11btTransformED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.l)
          to label %_ZN23btGImpactShapeInterfaceD2Ev.exit unwind label %bb.e, !inline_history !79

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %common.resume unwind label %bb.f, !inline_history !79

common.resume:                                    ; preds = %_ZN20btAlignedObjectArrayI11btTransformED2Ev.exit10, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.e ], [ %.pn, %_ZN20btAlignedObjectArrayI11btTransformED2Ev.exit10 ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #17, !inline_history !79
  unreachable

_ZN23btGImpactShapeInterfaceD2Ev.exit:            ; preds = %_ZN20btAlignedObjectArrayI11btTransformED2Ev.exit, %bb.d
  tail call void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0), !inline_history !79
  ret void

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19   ; 2 uses
  %.not.i.i.i7 = icmp ne ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.w = load i8, ptr %i.v, align 8, !range !77
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond.i.i8 = select i1 %.not.i.i.i7, i1 %i.x, i1 false
  br i1 %or.cond.i.i8, label %bb.h, label %_ZN20btAlignedObjectArrayI11btTransformED2Ev.exit10

bb.h:                                             ; preds = %bb.g
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.u)
          to label %_ZN20btAlignedObjectArrayI11btTransformED2Ev.exit10 unwind label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayI11btTransformED2Ev.exit10

_ZN20btAlignedObjectArrayI11btTransformED2Ev.exit10: ; preds = %bb.g, %bb.h, %bb.i
  %.pn = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.s, %bb.h ], [ %i.s, %bb.g ]
  invoke void @_ZN23btGImpactShapeInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.h, %_ZN20btAlignedObjectArrayI11btTransformED2Ev.exit10
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #17
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN22btGImpactCompoundShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN22btGImpactCompoundShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  resume { ptr, i32 } %i.a
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK23btGImpactShapeInterface7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.0.0.copyload4 = load <2 x float>, ptr %i.a, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.7.0.copyload6 = load <2 x float>, ptr %.sroa.7.0..sroa_idx5, align 4, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.9.16.copyload7 = load <2 x float>, ptr %i.b, align 4 ; 4 uses
  %.sroa.14.16..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.14.16.copyload9 = load <2 x float>, ptr %.sroa.14.16..sroa_idx8, align 4, !tbaa !30 ; 2 uses
  %.sroa.9.16.vec.extract = extractelement <2 x float> %.sroa.9.16.copyload7, i64 0
  %foldExtExtBinop = fadd <2 x float> %.sroa.0.0.copyload4, %.sroa.9.16.copyload7
  %i.c = extractelement <2 x float> %foldExtExtBinop, i64 0
  %.sroa.9.20.vec.extract = extractelement <2 x float> %.sroa.9.16.copyload7, i64 1
  %foldExtExtBinop11 = fadd <2 x float> %.sroa.0.0.copyload4, %.sroa.9.16.copyload7
  %4 = extractelement <2 x float> %foldExtExtBinop11, i64 1
  %.sroa.14.24.vec.extract.a = extractelement <2 x float> %.sroa.14.16.copyload9, i64 0
  %5 = extractelement <2 x float> %.sroa.7.0.copyload6, i64 0
  %6 = extractelement <2 x float> %.sroa.14.16.copyload9, i64 0
  %i.d = fadd float %5, %6
  %i.e = fmul float %i.c, 5.000000e-01            ; 3 uses
  %i.f = fmul float %4, 5.000000e-01              ; 3 uses
  %i.g = fmul float %i.d, 5.000000e-01            ; 3 uses
  %i.h = fsub float %.sroa.9.16.vec.extract, %i.e ; 2 uses
  %i.i = fsub float %.sroa.9.20.vec.extract, %i.f ; 2 uses
  %i.j = fsub float %.sroa.14.24.vec.extract.a, %i.g ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load <4 x float>, ptr %i.k, align 4
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load float, ptr %i.p, align 4, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load float, ptr %i.r, align 4, !tbaa !23 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.u = load float, ptr %i.t, align 4, !tbaa !23 ; 2 uses
  %i.v = fmul float %i.f, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.s, float %i.e, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load float, ptr %i.x, align 4, !tbaa !23 ; 2 uses
  %i.z = tail call noundef float @llvm.fmuladd.f32(float %i.y, float %i.g, float %i.w)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !23
  %i.ac = fadd float %i.ab, %i.z                  ; 2 uses
  %i.ad = tail call noundef float @llvm.fabs.f32(float %i.s)
  %i.ae = tail call noundef float @llvm.fabs.f32(float %i.u)
  %i.af = tail call noundef float @llvm.fabs.f32(float %i.y)
  %i.ag = fmul float %i.i, %i.ae
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.h, float %i.ad, float %i.ag)
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.af, float %i.ah) ; 2 uses
  %i.aj = fsub float %i.ac, %i.ai
  %.sroa.3.12.vec.insert.i41.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aj, i64 0
  %i.ak = load <2 x float>, ptr %1, align 4, !tbaa !23 ; 2 uses
  %i.al = load <2 x float>, ptr %i.o, align 4, !tbaa !23 ; 2 uses
  %i.am = insertelement <2 x float> poison, float %i.f, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = shufflevector <2 x float> %i.ak, <2 x float> %i.al, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ap = fmul <2 x float> %i.an, %i.ao
  %i.aq = shufflevector <2 x float> %i.ak, <2 x float> %i.al, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ar = insertelement <2 x float> poison, float %i.e, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.as, <2 x float> %i.ap)
  %i.au = insertelement <2 x float> %i.m, float %i.q, i64 1 ; 2 uses
  %i.av = insertelement <2 x float> poison, float %i.g, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.aw, <2 x float> %i.at)
  %i.ay = load <2 x float>, ptr %i.n, align 4, !tbaa !23
  %i.az = fadd <2 x float> %i.ay, %i.ax           ; 2 uses
  %i.ba = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aq)
  %i.bb = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ao)
  %i.bc = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.au)
  %i.bd = insertelement <2 x float> poison, float %i.i, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %i.be, %i.bb
  %i.bg = insertelement <2 x float> poison, float %i.h, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.ba, <2 x float> %i.bf)
  %i.bj = insertelement <2 x float> poison, float %i.j, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bc, <2 x float> %i.bi) ; 2 uses
  %i.bm = fsub <2 x float> %i.az, %i.bl
  %i.bn = fadd <2 x float> %i.az, %i.bl
  %i.bo = fadd float %i.ac, %i.ai
  %.sroa.3.12.vec.insert.i46.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bo, i64 0
  store <2 x float> %i.bm, ptr %2, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i41.i, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !30
  store <2 x float> %i.bn, ptr %3, align 4
  %.sroa.14.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i46.i, ptr %.sroa.14.16..sroa_idx, align 4, !tbaa !30
  ret void
}

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #4

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN23btGImpactShapeInterface15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !29
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(176) %0)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK23btGImpactShapeInterface15getLocalScalingEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK22btGImpactCompoundShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN23btGImpactShapeInterface9setMarginEf(ptr noundef nonnull align 8 dereferenceable(176) %0, float noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %1, ptr %i.a, align 8, !tbaa !80
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(176) %0) ; 2 uses
  %.not5 = icmp eq i32 %i.e, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi i32 [ %i.f, %.lr.ph ], [ %i.e, %bb.a ]
  %i.f = add nsw i32 %.06, -1                     ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %i.f) ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(24) %i.j, float noundef %1)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 1, ptr %i.n, align 4, !tbaa !81
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK14btConcaveShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load float, ptr %i.a, align 8, !tbaa !80
  ret float %i.b
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK23btGImpactShapeInterface19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN23btGImpactShapeInterface13calcLocalAABBEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(176) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !82
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN21btGImpactQuantizedBvh8buildSetEv(ptr noundef nonnull align 8 dereferenceable(96) %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN21btGImpactQuantizedBvh5refitEv(ptr noundef nonnull align 8 dereferenceable(96) %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(176) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78, !noalias !83 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i16, ptr %i.n, align 2, !tbaa !86, !noalias !83
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = load float, ptr %i.p, align 8, !tbaa !23, !noalias !83
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load float, ptr %i.r, align 8, !tbaa !23, !noalias !83 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.v = load i16, ptr %i.u, align 2, !tbaa !86, !noalias !83
  %i.w = insertelement <2 x i16> poison, i16 %i.o, i64 0
  %i.x = insertelement <2 x i16> %i.w, i16 %i.v, i64 1
  %i.y = uitofp <2 x i16> %i.x to <2 x float>
  %i.z = insertelement <2 x float> poison, float %i.q, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fdiv <2 x float> %i.y, %i.aa            ; 2 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0
  %i.ad = fadd float %i.ac, %i.s
  %.sroa.7.8.vec.insert19.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
  %i.ae = load <2 x float>, ptr %i.m, align 8, !tbaa !23, !noalias !83 ; 2 uses
  %i.af = load <2 x float>, ptr %i.l, align 8, !tbaa !23, !noalias !83 ; 2 uses
  %i.ag = load <2 x i16>, ptr %i.k, align 2, !tbaa !86, !noalias !83
  %i.ah = uitofp <2 x i16> %i.ag to <2 x float>
  %i.ai = fdiv <2 x float> %i.ah, %i.ae
  %i.aj = fadd <2 x float> %i.ai, %i.af
  %i.ak = load <2 x i16>, ptr %i.t, align 2, !tbaa !86, !noalias !83
  %i.al = uitofp <2 x i16> %i.ak to <2 x float>
end_hunk_0
