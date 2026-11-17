Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_catalog_unity-3798fba31c5b02c8.deltalake_catalog_unity.c3c83283175c5f03-cgu.15?download=true
inline.NumInlined: 983
inline.NumDeleted: 505
begin_hunk_0_@_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2M_19UnityCatalogBuilder17execute_uc_futureNCNvB2I_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5m_B5m_EENtB2M_17UnityCatalogErrorEE0B4J_E00ENtNtB15_8schedule16BlockingScheduleEB2M_:bb.a
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1132
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !14, !noalias !1132, !noundef !6
  %i.g = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.f)
          to label %bb.b unwind label %bb.e, !noalias !1132

bb.b:                                             ; preds = %bb.a
  store i64 %i.g, ptr %i.a, align 8, !noalias !1132
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3j_19UnityCatalogBuilder17execute_uc_futureNCNvB3f_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5D_B5D_EENtB3j_17UnityCatalogErrorEE0B5g_E00EEEB3j_(ptr noalias noundef align 8 dereferenceable(32) %i.h)
          to label %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB1i_8blocking4task12BlockingTaskNCNCINvNtNtNtB1i_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB40_19UnityCatalogBuilder17execute_uc_futureNCNvB3W_25get_uc_location_and_token0INtNtB9_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6k_B6k_EENtB40_17UnityCatalogErrorEE0B5X_E00ENtNtB2h_8schedule16BlockingScheduleE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB40_.exit.i unwind label %bb.c, !noalias !1132

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.d, !noalias !1132

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3j_19UnityCatalogBuilder17execute_uc_futureNCNvB3f_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5D_B5D_EENtB3j_17UnityCatalogErrorEE0B5g_E00EEEB3j_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #29
          to label %.body unwind label %bb.d

_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB1i_8blocking4task12BlockingTaskNCNCINvNtNtNtB1i_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB40_19UnityCatalogBuilder17execute_uc_futureNCNvB3W_25get_uc_location_and_token0INtNtB9_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6k_B6k_EENtB40_17UnityCatalogErrorEE0B5X_E00ENtNtB2h_8schedule16BlockingScheduleE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB40_.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB1i_8blocking4task12BlockingTaskNCNCINvNtNtNtB1i_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB40_19UnityCatalogBuilder17execute_uc_futureNCNvB3W_25get_uc_location_and_token0INtNtB9_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6k_B6k_EENtB40_17UnityCatalogErrorEE0B5X_E00ENtNtB2h_8schedule16BlockingScheduleE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB40_.exit.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.i, %bb.c ], [ %i.k, %bb.e ]
  %i.m = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.n = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.m)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #30
  unreachable

bb.h:                                             ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB1i_8blocking4task12BlockingTaskNCNCINvNtNtNtB1i_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB40_19UnityCatalogBuilder17execute_uc_futureNCNvB3W_25get_uc_location_and_token0INtNtB9_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6k_B6k_EENtB40_17UnityCatalogErrorEE0B5X_E00ENtNtB2h_8schedule16BlockingScheduleE0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB40_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %.body
  %i.p = extractvalue { ptr, ptr } %i.n, 0
  %i.q = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.8.0 = phi ptr [ undef, %bb.h ], [ %i.q, %bb.i ]
  %.sroa.6.0 = phi ptr [ null, %bb.h ], [ %i.p, %bb.i ]
  %.sroa.01.0 = load i64, ptr %i.e, align 8, !range !14, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.01.0, ptr %i.r, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.8.0, ptr %.sroa.63.0..sroa_idx, align 8
  store i32 1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1133
  %i.s = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %.sroa.01.0)
          to label %bb.k unwind label %bb.n, !noalias !1133

