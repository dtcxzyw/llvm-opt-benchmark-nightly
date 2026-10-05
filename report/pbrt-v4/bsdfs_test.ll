Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/bsdfs_test?download=true
inline.NumInlined: 3152
inline.NumDeleted: 1010
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN27BSDFSampling_TRDielIso_Test8TestBodyEv:bb.a
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN29BSDFSampling_TRDielAniso_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function.16", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEZN29BSDFSampling_TRDielAniso_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataS5_OSA_", ptr %i.b, align 8, !tbaa !149
  store ptr @"_ZNSt17_Function_handlerIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEZN29BSDFSampling_TRDielAniso_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.a, align 8, !tbaa !17
  invoke void @_Z8TestBSDFSt8functionIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEEPKc(ptr nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.38)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30BSDFSampling_TRDielIsoInv_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function.16", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEZN30BSDFSampling_TRDielIsoInv_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataS5_OSA_", ptr %i.b, align 8, !tbaa !149
  store ptr @"_ZNSt17_Function_handlerIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEZN30BSDFSampling_TRDielIsoInv_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.a, align 8, !tbaa !17
  invoke void @_Z8TestBSDFSt8functionIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEEPKc(ptr nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.40)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN32BSDFSampling_TRDielAnisoInv_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function.16", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEZN32BSDFSampling_TRDielAnisoInv_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataS5_OSA_", ptr %i.b, align 8, !tbaa !149
  store ptr @"_ZNSt17_Function_handlerIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEZN32BSDFSampling_TRDielAnisoInv_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.a, align 8, !tbaa !17
  invoke void @_Z8TestBSDFSt8functionIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEEPKc(ptr nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.42)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN48BSDFEnergyConservation_LambertianReflection_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.pbrt::Vector3", align 8     ; 5 uses
  %4 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %5 = alloca %class.anon.68, align 8             ; 8 uses
  %6 = alloca %class.anon.63, align 1             ; 3 uses
  %7 = alloca %"class.pstd::optional", align 16   ; 10 uses
  %8 = alloca %"class.pstd::pmr::polymorphic_allocator", align 8 ; 4 uses
  %9 = alloca %"class.pstd::optional.93", align 4 ; 7 uses
  %10 = alloca %"class.pbrt::SurfaceInteraction", align 8 ; 8 uses
  %11 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %12 = alloca %"class.pbrt::Transform", align 4  ; 4 uses
  %13 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %14 = alloca %"class.pbrt::Transform", align 4  ; 6 uses
  %15 = alloca %"class.std::shared_ptr.20", align 8 ; 6 uses
  %16 = alloca %"class.pbrt::Ray", align 8        ; 10 uses
  %17 = alloca %"class.pstd::optional.25", align 8 ; 14 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %19 = alloca %"class.testing::Message", align 8 ; 8 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.pbrt::SampledSpectrum", align 16 ; 9 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %24 = alloca %"class.testing::Message", align 8 ; 13 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.std::function.16", align 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEZN48BSDFEnergyConservation_LambertianReflection_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataS5_OSA_", ptr %i.g, align 8, !tbaa !149
  store ptr @"_ZNSt17_Function_handlerIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEZN48BSDFEnergyConservation_LambertianReflection_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.f, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  invoke void @_ZN4pbrt7RotateXEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %12, float noundef -9.000000e+01)
          to label %.noexc unwind label %bb.ci

.noexc:                                           ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.i = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #33
          to label %.noexc1 unwind label %bb.ci   ; 6 uses

.noexc1:                                          ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 1, ptr %i.j, align 8, !tbaa !93, !noalias !302
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 1, ptr %i.k, align 4, !tbaa !94, !noalias !302
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN4pbrt9TransformESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.i, align 8, !tbaa !68, !noalias !302
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.l, ptr noundef nonnull align 4 dereferenceable(128) %12, i64 128, i1 false), !tbaa.struct !95, !noalias !302
  store ptr %i.i, ptr %i.h, align 8, !tbaa !98, !alias.scope !302
  store ptr %i.l, ptr %11, align 8, !tbaa !100, !alias.scope !302
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %14, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false), !tbaa.struct !101
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(128) %i.l, i64 64, i1 false), !tbaa.struct !101
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.p = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #33
          to label %bb.b unwind label %bb.e       ; 5 uses

bb.b:                                             ; preds = %.noexc1
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 1, ptr %i.q, align 8, !tbaa !93, !noalias !303
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 1, ptr %i.r, align 4, !tbaa !94, !noalias !303
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN4pbrt9TransformESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.p, align 8, !tbaa !68, !noalias !303
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.s, ptr noundef nonnull align 4 dereferenceable(128) %14, i64 128, i1 false), !tbaa.struct !95, !noalias !303
  store ptr %i.p, ptr %i.o, align 8, !tbaa !98, !alias.scope !303
  store ptr %i.s, ptr %13, align 8, !tbaa !100, !alias.scope !303
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.t = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #33
          to label %.noexc.i unwind label %bb.f   ; 15 uses

.noexc.i:                                         ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 5 uses
  store i32 1, ptr %i.u, align 8, !tbaa !93, !noalias !304
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 2 uses
  store i32 1, ptr %i.v, align 4, !tbaa !94, !noalias !304
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN4pbrt4DiskESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.t, align 8, !tbaa !68, !noalias !304
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  store ptr %i.l, ptr %i.w, align 8, !tbaa !103, !noalias !304
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.s, ptr %i.x, align 8, !tbaa !104, !noalias !304
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i8 0, ptr %i.y, align 8, !tbaa !105, !noalias !304
  %i.z = invoke noundef zeroext i1 @_ZNK4pbrt9Transform15SwapsHandednessEv(ptr noundef nonnull align 4 dereferenceable(128) %i.l)
          to label %bb.c unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4pbrt4DiskESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i.i, !noalias !304

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4pbrt4DiskESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i.i: ; preds = %.noexc.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 56) #35, !noalias !304
  br label %.body.i

bb.c:                                             ; preds = %.noexc.i
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 33
  %i.ad = zext i1 %i.z to i8
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !106, !noalias !304
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float f0x40C90FDB>, ptr %i.ae, align 4, !tbaa !28, !noalias !304
  store ptr %i.t, ptr %i.ab, align 8, !tbaa !98, !alias.scope !304
  store ptr %i.w, ptr %15, align 8, !tbaa !108, !alias.scope !304
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  store <2 x float> <float 1.000000e-01, float 1.000000e+00>, ptr %16, align 8
  %.sroa.27.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  store float 0.000000e+00, ptr %.sroa.27.0..sroa_idx.i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  store <2 x float> <float 0.000000e+00, float -1.000000e+00>, ptr %i.af, align 4
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 24
  store <2 x float> zeroinitializer, ptr %.sroa.23.0..sroa_idx.i.i, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i64 0, ptr %i.ah, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !305
  invoke void @_ZNK4pbrt4Disk14BasicIntersectERKNS_3RayEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.93") align 4 %9, ptr noundef nonnull align 8 dereferenceable(36) %i.w, ptr noundef nonnull align 8 dereferenceable(40) %16, float noundef +inf)
          to label %.noexc90.i unwind label %bb.g

