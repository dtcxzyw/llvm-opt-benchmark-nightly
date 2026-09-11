Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.09?download=true
inline.NumInlined: 469
inline.NumDeleted: 239
begin_hunk_0_@_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCs3oUPovFnLWP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB4_3VecINtNtB1d_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB1d_2io5error5ErrorEEEENCNCINvNtNtB4g_4repo4algo15run_in_parallelNtNtCsaL1QbXo9JQH_3std4path7PathBufB3P_NCINvMs0_NtB5y_10repositoryNtB6R_10Repository15create_snapshotIB2g_B65_EB65_E0B7I_E0s_0EIB3Q_zINtNtB6_5boxed3BoxDNtNtB1d_3any3AnyNtNtB1d_6marker4SendEL_EEEB3F_ECs7BtpbLEd5q3_9elfshaker:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCs3oUPovFnLWP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB4_3VecINtNtB1d_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB4g_5error5ErrorEEEENCNCINvNtB4g_4algo15run_in_parallelTNtB4e_10PackReaderIB3G_NtNtB4i_7packidx9FileEntryEEB3P_NCINvMsa_B4e_NtB4e_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0IB2g_B61_EE0s_0EIB3Q_zINtNtB6_5boxed3BoxDNtNtB1d_3any3AnyNtNtB1d_6marker4SendEL_EEEB3F_ECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1j_3VecINtNtB7_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB3C_5error5ErrorEEEENCNCINvNtB3C_4algo15run_in_parallelTNtB3A_10PackReaderIB32_NtNtB3E_7packidx9FileEntryEEB3c_NCINvMsa_B3A_NtB3A_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0IB1f_B5n_EE0s_0EIB3d_zINtNtB1l_5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_EEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB31_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB31_E0IB3d_B9z_zEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB7_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2L_5error5ErrorEEEENtNtNtB2a_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1y_3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB3R_5error5ErrorEEEENCNCINvNtB3R_4algo15run_in_parallelTNtB3P_10PackReaderIB3h_NtNtB3T_7packidx9FileEntryEEB3r_NCINvMsa_B3P_NtB3P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0IB1u_B5C_EE0s_0EIB3s_zINtNtB1A_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.g

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
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB7_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2L_5error5ErrorEEEE32forget_allocation_drop_remainingCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtBG_3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB3k_5error5ErrorEEEB2K_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #26
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB7_3VecINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB2L_5error5ErrorEEEENtNtNtB2a_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1y_3VecINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB3R_5error5ErrorEEEENCNCINvNtB3R_4algo15run_in_parallelTNtB3P_10PackReaderIB3h_NtNtB3T_7packidx9FileEntryEEB3r_NCINvMsa_B3P_NtB3P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0IB1u_B5C_EE0s_0EIB3s_zINtNtB1A_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCs3oUPovFnLWP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB4_3VecINtNtB1d_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNCINvNtB4h_4algo15run_in_parallelNtNtB4h_4pack6PackIdB3P_NCINvMs0_NtB4h_10repositoryNtB68_10Repository25find_unreferenced_objectsIB2g_B5B_EEs1_0B79_E0s_0EIB3Q_zINtNtB6_5boxed3BoxDNtNtB1d_3any3AnyNtNtB1d_6marker4SendEL_EEEB3F_ECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1j_3VecINtNtB7_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNCINvNtB3D_4algo15run_in_parallelNtNtB3D_4pack6PackIdB3c_NCINvMs0_NtB3D_10repositoryNtB5u_10Repository25find_unreferenced_objectsIB1f_B4X_EEs1_0B6v_E0s_0EIB3d_zINtNtB1l_5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_EEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB31_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB31_E0IB3d_B8F_zEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB7_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB2a_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1y_3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNCINvNtB3S_4algo15run_in_parallelNtNtB3S_4pack6PackIdB3r_NCINvMs0_NtB3S_10repositoryNtB5J_10Repository25find_unreferenced_objectsIB1u_B5c_EEs1_0B6K_E0s_0EIB3s_zINtNtB1A_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.g

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
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB7_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEE32forget_allocation_drop_remainingCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtBG_3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEB2K_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #26
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB7_3VecINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENtNtNtB2a_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1y_3VecINtNtB4_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNCINvNtB3S_4algo15run_in_parallelNtNtB3S_4pack6PackIdB3r_NCINvMs0_NtB3S_10repositoryNtB5J_10Repository25find_unreferenced_objectsIB1u_B5c_EEs1_0B6K_E0s_0EIB3s_zINtNtB1A_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCs3oUPovFnLWP_4core4iter8adapters12GenericShuntINtNtB4_9into_iter8IntoIterINtNtB1d_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB1d_2io5error5ErrorEEIB2q_zB3w_EEB2M_ECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB7_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB7_2io5error5ErrorEEIB1N_zB2S_EENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB13_13in_place_drop11InPlaceDropB28_ENCINvNtB13_16in_place_collect24write_in_place_with_dropB28_E0IB1N_B4b_zEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB11_2io5error5ErrorEENtNtNtB11_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEIB22_zB37_EEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 6                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB11_2io5error5ErrorEE32forget_allocation_drop_remainingCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEB27_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #26
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB11_2io5error5ErrorEENtNtNtB11_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB4_2io5error5ErrorEEIB22_zB37_EEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvNtCs7BtpbLEd5q3_9elfshaker10list_files11print_files0ENtNtB6_6string6StringEB3c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = shl i64 %i.c, 6                          ; 5 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvNtCs7BtpbLEd5q3_9elfshaker10list_files11print_files0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB14_6string6StringENCINvNtB12_16in_place_collect24write_in_place_with_dropB4J_E0INtNtBc_6result6ResultB48_zEEB2C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvNtCs7BtpbLEd5q3_9elfshaker10list_files11print_files0EEB2O_.exit unwind label %bb.j

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
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryE32forget_allocation_drop_remainingCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtBI_6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #26
          to label %bb.b unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %.sroa.0.0.i, label %2, label %.thread