bb.k:                                             ; preds = %bb.j
  store i64 %i.s, ptr %i.c, align 8, !noalias !1133
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3j_19UnityCatalogBuilder17execute_uc_futureNCNvB3f_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5D_B5D_EENtB3j_17UnityCatalogErrorEE0B5g_E00EEEB3j_(ptr noalias noundef align 8 dereferenceable(32) %i.t)
          to label %_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2K_19UnityCatalogBuilder17execute_uc_futureNCNvB2G_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5k_B5k_EENtB2K_17UnityCatalogErrorEE0B4H_E00ENtNtB13_8schedule16BlockingScheduleE9set_stageB2K_.exit unwind label %bb.l, !noalias !1133

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.thread.i unwind label %bb.m, !noalias !1133

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

.thread.i:                                        ; preds = %bb.n, %bb.l
  %.pn6.i = phi { ptr, i32 } [ %i.u, %bb.l ], [ %i.w, %bb.n ]
  resume { ptr, i32 } %.pn6.i

bb.n:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3j_19UnityCatalogBuilder17execute_uc_futureNCNvB3f_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5D_B5D_EENtB3j_17UnityCatalogErrorEE0B5g_E00EEEB3j_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #29
          to label %.thread.i unwind label %bb.m

_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2K_19UnityCatalogBuilder17execute_uc_futureNCNvB2G_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5k_B5k_EENtB2K_17UnityCatalogErrorEE0B4H_E00ENtNtB13_8schedule16BlockingScheduleE9set_stageB2K_.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !1133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 !guid !1134 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB22_5impls13OptionVisitorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models13GcpOauthTokenENtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB1p_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 !guid !1135 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB22_5impls13OptionVisitorNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models13GcpOauthTokenEEB3D_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models14ColumnTypeNameENtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB1p_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 !guid !1136 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB22_5impls13OptionVisitorNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models14ColumnTypeNameEEB3D_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models17R2TempCredentialsENtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB1p_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 !guid !1137 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB22_5impls13OptionVisitorNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models17R2TempCredentialsEEB3D_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18AwsTempCredentialsENtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB1p_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 !guid !1138 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB22_5impls13OptionVisitorNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18AwsTempCredentialsEEB3D_(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models22AzureUserDelegationSasENtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEB1p_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 !guid !1139 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB22_5impls13OptionVisitorNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models22AzureUserDelegationSasEEB3D_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtNtCs1gOyXocuPRE_10serde_core2de5implsINtNtCsbvkFyIu7lgC_4core6option6OptionlENtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 !guid !1140 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_optionINtNtB22_5impls13OptionVisitorlEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RINvYINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtCs7IXFa44uZj7_9rand_core7RngCoreNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1d_4SendEL_ENtNtCsiGwHUc8edKX_4rand3rng3Rng12random_rangedINtNtNtB1f_3ops5range5RangedEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, double noundef %1, double noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1151 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = fcmp uge double %1, %2
  br i1 %i.b, label %bb.d, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.c = fsub double %2, %1                       ; 2 uses
  %i.d = tail call double @llvm.fabs.f64(double %i.c)
  %i.e = fcmp ueq double %i.d, +inf
  br i1 %i.e, label %bb.c, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultdNtNtNtCsiGwHUc8edKX_4rand5distr7uniform5ErrorE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1152
  store i8 1, ptr %i.a, align 1, !noalias !1152
  call void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #28, !noalias !1153
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultdNtNtNtCsiGwHUc8edKX_4rand5distr7uniform5ErrorE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %.val3 = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %.val4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !6, !noalias !1154, !nonnull !6
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull %.val3) #33, !noalias !1154, !inline_history !1150
  %i.j = lshr i64 %i.i, 12
  %i.k = or disjoint i64 %i.j, 4607182418800017408
  %i.l = bitcast i64 %i.k to double
  %i.m = fadd nnan double %i.l, -1.000000e+00
  %i.n = fmul double %i.c, %i.m
  %i.o = fadd double %1, %i.n
  ret double %i.o

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RINvYNtNtNtCsiGwHUc8edKX_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng12random_rangedINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangedEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, double noundef %1, double noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1180 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = fcmp uge double %1, %2
  br i1 %i.b, label %bb.m, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %.val3 = load ptr, ptr %0, align 8              ; 8 uses
  %i.c = fsub double %2, %1                       ; 2 uses
  %i.d = tail call double @llvm.fabs.f64(double %i.c)
  %i.e = fcmp ueq double %i.d, +inf
  br i1 %i.e, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.f = getelementptr inbounds nuw i8, ptr %.val3, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val3, i64 336 ; 4 uses
  %i.h = load i64, ptr %i.g, align 16, !alias.scope !1181, !noalias !1182, !noundef !6 ; 4 uses
  %i.i = icmp ult i64 %i.h, 63
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq i64 %i.h, 63
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.j = add nuw nsw i64 %i.h, 2
  store i64 %i.j, ptr %i.g, align 16, !alias.scope !1181, !noalias !1182
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  %i.l = load i64, ptr %i.k, align 4, !alias.scope !1183, !noalias !1182
  br label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultdNtNtNtCsiGwHUc8edKX_4rand5distr7uniform5ErrorE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val3, i64 268
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !1181, !noalias !1182, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %.val3, i64 272 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val3, i64 328 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1184, !noalias !1182, !noundef !6 ; 2 uses
  %i.r = icmp slt i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add nsw i64 %i.q, -256
  store i64 %i.s, ptr %i.p, align 8, !alias.scope !1184, !noalias !1182
  tail call void @_RNvNtCs1IxGnkr6Bji_11rand_chacha4guts11refill_wide(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.o, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.f), !noalias !1182
  br label %_RNvMs_NtCs7IXFa44uZj7_9rand_core5blockINtB4_8BlockRngINtNtNtCsiGwHUc8edKX_4rand4rngs9reseeding13ReseedingCoreNtNtCs1IxGnkr6Bji_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvMs3_NtNtCsiGwHUc8edKX_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCs1IxGnkr6Bji_11rand_chacha6chacha12ChaCha12CoreNtNtCs7IXFa44uZj7_9rand_core2os5OsRngE19reseed_and_generateCsjyY8HP3IvQ6_12object_store(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.o, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.f) #32, !noalias !1182
  br label %_RNvMs_NtCs7IXFa44uZj7_9rand_core5blockINtB4_8BlockRngINtNtNtCsiGwHUc8edKX_4rand4rngs9reseeding13ReseedingCoreNtNtCs1IxGnkr6Bji_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i

