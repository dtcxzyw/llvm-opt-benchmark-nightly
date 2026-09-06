Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/channels?download=true
inline.NumInlined: 227
inline.NumDeleted: 124
begin_hunk_0_@_Z30freeAllMemoryIfAnyAllocsFailedI8KrausMapEvRT_:bb.a

.critedge.i.i:                                    ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %_Z21didAnyLocalAllocsFail8KrausMap.exit.thread

_Z21didAnyLocalAllocsFail8KrausMap.exit:          ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.g
  %i.i = call noundef zeroext i1 @_Z11comm_isInitv()
  br i1 %i.i, label %.split, label %bb.h

_Z21didAnyLocalAllocsFail8KrausMap.exit.thread:   ; preds = %bb.g, %.critedge.i.i
  %i.j = call noundef zeroext i1 @_Z11comm_isInitv()
  br i1 %i.j, label %.split, label %.thread

.split:                                           ; preds = %_Z21didAnyLocalAllocsFail8KrausMap.exit.thread, %_Z21didAnyLocalAllocsFail8KrausMap.exit
  %.0.i14 = phi i1 [ false, %_Z21didAnyLocalAllocsFail8KrausMap.exit.thread ], [ true, %_Z21didAnyLocalAllocsFail8KrausMap.exit ]
  %i.k = call noundef zeroext i1 @_Z21comm_isTrueOnAllNodesb(i1 noundef zeroext %.0.i14)
  br i1 %i.k, label %bb.h, label %.thread

bb.h:                                             ; preds = %_Z21didAnyLocalAllocsFail8KrausMap.exit, %.split
  call void @_Z7freeObjR8KrausMap(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br label %.thread

.thread:                                          ; preds = %_Z21didAnyLocalAllocsFail8KrausMap.exit.thread, %.split, %bb.h
  ret void
}

declare void @_Z26validate_newKrausMapAllocs8KrausMapPKc(ptr noundef byval(%struct.KrausMap) align 8, ptr noundef) local_unnamed_addr #3

declare void @_Z21util_setFlagToUnknownPi(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @destroySuperOp(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__.destroySuperOp)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !29
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.32.0.copyload = load ptr, ptr %.sroa.32.0..sroa_idx, align 8, !tbaa !21
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.43.0.copyload = load ptr, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.54.0.copyload = load ptr, ptr %.sroa.54.0..sroa_idx, align 8, !tbaa !30
  tail call void @_Z16cpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.32.0.copyload)
  tail call void @_Z24cpu_deallocMatrixWrapperPPSt7complexIdE(ptr noundef %.sroa.2.0.copyload)
  tail call void @_Z19cpu_deallocHeapFlagPi(ptr noundef %.sroa.54.0.copyload)
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.43.0.copyload)
  br i1 %i.a, label %bb.b, label %_Z11freeSuperOp7SuperOp.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16gpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.43.0.copyload)
  br label %_Z11freeSuperOp7SuperOp.exit

_Z11freeSuperOp7SuperOp.exit:                     ; preds = %bb.a, %bb.b
  ret void
}

declare void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef byval(%struct.SuperOp) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @destroyKrausMap(ptr nofree noundef readonly byval(%struct.KrausMap) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z23validate_krausMapFields8KrausMapPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef nonnull @__func__.destroyKrausMap)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !31
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.33.0.copyload = load i64, ptr %.sroa.33.0..sroa_idx, align 8, !tbaa !32
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.44.0.copyload = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !33
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.66.0.copyload = load ptr, ptr %.sroa.66.0..sroa_idx, align 8, !tbaa !29
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.77.0.copyload = load ptr, ptr %.sroa.77.0..sroa_idx, align 8, !tbaa !21
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.88.0.copyload = load ptr, ptr %.sroa.88.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %.sroa.99.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.99.0.copyload = load ptr, ptr %.sroa.99.0..sroa_idx, align 8, !tbaa !30
  %.sroa.1010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.1010.0.copyload = load ptr, ptr %.sroa.1010.0..sroa_idx, align 8, !tbaa !30
  tail call void @_Z21cpu_deallocMatrixListPPPSt7complexIdExi(ptr noundef %.sroa.44.0.copyload, i64 noundef %.sroa.33.0.copyload, i32 noundef %.sroa.2.0.copyload)
  tail call void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %.sroa.1010.0.copyload)
  tail call void @_Z16cpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.77.0.copyload)
  tail call void @_Z24cpu_deallocMatrixWrapperPPSt7complexIdE(ptr noundef %.sroa.66.0.copyload)
  tail call void @_Z19cpu_deallocHeapFlagPi(ptr noundef %.sroa.99.0.copyload)
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.88.0.copyload)
  br i1 %i.a, label %bb.b, label %_Z12freeKrausMap8KrausMap.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16gpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.88.0.copyload)
  br label %_Z12freeKrausMap8KrausMap.exit

_Z12freeKrausMap8KrausMap.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

declare void @_Z23validate_krausMapFields8KrausMapPKc(ptr noundef byval(%struct.KrausMap) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @syncSuperOp(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__.syncSuperOp)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !21
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.2.0.copyload)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16gpu_copyCpuToGpu7SuperOp(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %.sroa.32.0..sroa_idx, align 8, !tbaa !20
  store i32 1, ptr %i.b, align 4, !tbaa !31
  ret void
}

declare void @_Z16gpu_copyCpuToGpu7SuperOp(ptr noundef byval(%struct.SuperOp) align 8) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @syncKrausMap(ptr nofree noundef readonly byval(%struct.KrausMap) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z23validate_krausMapFields8KrausMapPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef nonnull @__func__.syncKrausMap)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27
  %i.h = load i32, ptr %0, align 8, !tbaa !39
  tail call void @_Z21util_setSuperoperatorPPSt7complexIdEPS2_ii(ptr noundef %i.c, ptr noundef %i.e, i32 noundef %i.g, i32 noundef %i.h)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %i.a, ptr noundef nonnull @__func__.syncSuperOp)
  %i.i = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.3.0.copyload)
  br i1 %i.i, label %bb.b, label %syncSuperOp.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16gpu_copyCpuToGpu7SuperOp(ptr noundef nonnull byval(%struct.SuperOp) align 8 %i.a)
  br label %syncSuperOp.exit

