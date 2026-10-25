Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.02?download=true
inline.NumInlined: 518
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1j_3VecINtNtB7_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB7_2io5error5ErrorEEEENCNCINvNtNtB3C_4repo4algo15run_in_parallelNtNtCsaL1QbXo9JQH_3std4path7PathBufB3c_NCINvMs0_NtB4T_10repositoryNtB6c_10Repository15create_snapshotIB1f_B5q_EB5q_E0B73_E0s_0EIB3d_zINtNtB1l_5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_EEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB31_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB31_E0IB3d_B9e_zEECs7BtpbLEd5q3_9elfshaker:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.pn = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1j_3VecINtNtB7_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB3C_5error5ErrorEEEENCNCINvNtB3C_4algo15run_in_parallelTNtB3A_10PackReaderIB32_NtNtB3E_7packidx9FileEntryEEB3c_NCINvMsa_B3A_NtB3A_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0IB1f_B5n_EE0s_0EIB3d_zINtNtB1l_5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_EEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB31_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB31_E0IB3d_B9z_zEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !8, !noundef !6
  call void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB12_3VecINtNtBc_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack12ExtractStatsNtNtB3l_5error5ErrorEEEENCNCINvNtB3l_4algo15run_in_parallelTNtB3j_10PackReaderIB2L_NtNtB3n_7packidx9FileEntryEEB2V_NCINvMsa_B3j_NtB3j_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0IBY_B56_EE0s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2K_ENCINvXB8_INtB8_12GenericShuntBN_IB2W_zINtNtB14_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEB7w_8try_foldB8d_NCINvNtB12_16in_place_collect24write_in_place_with_dropB2K_E0IB2W_B8d_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBbJ_B8d_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.pn = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB1j_3VecINtNtB7_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNCINvNtB3D_4algo15run_in_parallelNtNtB3D_4pack6PackIdB3c_NCINvMs0_NtB3D_10repositoryNtB5u_10Repository25find_unreferenced_objectsIB1f_B4X_EEs1_0B6v_E0s_0EIB3d_zINtNtB1l_5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_EEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB31_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB31_E0IB3d_B8F_zEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !8, !noundef !6
  call void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCs1ftIqucrW6Z_15crossbeam_utils6thread16ScopedJoinHandleINtB12_3VecINtNtBc_6result6ResultuNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEEEENCNCINvNtB3m_4algo15run_in_parallelNtNtB3m_4pack6PackIdB2V_NCINvMs0_NtB3m_10repositoryNtB5d_10Repository25find_unreferenced_objectsIBY_B4G_EEs1_0B6e_E0s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2K_ENCINvXB8_INtB8_12GenericShuntBN_IB2W_zINtNtB14_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEB6C_8try_foldB7j_NCINvNtB12_16in_place_collect24write_in_place_with_dropB2K_E0IB2W_B7j_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBaP_B7j_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.pn = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCINvMsd_B24_NtB24_9PackIndex13push_snapshotB22_INtB1j_3VecB22_EE0EINtNtB7_6result6ResultzNtB24_9PackErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvMNtNtB7_3ops9try_traitINtB5l_17NeverShortCircuituE10wrap_mut_2uNtB24_10FileHandleNCINvB11_8map_foldB6l_TB6l_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB7g_7HashSetB6l_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB4B_7collect6ExtendB6l_E6extendBE_E0NCINvNvB4x_8for_each4callB6Z_NCINvXs1i_NtB7i_3mapINtBa9_7HashMapB6l_uB83_EIB8S_B6Z_E6extendIBZ_BE_B77_EE0E0E0E0B5G_ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !8, !noundef !6
  %i.d = call noundef zeroext i1 @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCINvMsd_B1N_NtB1N_9PackIndex13push_snapshotB1L_INtB12_3VecB1L_EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtB1N_9PackErrorEEB3B_8try_folduNCINvMNtNtBc_3ops9try_traitINtB5O_17NeverShortCircuituE10wrap_mut_2uNtB1N_10FileHandleNCINvB6_8map_foldB6O_TB6O_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB7I_7HashSetB6O_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB3F_7collect6ExtendB6O_E6extendB4s_E0NCINvNvB3B_8for_each4callB7r_NCINvXs1i_NtB7K_3mapINtBaC_7HashMapB6O_uB8v_EIB9k_B7r_E6extendIBO_B4s_B7z_EE0E0E0E0B69_E0INtNtB5Q_12control_flow11ControlFlowB69_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXNtNtCs3oUPovFnLWP_4core4iter8adaptersINtB3_12GenericShuntINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtB7_6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB7_2io5error5ErrorEEIB1N_zB2S_EENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB13_13in_place_drop11InPlaceDropB28_ENCINvNtB13_16in_place_collect24write_in_place_with_dropB28_E0IB1N_B4b_zEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !8, !noundef !6
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtB12_2io5error5ErrorEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropB1z_ENCINvXNtB2Q_8adaptersINtB4k_12GenericShuntBI_IBY_zB2j_EEB2K_8try_foldB3z_NCINvNtB8_16in_place_collect24write_in_place_with_dropB1z_E0IBY_B3z_zEE0INtNtNtB12_3ops12control_flow11ControlFlowB6n_B3z_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.pn = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %.merged = insertvalue { ptr, ptr } %.pn, ptr %i.h, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1c_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB7_7HashMapNtNtNtBd_3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorTB15_B1y_EE9from_iterINtNtNtB2q_8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1y_ENCNvNtCs7BtpbLEd5q3_9elfshaker4show3run0EEB55_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @31)
          to label %_RNvXs3_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_11RandomStateNtNtCs3oUPovFnLWP_4core7default7Default7default.exit unwind label %bb.e ; 2 uses