.noexc90.i:                                       ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !112, !range !42, !noalias !305, !noundef !43
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.noexc90.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31, !noalias !305
  %i.al = load <2 x float>, ptr %i.af, align 4, !tbaa !28, !noalias !305
  %i.am = fneg <2 x float> %i.al
  %i.an = load float, ptr %.sroa.23.0..sroa_idx.i.i, align 4, !tbaa !61, !noalias !305
  %i.ao = fneg float %i.an
  %i.ap = load float, ptr %i.ag, align 8, !tbaa !117, !noalias !305
  invoke void @_ZNK4pbrt4Disk27InteractionFromIntersectionERKNS_19QuadricIntersectionENS_7Vector3IfEEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::SurfaceInteraction") align 8 %10, ptr noundef nonnull align 8 dereferenceable(36) %i.w, ptr noundef nonnull align 4 dereferenceable(20) %9, <2 x float> %i.am, float %i.ao, float noundef %i.ap)
          to label %.noexc91.i unwind label %bb.g

.noexc91.i:                                       ; preds = %bb.d
  %i.aq = load i8, ptr %i.ai, align 4, !tbaa !112, !range !42, !noalias !305, !noundef !43
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.i, label %.noexc12.i.i

.noexc12.i.i:                                     ; preds = %.noexc91.i
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 235, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(4) @.str.79) #32
          to label %.noexc92.i unwind label %bb.g

.noexc92.i:                                       ; preds = %.noexc12.i.i
  unreachable

bb.e:                                             ; preds = %.noexc1
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.ce

bb.f:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.g:                                             ; preds = %.noexc12.i.i, %bb.d, %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.h:                                             ; preds = %.noexc90.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %17, i8 0, i64 264, i1 false), !alias.scope !305
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !305
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  store i8 0, ptr %18, align 8, !tbaa !121
  %i.av = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store ptr null, ptr %i.av, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.i unwind label %bb.u

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24)
          to label %bb.j unwind label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %21, align 8, !tbaa !88
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 2, ptr noundef nonnull @.str.21, i32 noundef 531, ptr noundef %i.aw)
          to label %bb.k unwind label %bb.w

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.l unwind label %bb.x

bb.l:                                             ; preds = %bb.k
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #31
  %i.ax = load ptr, ptr %21, align 8, !tbaa !88   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !77
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  %i.bc = load ptr, ptr %19, align 8, !tbaa !125
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %_ZN7testing7MessageD2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bd = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i.i unwind label %bb.p

.noexc.i.i.i:                                     ; preds = %bb.m
  br i1 %i.bd, label %bb.n, label %_ZN7testing7MessageD2Ev.exit.i

bb.n:                                             ; preds = %.noexc.i.i.i
  %i.be = load ptr, ptr %19, align 8, !tbaa !125  ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZN7testing7MessageD2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !68
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(128) %i.be) #31, !inline_history !291
  br label %_ZN7testing7MessageD2Ev.exit.i

bb.p:                                             ; preds = %bb.m
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #34
  unreachable

_ZN7testing7MessageD2Ev.exit.i:                   ; preds = %bb.o, %bb.n, %.noexc.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  %i.bl = load ptr, ptr %i.av, align 8, !tbaa !122
  %.not.i.i.i93.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i93.i, label %_ZN7testing15AssertionResultD2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZN7testing7MessageD2Ev.exit.i
  %i.bm = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i94.i unwind label %bb.t

.noexc.i.i94.i:                                   ; preds = %bb.q
  br i1 %i.bm, label %bb.r, label %_ZN7testing15AssertionResultD2Ev.exit.i

bb.r:                                             ; preds = %.noexc.i.i94.i
  %i.bn = load ptr, ptr %i.av, align 8, !tbaa !122 ; 4 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN7testing15AssertionResultD2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !88 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.s
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !77
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 32) #35
  br label %_ZN7testing15AssertionResultD2Ev.exit.i

bb.t:                                             ; preds = %bb.q
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #34
  unreachable

_ZN7testing15AssertionResultD2Ev.exit.i:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %bb.r, %.noexc.i.i94.i, %_ZN7testing7MessageD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  br label %.loopexit.i

bb.u:                                             ; preds = %bb.h
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.v:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i