.thread:                                          ; preds = %2, %bb.g, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.g ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

2:                                                ; preds = %bb.f
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %.thread, label %bb.g

bb.g:                                             ; preds = %2
  %i.w = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #24 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %.thread, !prof !311

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #27
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvNtCs7BtpbLEd5q3_9elfshaker10list_files11print_files0EEB2O_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB4_3VecNtNtB2s_7packidx9FileEntryEEENCINvMsa_B2o_NtB2o_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0EINtNtB1f_6result6ResultNtB2o_12ExtractStatsNtNtB2q_5error5ErrorEECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = mul i64 %i.c, 96                         ; 7 uses
  %i.h = udiv i64 %i.g, 56                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB12_3VecNtNtB1S_7packidx9FileEntryEEENCINvMsa_B1O_NtB1O_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropINtNtBc_6result6ResultNtB1O_12ExtractStatsNtNtB1Q_5error5ErrorEENCINvNtB12_16in_place_collect24write_in_place_with_dropB5Q_E0IB5R_B5f_zEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB7_3VecNtNtB13_7packidx9FileEntryEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB1e_3VecNtNtB24_7packidx9FileEntryEEENCINvMsa_B20_NtB20_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0EECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.l

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
  invoke void @_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB7_3VecNtNtB13_7packidx9FileEntryEEE32forget_allocation_drop_remainingCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtBG_3VecNtNtB1S_7packidx9FileEntryEEINtNtB4_6result6ResultNtB1O_12ExtractStatsNtNtB1Q_5error5ErrorEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #26
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 56                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB4_3VecNtNtB18_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB14_12ExtractStatsNtNtB16_5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit.thread