syncSuperOp.exit:                                 ; preds = %bb.a, %bb.b
  store i32 1, ptr %.sroa.4.0.copyload, align 4, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %i.k)
  ret void
}

declare void @_Z21util_setSuperoperatorPPSt7complexIdEPS2_ii(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @setSuperOp(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__.setSuperOp)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  tail call void @_Z33validate_matrixNewElemsPtrNotNullPPSt7complexIdExPKc(ptr noundef %1, i64 noundef %i.b, ptr noundef nonnull @__func__.setSuperOp)
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0.copyload5 = load ptr, ptr %.sroa.4.0..sroa_idx4, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.56.0.copyload = load ptr, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @_Z14cpu_copyMatrixPPSt7complexIdES2_x(ptr noundef %.sroa.4.0.copyload5, ptr noundef %1, i64 noundef %i.b)
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__.syncSuperOp)
  %i.c = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.56.0.copyload)
  br i1 %i.c, label %bb.b, label %_Z22setAndSyncSuperOpElemsIPPSt7complexIdEEv7SuperOpT_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16gpu_copyCpuToGpu7SuperOp(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0)
  br label %_Z22setAndSyncSuperOpElemsIPPSt7complexIdEEv7SuperOpT_.exit

_Z22setAndSyncSuperOpElemsIPPSt7complexIdEEv7SuperOpT_.exit: ; preds = %bb.a, %bb.b
  store i32 1, ptr %.sroa.6.0.copyload, align 4, !tbaa !31
  ret void
}

declare void @_Z33validate_matrixNewElemsPtrNotNullPPSt7complexIdExPKc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z14cpu_copyMatrixPPSt7complexIdES2_x(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z10setSuperOp7SuperOpSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EE(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 7 uses
  %3 = alloca %"class.std::vector", align 8       ; 7 uses
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__.setSuperOp)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !44     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !45

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17
  %.pre = load ptr, ptr %1, align 8, !tbaa !46
  %.pre23 = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.b, %bb.a ], [ %.pre23, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.k = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !47
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.j, ptr %i.i, ptr noundef %i.k)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #18
  br label %common.resume

common.resume:                                    ; preds = %bb.p, %bb.q, %bb.k, %bb.l, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.k ], [ %i.p, %bb.d ], [ %i.p, %bb.e ], [ %i.as, %bb.l ], [ %i.bi, %bb.q ], [ %i.bh, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.l, align 8, !tbaa !43
  invoke void @_Z29validate_superOpNewMatrixDims7SuperOpSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @__func__.setSuperOp)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.q = load ptr, ptr %2, align 8, !tbaa !44     ; 3 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !43   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %i.q, %bb.f ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.y, %i.r
  br i1 %.not.i.i.i3, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.z = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.q, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #18
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.h
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !43  ; 3 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !44    ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i.i5, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %i.aj = icmp ugt i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %.noexc.i.i9, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i6, !prof !45

.noexc.i.i9:                                      ; preds = %bb.i
  call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i6: ; preds = %bb.i
  %i.ak = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #17
  %.pre24 = load ptr, ptr %1, align 8, !tbaa !46
  %.pre25 = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i6, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %i.al = phi ptr [ %i.ae, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %.pre25, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i6 ]
  %i.am = phi ptr [ %i.af, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %.pre24, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i6 ]
  %i.an = phi ptr [ null, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %i.ak, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i6 ] ; 5 uses
  store ptr %i.an, ptr %3, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ai
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !47
  %i.ar = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.am, ptr %i.al, ptr noundef %i.an)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit10 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i7, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ai) #18
  br label %common.resume

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit10: ; preds = %bb.j
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !43
  invoke void @_Z22setAndSyncSuperOpElemsISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEv7SuperOpT_(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit10
  %i.at = load ptr, ptr %3, align 8, !tbaa !44    ; 3 uses
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !43 ; 2 uses
  %.not4.i.i.i11 = icmp eq ptr %i.at, %i.au
  br i1 %.not4.i.i.i11, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i19, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %bb.m, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i15
  %.05.i.i.i13 = phi ptr [ %i.bb, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i15 ], [ %i.at, %bb.m ] ; 3 uses
  %i.av = load ptr, ptr %.05.i.i.i13, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i14 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i14, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i15, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i12
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i13, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !50
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i15

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i15: ; preds = %bb.n, %.lr.ph.i.i.i12
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i13, i64 24 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.bb, %i.au
  br i1 %.not.i.i.i16, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i17, label %.lr.ph.i.i.i12, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i17: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i15
  %.pr.i18 = load ptr, ptr %3, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i19

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i19: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i17, %bb.m
  %i.bc = phi ptr [ %.pr.i18, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i17 ], [ %i.at, %bb.m ] ; 3 uses
  %.not.i.i1.i20 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i20, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit22, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i19
  %i.bd = load ptr, ptr %i.aq, align 8, !tbaa !47
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #18
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit22

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit22: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i19, %bb.o
  ret void

bb.p:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #14
  br label %common.resume

bb.q:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit10
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #14
  br label %common.resume
}

declare void @_Z29validate_superOpNewMatrixDims7SuperOpSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEPKc(ptr noundef byval(%struct.SuperOp) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #18
  br label %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z22setAndSyncSuperOpElemsISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEv7SuperOpT_(ptr noundef byval(%struct.SuperOp) align 8 %0, ptr nofree noundef align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !44     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !45

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #17
  %.pre = load ptr, ptr %1, align 8, !tbaa !46
  %.pre3 = load ptr, ptr %i.c, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ %i.d, %bb.a ], [ %.pre3, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.l = phi ptr [ %i.e, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.m = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !47
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.l, ptr %i.k, ptr noundef %i.m)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.h) #18
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.r, %bb.e ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit: ; preds = %bb.c
  store ptr %i.q, ptr %i.n, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !38
  invoke void @_Z14cpu_copyMatrixPPSt7complexIdESt6vectorIS3_IS0_SaIS0_EESaIS5_EEx(ptr noundef %i.b, ptr nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.t)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.u = load ptr, ptr %2, align 8, !tbaa !44     ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !43   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %i.u, %bb.f ] ; 3 uses
  %i.w = load ptr, ptr %.05.i.i.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.ac, %i.v
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.ad = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.u, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ah) #18
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.h
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__.syncSuperOp)
  %i.ai = call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.3.0.copyload)
  br i1 %i.ai, label %bb.i, label %syncSuperOp.exit

