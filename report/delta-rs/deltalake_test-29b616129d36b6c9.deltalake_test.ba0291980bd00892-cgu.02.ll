Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_test-29b616129d36b6c9.deltalake_test.ba0291980bd00892-cgu.02?download=true
inline.NumInlined: 686
inline.NumDeleted: 340
begin_hunk_0_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtB6_4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB3O_5table7builder16resolve_uri_typeReE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !979, !noalias !950, !noundef !3 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB2S_5table7builder16resolve_uri_typeReE0EECsfY7SmN0bPrO_14deltalake_test.exit8.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.az = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !980
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB2S_5table7builder16resolve_uri_typeReE0EECsfY7SmN0bPrO_14deltalake_test.exit8.i

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1A_4util11SharedValueIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEE9drop_slowB40_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aw) #16
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB2S_5table7builder16resolve_uri_typeReE0EECsfY7SmN0bPrO_14deltalake_test.exit8.i unwind label %bb.x, !noalias !950

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtB6_4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB42_5table7builder16resolve_uri_typeReE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.d, %bb.e, %bb.f, %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtB6_4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB3J_5table7builder16resolve_uri_typeReE0EE11spec_extendCsfY7SmN0bPrO_14deltalake_test.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2d_5slice4iter4IterRNtNtB10_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB2T_B3k_EE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !991
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !990, !noalias !992, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.d, align 8, !alias.scope !990, !noalias !992, !nonnull !3, !noundef !3
  %i.e = ptrtoint ptr %.val3.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !991
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !991
  %i.i = load i64, ptr %i.b, align 8, !range !13, !noalias !991, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !6, !noalias !991, !noundef !3 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB2y_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !991
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #18, !noalias !991
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB2y_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test.exit.i.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !991, !nonnull !3, !noundef !3 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !991
  store i64 %i.l, ptr %i.c, align 8, !noalias !991
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !991
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8, !noalias !991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !993
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !993
  store ptr %i.r, ptr %i.a, align 8, !noalias !993
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !993
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIBY_B1o_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3t_8for_each4callRDNtNtB1s_5array5ArrayEL_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB54_3VecB4w_E14extend_trustedBN_E0E0ECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2t_5slice4iter4IterRNtNtB19_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB39_B3A_EE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.c, !noalias !992

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB2y_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test.exit.i unwind label %bb.d, !noalias !991

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15, !noalias !991
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.u

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2t_5slice4iter4IterRNtNtB19_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB39_B3A_EE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB2y_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !993
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !991
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2d_5slice4iter4IterRNtNtB10_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBL_B3k_EE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1004
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !1003, !noalias !1005, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.d, align 8, !alias.scope !1003, !noalias !1005, !nonnull !3, !noundef !3
  %i.e = ptrtoint ptr %.val3.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1004
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !1004
  %i.i = load i64, ptr %i.b, align 8, !range !13, !noalias !1004, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !6, !noalias !1004, !noundef !3 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBx_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test.exit.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !1004
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #18, !noalias !1004
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBx_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test.exit.i.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !1004, !nonnull !3, !noundef !3 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1004
  store i64 %i.l, ptr %i.c, align 8, !noalias !1004
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !1004
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8, !noalias !1004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1006
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !1006
  store ptr %i.r, ptr %i.a, align 8, !noalias !1006
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !1006
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1o_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3X_8for_each4callRDNtNtB1s_5array5ArrayEL_NCINvMsj_B3l_IB3j_B50_E14extend_trustedBN_E0E0ECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2t_5slice4iter4IterRNtNtB19_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBU_B3A_EE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.c, !noalias !1005

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBx_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test.exit.i unwind label %bb.d, !noalias !1004

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15, !noalias !1004
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.u

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2t_5slice4iter4IterRNtNtB19_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBU_B3A_EE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBx_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1004
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB2_12SpecFromIterBU_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBV_EE9from_iterCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 40                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1016
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !1016
  %i.f = load i64, ptr %i.a, align 8, !range !13, !noalias !1016, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !6, !noalias !1016, !noundef !3 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !1016
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #18, !noalias !1016
  unreachable

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !1016, !nonnull !3, !noundef !3 ; 3 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1016
  %i.n = icmp eq ptr %1, %2
  br i1 %i.n, label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i
  %i.o = add i64 %i.b, -40
  %i.p = sub i64 %i.o, %i.c                       ; 2 uses
  %i.q = udiv i64 %i.p, 40
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.r, 1152921504606846972      ; 5 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %1, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 40> ; 2 uses
  %step.add3 = getelementptr i8, <2 x ptr> %vector.gep, i64 80
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x ptr> %vector.gep, ptr %i.s, align 8, !noalias !1017
  store <2 x ptr> %step.add3, ptr %i.t, align 8, !noalias !1017
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 160
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !1014