bb.w:                                             ; preds = %bb.j
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.k
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #31
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn.i = phi { ptr, i32 } [ %i.bz, %bb.x ], [ %i.by, %bb.w ] ; 2 uses
  %i.ca = load ptr, ptr %21, align 8, !tbaa !88   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.i: ; preds = %bb.y
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !77
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.i, %bb.v
  %.pn.pn.i = phi { ptr, i32 } [ %i.bx, %bb.v ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.i ], [ %.pn.i, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #31
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i, %bb.u
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i ], [ %i.bw, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  br label %bb.cd

_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.i: ; preds = %.noexc91.i
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 208
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !110, !noalias !305
  %i.ck = load float, ptr %9, align 4, !tbaa !127, !noalias !305
  %i.cl = getelementptr inbounds nuw i8, ptr %17, i64 256 ; 2 uses
  store i8 1, ptr %i.cl, align 8, !tbaa !129, !alias.scope !305
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(72) %10, i64 72, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %17, i64 72
  store i64 %i.cj, ptr %i.cm, align 8, !tbaa !110, !alias.scope !305
  %i.cn = getelementptr inbounds nuw i8, ptr %17, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cn, ptr noundef nonnull align 8 dereferenceable(112) %i.ch, i64 112, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %17, i64 192
  %i.cp = load <2 x i64>, ptr %i.cg, align 8, !tbaa !79, !noalias !305
  store <2 x i64> %i.cp, ptr %i.co, align 8, !tbaa !79, !alias.scope !305
  %i.cq = getelementptr inbounds nuw i8, ptr %17, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cq, ptr noundef nonnull align 8 dereferenceable(40) %i.cf, i64 40, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %17, i64 248
  store float %i.ck, ptr %i.cr, align 8, !tbaa !147, !alias.scope !305
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31, !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !305
  %i.cs = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.cs, ptr %8, align 8
  %i.ct = load ptr, ptr %i.f, align 8, !tbaa !17
  %.not.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.i
  invoke void @_ZSt25__throw_bad_function_callv() #32
          to label %.noexc105.i unwind label %bb.ac

.noexc105.i:                                      ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %_ZN4pstd8optionalIN4pbrt17ShapeIntersectionEEptEv.exit.i
  %i.cu = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.cv = invoke noundef ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(248) %17, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZNKSt8functionIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEEclES5_SA_.exit.i unwind label %bb.ac, !inline_history !1 ; 8 uses

_ZNKSt8functionIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEEclES5_SA_.exit.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 3 uses
  %.sroa.238.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 20 ; 3 uses
  %.sroa.228.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 28 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 3 uses
  %.sroa.212.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 40 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %17, i64 40
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.ad:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit159.i, %_ZNKSt8functionIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEEclES5_SA_.exit.i
  %.06376.i = phi i32 [ 0, %_ZNKSt8functionIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEEclES5_SA_.exit.i ], [ %i.mg, %_ZN7testing15AssertionResultD2Ev.exit159.i ]
  %.sroa.033.075.i = phi i64 [ -8846114313915602277, %_ZNKSt8functionIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEEclES5_SA_.exit.i ], [ %.sroa.033.1.i, %_ZN7testing15AssertionResultD2Ev.exit159.i ] ; 2 uses
  %i.dp = mul i64 %.sroa.033.075.i, 6364136223846793005
  %i.dq = add i64 %i.dp, -2720673578348880933     ; 2 uses
  %i.dr = insertelement <2 x i64> poison, i64 %i.dq, i64 0
  %i.ds = insertelement <2 x i64> %i.dr, i64 %.sroa.033.075.i, i64 1 ; 3 uses
  %i.dt = lshr <2 x i64> %i.ds, splat (i64 45)
  %i.du = lshr <2 x i64> %i.ds, splat (i64 27)
  %i.dv = xor <2 x i64> %i.dt, %i.du
  %i.dw = trunc <2 x i64> %i.dv to <2 x i32>      ; 2 uses
  %i.dx = lshr <2 x i64> %i.ds, splat (i64 59)
  %i.dy = trunc nuw nsw <2 x i64> %i.dx to <2 x i32>
  %i.dz = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.dw, <2 x i32> %i.dw, <2 x i32> %i.dy)
  %i.ea = uitofp <2 x i32> %i.dz to <2 x float>
  %i.eb = fmul nnan <2 x float> %i.ea, splat (float f0x2F800000) ; 3 uses
  %i.ec = fcmp olt <2 x float> %i.eb, splat (float f0x3F7FFFFF) ; 2 uses
  %i.ed = extractelement <2 x i1> %i.ec, i64 1
  %i.ee = extractelement <2 x float> %i.eb, i64 1
  %.sroa.speculated.i.i = select i1 %i.ed, float %i.ee, float f0x3F7FFFFF ; 4 uses
  %i.ef = extractelement <2 x i1> %i.ec, i64 0
  %i.eg = extractelement <2 x float> %i.eb, i64 0
  %i.eh = fmul nnan float %.sroa.speculated.i.i, %.sroa.speculated.i.i
  %i.ei = fsub float 1.000000e+00, %i.eh          ; 2 uses
  %i.ej = fcmp ogt float %i.ei, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.ej, float %i.ei, float 0.000000e+00
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i) ; 2 uses
  %i.ek = fmul nnan float %i.eg, f0x40C90FDB
  %i.el = select i1 %i.ef, float %i.ek, float f0x40C90FDA ; 2 uses
  %i.em = call noundef float @cosf(float noundef %i.el) #31
  %i.en = call noundef float @sinf(float noundef %i.el) #31
  %.sroa.037.0.copyload.i.i.i = load <2 x float>, ptr %i.cw, align 4, !tbaa !28
  %.sroa.238.0.copyload.i.i.i = load float, ptr %.sroa.238.0..sroa_idx.i.i.i, align 4, !tbaa !28
  %.sroa.027.0.copyload.i.i.i = load <2 x float>, ptr %i.cx, align 4, !tbaa !28
  %.sroa.228.0.copyload.i.i.i = load float, ptr %.sroa.228.0..sroa_idx.i.i.i, align 4, !tbaa !28
  %.sroa.011.0.copyload.i.i.i = load <2 x float>, ptr %i.cy, align 4, !tbaa !28
  %.sroa.212.0.copyload.i.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i.i, align 4, !tbaa !28
  %i.eo = fmul float %i.em, %sqrt.i.i.i           ; 2 uses
  %i.ep = fmul float %i.en, %sqrt.i.i.i           ; 2 uses
  %i.eq = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = fmul <2 x float> %.sroa.037.0.copyload.i.i.i, %i.er
  %i.et = fmul float %.sroa.238.0.copyload.i.i.i, %i.eo
  %i.eu = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x float> %.sroa.027.0.copyload.i.i.i, %i.ev
  %i.ex = fmul float %.sroa.228.0.copyload.i.i.i, %i.ep
  %i.ey = fadd <2 x float> %i.es, %i.ew
  %i.ez = fadd float %i.et, %i.ex
  %i.fa = insertelement <2 x float> poison, float %.sroa.speculated.i.i, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = fmul <2 x float> %i.fb, %.sroa.011.0.copyload.i.i.i
  %i.fd = fmul float %.sroa.speculated.i.i, %.sroa.212.0.copyload.i.i.i
  %i.fe = fadd <2 x float> %i.fc, %i.ey           ; 5 uses
  %i.ff = fadd float %i.fd, %i.ez                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  %.sroa.033.1.in71.i = mul i64 %i.dq, 6364136223846793005
  %.sroa.033.172.i = add i64 %.sroa.033.1.in71.i, -2720673578348880933
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %i.fg = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fh = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fi = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i, %bb.ad
  %.sroa.033.174.i = phi i64 [ %.sroa.033.172.i, %bb.ad ], [ %.sroa.033.1.i, %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i ] ; 4 uses
  %.06473.i = phi i32 [ 0, %bb.ad ], [ %i.jf, %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i ]
  %i.fj = mul i64 %.sroa.033.174.i, 6364136223846793005
  %i.fk = lshr i64 %.sroa.033.174.i, 45
  %i.fl = lshr i64 %.sroa.033.174.i, 27
  %i.fm = xor i64 %i.fk, %i.fl
  %i.fn = trunc i64 %i.fm to i32                  ; 2 uses
  %i.fo = lshr i64 %.sroa.033.174.i, 59
  %i.fp = trunc nuw nsw i64 %i.fo to i32
  %i.fq = call noundef i32 @llvm.fshr.i32(i32 %i.fn, i32 %i.fn, i32 %i.fp)
  %i.fr = uitofp i32 %i.fq to float
  %i.fs = fmul nnan float %i.fr, f0x2F800000      ; 2 uses
  %i.ft = fcmp olt float %i.fs, f0x3F7FFFFF
  %.sroa.speculated.i109.i = select i1 %i.ft, float %i.fs, float f0x3F7FFFFF
  %i.fu = add i64 %i.fj, -2720673578348880933     ; 2 uses
  %i.fv = mul i64 %i.fu, 6364136223846793005
  %i.fw = add i64 %i.fv, -2720673578348880933     ; 2 uses
  %i.fx = insertelement <2 x i64> poison, i64 %i.fu, i64 0
  %i.fy = insertelement <2 x i64> %i.fx, i64 %i.fw, i64 1 ; 3 uses
  %i.fz = lshr <2 x i64> %i.fy, splat (i64 45)
  %i.ga = lshr <2 x i64> %i.fy, splat (i64 27)
  %i.gb = xor <2 x i64> %i.fz, %i.ga
  %i.gc = trunc <2 x i64> %i.gb to <2 x i32>      ; 2 uses
  %i.gd = lshr <2 x i64> %i.fy, splat (i64 59)
  %i.ge = trunc nuw nsw <2 x i64> %i.gd to <2 x i32>
  %i.gf = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.gc, <2 x i32> %i.gc, <2 x i32> %i.ge)
  %i.gg = uitofp <2 x i32> %i.gf to <2 x float>
  %i.gh = fmul nnan <2 x float> %i.gg, splat (float f0x2F800000) ; 2 uses
  %i.gi = fcmp olt <2 x float> %i.gh, splat (float f0x3F7FFFFF)
  %i.gj = select <2 x i1> %i.gi, <2 x float> %i.gh, <2 x float> splat (float f0x3F7FFFFF)
  %.sroa.021.0.copyload.i.i.i.i = load <2 x float>, ptr %i.cw, align 4, !noalias !306 ; 2 uses
  %.sroa.013.0.copyload.i.i.i.i = load <2 x float>, ptr %i.cx, align 4, !noalias !306 ; 2 uses
  %i.gk = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %.sroa.238.0..sroa_idx.i.i.i, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !noalias !306
  %i.gl = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.gm = fmul <2 x float> %i.fe, %i.gl
  %i.gn = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.go = fmul <2 x float> %i.fh, %i.gn
  %i.gp = fadd <2 x float> %i.gm, %i.go
  %i.gq = shufflevector <4 x float> %i.gk, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.gr = fmul <2 x float> %i.fi, %i.gq
  %i.gs = fadd <2 x float> %i.gr, %i.gp
  %.sroa.05.0.copyload.i.i.i.i = load <2 x float>, ptr %i.cy, align 4, !noalias !306
  %.sroa.26.0.copyload.i.i.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i.i, align 4, !noalias !306
  %i.gt = fmul <2 x float> %i.fe, %.sroa.05.0.copyload.i.i.i.i ; 2 uses
  %shift = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.gt, %shift
  %i.gu = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.gv = fmul float %i.ff, %.sroa.26.0.copyload.i.i.i.i
  %i.gw = fadd float %i.gv, %i.gu                 ; 2 uses
  %i.gx = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gy = fcmp oeq float %i.gw, 0.000000e+00
  br i1 %i.gy, label %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !306
  %i.gz = load i64, ptr %i.cv, align 8, !tbaa !52, !noalias !306 ; 2 uses
  %i.ha = and i64 %i.gz, 144115188075855871
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = lshr i64 %i.gz, 57
  %i.hd = trunc nuw nsw i64 %i.hc to i32
  %i.he = add nsw i32 %i.hd, -1
  %i.hf = invoke noundef i32 @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF5FlagsEvEUlT_E_NS_9BxDFFlagsENS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS3_PKvi(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %i.hb, i32 noundef %i.he)
          to label %.noexc112.i unwind label %bb.ak

