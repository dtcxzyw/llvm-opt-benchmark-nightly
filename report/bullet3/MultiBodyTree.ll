inline.NumInlined: 172
inline.NumDeleted: 97
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl20getBodyJacobianTransEiPNS_5mat3xE
; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK24btInverseDynamicsBullet313MultiBodyTree18getBodyJacobianRotEiPNS_5mat3xE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = tail call noundef i32 @_ZNK24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl18getBodyJacobianRotEiPNS_5mat3xE(ptr noundef nonnull align 8 dereferenceable(400) %i.b, i32 noundef %1, ptr noundef %2)
  ret i32 %i.c
}

declare noundef i32 @_ZNK24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl18getBodyJacobianRotEiPNS_5mat3xE(ptr noundef nonnull align 8 dereferenceable(400), i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN24btInverseDynamicsBullet313MultiBodyTree7addBodyEiiNS_9JointTypeERKNS_4vec3ERKNS_5mat33ES4_fS4_S7_iPv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(48) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, float noundef %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(48) %9, i32 noundef %10, ptr noundef %11) local_unnamed_addr #8 align 2 {
bb.a:
  %12 = alloca %"class.btInverseDynamicsBullet3::vec3", align 8 ; 10 uses
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 255)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.7, i32 noundef %1)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false)
  switch i32 %3, label %bb.g [
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 0, label %bb.h
    i32 3, label %bb.h
    i32 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.b = call noundef zeroext i1 @_ZN24btInverseDynamicsBullet312isUnitVectorERKNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %12)
  br i1 %i.b, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @b3OutputWarningMessageVarArgsInternal(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 268)
  %i.c = load float, ptr %12, align 8, !tbaa !73
  %i.d = fpext float %i.c to double
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.g = load <2 x float>, ptr %i.e, align 4, !tbaa !73
  %i.h = fpext <2 x float> %i.g to <2 x double>   ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %i.j = extractelement <2 x double> %i.h, i64 1
  call void (ptr, ...) @b3OutputWarningMessageVarArgsInternal(ptr noundef nonnull @.str.9, double noundef %i.d, double noundef %i.i, double noundef %i.j)
  %i.k = load float, ptr %12, align 8, !tbaa !73  ; 2 uses
  %i.l = call noundef float @powf(float noundef %i.k, float noundef 2.000000e+00) #14
  %i.m = load float, ptr %i.e, align 4, !tbaa !73 ; 2 uses
  %i.n = call noundef float @powf(float noundef %i.m, float noundef 2.000000e+00) #14
  %i.o = fadd float %i.l, %i.n
  %i.p = load float, ptr %i.f, align 8, !tbaa !73 ; 2 uses
  %i.q = call noundef float @powf(float noundef %i.p, float noundef 2.000000e+00) #14
  %i.r = fadd float %i.o, %i.q
  %i.s = call noundef float @sqrtf(float noundef %i.r) #14 ; 3 uses
  %i.t = fcmp uge float %i.s, f0x20000000
  br i1 %i.t, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.u = fdiv float 1.000000e+00, %i.s            ; 3 uses
  %i.v = fmul float %i.k, %i.u
  %i.w = fmul float %i.m, %i.u
  %i.x = fmul float %i.p, %i.u
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.v, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.w, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.x, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %12, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.f, align 8, !tbaa !75
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 274)
  %i.y = fpext float %i.s to double
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.10, double noundef %i.y)
  br label %bb.n

bb.g:                                             ; preds = %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 287)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.11, i32 noundef %3)
  br label %bb.n

