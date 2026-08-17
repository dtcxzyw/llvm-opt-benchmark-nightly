inline.NumInlined: 1084
inline.NumDeleted: 543
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3g_4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %i.f = load i64, ptr %i.e, align 8, !range !189, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #21
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBX_DNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3e_4SendEL_EB3c_B3v_EL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !188, !invariant.load !3 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB29_6marker4SyncNtB2G_4SendEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !189, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #21
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB29_6marker4SyncNtB2G_4SendEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBy_DNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB29_6marker4SyncNtB2G_4SendEL_EB2E_B2Y_EL_ENtNtNtB29_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtCs574AjYkQ1m0_9http_body4Bodyp4DataNtNtCs9Ct3XQYJhun_5bytes5bytes5Bytesp5ErrorIBX_DNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3e_4SendEL_EB3c_B3v_EL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEBN_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6handle6HandleEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs3_NtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB7_6handle6HandleEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !374, !nonnull !3, !noundef !3
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !374
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queue5InnerIBH_NtNtB1j_6handle6HandleEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queue5InnerIBH_NtNtB1j_6handle6HandleEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !381, !nonnull !3, !noundef !3
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !381
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queue5InnerIBH_NtNtB1j_6handle6HandleEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit1

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queue5InnerIBx_NtNtBL_6handle6HandleEEE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #25
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queue5InnerIBH_NtNtB1j_6handle6HandleEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit1

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queue5InnerIBH_NtNtB1j_6handle6HandleEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit1: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread5queue5InnerIBH_NtNtB1j_6handle6HandleEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvNtCs2pqxYH9ZEk8_3std2io17default_write_fmt7AdapterNtNtNtNtBN_3sys5stdio4unix6StderrEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = load i8, ptr %i.a, align 8, !range !382, !noundef !3
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret:                                       ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(136) %0)
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.c)
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models28TableTempCredentialsResponseE0EB1U_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = load i8, ptr %i.a, align 8, !range !382, !noundef !3
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret:                                       ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(136) %0)
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.c)
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog42get_temp_table_credentials_with_permissionReB2t_B2t_B2t_E0EBP_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 391
  %i.b = load i8, ptr %i.a, align 1, !range !383, !noundef !3
  switch i8 %i.b, label %common.ret [
    i8 6, label %bb.p
    i8 3, label %bb.b
    i8 4, label %bb.d
    i8 5, label %bb.o
  ]