_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB4_3VecNtNtB18_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB14_12ExtractStatsNtNtB16_5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit.thread: ; preds = %bb.h, %2, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB7_3VecNtNtB13_7packidx9FileEntryEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 56
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB4_3VecNtNtB18_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB14_12ExtractStatsNtNtB16_5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #24
  br label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB4_3VecNtNtB18_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB14_12ExtractStatsNtNtB16_5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #24 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect13needs_reallocTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB4_3VecNtNtB18_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB14_12ExtractStatsNtNtB16_5error5ErrorEECs7BtpbLEd5q3_9elfshaker.exit.thread, !prof !312

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #27
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10PackReaderINtB1e_3VecNtNtB24_7packidx9FileEntryEEENCINvMsa_B20_NtB20_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0EECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1D_6marker4SendEL_EuECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef nonnull %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 10 uses
  %i.h = alloca [8 x i8], align 8                 ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [8 x i8], align 8                 ; 11 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %5, ptr %i.k, align 8
  %i.l = trunc nuw i64 %2 to i1
  br i1 %i.l, label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuE0Cs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load atomic i64, ptr @_RNvNCNvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 14)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.c
  %i.o = load i64, ptr %i.c, align 8, !range !10, !noundef !5
  %.not.i = icmp eq i64 %i.o, -1
  br i1 %.not.i, label %bb.q, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.m, -1
  br label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuE0Cs7BtpbLEd5q3_9elfshaker.exit

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !354, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !354, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !354
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t)
          to label %bb.g unwind label %bb.f, !noalias !354

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #26
          to label %.body35.thread unwind label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.a, align 8, !range !7, !noalias !354, !noundef !5
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !354
  br label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !354, !nonnull !5, !noundef !5 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !354, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !354
  switch i64 %i.aa, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ab = load i8, ptr %i.y, align 1, !alias.scope !355, !noalias !356, !noundef !5 ; 2 uses
  switch i8 %i.ab, label %bb.k [
    i8 43, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i8 45, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.i
  %.pr.i.i.i = load i8, ptr %i.y, align 1, !alias.scope !355, !noalias !356
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split.i.i.i, %bb.j
  %i.ac = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.ab, %bb.j ]
  %cond.i.i.i = icmp eq i8 %i.ac, 43              ; 2 uses
  %i.ad = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.aa, %i.ad    ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.ae = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.ae, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.k
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

.preheader56.i.i.i:                               ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i90, i64 1
  %i.ag = add nsw i64 %.sroa.15.1.i.i.i89, -1     ; 2 uses
  %.not52.i.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not52.i.not.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i.preheader:                     ; preds = %bb.k, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i90 = phi ptr [ %i.af, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.k ] ; 2 uses
  %.sroa.15.1.i.i.i89 = phi i64 [ %i.ag, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.k ]
  %.sroa.042.0.i.i.i88 = phi i64 [ %i.ap, %.preheader56.i.i.i ], [ 0, %bb.k ]
  %i.ah = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i88, i64 10) ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 1
  br i1 %i.ai, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.l, !prof !19

bb.l:                                             ; preds = %.preheader56.i.i.i.preheader
  %i.aj = extractvalue { i64, i1 } %i.ah, 0       ; 2 uses
  %i.ak = load i8, ptr %.sroa.0.1.i.i.i90, align 1, !alias.scope !355, !noalias !356, !noundef !5
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ugt i32 %i.am, 9
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = add i64 %i.aj, %i.ao                    ; 3 uses
  %i.aq = icmp ult i64 %i.ap, %i.aj
  %or.cond.i.i = select i1 %i.an, i1 true, i1 %i.aq, !prof !357
  br i1 %or.cond.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i, !prof !357

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.m
  %.sroa.0.269.i.i.i = phi ptr [ %i.ax, %bb.m ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.aw, %bb.m ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.az, %bb.m ], [ 0, %.preheader.i.i.i ]
  %i.ar = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !355, !noalias !356, !noundef !5
  %i.as = zext i8 %i.ar to i32
  %i.at = add nsw i32 %i.as, -48                  ; 2 uses
  %i.au = icmp ugt i32 %i.at, 9
  br i1 %i.au, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.av = mul i64 %.sroa.042.267.i.i.i, 10
  %i.aw = add nsw i64 %.sroa.15.268.i.i.i, -1     ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %i.ay = zext nneg i32 %i.at to i64
  %i.az = add i64 %i.av, %i.ay                    ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not53.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.l, %.preheader56.i.i.i.preheader, %.preheader56.i.i.i, %bb.m, %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.j, %bb.j, %bb.i, %bb.h
  %.sroa.0.1.i.i = phi i64 [ 2097152, %bb.h ], [ 0, %.preheader.i.i.i ], [ 2097152, %bb.j ], [ 2097152, %bb.i ], [ 2097152, %bb.j ], [ %i.az, %bb.m ], [ 2097152, %.lr.ph.i.i.i ], [ 2097152, %bb.l ], [ 2097152, %.preheader56.i.i.i.preheader ], [ %i.ap, %.preheader56.i.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1H_6marker4SendEL_EuE00Cs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.n

bb.n:                                             ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body35.thread unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.p:                                             ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1H_6marker4SendEL_EuE00Cs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc37 unwind label %bb.r

.noexc37:                                         ; preds = %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1H_6marker4SendEL_EuE00Cs7BtpbLEd5q3_9elfshaker.exit.i
end_hunk_0