_RNvXs3_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_11RandomStateNtNtCs3oUPovFnLWP_4core7default7Default7default.exit: ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  invoke void @_RINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB7_7HashMapNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNtNtNtBV_4hash6random11RandomStateEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendTBP_B1x_EE6extendINtNtNtB2X_8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1x_ENCNvNtCs7BtpbLEd5q3_9elfshaker4show3run0EEB5r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RNvXs3_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_11RandomStateNtNtCs3oUPovFnLWP_4core7default7Default7default.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvNtCs7BtpbLEd5q3_9elfshaker4show3run0EEB2O_.exit unwind label %bb.d

bb.c:                                             ; preds = %_RNvXs3_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_11RandomStateNtNtCs3oUPovFnLWP_4core7default7Default7default.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvNtCs7BtpbLEd5q3_9elfshaker4show3run0EEB2O_.exit: ; preds = %bb.e, %bb.b
  %.pn6 = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn6

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvNtCs7BtpbLEd5q3_9elfshaker4show3run0EEB2O_.exit unwind label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit(i64 noundef range(i64 8, 57) %0) unnamed_addr #4 {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.a = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 57) %0, i64 noundef 8) #23 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %0) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvNtCs7BtpbLEd5q3_9elfshaker2gc3run(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 7 uses
  %i.g = alloca [56 x i8], align 8                ; 9 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %i.i = alloca [56 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [20 x i8], align 1                ; 10 uses
  %.sroa.6198 = alloca [20 x i8], align 1         ; 11 uses
  %i.n = alloca [32 x i8], align 8                ; 10 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.655 = alloca [24 x i8], align 8          ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 14 uses
  %.sroa.8193 = alloca [16 x i8], align 8         ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 10 uses
  %i.aa = alloca [56 x i8], align 8               ; 9 uses
  %i.ab = alloca [56 x i8], align 8               ; 7 uses
  %.sroa.613 = alloca [24 x i8], align 8          ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 16 uses
  %i.ad = alloca [80 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [56 x i8], align 8            ; 7 uses
  %i.ae = alloca [80 x i8], align 8               ; 18 uses
  %i.af = alloca [40 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RINvMs0_NtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 8)
  %i.ag = call noundef align 8 ptr @_RINvMNtNtCskfBPnJUU6aB_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionRNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 8, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.j) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !6, !noundef !6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !6
  %i.al = tail call noundef zeroext i1 @_RNvMNtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 7) ; 3 uses
  %i.am = tail call noundef zeroext i1 @_RNvMNtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 15) ; 2 uses
  %i.an = tail call noundef zeroext i1 @_RNvMNtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 13) ; 6 uses
  %brmerge = or i1 %i.am, %i.an
  br i1 %brmerge, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvNtCs7BtpbLEd5q3_9elfshaker5utils18open_repo_from_cwd(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.ak)
  %i.ao = load i64, ptr %i.ad, align 8, !range !5, !noundef !6 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %i.aq, i64 56, i1 false)
  br i1 %i.ap, label %bb.h, label %bb.l