middle.block:                                     ; preds = %vector.body
  %3 = mul i64 %n.vec, 40
  %4 = getelementptr i8, ptr %1, i64 %3
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph.i.i.i.i.preheader4

.lr.ph.i.i.i.i.preheader4:                        ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.0.06.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.preheader ], [ %4, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader4, %.lr.ph.i.i.i.i
  %i.v = phi i64 [ %i.x, %.lr.ph.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.preheader4 ] ; 2 uses
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader4 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.v
  store ptr %.sroa.0.06.i.i.i.i, ptr %i.w, align 8, !noalias !1017
  %i.x = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 40 ; 2 uses
  %i.z = icmp eq ptr %i.y, %2
  br i1 %i.z, label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1015

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i
  %.val3.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i ], [ %n.vec, %middle.block ], [ %i.x, %.lr.ph.i.i.i.i ]
  store i64 %i.i, ptr %0, align 8, !alias.scope !1016
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1016
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val3.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1016
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB2u_5slice4iter4IterINtNtB2u_6option6OptionBU_EENCINvNvMs_NtB1h_6fieldsNtB4q_6Fields17try_filter_leaves12filter_fieldNCIB4l_NCINvB4n_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB62_12arrow_reader18ArrowReaderBuilderINtB60_11AsyncReaderNtNtB60_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0EE9from_iterCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %1, ptr %i.h, align 8, !noalias !1046
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %2, ptr %i.i, align 8, !noalias !1046
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1046
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1049
  store ptr %i.j, ptr %i.e, align 8, !noalias !1050
  %i.k = icmp eq ptr %1, %2
  br i1 %i.k, label %bb.c, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.m, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.n = call { i8, ptr } @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNvMs_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtBY_6Fields17try_filter_leaves12filter_fieldNCIBT_NCINvBV_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB2V_12arrow_reader18ArrowReaderBuilderINtB2T_11AsyncReaderNtNtB2T_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0INtB7_5FnMutTRINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB10_5field5FieldEEEEE8call_mutCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l), !noalias !1051 ; 3 uses
  %i.o = extractvalue { i8, ptr } %i.n, 1
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.loopexit.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.p = icmp eq ptr %i.m, %2
  br i1 %i.p, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.b
  store ptr %i.m, ptr %i.h, align 8, !alias.scope !1052, !noalias !1053
  %i.q = extractvalue { i8, ptr } %i.n, 0
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i, %bb.a
  %.sroa.0.0.lcssa.i.i.i = phi i8 [ %i.q, %._crit_edge.i.i.i ], [ undef, %bb.a ]
  %i.r = insertvalue { i8, ptr } poison, i8 %.sroa.0.0.lcssa.i.i.i, 0
  %i.s = insertvalue { i8, ptr } %i.r, ptr null, 1
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.i

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.loopexit.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.m, ptr %i.h, align 8, !alias.scope !1052, !noalias !1053
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.i

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.loopexit.i, %bb.c
  %.merged.i.i.i = phi { i8, ptr } [ %i.s, %bb.c ], [ %i.n, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.loopexit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1049
  %i.t = extractvalue { i8, ptr } %.merged.i.i.i, 1 ; 4 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.i
  store i64 0, ptr %0, align 8, !alias.scope !1046
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8, !alias.scope !1046
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.v, align 8, !alias.scope !1046
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB2I_5slice4iter4IterINtNtB2I_6option6OptionB11_EENCINvNvMs_NtB1o_6fieldsNtB4F_6Fields17try_filter_leaves12filter_fieldNCIB4A_NCINvB4C_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB6h_12arrow_reader18ArrowReaderBuilderINtB6f_11AsyncReaderNtNtB6f_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit

bb.e:                                             ; preds = %bb.h, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !1054
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test.exit.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa) #16
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test.exit.i unwind label %bb.t, !noalias !1046

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.i
  %i.z = extractvalue { i8, ptr } %.merged.i.i.i, 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1046
  store i8 %i.z, ptr %i.f, align 8, !noalias !1046
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.aa, align 8, !noalias !1046
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1046
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc11.i unwind label %bb.e, !noalias !1046