bb.i:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  call void @_Z16gpu_copyCpuToGpu7SuperOp(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0)
  br label %syncSuperOp.exit

syncSuperOp.exit:                                 ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, %bb.i
  store i32 1, ptr %.sroa.4.0.copyload, align 4, !tbaa !31
  ret void

bb.j:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #14
  br label %common.resume
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not16 = icmp eq ptr %0, %1
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.018 = phi ptr [ %i.r, %.loopexit ], [ %2, %bb.a ] ; 6 uses
  %.sroa.09.017 = phi ptr [ %i.q, %.loopexit ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.017, align 8, !tbaa !49 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i, !prof !45

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #16
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17
          to label %.noexc8 unwind label %.loopexit12

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %.018, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !50
  %i.m = load ptr, ptr %.sroa.09.017, align 8, !tbaa !21 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %.noexc8 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.noexc8 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !76
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !73

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc8
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %.noexc8 ], [ %i.p, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.018, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.q, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !74

.loopexit12:                                      ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit12
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit12 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.s = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #14 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EEEvT_S6_(ptr noundef %2, ptr noundef nonnull %.018)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_rethrow() #16
          to label %bb.h unwind label %bb.e

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %.loopexit ]
  ret ptr %.0.lcssa

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.u

bb.g:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #15
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorISt7complexIdESaIS4_EEEEvT_S8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorISt7complexIdESaIS4_EEEEvT_S8_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorISt7complexIdESaIS4_EEEEvT_S8_.exit: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_Z14cpu_copyMatrixPPSt7complexIdESt6vectorIS3_IS0_SaIS0_EESaIS5_EEx(ptr noundef, ptr nofree noundef align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @setKrausMap(ptr nofree noundef readonly byval(%struct.KrausMap) align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z23validate_krausMapFields8KrausMapPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef nonnull @__func__.setKrausMap)
  tail call void @_Z23setAndSyncKrausMapElemsIPPPSt7complexIdEEv8KrausMapT_(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z23setAndSyncKrausMapElemsIPPPSt7complexIdEEv8KrausMapT_(ptr noundef byval(%struct.KrausMap) align 8 %0, ptr noundef %1) local_unnamed_addr #7 comdat {
bb.a:
  %2 = alloca %struct.KrausMap, align 8           ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  tail call void @_Z23validate_krausMapFields8KrausMapPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef nonnull @__func__.syncKrausMap)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !27
  %i.o = load i32, ptr %2, align 8, !tbaa !39
  tail call void @_Z21util_setSuperoperatorPPSt7complexIdEPS2_ii(ptr noundef %i.j, ptr noundef %i.l, i32 noundef %i.n, i32 noundef %i.o)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %i.h, ptr noundef nonnull @__func__.syncSuperOp)
  %i.p = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.3.0.copyload)
  br i1 %i.p, label %bb.b, label %syncKrausMap.exit

bb.b:                                             ; preds = %._crit_edge
  tail call void @_Z16gpu_copyCpuToGpu7SuperOp(ptr noundef nonnull byval(%struct.SuperOp) align 8 %i.h)
  br label %syncKrausMap.exit

syncKrausMap.exit:                                ; preds = %._crit_edge, %bb.b
  store i32 1, ptr %.sroa.4.0.copyload, align 4, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  tail call void @_Z14cpu_copyMatrixPPSt7complexIdES2_x(ptr noundef %i.t, ptr noundef %i.v, i64 noundef %i.g)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !77
}

; Function Attrs: mustprogress uwtable
define void @_Z11setKrausMap8KrausMapSt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EE(ptr nofree noundef readonly byval(%struct.KrausMap) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.9", align 8     ; 9 uses
  %3 = alloca %"class.std::vector.9", align 8     ; 7 uses
  tail call void @_Z23validate_krausMapFields8KrausMapPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef nonnull @__func__.setKrausMap)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !56     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, !prof !45

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17
  %.pre = load ptr, ptr %1, align 8, !tbaa !57
  %.pre32 = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.b, %bb.a ], [ %.pre32, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.k = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ] ; 3 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !58
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES2_IS8_SaIS8_EEEEPS8_ET0_T_SG_SF_(ptr %i.k, ptr %i.j, ptr noundef %i.l)
          to label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !56     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #18
  br label %common.resume

common.resume:                                    ; preds = %bb.r, %bb.s, %bb.l, %bb.m, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.l ], [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ %i.bi, %bb.m ], [ %i.ci, %bb.s ], [ %i.ch, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit: ; preds = %bb.c
  store ptr %i.p, ptr %i.m, align 8, !tbaa !55
  invoke void @_Z30validate_krausMapNewMatrixDims8KrausMapSt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EEPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @__func__.setKrausMap)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !56     ; 3 uses
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !55   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ao, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i ], [ %i.w, %bb.f ] ; 5 uses
  %i.y = load ptr, ptr %.05.i.i.i, align 8, !tbaa !44 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i.i ] ; 3 uses
  %i.ab = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !50
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.aa
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ai = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #18
  br label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i: ; preds = %bb.h, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.ao, %i.x
  br i1 %.not.i.i.i3, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.ap = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.w, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #18
  br label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit

_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.i
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !55  ; 3 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !56    ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 4 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i.i.i5, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit
  %i.az = icmp ugt i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %.noexc.i.i9, label %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i6, !prof !45

.noexc.i.i9:                                      ; preds = %bb.j
  call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i6: ; preds = %bb.j
  %i.ba = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #17
  %.pre33 = load ptr, ptr %1, align 8, !tbaa !57
  %.pre34 = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i6, %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit
  %i.bb = phi ptr [ %i.au, %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit ], [ %.pre34, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i6 ]
  %i.bc = phi ptr [ %i.av, %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit ], [ %.pre33, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i6 ]
  %i.bd = phi ptr [ null, %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit ], [ %i.ba, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i6 ] ; 5 uses
  store ptr %i.bd, ptr %3, align 8, !tbaa !56
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ay
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !58
  %i.bh = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES2_IS8_SaIS8_EEEEPS8_ET0_T_SG_SF_(ptr %i.bc, ptr %i.bb, ptr noundef %i.bd)
          to label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit10 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i7, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.ay) #18
  br label %common.resume