bb.e:                                             ; preds = %bb.b
  %i.ar = load atomic i64, ptr @_RNvCse7cAXHj51Pq_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 6
  tail call void @llvm.assume(i1 %i.as)
  %.not123 = icmp eq i64 %i.ar, 0
  br i1 %.not123, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr @10, ptr %i.af, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 13, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr @10, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 13, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr @9, ptr %i.aw, align 8
  call void @_RINvNtCse7cAXHj51Pq_3log13___private_api3loguNtB2_12GlobalLoggerECs7BtpbLEd5q3_9elfshaker(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 143 to ptr), i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ax = call { ptr, ptr } @_RNvXsi_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB7_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorEL_EINtNtBW_7convert4FromReE4from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 16) ; 2 uses
  %i.ay = extractvalue { ptr, ptr } %i.ax, 0
  %i.az = extractvalue { ptr, ptr } %i.ax, 1
  br label %bb.bf

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !577
  %i.ba = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 57) 56, i64 noundef 8) #23, !noalias !577 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.i, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit159, !prof !19

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #26
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.i) #24
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %.body147, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.bc, %bb.j ], [ %.pn136, %.body147 ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit159: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.cw

bb.l:                                             ; preds = %bb.d
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.580.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  store i64 %i.ao, ptr %i.ae, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br i1 %i.al, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = invoke noundef ptr @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository14lock_exclusive(ptr noundef nonnull align 8 %i.ae)
          to label %bb.o unwind label %.thread213 ; 3 uses

bb.n:                                             ; preds = %bb.o, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository11loose_packs(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ab, ptr noundef nonnull align 8 %i.ae)
          to label %bb.u unwind label %.thread213

.body147:                                         ; preds = %.body141, %.thread213, %bb.bs, %bb.cr, %bb.as, %bb.ac, %.body150, %bb.x, %bb.r, %.thread202, %1
  %.pn136 = phi { ptr, i32 } [ %i.el, %1 ], [ %.pn134205, %.thread202 ], [ %i.dn, %bb.as ], [ %i.bh, %bb.r ], [ %eh.lpad-body142, %.body141 ], [ %i.bn, %bb.x ], [ %i.gb, %bb.cr ], [ %i.em, %.body150 ], [ %i.bp, %bb.ac ], [ %lpad.thr_comm.split-lp, %bb.bs ], [ %lpad.thr_comm, %.thread213 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo10repository10RepositoryECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ae) #24
          to label %common.resume unwind label %bb.bg

bb.o:                                             ; preds = %bb.m
  %.not124 = icmp eq ptr %i.be, null
  br i1 %.not124, label %bb.n, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.be, ptr %i.a, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.bf = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 57) 8, i64 noundef 8) #23 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.q, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit149, !prof !19

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #26
          to label %.noexc160 unwind label %bb.r

.noexc160:                                        ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %.body147 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit149: ; preds = %bb.p
  store ptr %i.be, ptr %i.bf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.t

bb.t:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit149, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit
  %.sroa.12.0 = phi ptr [ %.sroa.12.4, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit ], [ @13, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit149 ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.4, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit ], [ %i.bf, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit149 ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo10repository10RepositoryECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ae)
  br label %bb.cw

bb.u:                                             ; preds = %bb.n
  %i.bj = load i64, ptr %i.ab, align 8, !range !16, !noundef !6 ; 2 uses
  %.not125 = icmp eq i64 %i.bj, -2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  br i1 %.not125, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.519.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.586.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.418.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613, i64 24, i1 false)
  store i64 %i.bj, ptr %i.h, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !578
  %i.bl = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 57) 56, i64 noundef 8) #23, !noalias !578 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.w, label %bb.cv, !prof !19

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #26
          to label %.noexc162 unwind label %bb.x

.noexc162:                                        ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h) #24
          to label %.body147 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.z:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  br i1 %i.am, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit168, %bb.z
  %.sroa.020.0 = phi i64 [ %.sroa.020.1.lcssa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit168 ], [ 0, %bb.z ] ; 4 uses
  br i1 %i.an, label %bb.am, label %bb.al

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository26find_redundant_loose_packs(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.aa, ptr noundef nonnull align 8 %i.ae)
          to label %bb.ad unwind label %.body150.a

1:                                                ; preds = %bb.az
  br i1 %i.an, label %.body147, label %.thread202

.body150.a:                                       ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.thread, %bb.cp, %bb.ab, %bb.an
  %lpad.thr_comm229 = landingpad { ptr, i32 }
          cleanup
  br label %.thread202

bb.ac:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i, %bb.al
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.an, label %.body147, label %.thread202

.body150:                                         ; preds = %bb.bb
  br i1 %i.an, label %.body147, label %.thread202

bb.ad:                                            ; preds = %bb.ab
  %i.bq = load i64, ptr %i.aa, align 8, !range !16, !noundef !6 ; 2 uses
  %.not126 = icmp eq i64 %i.bq, -2
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.087.0.copyload = load i64, ptr %i.br, align 8 ; 3 uses
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.488.0.copyload = load ptr, ptr %.sroa.488.0..sroa_idx, align 8 ; 5 uses
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.589.0.copyload = load i64, ptr %.sroa.589.0..sroa_idx, align 8 ; 4 uses
  br i1 %.not126, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.531.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.799.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 %i.bq, ptr %i.g, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.087.0.copyload, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.430.sroa.4.0..sroa.430.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.488.0.copyload, ptr %.sroa.430.sroa.4.0..sroa.430.0..sroa_idx.sroa_idx, align 8
  %.sroa.430.sroa.5.0..sroa.430.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.589.0.copyload, ptr %.sroa.430.sroa.5.0..sroa.430.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !579
  %i.bs = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 57) 56, i64 noundef 8) #23, !noalias !579 ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.af, label %bb.cu, !prof !19

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #26
          to label %.noexc164 unwind label %bb.ag