_RNvMs_NtCs7IXFa44uZj7_9rand_core5blockINtB4_8BlockRngINtNtNtCsiGwHUc8edKX_4rand4rngs9reseeding13ReseedingCoreNtNtCs1IxGnkr6Bji_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  store i64 1, ptr %i.g, align 16, !alias.scope !1185, !noalias !1182
  %i.t = zext i32 %i.n to i64
  %i.u = load i32, ptr %i.f, align 16, !alias.scope !1181, !noalias !1182, !noundef !6
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw i64 %i.v, 32
  %i.x = or disjoint i64 %i.w, %i.t
  br label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultdNtNtNtCsiGwHUc8edKX_4rand5distr7uniform5ErrorE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.i:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.val3, i64 272 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val3, i64 328 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1186, !noalias !1182, !noundef !6 ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 1
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = add nsw i64 %i.aa, -256
  store i64 %i.ac, ptr %i.z, align 8, !alias.scope !1186, !noalias !1182
  tail call void @_RNvNtCs1IxGnkr6Bji_11rand_chacha4guts11refill_wide(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.y, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.f), !noalias !1182
  br label %_RNvMs_NtCs7IXFa44uZj7_9rand_core5blockINtB4_8BlockRngINtNtNtCsiGwHUc8edKX_4rand4rngs9reseeding13ReseedingCoreNtNtCs1IxGnkr6Bji_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvMs3_NtNtCsiGwHUc8edKX_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCs1IxGnkr6Bji_11rand_chacha6chacha12ChaCha12CoreNtNtCs7IXFa44uZj7_9rand_core2os5OsRngE19reseed_and_generateCsjyY8HP3IvQ6_12object_store(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.y, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.f) #32, !noalias !1182
  br label %_RNvMs_NtCs7IXFa44uZj7_9rand_core5blockINtB4_8BlockRngINtNtNtCsiGwHUc8edKX_4rand4rngs9reseeding13ReseedingCoreNtNtCs1IxGnkr6Bji_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i.i.i.i.i.i