_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit10: ; preds = %bb.k
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !55
  invoke void @_Z23setAndSyncKrausMapElemsISt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EEEv8KrausMapT_(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit10
  %i.bj = load ptr, ptr %3, align 8, !tbaa !56    ; 3 uses
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !55 ; 2 uses
  %.not4.i.i.i11 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not4.i.i.i11, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i28, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %bb.n, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i24
  %.05.i.i.i13 = phi ptr [ %i.cb, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i24 ], [ %i.bj, %bb.n ] ; 5 uses
  %i.bl = load ptr, ptr %.05.i.i.i13, align 8, !tbaa !44 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i13, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !43 ; 2 uses
  %.not4.i.i.i.i.i.i.i14 = icmp eq ptr %i.bl, %i.bn
  br i1 %.not4.i.i.i.i.i.i.i14, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i22, label %.lr.ph.i.i.i.i.i.i.i15

.lr.ph.i.i.i.i.i.i.i15:                           ; preds = %.lr.ph.i.i.i12, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i18
  %.05.i.i.i.i.i.i.i16 = phi ptr [ %i.bu, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i18 ], [ %i.bl, %.lr.ph.i.i.i12 ] ; 3 uses
  %i.bo = load ptr, ptr %.05.i.i.i.i.i.i.i16, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i17 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i17, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i18, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i15
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i16, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !50
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i18

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i18: ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i.i15
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i16, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i19 = icmp eq ptr %i.bu, %i.bn
  br i1 %.not.i.i.i.i.i.i.i19, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i20, label %.lr.ph.i.i.i.i.i.i.i15, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i20: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i18
  %.pr.i.i.i.i.i21 = load ptr, ptr %.05.i.i.i13, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i22

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i22: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i20, %.lr.ph.i.i.i12
  %i.bv = phi ptr [ %.pr.i.i.i.i.i21, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i20 ], [ %i.bl, %.lr.ph.i.i.i12 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i23 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i1.i.i.i.i.i23, label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i24, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i22
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i13, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !47
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #18
  br label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i24

_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i24: ; preds = %bb.p, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i22
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i13, i64 24 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.cb, %i.bk
  br i1 %.not.i.i.i25, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i26, label %.lr.ph.i.i.i12, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i26: ; preds = %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i24
  %.pr.i27 = load ptr, ptr %3, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i28

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i28: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i26, %bb.n
  %i.cc = phi ptr [ %.pr.i27, %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i26 ], [ %i.bj, %bb.n ] ; 3 uses
  %.not.i.i1.i29 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i1.i29, label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit31, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i28
  %i.cd = load ptr, ptr %i.bg, align 8, !tbaa !58
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cg) #18
  br label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit31

_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit31: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i28, %bb.q
  ret void

bb.r:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #14
  br label %common.resume

bb.s:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit10
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #14
  br label %common.resume
}

declare void @_Z30validate_krausMapNewMatrixDims8KrausMapSt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EEPKc(ptr noundef byval(%struct.KrausMap) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.t, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !44 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i.i
  %i.n = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #18
  br label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.u = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #18
  br label %_ZNSt12_Vector_baseISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z23setAndSyncKrausMapElemsISt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EEEv8KrausMapT_(ptr noundef byval(%struct.KrausMap) align 8 %0, ptr nofree noundef align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.KrausMap, align 8           ; 11 uses
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  call void @_Z23validate_krausMapFields8KrausMapPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef nonnull @__func__.syncKrausMap)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27
  %i.q = load i32, ptr %2, align 8, !tbaa !39
  call void @_Z21util_setSuperoperatorPPSt7complexIdEPS2_ii(ptr noundef %i.l, ptr noundef %i.n, i32 noundef %i.p, i32 noundef %i.q)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %i.j, ptr noundef nonnull @__func__.syncSuperOp)
  %i.r = call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.3.0.copyload)
  br i1 %i.r, label %bb.b, label %syncKrausMap.exit

bb.b:                                             ; preds = %._crit_edge
  call void @_Z16gpu_copyCpuToGpu7SuperOp(ptr noundef nonnull byval(%struct.SuperOp) align 8 %i.j)
  br label %syncKrausMap.exit

syncKrausMap.exit:                                ; preds = %._crit_edge, %bb.b
  store i32 1, ptr %.sroa.4.0.copyload, align 4, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  call void @_Z21util_setFlagToUnknownPi(ptr noundef %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = load ptr, ptr %1, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %indvars.iv ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43   ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !44  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp ugt i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !45

.noexc.i.i:                                       ; preds = %bb.d
  call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.af = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #17
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %bb.c
  %i.ag = phi ptr [ null, %bb.c ], [ %i.af, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.ag, ptr %3, align 8, !tbaa !44
  store ptr %i.ag, ptr %i.f, align 8, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  store ptr %i.ah, ptr %i.g, align 8, !tbaa !47
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !46
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !46
  %i.ak = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ai, ptr %i.aj, ptr noundef %i.ag)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %3, align 8, !tbaa !44    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #18
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %bb.g, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %bb.k ], [ %i.al, %bb.g ], [ %i.al, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit: ; preds = %bb.e
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !43
  invoke void @_Z14cpu_copyMatrixPPSt7complexIdESt6vectorIS3_IS0_SaIS0_EESaIS5_EEx(ptr noundef %i.v, ptr nofree noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.i)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.ar = load ptr, ptr %3, align 8, !tbaa !44    ; 3 uses
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !43  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ar, %i.as
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.az, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %i.ar, %bb.h ] ; 3 uses
  %i.at = load ptr, ptr %.05.i.i.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !50
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.az, %i.as
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.h
  %i.ba = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.ar, %bb.h ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.be) #18
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !78