.noexc164:                                        ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g) #24
          to label %.thread202 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ai:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.bw = icmp ult i64 %.sroa.589.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.bw)
  %.idx263 = mul nuw nsw i64 %.sroa.589.0.copyload, 24
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.488.0.copyload, i64 %.idx263
  %i.by = icmp sgt i64 %.sroa.087.0.copyload, -1
  call void @llvm.assume(i1 %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %.sroa.488.0.copyload, ptr %i.z, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store ptr %.sroa.488.0.copyload, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %.sroa.087.0.copyload, ptr %.sroa.641.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  store ptr %i.bx, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8193)
  %i.bz = icmp eq i64 %.sroa.589.0.copyload, 0
  br i1 %i.bz, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.lr.ph: ; preds = %bb.ai
  %.sroa.8193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit

.body183:                                         ; preds = %.loopexit.split-lp232.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ch, %.body
  %.pn132 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ft, %bb.ch ], [ %lpad.loopexit.split-lp365, %.loopexit.split-lp232.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.thread202 unwind label %bb.bg

.loopexit.split-lp232.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i182, %bb.co
  %lpad.loopexit.split-lp365 = landingpad { ptr, i32 }
          cleanup
  br label %.body183

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit186
  %i.cd = phi ptr [ %.sroa.488.0.copyload, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.lr.ph ], [ %i.fz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit186 ] ; 3 uses
  %.sroa.020.1255 = phi i64 [ 0, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.lr.ph ], [ %i.fr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit186 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr %i.ce, ptr %.sroa.540.0..sroa_idx, align 8, !alias.scope !580
  %.sroa.0.0.copyload192 = load i64, ptr %i.cd, align 8, !noalias !580 ; 2 uses
  %.sroa.8193.0..sroa_idx194 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8193, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8193.0..sroa_idx194, i64 16, i1 false), !noalias !580
  %.not127 = icmp eq i64 %.sroa.0.0.copyload192, -1
  br i1 %.not127, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 %.sroa.0.0.copyload192, ptr %i.y, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8193.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8193, i64 16, i1 false)
  %i.cf = load ptr, ptr %i.ca, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.cg = load i64, ptr %i.cb, align 8, !noundef !6 ; 3 uses
  %.idx = mul nuw nsw i64 %i.cg, 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.ci = icmp eq i64 %i.cg, 0
  br i1 %i.ci, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aj
  %i.cj = load i64, ptr %i.cc, align 8, !alias.scope !581, !noundef !6 ; 2 uses
  %i.ck = load ptr, ptr %.sroa.8193.0..sroa_idx, align 8, !alias.scope !581, !nonnull !6
  br label %bb.ak

bb.ak:                                            ; preds = %_RNCNvNtCs7BtpbLEd5q3_9elfshaker2gc3run0B5_.exit.thread.i, %.lr.ph.i
  %.sroa.02.010.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cr, %_RNCNvNtCs7BtpbLEd5q3_9elfshaker2gc3run0B5_.exit.thread.i ] ; 3 uses
  %i.cl = phi ptr [ %i.cf, %.lr.ph.i ], [ %i.cm, %_RNCNvNtCs7BtpbLEd5q3_9elfshaker2gc3run0B5_.exit.thread.i ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cl, i64 16
  %.val7.i = load i64, ptr %i.cn, align 8, !noalias !582, !noundef !6
  %i.co = icmp eq i64 %.val7.i, %i.cj
  br i1 %i.co, label %_RNCNvNtCs7BtpbLEd5q3_9elfshaker2gc3run0B5_.exit.i, label %_RNCNvNtCs7BtpbLEd5q3_9elfshaker2gc3run0B5_.exit.thread.i

_RNCNvNtCs7BtpbLEd5q3_9elfshaker2gc3run0B5_.exit.i: ; preds = %bb.ak
  %i.cp = getelementptr i8, ptr %i.cl, i64 8
  %.val6.i = load ptr, ptr %i.cp, align 8, !noalias !582, !nonnull !6, !noundef !6
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %.val6.i, ptr nonnull %i.ck, i64 %i.cj), !noalias !582
  %i.cq = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.cq, label %bb.bu, label %_RNCNvNtCs7BtpbLEd5q3_9elfshaker2gc3run0B5_.exit.thread.i

_RNCNvNtCs7BtpbLEd5q3_9elfshaker2gc3run0B5_.exit.thread.i: ; preds = %_RNCNvNtCs7BtpbLEd5q3_9elfshaker2gc3run0B5_.exit.i, %bb.ak
  %i.cr = add nuw nsw i64 %.sroa.02.010.i, 1
  %i.cs = icmp eq ptr %i.cm, %i.ch
  br i1 %i.cs, label %.loopexit, label %bb.ak

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.thread: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit186, %bb.ai
  %.sroa.020.1.lcssa = phi i64 [ 0, %bb.ai ], [ %i.fr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit186 ], [ %.sroa.020.1255, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8193)
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit168 unwind label %.body150.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit168: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.aa

