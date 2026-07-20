inline.NumInlined: 686
inline.NumDeleted: 340
begin_hunk_0_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtB6_4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB3O_5table7builder16resolve_uri_typeReE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test:bb.a
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.w, %bb.m, %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.au, %bb.w ], [ %.pn.i.i.i, %bb.m ], [ %.pn.i.i.i, %bb.l ], [ %.pn.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %i.g) #14
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB2S_5table7builder16resolve_uri_typeReE0EECsfY7SmN0bPrO_14deltalake_test.exit8.i unwind label %bb.y, !noalias !891

bb.x:                                             ; preds = %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !896
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtB6_4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB42_5table7builder16resolve_uri_typeReE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit

bb.y:                                             ; preds = %bb.ab, %.body.i, %bb.g
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15, !noalias !891
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB2S_5table7builder16resolve_uri_typeReE0EECsfY7SmN0bPrO_14deltalake_test.exit8.i: ; preds = %bb.ab, %bb.aa, %bb.z, %.body.i
  %.pn11.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.ph.i, %bb.ab ], [ %.pn.ph.i, %bb.z ], [ %.pn.ph.i, %bb.aa ]
  resume { ptr, i32 } %.pn11.i

bb.z:                                             ; preds = %bb.g, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.q, %bb.g ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !972, !noalias !891, !noundef !6 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB2S_5table7builder16resolve_uri_typeReE0EECsfY7SmN0bPrO_14deltalake_test.exit8.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !973
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB2S_5table7builder16resolve_uri_typeReE0EECsfY7SmN0bPrO_14deltalake_test.exit8.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1A_4util11SharedValueIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEE9drop_slowB40_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aw) #16
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB2S_5table7builder16resolve_uri_typeReE0EECsfY7SmN0bPrO_14deltalake_test.exit8.i unwind label %bb.y, !noalias !891

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtCseo6ZV82fEK1_3url3UrlINtNtB6_4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENCINvNtNtB42_5table7builder16resolve_uri_typeReE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2d_5slice4iter4IterRNtNtB10_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB2T_B3k_EE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !983
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !980, !noalias !985, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.d, align 8, !alias.scope !980, !noalias !985, !nonnull !6, !noundef !6
  %i.e = ptrtoint ptr %.val3.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !983
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !983
  %i.i = load i64, ptr %i.b, align 8, !range !714, !noalias !983, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !19, !noalias !983, !noundef !6 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB2y_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test.exit.i.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !983
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #18, !noalias !983
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB2y_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test.exit.i.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !983, !nonnull !6, !noundef !6 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !983
  store i64 %i.l, ptr %i.c, align 8, !noalias !983
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !983
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8, !noalias !983
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !986
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !986
  store ptr %i.r, ptr %i.a, align 8, !noalias !986
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !986
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIBY_B1o_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3t_8for_each4callRDNtNtB1s_5array5ArrayEL_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB54_3VecB4w_E14extend_trustedBN_E0E0ECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2t_5slice4iter4IterRNtNtB19_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB39_B3A_EE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.c, !noalias !985

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB2y_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test.exit.i unwind label %bb.d, !noalias !983

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15, !noalias !983
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.u

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2t_5slice4iter4IterRNtNtB19_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB39_B3A_EE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIB2y_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !986
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !983
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2d_5slice4iter4IterRNtNtB10_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBL_B3k_EE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !993)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !996
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !993, !noalias !998, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load ptr, ptr %i.d, align 8, !alias.scope !993, !noalias !998, !nonnull !6, !noundef !6
  %i.e = ptrtoint ptr %.val3.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !996
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !996
  %i.i = load i64, ptr %i.b, align 8, !range !714, !noalias !996, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !19, !noalias !996, !noundef !6 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBx_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test.exit.i.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !996
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #18, !noalias !996
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBx_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test.exit.i.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !996, !nonnull !6, !noundef !6 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !996
  store i64 %i.l, ptr %i.c, align 8, !noalias !996
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !996
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8, !noalias !996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !999
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !999
  store ptr %i.r, ptr %i.a, align 8, !noalias !999
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !999
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1o_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3X_8for_each4callRDNtNtB1s_5array5ArrayEL_NCINvMsj_B3l_IB3j_B50_E14extend_trustedBN_E0E0ECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2t_5slice4iter4IterRNtNtB19_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBU_B3A_EE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.c, !noalias !998

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBx_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test.exit.i unwind label %bb.d, !noalias !996

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15, !noalias !996
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.u

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2t_5slice4iter4IterRNtNtB19_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBU_B3A_EE0EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterRNtNtBM_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBx_B2Z_EE0EECsfY7SmN0bPrO_14deltalake_test.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !996
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB2_12SpecFromIterBU_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBV_EE9from_iterCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 40                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1006
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !1006
  %i.f = load i64, ptr %i.a, align 8, !range !714, !noalias !1006, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !19, !noalias !1006, !noundef !6 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !1006
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #18, !noalias !1006
  unreachable

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !1006, !nonnull !6, !noundef !6 ; 3 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1006
  %i.n = icmp eq ptr %1, %2
  br i1 %i.n, label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i
  %i.o = sub i64 %i.b, %i.c
  %i.p = add i64 %i.o, -40                        ; 2 uses
  %i.q = udiv i64 %i.p, 40
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.r, 1152921504606846972      ; 5 uses
  %i.s = mul i64 %n.vec, 40
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %1, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 40> ; 2 uses
  %step.add3 = getelementptr i8, <2 x ptr> %vector.gep, i64 80
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x ptr> %vector.gep, ptr %i.u, align 8, !noalias !1009
  store <2 x ptr> %step.add3, ptr %i.v, align 8, !noalias !1009
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 160
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !1015

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph.i.i.i.i.preheader4