bb.k:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #14
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES2_IS8_SaIS8_EEEEPS8_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not18 = icmp eq ptr %0, %1
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.020 = phi ptr [ %i.x, %bb.e ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.09.019 = phi ptr [ %i.w, %bb.e ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.019, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.019, align 8, !tbaa !44 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.020, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i.i, !prof !45

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #16
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %.020, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.020, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !47
  %i.m = load ptr, ptr %.sroa.09.019, align 8, !tbaa !46
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc8
  %i.p = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.q = load ptr, ptr %.020, align 8, !tbaa !44  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.020, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #18
  br label %.body

bb.e:                                             ; preds = %.noexc8
  store ptr %i.o, ptr %i.j, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.09.019, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.020, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.w, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !79

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.p, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.y = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #14 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvT_S8_(ptr noundef %2, ptr noundef nonnull %.020)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #16
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.x, %bb.e ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.aa

bb.i:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #15
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvT_S8_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EEEEvT_SA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i
  %.05.i = phi ptr [ %i.q, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i ], [ %0, %bb.a ] ; 5 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !44 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i ], [ %i.a, %.lr.ph.i ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %.05.i, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i, %.lr.ph.i
  %i.k = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.a, %.lr.ph.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #18
  br label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i

_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EEEEvT_SA_.exit, label %.lr.ph.i, !llvm.loop !1

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EEEEvT_SA_.exit: ; preds = %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z17setInlineKrausMap8KrausMapiiSt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EE(ptr nofree noundef readonly byval(%struct.KrausMap) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.9", align 8     ; 9 uses
  %5 = alloca %"class.std::vector.9", align 8     ; 7 uses
  tail call void @_Z23validate_krausMapFields8KrausMapPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef nonnull @__func__._Z17setInlineKrausMap8KrausMapiiSt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EE)
  tail call void @_Z40validate_krausMapFieldsMatchPassedParams8KrausMapiiPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @__func__._Z17setInlineKrausMap8KrausMapiiSt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EE)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !56     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.g, align 8
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, !prof !45

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17
  %.pre = load ptr, ptr %3, align 8, !tbaa !57
  %.pre34 = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.b, %bb.a ], [ %.pre34, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.k = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ] ; 3 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !58
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES2_IS8_SaIS8_EEEEPS8_ET0_T_SG_SF_(ptr %i.k, ptr %i.j, ptr noundef %i.l)
          to label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !56     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #18
  br label %common.resume

common.resume:                                    ; preds = %bb.r, %bb.s, %bb.l, %bb.m, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.l ], [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ %i.bi, %bb.m ], [ %i.ci, %bb.s ], [ %i.ch, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit: ; preds = %bb.c
  store ptr %i.p, ptr %i.m, align 8, !tbaa !55
  invoke void @_Z30validate_krausMapNewMatrixDims8KrausMapSt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EEPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull @__func__._Z17setInlineKrausMap8KrausMapiiSt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EE)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit
  %i.w = load ptr, ptr %4, align 8, !tbaa !56     ; 3 uses
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !55   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ao, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i ], [ %i.w, %bb.f ] ; 5 uses
  %i.y = load ptr, ptr %.05.i.i.i, align 8, !tbaa !44 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i.i ] ; 3 uses
  %i.ab = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !50
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.aa
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ai = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #18
  br label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i: ; preds = %bb.h, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ao, %i.x
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.ap = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.w, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #18
  br label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit

_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.i
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !55  ; 3 uses
  %i.av = load ptr, ptr %3, align 8, !tbaa !56    ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 4 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i.i.i7, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit
  %i.az = icmp ugt i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %.noexc.i.i11, label %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i8, !prof !45

.noexc.i.i11:                                     ; preds = %bb.j
  call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i8: ; preds = %bb.j
  %i.ba = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #17
  %.pre35 = load ptr, ptr %3, align 8, !tbaa !57
  %.pre36 = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i8, %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit
  %i.bb = phi ptr [ %i.au, %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit ], [ %.pre36, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i8 ]
  %i.bc = phi ptr [ %i.av, %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit ], [ %.pre35, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i8 ]
  %i.bd = phi ptr [ null, %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit ], [ %i.ba, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i8 ] ; 5 uses
  store ptr %i.bd, ptr %5, align 8, !tbaa !56
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ay
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !58
  %i.bh = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES2_IS8_SaIS8_EEEEPS8_ET0_T_SG_SF_(ptr %i.bc, ptr %i.bb, ptr noundef %i.bd)
          to label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit12 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i9, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.ay) #18
  br label %common.resume

_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit12: ; preds = %bb.k
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !55
  invoke void @_Z23setAndSyncKrausMapElemsISt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EEEv8KrausMapT_(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit12
  %i.bj = load ptr, ptr %5, align 8, !tbaa !56    ; 3 uses
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !55 ; 2 uses
  %.not4.i.i.i13 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not4.i.i.i13, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i30, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %bb.n, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i26
  %.05.i.i.i15 = phi ptr [ %i.cb, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i26 ], [ %i.bj, %bb.n ] ; 5 uses
  %i.bl = load ptr, ptr %.05.i.i.i15, align 8, !tbaa !44 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !43 ; 2 uses
  %.not4.i.i.i.i.i.i.i16 = icmp eq ptr %i.bl, %i.bn
  br i1 %.not4.i.i.i.i.i.i.i16, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i24, label %.lr.ph.i.i.i.i.i.i.i17

.lr.ph.i.i.i.i.i.i.i17:                           ; preds = %.lr.ph.i.i.i14, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i20
  %.05.i.i.i.i.i.i.i18 = phi ptr [ %i.bu, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i20 ], [ %i.bl, %.lr.ph.i.i.i14 ] ; 3 uses
  %i.bo = load ptr, ptr %.05.i.i.i.i.i.i.i18, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i19 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i19, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i20, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i17
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i18, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !50
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i20

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i20: ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i.i17
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i21 = icmp eq ptr %i.bu, %i.bn
  br i1 %.not.i.i.i.i.i.i.i21, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i22, label %.lr.ph.i.i.i.i.i.i.i17, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i22: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i20
  %.pr.i.i.i.i.i23 = load ptr, ptr %.05.i.i.i15, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i24

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i24: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i22, %.lr.ph.i.i.i14
  %i.bv = phi ptr [ %.pr.i.i.i.i.i23, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i22 ], [ %i.bl, %.lr.ph.i.i.i14 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i25 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i1.i.i.i.i.i25, label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i26, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i24
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !47
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #18
  br label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i26

_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i26: ; preds = %bb.p, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i24
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 24 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.cb, %i.bk
  br i1 %.not.i.i.i27, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i28, label %.lr.ph.i.i.i14, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i28: ; preds = %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i26
  %.pr.i29 = load ptr, ptr %5, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i30

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i30: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i28, %bb.n
  %i.cc = phi ptr [ %.pr.i29, %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i28 ], [ %i.bj, %bb.n ] ; 3 uses
  %.not.i.i1.i31 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i1.i31, label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit33, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i30
  %i.cd = load ptr, ptr %i.bg, align 8, !tbaa !58
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cg) #18
  br label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit33

_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit33: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i30, %bb.q
  ret void

bb.r:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #14
  br label %common.resume

bb.s:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit12
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #14
  br label %common.resume
}

