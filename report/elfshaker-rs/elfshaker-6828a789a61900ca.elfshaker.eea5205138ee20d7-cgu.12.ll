Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.12?download=true
inline.NumInlined: 693
inline.NumDeleted: 334
begin_hunk_0_@_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCs3oUPovFnLWP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB4_3VecINtNtB1d_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNCINvNtB4P_4algo15run_in_parallelRNtNtB4R_7packidx9FileEntryB3P_NCNvMs0_NtB4P_10repositoryNtB6M_10Repository18copy_loose_entries0INtNtNtB1d_5slice4iter4IterB6a_EE0s_0EIB3Q_zINtNtB6_5boxed3BoxDNtNtB1d_3any3AnyNtNtB1d_6marker4SendEL_EEEB3F_EB4R_:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCs3oUPovFnLWP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB4_3VecINtNtB1d_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB4g_5error5ErrorEEEENCNCINvNtB4g_4algo15run_in_parallelTNtB4e_10PackReaderIB3G_NtNtB4i_7packidx9FileEntryEEB3P_NCINvMsa_B4e_NtB4e_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0IB2g_B61_EE0s_0EIB3Q_zINtNtB6_5boxed3BoxDNtNtB1d_3any3AnyNtNtB1d_6marker4SendEL_EEEB3F_EB4i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1j_3VecINtNtB7_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB3C_5error5ErrorEEEENCNCINvNtB3C_4algo15run_in_parallelTNtB3A_10PackReaderIB32_NtNtB3E_7packidx9FileEntryEEB3c_NCINvMsa_B3A_NtB3A_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0IB1f_B5n_EE0s_0EIB3d_zINtNtB1l_5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_EEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB31_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB31_E0IB3d_B9z_zEEB3E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB7_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2L_5error5ErrorEEEENtNtNtB2a_3ops4drop4Drop4dropB2N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1y_3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB3R_5error5ErrorEEEENCNCINvNtB3R_4algo15run_in_parallelTNtB3P_10PackReaderIB3h_NtNtB3T_7packidx9FileEntryEEB3r_NCINvMsa_B3P_NtB3P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0IB1u_B5C_EE0s_0EIB3s_zINtNtB1A_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEB3T_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB7_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2L_5error5ErrorEEEE32forget_allocation_drop_remainingB2N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtBG_3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB3k_5error5ErrorEEEB2K_EEB3m_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #23
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB7_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2L_5error5ErrorEEEENtNtNtB2a_3ops4drop4Drop4dropB2N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1y_3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB3R_5error5ErrorEEEENCNCINvNtB3R_4algo15run_in_parallelTNtB3P_10PackReaderIB3h_NtNtB3T_7packidx9FileEntryEEB3r_NCINvMsa_B3P_NtB3P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0IB1u_B5C_EE0s_0EIB3s_zINtNtB1A_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEB3T_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCs3oUPovFnLWP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB4_3VecINtNtB1d_6result6ResultTyIB3G_hEENtNtNtB1d_2io5error5ErrorEEEENCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmB3P_NCNvMs0_NtB4Y_10repositoryNtB64_10Repository11create_pack0IB2g_B5P_EE0s_0EIB3Q_zINtNtB6_5boxed3BoxDNtNtB1d_3any3AnyNtNtB1d_6marker4SendEL_EEEB3F_EB50_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1j_3VecINtNtB7_6result6ResultTyIB32_hEENtNtNtB7_2io5error5ErrorEEEENCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmB3c_NCNvMs0_NtB4j_10repositoryNtB5p_10Repository11create_pack0IB1f_B5a_EE0s_0EIB3d_zINtNtB1l_5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_EEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB31_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB31_E0IB3d_B8e_zEEB4l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB7_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIB1W_hEENtNtNtB2a_2io5error5ErrorEEEENtNtNtB2a_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1y_3VecINtNtB4_6result6ResultTyIB3h_hEENtNtNtB4_2io5error5ErrorEEEENCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmB3r_NCNvMs0_NtB4y_10repositoryNtB5E_10Repository11create_pack0IB1u_B5p_EE0s_0EIB3s_zINtNtB1A_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEB4A_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB7_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIB1W_hEENtNtNtB2a_2io5error5ErrorEEEE32forget_allocation_drop_remainingCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtBG_3VecINtNtB4_6result6ResultTyIB2L_hEENtNtNtB4_2io5error5ErrorEEEB2K_EECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #23
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB7_3VecINtNtCs3oUPovFnLWP_4core6result6ResultTyIB1W_hEENtNtNtB2a_2io5error5ErrorEEEENtNtNtB2a_3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1y_3VecINtNtB4_6result6ResultTyIB3h_hEENtNtNtB4_2io5error5ErrorEEEENCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmB3r_NCNvMs0_NtB4y_10repositoryNtB5E_10Repository11create_pack0IB1u_B5p_EE0s_0EIB3s_zINtNtB1A_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEB4A_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCs3oUPovFnLWP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB4_3VecINtNtB1d_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNCINvNtB4h_4algo15run_in_parallelRNtNtB4h_4pack6PackIdB3P_NCNvMs0_NtB4h_10repositoryNtB68_10Repository24find_duplicate_snapshots0QINtNtNtB1d_5slice4iter4IterB5C_EE0s_0EIB3Q_zINtNtB6_5boxed3BoxDNtNtB1d_3any3AnyNtNtB1d_6marker4SendEL_EEEB3F_EB4j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1j_3VecINtNtB7_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNCINvNtB3D_4algo15run_in_parallelRNtNtB3D_4pack6PackIdB3c_NCNvMs0_NtB3D_10repositoryNtB5u_10Repository24find_duplicate_snapshots0QINtNtNtB7_5slice4iter4IterB4Y_EE0s_0EIB3d_zINtNtB1l_5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_EEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB31_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB31_E0IB3d_B8S_zEEB3F_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB7_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB2a_3ops4drop4Drop4dropB2O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1y_3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNCINvNtB3S_4algo15run_in_parallelRNtNtB3S_4pack6PackIdB3r_NCNvMs0_NtB3S_10repositoryNtB5J_10Repository24find_duplicate_snapshots0QINtNtNtB4_5slice4iter4IterB5d_EE0s_0EIB3s_zINtNtB1A_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEB3U_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB7_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEE32forget_allocation_drop_remainingB2O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtBG_3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB2K_EEB3n_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #23
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB7_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB2a_3ops4drop4Drop4dropB2O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1y_3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNCINvNtB3S_4algo15run_in_parallelRNtNtB3S_4pack6PackIdB3r_NCNvMs0_NtB3S_10repositoryNtB5J_10Repository24find_duplicate_snapshots0QINtNtNtB4_5slice4iter4IterB5d_EE0s_0EIB3s_zINtNtB1A_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEB3U_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCs3oUPovFnLWP_4core4iter8adapters12GenericShuntINtNtB4_9into_iter8IntoIterINtNtB1d_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEIB2q_zB3l_EEB2M_EB3r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = mul i64 %i.c, 56                         ; 7 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB7_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEIB1N_zB2H_EENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB13_13in_place_drop11InPlaceDropB28_ENCINvNtB13_16in_place_collect24write_in_place_with_dropB28_E0IB1N_B4n_zEEB2N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtB11_3ops4drop4Drop4dropB2d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEIB22_zB2W_EEEB32_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEE32forget_allocation_drop_remainingB2d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEB27_EEB2M_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #23
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEB1D_EB2i_.exit.thread

