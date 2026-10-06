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
  %.sroa.2.0..sroa_idx.i.i.i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 40
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.ad:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit159.i, %_ZNKSt8functionIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEEclES5_SA_.exit.i
  %.06376.i = phi i32 [ 0, %_ZNKSt8functionIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEEclES5_SA_.exit.i ], [ %i.mf, %_ZN7testing15AssertionResultD2Ev.exit159.i ]
  %.sroa.033.075.i = phi i64 [ -8846114313915602277, %_ZNKSt8functionIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEEclES5_SA_.exit.i ], [ %.sroa.033.1.i, %_ZN7testing15AssertionResultD2Ev.exit159.i ] ; 2 uses
  %i.do = mul i64 %.sroa.033.075.i, 6364136223846793005
  %i.dp = add i64 %i.do, -2720673578348880933     ; 2 uses
  %i.dq = insertelement <2 x i64> poison, i64 %i.dp, i64 0
  %i.dr = insertelement <2 x i64> %i.dq, i64 %.sroa.033.075.i, i64 1 ; 3 uses
  %i.ds = lshr <2 x i64> %i.dr, splat (i64 45)
  %i.dt = lshr <2 x i64> %i.dr, splat (i64 27)
  %i.du = xor <2 x i64> %i.ds, %i.dt
  %i.dv = trunc <2 x i64> %i.du to <2 x i32>      ; 2 uses
  %i.dw = lshr <2 x i64> %i.dr, splat (i64 59)
  %i.dx = trunc nuw nsw <2 x i64> %i.dw to <2 x i32>
  %i.dy = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.dv, <2 x i32> %i.dv, <2 x i32> %i.dx)
  %i.dz = uitofp <2 x i32> %i.dy to <2 x float>
  %i.ea = fmul nnan <2 x float> %i.dz, splat (float f0x2F800000) ; 3 uses
  %i.eb = fcmp olt <2 x float> %i.ea, splat (float f0x3F7FFFFF) ; 2 uses
  %i.ec = extractelement <2 x i1> %i.eb, i64 1
  %i.ed = extractelement <2 x float> %i.ea, i64 1
  %.sroa.speculated.i.i = select i1 %i.ec, float %i.ed, float f0x3F7FFFFF ; 4 uses
  %i.ee = extractelement <2 x i1> %i.eb, i64 0
  %i.ef = extractelement <2 x float> %i.ea, i64 0
  %i.eg = fmul nnan float %.sroa.speculated.i.i, %.sroa.speculated.i.i
  %i.eh = fsub float 1.000000e+00, %i.eg          ; 2 uses
  %i.ei = fcmp ogt float %i.eh, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.ei, float %i.eh, float 0.000000e+00
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i) ; 2 uses
  %i.ej = fmul nnan float %i.ef, f0x40C90FDB
  %i.ek = select i1 %i.ee, float %i.ej, float f0x40C90FDA ; 2 uses
  %i.el = call noundef float @cosf(float noundef %i.ek) #31
  %i.em = call noundef float @sinf(float noundef %i.ek) #31
  %.sroa.037.0.copyload.i.i.i = load <2 x float>, ptr %i.cw, align 4, !tbaa !28
  %.sroa.238.0.copyload.i.i.i = load float, ptr %.sroa.238.0..sroa_idx.i.i.i, align 4, !tbaa !28
  %.sroa.027.0.copyload.i.i.i = load <2 x float>, ptr %i.cx, align 4, !tbaa !28
  %.sroa.228.0.copyload.i.i.i = load float, ptr %.sroa.228.0..sroa_idx.i.i.i, align 4, !tbaa !28
  %.sroa.011.0.copyload.i.i.i = load <2 x float>, ptr %i.cy, align 4, !tbaa !28
  %.sroa.212.0.copyload.i.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i.i, align 4, !tbaa !28
  %i.en = fmul float %i.el, %sqrt.i.i.i           ; 2 uses
  %i.eo = fmul float %i.em, %sqrt.i.i.i           ; 2 uses
  %i.ep = insertelement <2 x float> poison, float %i.en, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x float> %.sroa.037.0.copyload.i.i.i, %i.eq
  %i.es = fmul float %.sroa.238.0.copyload.i.i.i, %i.en
  %i.et = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x float> %.sroa.027.0.copyload.i.i.i, %i.eu
  %i.ew = fmul float %.sroa.228.0.copyload.i.i.i, %i.eo
  %i.ex = fadd <2 x float> %i.er, %i.ev
  %i.ey = fadd float %i.es, %i.ew
  %i.ez = insertelement <2 x float> poison, float %.sroa.speculated.i.i, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x float> %i.fa, %.sroa.011.0.copyload.i.i.i
  %i.fc = fmul float %.sroa.speculated.i.i, %.sroa.212.0.copyload.i.i.i
  %i.fd = fadd <2 x float> %i.fb, %i.ex           ; 5 uses
  %i.fe = fadd float %i.fc, %i.ey                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  %.sroa.033.1.in71.i = mul i64 %i.dp, 6364136223846793005
  %.sroa.033.172.i = add i64 %.sroa.033.1.in71.i, -2720673578348880933
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %i.ff = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.fg = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fh = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i, %bb.ad
  %.sroa.033.174.i = phi i64 [ %.sroa.033.172.i, %bb.ad ], [ %.sroa.033.1.i, %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i ] ; 4 uses
  %.06473.i = phi i32 [ 0, %bb.ad ], [ %i.je, %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i ]
  %i.fi = mul i64 %.sroa.033.174.i, 6364136223846793005
  %i.fj = lshr i64 %.sroa.033.174.i, 45
  %i.fk = lshr i64 %.sroa.033.174.i, 27
  %i.fl = xor i64 %i.fj, %i.fk
  %i.fm = trunc i64 %i.fl to i32                  ; 2 uses
  %i.fn = lshr i64 %.sroa.033.174.i, 59
  %i.fo = trunc nuw nsw i64 %i.fn to i32
  %i.fp = call noundef i32 @llvm.fshr.i32(i32 %i.fm, i32 %i.fm, i32 %i.fo)
  %i.fq = uitofp i32 %i.fp to float
  %i.fr = fmul nnan float %i.fq, f0x2F800000      ; 2 uses
  %i.fs = fcmp olt float %i.fr, f0x3F7FFFFF
  %.sroa.speculated.i109.i = select i1 %i.fs, float %i.fr, float f0x3F7FFFFF
  %i.ft = add i64 %i.fi, -2720673578348880933     ; 2 uses
  %i.fu = mul i64 %i.ft, 6364136223846793005
  %i.fv = add i64 %i.fu, -2720673578348880933     ; 2 uses
  %i.fw = insertelement <2 x i64> poison, i64 %i.ft, i64 0
  %i.fx = insertelement <2 x i64> %i.fw, i64 %i.fv, i64 1 ; 3 uses
  %i.fy = lshr <2 x i64> %i.fx, splat (i64 45)
  %i.fz = lshr <2 x i64> %i.fx, splat (i64 27)
  %i.ga = xor <2 x i64> %i.fy, %i.fz
  %i.gb = trunc <2 x i64> %i.ga to <2 x i32>      ; 2 uses
  %i.gc = lshr <2 x i64> %i.fx, splat (i64 59)
  %i.gd = trunc nuw nsw <2 x i64> %i.gc to <2 x i32>
  %i.ge = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.gb, <2 x i32> %i.gb, <2 x i32> %i.gd)
  %i.gf = uitofp <2 x i32> %i.ge to <2 x float>
  %i.gg = fmul nnan <2 x float> %i.gf, splat (float f0x2F800000) ; 2 uses
  %i.gh = fcmp olt <2 x float> %i.gg, splat (float f0x3F7FFFFF)
  %i.gi = select <2 x i1> %i.gh, <2 x float> %i.gg, <2 x float> splat (float f0x3F7FFFFF)
  %.sroa.021.0.copyload.i.i.i.i = load <2 x float>, ptr %i.cw, align 4, !noalias !306 ; 2 uses
  %.sroa.013.0.copyload.i.i.i.i = load <2 x float>, ptr %i.cx, align 4, !noalias !306 ; 2 uses
  %i.gj = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %.sroa.238.0..sroa_idx.i.i.i, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !noalias !306
  %i.gk = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i.i, <2 x float> %.sroa.021.0.copyload.i.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.gl = fmul <2 x float> %i.fd, %i.gk
  %i.gm = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i.i, <2 x float> %.sroa.013.0.copyload.i.i.i.i, <2 x i32> <i32 3, i32 0>
  %i.gn = fmul <2 x float> %i.fg, %i.gm
  %i.go = fadd <2 x float> %i.gl, %i.gn
  %i.gp = shufflevector <4 x float> %i.gj, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.gq = fmul <2 x float> %i.fh, %i.gp
  %i.gr = fadd <2 x float> %i.gq, %i.go
  %.sroa.05.0.copyload.i.i.i.i = load <2 x float>, ptr %i.cy, align 4, !noalias !306
  %.sroa.26.0.copyload.i.i.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i.i, align 4, !noalias !306
  %i.gs = fmul <2 x float> %i.fd, %.sroa.05.0.copyload.i.i.i.i ; 2 uses
  %shift = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.gs, %shift
  %i.gt = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.gu = fmul float %i.fe, %.sroa.26.0.copyload.i.i.i.i
  %i.gv = fadd float %i.gu, %i.gt                 ; 2 uses
  %i.gw = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gx = fcmp oeq float %i.gv, 0.000000e+00
  br i1 %i.gx, label %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !306
  %i.gy = load i64, ptr %i.cv, align 8, !tbaa !52, !noalias !306 ; 2 uses
  %i.gz = and i64 %i.gy, 144115188075855871
  %i.ha = inttoptr i64 %i.gz to ptr
  %i.hb = lshr i64 %i.gy, 57
  %i.hc = trunc nuw nsw i64 %i.hb to i32
  %i.hd = add nsw i32 %i.hc, -1
  %i.he = invoke noundef i32 @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF5FlagsEvEUlT_E_NS_9BxDFFlagsENS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS3_PKvi(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %i.ha, i32 noundef %i.hd)
          to label %.noexc112.i unwind label %bb.ak