bb.al:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterAhj14_EECs7BtpbLEd5q3_9elfshaker.exit171, %bb.aa
  %.sroa.020.2 = phi i64 [ %.sroa.020.3.lcssa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterAhj14_EECs7BtpbLEd5q3_9elfshaker.exit171 ], [ %.sroa.020.0, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvNtCs7BtpbLEd5q3_9elfshaker5utils11format_size(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, i64 noundef %.sroa.020.2)
          to label %bb.ay unwind label %bb.ac

bb.am:                                            ; preds = %bb.aa
  %i.ct = load atomic i64, ptr @_RNvCse7cAXHj51Pq_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cu = icmp ult i64 %i.ct, 6
  call void @llvm.assume(i1 %i.cu)
  %i.cv = icmp samesign ugt i64 %i.ct, 2
  br i1 %i.cv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.ac, ptr %i.u, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsr_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker, ptr %.sroa.4107.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr @10, ptr %i.t, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 13, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr @10, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 13, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr @15, ptr %i.cz, align 8
  invoke void @_RINvNtCse7cAXHj51Pq_3log13___private_api3loguNtB2_12GlobalLoggerECs7BtpbLEd5q3_9elfshaker(ptr noundef nonnull @14, ptr noundef nonnull %i.u, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.t)
          to label %bb.ap unwind label %.body150.a

bb.ao:                                            ; preds = %bb.am, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.655)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.da = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.dc = load i64, ptr %i.ac, align 8, !range !9, !noundef !6
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !noundef !6 ; 2 uses
  %i.df = icmp ult i64 %i.de, 384307168202282326
  call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %i.de
  store ptr %i.db, ptr %i.q, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.dc, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.db, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.dg, ptr %i.dj, align 8
  invoke void @_RINvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB6_10Repository25find_unreferenced_objectsINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtB8_4pack6PackIdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.r, ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
          to label %bb.aq unwind label %.thread213

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ao

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.dk = load i64, ptr %i.r, align 8, !range !16, !noundef !6 ; 2 uses
  %.not128 = icmp eq i64 %i.dk, -2
  %i.dl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655, ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 24, i1 false)
  br i1 %.not128, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.561.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5113.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.460.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655, i64 24, i1 false)
  store i64 %i.dk, ptr %i.f, align 8
  %i.dm = invoke fastcc noundef ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit(i64 noundef 56)
          to label %bb.bt unwind label %bb.as     ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f) #24
          to label %.body147 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.au:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.655)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !6 ; 4 uses
  store i64 %i.dq, ptr %i.p, align 8
  %i.dr = icmp ult i64 %i.dq, 461168601842738791
  call void @llvm.assume(i1 %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.p, ptr %i.o, align 8
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4117.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6__print(ptr noundef nonnull @16, ptr noundef nonnull %i.o)
          to label %bb.av unwind label %bb.bs

.thread213:                                       ; preds = %bb.ao, %bb.cs, %bb.be, %bb.n, %bb.m, %bb.bq, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterAhj14_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body147

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.du = load i64, ptr %i.s, align 8, !range !9, !noundef !6
  %.idx264 = mul nuw nsw i64 %i.dq, 20
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.dt, ptr %i.n, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  store ptr %i.dt, ptr %.sroa.563.0..sroa_idx, align 8
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.du, ptr %.sroa.664.0..sroa_idx, align 8
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  store ptr %i.dv, ptr %.sroa.765.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6198)
  %i.dw = icmp eq i64 %i.dq, 0
  br i1 %i.dw, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterAhj14_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.av
  br i1 %i.al, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.ax
  %i.dx = phi ptr [ %i.eg, %bb.ax ], [ %i.dt, %.lr.ph ] ; 2 uses
  %.sroa.020.3257.us = phi i64 [ %i.ee, %bb.ax ], [ %.sroa.020.0, %.lr.ph ]
  call void @llvm.experimental.noalias.scope.decl(metadata !583)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  store ptr %i.dy, ptr %.sroa.563.0..sroa_idx, align 8, !alias.scope !583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.6198, ptr noundef nonnull align 1 dereferenceable(20) %i.dx, i64 20, i1 false), !noalias !583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.m, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.6198, i64 20, i1 false)
  %i.dz = invoke { i64, ptr } @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository21get_object_disk_stats(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.m)
          to label %bb.aw unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.aw:                                            ; preds = %.lr.ph.split.us
  %i.ea = extractvalue { i64, ptr } %i.dz, 0
  %i.eb = extractvalue { i64, ptr } %i.dz, 1      ; 2 uses
  %i.ec = trunc nuw i64 %i.ea to i1
  br i1 %i.ec, label %.split260.us, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = add i64 %.sroa.020.3257.us, %i.ed       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6198)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6198)
  %i.ef = load ptr, ptr %.sroa.765.0..sroa_idx, align 8, !alias.scope !584, !nonnull !6, !noundef !6
  %i.eg = load ptr, ptr %.sroa.563.0..sroa_idx, align 8, !alias.scope !584, !nonnull !6, !noundef !6 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.ef
  br i1 %i.eh, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterAhj14_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit, label %.lr.ph.split.us

.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.split.us, %.lr.ph.split, %bb.bk
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body141