common.ret:                                       ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.d = load i8, ptr %i.c, align 8, !range !382, !noundef !3
  %cond.i = icmp eq i8 %i.d, 3
  br i1 %cond.i, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5tokenINtBO_10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringE18get_or_insert_withNCNCNvMs5_BS_NtBS_12UnityCatalog14get_credential00INtNtB4_3pin3PinINtNtB24_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtBO_14TemporaryTokenB20_ENtBS_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEB5K_E0EBS_(ptr noundef nonnull align 8 %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit unwind label %bb.s

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 506
  %i.g = load i8, ptr %i.f, align 2, !range !384, !noundef !3
  switch i8 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog9get_tableReB1V_B1V_E0EBP_.exit [
    i8 5, label %bb.h
    i8 3, label %bb.e
    i8 4, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.i = load i8, ptr %i.h, align 8, !range !382, !noundef !3
  %cond.i.i = icmp eq i8 %i.i, 3
  br i1 %cond.i.i, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog9get_tableReB1V_B1V_E0EBP_.exit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 520
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5tokenINtBO_10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringE18get_or_insert_withNCNCNvMs5_BS_NtBS_12UnityCatalog14get_credential00INtNtB4_3pin3PinINtNtB24_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtBO_14TemporaryTokenB20_ENtBS_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEB5K_E0EBS_(ptr noundef nonnull align 8 %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog9get_tableReB1V_B1V_E0EBP_.exit.sink.split unwind label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs2_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtBO_14RequestBuilder4send0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit.i unwind label %bb.l

bb.h:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.m = load i8, ptr %i.l, align 8, !range !382, !noundef !3
  switch i8 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit.i [
    i8 0, label %bb.i
    i8 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit.i unwind label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 648
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit.i unwind label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i8 0, ptr %i.r, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog9get_tableReB1V_B1V_E0EBP_.exit.sink.split

bb.m:                                             ; preds = %bb.n, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.t, %bb.n ], [ %i.q, %bb.l ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i8 0, ptr %i.s, align 8
  br label %.body

bb.n:                                             ; preds = %bb.j, %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 688
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs2_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtBO_14RequestBuilder4send0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.u)
          to label %bb.u unwind label %bb.t

bb.p:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.w = load i8, ptr %i.v, align 8, !range !382, !noundef !3
  switch i8 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog9get_tableReB1V_B1V_E0EBP_.exit.sink.split [
    i8 0, label %bb.q
    i8 3, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 392
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog9get_tableReB1V_B1V_E0EBP_.exit.sink.split unwind label %bb.aa

bb.r:                                             ; preds = %bb.p
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 528
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog9get_tableReB1V_B1V_E0EBP_.exit.sink.split unwind label %bb.aa

bb.s:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit13

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit: ; preds = %bb.ab, %bb.b, %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog9get_tableReB1V_B1V_E0EBP_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 0, ptr %i.aa, align 8
  br label %common.ret

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit13: ; preds = %bb.ad, %bb.ac, %.body, %bb.s
  %.pn7 = phi { ptr, i32 } [ %i.be, %bb.ac ], [ %i.z, %bb.s ], [ %.pn4.pn, %.body ], [ %.pn4.pn, %bb.ad ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 0, ptr %i.ab, align 8
  resume { ptr, i32 } %.pn7

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog9get_tableReB1V_B1V_E0EBP_.exit.sink.split: ; preds = %bb.e, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit.i, %bb.x, %bb.r, %bb.q, %bb.p
  %.sink14 = phi i64 [ 388, %bb.x ], [ 388, %bb.p ], [ 388, %bb.q ], [ 388, %bb.r ], [ 505, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit.i ], [ 505, %bb.f ], [ 505, %bb.e ]
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink14
  store i8 0, ptr %1, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog9get_tableReB1V_B1V_E0EBP_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog9get_tableReB1V_B1V_E0EBP_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog9get_tableReB1V_B1V_E0EBP_.exit.sink.split, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 389
  store i8 0, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 390
  store i8 0, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.af = load i8, ptr %i.ae, align 8, !range !27, !noundef !3
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit

.body:                                            ; preds = %bb.k, %bb.m, %bb.aa, %bb.y, %bb.v
  %.sink15 = phi i64 [ 388, %bb.aa ], [ 388, %bb.v ], [ 388, %bb.y ], [ 505, %bb.m ], [ 505, %bb.k ]
  %.pn4.pn = phi { ptr, i32 } [ %i.au, %bb.aa ], [ %.pn, %bb.v ], [ %i.as, %bb.y ], [ %.pn.i, %bb.m ], [ %i.p, %bb.k ] ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink15
  store i8 0, ptr %2, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 389
  store i8 0, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 390
  store i8 0, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ak = load i8, ptr %i.aj, align 8, !range !27, !noundef !3
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit13

bb.t:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 640
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models32TemporaryTableCredentialsRequestEBK_(ptr noalias noundef align 8 dereferenceable(48) %i.an) #20
          to label %bb.v unwind label %bb.z

bb.u:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 640
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models32TemporaryTableCredentialsRequestEBK_(ptr noalias noundef align 8 dereferenceable(48) %i.ao)
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %bb.w, %bb.t
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.w ], [ %i.am, %bb.t ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 392
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models5TableEBK_(ptr noalias noundef align 8 dereferenceable(248) %i.ap) #20
          to label %.body unwind label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.x:                                             ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 392
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models5TableEBK_(ptr noalias noundef align 8 dereferenceable(248) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog9get_tableReB1V_B1V_E0EBP_.exit.sink.split unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.ad, %bb.v, %bb.t
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.aa:                                            ; preds = %bb.r, %bb.q
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog9get_tableReB1V_B1V_E0EBP_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !394, !nonnull !3, !align !15, !noundef !3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !394, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !394, !noundef !3
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !394, !noundef !3
  invoke void %i.ay(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef %i.bb, i64 noundef %i.bd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit unwind label %bb.ac, !inline_history !395

bb.ac:                                            ; preds = %bb.ab
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit13

bb.ad:                                            ; preds = %.body
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !405, !nonnull !3, !align !15, !noundef !3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !405, !nonnull !3, !noundef !3
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !405, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !405, !noundef !3
  invoke void %i.bi(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef %i.bl, i64 noundef %i.bn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit13 unwind label %bb.z, !inline_history !395
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBP_12UnityCatalog9get_tableReB1V_B1V_E0EBP_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.b = load i8, ptr %i.a, align 2, !range !384, !noundef !3
  switch i8 %i.b, label %common.ret [
    i8 5, label %bb.e
    i8 3, label %bb.b
    i8 4, label %bb.d
  ]

common.ret:                                       ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.d = load i8, ptr %i.c, align 8, !range !382, !noundef !3
  %cond.i = icmp eq i8 %i.d, 3
  br i1 %cond.i, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5tokenINtBO_10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringE18get_or_insert_withNCNCNvMs5_BS_NtBS_12UnityCatalog14get_credential00INtNtB4_3pin3PinINtNtB24_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtBO_14TemporaryTokenB20_ENtBS_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEB5K_E0EBS_(ptr noundef nonnull align 8 %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit unwind label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs2_NtCsjkRrtHEnRPD_18reqwest_middleware6clientNtBO_14RequestBuilder4send0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit unwind label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.h = load i8, ptr %i.g, align 8, !range !382, !noundef !3
  switch i8 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit [
    i8 0, label %bb.f
    i8 3, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit unwind label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBL_8Response5bytes0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit unwind label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit: ; preds = %bb.b, %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 0, ptr %i.l, align 1
  br label %common.ret

bb.i:                                             ; preds = %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.k ], [ %i.k, %bb.h ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 0, ptr %i.m, align 1
  resume { ptr, i32 } %.pn.pn

bb.j:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMNtNtCsgO6CtM78C4N_7reqwest10async_impl8responseNtBM_8Response4jsonNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models16GetTableResponseE0EB1U_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.o, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_CsgO8S5jLFugx_23deltalake_catalog_unityNtBO_12UnityCatalog14get_credential0EBO_.exit

bb.k:                                             ; preds = %bb.l, %bb.j
  %.pn = phi { ptr, i32 } [ %i.q, %bb.l ], [ %i.n, %bb.j ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.p, align 8
  br label %bb.i

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5tokenINtBO_10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringE18get_or_insert_withNCNCNvMs5_BS_NtBS_12UnityCatalog14get_credential00INtNtB4_3pin3PinINtNtB24_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtBO_14TemporaryTokenB20_ENtBS_17UnityCatalogErrorENtNtB4_6marker4SendEL_EEB5K_E0EBS_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.b = load i8, ptr %i.a, align 1, !range !406, !noundef !3
  switch i8 %i.b, label %common.ret [
    i8 4, label %bb.k
    i8 3, label %bb.b
  ]

common.ret:                                       ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtBO_5MutexINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4lock0EB22_.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load i8, ptr %i.c, align 8, !range !382, !noundef !3
  %cond.i = icmp eq i8 %i.d, 3
  br i1 %cond.i, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtBO_5MutexINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4lock0EB22_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load i8, ptr %i.e, align 8, !range !382, !noundef !3
  %cond.i.i = icmp eq i8 %i.f, 3
  br i1 %cond.i.i, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtBO_5MutexINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4lock0EB22_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i8, ptr %i.g, align 8, !range !406, !noundef !3
  %cond.i.i.i = icmp eq i8 %i.h, 4
  br i1 %cond.i.i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtBO_5MutexINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4lock0EB22_.exit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_RNvXs3_NtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.i)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val2.i.i.i.i = load ptr, ptr %i.k, align 8, !align !15, !noundef !3 ; 2 uses
  %i.l = icmp eq ptr %.val2.i.i.i.i, null
  br i1 %i.l, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %0, i64 144
  %.val3.i.i.i.i = load ptr, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  invoke void %i.o(ptr noundef %.val3.i.i.i.i)
          to label %.body unwind label %bb.j, !inline_history !407

bb.h:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val.i.i.i.i = load ptr, ptr %i.p, align 8, !align !15, !noundef !3 ; 2 uses
  %i.q = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtBO_5MutexINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4lock0EB22_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %0, i64 144
  %.val1.i.i.i.i = load ptr, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  invoke void %i.t(ptr noundef %.val1.i.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtBO_5MutexINtNtB4_6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE4lock0EB22_.exit unwind label %bb.q, !inline_history !408

bb.j:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.v, align 8             ; 5 uses
end_hunk_0