.noexc112.i:                                      ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !306
  %i.hf = and i32 %i.he, 3
  %.not.i.i = icmp eq i32 %i.hf, 0
  br i1 %.not.i.i, label %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %.noexc112.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31, !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !306
  store <2 x float> %i.gw, ptr %3, align 8, !noalias !307
  store float %i.gv, ptr %.sroa.2.0..sroa_idx.i.i.i.a, align 8, !noalias !307
  store <2 x float> %i.gi, ptr %4, align 8, !noalias !307
  store float %.sroa.speculated.i109.i, ptr %i.a, align 4, !tbaa !28, !noalias !307
  store i32 0, ptr %i.b, align 4, !tbaa !54, !noalias !307
  store i32 3, ptr %i.c, align 4, !tbaa !56, !noalias !307
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !307
  store ptr %3, ptr %5, align 8, !tbaa !58, !noalias !307
  store ptr %i.a, ptr %i.cz, align 8, !tbaa !34, !noalias !307
  store ptr %4, ptr %i.da, align 8, !tbaa !60, !noalias !307
  store ptr %i.b, ptr %i.db, align 8, !tbaa !24, !noalias !307
  store ptr %i.c, ptr %i.dc, align 8, !tbaa !24, !noalias !307
  %i.hg = load i64, ptr %i.cv, align 8, !tbaa !52, !noalias !308 ; 2 uses
  %i.hh = and i64 %i.hg, 144115188075855871
  %i.hi = inttoptr i64 %i.hh to ptr
  %i.hj = lshr i64 %i.hg, 57
  %i.hk = trunc nuw nsw i64 %i.hj to i32
  %i.hl = add nsw i32 %i.hk, -1
  invoke void @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEEUlT_E_N4pstd8optionalINS_10BSDFSampleEEENS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS9_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %7, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %i.hi, i32 noundef %i.hl)
          to label %.noexc113.i unwind label %bb.ak