.noexc112.i:                                      ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !306
  %i.hg = and i32 %i.hf, 3
  %.not.i.i = icmp eq i32 %i.hg, 0
  br i1 %.not.i.i, label %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %.noexc112.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31, !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !306
  store <2 x float> %i.gx, ptr %3, align 8, !noalias !307
  store float %i.gw, ptr %i.cz, align 8, !noalias !307
  store <2 x float> %i.gj, ptr %4, align 8, !noalias !307
  store float %.sroa.speculated.i109.i, ptr %i.a, align 4, !tbaa !28, !noalias !307
  store i32 0, ptr %i.b, align 4, !tbaa !54, !noalias !307
  store i32 3, ptr %i.c, align 4, !tbaa !56, !noalias !307
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !307
  store ptr %3, ptr %5, align 8, !tbaa !58, !noalias !307
  store ptr %i.a, ptr %i.da, align 8, !tbaa !34, !noalias !307
  store ptr %4, ptr %i.db, align 8, !tbaa !60, !noalias !307
  store ptr %i.b, ptr %i.dc, align 8, !tbaa !24, !noalias !307
  store ptr %i.c, ptr %i.dd, align 8, !tbaa !24, !noalias !307
  %i.hh = load i64, ptr %i.cv, align 8, !tbaa !52, !noalias !308 ; 2 uses
  %i.hi = and i64 %i.hh, 144115188075855871
  %i.hj = inttoptr i64 %i.hi to ptr
  %i.hk = lshr i64 %i.hh, 57
  %i.hl = trunc nuw nsw i64 %i.hk to i32
  %i.hm = add nsw i32 %i.hl, -1
  invoke void @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEEUlT_E_N4pstd8optionalINS_10BSDFSampleEEENS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS9_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %7, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %i.hj, i32 noundef %i.hm)
          to label %.noexc113.i unwind label %bb.ak

.noexc113.i:                                      ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !307
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !306
  %i.hn = load i8, ptr %i.de, align 4, !tbaa !41, !range !42, !noalias !306, !noundef !43
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i.i, label %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i.i: ; preds = %.noexc113.i
  %i.hp = load <4 x float>, ptr %7, align 16, !noalias !306
  %.fr = freeze <4 x float> %i.hp
  %i.hq = fcmp une <4 x float> %.fr, zeroinitializer
  %i.hr = bitcast <4 x i1> %i.hq to i4
  %i.hs = icmp eq i4 %i.hr, 0
  %i.ht = load float, ptr %i.df, align 4, !noalias !306 ; 2 uses
  %i.hu = fcmp oeq float %i.ht, 0.000000e+00
  %or.cond.i.i = select i1 %i.hs, i1 true, i1 %i.hu
  br i1 %or.cond.i.i, label %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.i, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit36.i.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit36.i.i: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i.i
  %i.hv = load float, ptr %i.dg, align 8, !tbaa !61, !noalias !306 ; 4 uses
  %i.hw = fcmp oeq float %i.hv, 0.000000e+00
  br i1 %i.hw, label %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.i, label %bb.ah

_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.i: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit36.i.i, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i.i, %.noexc113.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !306
  br label %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i

bb.ah:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit36.i.i
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.dh, align 16, !noalias !306 ; 4 uses
  %.sroa.037.0.copyload.i.i172.i = load <2 x float>, ptr %i.cw, align 8, !tbaa !28 ; 2 uses
  %.sroa.238.0.copyload.i.i174.i = load float, ptr %.sroa.238.0..sroa_idx.i.i.i, align 8, !tbaa !28
  %.sroa.027.0.copyload.i.i178.i = load <2 x float>, ptr %i.cx, align 4, !tbaa !28 ; 2 uses
  %.sroa.228.0.copyload.i.i180.i = load float, ptr %.sroa.228.0..sroa_idx.i.i.i, align 4, !tbaa !28
  %.sroa.011.0.copyload.i.i183.i = load <2 x float>, ptr %i.cy, align 8, !tbaa !28 ; 2 uses
  %.sroa.212.0.copyload.i.i185.i = load float, ptr %.sroa.212.0..sroa_idx.i.i.i, align 8, !tbaa !28
  %27 = load <4 x float>, ptr %7, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !306
  %i.hx = load i8, ptr %i.cl, align 8, !tbaa !129, !range !42, !noundef !43
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 235, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(4) @.str.79) #32
          to label %.noexc119.i unwind label %bb.al