.body141:                                         ; preds = %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bo, %bb.bi
  %eh.lpad-body142 = phi { ptr, i32 } [ %i.ev, %bb.bi ], [ %i.fe, %bb.bo ], [ %lpad.loopexit.split-lp, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %.body147 unwind label %bb.bg

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.bl
  %i.ei = phi ptr [ %i.fb, %bb.bl ], [ %i.dt, %.lr.ph ] ; 2 uses
  %.sroa.020.3257 = phi i64 [ %i.ey, %bb.bl ], [ %.sroa.020.0, %.lr.ph ]
  call void @llvm.experimental.noalias.scope.decl(metadata !583)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 20
  store ptr %i.ej, ptr %.sroa.563.0..sroa_idx, align 8, !alias.scope !583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.6198, ptr noundef nonnull align 1 dereferenceable(20) %i.ei, i64 20, i1 false), !noalias !583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.m, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.6198, i64 20, i1 false)
  %i.ek = invoke { i64, ptr } @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository21get_object_disk_stats(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.m)
          to label %bb.bh unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterAhj14_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.bl, %bb.ax, %bb.av
  %.sroa.020.3.lcssa = phi i64 [ %.sroa.020.0, %bb.av ], [ %i.ee, %bb.ax ], [ %i.ey, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6198)
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterAhj14_EECs7BtpbLEd5q3_9elfshaker.exit171 unwind label %.thread213

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterAhj14_EECs7BtpbLEd5q3_9elfshaker.exit171: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterAhj14_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.al

bb.ay:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsq_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.4121.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6__print(ptr noundef nonnull @17, ptr noundef nonnull %i.k)
          to label %bb.ba unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #24
          to label %1 unwind label %bb.bg

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body150 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.ba
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.ac

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %i.an, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.be, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo10repository10RepositoryECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.bf

bb.be:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac)
          to label %bb.bd unwind label %.thread213

bb.bf:                                            ; preds = %bb.g, %bb.cw, %bb.bd
  %.sroa.12.1 = phi ptr [ %.sroa.12.7, %bb.cw ], [ undef, %bb.bd ], [ %i.az, %bb.g ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.7, %bb.cw ], [ null, %bb.bd ], [ %i.ay, %bb.g ]
  %i.eo = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1, 0
  %i.ep = insertvalue { ptr, ptr } %i.eo, ptr %.sroa.12.1, 1
  ret { ptr, ptr } %i.ep

bb.bg:                                            ; preds = %.body141, %.body183, %.thread202, %.body, %bb.bs, %bb.az, %.body147
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.bh:                                            ; preds = %.lr.ph.split
  %i.er = extractvalue { i64, ptr } %i.ek, 0
  %i.es = extractvalue { i64, ptr } %i.ek, 1      ; 2 uses
  %i.et = trunc nuw i64 %i.er to i1
  br i1 %i.et, label %.split260.us, label %bb.bk

.split260.us:                                     ; preds = %bb.bh, %bb.aw
  %.us-phi261 = phi ptr [ %i.eb, %bb.aw ], [ %i.es, %bb.bh ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.us-phi261, ptr %i.b, align 8
  %i.eu = invoke fastcc noundef ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit(i64 noundef 8)
          to label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit146 unwind label %bb.bi ; 2 uses

bb.bi:                                            ; preds = %.split260.us
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %.body141 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit146: ; preds = %.split260.us
  store ptr %.us-phi261, ptr %i.eu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bq

bb.bk:                                            ; preds = %bb.bh
  %i.ex = ptrtoint ptr %i.es to i64
  %i.ey = add i64 %.sroa.020.3257, %i.ex          ; 2 uses
  %i.ez = invoke noundef ptr @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository13delete_object(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.m)
          to label %bb.bm unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.bl:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6198)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6198)
  %i.fa = load ptr, ptr %.sroa.765.0..sroa_idx, align 8, !alias.scope !584, !nonnull !6, !noundef !6
  %i.fb = load ptr, ptr %.sroa.563.0..sroa_idx, align 8, !alias.scope !584, !nonnull !6, !noundef !6 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.fa
  br i1 %i.fc, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterAhj14_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit, label %.lr.ph.split

bb.bm:                                            ; preds = %bb.bk
  %.not129 = icmp eq ptr %i.ez, null
  br i1 %.not129, label %bb.bl, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ez, ptr %i.c, align 8
  %i.fd = invoke fastcc noundef ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit(i64 noundef 8)
          to label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit143 unwind label %bb.bo ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #24
          to label %.body141 unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit143: ; preds = %bb.bn
  store ptr %i.ez, ptr %i.fd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bq

bb.bq:                                            ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit146, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit143
  %.sroa.0.2 = phi ptr [ %i.fd, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit143 ], [ %i.eu, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit146 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6198)
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %bb.br unwind label %.thread213

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit

bb.bs:                                            ; preds = %bb.au
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecAhj14_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #24
          to label %.body147 unwind label %bb.bg