.noexc113.i:                                      ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !307
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !306
  %i.hm = load i8, ptr %i.dd, align 4, !tbaa !41, !range !42, !noalias !306, !noundef !43
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i.i, label %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i.i: ; preds = %.noexc113.i
  %i.ho = load <4 x float>, ptr %7, align 16, !noalias !306
  %.fr = freeze <4 x float> %i.ho
  %i.hp = fcmp une <4 x float> %.fr, zeroinitializer
  %i.hq = bitcast <4 x i1> %i.hp to i4
  %i.hr = icmp eq i4 %i.hq, 0
  %i.hs = load float, ptr %i.de, align 4, !noalias !306 ; 2 uses
  %i.ht = fcmp oeq float %i.hs, 0.000000e+00
  %or.cond.i.i = select i1 %i.hr, i1 true, i1 %i.ht
  br i1 %or.cond.i.i, label %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.i, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit36.i.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit36.i.i: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i.i
  %i.hu = load float, ptr %i.df, align 8, !tbaa !61, !noalias !306 ; 4 uses
  %i.hv = fcmp oeq float %i.hu, 0.000000e+00
  br i1 %i.hv, label %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.i, label %bb.ah

_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.i: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit36.i.i, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i.i, %.noexc113.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !306
  br label %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i

bb.ah:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit36.i.i
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.dg, align 16, !noalias !306 ; 4 uses
  %.sroa.037.0.copyload.i.i172.i = load <2 x float>, ptr %i.cw, align 8, !tbaa !28 ; 2 uses
  %.sroa.238.0.copyload.i.i174.i = load float, ptr %.sroa.238.0..sroa_idx.i.i.i, align 8, !tbaa !28
  %.sroa.027.0.copyload.i.i178.i = load <2 x float>, ptr %i.cx, align 4, !tbaa !28 ; 2 uses
  %.sroa.228.0.copyload.i.i180.i = load float, ptr %.sroa.228.0..sroa_idx.i.i.i, align 4, !tbaa !28
  %.sroa.011.0.copyload.i.i183.i = load <2 x float>, ptr %i.cy, align 8, !tbaa !28 ; 2 uses
  %.sroa.212.0.copyload.i.i185.i = load float, ptr %.sroa.212.0..sroa_idx.i.i.i, align 8, !tbaa !28
  %27 = load <4 x float>, ptr %7, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !306
  %i.hw = load i8, ptr %i.cl, align 8, !tbaa !129, !range !42, !noundef !43
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 235, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(4) @.str.79) #32
          to label %.noexc119.i unwind label %bb.al