.noexc119.i:                                      ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %.sroa.041.0.vec.extract.i.i171.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 0
  %i.hz = fmul float %.sroa.041.0.vec.extract.i.i171.i, %.sroa.238.0.copyload.i.i174.i
  %.sroa.041.4.vec.extract.i.i177.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 1 ; 2 uses
  %i.ia = fmul float %.sroa.041.4.vec.extract.i.i177.i, %.sroa.228.0.copyload.i.i180.i
  %i.ib = fadd float %i.hz, %i.ia
  %i.ic = fmul float %i.hv, %.sroa.212.0.copyload.i.i185.i
  %i.id = fadd float %i.ib, %i.ic                 ; 2 uses
  %i.ie = shufflevector <2 x float> %.sroa.037.0.copyload.i.i172.i, <2 x float> %.sroa.027.0.copyload.i.i178.i, <2 x i32> <i32 1, i32 3>
  %i.if = fmul <2 x float> %.sroa.03.0.copyload.i.i, %i.ie ; 2 uses
  %shift33 = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop34 = fadd <2 x float> %i.if, %shift33
  %i.ig = extractelement <2 x float> %foldExtExtBinop34, i64 0
  %.sroa.0.4.vec.extract.i51.i.i187.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i183.i, i64 1
  %i.ih = fmul float %i.hv, %.sroa.0.4.vec.extract.i51.i.i187.i
  %i.ii = fadd float %i.ig, %i.ih
  %foldExtExtBinop36 = fmul <2 x float> %.sroa.03.0.copyload.i.i, %.sroa.037.0.copyload.i.i172.i
  %i.ij = extractelement <2 x float> %foldExtExtBinop36, i64 0
  %.sroa.0.0.vec.extract.i44.i.i181.i = extractelement <2 x float> %.sroa.027.0.copyload.i.i178.i, i64 0
  %i.ik = fmul float %.sroa.041.4.vec.extract.i.i177.i, %.sroa.0.0.vec.extract.i44.i.i181.i
  %i.il = fadd float %i.ij, %i.ik
  %.sroa.0.0.vec.extract.i50.i.i186.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i183.i, i64 0
  %i.im = fmul float %i.hv, %.sroa.0.0.vec.extract.i50.i.i186.i
  %i.in = fadd float %i.il, %i.im
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.di, align 8 ; 2 uses
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %.sroa.01.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1
  %i.io = fmul float %i.id, %.sroa.24.0.copyload.i ; 2 uses
  %i.ip = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i, float %i.ii, float %i.io)
  %i.iq = fneg float %i.io
  %i.ir = call noundef float @llvm.fma.f32(float %.sroa.24.0.copyload.i, float %i.id, float %i.iq)
  %i.is = fadd float %i.ip, %i.ir
  %i.it = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i, float %i.in, float %i.is)
  %i.iu = call noundef float @llvm.fabs.f32(float %i.it)
  %i.iv = insertelement <4 x float> poison, float %i.iu, i64 0
  %i.iw = shufflevector <4 x float> %i.iv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ix = fmul <4 x float> %27, %i.iw
  %i.iy = insertelement <4 x float> poison, float %i.ht, i64 0
  %i.iz = shufflevector <4 x float> %i.iy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ja = fdiv <4 x float> %i.ix, %i.iz
  %i.jb = load <4 x float>, ptr %22, align 16, !tbaa !28
  %i.jc = fadd <4 x float> %i.ja, %i.jb
  store <4 x float> %i.jc, ptr %22, align 16, !tbaa !28
  br label %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i

bb.ak:                                            ; preds = %bb.ag, %bb.af
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.al:                                            ; preds = %bb.ai
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i: ; preds = %bb.aj, %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.i, %.noexc112.i, %bb.ae
  %i.jf = add nuw nsw i32 %.06473.i, 1            ; 2 uses
  %.sroa.033.1.in.i = mul i64 %i.fw, 6364136223846793005
  %.sroa.033.1.i = add i64 %.sroa.033.1.in.i, -2720673578348880933 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.jf, 16384
  br i1 %exitcond.not.i, label %bb.am, label %bb.ae, !llvm.loop !298

bb.am:                                            ; preds = %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i
  %i.jg = load <4 x float>, ptr %22, align 16, !tbaa !28
  %i.jh = fmul <4 x float> %i.jg, splat (float f0x38800000) ; 5 uses
  store <4 x float> %i.jh, ptr %22, align 16, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.ji = extractelement <4 x float> %i.jh, i64 0 ; 2 uses
  %i.jj = extractelement <4 x float> %i.jh, i64 1 ; 2 uses
  %i.jk = fcmp olt float %i.ji, %i.jj
  %.sroa.speculated.i108.i = select i1 %i.jk, float %i.jj, float %i.ji ; 2 uses
  %i.jl = extractelement <4 x float> %i.jh, i64 2 ; 2 uses
  %i.jm = fcmp olt float %.sroa.speculated.i108.i, %i.jl
  %.sroa.speculated.1.i.i = select i1 %i.jm, float %i.jl, float %.sroa.speculated.i108.i ; 2 uses
  %i.jn = extractelement <4 x float> %i.jh, i64 3 ; 2 uses
  %i.jo = fcmp olt float %.sroa.speculated.1.i.i, %i.jn
  %.sroa.speculated.2.i.i = select i1 %i.jo, float %i.jn, float %.sroa.speculated.1.i.i
  store float %.sroa.speculated.2.i.i, ptr %i.d, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store double 1.010000e+00, ptr %i.e, align 8, !tbaa !155
  invoke void @_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %23, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.59, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.jp = load i8, ptr %23, align 8, !tbaa !121, !range !42, !noundef !43
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.bf, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.jr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %bb.bk

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.az

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.ap
  %i.js = load ptr, ptr %24, align 8, !tbaa !125
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jt, ptr noundef nonnull @.str.45, i64 noundef 20)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.ba ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.jv = load ptr, ptr %24, align 8, !tbaa !125
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jw, ptr noundef nonnull @.str.82, i64 noundef 7)
          to label %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit.i unwind label %bb.ba ; 0 uses

_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit.i:      ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.jy = load ptr, ptr %24, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZNK4pbrt15SampledSpectrum8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(16) %22)
          to label %.noexc136.i unwind label %bb.ba