_RNvMs_NtCs7IXFa44uZj7_9rand_core5blockINtB4_8BlockRngINtNtNtCsiGwHUc8edKX_4rand4rngs9reseeding13ReseedingCoreNtNtCs1IxGnkr6Bji_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  store i64 2, ptr %i.g, align 16, !alias.scope !1187, !noalias !1182
  %i.ad = load i64, ptr %i.f, align 16, !alias.scope !1188, !noalias !1182
  br label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultdNtNtNtCsiGwHUc8edKX_4rand5distr7uniform5ErrorE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1189
  store i8 1, ptr %i.a, align 1, !noalias !1189
  call void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #28, !noalias !1190
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultdNtNtNtCsiGwHUc8edKX_4rand5distr7uniform5ErrorE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMs_NtCs7IXFa44uZj7_9rand_core5blockINtB4_8BlockRngINtNtNtCsiGwHUc8edKX_4rand4rngs9reseeding13ReseedingCoreNtNtCs1IxGnkr6Bji_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i.i.i.i.i.i, %_RNvMs_NtCs7IXFa44uZj7_9rand_core5blockINtB4_8BlockRngINtNtNtCsiGwHUc8edKX_4rand4rngs9reseeding13ReseedingCoreNtNtCs1IxGnkr6Bji_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i, %bb.e
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.l, %bb.e ], [ %i.ad, %_RNvMs_NtCs7IXFa44uZj7_9rand_core5blockINtB4_8BlockRngINtNtNtCsiGwHUc8edKX_4rand4rngs9reseeding13ReseedingCoreNtNtCs1IxGnkr6Bji_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i.i.i.i.i.i ], [ %i.x, %_RNvMs_NtCs7IXFa44uZj7_9rand_core5blockINtB4_8BlockRngINtNtNtCsiGwHUc8edKX_4rand4rngs9reseeding13ReseedingCoreNtNtCs1IxGnkr6Bji_11rand_chacha6chacha12ChaCha12CoreNtNtB6_2os5OsRngEE16generate_and_setCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i ]
  %i.ae = lshr i64 %.sroa.0.0.i.i.i.i.i.i, 12
  %i.af = or disjoint i64 %i.ae, 4607182418800017408
  %i.ag = bitcast i64 %i.af to double
  %i.ah = fadd nnan double %i.ag, -1.000000e+00
  %i.ai = fmul double %i.c, %i.ah
  %i.aj = fadd double %1, %i.ai
  ret double %i.aj

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEEs_0CsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef nonnull writable align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(184) %1) unnamed_addr #3 personality ptr @rust_eh_personality !guid !1231 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [136 x i8], align 8               ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [120 x i8], align 8               ; 7 uses
  %i.g = alloca [128 x i8], align 8               ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [128 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.i, ptr noundef nonnull align 8 dereferenceable(120) %i.l, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1232
  invoke void @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11set_default(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.u, !noalias !1233

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 128, i1 false), !noalias !1234
  call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1235, !noalias !1232, !nonnull !6, !align !20, !noundef !6 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  %i.o = load i64, ptr %i.n, align 8, !range !12, !alias.scope !1236, !noalias !1237, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.o, 2
  br i1 %.not.i.i.i, label %.noexc3.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %.noexc3.i.i unwind label %bb.r, !noalias !1237

.noexc3.i.i:                                      ; preds = %bb.c, %bb.b
  %i.q = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1238
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i.i

bb.d:                                             ; preds = %.noexc3.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1236, !noalias !1237, !align !20, !noundef !6 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not4.i.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1239
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !noalias !1237, !nonnull !6, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.x = load i64, ptr %i.w, align 8, !noalias !1237, !noundef !6
  store ptr %i.v, ptr %i.e, align 8, !noalias !1239
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !1239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1239
  store ptr %i.e, ptr %i.d, align 8, !noalias !1239
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !1239
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 21, ptr noundef nonnull @21, ptr noundef nonnull %i.d) #33
          to label %.noexc4.i.i unwind label %bb.r

