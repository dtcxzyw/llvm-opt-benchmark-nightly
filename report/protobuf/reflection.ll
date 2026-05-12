inline.NumInlined: 1155
inline.NumDeleted: 569
begin_hunk_0_@_ZN4absl12lts_2025051214flags_internal16FinalizeRegistryEv:bb.a
  br i1 %i.e, label %bb.t, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEv.exit
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 8), align 8, !tbaa !30 ; 3 uses
  %i.g = lshr i64 %i.f, 17                        ; 3 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 48), align 8, !tbaa !90 ; 2 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 32), align 8, !tbaa !92 ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 3
  %i.n = icmp ult i64 %i.m, %i.g
  br i1 %i.n, label %_ZNSt12_Vector_baseIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE7reserveEm.exit
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051214flags_internal16FinalizeRegistryEv:bb.a
_ZNSt12_Vector_baseIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 40), align 8, !tbaa !93
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.k                       ; 3 uses
  %i.r = shl nuw nsw i64 %i.g, 3
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #35
          to label %.noexc unwind label %.loopexit.split-lp ; 5 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_M_allocateEm.exit.i
  %i.t = icmp sgt i64 %i.q, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

bb.e:                                             ; preds = %.noexc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.i, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %bb.e, %.noexc
  %.not.i8.i = icmp eq ptr %i.i, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #33
  %.pre.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 8), align 8, !tbaa !30
  br label %_ZNSt12_Vector_baseIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %.pre = phi i64 [ %.pre.pre, %bb.f ], [ %i.f, %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ]
  store ptr %i.s, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 32), align 8, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store ptr %i.u, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 40), align 8, !tbaa !93
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.g ; 2 uses
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051214flags_internal12FlagRegistry14GlobalRegistryEvE15global_registry, i64 48), align 8, !tbaa !90
  br label %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.d
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051214flags_internal16FinalizeRegistryEv:bb.a

bb.o:                                             ; preds = %.lr.ph
  %i.cb = ptrtoint ptr %i.bw to i64
  %i.cc = ptrtoint ptr %i.bv to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 6 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775800
  br i1 %i.ce, label %bb.p, label %_ZNKSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE12_M_check_lenEmPKc.exit.i.i

end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051214flags_internal16FinalizeRegistryEv:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.cd) #33
  br label %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIPN4absl12lts_2025051215CommandLineFlagESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
end_hunk_3
begin_hunk_4_@_ZNSt17_Function_handlerIFvRN4absl12lts_2025051215CommandLineFlagEEZNS1_14flags_internal13FlagSaverImpl16SaveFromRegistryEvEUlS3_E_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN4absl12lts_2025051214flags_internal13FlagSaverImpl16SaveFromRegistryEvENKUlRNS0_15CommandLineFlagEE_clES4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !124    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN4absl12lts_2025051214flags_internal21PrivateHandleAccessor9SaveStateERNS0_15CommandLineFlagE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = load ptr, ptr %2, align 8                ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  br i1 %.not, label %_ZNSt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS3_EED2Ev.exit6, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !112  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.c
end_hunk_4
begin_hunk_5_@_ZZN4absl12lts_2025051214flags_internal13FlagSaverImpl16SaveFromRegistryEvENKUlRNS0_15CommandLineFlagEE_clES4_:bb.a
bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !110  ; 10 uses
  %i.j = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

end_hunk_5
begin_hunk_6_@_ZZN4absl12lts_2025051214flags_internal13FlagSaverImpl16SaveFromRegistryEvENKUlRNS0_15CommandLineFlagEE_clES4_:bb.a

.noexc8:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store i64 %i.c, ptr %i.u, align 8, !tbaa !107
  store ptr null, ptr %2, align 8, !tbaa !107
  %.not10.i.i.i.i = icmp eq ptr %i.i, %i.e
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader
end_hunk_6
begin_hunk_7_@_ZZN4absl12lts_2025051214flags_internal13FlagSaverImpl16SaveFromRegistryEvENKUlRNS0_15CommandLineFlagEE_clES4_:bb.a
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #33
  br label %_ZNSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit

bb.g:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4absl12lts_2025051214flags_internal18FlagStateInterfaceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i, %bb.e
end_hunk_7