bb.h:                                             ; preds = %.thread, %bb.d, %bb.c, %bb.c, %bb.c
  %i.z = fcmp olt float %7, 0.000000e+00
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.aa, align 1, !tbaa !15
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 295)
  %i.ab = fpext float %7 to double
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.12, i32 noundef %1, double noundef %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !16, !range !28, !noundef !32
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = icmp eq i32 %3, 0
  %i.ag = call noundef zeroext i1 @_ZN24btInverseDynamicsBullet320isValidInertiaMatrixERKNS_5mat33Eib(ptr noundef nonnull align 4 dereferenceable(48) %9, i32 noundef %1, i1 noundef zeroext %i.af)
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ah, align 1, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !16, !range !28, !noundef !32
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.al = call noundef zeroext i1 @_ZN24btInverseDynamicsBullet322isValidTransformMatrixERKNS_5mat33E(ptr noundef nonnull align 4 dereferenceable(48) %5)
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !17
  %i.ao = call noundef i32 @_ZN24btInverseDynamicsBullet313MultiBodyTree9InitCache7addBodyEiiNS_9JointTypeERKNS_4vec3ERKNS_5mat33ES5_fS5_S8_iPv(ptr noundef nonnull align 8 dereferenceable(172) %i.an, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(48) %5, ptr noundef nonnull align 4 dereferenceable(16) %12, float noundef %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(48) %9, i32 noundef %10, ptr noundef %11)
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.l, %bb.k, %bb.i, %bb.m, %bb.g
  %.1 = phi i32 [ -1, %bb.g ], [ %i.ao, %bb.m ], [ -1, %bb.k ], [ -1, %bb.i ], [ -1, %bb.f ], [ -1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.b
  %.2 = phi i32 [ -1, %bb.b ], [ %.1, %bb.n ]
  ret i32 %.2
}

declare noundef zeroext i1 @_ZN24btInverseDynamicsBullet312isUnitVectorERKNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #1

declare void @b3OutputWarningMessageVarArgsInternal(ptr noundef, ...) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN24btInverseDynamicsBullet320isValidInertiaMatrixERKNS_5mat33Eib(ptr noundef nonnull align 4 dereferenceable(48), i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN24btInverseDynamicsBullet322isValidTransformMatrixERKNS_5mat33E(ptr noundef nonnull align 4 dereferenceable(48)) local_unnamed_addr #1

declare noundef i32 @_ZN24btInverseDynamicsBullet313MultiBodyTree9InitCache7addBodyEiiNS_9JointTypeERKNS_4vec3ERKNS_5mat33ES5_fS5_S8_iPv(ptr noundef nonnull align 8 dereferenceable(172), i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(16), float noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(48), i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK24btInverseDynamicsBullet313MultiBodyTree14getParentIndexEiPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = tail call noundef i32 @_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl14getParentIndexEiPi(ptr noundef nonnull align 8 dereferenceable(400) %i.b, i32 noundef %1, ptr noundef %2)
  ret i32 %i.c
}

declare noundef i32 @_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl14getParentIndexEiPi(ptr noundef nonnull align 8 dereferenceable(400), i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK24btInverseDynamicsBullet313MultiBodyTree10getUserIntEiPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = tail call noundef i32 @_ZNK24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl10getUserIntEiPi(ptr noundef nonnull align 8 dereferenceable(400) %i.b, i32 noundef %1, ptr noundef %2)
  ret i32 %i.c
}

declare noundef i32 @_ZNK24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl10getUserIntEiPi(ptr noundef nonnull align 8 dereferenceable(400), i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK24btInverseDynamicsBullet313MultiBodyTree10getUserPtrEiPPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = tail call noundef i32 @_ZNK24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl10getUserPtrEiPPv(ptr noundef nonnull align 8 dereferenceable(400) %i.b, i32 noundef %1, ptr noundef %2)
  ret i32 %i.c
}

declare noundef i32 @_ZNK24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl10getUserPtrEiPPv(ptr noundef nonnull align 8 dereferenceable(400), i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN24btInverseDynamicsBullet313MultiBodyTree10setUserIntEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = tail call noundef i32 @_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl10setUserIntEii(ptr noundef nonnull align 8 dereferenceable(400) %i.b, i32 noundef %1, i32 noundef %2)
  ret i32 %i.c
}

declare noundef i32 @_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl10setUserIntEii(ptr noundef nonnull align 8 dereferenceable(400), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN24btInverseDynamicsBullet313MultiBodyTree10setUserPtrEiPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = tail call noundef i32 @_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl10setUserPtrEiPv(ptr noundef nonnull align 8 dereferenceable(400) %i.b, i32 noundef %1, ptr noundef %2)
  ret i32 %i.c
}

declare noundef i32 @_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl10setUserPtrEiPv(ptr noundef nonnull align 8 dereferenceable(400), i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -1, 1) i32 @_ZN24btInverseDynamicsBullet313MultiBodyTree8finalizeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.btInverseDynamicsBullet3::InertiaData", align 4 ; 12 uses
  %2 = alloca %"struct.btInverseDynamicsBullet3::JointData", align 4 ; 15 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !76   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !77   ; 3 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 354)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.13, i32 noundef %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef 400, i32 noundef 16) ; 3 uses
  invoke void @_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImplC1Eii(ptr noundef nonnull align 8 dereferenceable(400) %i.j, i32 noundef %i.f, i32 noundef %i.h)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.m = tail call noundef i32 @_ZN24btInverseDynamicsBullet313MultiBodyTree9InitCache14buildIndexSetsEv(ptr noundef nonnull align 8 dereferenceable(172) %i.l)
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.x, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.j)
          to label %_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpldlEPv.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #13
  unreachable