.noexc119.i:                                      ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %.sroa.041.0.vec.extract.i.i171.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 0
  %i.hy = fmul float %.sroa.041.0.vec.extract.i.i171.i, %.sroa.238.0.copyload.i.i174.i
  %.sroa.041.4.vec.extract.i.i177.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 1 ; 2 uses
  %i.hz = fmul float %.sroa.041.4.vec.extract.i.i177.i, %.sroa.228.0.copyload.i.i180.i
  %i.ia = fadd float %i.hy, %i.hz
  %i.ib = fmul float %i.hu, %.sroa.212.0.copyload.i.i185.i
  %i.ic = fadd float %i.ia, %i.ib                 ; 2 uses
  %i.id = shufflevector <2 x float> %.sroa.037.0.copyload.i.i172.i, <2 x float> %.sroa.027.0.copyload.i.i178.i, <2 x i32> <i32 1, i32 3>
  %i.ie = fmul <2 x float> %.sroa.03.0.copyload.i.i, %i.id ; 2 uses
  %shift33 = shufflevector <2 x float> %i.ie, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop34 = fadd <2 x float> %i.ie, %shift33
  %i.if = extractelement <2 x float> %foldExtExtBinop34, i64 0
  %.sroa.0.4.vec.extract.i51.i.i187.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i183.i, i64 1
  %i.ig = fmul float %i.hu, %.sroa.0.4.vec.extract.i51.i.i187.i
  %i.ih = fadd float %i.if, %i.ig
  %foldExtExtBinop36 = fmul <2 x float> %.sroa.03.0.copyload.i.i, %.sroa.037.0.copyload.i.i172.i
  %i.ii = extractelement <2 x float> %foldExtExtBinop36, i64 0
  %.sroa.0.0.vec.extract.i44.i.i181.i = extractelement <2 x float> %.sroa.027.0.copyload.i.i178.i, i64 0
  %i.ij = fmul float %.sroa.041.4.vec.extract.i.i177.i, %.sroa.0.0.vec.extract.i44.i.i181.i
  %i.ik = fadd float %i.ii, %i.ij
  %.sroa.0.0.vec.extract.i50.i.i186.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i183.i, i64 0
  %i.il = fmul float %i.hu, %.sroa.0.0.vec.extract.i50.i.i186.i
  %i.im = fadd float %i.ik, %i.il
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.dh, align 8 ; 2 uses
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.01.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %.sroa.01.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1
  %i.in = fmul float %i.ic, %.sroa.24.0.copyload.i ; 2 uses
  %i.io = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i, float %i.ih, float %i.in)
  %i.ip = fneg float %i.in
  %i.iq = call noundef float @llvm.fma.f32(float %.sroa.24.0.copyload.i, float %i.ic, float %i.ip)
  %i.ir = fadd float %i.io, %i.iq
  %i.is = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i, float %i.im, float %i.ir)
  %i.it = call noundef float @llvm.fabs.f32(float %i.is)
  %i.iu = insertelement <4 x float> poison, float %i.it, i64 0
  %i.iv = shufflevector <4 x float> %i.iu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iw = fmul <4 x float> %27, %i.iv
  %i.ix = insertelement <4 x float> poison, float %i.hs, i64 0
  %i.iy = shufflevector <4 x float> %i.ix, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iz = fdiv <4 x float> %i.iw, %i.iy
  %i.ja = load <4 x float>, ptr %22, align 16, !tbaa !28
  %i.jb = fadd <4 x float> %i.iz, %i.ja
  store <4 x float> %i.jb, ptr %22, align 16, !tbaa !28
  br label %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i

bb.ak:                                            ; preds = %bb.ag, %bb.af
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.al:                                            ; preds = %bb.ai
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i: ; preds = %bb.aj, %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.i, %.noexc112.i, %bb.ae
  %i.je = add nuw nsw i32 %.06473.i, 1            ; 2 uses
  %.sroa.033.1.in.i = mul i64 %i.fv, 6364136223846793005
  %.sroa.033.1.i = add i64 %.sroa.033.1.in.i, -2720673578348880933 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.je, 16384
  br i1 %exitcond.not.i, label %bb.am, label %bb.ae, !llvm.loop !298