.noexc11.i:                                       ; preds = %bb.g
  %i.ab = load i64, ptr %i.d, align 8, !range !13, !noalias !1046, !noundef !3
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !6, !noalias !1046, !noundef !3 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.h, label %bb.i, !prof !5

bb.h:                                             ; preds = %.noexc11.i
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1046
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.ag) #18
          to label %.noexc12.i unwind label %bb.e, !noalias !1046

.noexc12.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.noexc11.i
  %i.ah = load ptr, ptr %i.af, align 8, !noalias !1046, !nonnull !3, !noundef !3 ; 3 uses
  %i.ai = icmp ugt i64 %i.ae, 3
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1046
  store i8 %i.z, ptr %i.ah, align 8, !noalias !1046
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.t, ptr %i.aj, align 8, !noalias !1046
  store i64 %i.ae, ptr %i.g, align 8, !noalias !1046
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1046
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.65.0..sroa_idx.i, align 8, !noalias !1046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1046
  %i.ak = load ptr, ptr %i.h, align 8, !noalias !1046, !nonnull !3, !noundef !3 ; 2 uses
  %i.al = load ptr, ptr %i.i, align 8, !noalias !1046, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1057
  store ptr %i.ak, ptr %i.c, align 8, !noalias !1058
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !noalias !1058
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i, %bb.i
  %.promoted.i.i.i.i.i = phi ptr [ %.promoted.i.i.pre.i.i.i, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i ], [ %i.ak, %bb.i ] ; 2 uses
  %i.ap = phi ptr [ %.pre.i.i.i, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i ], [ %i.al, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1061
  store ptr %i.an, ptr %i.a, align 8, !noalias !1062
  %i.aq = icmp eq ptr %.promoted.i.i.i.i.i, %i.ap
  br i1 %i.aq, label %bb.l, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %bb.k
  %i.ar = phi ptr [ %i.as, %bb.k ], [ %.promoted.i.i.i.i.i, %bb.j ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 4 uses
  %i.at = invoke { i8, ptr } @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNvMs_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtBY_6Fields17try_filter_leaves12filter_fieldNCIBT_NCINvBV_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB2V_12arrow_reader18ArrowReaderBuilderINtB2T_11AsyncReaderNtNtB2T_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0INtB7_5FnMutTRINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB10_5field5FieldEEEEE8call_mutCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ar)
          to label %.noexc14.i unwind label %bb.r, !noalias !1046 ; 3 uses

.noexc14.i:                                       ; preds = %.lr.ph.i.i.i.i.i
  %i.au = extractvalue { i8, ptr } %i.at, 1
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %bb.k, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.loopexit.i.i.i

bb.k:                                             ; preds = %.noexc14.i
  %i.av = icmp eq ptr %i.as, %i.ap
  br i1 %i.av, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.k
  store ptr %i.as, ptr %i.c, align 8, !alias.scope !1063, !noalias !1064
  %i.aw = extractvalue { i8, ptr } %i.at, 0
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i, %bb.j
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i8 [ %i.aw, %._crit_edge.i.i.i.i.i ], [ undef, %bb.j ]
  %i.ax = insertvalue { i8, ptr } poison, i8 %.sroa.0.0.lcssa.i.i.i.i.i, 0
  %i.ay = insertvalue { i8, ptr } %i.ax, ptr null, 1
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.loopexit.i.i.i: ; preds = %.noexc14.i
  store ptr %i.as, ptr %i.c, align 8, !alias.scope !1063, !noalias !1064
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i: ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.loopexit.i.i.i, %bb.l
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewEINtB4_10SpecExtendBT_INtNtCsbvkFyIu7lgC_4core6option8IntoIterBT_EE11spec_extendCsfY7SmN0bPrO_14deltalake_test:bb.a

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.m

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(48) %1) #14
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i, %._crit_edge.i.i.i
  %.val5.i.i.i = phi i64 [ %i.l, %._crit_edge.i.i.i ], [ %i.h, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i ]
  store i64 %.val5.i.i.i, ptr %i.c, align 8, !alias.scope !1209, !noalias !1213
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2K_5slice4iter4IterB13_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EE9from_iterB43_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.e = ptrtoint ptr %.val3 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.i = load i64, ptr %i.b, align 8, !range !13, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !6, !noundef !3 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB29_5slice4iter4IterBG_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EEB3r_.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #18
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB29_5slice4iter4IterBG_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EEB3r_.exit.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.l, ptr %i.c, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1220
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !1220
  store ptr %i.r, ptr %i.a, align 8, !noalias !1220
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !1220
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3W_8for_each4callB1n_NCINvMsj_NtB1s_3vecINtB5c_3VecB1n_E14extend_trustedBN_E0E0EB2Q_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB29_5slice4iter4IterBG_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EEB3r_.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %i.c) #14
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB29_5slice4iter4IterBG_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EEB3r_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.e = ptrtoint ptr %.val3 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.b, align 8, !range !13, !noundef !3
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !6, !noundef !3 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECsfY7SmN0bPrO_14deltalake_test.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #18
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.k, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1227
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !1227
  store ptr %i.q, ptr %i.a, align 8, !noalias !1227
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !1227
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsj_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECsfY7SmN0bPrO_14deltalake_test.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECsfY7SmN0bPrO_14deltalake_test.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEENtNtBM_5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1234
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !1234
  %i.f = load i64, ptr %i.a, align 8, !range !13, !noalias !1234, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !6, !noalias !1234, !noundef !3 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !1234
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #18, !noalias !1234
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !1234, !nonnull !3, !noundef !3 ; 4 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1234
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e
  %i.o = icmp eq i64 %i.i, 0
  br i1 %i.o, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit.i
  %i.p = and i64 %i.e, 1152921504606846975
  %i.q = add i64 %i.i, -1
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.q) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.r, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.r, 1152921504606846974      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.s = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.s
  %i.t = getelementptr i8, ptr %i.d, i64 %i.s
  %next.gep2 = getelementptr i8, ptr %i.t, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !noalias !1235
  %wide.load3 = load <2 x i64>, ptr %next.gep2, align 8, !noalias !1235
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %index
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x i64> %wide.load, ptr %i.u, align 8, !noalias !1234
  store <2 x i64> %wide.load3, ptr %i.w, align 8, !noalias !1234
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %.lr.ph.i.preheader6.loopexit, label %vector.body, !llvm.loop !1231