.noexc4.i.i:                                      ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1239
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i.i: ; preds = %.noexc4.i.i, %bb.d, %.noexc3.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 120, i1 false), !noalias !1234
  call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1238
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.z, ptr noundef nonnull align 8 dereferenceable(88) %i.aa, i64 88, i1 false), !noalias !1234
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr null, ptr %i.ab, align 8, !noalias !1241
  store i64 0, ptr %i.c, align 8, !noalias !1241
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.ac, align 8, !noalias !1241
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1241
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1241
  %i.ad = load i64, ptr %i.f, align 8, !range !7, !alias.scope !1240, !noalias !1238, !noundef !6
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ah = load i64, ptr %i.af, align 8, !alias.scope !1240, !noalias !1238, !noundef !6
  store i64 1, ptr %i.c, align 8, !noalias !1241
  store i64 %i.ah, ptr %i.ag, align 8, !noalias !1241
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !1240, !noalias !1238, !nonnull !6, !noundef !6 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !1240, !noalias !1238, !nonnull !6, !align !20, !noundef !6 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !16, !invariant.load !6, !noalias !1242
  %i.ao = add nsw i64 %i.an, -1
  %i.ap = and i64 %i.ao, -16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  invoke void @_RNvMNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot7builderNtB2_15SnapshotBuilder5build(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.c, ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.al)
          to label %bb.j unwind label %bb.h, !noalias !1243

bb.h:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !noalias !1244
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.i, label %.body.i.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai) #32
          to label %.body.i.i unwind label %bb.l, !noalias !1245

bb.j:                                             ; preds = %bb.g
  %i.av = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !noalias !1246
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai) #32
          to label %bb.n unwind label %bb.m, !noalias !1237

bb.l:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !1245
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.m, %bb.i, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %i.as, %bb.i ], [ %i.as, %bb.h ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.n) #29
          to label %.body.i unwind label %bb.q, !noalias !1237

bb.n:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1238
  call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  %i.az = load i64, ptr %i.n, align 8, !range !12, !alias.scope !1247, !noalias !1248, !noundef !6
  %.not.i.i.i.i.i = icmp eq i64 %i.az, 2
  br i1 %.not.i.i.i.i.i, label %.noexc7.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba)
          to label %.noexc7.i.i unwind label %bb.s, !noalias !1233

.noexc7.i.i:                                      ; preds = %bb.o, %bb.n
  %i.bb = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1249
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.p, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEEs_00CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.p:                                             ; preds = %.noexc7.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !1247, !noalias !1248, !align !20, !noundef !6 ; 3 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not4.i.i.i.i.i, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB6_8snapshotNtB1g_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3k_5error5ErrorEEs_00CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %.noexc8.i.i

.noexc8.i.i:                                      ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1250
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !1248, !nonnull !6, !noundef !6
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !1248, !noundef !6
  store ptr %i.bg, ptr %i.b, align 8, !noalias !1250
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !noalias !1250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1250
  store ptr %i.b, ptr %i.a, align 8, !noalias !1250
  %.sroa.43.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1250
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 21, ptr noundef nonnull @19, ptr noundef nonnull %i.a) #33
          to label %.noexc3.i unwind label %bb.s

.noexc3.i:                                        ; preds = %.noexc8.i.i
end_hunk_0