.noexc136.i:                                      ; preds = %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.ka = load ptr, ptr %2, align 8, !tbaa !88
  %i.kb = load i64, ptr %i.dj, align 8, !tbaa !87
  %i.kc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jz, ptr noundef %i.ka, i64 noundef %i.kb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i unwind label %bb.aq ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i: ; preds = %.noexc136.i
  %i.kd = load ptr, ptr %2, align 8, !tbaa !88    ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.dk
  br i1 %i.ke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i
  %i.kf = load i64, ptr %i.dk, align 8, !tbaa !77
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kg) #35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.aq:                                            ; preds = %.noexc136.i
  %i.kh = landingpad { ptr, i32 }
          cleanup
  %i.ki = load ptr, ptr %2, align 8, !tbaa !88    ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.dk
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i: ; preds = %bb.aq
  %i.kk = load i64, ptr %i.dk, align 8, !tbaa !77
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %.body137.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.km = load ptr, ptr %24, align 8, !tbaa !125
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ko = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kn, ptr noundef nonnull @.str.83, i64 noundef 7)
          to label %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit140.i unwind label %bb.ba ; 0 uses

_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit140.i:   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.kp = load ptr, ptr %24, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.kq = extractelement <2 x float> %i.fe, i64 0
  %i.kr = extractelement <2 x float> %i.fe, i64 1
  invoke void @_ZN4pbrt8internal9ToString3IfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, float noundef %i.kq, float noundef %i.kr, float noundef %i.ff)
          to label %.noexc147.i unwind label %bb.ba

.noexc147.i:                                      ; preds = %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit140.i
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kt = load ptr, ptr %1, align 8, !tbaa !88
  %i.ku = load i64, ptr %i.dl, align 8, !tbaa !87
  %i.kv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ks, ptr noundef %i.kt, i64 noundef %i.ku)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i144.i unwind label %bb.ar ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i144.i: ; preds = %.noexc147.i
  %i.kw = load ptr, ptr %1, align 8, !tbaa !88    ; 2 uses
  %i.kx = icmp eq ptr %i.kw, %i.dm
  br i1 %i.kx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i146.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i145.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i145.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i144.i
  %i.ky = load i64, ptr %i.dm, align 8, !tbaa !77
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.kz) #35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i146.i

bb.ar:                                            ; preds = %.noexc147.i
  %i.la = landingpad { ptr, i32 }
          cleanup
  %i.lb = load ptr, ptr %1, align 8, !tbaa !88    ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.dm
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i142.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i141.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i141.i: ; preds = %bb.ar
  %i.ld = load i64, ptr %i.dm, align 8, !tbaa !77
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.le) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i142.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i142.i: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i141.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %.body137.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i146.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i144.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i145.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  %i.lf = load ptr, ptr %i.dn, align 8, !tbaa !122 ; 2 uses
  %.not.i.i150.i = icmp eq ptr %i.lf, null
  br i1 %.not.i.i150.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i146.i
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !88
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i

_ZNK7testing15AssertionResult15failure_messageEv.exit.i: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i146.i
  %i.lh = phi ptr [ %i.lg, %bb.as ], [ @.str.20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i146.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef 550, ptr noundef %i.lh)
          to label %bb.at unwind label %bb.bb

bb.at:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.au unwind label %bb.bc

bb.au:                                            ; preds = %bb.at
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  %i.li = load ptr, ptr %24, align 8, !tbaa !125
  %.not.i.i.i151.i = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i151.i, label %_ZN7testing7MessageD2Ev.exit153.i, label %bb.av

bb.av:                                            ; preds = %bb.au
end_hunk_0
begin_hunk_1_@_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_:bb.a
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA12_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(12) @.str.92)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA6_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(6) @.str.93)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA12_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(12) @.str.94)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIfdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.r

_ZN7testing8internal33FormatForComparisonFailureMessageIfdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.h
  %i.l = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIfdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsIA5_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 1 dereferenceable(5) @.str.95)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  invoke void @_ZN7testing13PrintToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIdfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.t

_ZN7testing8internal33FormatForComparisonFailureMessageIdfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.j
  %i.n = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.k unwind label %bb.u

bb.k:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIdfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  invoke void @_ZN7testing15AssertionResultC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.o = load ptr, ptr %7, align 8, !tbaa !88     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.r = load i64, ptr %i.p, align 8, !tbaa !77
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.t = load ptr, ptr %6, align 8, !tbaa !88     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !77
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !122
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.aa = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.p

.noexc.i.i:                                       ; preds = %bb.m
  br i1 %i.aa, label %bb.n, label %_ZN7testing15AssertionResultD2Ev.exit

bb.n:                                             ; preds = %.noexc.i.i
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !122 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !88 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !77
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 32) #35
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #34
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %.noexc.i.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.x

bb.q:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.s:                                             ; preds = %bb.i, %_ZN7testing8internal33FormatForComparisonFailureMessageIfdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.u:                                             ; preds = %bb.k, %_ZN7testing8internal33FormatForComparisonFailureMessageIdfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !88    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.u
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !77
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.t
  %.pn = phi { ptr, i32 } [ %i.an, %bb.t ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.ao, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.am, %bb.s ] ; 2 uses
  %i.au = load ptr, ptr %6, align 8, !tbaa !88    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.v
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !77
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.al, %bb.r ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.ak, %bb.q ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN29Hair_SamplingConsistency_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.pbrt::SampledWavelengths", align 4 ; 7 uses
  %2 = alloca %"class.pbrt::SampledSpectrum", align 16 ; 5 uses
  %3 = alloca %"class.pbrt::SampledSpectrum", align 16 ; 7 uses
  %4 = alloca %"class.pbrt::SampledSpectrum", align 16 ; 8 uses
  %5 = alloca %"class.pbrt::HairBxDF", align 4    ; 5 uses
  %6 = alloca %"class.pstd::optional", align 16   ; 6 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_ZN4pbrt18SampledWavelengths13SampleVisibleEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::SampledWavelengths") align 4 %1, float noundef 5.000000e-01)
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 44
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %.0196 = phi float [ 2.000000e-01, %bb.a ], [ %i.g, %bb.c ] ; 2 uses
  %.sroa.0173.0195 = phi i64 [ -8846114313915602277, %bb.a ], [ %.sroa.0173.2, %bb.c ]
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void

bb.c:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.e = fpext float %.0196 to double
  %i.f = fadd double %i.e, 2.000000e-01           ; 2 uses
  %i.g = fptrunc double %i.f to float
  %i.h = fcmp olt double %i.f, f0x3FEFFFFFF0000000
  br i1 %i.h, label %.preheader, label %bb.b, !llvm.loop !327