.lr.ph.i.preheader6.loopexit:                     ; preds = %vector.body
  %2 = shl nuw i64 %n.vec, 4
  %3 = getelementptr i8, ptr %i.d, i64 %2
  %4 = sub i64 %i.i, %n.vec
  br label %.lr.ph.i.preheader6

.lr.ph.i.preheader6:                              ; preds = %.lr.ph.i.preheader6.loopexit, %.lr.ph.i.preheader
  %.sroa.014.023.i.ph = phi ptr [ %i.d, %.lr.ph.i.preheader ], [ %3, %.lr.ph.i.preheader6.loopexit ]
  %.sroa.7.022.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %.lr.ph.i.preheader6.loopexit ]
  %.sroa.10.021.i.ph = phi i64 [ %i.i, %.lr.ph.i.preheader ], [ %4, %.lr.ph.i.preheader6.loopexit ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader6, %bb.c
  %.sroa.014.023.i = phi ptr [ %i.ab, %bb.c ], [ %.sroa.014.023.i.ph, %.lr.ph.i.preheader6 ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.aa, %bb.c ], [ %.sroa.7.022.i.ph, %.lr.ph.i.preheader6 ] ; 2 uses
  %.sroa.10.021.i = phi i64 [ %i.z, %bb.c ], [ %.sroa.10.021.i.ph, %.lr.ph.i.preheader6 ]
  %i.y = icmp eq ptr %.sroa.014.023.i, %i.n
  br i1 %i.y, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.aa = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i, i64 16
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.7.022.i
  %i.ad = load <2 x i64>, ptr %.sroa.014.023.i, align 8, !alias.scope !1233, !noalias !1235
  store <2 x i64> %i.ad, ptr %i.ac, align 8, !noalias !1234
  %i.ae = icmp eq i64 %i.z, 0
  br i1 %i.ae, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph.i, !llvm.loop !1232

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %.lr.ph.i, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit.i
  store i64 %i.i, ptr %0, align 8, !noalias !1233
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1233
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1233
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.9 = alloca [31 x i8], align 1            ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1244
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 288230376151711744) %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !1244
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noalias !1244, !noundef !3
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noalias !1244, !noundef !3 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8, !noalias !1244
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #18, !noalias !1244
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !noalias !1244, !nonnull !3, !noundef !3 ; 2 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q), !noalias !1244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1244
  store i64 %i.m, ptr %i.e, align 8, !noalias !1244
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.p, ptr %i.r, align 8, !noalias !1244
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.i
  %i.u = icmp eq i64 %i.m, 0
  br i1 %i.u, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 7 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  %.sroa.03.028 = phi ptr [ %i.h, %.lr.ph ], [ %i.x, %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ] ; 8 uses
  %.sroa.7.027 = phi i64 [ 0, %.lr.ph ], [ %i.y, %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.10.026 = phi i64 [ %i.m, %.lr.ph ], [ %i.v, %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ]
  %i.v = add i64 %.sroa.10.026, -1                ; 2 uses
  %i.w = icmp eq ptr %.sroa.03.028, %i.t
  br i1 %i.w, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 32
  %i.y = add nuw nsw i64 %.sroa.7.027, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  %i.z = load i8, ptr %.sroa.03.028, align 8, !range !9, !alias.scope !1246, !noalias !1247, !noundef !3 ; 2 uses
  switch i8 %i.z, label %default.unreachable [
    i8 0, label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.0..sroa_idx8, i64 31, i1 false), !alias.scope !1248, !noalias !1249
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.f:                                             ; preds = %bb.d
  %.sroa.9.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.0..sroa_idx7, i64 31, i1 false), !alias.scope !1248, !noalias !1249
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1250
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %.noexc unwind label %bb.k, !inline_history !1242