.lr.ph.i.i.i.i.preheader4:                        ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.0.06.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader4, %.lr.ph.i.i.i.i
  %i.x = phi i64 [ %i.z, %.lr.ph.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.preheader4 ] ; 2 uses
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader4 ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.x
  store ptr %.sroa.0.06.i.i.i.i, ptr %i.y, align 8, !noalias !1009
  %i.z = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 40 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %2
  br i1 %i.ab, label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1018

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i
  %.val3.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i ], [ %n.vec, %middle.block ], [ %i.z, %.lr.ph.i.i.i.i ]
  store i64 %i.i, ptr %0, align 8, !alias.scope !1006
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1006
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val3.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1006
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %1, ptr %i.h, align 8, !noalias !1019
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %2, ptr %i.i, align 8, !noalias !1019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1019
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1028
  store ptr %i.j, ptr %i.e, align 8, !noalias !1029
  %i.k = icmp eq ptr %1, %2
  br i1 %i.k, label %bb.c, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.m, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.n = call { i8, ptr } @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNvMs_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtBY_6Fields17try_filter_leaves12filter_fieldNCIBT_NCINvBV_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB2V_12arrow_reader18ArrowReaderBuilderINtB2T_11AsyncReaderNtNtB2T_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0INtB7_5FnMutTRINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB10_5field5FieldEEEEE8call_mutCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l), !noalias !1031 ; 3 uses
  %i.o = extractvalue { i8, ptr } %i.n, 1
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.loopexit.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.p = icmp eq ptr %i.m, %2
  br i1 %i.p, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.b
  store ptr %i.m, ptr %i.h, align 8, !alias.scope !1032, !noalias !1033
  %i.q = extractvalue { i8, ptr } %i.n, 0
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i, %bb.a
  %.sroa.0.0.lcssa.i.i.i = phi i8 [ %i.q, %._crit_edge.i.i.i ], [ undef, %bb.a ]
  %i.r = insertvalue { i8, ptr } poison, i8 %.sroa.0.0.lcssa.i.i.i, 0
  %i.s = insertvalue { i8, ptr } %i.r, ptr null, 1
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.i

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.loopexit.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.m, ptr %i.h, align 8, !alias.scope !1032, !noalias !1033
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.i

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.loopexit.i, %bb.c
  %.merged.i.i.i = phi { i8, ptr } [ %i.s, %bb.c ], [ %i.n, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.loopexit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1028
  %i.t = extractvalue { i8, ptr } %.merged.i.i.i, 1 ; 4 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.i
  store i64 0, ptr %0, align 8, !alias.scope !1019
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8, !alias.scope !1019
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.v, align 8, !alias.scope !1019
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB2I_5slice4iter4IterINtNtB2I_6option6OptionB11_EENCINvNvMs_NtB1o_6fieldsNtB4F_6Fields17try_filter_leaves12filter_fieldNCIB4A_NCINvB4C_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB6h_12arrow_reader18ArrowReaderBuilderINtB6f_11AsyncReaderNtNtB6f_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0EE9from_iterCsfY7SmN0bPrO_14deltalake_test.exit

bb.e:                                             ; preds = %bb.h, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !1034
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test.exit.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa) #16
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test.exit.i unwind label %bb.t, !noalias !1019

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit.i
  %i.z = extractvalue { i8, ptr } %.merged.i.i.i, 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1019
  store i8 %i.z, ptr %i.f, align 8, !noalias !1019
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.aa, align 8, !noalias !1019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1019
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc11.i unwind label %bb.e, !noalias !1019