bb.d:                                             ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit
  %.040194 = phi float [ 4.000000e-01, %.preheader ], [ %i.ew, %_ZN7testing15AssertionResultD2Ev.exit ] ; 2 uses
  %.sroa.0173.1193 = phi i64 [ %.sroa.0173.0195, %.preheader ], [ %.sroa.0173.2, %_ZN7testing15AssertionResultD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store <4 x float> splat (float 2.500000e-01), ptr %2, align 16, !tbaa !28
  %i.i = mul i64 %.sroa.0173.1193, 6364136223846793005
  %i.j = add i64 %i.i, -2720673578348880933       ; 2 uses
  %i.k = insertelement <2 x i64> poison, i64 %i.j, i64 0
  %i.l = insertelement <2 x i64> %i.k, i64 %.sroa.0173.1193, i64 1 ; 3 uses
  %i.m = lshr <2 x i64> %i.l, splat (i64 45)
  %i.n = lshr <2 x i64> %i.l, splat (i64 27)
  %i.o = xor <2 x i64> %i.m, %i.n
  %i.p = trunc <2 x i64> %i.o to <2 x i32>        ; 2 uses
  %i.q = lshr <2 x i64> %i.l, splat (i64 59)
  %i.r = trunc nuw nsw <2 x i64> %i.q to <2 x i32>
  %i.s = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.p, <2 x i32> %i.p, <2 x i32> %i.r)
  %i.t = uitofp <2 x i32> %i.s to <2 x float>
  %i.u = fmul nnan <2 x float> %i.t, splat (float f0x2F800000) ; 3 uses
  %i.v = fcmp olt <2 x float> %i.u, splat (float f0x3F7FFFFF) ; 2 uses
  %i.w = extractelement <2 x i1> %i.v, i64 1
  %i.x = extractelement <2 x float> %i.u, i64 1
  %i.y = extractelement <2 x i1> %i.v, i64 0
  %i.z = extractelement <2 x float> %i.u, i64 0
  %i.aa = fmul nnan float %i.x, 2.000000e+00
  %i.ab = fsub float 1.000000e+00, %i.aa
  %i.ac = select i1 %i.w, float %i.ab, float f0xBF7FFFFE ; 4 uses
  %i.ad = fmul float %i.ac, %i.ac
  %i.ae = fsub float 1.000000e+00, %i.ad          ; 2 uses
  %i.af = fcmp ogt float %i.ae, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.af, float %i.ae, float 0.000000e+00
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 2 uses
  %i.ag = fmul nnan float %i.z, f0x40C90FDB
  %i.ah = select i1 %i.y, float %i.ag, float f0x40C90FDA ; 2 uses
  %i.ai = call noundef float @cosf(float noundef %i.ah) #31
  %i.aj = fmul float %sqrt.i.i, %i.ai
  %i.ak = call noundef float @sinf(float noundef %i.ah) #31
  %i.al = fmul float %sqrt.i.i, %i.ak
  %.sroa.06.0.vec.insert.i = insertelement <2 x float> poison, float %i.aj, i64 0
  %.sroa.06.4.vec.insert.i = insertelement <2 x float> %.sroa.06.0.vec.insert.i, float %i.al, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %.sroa.0173.2.in189 = mul i64 %i.j, 6364136223846793005
  %.sroa.0173.2190 = add i64 %.sroa.0173.2.in189, -2720673578348880933
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.am = call noundef float @_ZNK4pbrt15SampledSpectrum1yERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(32) %1)
  %i.an = call noundef float @_ZNK4pbrt15SampledSpectrum1yERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(32) %1)
  %i.ao = fsub float %i.am, %i.an
  %i.ap = call noundef float @llvm.fabs.f32(float %i.ao)
  %i.aq = call noundef float @_ZNK4pbrt15SampledSpectrum1yERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(32) %1)
  %i.ar = fdiv float %i.ap, %i.aq
  store float %i.ar, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store double 5.000000e-02, ptr %i.b, align 8, !tbaa !155
  call void @_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.as = load i8, ptr %7, align 8, !tbaa !121, !range !42, !noundef !43
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.w, label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.h
  %.sroa.0173.2192 = phi i64 [ %.sroa.0173.2190, %bb.d ], [ %.sroa.0173.2, %bb.h ] ; 2 uses
  %.041191 = phi i32 [ 0, %bb.d ], [ %i.dt, %bb.h ]
  %i.au = mul i64 %.sroa.0173.2192, 6364136223846793005
  %i.av = add i64 %i.au, -2720673578348880933     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.aw = mul i64 %i.av, 6364136223846793005
  %i.ax = insertelement <2 x i64> poison, i64 %i.av, i64 0
  %i.ay = insertelement <2 x i64> %i.ax, i64 %.sroa.0173.2192, i64 1 ; 3 uses
  %i.az = lshr <2 x i64> %i.ay, splat (i64 45)
  %i.ba = lshr <2 x i64> %i.ay, splat (i64 27)
  %i.bb = xor <2 x i64> %i.az, %i.ba
  %i.bc = trunc <2 x i64> %i.bb to <2 x i32>      ; 2 uses
  %i.bd = lshr <2 x i64> %i.ay, splat (i64 59)
  %i.be = trunc nuw nsw <2 x i64> %i.bd to <2 x i32>
  %i.bf = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.bc, <2 x i32> %i.bc, <2 x i32> %i.be)
  %i.bg = uitofp <2 x i32> %i.bf to <2 x float>
  %i.bh = fmul nnan <2 x float> %i.bg, splat (float f0x2F800000) ; 2 uses
  %i.bi = fcmp olt <2 x float> %i.bh, splat (float f0x3F7FFFFF)
  %i.bj = select <2 x i1> %i.bi, <2 x float> %i.bh, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 1
  %i.bl = fmul nnan float %i.bk, 2.000000e+00
  %i.bm = fadd float %i.bl, -1.000000e+00
  call void @_ZN4pbrt8HairBxDFC1EffRKNS_15SampledSpectrumEfff(ptr noundef nonnull align 4 dereferenceable(76) %5, float noundef %i.bm, float noundef 1.550000e+00, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %.0196, float noundef %.040194, float noundef 0.000000e+00)
  %i.bn = add i64 %i.aw, -2720673578348880933     ; 2 uses
  %i.bo = mul i64 %i.bn, 6364136223846793005
  %i.bp = add i64 %i.bo, -2720673578348880933     ; 2 uses
  %i.bq = insertelement <2 x i64> poison, i64 %i.bn, i64 0
  %i.br = insertelement <2 x i64> %i.bq, i64 %i.bp, i64 1 ; 3 uses
  %i.bs = lshr <2 x i64> %i.br, splat (i64 45)
  %i.bt = lshr <2 x i64> %i.br, splat (i64 27)
  %i.bu = xor <2 x i64> %i.bs, %i.bt
  %i.bv = trunc <2 x i64> %i.bu to <2 x i32>      ; 2 uses
  %i.bw = lshr <2 x i64> %i.br, splat (i64 59)
  %i.bx = trunc nuw nsw <2 x i64> %i.bw to <2 x i32>
  %i.by = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.bv, <2 x i32> %i.bv, <2 x i32> %i.bx)
  %i.bz = uitofp <2 x i32> %i.by to <2 x float>
  %i.ca = fmul nnan <2 x float> %i.bz, splat (float f0x2F800000) ; 2 uses
  %i.cb = fcmp olt <2 x float> %i.ca, splat (float f0x3F7FFFFF)
  %i.cc = select <2 x i1> %i.cb, <2 x float> %i.ca, <2 x float> splat (float f0x3F7FFFFF) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.cd = extractelement <2 x float> %i.bj, i64 0
  call void @_ZNK4pbrt8HairBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %6, ptr noundef nonnull align 4 dereferenceable(76) %5, <2 x float> %.sroa.06.4.vec.insert.i, float %i.ac, float noundef %i.cd, <2 x float> %i.cc, i32 noundef 0, i32 noundef 3)
  %i.ce = load i8, ptr %i.c, align 4, !tbaa !41, !range !42, !noundef !43
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %10 = load <4 x float>, ptr %6, align 16
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !28 ; 3 uses
  %i.cg = insertelement <2 x float> %.sroa.8.0.copyload.i, float 6.553600e+04, i64 1
  %i.ch = fmul <2 x float> %.sroa.8.0.copyload.i, %i.cg ; 2 uses
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cj = fmul <4 x float> %i.ci, %10
  %i.ck = extractelement <2 x float> %.sroa.8.0.copyload.i, i64 0
  %i.cl = call noundef float @llvm.fabs.f32(float %i.ck)
  %i.cm = insertelement <4 x float> poison, float %i.cl, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = fmul <4 x float> %i.cj, %i.cn
  %i.cp = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cq = fdiv <4 x float> %i.co, %i.cp
  %i.cr = load <4 x float>, ptr %3, align 16, !tbaa !28
  %i.cs = fadd <4 x float> %i.cr, %i.cq
  store <4 x float> %i.cs, ptr %3, align 16, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ct = extractelement <2 x float> %i.cc, i64 0
  %i.cu = fmul nnan float %i.ct, 2.000000e+00
  %i.cv = fsub float 1.000000e+00, %i.cu          ; 4 uses
  %i.cw = fmul float %i.cv, %i.cv                 ; 2 uses
  %i.cx = fsub float 1.000000e+00, %i.cw          ; 2 uses
  %i.cy = fcmp ogt float %i.cx, 0.000000e+00
  %.sroa.speculated.i.i97 = select i1 %i.cy, float %i.cx, float 0.000000e+00
  %sqrt.i.i98 = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i97) ; 2 uses
  %i.cz = extractelement <2 x float> %i.cc, i64 1
  %i.da = fmul nnan float %i.cz, f0x40C90FDB      ; 2 uses
  %i.db = call noundef float @cosf(float noundef %i.da) #31
  %i.dc = fmul float %sqrt.i.i98, %i.db
  %i.dd = call noundef float @sinf(float noundef %i.da) #31
  %i.de = fmul float %sqrt.i.i98, %i.dd
  %.sroa.06.0.vec.insert.i100 = insertelement <2 x float> poison, float %i.dc, i64 0
  %.sroa.06.4.vec.insert.i101 = insertelement <2 x float> %.sroa.06.0.vec.insert.i100, float %i.de, i64 1
  %i.df = call { <2 x float>, <2 x float> } @_ZNK4pbrt8HairBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE(ptr noundef nonnull align 4 dereferenceable(76) %5, <2 x float> %.sroa.06.4.vec.insert.i, float %i.ac, <2 x float> %.sroa.06.4.vec.insert.i101, float %i.cv, i32 noundef 0) ; 2 uses
  %i.dg = extractvalue { <2 x float>, <2 x float> } %i.df, 0
  %i.dh = extractvalue { <2 x float>, <2 x float> } %i.df, 1
  %i.di = call noundef float @llvm.fabs.f32(float %i.cv)
  %i.dj = insertelement <4 x float> poison, float %i.cw, i64 0
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dl = shufflevector <2 x float> %i.dg, <2 x float> %i.dh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dm = fmul <4 x float> %i.dk, %i.dl
  %i.dn = insertelement <4 x float> poison, float %i.di, i64 0
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dp = fmul <4 x float> %i.do, %i.dm
  %i.dq = fdiv <4 x float> %i.dp, splat (float f0x45A2F983)
  %i.dr = load <4 x float>, ptr %4, align 16, !tbaa !28
  %i.ds = fadd <4 x float> %i.dr, %i.dq
  store <4 x float> %i.ds, ptr %4, align 16, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.dt = add nuw nsw i32 %.041191, 1             ; 2 uses
  %.sroa.0173.2.in = mul i64 %i.bp, 6364136223846793005
  %.sroa.0173.2 = add i64 %.sroa.0173.2.in, -2720673578348880933 ; 3 uses
  %exitcond.not = icmp eq i32 %i.dt, 65536
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !328

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.du = load ptr, ptr %i.d, align 8, !tbaa !122 ; 2 uses
  %.not.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !88
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.k, %bb.j
  %i.dw = phi ptr [ %i.dv, %bb.k ], [ @.str.20, %bb.j ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef 818, ptr noundef %i.dw)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.dx = load ptr, ptr %8, align 8, !tbaa !125
  %.not.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dy = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.q