bb.am:                                            ; preds = %_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i
  %i.jf = load <4 x float>, ptr %22, align 16, !tbaa !28
  %i.jg = fmul <4 x float> %i.jf, splat (float f0x38800000) ; 5 uses
  store <4 x float> %i.jg, ptr %22, align 16, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.jh = extractelement <4 x float> %i.jg, i64 0 ; 2 uses
  %i.ji = extractelement <4 x float> %i.jg, i64 1 ; 2 uses
  %i.jj = fcmp olt float %i.jh, %i.ji
  %.sroa.speculated.i108.i = select i1 %i.jj, float %i.ji, float %i.jh ; 2 uses
  %i.jk = extractelement <4 x float> %i.jg, i64 2 ; 2 uses
  %i.jl = fcmp olt float %.sroa.speculated.i108.i, %i.jk
  %.sroa.speculated.1.i.i = select i1 %i.jl, float %i.jk, float %.sroa.speculated.i108.i ; 2 uses
  %i.jm = extractelement <4 x float> %i.jg, i64 3 ; 2 uses
  %i.jn = fcmp olt float %.sroa.speculated.1.i.i, %i.jm
  %.sroa.speculated.2.i.i = select i1 %i.jn, float %i.jm, float %.sroa.speculated.1.i.i
  store float %.sroa.speculated.2.i.i, ptr %i.d, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store double 1.010000e+00, ptr %i.e, align 8, !tbaa !155
  invoke void @_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %23, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.59, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.jo = load i8, ptr %23, align 8, !tbaa !121, !range !42, !noundef !43
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %bb.bf, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %bb.bk

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.az

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %bb.ap
  %i.jr = load ptr, ptr %24, align 8, !tbaa !125
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.js, ptr noundef nonnull @.str.45, i64 noundef 20)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.ba ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.ju = load ptr, ptr %24, align 8, !tbaa !125
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jv, ptr noundef nonnull @.str.82, i64 noundef 7)
          to label %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit.i unwind label %bb.ba ; 0 uses

_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit.i:      ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.jx = load ptr, ptr %24, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZNK4pbrt15SampledSpectrum8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(16) %22)
          to label %.noexc136.i unwind label %bb.ba

.noexc136.i:                                      ; preds = %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %2, align 8, !tbaa !88
  %i.ka = load i64, ptr %i.di, align 8, !tbaa !87
  %i.kb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jy, ptr noundef %i.jz, i64 noundef %i.ka)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i unwind label %bb.aq ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i: ; preds = %.noexc136.i
  %i.kc = load ptr, ptr %2, align 8, !tbaa !88    ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.dj
  br i1 %i.kd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i
  %i.ke = load i64, ptr %i.dj, align 8, !tbaa !77
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.aq:                                            ; preds = %.noexc136.i
  %i.kg = landingpad { ptr, i32 }
          cleanup
  %i.kh = load ptr, ptr %2, align 8, !tbaa !88    ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.dj
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i: ; preds = %bb.aq
  %i.kj = load i64, ptr %i.dj, align 8, !tbaa !77
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %.body137.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.kl = load ptr, ptr %24, align 8, !tbaa !125
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.km, ptr noundef nonnull @.str.83, i64 noundef 7)
          to label %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit140.i unwind label %bb.ba ; 0 uses

_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit140.i:   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ko = load ptr, ptr %24, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.kp = extractelement <2 x float> %i.fd, i64 0
  %i.kq = extractelement <2 x float> %i.fd, i64 1
  invoke void @_ZN4pbrt8internal9ToString3IfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_S8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, float noundef %i.kp, float noundef %i.kq, float noundef %i.fe)
          to label %.noexc147.i unwind label %bb.ba

.noexc147.i:                                      ; preds = %_ZN7testing7MessagelsIA8_cEERS0_RKT_.exit140.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.ks = load ptr, ptr %1, align 8, !tbaa !88
  %i.kt = load i64, ptr %i.dk, align 8, !tbaa !87
  %i.ku = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kr, ptr noundef %i.ks, i64 noundef %i.kt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i144.i unwind label %bb.ar ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i144.i: ; preds = %.noexc147.i
  %i.kv = load ptr, ptr %1, align 8, !tbaa !88    ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %i.dl
  br i1 %i.kw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i146.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i145.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i145.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i144.i
  %i.kx = load i64, ptr %i.dl, align 8, !tbaa !77
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.ky) #35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i146.i

bb.ar:                                            ; preds = %.noexc147.i
  %i.kz = landingpad { ptr, i32 }
          cleanup
  %i.la = load ptr, ptr %1, align 8, !tbaa !88    ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.dl
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i142.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i141.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i141.i: ; preds = %bb.ar
  %i.lc = load i64, ptr %i.dl, align 8, !tbaa !77
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i142.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i142.i: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i141.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %.body137.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i146.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i144.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i145.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  %i.le = load ptr, ptr %i.dm, align 8, !tbaa !122 ; 2 uses
  %.not.i.i150.i = icmp eq ptr %i.le, null
  br i1 %.not.i.i150.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i146.i
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !88
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i

_ZNK7testing15AssertionResult15failure_messageEv.exit.i: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i146.i
  %i.lg = phi ptr [ %i.lf, %bb.as ], [ @.str.20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i146.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef 550, ptr noundef %i.lg)
          to label %bb.at unwind label %bb.bb

bb.at:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.au unwind label %bb.bc