_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpldlEPv.exit: ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  tail call void @_ZN20b3AlignedObjectArrayIiE13copyFromArrayERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.t, ptr noundef nonnull align 8 dereferenceable(25) %i.u)
  %.not78 = icmp sgt i32 %i.f, 0
  br i1 %.not78, label %.lr.ph, label %.critedge71

.lr.ph:                                           ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 76 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32    ; 6 uses
  %i.aj = call noundef i32 @_ZNK24btInverseDynamicsBullet313MultiBodyTree9InitCache14getInertiaDataEiPNS_11InertiaDataE(ptr noundef nonnull align 8 dereferenceable(172) %i.ah, i32 noundef %i.ai, ptr noundef nonnull %1)
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.am = call noundef i32 @_ZNK24btInverseDynamicsBullet313MultiBodyTree9InitCache12getJointDataEiPNS_9JointDataE(ptr noundef nonnull align 8 dereferenceable(172) %i.al, i32 noundef %i.ai, ptr noundef nonnull %2)
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !55
  %i.ar = getelementptr inbounds nuw [816 x i8], ptr %i.aq, i64 %indvars.iv ; 29 uses
  %i.as = load float, ptr %1, align 4, !tbaa !79  ; 4 uses
  store float %i.as, ptr %i.ar, align 8, !tbaa !83
  %3 = load <2 x float>, ptr %i.v, align 4, !tbaa !73 ; 2 uses
  %4 = insertelement <2 x float> %3, float %i.as, i64 1
  %5 = insertelement <2 x float> %3, float %i.as, i64 0
  %6 = fmul <2 x float> %4, %5
  %i.at = load float, ptr %i.w, align 4, !tbaa !73
  %i.au = fmul float %i.as, %i.at
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.au, i64 0
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store <2 x float> %6, ptr %i.av, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.aw, ptr noundef nonnull align 4 dereferenceable(48) %i.x, i64 16, i1 false), !tbaa.struct !86
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ax, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !86
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ay, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !86
  %i.az = load i32, ptr %2, align 4, !tbaa !87
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 420 ; 4 uses
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !89
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 424 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 4 dereferenceable(16) %i.aa, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.bc, ptr noundef nonnull align 4 dereferenceable(48) %i.ab, i64 16, i1 false), !tbaa.struct !86
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bd, ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !86
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.be, ptr noundef nonnull align 4 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 4 dereferenceable(16) %i.aa, i64 16, i1 false)
  %i.bf = load i32, ptr %2, align 4, !tbaa !87
  store i32 %i.bf, ptr %i.ba, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.bh = call noundef i32 @_ZNK24btInverseDynamicsBullet313MultiBodyTree9InitCache10getUserIntEiPi(ptr noundef nonnull align 8 dereferenceable(172) %i.bg, i32 noundef %i.ai, ptr noundef nonnull %i.a)
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %.critedge73, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !90
  %i.bl = call noundef i32 @_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl10setUserIntEii(ptr noundef nonnull align 8 dereferenceable(400) %i.bj, i32 noundef %i.ai, i32 noundef %i.bk)
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %.critedge73, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.bo = call noundef i32 @_ZNK24btInverseDynamicsBullet313MultiBodyTree9InitCache10getUserPtrEiPPv(ptr noundef nonnull align 8 dereferenceable(172) %i.bn, i32 noundef %i.ai, ptr noundef nonnull %i.b)
  %i.bp = icmp eq i32 %i.bo, -1
  br i1 %i.bp, label %.critedge75, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.bs = call noundef i32 @_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl10setUserPtrEiPv(ptr noundef nonnull align 8 dereferenceable(400) %i.bq, i32 noundef %i.ai, ptr noundef %i.br)
  %i.bt = icmp eq i32 %i.bs, -1
  br i1 %i.bt, label %.critedge75, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = load i32, ptr %i.ba, align 4, !tbaa !89
  switch i32 %i.bu, label %bb.t [
    i32 1, label %bb.o
    i32 2, label %bb.p
    i32 0, label %bb.q
    i32 4, label %bb.r
    i32 3, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  %i.bv = load float, ptr %i.ae, align 4, !tbaa !73
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 488
  store float %i.bv, ptr %i.bw, align 8, !tbaa !73
  %i.bx = load float, ptr %i.af, align 4, !tbaa !73
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 492
  store float %i.bx, ptr %i.by, align 4, !tbaa !73
  %i.bz = load float, ptr %i.ag, align 4, !tbaa !73
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ar, i64 496
  store float %i.bz, ptr %i.ca, align 8, !tbaa !73
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ar, i64 504
  store <2 x float> zeroinitializer, ptr %i.cb, align 8, !tbaa !73
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ar, i64 488
  store <2 x float> zeroinitializer, ptr %i.cc, align 8, !tbaa !73
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ar, i64 496
  store float 0.000000e+00, ptr %i.cd, align 8, !tbaa !73
  %i.ce = load float, ptr %i.ae, align 4, !tbaa !73
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ar, i64 504
  store float %i.ce, ptr %i.cf, align 8, !tbaa !73
  %i.cg = load float, ptr %i.af, align 4, !tbaa !73
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ar, i64 508
  store float %i.cg, ptr %i.ch, align 4, !tbaa !73
  %i.ci = load float, ptr %i.ag, align 4, !tbaa !73
  br label %bb.u

bb.q:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ar, i64 488
  store <2 x float> zeroinitializer, ptr %i.cj, align 8, !tbaa !73
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ar, i64 496
  store float 0.000000e+00, ptr %i.ck, align 8, !tbaa !73
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ar, i64 504
  store <2 x float> zeroinitializer, ptr %i.cl, align 8, !tbaa !73
  br label %bb.u

bb.r:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ar, i64 488
  store <2 x float> zeroinitializer, ptr %i.cm, align 8, !tbaa !73
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ar, i64 496
  store float 0.000000e+00, ptr %i.cn, align 8, !tbaa !73
  %i.co = getelementptr inbounds nuw i8, ptr %i.ar, i64 504
  store <2 x float> zeroinitializer, ptr %i.co, align 8, !tbaa !73
  br label %bb.u

bb.s:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ar, i64 488
  store <2 x float> zeroinitializer, ptr %i.cp, align 8, !tbaa !73
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ar, i64 496
  store float 0.000000e+00, ptr %i.cq, align 8, !tbaa !73
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ar, i64 504
  store <2 x float> zeroinitializer, ptr %i.cr, align 8, !tbaa !73
  br label %bb.u

bb.t:                                             ; preds = %bb.n
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 463)
  %i.cs = load i32, ptr %i.ba, align 4, !tbaa !89
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.14, i32 noundef %i.cs)
  br label %.critedge75