declare void @_Z40validate_krausMapFieldsMatchPassedParams8KrausMapiiPKc(ptr noundef byval(%struct.KrausMap) align 8, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z16setInlineSuperOp7SuperOpiSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EE(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 7 uses
  %4 = alloca %"class.std::vector", align 8       ; 7 uses
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__._Z16setInlineSuperOp7SuperOpiSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EE)
  tail call void @_Z39validate_superOpFieldsMatchPassedParams7SuperOpiPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, i32 noundef %1, ptr noundef nonnull @__func__._Z16setInlineSuperOp7SuperOpiSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EE)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !44     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !45

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17
  %.pre = load ptr, ptr %2, align 8, !tbaa !46
  %.pre24 = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.b, %bb.a ], [ %.pre24, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.k = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !47
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.j, ptr %i.i, ptr noundef %i.k)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #18
  br label %common.resume

common.resume:                                    ; preds = %bb.p, %bb.q, %bb.k, %bb.l, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.k ], [ %i.p, %bb.d ], [ %i.p, %bb.e ], [ %i.as, %bb.l ], [ %i.bi, %bb.q ], [ %i.bh, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.l, align 8, !tbaa !43
  invoke void @_Z29validate_superOpNewMatrixDims7SuperOpSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull @__func__._Z16setInlineSuperOp7SuperOpiSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EE)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.q = load ptr, ptr %3, align 8, !tbaa !44     ; 3 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !43   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %i.q, %bb.f ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.y, %i.r
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.z = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.q, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #18
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.h
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !43  ; 3 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !44    ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i.i6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %i.aj = icmp ugt i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %.noexc.i.i10, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i7, !prof !45

.noexc.i.i10:                                     ; preds = %bb.i
  call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i7: ; preds = %bb.i
  %i.ak = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #17
  %.pre25 = load ptr, ptr %2, align 8, !tbaa !46
  %.pre26 = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i7, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %i.al = phi ptr [ %i.ae, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %.pre26, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i7 ]
  %i.am = phi ptr [ %i.af, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %.pre25, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i7 ]
  %i.an = phi ptr [ null, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %i.ak, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i7 ] ; 5 uses
  store ptr %i.an, ptr %4, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ai
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !47
  %i.ar = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.am, ptr %i.al, ptr noundef %i.an)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit11 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i8, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ai) #18
  br label %common.resume

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit11: ; preds = %bb.j
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !43
  invoke void @_Z22setAndSyncSuperOpElemsISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEv7SuperOpT_(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit11
  %i.at = load ptr, ptr %4, align 8, !tbaa !44    ; 3 uses
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !43 ; 2 uses
  %.not4.i.i.i12 = icmp eq ptr %i.at, %i.au
  br i1 %.not4.i.i.i12, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i20, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %bb.m, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i16
  %.05.i.i.i14 = phi ptr [ %i.bb, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i16 ], [ %i.at, %bb.m ] ; 3 uses
  %i.av = load ptr, ptr %.05.i.i.i14, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i15 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i15, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i16, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i13
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i14, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !50
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i16

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i16: ; preds = %bb.n, %.lr.ph.i.i.i13
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i14, i64 24 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.bb, %i.au
  br i1 %.not.i.i.i17, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i18, label %.lr.ph.i.i.i13, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i18: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i16
  %.pr.i19 = load ptr, ptr %4, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i20

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i20: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i18, %bb.m
  %i.bc = phi ptr [ %.pr.i19, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i18 ], [ %i.at, %bb.m ] ; 3 uses
  %.not.i.i1.i21 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i21, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit23, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i20
  %i.bd = load ptr, ptr %i.aq, align 8, !tbaa !47
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #18
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit23

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit23: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i20, %bb.o
  ret void

bb.p:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #14
  br label %common.resume

bb.q:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit11
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #14
  br label %common.resume
}

declare void @_Z39validate_superOpFieldsMatchPassedParams7SuperOpiPKc(ptr noundef byval(%struct.SuperOp) align 8, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z20createInlineKrausMapiiSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EE(ptr dead_on_unwind noalias writable sret(%struct.KrausMap) align 8 %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.9", align 8     ; 9 uses
  %5 = alloca %struct.KrausMap, align 8           ; 2 uses
  %6 = alloca %"class.std::vector.9", align 8     ; 7 uses
  tail call void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__._Z20createInlineKrausMapiiSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EE)
  tail call void @_Z26validate_newKrausMapParamsiiPKc(i32 noundef %1, i32 noundef %2, ptr noundef nonnull @__func__._Z20createInlineKrausMapiiSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EE)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !56     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.g, align 8
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, !prof !45

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17
  %.pre = load ptr, ptr %3, align 8, !tbaa !57
  %.pre38 = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.b, %bb.a ], [ %.pre38, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.k = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ] ; 3 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !58
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES2_IS8_SaIS8_EEEEPS8_ET0_T_SG_SF_(ptr %i.k, ptr %i.j, ptr noundef %i.l)
          to label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !56     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #18
  br label %common.resume