_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEB1D_EB2i_.exit.thread: ; preds = %bb.h, %2, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEENtNtNtB11_3ops4drop4Drop4dropB2d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 24
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEB1D_EB2i_.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #22
  br label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEB1D_EB2i_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #22 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEB1D_EB2i_.exit.thread, !prof !14

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #26
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEIB22_zB2W_EEEB32_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB4_3VecNtNtB2s_7packidx9FileEntryEEENCINvMsa_B2o_NtB2o_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0EINtNtB1f_6result6ResultNtB2o_12ExtractStatsNtNtB2q_5error5ErrorEEB2s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = mul i64 %i.c, 96                         ; 7 uses
  %i.h = udiv i64 %i.g, 56                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB12_3VecNtNtB1S_7packidx9FileEntryEEENCINvMsa_B1O_NtB1O_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropINtNtBc_6result6ResultNtB1O_12ExtractStatsNtNtB1Q_5error5ErrorEENCINvNtB12_16in_place_collect24write_in_place_with_dropB5Q_E0IB5R_B5f_zEEB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB7_3VecNtNtB13_7packidx9FileEntryEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB1e_3VecNtNtB24_7packidx9FileEntryEEENCINvMsa_B20_NtB20_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0EEB24_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 56                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB7_3VecNtNtB13_7packidx9FileEntryEEE32forget_allocation_drop_remainingB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtBG_3VecNtNtB1S_7packidx9FileEntryEEINtNtB4_6result6ResultNtB1O_12ExtractStatsNtNtB1Q_5error5ErrorEEEB1S_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #23
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 56                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB4_3VecNtNtB18_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB14_12ExtractStatsNtNtB16_5error5ErrorEEB18_.exit.thread