bb.u:                                             ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.sink = phi float [ 0.000000e+00, %bb.o ], [ %i.ci, %bb.p ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ar, i64 512
  store float %.sink, ptr %i.ct, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge71, label %bb.h, !llvm.loop !92

.critedge:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.x

.critedge73:                                      ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.x

.critedge75:                                      ; preds = %bb.l, %bb.m, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.x

.critedge71:                                      ; preds = %bb.u, %bb.g
  %i.cu = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.cv = call noundef i32 @_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl17generateIndexSetsEv(ptr noundef nonnull align 8 dereferenceable(400) %i.cu)
  %i.cw = icmp eq i32 %i.cv, -1
  br i1 %i.cw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.critedge71
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 471)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.15)
  br label %bb.x

bb.w:                                             ; preds = %.critedge71
  %i.cx = load ptr, ptr %i.k, align 8, !tbaa !18
  call void @_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateStaticDataEv(ptr noundef nonnull align 8 dereferenceable(400) %i.cx)
  %i.cy = load ptr, ptr %i.k, align 8, !tbaa !18
  call void @_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl28clearAllUserForcesAndMomentsEv(ptr noundef nonnull align 8 dereferenceable(400) %i.cy)
  store i8 1, ptr %0, align 8, !tbaa !9
  br label %bb.x