common.resume:                                    ; preds = %bb.r, %bb.s, %bb.l, %bb.m, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.l ], [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ %i.bi, %bb.m ], [ %i.ci, %bb.s ], [ %i.ch, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit: ; preds = %bb.c
  store ptr %i.p, ptr %i.m, align 8, !tbaa !55
  invoke void @_Z43validate_newInlineKrausMapDimMatchesVectorsiiSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEPKc(i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull @__func__._Z20createInlineKrausMapiiSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EE)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit
  %i.w = load ptr, ptr %4, align 8, !tbaa !56     ; 3 uses
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !55   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ao, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i ], [ %i.w, %bb.f ] ; 5 uses
  %i.y = load ptr, ptr %.05.i.i.i, align 8, !tbaa !44 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i.i ] ; 3 uses
  %i.ab = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !50
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.aa
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ai = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #18
  br label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i: ; preds = %bb.h, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.ao, %i.x
  br i1 %.not.i.i.i9, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.ap = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.w, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #18
  br label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit

_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.i
  call void @createKrausMap(ptr dead_on_unwind writable sret(%struct.KrausMap) align 8 %0, i32 noundef %1, i32 noundef %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false), !tbaa.struct !80
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !55  ; 3 uses
  %i.av = load ptr, ptr %3, align 8, !tbaa !56    ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 4 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i.i.i11, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit
  %i.az = icmp ugt i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %.noexc.i.i15, label %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i12, !prof !45

.noexc.i.i15:                                     ; preds = %bb.j
  call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i12: ; preds = %bb.j
  %i.ba = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #17
  %.pre39 = load ptr, ptr %3, align 8, !tbaa !57
  %.pre40 = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i12, %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit
  %i.bb = phi ptr [ %i.au, %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit ], [ %.pre40, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i12 ]
  %i.bc = phi ptr [ %i.av, %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit ], [ %.pre39, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i12 ]
  %i.bd = phi ptr [ null, %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit ], [ %i.ba, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i12 ] ; 5 uses
  store ptr %i.bd, ptr %6, align 8, !tbaa !56
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ay
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !58
  %i.bh = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES2_IS8_SaIS8_EEEEPS8_ET0_T_SG_SF_(ptr %i.bc, ptr %i.bb, ptr noundef %i.bd)
          to label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit16 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i13, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.ay) #18
  br label %common.resume

_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit16: ; preds = %bb.k
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !55
  invoke void @_Z23setAndSyncKrausMapElemsISt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EEEv8KrausMapT_(ptr noundef nonnull byval(%struct.KrausMap) align 8 %5, ptr nofree noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit16
  %i.bj = load ptr, ptr %6, align 8, !tbaa !56    ; 3 uses
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !55 ; 2 uses
  %.not4.i.i.i17 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not4.i.i.i17, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i34, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %bb.n, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i30
  %.05.i.i.i19 = phi ptr [ %i.cb, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i30 ], [ %i.bj, %bb.n ] ; 5 uses
  %i.bl = load ptr, ptr %.05.i.i.i19, align 8, !tbaa !44 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i19, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !43 ; 2 uses
  %.not4.i.i.i.i.i.i.i20 = icmp eq ptr %i.bl, %i.bn
  br i1 %.not4.i.i.i.i.i.i.i20, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i28, label %.lr.ph.i.i.i.i.i.i.i21

.lr.ph.i.i.i.i.i.i.i21:                           ; preds = %.lr.ph.i.i.i18, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i24
  %.05.i.i.i.i.i.i.i22 = phi ptr [ %i.bu, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i24 ], [ %i.bl, %.lr.ph.i.i.i18 ] ; 3 uses
  %i.bo = load ptr, ptr %.05.i.i.i.i.i.i.i22, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i23 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i23, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i24, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i21
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i22, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !50
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i24

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i24: ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i.i21
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i22, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i25 = icmp eq ptr %i.bu, %i.bn
  br i1 %.not.i.i.i.i.i.i.i25, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i26, label %.lr.ph.i.i.i.i.i.i.i21, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i26: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i24
  %.pr.i.i.i.i.i27 = load ptr, ptr %.05.i.i.i19, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i28

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i28: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i26, %.lr.ph.i.i.i18
  %i.bv = phi ptr [ %.pr.i.i.i.i.i27, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i26 ], [ %i.bl, %.lr.ph.i.i.i18 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i29 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i1.i.i.i.i.i29, label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i30, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i28
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i19, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !47
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #18
  br label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i30

_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i30: ; preds = %bb.p, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i28
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i19, i64 24 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.cb, %i.bk
  br i1 %.not.i.i.i31, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i32, label %.lr.ph.i.i.i18, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i32: ; preds = %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i30
  %.pr.i33 = load ptr, ptr %6, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i34

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i34: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i32, %bb.n
  %i.cc = phi ptr [ %.pr.i33, %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i32 ], [ %i.bj, %bb.n ] ; 3 uses
  %.not.i.i1.i35 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i1.i35, label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit37, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i34
  %i.cd = load ptr, ptr %i.bg, align 8, !tbaa !58
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cg) #18
  br label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit37

_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit37: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i34, %bb.q
  ret void

bb.r:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #14
  br label %common.resume

bb.s:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit16
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #14
  br label %common.resume
}