bb.bt:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dm, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.655)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.cs, %bb.br, %bb.cv, %bb.bt
  %.sroa.12.4 = phi ptr [ @19, %bb.cv ], [ @19, %bb.bt ], [ @13, %bb.br ], [ %.sroa.12.6, %bb.cs ]
  %.sroa.0.4 = phi ptr [ %i.bl, %bb.cv ], [ %i.dm, %bb.bt ], [ %.sroa.0.2, %bb.br ], [ %.sroa.0.6, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.t

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i, %bb.cf, %bb.cd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit, %bb.bu, %.loopexit
  %lpad.loopexit.split-lp362 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cl, %bb.cb, %bb.bx
  %eh.lpad-body = phi { ptr, i32 } [ %i.fo, %bb.cb ], [ %i.fh, %bb.bx ], [ %i.fw, %bb.cl ], [ %lpad.loopexit.split-lp362, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #24
          to label %.body183 unwind label %bb.bg

bb.bu:                                            ; preds = %_RNCNvNtCs7BtpbLEd5q3_9elfshaker2gc3run0B5_.exit.i
  %i.fg = icmp ult i64 %.sroa.02.010.i, %i.cg
  call void @llvm.assume(i1 %i.fg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdE6removeCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %.sroa.02.010.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %bb.aj, %_RNCNvNtCs7BtpbLEd5q3_9elfshaker2gc3run0B5_.exit.thread.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #26
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bv:                                            ; preds = %.loopexit
  unreachable

bb.bw:                                            ; preds = %bb.bu
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.bw
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.fj = invoke { i64, ptr } @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository19get_pack_disk_stats(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit
  %i.fk = extractvalue { i64, ptr } %i.fj, 0
  %i.fl = extractvalue { i64, ptr } %i.fj, 1      ; 3 uses
  %i.fm = trunc nuw i64 %i.fk to i1
  br i1 %i.fm, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.fl, ptr %i.d, align 8
  %i.fn = invoke fastcc noundef ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit(i64 noundef 8)
          to label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit140 unwind label %bb.cb ; 2 uses

bb.cb:                                            ; preds = %bb.ca
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #24
          to label %.body unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit140: ; preds = %bb.ca
  store ptr %i.fl, ptr %i.fn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.co

bb.cd:                                            ; preds = %bb.bz
  %i.fq = ptrtoint ptr %i.fl to i64
  %i.fr = add i64 %.sroa.020.1255, %i.fq          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.y, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.w, ptr %i.v, align 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs1xwejQucwHj_5alloc6string6StringNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker, ptr %.sroa.4103.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6__print(ptr noundef nonnull @22, ptr noundef nonnull %i.v)
          to label %bb.ce unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br i1 %i.al, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fs = invoke noundef ptr @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository11delete_pack(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %bb.cj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.cg:                                            ; preds = %bb.cj, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i182 unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body183 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i182: ; preds = %bb.cg
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit186 unwind label %.loopexit.split-lp232.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cj:                                            ; preds = %bb.cf
  %.not131 = icmp eq ptr %i.fs, null
  br i1 %.not131, label %bb.cg, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.fs, ptr %i.e, align 8
  %i.fv = invoke fastcc noundef ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit(i64 noundef 8)
          to label %bb.cn unwind label %bb.cl     ; 2 uses

bb.cl:                                            ; preds = %bb.ck
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #24
          to label %.body unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.cn:                                            ; preds = %bb.ck
  store ptr %i.fs, ptr %i.fv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.co

bb.co:                                            ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit140, %bb.cn
  %.sroa.0.5 = phi ptr [ %i.fv, %bb.cn ], [ %i.fn, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit140 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y)
          to label %bb.cp unwind label %.loopexit.split-lp232.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker.exit186: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8193)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8193)
  %i.fy = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !585, !nonnull !6, !noundef !6
  %i.fz = load ptr, ptr %.sroa.540.0..sroa_idx, align 8, !alias.scope !585, !nonnull !6, !noundef !6 ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.fy
  br i1 %i.ga, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8193)
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.thread217 unwind label %.body150.a

.thread217:                                       ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.cq

bb.cq:                                            ; preds = %.thread217, %bb.cu
  %.sroa.12.6 = phi ptr [ @19, %bb.cu ], [ @13, %.thread217 ]
  %.sroa.0.6 = phi ptr [ %i.bs, %bb.cu ], [ %.sroa.0.5, %.thread217 ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.cs unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body147 unwind label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit unwind label %.thread213

bb.ct:                                            ; preds = %bb.cr
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.cu:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bs, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.cq

.thread202:                                       ; preds = %.body150.a, %.body183, %bb.ag, %bb.ac, %.body150, %1
  %.pn134205 = phi { ptr, i32 } [ %i.bu, %bb.ag ], [ %i.el, %1 ], [ %i.em, %.body150 ], [ %i.bp, %bb.ac ], [ %.pn132, %.body183 ], [ %lpad.thr_comm229, %.body150.a ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #24
          to label %.body147 unwind label %bb.bg

bb.cv:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit

bb.cw:                                            ; preds = %bb.t, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit159
  %.sroa.12.7 = phi ptr [ @19, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit159 ], [ %.sroa.12.0, %bb.t ]
  %.sroa.0.7 = phi ptr [ %i.ba, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorE3newCs7BtpbLEd5q3_9elfshaker.exit159 ], [ %.sroa.0.0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.bf
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs7BtpbLEd5q3_9elfshaker2gc7get_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i28 = alloca [16 x i8], align 8        ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i12 = alloca [16 x i8], align 8        ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 5 uses
  %i.d = alloca [640 x i8], align 8               ; 5 uses
  %i.e = alloca [640 x i8], align 8               ; 7 uses
  %i.f = alloca [640 x i8], align 8               ; 9 uses
  %i.g = alloca [640 x i8], align 8               ; 6 uses
  %i.h = alloca [640 x i8], align 8               ; 5 uses
  %i.i = alloca [640 x i8], align 8               ; 7 uses
  %i.j = alloca [640 x i8], align 8               ; 9 uses
  %i.k = alloca [640 x i8], align 8               ; 6 uses
  %i.l = alloca [640 x i8], align 8               ; 7 uses
  %i.m = alloca [640 x i8], align 8               ; 9 uses
  %i.n = alloca [640 x i8], align 8               ; 6 uses
  %i.o = alloca [712 x i8], align 8               ; 4 uses
  %i.p = alloca [712 x i8], align 8               ; 5 uses
  %i.q = alloca [712 x i8], align 8               ; 5 uses
  %i.r = alloca [712 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RINvMNtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB3_7Command3newReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 2)
  call void @_RINvMs0_NtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB6_7Command5aboutReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 101)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RINvMNtNtCskfBPnJUU6aB_12clap_builder7builder3argNtB3_3Arg3newReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([640 x i8]) align 8 captures(address) dereferenceable(640) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 7)
          to label %bb.b unwind label %.body.thread58

.body.thread58:                                   ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.t = invoke { ptr, i64 } @_RNvXsj_NtNtCskfBPnJUU6aB_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_3str3StrE15into_resettableCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 7)
          to label %bb.e unwind label %bb.c, !noalias !630 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(640) %i.l) #24
          to label %.body.thread unwind label %bb.d, !noalias !628

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !628
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.w = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  %i.y = extractvalue { ptr, i64 } %i.t, 1
  %.sroa.5.0.i = select i1 %i.x, i64 undef, i64 %i.y
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 592
  store ptr %i.w, ptr %i.z, align 8, !alias.scope !629
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 600
  store i64 %.sroa.5.0.i, ptr %i.aa, align 8, !alias.scope !629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.m, ptr noundef nonnull align 8 dereferenceable(640) %i.l, i64 640, i1 false), !alias.scope !630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !632
  invoke void @_RNvXsh_NtNtCskfBPnJUU6aB_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 32)
          to label %bb.h unwind label %bb.g, !noalias !633