bb.x:                                             ; preds = %.critedge, %.critedge73, %.critedge75, %bb.d, %bb.w, %bb.v
  %.5 = phi i32 [ -1, %bb.d ], [ -1, %bb.v ], [ 0, %bb.w ], [ -1, %.critedge75 ], [ -1, %.critedge73 ], [ -1, %.critedge ]
  ret i32 %.5
}

declare void @_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImplC1Eii(ptr noundef nonnull align 8 dereferenceable(400), i32 noundef, i32 noundef) unnamed_addr #1

declare noundef i32 @_ZN24btInverseDynamicsBullet313MultiBodyTree9InitCache14buildIndexSetsEv(ptr noundef nonnull align 8 dereferenceable(172)) local_unnamed_addr #1

declare noundef i32 @_ZNK24btInverseDynamicsBullet313MultiBodyTree9InitCache14getInertiaDataEiPNS_11InertiaDataE(ptr noundef nonnull align 8 dereferenceable(172), i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK24btInverseDynamicsBullet313MultiBodyTree9InitCache12getJointDataEiPNS_9JointDataE(ptr noundef nonnull align 8 dereferenceable(172), i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK24btInverseDynamicsBullet313MultiBodyTree9InitCache10getUserIntEiPi(ptr noundef nonnull align 8 dereferenceable(172), i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK24btInverseDynamicsBullet313MultiBodyTree9InitCache10getUserPtrEiPPv(ptr noundef nonnull align 8 dereferenceable(172), i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl17generateIndexSetsEv(ptr noundef nonnull align 8 dereferenceable(400)) local_unnamed_addr #1

declare void @_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateStaticDataEv(ptr noundef nonnull align 8 dereferenceable(400)) local_unnamed_addr #1

declare void @_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl28clearAllUserForcesAndMomentsEv(ptr noundef nonnull align 8 dereferenceable(400)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN24btInverseDynamicsBullet313MultiBodyTree22setGravityInWorldFrameERKNS_4vec3E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = tail call noundef i32 @_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl22setGravityInWorldFrameERKNS_4vec3E(ptr noundef nonnull align 8 dereferenceable(400) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1)
  ret i32 %i.c
}
end_hunk_0