declare void @_Z43validate_newInlineKrausMapDimMatchesVectorsiiSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEPKc(i32 noundef, i32 noundef, ptr nofree noundef align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z19createInlineSuperOpiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE(ptr dead_on_unwind noalias writable sret(%struct.SuperOp) align 8 %0, i32 noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 7 uses
  %4 = alloca %struct.SuperOp, align 8            ; 2 uses
  %5 = alloca %"class.std::vector", align 8       ; 7 uses
  tail call void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__._Z19createInlineSuperOpiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE)
  tail call void @_Z25validate_newSuperOpParamsiPKc(i32 noundef %1, ptr noundef nonnull @__func__._Z19createInlineSuperOpiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !44     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !45

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17
  %.pre = load ptr, ptr %2, align 8, !tbaa !46
  %.pre26 = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.b, %bb.a ], [ %.pre26, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.k = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !47
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.j, ptr %i.i, ptr noundef %i.k)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #18
  br label %common.resume

common.resume:                                    ; preds = %bb.p, %bb.q, %bb.k, %bb.l, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.k ], [ %i.p, %bb.d ], [ %i.p, %bb.e ], [ %i.as, %bb.l ], [ %i.bi, %bb.q ], [ %i.bh, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.l, align 8, !tbaa !43
  invoke void @_Z42validate_newInlineSuperOpDimMatchesVectorsiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEPKc(i32 noundef %1, ptr nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull @__func__._Z19createInlineSuperOpiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.q = load ptr, ptr %3, align 8, !tbaa !44     ; 3 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !43   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %i.q, %bb.f ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.y, %i.r
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.z = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.q, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #18
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.h
  call void @createSuperOp(ptr dead_on_unwind writable sret(%struct.SuperOp) align 8 %0, i32 noundef %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !81
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !43  ; 3 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !44    ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i.i8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %i.aj = icmp ugt i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %.noexc.i.i12, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i9, !prof !45

.noexc.i.i12:                                     ; preds = %bb.i
  call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i9: ; preds = %bb.i
  %i.ak = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #17
  %.pre27 = load ptr, ptr %2, align 8, !tbaa !46
  %.pre28 = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i9, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %i.al = phi ptr [ %i.ae, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %.pre28, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i9 ]
  %i.am = phi ptr [ %i.af, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %.pre27, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i9 ]
  %i.an = phi ptr [ null, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %i.ak, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i9 ] ; 5 uses
  store ptr %i.an, ptr %5, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ai
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !47
  %i.ar = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.am, ptr %i.al, ptr noundef %i.an)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit13 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i10, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ai) #18
  br label %common.resume

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit13: ; preds = %bb.j
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !43
  invoke void @_Z22setAndSyncSuperOpElemsISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEv7SuperOpT_(ptr noundef nonnull byval(%struct.SuperOp) align 8 %4, ptr nofree noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit13
  %i.at = load ptr, ptr %5, align 8, !tbaa !44    ; 3 uses
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !43 ; 2 uses
  %.not4.i.i.i14 = icmp eq ptr %i.at, %i.au
  br i1 %.not4.i.i.i14, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i22, label %.lr.ph.i.i.i15

.lr.ph.i.i.i15:                                   ; preds = %bb.m, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18
  %.05.i.i.i16 = phi ptr [ %i.bb, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18 ], [ %i.at, %bb.m ] ; 3 uses
  %i.av = load ptr, ptr %.05.i.i.i16, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i17 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i17, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i15
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i16, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !50
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18: ; preds = %bb.n, %.lr.ph.i.i.i15
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i16, i64 24 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.bb, %i.au
  br i1 %.not.i.i.i19, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i20, label %.lr.ph.i.i.i15, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i20: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18
  %.pr.i21 = load ptr, ptr %5, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i22

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i22: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i20, %bb.m
  %i.bc = phi ptr [ %.pr.i21, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i20 ], [ %i.at, %bb.m ] ; 3 uses
  %.not.i.i1.i23 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i23, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit25, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i22
  %i.bd = load ptr, ptr %i.aq, align 8, !tbaa !47
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #18
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit25

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit25: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i22, %bb.o
  ret void

bb.p:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #14
  br label %common.resume

bb.q:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit13
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #14
  br label %common.resume
}

declare void @_Z42validate_newInlineSuperOpDimMatchesVectorsiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEPKc(i32 noundef, ptr nofree noundef align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_validateParamsToSetKrausMapFromArr(ptr nofree noundef readonly byval(%struct.KrausMap) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z23validate_krausMapFields8KrausMapPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef nonnull @__func__.setKrausMap)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_validateParamsToSetSuperOpFromArr(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__.setSuperOp)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_validateParamsToSetInlineKrausMap(ptr nofree noundef readonly byval(%struct.KrausMap) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z23validate_krausMapFields8KrausMapPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef nonnull @__func__._Z17setInlineKrausMap8KrausMapiiSt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EE)
  tail call void @_Z40validate_krausMapFieldsMatchPassedParams8KrausMapiiPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @__func__._Z17setInlineKrausMap8KrausMapiiSt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EE)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_validateParamsToSetInlineSuperOp(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__._Z16setInlineSuperOp7SuperOpiSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EE)
  tail call void @_Z39validate_superOpFieldsMatchPassedParams7SuperOpiPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, i32 noundef %1, ptr noundef nonnull @__func__._Z16setInlineSuperOp7SuperOpiSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EE)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_validateParamsToCreateInlineKrausMap(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__._Z20createInlineKrausMapiiSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EE)
  tail call void @_Z26validate_newKrausMapParamsiiPKc(i32 noundef %0, i32 noundef %1, ptr noundef nonnull @__func__._Z20createInlineKrausMapiiSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EE)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_validateParamsToCreateInlineSuperOp(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__._Z19createInlineSuperOpiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE)
  tail call void @_Z25validate_newSuperOpParamsiPKc(i32 noundef %0, ptr noundef nonnull @__func__._Z19createInlineSuperOpiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @reportSuperOp(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__.reportSuperOp)
  tail call void @_Z37validate_numReportedNewlinesAboveZeroPKc(ptr noundef nonnull @__func__.reportSuperOp)
  tail call void @_Z24validate_superOpIsSynced7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__.reportSuperOp)
  %i.b = load i32, ptr %0, align 8, !tbaa !37
  %i.c = tail call noundef i64 @_Z33mem_getLocalSuperOpMemoryRequiredi(i32 noundef %i.b)
  %i.d = add i64 %i.c, 48
  tail call void @_Z12print_header7SuperOpm(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !61
  %i.f = load ptr, ptr @_ZL17defaultMatrIndentB5cxx11, align 8, !tbaa !64 ; 2 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17defaultMatrIndentB5cxx11, i64 8), align 8, !tbaa !65 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.g, ptr %i.a, align 8, !tbaa !66
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !64
  %i.j = load i64, ptr %i.a, align 8, !tbaa !66
  store i64 %i.j, ptr %i.e, align 8, !tbaa !52
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.f, align 1, !tbaa !52
  store i8 %i.l, ptr %i.k, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !65
  %i.o = load ptr, ptr %1, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  invoke void @_Z11print_elems7SuperOpNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e
end_hunk_0