.noexc11.i:                                       ; preds = %bb.g
  %i.ab = load i64, ptr %i.d, align 8, !range !714, !noalias !1019, !noundef !6
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !19, !noalias !1019, !noundef !6 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %.noexc11.i
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1019
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.ag) #18
          to label %.noexc12.i unwind label %bb.e, !noalias !1019

.noexc12.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.noexc11.i
  %i.ah = load ptr, ptr %i.af, align 8, !noalias !1019, !nonnull !6, !noundef !6 ; 3 uses
  %i.ai = icmp ugt i64 %i.ae, 3
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1019
  store i8 %i.z, ptr %i.ah, align 8, !noalias !1019
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.t, ptr %i.aj, align 8, !noalias !1019
  store i64 %i.ae, ptr %i.g, align 8, !noalias !1019
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1019
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.65.0..sroa_idx.i, align 8, !noalias !1019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1019
  %i.ak = load ptr, ptr %i.h, align 8, !noalias !1019, !nonnull !6, !noundef !6 ; 2 uses
  %i.al = load ptr, ptr %i.i, align 8, !noalias !1019, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1047
  store ptr %i.ak, ptr %i.c, align 8, !noalias !1048
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !noalias !1048
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i, %bb.i
  %.promoted.i.i.i.i.i = phi ptr [ %.promoted.i.i.pre.i.i.i, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i ], [ %i.ak, %bb.i ] ; 2 uses
  %i.ap = phi ptr [ %.pre.i.i.i, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i.i.i ], [ %i.al, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1049)
  call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1055
  store ptr %i.an, ptr %i.a, align 8, !noalias !1056
  %i.aq = icmp eq ptr %.promoted.i.i.i.i.i, %i.ap
  br i1 %i.aq, label %bb.l, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %bb.k
  %i.ar = phi ptr [ %i.as, %bb.k ], [ %.promoted.i.i.i.i.i, %bb.j ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 4 uses
  %i.at = invoke { i8, ptr } @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNvMs_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtBY_6Fields17try_filter_leaves12filter_fieldNCIBT_NCINvBV_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB2V_12arrow_reader18ArrowReaderBuilderINtB2T_11AsyncReaderNtNtB2T_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0INtB7_5FnMutTRINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB10_5field5FieldEEEEE8call_mutCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ar)
end_hunk_0