.noexc.i.i:                                       ; preds = %bb.n
  br i1 %i.dy, label %bb.o, label %_ZN7testing7MessageD2Ev.exit

bb.o:                                             ; preds = %.noexc.i.i
  %i.dz = load ptr, ptr %8, align 8, !tbaa !125   ; 3 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %_ZN7testing7MessageD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eb = load ptr, ptr %i.dz, align 8, !tbaa !68
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(128) %i.dz) #31, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #34
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.m, %.noexc.i.i, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.w

bb.r:                                             ; preds = %bb.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.l
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #31
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ei, %bb.t ], [ %i.eh, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #31
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.eg, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %.pn.pn

bb.w:                                             ; preds = %bb.e, %_ZN7testing7MessageD2Ev.exit
  %i.ej = load ptr, ptr %i.d, align 8, !tbaa !122
  %.not.i.i.i147 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i147, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ek = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i148 unwind label %bb.aa

.noexc.i.i148:                                    ; preds = %bb.x
  br i1 %i.ek, label %bb.y, label %_ZN7testing15AssertionResultD2Ev.exit

bb.y:                                             ; preds = %.noexc.i.i148
  %i.el = load ptr, ptr %i.d, align 8, !tbaa !122 ; 4 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !88 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !77
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef 32) #35
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.aa:                                            ; preds = %bb.x
  %i.es = landingpad { ptr, i32 }
          catch ptr null
  %i.et = extractvalue { ptr, i32 } %i.es, 0
  call void @__clang_call_terminate(ptr %i.et) #34
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.w, %.noexc.i.i148, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.eu = fpext float %.040194 to double
  %i.ev = fadd double %i.eu, 2.000000e-01         ; 2 uses
  %i.ew = fptrunc double %i.ev to float
  %i.ex = fcmp olt double %i.ev, f0x3FEFFFFFF0000000
  br i1 %i.ex, label %bb.d, label %bb.c, !llvm.loop !329
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_1