.noexc:                                           ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1250
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1250
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %.noexc1 unwind label %bb.k, !inline_history !1242

.noexc1:                                          ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1250
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1250
  invoke void @_RNvXs0_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %.noexc2 unwind label %bb.k, !inline_history !1242

.noexc2:                                          ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1250
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %.noexc2, %.noexc1, %.noexc, %bb.f, %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.7.027 ; 2 uses
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9, i64 31, i1 false), !noalias !1249
  store i8 %i.z, ptr %i.ad, align 8, !noalias !1249
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.ae = icmp eq i64 %i.v, 0
  br i1 %i.ae, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.c

bb.j:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15, !noalias !1249, !inline_history !1243
  unreachable

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.027, ptr %i.s, align 8, !noalias !1249
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %i.e) #14
          to label %bb.l unwind label %bb.j, !noalias !1249, !inline_history !1243

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.loopexit

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit
  store i64 %i.i, ptr %i.s, align 8, !noalias !1244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1244
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCs2EMQEx3u6w6_4diff6ResultcEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test.exit
  %.sroa.0.0.i13 = phi i64 [ %i.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test.exit ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %.sroa.0.0.i13 ; 3 uses
  %i.h = add i64 %.sroa.0.0.i13, 1                ; 4 uses
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.g)
end_hunk_1