_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB4_3VecNtNtB18_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB14_12ExtractStatsNtNtB16_5error5ErrorEEB18_.exit.thread: ; preds = %bb.h, %2, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB7_3VecNtNtB13_7packidx9FileEntryEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 56
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB4_3VecNtNtB18_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB14_12ExtractStatsNtNtB16_5error5ErrorEEB18_.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #22
  br label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB4_3VecNtNtB18_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB14_12ExtractStatsNtNtB16_5error5ErrorEEB18_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #22 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB4_3VecNtNtB18_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB14_12ExtractStatsNtNtB16_5error5ErrorEEB18_.exit.thread, !prof !14

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #26
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB1e_3VecNtNtB24_7packidx9FileEntryEEENCINvMsa_B20_NtB20_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0EEB24_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdENCNCNvMs0_NtB2v_10repositoryNtB3s_10Repository26find_redundant_loose_packss_00EB2r_EB2x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = invoke { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1U_8adapters6filter15filter_try_foldBX_B2S_INtNtB1W_6result6ResultB2S_zENCNCNvMs0_NtB11_10repositoryNtB50_10Repository26find_redundant_loose_packss_00NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4n_EB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.i, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdENCNCNvMs0_NtB27_10repositoryNtB34_10Repository26find_redundant_loose_packss_00EEB29_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 48                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdE32forget_allocation_drop_remainingB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdB1L_EEB1R_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #23
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdENCNCNvMs0_NtB27_10repositoryNtB34_10Repository26find_redundant_loose_packss_00EEB29_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNCNvMs0_NtB2v_10repositoryNtB3n_10Repository11loose_packs00EB2r_EB2x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = invoke { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1P_8adapters6filter15filter_try_foldBX_B2N_INtNtB1R_6result6ResultB2N_zENCNCNvMs0_NtB11_10repositoryNtB4V_10Repository11loose_packs00NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4i_EB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.i, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNCNvMs0_NtB27_10repositoryNtB2Z_10Repository11loose_packs00EEB29_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdE32forget_allocation_drop_remainingB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdB1L_EEB1R_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #23
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNCNvMs0_NtB27_10repositoryNtB2Z_10Repository11loose_packs00EEB29_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB4_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtB4_5error5ErrorENCNvMs0_NtB4_10repositoryNtB2k_10Repository24find_duplicate_snapshots0QINtNtNtB1k_5slice4iter4IterBW_EEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 9 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 9 uses
  %i.p = alloca [56 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [96 x i8], align 8                ; 9 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [40 x i8], align 8                ; 9 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 10 uses
  %i.ad = alloca [24 x i8], align 8               ; 11 uses
  %i.ae = alloca [24 x i8], align 16              ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [40 x i8], align 8               ; 4 uses
  %i.ak = alloca [40 x i8], align 8               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 9 uses
  %i.am = alloca [8 x i8], align 8                ; 8 uses
  %i.an = alloca [24 x i8], align 16              ; 17 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [16 x i8], align 8               ; 11 uses
end_hunk_0