bb.au:                                            ; preds = %bb.at
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  %i.lh = load ptr, ptr %24, align 8, !tbaa !125
  %.not.i.i.i151.i = icmp eq ptr %i.lh, null
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
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %.0196 = phi float [ 2.000000e-01, %bb.a ], [ %i.h, %bb.c ] ; 2 uses
  %.sroa.0173.0195 = phi i64 [ -8846114313915602277, %bb.a ], [ %.sroa.0173.2, %bb.c ]
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void

bb.c:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.f = fpext float %.0196 to double
  %i.g = fadd double %i.f, 2.000000e-01           ; 2 uses
  %i.h = fptrunc double %i.g to float
  %i.i = fcmp olt double %i.g, f0x3FEFFFFFF0000000
  br i1 %i.i, label %.preheader, label %bb.b, !llvm.loop !327

bb.d:                                             ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit
  %.040194 = phi float [ 4.000000e-01, %.preheader ], [ %i.ey, %_ZN7testing15AssertionResultD2Ev.exit ] ; 2 uses
  %.sroa.0173.1193 = phi i64 [ %.sroa.0173.0195, %.preheader ], [ %.sroa.0173.2, %_ZN7testing15AssertionResultD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store <4 x float> splat (float 2.500000e-01), ptr %2, align 16, !tbaa !28
  %i.j = mul i64 %.sroa.0173.1193, 6364136223846793005
  %i.k = add i64 %i.j, -2720673578348880933       ; 2 uses
  %i.l = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %i.m = insertelement <2 x i64> %i.l, i64 %.sroa.0173.1193, i64 1 ; 3 uses
  %i.n = lshr <2 x i64> %i.m, splat (i64 45)
  %i.o = lshr <2 x i64> %i.m, splat (i64 27)
  %i.p = xor <2 x i64> %i.n, %i.o
  %i.q = trunc <2 x i64> %i.p to <2 x i32>        ; 2 uses
  %i.r = lshr <2 x i64> %i.m, splat (i64 59)
  %i.s = trunc nuw nsw <2 x i64> %i.r to <2 x i32>
  %i.t = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.q, <2 x i32> %i.q, <2 x i32> %i.s)
  %i.u = uitofp <2 x i32> %i.t to <2 x float>
  %i.v = fmul nnan <2 x float> %i.u, splat (float f0x2F800000) ; 3 uses
  %i.w = fcmp olt <2 x float> %i.v, splat (float f0x3F7FFFFF) ; 2 uses
  %i.x = extractelement <2 x i1> %i.w, i64 1
  %i.y = extractelement <2 x float> %i.v, i64 1
  %i.z = extractelement <2 x i1> %i.w, i64 0
  %i.aa = extractelement <2 x float> %i.v, i64 0
  %i.ab = fmul nnan float %i.y, 2.000000e+00
  %i.ac = fsub float 1.000000e+00, %i.ab
  %i.ad = select i1 %i.x, float %i.ac, float f0xBF7FFFFE ; 4 uses
  %i.ae = fmul float %i.ad, %i.ad
  %i.af = fsub float 1.000000e+00, %i.ae          ; 2 uses
  %i.ag = fcmp ogt float %i.af, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ag, float %i.af, float 0.000000e+00
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 2 uses
  %i.ah = fmul nnan float %i.aa, f0x40C90FDB
  %i.ai = select i1 %i.z, float %i.ah, float f0x40C90FDA ; 2 uses
  %i.aj = call noundef float @cosf(float noundef %i.ai) #31
  %i.ak = fmul float %sqrt.i.i, %i.aj
  %i.al = call noundef float @sinf(float noundef %i.ai) #31
  %i.am = fmul float %sqrt.i.i, %i.al
  %.sroa.06.0.vec.insert.i = insertelement <2 x float> poison, float %i.ak, i64 0
  %.sroa.06.4.vec.insert.i = insertelement <2 x float> %.sroa.06.0.vec.insert.i, float %i.am, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %.sroa.0173.2.in189 = mul i64 %i.k, 6364136223846793005
  %.sroa.0173.2190 = add i64 %.sroa.0173.2.in189, -2720673578348880933
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.an = call noundef float @_ZNK4pbrt15SampledSpectrum1yERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(32) %1)
  %i.ao = call noundef float @_ZNK4pbrt15SampledSpectrum1yERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(32) %1)
  %i.ap = fsub float %i.an, %i.ao
  %i.aq = call noundef float @llvm.fabs.f32(float %i.ap)
  %i.ar = call noundef float @_ZNK4pbrt15SampledSpectrum1yERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(32) %1)
  %i.as = fdiv float %i.aq, %i.ar
  store float %i.as, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store double 5.000000e-02, ptr %i.b, align 8, !tbaa !155
  call void @_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.at = load i8, ptr %7, align 8, !tbaa !121, !range !42, !noundef !43
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.w, label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.h
  %.sroa.0173.2192 = phi i64 [ %.sroa.0173.2190, %bb.d ], [ %.sroa.0173.2, %bb.h ] ; 2 uses
  %.041191 = phi i32 [ 0, %bb.d ], [ %i.dv, %bb.h ]
  %i.av = mul i64 %.sroa.0173.2192, 6364136223846793005
  %i.aw = add i64 %i.av, -2720673578348880933     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.ax = mul i64 %i.aw, 6364136223846793005
  %i.ay = insertelement <2 x i64> poison, i64 %i.aw, i64 0
  %i.az = insertelement <2 x i64> %i.ay, i64 %.sroa.0173.2192, i64 1 ; 3 uses
  %i.ba = lshr <2 x i64> %i.az, splat (i64 45)
  %i.bb = lshr <2 x i64> %i.az, splat (i64 27)
  %i.bc = xor <2 x i64> %i.ba, %i.bb
  %i.bd = trunc <2 x i64> %i.bc to <2 x i32>      ; 2 uses
  %i.be = lshr <2 x i64> %i.az, splat (i64 59)
  %i.bf = trunc nuw nsw <2 x i64> %i.be to <2 x i32>
  %i.bg = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.bd, <2 x i32> %i.bd, <2 x i32> %i.bf)
  %i.bh = uitofp <2 x i32> %i.bg to <2 x float>
  %i.bi = fmul nnan <2 x float> %i.bh, splat (float f0x2F800000) ; 2 uses
  %i.bj = fcmp olt <2 x float> %i.bi, splat (float f0x3F7FFFFF)
  %i.bk = select <2 x i1> %i.bj, <2 x float> %i.bi, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 1
  %i.bm = fmul nnan float %i.bl, 2.000000e+00
  %i.bn = fadd float %i.bm, -1.000000e+00
  call void @_ZN4pbrt8HairBxDFC1EffRKNS_15SampledSpectrumEfff(ptr noundef nonnull align 4 dereferenceable(76) %5, float noundef %i.bn, float noundef 1.550000e+00, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %.0196, float noundef %.040194, float noundef 0.000000e+00)
  %i.bo = add i64 %i.ax, -2720673578348880933     ; 2 uses
  %i.bp = mul i64 %i.bo, 6364136223846793005
  %i.bq = add i64 %i.bp, -2720673578348880933     ; 2 uses
  %i.br = insertelement <2 x i64> poison, i64 %i.bo, i64 0
  %i.bs = insertelement <2 x i64> %i.br, i64 %i.bq, i64 1 ; 3 uses
  %i.bt = lshr <2 x i64> %i.bs, splat (i64 45)
  %i.bu = lshr <2 x i64> %i.bs, splat (i64 27)
  %i.bv = xor <2 x i64> %i.bt, %i.bu
  %i.bw = trunc <2 x i64> %i.bv to <2 x i32>      ; 2 uses
  %i.bx = lshr <2 x i64> %i.bs, splat (i64 59)
  %i.by = trunc nuw nsw <2 x i64> %i.bx to <2 x i32>
  %i.bz = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.bw, <2 x i32> %i.bw, <2 x i32> %i.by)
  %i.ca = uitofp <2 x i32> %i.bz to <2 x float>
  %i.cb = fmul nnan <2 x float> %i.ca, splat (float f0x2F800000) ; 2 uses
  %i.cc = fcmp olt <2 x float> %i.cb, splat (float f0x3F7FFFFF)
  %i.cd = select <2 x i1> %i.cc, <2 x float> %i.cb, <2 x float> splat (float f0x3F7FFFFF) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ce = extractelement <2 x float> %i.bk, i64 0
  call void @_ZNK4pbrt8HairBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %6, ptr noundef nonnull align 4 dereferenceable(76) %5, <2 x float> %.sroa.06.4.vec.insert.i, float %i.ad, float noundef %i.ce, <2 x float> %i.cd, i32 noundef 0, i32 noundef 3)
  %i.cf = load i8, ptr %i.c, align 4, !tbaa !41, !range !42, !noundef !43
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %10 = load <4 x float>, ptr %6, align 16
  %i.ch = load <2 x float>, ptr %i.d, align 8, !tbaa !28 ; 3 uses
  %i.ci = insertelement <2 x float> %i.ch, float 6.553600e+04, i64 1
  %i.cj = fmul <2 x float> %i.ch, %i.ci           ; 2 uses
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cl = fmul <4 x float> %i.ck, %10
  %i.cm = extractelement <2 x float> %i.ch, i64 0
  %i.cn = call noundef float @llvm.fabs.f32(float %i.cm)
  %i.co = insertelement <4 x float> poison, float %i.cn, i64 0
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cq = fmul <4 x float> %i.cl, %i.cp
  %i.cr = shufflevector <2 x float> %i.cj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cs = fdiv <4 x float> %i.cq, %i.cr
  %i.ct = load <4 x float>, ptr %3, align 16, !tbaa !28
  %i.cu = fadd <4 x float> %i.ct, %i.cs
  store <4 x float> %i.cu, ptr %3, align 16, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.cv = extractelement <2 x float> %i.cd, i64 0
  %i.cw = fmul nnan float %i.cv, 2.000000e+00
  %i.cx = fsub float 1.000000e+00, %i.cw          ; 4 uses
  %i.cy = fmul float %i.cx, %i.cx                 ; 2 uses
  %i.cz = fsub float 1.000000e+00, %i.cy          ; 2 uses
  %i.da = fcmp ogt float %i.cz, 0.000000e+00
  %.sroa.speculated.i.i97 = select i1 %i.da, float %i.cz, float 0.000000e+00
  %sqrt.i.i98 = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i97) ; 2 uses
  %i.db = extractelement <2 x float> %i.cd, i64 1
  %i.dc = fmul nnan float %i.db, f0x40C90FDB      ; 2 uses
  %i.dd = call noundef float @cosf(float noundef %i.dc) #31
  %i.de = fmul float %sqrt.i.i98, %i.dd
  %i.df = call noundef float @sinf(float noundef %i.dc) #31
  %i.dg = fmul float %sqrt.i.i98, %i.df
  %.sroa.06.0.vec.insert.i100 = insertelement <2 x float> poison, float %i.de, i64 0
  %.sroa.06.4.vec.insert.i101 = insertelement <2 x float> %.sroa.06.0.vec.insert.i100, float %i.dg, i64 1
  %i.dh = call { <2 x float>, <2 x float> } @_ZNK4pbrt8HairBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE(ptr noundef nonnull align 4 dereferenceable(76) %5, <2 x float> %.sroa.06.4.vec.insert.i, float %i.ad, <2 x float> %.sroa.06.4.vec.insert.i101, float %i.cx, i32 noundef 0) ; 2 uses
  %i.di = extractvalue { <2 x float>, <2 x float> } %i.dh, 0
  %i.dj = extractvalue { <2 x float>, <2 x float> } %i.dh, 1
  %i.dk = call noundef float @llvm.fabs.f32(float %i.cx)
  %i.dl = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dn = shufflevector <2 x float> %i.di, <2 x float> %i.dj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.do = fmul <4 x float> %i.dm, %i.dn
  %i.dp = insertelement <4 x float> poison, float %i.dk, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = fmul <4 x float> %i.dq, %i.do
  %i.ds = fdiv <4 x float> %i.dr, splat (float f0x45A2F983)
  %i.dt = load <4 x float>, ptr %4, align 16, !tbaa !28
  %i.du = fadd <4 x float> %i.dt, %i.ds
  store <4 x float> %i.du, ptr %4, align 16, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.dv = add nuw nsw i32 %.041191, 1             ; 2 uses
  %.sroa.0173.2.in = mul i64 %i.bq, 6364136223846793005
  %.sroa.0173.2 = add i64 %.sroa.0173.2.in, -2720673578348880933 ; 3 uses
  %exitcond.not = icmp eq i32 %i.dv, 65536
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !328

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.dw = load ptr, ptr %i.e, align 8, !tbaa !122 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !88
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.k, %bb.j
  %i.dy = phi ptr [ %i.dx, %bb.k ], [ @.str.20, %bb.j ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef 818, ptr noundef %i.dy)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.dz = load ptr, ptr %8, align 8, !tbaa !125
  %.not.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ea = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.q