bb.f:                                             ; preds = %.body.i, %bb.g
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.ab, %bb.g ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(640) %i.m) #24
          to label %.body.thread unwind label %bb.o, !noalias !634

bb.g:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %i.c, align 8, !range !5, !noalias !632, !noundef !6 ; 3 uses
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i64 16, i1 false), !noalias !632
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !632
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 488 ; 6 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !5, !alias.scope !635, !noundef !6
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.l, !noalias !634

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body.i unwind label %bb.m, !noalias !634

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !634
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.p unwind label %bb.n, !noalias !634

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.ah, %bb.l ]
  store i64 %i.ac, ptr %i.ae, align 8, !alias.scope !631
  %.sroa.6.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.m, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !636
  br label %bb.f

bb.o:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !634
  unreachable

bb.p:                                             ; preds = %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i.i
  store i64 %i.ac, ptr %i.ae, align 8, !alias.scope !631
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.m, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !636
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(636) %i.n, ptr noundef nonnull align 8 dereferenceable(636) %i.m, i64 636, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 637
  %.sroa.5.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.n, i64 637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx42, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.sroa.4.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.n, i64 636
  store i8 2, ptr %.sroa.4.0..sroa_idx40, align 4, !alias.scope !637
  call void @_RINvMNtNtCskfBPnJUU6aB_12clap_builder7builder7commandNtB3_7Command3argNtNtB5_3arg3ArgECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RINvMNtNtCskfBPnJUU6aB_12clap_builder7builder3argNtB3_3Arg3newReECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([640 x i8]) align 8 captures(address) dereferenceable(640) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 15)
          to label %bb.q unwind label %.body9.thread63

.body9.thread63:                                  ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body9.thread

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 624
  store i32 115, ptr %i.am, align 8, !alias.scope !639
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.i, ptr noundef nonnull align 8 dereferenceable(640) %i.h, i64 640, i1 false), !alias.scope !640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !641)
  call void @llvm.experimental.noalias.scope.decl(metadata !642)
  %i.an = invoke { ptr, i64 } @_RNvXsj_NtNtCskfBPnJUU6aB_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_3str3StrE15into_resettableCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 15)
          to label %bb.t unwind label %bb.r, !noalias !643 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(640) %i.i) #24
end_hunk_0