.noexc.i.i:                                       ; preds = %bb.n
  br i1 %i.ea, label %bb.o, label %_ZN7testing7MessageD2Ev.exit

bb.o:                                             ; preds = %.noexc.i.i
  %i.eb = load ptr, ptr %8, align 8, !tbaa !125   ; 3 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %_ZN7testing7MessageD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !68
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(128) %i.eb) #31, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  call void @__clang_call_terminate(ptr %i.eh) #34
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.m, %.noexc.i.i, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.w

bb.r:                                             ; preds = %bb.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.l
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #31
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ek, %bb.t ], [ %i.ej, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #31
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.ei, %bb.r ]
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
  %i.el = load ptr, ptr %i.e, align 8, !tbaa !122
  %.not.i.i.i147 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i147, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.em = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i148 unwind label %bb.aa

.noexc.i.i148:                                    ; preds = %bb.x
  br i1 %i.em, label %bb.y, label %_ZN7testing15AssertionResultD2Ev.exit

bb.y:                                             ; preds = %.noexc.i.i148
  %i.en = load ptr, ptr %i.e, align 8, !tbaa !122 ; 4 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !88 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !77
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef 32) #35
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.aa:                                            ; preds = %bb.x
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  call void @__clang_call_terminate(ptr %i.ev) #34
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.w, %.noexc.i.i148, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.ew = fpext float %.040194 to double
  %i.ex = fadd double %i.ew, 2.000000e-01         ; 2 uses
  %i.ey = fptrunc double %i.ex to float
  %i.ez = fcmp olt double %i.ex, f0x3FEFFFFFF0000000
  br i1 %i.ez, label %bb.d, label %bb.c, !llvm.loop !329
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_1
