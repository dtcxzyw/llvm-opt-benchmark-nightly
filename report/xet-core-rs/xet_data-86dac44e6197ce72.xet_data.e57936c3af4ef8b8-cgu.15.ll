Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_data-86dac44e6197ce72.xet_data.e57936c3af4ef8b8-cgu.15?download=true
inline.NumInlined: 1048
inline.NumDeleted: 586
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1Z_5slice4iter4IterINtNtB6_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data10processing15shard_interface6nativeNtB4X_21SessionShardInterface3new00EE9from_iterB53_:bb.a
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsG258MDvU3F_3std4path7PathBufEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #28, !noalias !1063
  resume { ptr, i32 } %i.p

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsG258MDvU3F_3std4path7PathBufEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2f_5slice4iter4IterINtNtB8_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data10processing15shard_interface6nativeNtB5d_21SessionShardInterface3new00EE9from_iterB5j_.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCsG258MDvU3F_3std4path7PathBufE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4IterINtNtB8_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data10processing15shard_interface6nativeNtB4C_21SessionShardInterface3new00EEB4I_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1065
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1063
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2B_5slice4iter4IterNtNtNtB10_11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4o_11FileDeduperNtNtNtB4s_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks00EE9from_iterB4s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1076
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = lshr exact i64 %i.e, 6                   ; 2 uses
  %i.g = lshr exact i64 %i.e, 1                   ; 2 uses
  %i.h = icmp eq ptr %2, %1
  br i1 %i.h, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterNtNtNtBM_11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB42_11FileDeduperNtNtNtB46_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks00EEB46_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1077
  %i.i = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1077 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterNtNtNtBM_11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB42_11FileDeduperNtNtNtB46_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks00EEB46_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.g) #27, !noalias !1076
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterNtNtNtBM_11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB42_11FileDeduperNtNtNtB46_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks00EEB46_.exit.i.i: ; preds = %bb.b, %bb.a
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.a ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = icmp samesign ule i64 %i.f, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.k)
  store i64 %.sroa.4.0.i.i, ptr %i.b, align 8, !noalias !1076
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %i.l, align 8, !noalias !1076
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8, !noalias !1076
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1078
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i.i, ptr %i.n, align 8, !noalias !1078
  store ptr %i.m, ptr %i.a, align 8, !noalias !1078
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !1078
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB2z_11FileDeduperNtNtNtB2D_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5o_8for_each4callNtNtNtB1t_10merklehash9data_hash8DataHashNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7f_3VecB6r_E14extend_trustedBN_E0E0EB2D_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2R_5slice4iter4IterNtNtNtB19_11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4E_11FileDeduperNtNtNtB4I_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks00EE9from_iterB4I_.exit unwind label %bb.d, !noalias !1076

bb.d:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterNtNtNtBM_11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB42_11FileDeduperNtNtNtB46_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks00EEB46_.exit.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val3.i = load i64, ptr %i.b, align 8, !noalias !1076 ; 2 uses
  %i.q = icmp eq i64 %.val3.i, 0
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsjHtSR7YjKD4_8xet_data.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val4.i = load ptr, ptr %i.l, align 8, !noalias !1076, !nonnull !7, !noundef !7
  %i.r = shl nuw i64 %.val3.i, 5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1079
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsjHtSR7YjKD4_8xet_data.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2R_5slice4iter4IterNtNtNtB19_11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4E_11FileDeduperNtNtNtB4I_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks00EE9from_iterB4I_.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterNtNtNtBM_11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB42_11FileDeduperNtNtNtB46_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks00EEB46_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1078
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1076
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2B_5slice4iter4IterTBU_yEENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB3V_11FileDeduperNtNtNtB3Z_10processing23deduplication_interface24UploadSessionDataManagerE8finalize00EE9from_iterB3Z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1090
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = udiv exact i64 %i.e, 40                  ; 3 uses
  %i.g = shl nuw i64 %i.f, 5                      ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.e, -6917529027641081896
  br i1 %.not.i.i.i, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, %1
  br i1 %i.h, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterTBG_yEENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB3A_11FileDeduperNtNtNtB3E_10processing23deduplication_interface24UploadSessionDataManagerE8finalize00EEB3E_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1091
  %i.i = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1091 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterTBG_yEENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB3A_11FileDeduperNtNtNtB3E_10processing23deduplication_interface24UploadSessionDataManagerE8finalize00EEB3E_.exit.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.g) #27, !noalias !1090
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterTBG_yEENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB3A_11FileDeduperNtNtNtB3E_10processing23deduplication_interface24UploadSessionDataManagerE8finalize00EEB3E_.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = icmp samesign ule i64 %i.f, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.k)
  store i64 %.sroa.4.0.i.i, ptr %i.b, align 8, !noalias !1090
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %i.l, align 8, !noalias !1090
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8, !noalias !1090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1092
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i.i, ptr %i.n, align 8, !noalias !1092
  store ptr %i.m, ptr %i.a, align 8, !noalias !1092
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !1092
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB2I_11FileDeduperNtNtNtB2M_10processing23deduplication_interface24UploadSessionDataManagerE8finalize00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5q_8for_each4callB1o_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6G_3VecB1o_E14extend_trustedBN_E0E0EB2M_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2R_5slice4iter4IterTB13_yEENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4c_11FileDeduperNtNtNtB4g_10processing23deduplication_interface24UploadSessionDataManagerE8finalize00EE9from_iterB4g_.exit unwind label %bb.e, !noalias !1090

bb.e:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterTBG_yEENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB3A_11FileDeduperNtNtNtB3E_10processing23deduplication_interface24UploadSessionDataManagerE8finalize00EEB3E_.exit.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val.i = load i64, ptr %i.b, align 8, !noalias !1090 ; 2 uses
  %i.q = icmp eq i64 %.val.i, 0
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsjHtSR7YjKD4_8xet_data.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val2.i = load ptr, ptr %i.l, align 8, !noalias !1090, !nonnull !7, !noundef !7
  %i.r = shl nuw i64 %.val.i, 5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1093
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsjHtSR7YjKD4_8xet_data.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.p

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2R_5slice4iter4IterTB13_yEENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4c_11FileDeduperNtNtNtB4g_10processing23deduplication_interface24UploadSessionDataManagerE8finalize00EE9from_iterB4g_.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterTBG_yEENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB3A_11FileDeduperNtNtNtB3E_10processing23deduplication_interface24UploadSessionDataManagerE8finalize00EEB3E_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1090
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtB6_11collections5btree3map6ValuesNtNtNtB10_10merklehash9data_hash8DataHashBU_EEE9from_iterCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 4 uses
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1143
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !1142, !noundef !7 ; 5 uses
  %i.d = mul i64 %.val.i, 152                     ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %.val.i, 60680079189834051
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoE7reserveCsjHtSR7YjKD4_8xet_data.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1144
  %i.f = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1144 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoE7reserveCsjHtSR7YjKD4_8xet_data.exit.i.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.d) #27, !noalias !1143
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoE7reserveCsjHtSR7YjKD4_8xet_data.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.b ], [ %.val.i, %bb.c ] ; 2 uses
  %i.h = icmp samesign ule i64 %.val.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.h)
  store i64 %.sroa.4.0.i.i, ptr %i.b, align 8, !noalias !1143
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.10.0.i.i, ptr %i.i, align 8, !noalias !1143
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %1, i64 64, i1 false), !noalias !1148
  %.sroa.4.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.val.i, ptr %.sroa.4.0..sroa_idx3.i, align 8, !noalias !1149
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3V_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtNtNtB3X_11collections5btree3map6ValuesNtNtNtB11_10merklehash9data_hash8DataHashBV_EEE0E0E0CsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoE7reserveCsjHtSR7YjKD4_8xet_data.exit.i.i.i
  %.val6.i.i.i.i.i.i = phi i64 [ %i.ac, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3V_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtNtNtB3X_11collections5btree3map6ValuesNtNtNtB11_10merklehash9data_hash8DataHashBV_EEE0E0E0CsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoE7reserveCsjHtSR7YjKD4_8xet_data.exit.i.i.i ] ; 4 uses
  %i.k = invoke noundef align 8 ptr @_RNvXsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_6ValuesNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1b_14metadata_shard12file_structs11MDBFileInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1150 ; 8 uses

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp40 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtB8_11collections5btree3map6ValuesNtNtNtB19_10merklehash9data_hash8DataHashB13_EEE9from_iterCsjHtSR7YjKD4_8xet_data.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %.val3.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1154, !noalias !1150, !nonnull !7, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %.val4.i.i.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !1154, !noalias !1150, !noundef !7 ; 4 uses
  %i.n = mul nuw i64 %.val4.i.i.i.i.i.i.i.i.i, 48 ; 4 uses
  %i.o = icmp eq i64 %.val4.i.i.i.i.i.i.i.i.i, 0  ; 2 uses
  br i1 %i.o, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1155
  %i.p = call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1155 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull readonly align 8 %.val3.i.i.i.i.i.i.i.i.i, i64 %i.n, i1 false), !noalias !1156
  br label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.h
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.n) #27
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1150

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i, %bb.g
  %.sroa.10.0.i31.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.g ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %.val5.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1154, !noalias !1150, !nonnull !7, !noundef !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %.val6.i.i.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !1154, !noalias !1150, !noundef !7 ; 4 uses
  %2 = mul nuw i64 %.val6.i.i.i.i.i.i.i.i.i, 48   ; 3 uses
  %i.t = icmp eq i64 %.val6.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.t, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1157
  %i.u = call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1157 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.lr.ph.i.i8.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i7.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i7.i.i.i.i.i.i.i.i.i:          ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull readonly align 8 %.val5.i.i.i.i.i.i.i.i.i, i64 %2, i1 false), !noalias !1158
  br label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i8.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.j
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %2) #27
          to label %bb.k unwind label %bb.l, !noalias !1159

bb.k:                                             ; preds = %.lr.ph.i.i8.i.i.i.i.i.i.i.i.i
  unreachable

bb.l:                                             ; preds = %.lr.ph.i.i8.i.i.i.i.i.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.o, label %.body.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i31.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1160
  br label %.body.i

_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.preheader.i.i7.i.i.i.i.i.i.i.i.i, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i31.i.i8.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i.i.i.i ], [ %i.u, %.lr.ph.preheader.i.i7.i.i.i.i.i.i.i.i.i ]
  %i.x = load i64, ptr %i.k, align 8, !range !16, !alias.scope !1154, !noalias !1150, !noundef !7
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.n, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3V_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtNtNtB3X_11collections5btree3map6ValuesNtNtNtB11_10merklehash9data_hash8DataHashBV_EEE0E0E0CsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.z, i64 48, i1 false), !noalias !1161
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3V_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtNtNtB3X_11collections5btree3map6ValuesNtNtNtB11_10merklehash9data_hash8DataHashBV_EEE0E0E0CsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3V_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtNtNtB3X_11collections5btree3map6ValuesNtNtNtB11_10merklehash9data_hash8DataHashBV_EEE0E0E0CsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i: ; preds = %bb.n, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.n ], [ 0, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i.i.i.i.i.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.ab = getelementptr inbounds nuw [152 x i8], ptr %.sroa.10.0.i.i, i64 %.val6.i.i.i.i.i.i ; 9 uses
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %i.ab, align 8, !noalias !1162
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.i.i.i.i.i.i.i.i.i, i64 48, i1 false), !noalias !1163
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store i64 %.val4.i.i.i.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1162
  %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store ptr %.sroa.10.0.i31.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1162
  %.sroa.75.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  store i64 %.val4.i.i.i.i.i.i.i.i.i, ptr %.sroa.75.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1162
  %.sroa.86.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  store i64 %.val6.i.i.i.i.i.i.i.i.i, ptr %.sroa.86.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1162
  %.sroa.97.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  store ptr %.sroa.10.0.i31.i.i8.i.i.i.i.i.i.i.i.i, ptr %.sroa.97.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1162
  %.sroa.108.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  store i64 %.val6.i.i.i.i.i.i.i.i.i, ptr %.sroa.108.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1162
  %.sroa.119.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.119.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.aa, i64 48, i1 false), !noalias !1161
  %i.ac = add i64 %.val6.i.i.i.i.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i)
  br label %bb.e

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.m, %bb.l
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.w, %bb.l ], [ %i.w, %bb.m ], [ %lpad.loopexit.split-lp40, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  store i64 %.val6.i.i.i.i.i.i, ptr %i.j, align 8, !alias.scope !1164, !noalias !1165
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #28, !noalias !1143
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtB8_11collections5btree3map6ValuesNtNtNtB19_10merklehash9data_hash8DataHashB13_EEE9from_iterCsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.f
  store i64 %.val6.i.i.i.i.i.i, ptr %i.j, align 8, !alias.scope !1164, !noalias !1165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1143
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2X_5slice4iter4IterNtBW_21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4B_11FileDeduperNtNtNtB4F_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0EE9from_iterB4F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1180
  %.val3.i = load ptr, ptr %1, align 8, !alias.scope !1179, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4.i = load ptr, ptr %i.c, align 8, !alias.scope !1179, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = ptrtoint ptr %.val4.i to i64
  %i.e = ptrtoint ptr %.val3.i to i64
  %i.f = sub nuw i64 %i.d, %i.e                   ; 4 uses
  %i.g = udiv exact i64 %i.f, 48                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %.not.i.i.i, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %.val4.i, %.val3.i
  br i1 %i.h, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2C_5slice4iter4IterNtBI_21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4g_11FileDeduperNtNtNtB4k_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0EEB4k_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1181
  %i.i = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1181 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2C_5slice4iter4IterNtBI_21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4g_11FileDeduperNtNtNtB4k_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0EEB4k_.exit.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.f) #27, !noalias !1180
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2C_5slice4iter4IterNtBI_21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4g_11FileDeduperNtNtNtB4k_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0EEB4k_.exit.i.i: ; preds = %bb.c, %bb.b
  %i.k = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %i.l = icmp samesign ule i64 %i.g, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.l)
  store i64 %.sroa.4.0.i.i, ptr %i.b, align 8, !noalias !1180
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.m, align 8, !noalias !1180
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.n, align 8, !noalias !1180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1182
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.o, align 8, !noalias !1182
  store ptr %i.n, ptr %i.a, align 8, !noalias !1182
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.p, align 8, !noalias !1182
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB2Z_11FileDeduperNtNtNtB33_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5G_8for_each4callNtB1p_21FileVerificationEntryNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7l_3VecB6J_E14extend_trustedBN_E0E0EB33_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3d_5slice4iter4IterNtB15_21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4S_11FileDeduperNtNtNtB4W_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0EE9from_iterB4W_.exit unwind label %bb.e, !noalias !1183

bb.e:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2C_5slice4iter4IterNtBI_21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4g_11FileDeduperNtNtNtB4k_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0EEB4k_.exit.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %.val.i = load i64, ptr %i.b, align 8, !noalias !1180 ; 2 uses
  %i.r = icmp eq i64 %.val.i, 0
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEECsjHtSR7YjKD4_8xet_data.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val2.i = load ptr, ptr %i.m, align 8, !noalias !1180, !nonnull !7, !noundef !7
  %i.s = mul nuw i64 %.val.i, 48
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1184
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEECsjHtSR7YjKD4_8xet_data.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.q

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3d_5slice4iter4IterNtB15_21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4S_11FileDeduperNtNtNtB4W_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0EE9from_iterB4W_.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2C_5slice4iter4IterNtBI_21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4g_11FileDeduperNtNtNtB4k_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0EEB4k_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1180
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2y_5slice4iter4IterNtNtB6_6string6StringENCNCNCNvNtNtBY_14migration_tool7migrate18migrate_files_impl000EE9from_iterB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1195
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = udiv exact i64 %i.e, 24                  ; 3 uses
  %i.g = mul i64 %i.f, 40                         ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.e, 5534023222112865480
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2d_5slice4iter4IterNtNtB8_6string6StringENCNCNCNvNtNtBK_14migration_tool7migrate18migrate_files_impl000EEBM_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1196
  %i.i = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1196 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2d_5slice4iter4IterNtNtB8_6string6StringENCNCNCNvNtNtBK_14migration_tool7migrate18migrate_files_impl000EEBM_.exit.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.g) #27, !noalias !1195
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2d_5slice4iter4IterNtNtB8_6string6StringENCNCNCNvNtNtBK_14migration_tool7migrate18migrate_files_impl000EEBM_.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = icmp samesign ule i64 %i.f, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.k)
  store i64 %.sroa.4.0.i.i, ptr %i.b, align 8, !noalias !1195
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %i.l, align 8, !noalias !1195
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8, !noalias !1195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1197
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.10.0.i.i, ptr %i.n, align 8, !noalias !1197
  store ptr %i.m, ptr %i.a, align 8, !noalias !1197
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !1197
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENCNCNCNvNtNtNtCsjHtSR7YjKD4_8xet_data10processing14migration_tool7migrate18migrate_files_impl000ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3z_8for_each4callNtNtB2c_12file_cleaner12Sha256PolicyNCINvMsk_NtB1r_3vecINtB5l_3VecB4C_E14extend_trustedBN_E0E0EB2e_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2O_5slice4iter4IterNtNtB8_6string6StringENCNCNCNvNtNtB17_14migration_tool7migrate18migrate_files_impl000EE9from_iterB19_.exit unwind label %bb.e, !noalias !1195

bb.e:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2d_5slice4iter4IterNtNtB8_6string6StringENCNCNCNvNtNtBK_14migration_tool7migrate18migrate_files_impl000EEBM_.exit.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val3.i = load i64, ptr %i.b, align 8, !noalias !1195 ; 2 uses
  %i.q = icmp eq i64 %.val3.i, 0
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyEEB1e_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val4.i = load ptr, ptr %i.l, align 8, !noalias !1195, !nonnull !7, !noundef !7
  %i.r = mul nuw i64 %.val3.i, 40
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1198
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyEEB1e_.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyEEB1e_.exit.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.p

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2O_5slice4iter4IterNtNtB8_6string6StringENCNCNCNvNtNtB17_14migration_tool7migrate18migrate_files_impl000EE9from_iterB19_.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2d_5slice4iter4IterNtNtB8_6string6StringENCNCNCNvNtNtBK_14migration_tool7migrate18migrate_files_impl000EEBM_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1195
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecTmmEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1r_6filter6FilterINtNtNtB1v_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB34_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB47_9XorbBlock26determine_size_if_possible0ENCB41_s_0EE9from_iterB4d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1238
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !1243, !alias.scope !1244, !noundef !7 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !1244 ; 3 uses
  %cond.i.i.i.i.i = icmp eq i64 %i.c, 1
  br i1 %cond.i.i.i.i.i, label %.split.us.i.i.i.i.i, label %.split.i.i.i.i.i.preheader

.split.i.i.i.i.i.preheader:                       ; preds = %bb.a
  %i.e = icmp ugt i64 %i.c, %.promoted.i.i.i.i.i
  br i1 %i.e, label %.loopexit.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkRSINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1h_2__CEQNCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2k_9XorbBlock26determine_size_if_possible0E0B2q_.exit.i.i.i.i.i.lr.ph

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkRSINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1h_2__CEQNCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2k_9XorbBlock26determine_size_if_possible0E0B2q_.exit.i.i.i.i.i.lr.ph: ; preds = %.split.i.i.i.i.i.preheader
  %.promoted12.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !1245
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkRSINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1h_2__CEQNCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2k_9XorbBlock26determine_size_if_possible0E0B2q_.exit.i.i.i.i.i

.split.us.i.i.i.i.i:                              ; preds = %bb.a
  %i.f = icmp eq i64 %.promoted.i.i.i.i.i, 0
  br i1 %i.f, label %.loopexit.i, label %.split17.us.i.i.i.i.i

.split17.us.i.i.i.i.i:                            ; preds = %.split.us.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtB6_3VecINtNtB8_4sync3ArcNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockEEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterB1f_ENvMse_B11_BY_3newEE9from_iterB1n_:bb.a
  %i.h = invoke { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockENvMse_NtB14_4syncINtB3q_3ArcB1L_E3newENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB3B_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB3B_E0INtNtBc_6result6ResultB4D_zEEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c, !noalias !1293

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.i, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockENvMse_NtB1g_4syncINtB3C_3ArcB1X_E3newEEB25_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #28
          to label %common.resume.i unwind label %bb.j, !noalias !1293

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1295
  store ptr %i.d, ptr %i.a, align 8, !noalias !1295
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !1295
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8, !noalias !1295
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !1296, !nonnull !7, !noundef !7 ; 2 uses
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1296, !nonnull !7, !noundef !7
  %i.r = ptrtoint ptr %.val1.i.i to i64
  %i.s = ptrtoint ptr %.val.i.i to i64
  %i.t = sub nuw i64 %i.r, %i.s
  %i.u = udiv exact i64 %i.t, 160
  store i64 0, ptr %i.b, align 8, !alias.scope !1296
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !1296
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !alias.scope !1296
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !1296
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockEBK_(ptr noalias nofree noundef nonnull align 8 %.val.i.i, i64 noundef %i.u)
          to label %_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockE32forget_allocation_drop_remainingB14_.exit.i unwind label %bb.e, !noalias !1293

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockINtNtBI_4sync3ArcB1L_EEEB1T_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #28
          to label %bb.b unwind label %bb.j, !noalias !1293

_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockE32forget_allocation_drop_remainingB14_.exit.i: ; preds = %bb.d
  store i64 %i.g, ptr %0, align 8, !alias.scope !1293
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.w, align 8, !alias.scope !1293
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.x, align 8, !alias.scope !1293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1295
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  %.val.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !1300, !nonnull !7, !noundef !7 ; 2 uses
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1300, !nonnull !7, !noundef !7
  %i.y = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.z = ptrtoint ptr %.val.i.i.i.i to i64
  %i.aa = sub nuw i64 %i.y, %i.z
  %i.ab = udiv exact i64 %i.aa, 160
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockEBK_(ptr noalias nofree noundef nonnull align 8 %.val.i.i.i.i, i64 noundef %i.ab)
          to label %bb.h unwind label %bb.f, !noalias !1301

bb.f:                                             ; preds = %_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockE32forget_allocation_drop_remainingB14_.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load i64, ptr %i.b, align 8, !alias.scope !1300, !noundef !7 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %1, align 8, !alias.scope !1300, !nonnull !7, !noundef !7
  %i.ag = mul nuw i64 %i.ad, 160
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1302
  br label %common.resume.i

bb.h:                                             ; preds = %_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockE32forget_allocation_drop_remainingB14_.exit.i
  %i.ah = load i64, ptr %i.b, align 8, !alias.scope !1300, !noundef !7 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockENvMse_NtB6_4syncINtB40_3ArcB2l_E3newEB4a_EB2t_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %1, align 8, !alias.scope !1300, !nonnull !7, !noundef !7
  %i.ak = mul nuw i64 %i.ah, 160
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1303
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockENvMse_NtB6_4syncINtB40_3ArcB2l_E3newEB4a_EB2t_.exit

common.resume.i:                                  ; preds = %bb.g, %bb.f, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %i.ac, %bb.g ], [ %.pn.i, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %bb.e, %bb.b
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !1293
  unreachable

_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockENvMse_NtB6_4syncINtB40_3ArcB2l_E3newEB4a_EB2t_.exit: ; preds = %bb.h, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtB6_3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtB10_13FileTermEntryENCNCNvB10_24retrieve_file_term_block0s6_0EE9from_iterB16_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1322
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !1321, !nonnull !7, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i = load ptr, ptr %i.d, align 8, !alias.scope !1321, !nonnull !7, !noundef !7
  %i.e = ptrtoint ptr %.val3.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 2 uses
  %i.h = udiv exact i64 %i.g, 48                  ; 3 uses
  %i.i = mul i64 %i.h, 56                         ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.g, 7905747460161236400
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtBI_13FileTermEntryENCNCNvBI_24retrieve_file_term_block0s6_0EEBO_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1323
  %i.k = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1323 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtBI_13FileTermEntryENCNCNvBI_24retrieve_file_term_block0s6_0EEBO_.exit.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.i) #27
          to label %.noexc.i unwind label %bb.f, !noalias !1322

.noexc.i:                                         ; preds = %bb.d
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtBI_13FileTermEntryENCNCNvBI_24retrieve_file_term_block0s6_0EEBO_.exit.i.i: ; preds = %bb.c, %bb.b
  %i.m = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.n = icmp samesign ule i64 %i.h, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.n)
  store i64 %.sroa.4.0.i.i, ptr %i.b, align 8, !noalias !1322
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.o, align 8, !noalias !1322
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.p, align 8, !noalias !1322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1324
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %i.q, align 8, !noalias !1324
  store ptr %i.p, ptr %i.a, align 8, !noalias !1324
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.r, align 8, !noalias !1324
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term13FileTermEntryENCNCNvB1N_24retrieve_file_term_block0s6_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB43_8for_each4callNtB1N_8FileTermNCINvMsk_B12_INtB12_3VecB56_E14extend_trustedBN_E0E0EB1T_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtB15_13FileTermEntryENCNCNvB15_24retrieve_file_term_block0s6_0EE9from_iterB1b_.exit unwind label %.body.i, !noalias !1325

.body.i:                                          ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtBI_13FileTermEntryENCNCNvBI_24retrieve_file_term_block0s6_0EEBO_.exit.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term13FileTermEntryENCNCNvB1Z_24retrieve_file_term_block0s6_0EEB25_.exit.i unwind label %bb.e, !noalias !1322

bb.e:                                             ; preds = %.body.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !1322
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term13FileTermEntryENCNCNvB1Z_24retrieve_file_term_block0s6_0EEB25_.exit.i: ; preds = %bb.g, %bb.f, %.body.i
  %.pn9.i = phi { ptr, i32 } [ %i.s, %.body.i ], [ %i.u, %bb.f ], [ %i.u, %bb.g ]
  resume { ptr, i32 } %.pn9.i

bb.f:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5.i = load i64, ptr %i.v, align 8, !alias.scope !1326, !noundef !7 ; 2 uses
  %i.w = icmp eq i64 %.val5.i, 0
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term13FileTermEntryENCNCNvB1Z_24retrieve_file_term_block0s6_0EEB25_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val4.i = load ptr, ptr %1, align 8, !alias.scope !1321, !nonnull !7, !noundef !7
  %i.x = mul nuw i64 %.val5.i, 48
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1327
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term13FileTermEntryENCNCNvB1Z_24retrieve_file_term_block0s6_0EEB25_.exit.i

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtB15_13FileTermEntryENCNCNvB15_24retrieve_file_term_block0s6_0EE9from_iterB1b_.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtBI_13FileTermEntryENCNCNvBI_24retrieve_file_term_block0s6_0EEBO_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1322
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBI_2__CEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.d = load i64, ptr %i.a, align 8, !noundef !7 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  %i.e = shl nuw nsw i64 %i.d, 3                  ; 2 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBN_2__CENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1337
  %i.g = tail call noundef align 4 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !1337 ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.lr.ph.i, label %.lr.ph.preheader.i.a

.lr.ph.preheader.i.a:                             ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.d, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.a
  %i.i = and i64 %i.d, -4                         ; 4 uses
  %i.j = shl i64 %i.i, 3
  %i.k = getelementptr i8, ptr %i.c, i64 %i.j
  %2 = and i64 %i.d, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.l = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.l
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %next.gep3 = getelementptr i8, ptr %i.m, i64 16
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !1336
  %wide.vec5 = load <4 x i32>, ptr %next.gep3, align 4, !alias.scope !1336
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x i32> %wide.vec, ptr %i.n, align 4, !noalias !1338
  store <4 x i32> %wide.vec5, ptr %i.p, align 4, !noalias !1338
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %i.i
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !1333

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %i.i
  br i1 %cmp.n, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBN_2__CENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i.a, %middle.block
  %.sroa.016.025.i.ph = phi ptr [ %i.c, %.lr.ph.preheader.i.a ], [ %i.k, %middle.block ]
  %.sroa.7.024.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.a ], [ %i.i, %middle.block ]
  %.sroa.10.023.i.ph = phi i64 [ %i.d, %.lr.ph.preheader.i.a ], [ %2, %middle.block ]
  br label %bb.c

.lr.ph.i:                                         ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.e) #27, !noalias !1338
  unreachable

bb.c:                                             ; preds = %.lr.ph.i.preheader, %bb.c
  %.sroa.016.025.i = phi ptr [ %i.t, %bb.c ], [ %.sroa.016.025.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.7.024.i = phi i64 [ %i.s, %bb.c ], [ %.sroa.7.024.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.10.023.i = phi i64 [ %i.r, %bb.c ], [ %.sroa.10.023.i.ph, %.lr.ph.i.preheader ]
  %i.r = add nsw i64 %.sroa.10.023.i, -1          ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.7.024.i, 1
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.sroa.7.024.i
  %i.v = load <2 x i32>, ptr %.sroa.016.025.i, align 4, !alias.scope !1336
  store <2 x i32> %i.v, ptr %i.u, align 4, !noalias !1338
  %i.w = icmp eq i64 %i.r, 0
  br i1 %i.w, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBN_2__CENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit, label %bb.c, !llvm.loop !1334

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBN_2__CENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.c, %middle.block, %bb.a
  %.sroa.10.0.i33.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.a ], [ %i.g, %middle.block ], [ %i.g, %bb.c ]
  store i64 %i.d, ptr %0, align 8, !alias.scope !1335
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i33.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1335
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !1335
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBI_2__HEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.d = load i64, ptr %i.a, align 8, !noundef !7 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  %i.e = shl nuw nsw i64 %i.d, 4                  ; 2 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBN_2__HENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1348
  %i.g = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1348 ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.lr.ph.i, label %.lr.ph.preheader.i.a

.lr.ph.preheader.i.a:                             ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.d, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.a
  %n.vec = and i64 %i.d, -2                       ; 4 uses
  %i.i = shl i64 %n.vec, 4
  %i.j = getelementptr i8, ptr %i.c, i64 %i.i
  %2 = and i64 %i.d, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.k = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.k
  %i.l = getelementptr i8, ptr %i.c, i64 %i.k
  %next.gep3 = getelementptr i8, ptr %i.l, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %wide.load4 = load <2 x i64>, ptr %next.gep3, align 8
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %index
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %index
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <2 x i64> %wide.load, ptr %i.m, align 8, !noalias !1349
  store <2 x i64> %wide.load4, ptr %i.o, align 8, !noalias !1349
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !1344

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBN_2__HENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i.a, %middle.block
  %.sroa.016.025.i.ph = phi ptr [ %i.c, %.lr.ph.preheader.i.a ], [ %i.j, %middle.block ]
  %.sroa.7.024.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.a ], [ %n.vec, %middle.block ]
  %.sroa.10.023.i.ph = phi i64 [ %i.d, %.lr.ph.preheader.i.a ], [ %2, %middle.block ]
  br label %bb.c

.lr.ph.i:                                         ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #27, !noalias !1349
  unreachable

bb.c:                                             ; preds = %.lr.ph.i.preheader, %bb.c
  %.sroa.016.025.i = phi ptr [ %i.s, %bb.c ], [ %.sroa.016.025.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.7.024.i = phi i64 [ %i.r, %bb.c ], [ %.sroa.7.024.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.10.023.i = phi i64 [ %i.q, %bb.c ], [ %.sroa.10.023.i.ph, %.lr.ph.i.preheader ]
  %i.q = add nsw i64 %.sroa.10.023.i, -1          ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.7.024.i, 1
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 16
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.7.024.i
  %i.u = load <2 x i64>, ptr %.sroa.016.025.i, align 8, !alias.scope !1347
  store <2 x i64> %i.u, ptr %i.t, align 8, !noalias !1349
  %i.v = icmp eq i64 %i.q, 0
  br i1 %i.v, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBN_2__HENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit, label %bb.c, !llvm.loop !1345

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBN_2__HENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.c, %middle.block, %bb.a
  %.sroa.10.0.i33.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.g, %middle.block ], [ %i.g, %bb.c ]
  store i64 %i.d, ptr %0, align 8, !alias.scope !1346
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i33.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1346
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !1346
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !noundef !7 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  %i.e = mul nuw nsw i64 %i.d, 48                 ; 2 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1356
  %i.g = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1356 ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %3, label %bb.c

bb.c:                                             ; preds = %bb.b
  %xtraiter = and i64 %i.d, 1
  %2 = icmp eq i64 %i.d, 1
  br i1 %2, label %bb.d, label %.lr.ph.preheader.i.a

.lr.ph.preheader.i.a:                             ; preds = %bb.c
  %unroll_iter = and i64 %i.d, -2
  br label %.lr.ph.i

3:                                                ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #27, !noalias !1357
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.a
  %.sroa.014.023.i = phi ptr [ %i.c, %.lr.ph.preheader.i.a ], [ %7, %.lr.ph.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ 0, %.lr.ph.preheader.i.a ], [ %6, %.lr.ph.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ 0, %.lr.ph.preheader.i.a ], [ %niter.next.1, %.lr.ph.i ]
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i, i64 48
  %5 = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %.sroa.7.022.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.014.023.i, i64 48, i1 false), !noalias !1355
  %6 = add nuw nsw i64 %.sroa.7.022.i, 2          ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i, i64 96 ; 2 uses
  %8 = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %.sroa.7.022.i
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !noalias !1355
  %niter.next.1 = add nuw i64 %.sroa.10.021.i, 2  ; 2 uses
  %i.i = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %i.i, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit.loopexit.unr-lcssa, label %.lr.ph.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit, label %bb.d

bb.d:                                             ; preds = %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit.loopexit.unr-lcssa, %bb.c
  %.sroa.014.023.i.epil.init = phi ptr [ %i.c, %bb.c ], [ %7, %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit.loopexit.unr-lcssa ]
  %.sroa.7.022.i.epil.init = phi i64 [ 0, %bb.c ], [ %6, %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod2)
  %10 = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %.sroa.7.022.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.014.023.i.epil.init, i64 48, i1 false), !noalias !1355
  br label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.d, %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit.loopexit.unr-lcssa, %bb.a
  %.sroa.10.0.i31.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.g, %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit.loopexit.unr-lcssa ], [ %i.g, %bb.d ]
  store i64 %i.d, ptr %0, align 8, !alias.scope !1355
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i31.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1355
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !1355
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBN_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.d = load i64, ptr %i.a, align 8, !noundef !7 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  %i.e = mul nuw nsw i64 %i.d, 56                 ; 2 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1367
  %i.g = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1367 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #27, !noalias !1368
  unreachable

bb.d:                                             ; preds = %bb.b, %_RNvXs_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB4_8FileTermNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %.sroa.012.052.i = phi ptr [ %i.i, %_RNvXs_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB4_8FileTermNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.c, %bb.b ] ; 6 uses
  %.sroa.7.051.i = phi i64 [ %i.j, %_RNvXs_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB4_8FileTermNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.10.050.i = phi i64 [ %2, %_RNvXs_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB4_8FileTermNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.d, %bb.b ]
  %2 = add nsw i64 %.sroa.10.050.i, -1            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 56
  %i.j = add nuw nsw i64 %.sroa.7.051.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 16
  %i.l = load <2 x i64>, ptr %i.k, align 8, !alias.scope !1370
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 32
  %i.n = load <2 x i32>, ptr %i.m, align 8, !alias.scope !1370
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 40
  %i.p = load <2 x i64>, ptr %i.o, align 8, !alias.scope !1370
  %i.q = load ptr, ptr %.sroa.012.052.i, align 8, !alias.scope !1370, !nonnull !7, !noundef !7 ; 2 uses
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !noalias !1371
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.052.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !1370, !nonnull !7, !noundef !7 ; 2 uses
  %i.v = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !1371
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.g, label %_RNvXs_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB4_8FileTermNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

_RNvXs_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB4_8FileTermNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.e
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %.sroa.7.051.i ; 5 uses
  store ptr %i.q, ptr %i.x, align 8, !noalias !1368
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.u, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !1368
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x i64> %i.l, ptr %.sroa.536.0..sroa_idx.i, align 8, !noalias !1368
  %.sroa.738.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store <2 x i32> %i.n, ptr %.sroa.738.0..sroa_idx.i, align 8, !noalias !1368
  %.sroa.940.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store <2 x i64> %i.p, ptr %.sroa.940.0..sroa_idx.i, align 8, !noalias !1368
  %i.y = icmp eq i64 %2, 0
  br i1 %i.y, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit, label %bb.d

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit: ; preds = %_RNvXs_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB4_8FileTermNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %bb.a
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.g, %_RNvXs_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_termNtB4_8FileTermNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  store i64 %i.d, ptr %0, align 8, !noalias !1366
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1366
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !1366
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.d = load i64, ptr %i.a, align 8, !noundef !7 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjHtSR7YjKD4_8xet_data.exit.thread.i, label %bb.b

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjHtSR7YjKD4_8xet_data.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !1377
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !alias.scope !1377
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.g, align 8, !alias.scope !1377
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1378
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1378 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.d) #27, !noalias !1379
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %0, align 8, !alias.scope !1377
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8, !alias.scope !1377
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.c, i64 range(i64 0, -9223372036854775808) %i.d, i1 false), !noalias !1377
  store i64 %i.d, ptr %i.k, align 8, !alias.scope !1377
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit

_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjHtSR7YjKD4_8xet_data.exit.thread.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.d = load i64, ptr %i.a, align 8, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 3 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjHtSR7YjKD4_8xet_data.exit.thread.i, label %bb.b

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjHtSR7YjKD4_8xet_data.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !1385
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8, !alias.scope !1385
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !1385
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1386
  %i.i = tail call noundef align 4 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !1386 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.e) #27, !noalias !1387
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %i.d, ptr %0, align 8, !alias.scope !1385
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.k, align 8, !alias.scope !1385
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull readonly align 4 %i.c, i64 %i.e, i1 false), !noalias !1385
  store i64 %i.d, ptr %i.l, align 8, !alias.scope !1385
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit

_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjHtSR7YjKD4_8xet_data.exit.thread.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 3                   ; 3 uses
  %i.g = icmp eq ptr %.val1, %.val
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph.i

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit8.i, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !7 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBO_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtBO_5alloc6GlobalEECsjHtSR7YjKD4_8xet_data.exit, label %bb.b

bb.b:                                             ; preds = %.body
  %i.k = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.l = shl nuw i64 %i.i, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1402
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBO_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtBO_5alloc6GlobalEECsjHtSR7YjKD4_8xet_data.exit

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit.i
  %.sroa.0.09.i = phi i64 [ %i.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.0.09.i ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !1405, !nonnull !7, !noundef !7
  %i.p = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !1406
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit.i unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.r = icmp eq i64 %i.n, %i.f
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.n, %i.f
  br i1 %i.t, label %.body, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit8.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.0.110.i ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.0.110.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  %i.w = load ptr, ptr %i.u, align 8, !alias.scope !1409, !nonnull !7, !noundef !7
  %i.x = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !1410
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit8.i unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %i.z = icmp eq i64 %i.v, %i.f
  br i1 %i.z, label %.body, label %.lr.ph12.i

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit.i, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !7 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBO_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtBO_5alloc6GlobalEECsjHtSR7YjKD4_8xet_data.exit4, label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit
  %i.ae = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.af = shl nuw i64 %i.ac, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1411
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBO_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtBO_5alloc6GlobalEECsjHtSR7YjKD4_8xet_data.exit4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBO_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtBO_5alloc6GlobalEECsjHtSR7YjKD4_8xet_data.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data.exit, %bb.g
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBO_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtBO_5alloc6GlobalEECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.b, %.body
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
end_hunk_1
begin_hunk_2_@_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoIBw_jEyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data:bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1858
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoECsjHtSR7YjKD4_8xet_data.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoECsjHtSR7YjKD4_8xet_data.exit.i.i: ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsjHtSR7YjKD4_8xet_data.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %.val.i.i = load i64, ptr %i.p, align 8, !alias.scope !1859 ; 2 uses
  %i.q = icmp eq i64 %.val.i.i, 0
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtNtCsexYYUdYSQU6_5alloc3vec3VecjEyEECsjHtSR7YjKD4_8xet_data.exit.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoECsjHtSR7YjKD4_8xet_data.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %.val1.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1859, !nonnull !7, !noundef !7
  %i.s = shl nuw i64 %.val.i.i, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1860
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtNtCsexYYUdYSQU6_5alloc3vec3VecjEyEECsjHtSR7YjKD4_8xet_data.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtNtCsexYYUdYSQU6_5alloc3vec3VecjEyEECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoECsjHtSR7YjKD4_8xet_data.exit.i.i
  %i.t = icmp eq i64 %i.g, %i.d
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtNtCsexYYUdYSQU6_5alloc3vec3VecjEyEECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtNtCsexYYUdYSQU6_5alloc3vec3VecjEyEECsjHtSR7YjKD4_8xet_data.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtNtCsexYYUdYSQU6_5alloc3vec3VecjEyEECsjHtSR7YjKD4_8xet_data.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1871)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoyEEBJ_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoyEEBI_.exit.i
  %.sroa.0.07.i = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoyEEBI_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.07.i ; 4 uses
  %i.g = add nuw nsw i64 %.sroa.0.07.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1873)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !1874 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val1.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !1874, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1875
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.val2.i.i.i = load i64, ptr %i.k, align 8, !range !14, !alias.scope !1874, !noundef !7 ; 2 uses
  %i.l = icmp sgt i64 %.val2.i.i.i, 0
  br i1 %i.l, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoyEEBI_.exit.i

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.val3.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !1874, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1876
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoyEEBI_.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoyEEBI_.exit.i: ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data.exit.i.i.i
  %i.n = icmp eq i64 %i.g, %i.d
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoyEEBJ_.exit, label %.lr.ph.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoyEEBJ_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjHtSR7YjKD4_8xet_data10processing8xet_file11XetFileInfoyEEBI_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTRShBG_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTmmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsjHtSR7YjKD4_8xet_data.exit.i
  %.sroa.0.07.i = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsjHtSR7YjKD4_8xet_data.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [168 x i8], ptr %i.b, i64 %.sroa.0.07.i ; 4 uses
  %i.g = add nuw nsw i64 %.sroa.0.07.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1889)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.val.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !1890 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsjHtSR7YjKD4_8xet_data.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.val1.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !1890, !nonnull !7, !noundef !7
  %i.k = mul nuw i64 %.val.i.i.i, 48
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1891
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsjHtSR7YjKD4_8xet_data.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsjHtSR7YjKD4_8xet_data.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.val2.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !1890 ; 2 uses
  %i.m = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsjHtSR7YjKD4_8xet_data.exit.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsjHtSR7YjKD4_8xet_data.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.val3.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !1890, !nonnull !7, !noundef !7
  %i.o = mul nuw i64 %.val2.i.i.i, 48
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1892
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsjHtSR7YjKD4_8xet_data.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryEECsjHtSR7YjKD4_8xet_data.exit.i.i.i
  %i.p = icmp eq i64 %i.g, %i.d
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsjHtSR7YjKD4_8xet_data.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoyEECsjHtSR7YjKD4_8xet_data.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyTmmEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTymEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7
  %i.e = tail call noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEINtNtCskKLDkoKarTP_4core7convert4FromRSBF_E4fromCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1898)
  %i.a = shl nuw nsw i64 %2, 3                    ; 2 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1899
  %i.c = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !1899 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.a) #27, !noalias !1900
  unreachable

.lr.ph.i:                                         ; preds = %bb.b, %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i
  %.sroa.013.023.i = phi ptr [ %i.f, %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i ], [ %1, %bb.b ] ; 2 uses
  %.sroa.7.022.i = phi i64 [ %i.e, %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.10.021.i = phi i64 [ %5, %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i ], [ %2, %bb.b ]
  %.val12.i = load ptr, ptr %.sroa.013.023.i, align 8, !alias.scope !1898, !nonnull !7, !noundef !7 ; 2 uses
  %3 = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !1900
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %bb.d, label %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %.lr.ph.i
  %i.e = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i, i64 8
  %5 = add nsw i64 %.sroa.10.021.i, -1            ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.7.022.i
  store ptr %.val12.i, ptr %i.g, align 8, !noalias !1900
  %i.h = icmp eq i64 %5, 0
  br i1 %i.h, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data.exit: ; preds = %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i, %bb.a
  %.sroa.5.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.c, %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data.exit.i ]
  store i64 %2, ptr %0, align 8, !noalias !1898
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1898
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !1898
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs94TQx44N27d_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @49, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_CsakO97VULfQA_8tempfileNtB5_7Builder10tempdir_inRNtNtCsG258MDvU3F_3std4path7PathBufECsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtBb_4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEE6insertCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashTINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBT_14metadata_shard12xorb_structs11MDBXorbInfoEyEINtNtBR_18passthrough_hasher15U64DirectHasherBN_EE6insertCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32), ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3setINtB5_4IterjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs5_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_8DebugSet5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBz_2__CENtB6_5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtB6_5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking15upload_tracking23XorbPartCompletionStatsNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemINtNtCskKLDkoKarTP_4core6option6OptionTjNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntrybEENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBR_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking15upload_tracking23XorbPartCompletionStatsEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB25_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager17ChunkCacheElementEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtCsUrhh0HcRih_5tokio4sync9once_cellINtB5_8OnceCellINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block13XorbBlockDataEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapmjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapmmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtNtCsexYYUdYSQU6_5alloc2io4copy7generic12generic_copyINtNtNtCskKLDkoKarTP_4core2io4util5ChainINtBZ_4TakeNtNtCsG258MDvU3F_3std2fs4FileEINtNtB11_6cursor6CursorINtNtB8_3vec3VechEEEINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteB1L_EECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(1928)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtNtCsexYYUdYSQU6_5alloc2io4copy7generic12generic_copyINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtB8_3vec3VechEEINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(1928)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtNtCsexYYUdYSQU6_5alloc2io4copy7generic12generic_copyINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(1928)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #14

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_6ValuesNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1b_14metadata_shard12file_structs11MDBFileInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data10processing15shard_interface6nativeNtB3w_21SessionShardInterface3new00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB59_8for_each4callNtNtCsG258MDvU3F_3std4path7PathBufNCINvMsk_NtB1s_3vecINtB6T_3VecB6c_E14extend_trustedBN_E0E0EB3C_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENCNCNCNvNtNtNtCsjHtSR7YjKD4_8xet_data10processing14migration_tool7migrate18migrate_files_impl000ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3z_8for_each4callNtNtB2c_12file_cleaner12Sha256PolicyNCINvMsk_NtB1r_3vecINtB5l_3VecB4C_E14extend_trustedBN_E0E0EB2e_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsiAynQAjgDuT_10xet_client9cas_types19XorbRangeDescriptorENCNCNvNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term24retrieve_file_term_block0s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4j_8for_each4callINtB1p_5RangeyNtB1p_2__HENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5U_3VecB5m_E14extend_trustedBN_E0E0EB2z_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsiAynQAjgDuT_10xet_client9cas_types19XorbRangeDescriptorENCNCNvNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term24retrieve_file_term_block0s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4i_8for_each4callINtB1p_5RangemNtB1p_2__CENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5T_3VecB5l_E14extend_trustedBN_E0E0EB2z_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB2z_11FileDeduperNtNtNtB2D_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5o_8for_each4callNtNtNtB1t_10merklehash9data_hash8DataHashNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7f_3VecB6r_E14extend_trustedBN_E0E0EB2D_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB2z_11FileDeduperNtNtNtB2D_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks0s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5q_8for_each4callTNtNtNtB1t_10merklehash9data_hash8DataHashyENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7k_3VecB6t_E14extend_trustedBN_E0E0EB2D_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB2Z_11FileDeduperNtNtNtB33_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5G_8for_each4callNtB1p_21FileVerificationEntryNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7l_3VecB6J_E14extend_trustedBN_E0E0EB33_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB2I_11FileDeduperNtNtNtB2M_10processing23deduplication_interface24UploadSessionDataManagerE8finalize00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5q_8for_each4callB1o_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6G_3VecB1o_E14extend_trustedBN_E0E0EB2M_(ptr noundef nonnull, ptr noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term13FileTermEntryENCNCNvB1N_24retrieve_file_term_block0s6_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB43_8for_each4callNtB1N_8FileTermNCINvMsk_B12_INtB12_3VecB56_E14extend_trustedBN_E0E0EB1T_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterjENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication15data_aggregatorNtB1S_14DataAggregator8merge_in0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3m_8for_each4calljNCINvMsk_B12_INtB12_3VecjE14extend_trustedBN_E0E0EB1W_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs6_NtCsiWcPrHiWZDL_10serde_json5errorNtB5_5ErrorNtNtCs6SYjS1KFWza_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBO_ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lockINtB2_19RwTaskLockReadGuardNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager15ShardBookkeeperNtNtB1o_5error9CoreErrorENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashTjjEINtNtBS_18passthrough_hasher15U64DirectHasherBO_EE12contains_keyBO_ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCslc8SwK8fohf_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #18

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1o_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB7_8BTreeMapmmEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTmmEE9from_iterINtNtNtB1j_8adapters3map3MapINtNtB2w_6filter6FilterINtNtNtB1l_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB3N_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB4Q_9XorbBlock26determine_size_if_possible0ENCB4K_s_0EEB4W_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapmjE6insertCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapmjE3getmECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapmjE5entryCsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs2_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_5EntrymjE9or_insertCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 4 ptr @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapmmE3getmECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCs8rVFV1hdcx_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB5_21FileVerificationEntry3new(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB3_22FileDataSequenceHeader3newjECsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), i64 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMNtCskKLDkoKarTP_4core5sliceSy15partition_pointNCNvNtNtCsjHtSR7YjKD4_8xet_data10processing12range_upload19snap_to_segment_end0EBV_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMNtCskKLDkoKarTP_4core5sliceSy15partition_pointNCNvNtNtCsjHtSR7YjKD4_8xet_data10processing12range_upload21snap_to_segment_start0EBV_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs94TQx44N27d_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBF_2__CEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjHtSR7YjKD4_8xet_data(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockENvMse_NtB14_4syncINtB3q_3ArcB1L_E3newENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB3B_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB3B_E0INtNtBc_6result6ResultB4D_zEEB1T_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoINtB1i_3VecjEyEEIB1e_yEENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication15data_aggregatorNtB3R_14DataAggregator8finalize0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1i_13in_place_drop11InPlaceDropTyB22_yEENCINvNtB1i_16in_place_collect24write_in_place_with_dropB6D_E0INtNtBc_6result6ResultB62_zEEB3V_(ptr noalias nofree noundef align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsp_NtNtCsG258MDvU3F_3std4sync4mpscNtB5_9RecvErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRRNtNtNtB8_5panic8location8LocationNtB6_5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types19ItemProgressUpdaterE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms14retrieval_urls22TermBlockRetrievalURLsE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs8rVFV1hdcx_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs8rVFV1hdcx_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCs6SYjS1KFWza_10serde_core2de5implsNtB5_13StringVisitorNtB7_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXs17_NtNtCs6SYjS1KFWza_10serde_core2de5implsyNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBy_2__CENtB5_5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking15upload_tracking23XorbPartCompletionStatsENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB20_(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { noinline }
attributes #25 = { cold noreturn nounwind }
attributes #26 = { nounwind }
attributes #27 = { noreturn }
attributes #28 = { cold }
attributes #29 = { noinline noreturn }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 2, !"RtLibUseGOT", i32 1}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!7 = !{}
!8 = !{!"address", !"read_provenance"}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{i64 0, i64 -9223372036854775808}
!11 = !{!"branch_weights", i32 2002, i32 2000}
!12 = !{i64 8}
!13 = !{i64 0, i64 3}
!14 = !{i64 -1, i64 -9223372036854775808}
!15 = !{i32 0, i32 1000000000}
!16 = !{i64 0, i64 2}
!17 = !{i64 0, i64 -9223372036854775807}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEECsjHtSR7YjKD4_8xet_data"}
!22 = distinct !{!22, !21, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEECsjHtSR7YjKD4_8xet_data: argument 0"}
!23 = distinct !{!23, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!24 = distinct !{!24, !23, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!25 = distinct !{!25, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEEECsjHtSR7YjKD4_8xet_data"}
!26 = distinct !{!26, !25, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEEECsjHtSR7YjKD4_8xet_data: argument 0"}
!27 = distinct !{!27, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEECsjHtSR7YjKD4_8xet_data"}
!28 = distinct !{!28, !27, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEECsjHtSR7YjKD4_8xet_data: argument 0"}
!29 = distinct !{!29, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!30 = distinct !{!30, !29, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!31 = distinct !{!31, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEECsjHtSR7YjKD4_8xet_data"}
!32 = distinct !{!32, !31, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEECsjHtSR7YjKD4_8xet_data: argument 0"}
!33 = distinct !{!33, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!34 = distinct !{!34, !33, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!35 = distinct !{!35, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEyEEECsjHtSR7YjKD4_8xet_data"}
!36 = distinct !{!36, !35, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEyEEECsjHtSR7YjKD4_8xet_data: argument 0"}
!37 = distinct !{!37, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEyEECsjHtSR7YjKD4_8xet_data"}
!38 = distinct !{!38, !37, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEyEECsjHtSR7YjKD4_8xet_data: argument 0"}
!39 = distinct !{!39, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEECsjHtSR7YjKD4_8xet_data"}
!40 = distinct !{!40, !39, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEECsjHtSR7YjKD4_8xet_data: argument 0"}
!41 = distinct !{!41, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!42 = distinct !{!42, !41, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!43 = !{!22}
!44 = !{!24}
!45 = !{!24, !22}
!46 = !{!30, !28, !26}
!47 = !{!34, !32}
!48 = !{!42, !40, !38, !36}
!49 = distinct !{!49, i1 true, !"_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEE10retain_mutNCINvB2_6retainNCINvNtB10_17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB3z_Es0_0E0ECsjHtSR7YjKD4_8xet_data"}
!50 = distinct !{!50, !49, !"_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEE10retain_mutNCINvB2_6retainNCINvNtB10_17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB3z_Es0_0E0ECsjHtSR7YjKD4_8xet_data: argument 0"}
!51 = distinct !{!51, !49, !"_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEE10retain_mutNCINvB2_6retainNCINvNtB10_17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path4PathB3z_Es0_0E0ECsjHtSR7YjKD4_8xet_data: argument 1"}
!52 = distinct !{!52, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data"}
!53 = distinct !{!53, !52, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data: argument 0"}
!54 = distinct !{!54, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!55 = distinct !{!55, !54, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!56 = distinct !{!56, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data"}
!57 = distinct !{!57, !56, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data: argument 0"}
!58 = distinct !{!58, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!59 = distinct !{!59, !58, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!60 = distinct !{!60, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCsexYYUdYSQU6_5alloc3vecINtBJ_3VecppE10retain_mut10PanicGuardINtNtBL_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtBL_5alloc6GlobalEECsjHtSR7YjKD4_8xet_data"}
!61 = distinct !{!61, !60, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCsexYYUdYSQU6_5alloc3vecINtBJ_3VecppE10retain_mut10PanicGuardINtNtBL_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtBL_5alloc6GlobalEECsjHtSR7YjKD4_8xet_data: argument 0"}
!62 = distinct !{!62, i1 true, !"_RNvXNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecppE10retain_mutINtB2_10PanicGuardINtNtB9_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtB9_5alloc6GlobalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!63 = distinct !{!63, !62, !"_RNvXNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecppE10retain_mutINtB2_10PanicGuardINtNtB9_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtB9_5alloc6GlobalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!64 = !{!50}
!65 = !{!50, !51}
!66 = !{!53}
!67 = !{!55}
!68 = !{!55, !53}
!69 = !{!55, !53, !50, !51}
!70 = !{!57}
!71 = !{!59}
!72 = !{!59, !57}
!73 = !{!59, !57, !50, !51}
!74 = !{!63, !61, !50, !51}
!75 = !{!63, !61}
!76 = distinct !{!76, i1 true, !"_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEE10retain_mutNCINvB2_6retainNCINvNtB10_17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path7PathBufB3z_Es0_0E0ECsjHtSR7YjKD4_8xet_data"}
!77 = distinct !{!77, !76, !"_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEE10retain_mutNCINvB2_6retainNCINvNtB10_17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path7PathBufB3z_Es0_0E0ECsjHtSR7YjKD4_8xet_data: argument 0"}
!78 = distinct !{!78, !76, !"_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEE10retain_mutNCINvB2_6retainNCINvNtB10_17session_directory12merge_shardsRNtNtCsG258MDvU3F_3std4path7PathBufB3z_Es0_0E0ECsjHtSR7YjKD4_8xet_data: argument 1"}
!79 = distinct !{!79, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data"}
!80 = distinct !{!80, !79, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data: argument 0"}
!81 = distinct !{!81, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!82 = distinct !{!82, !81, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!83 = distinct !{!83, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data"}
!84 = distinct !{!84, !83, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data: argument 0"}
!85 = distinct !{!85, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!86 = distinct !{!86, !85, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!87 = distinct !{!87, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCsexYYUdYSQU6_5alloc3vecINtBJ_3VecppE10retain_mut10PanicGuardINtNtBL_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtBL_5alloc6GlobalEECsjHtSR7YjKD4_8xet_data"}
!88 = distinct !{!88, !87, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCsexYYUdYSQU6_5alloc3vecINtBJ_3VecppE10retain_mut10PanicGuardINtNtBL_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtBL_5alloc6GlobalEECsjHtSR7YjKD4_8xet_data: argument 0"}
!89 = distinct !{!89, i1 true, !"_RNvXNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecppE10retain_mutINtB2_10PanicGuardINtNtB9_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtB9_5alloc6GlobalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!90 = distinct !{!90, !89, !"_RNvXNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecppE10retain_mutINtB2_10PanicGuardINtNtB9_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtB9_5alloc6GlobalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!91 = !{!77}
!92 = !{!77, !78}
!93 = !{!80}
!94 = !{!82}
!95 = !{!82, !80}
!96 = !{!82, !80, !77, !78}
!97 = !{!84}
!98 = !{!86}
!99 = !{!86, !84}
!100 = !{!86, !84, !77, !78}
!101 = !{!90, !88, !77, !78}
!102 = !{!90, !88}
!103 = distinct !{!103, i1 true, !"_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEE10retain_mutNCINvB2_6retainNCNCNvMs0_NtB10_18shard_file_managerNtB31_16ShardFileManager17refresh_shard_dir00E0ECsjHtSR7YjKD4_8xet_data"}
!104 = distinct !{!104, !103, !"_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEE10retain_mutNCINvB2_6retainNCNCNvMs0_NtB10_18shard_file_managerNtB31_16ShardFileManager17refresh_shard_dir00E0ECsjHtSR7YjKD4_8xet_data: argument 0"}
!105 = distinct !{!105, !103, !"_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEE10retain_mutNCINvB2_6retainNCNCNvMs0_NtB10_18shard_file_managerNtB31_16ShardFileManager17refresh_shard_dir00E0ECsjHtSR7YjKD4_8xet_data: argument 1"}
!106 = distinct !{!106, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data"}
!107 = distinct !{!107, !106, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data: argument 0"}
!108 = distinct !{!108, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!109 = distinct !{!109, !108, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!110 = distinct !{!110, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data"}
!111 = distinct !{!111, !110, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEECsjHtSR7YjKD4_8xet_data: argument 0"}
!112 = distinct !{!112, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!113 = distinct !{!113, !112, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!114 = distinct !{!114, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCsexYYUdYSQU6_5alloc3vecINtBJ_3VecppE10retain_mut10PanicGuardINtNtBL_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtBL_5alloc6GlobalEECsjHtSR7YjKD4_8xet_data"}
!115 = distinct !{!115, !114, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCsexYYUdYSQU6_5alloc3vecINtBJ_3VecppE10retain_mut10PanicGuardINtNtBL_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtBL_5alloc6GlobalEECsjHtSR7YjKD4_8xet_data: argument 0"}
!116 = distinct !{!116, i1 true, !"_RNvXNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecppE10retain_mutINtB2_10PanicGuardINtNtB9_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtB9_5alloc6GlobalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!117 = distinct !{!117, !116, !"_RNvXNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecppE10retain_mutINtB2_10PanicGuardINtNtB9_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENtNtB9_5alloc6GlobalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!118 = !{!104}
!119 = !{!104, !105}
!120 = !{!107}
!121 = !{!109}
!122 = !{!109, !107}
!123 = !{!109, !107, !104, !105}
!124 = !{!111}
!125 = !{!113}
!126 = !{!113, !111}
!127 = !{!113, !111, !104, !105}
!128 = !{!117, !115, !104, !105}
!129 = !{!117, !115}
!130 = distinct !{!130, i1 true, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsjHtSR7YjKD4_8xet_data"}
!131 = distinct !{!131, !130, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsjHtSR7YjKD4_8xet_data: argument 0"}
!132 = distinct !{!132, i1 true, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterhENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1G_3VechE14extend_trustedB3_E0ECsjHtSR7YjKD4_8xet_data"}
!133 = distinct !{!133, !132, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterhENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1G_3VechE14extend_trustedB3_E0ECsjHtSR7YjKD4_8xet_data: argument 0"}
!134 = distinct !{!134, i1 true, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterhENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvBJ_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB22_3VechE14extend_trustedB3_E0E0ECsjHtSR7YjKD4_8xet_data"}
!135 = distinct !{!135, !134, !"_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterhENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvBJ_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB22_3VechE14extend_trustedB3_E0E0ECsjHtSR7YjKD4_8xet_data: argument 0"}
!136 = distinct !{!136, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1p_3VechE14extend_trustedINtNtBe_6option8IntoIterhEE0E0CsjHtSR7YjKD4_8xet_data"}
!137 = distinct !{!137, !136, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1p_3VechE14extend_trustedINtNtBe_6option8IntoIterhEE0E0CsjHtSR7YjKD4_8xet_data: argument 0"}
!138 = distinct !{!138, i1 true, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VechE14extend_trustedINtNtCskKLDkoKarTP_4core6option8IntoIterhEE0CsjHtSR7YjKD4_8xet_data"}
!139 = distinct !{!139, !138, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VechE14extend_trustedINtNtCskKLDkoKarTP_4core6option8IntoIterhEE0CsjHtSR7YjKD4_8xet_data: argument 0"}
!140 = !{!131}
!141 = !{!139, !137, !135, !133}
!142 = !{!135, !133}
!143 = distinct !{!143, i1 true, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCsjHtSR7YjKD4_8xet_data"}
!144 = distinct !{!144, !143, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCsjHtSR7YjKD4_8xet_data: argument 0"}
!145 = distinct !{!145, i1 true, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!146 = distinct !{!146, !145, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!147 = distinct !{!147, i1 true, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!148 = distinct !{!148, !147, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!149 = distinct !{!149, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!150 = distinct !{!150, !149, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!151 = !{!144}
!152 = !{!146}
!153 = !{!150, !148}
!154 = distinct !{!154, i1 true, !"_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsjHtSR7YjKD4_8xet_data"}
!155 = distinct !{!155, !154, !"_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsjHtSR7YjKD4_8xet_data: argument 0"}
!156 = distinct !{!156, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data"}
!157 = distinct !{!157, !156, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data: argument 0"}
!158 = distinct !{!158, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data"}
!159 = distinct !{!159, !158, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data: argument 0"}
!160 = !{!155}
!161 = !{!157, !155}
!162 = !{!159, !155}
!163 = distinct !{!163, i1 true, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!164 = distinct !{!164, !163, !"_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!165 = distinct !{!165, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EECsjHtSR7YjKD4_8xet_data"}
end_hunk_2
begin_hunk_3_@llvm.umin.i64/@llvm.umax.i64
!958 = distinct !{!958, i1 true, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryE7reserveCsjHtSR7YjKD4_8xet_data"}
!959 = distinct !{!959, !958, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryE7reserveCsjHtSR7YjKD4_8xet_data: argument 0"}
!960 = distinct !{!960, i1 true, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3L_3VecB1n_E14extend_trustedB3_E0ECsjHtSR7YjKD4_8xet_data"}
!961 = distinct !{!961, !960, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3L_3VecB1n_E14extend_trustedB3_E0ECsjHtSR7YjKD4_8xet_data: argument 0"}
!962 = distinct !{!962, i1 true, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB30_8for_each4callB1s_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4g_3VecB1s_E14extend_trustedBP_E0E0ECsjHtSR7YjKD4_8xet_data"}
!963 = distinct !{!963, !962, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB30_8for_each4callB1s_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4g_3VecB1s_E14extend_trustedBP_E0E0ECsjHtSR7YjKD4_8xet_data: argument 0"}
!964 = distinct !{!964, i1 true, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB2n_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4V_3VecBQ_E14extend_trustedINtNtB3f_6cloned6ClonedBF_EE0E0E0ECsjHtSR7YjKD4_8xet_data"}
!965 = distinct !{!965, !964, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB2n_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4V_3VecBQ_E14extend_trustedINtNtB3f_6cloned6ClonedBF_EE0E0E0ECsjHtSR7YjKD4_8xet_data: argument 0"}
!966 = distinct !{!966, i1 true, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB45_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0CsjHtSR7YjKD4_8xet_data"}
!967 = distinct !{!967, !966, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB45_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0CsjHtSR7YjKD4_8xet_data: argument 0"}
!968 = distinct !{!968, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2U_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6cloned6ClonedINtNtNtBe_5slice4iter4IterB1f_EEE0E0CsjHtSR7YjKD4_8xet_data"}
!969 = distinct !{!969, !968, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2U_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6cloned6ClonedINtNtNtBe_5slice4iter4IterB1f_EEE0E0CsjHtSR7YjKD4_8xet_data: argument 0"}
!970 = distinct !{!970, i1 true, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2E_5slice4iter4IterBI_EEE0CsjHtSR7YjKD4_8xet_data"}
!971 = distinct !{!971, !970, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2E_5slice4iter4IterBI_EEE0CsjHtSR7YjKD4_8xet_data: argument 0"}
!972 = distinct !{!972, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryE8push_mutCsjHtSR7YjKD4_8xet_data"}
!973 = distinct !{!973, !972, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryE8push_mutCsjHtSR7YjKD4_8xet_data: argument 0"}
!974 = distinct !{!974, i1 true, !"_RNCNvNtNtCsjHtSR7YjKD4_8xet_data10processing12range_upload11compose_mdb0B7_"}
!975 = distinct !{!975, !974, !"_RNCNvNtNtCsjHtSR7YjKD4_8xet_data10processing12range_upload11compose_mdb0B7_: argument 1"}
!976 = distinct !{!976, !974, !"_RNCNvNtNtCsjHtSR7YjKD4_8xet_data10processing12range_upload11compose_mdb0B7_: argument 0"}
!977 = distinct !{!977, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryE8push_mutCsjHtSR7YjKD4_8xet_data"}
!978 = distinct !{!978, !977, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryE8push_mutCsjHtSR7YjKD4_8xet_data: argument 0"}
!979 = distinct !{!979, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!980 = distinct !{!980, !979, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!981 = distinct !{!981, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryE8push_mutCsjHtSR7YjKD4_8xet_data"}
!982 = distinct !{!982, !981, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryE8push_mutCsjHtSR7YjKD4_8xet_data: argument 0"}
!983 = distinct !{!983, i1 true, !"_RNCNvNtNtCsjHtSR7YjKD4_8xet_data10processing12range_upload11compose_mdbs_0B7_"}
!984 = distinct !{!984, !983, !"_RNCNvNtNtCsjHtSR7YjKD4_8xet_data10processing12range_upload11compose_mdbs_0B7_: argument 1"}
!985 = distinct !{!985, !983, !"_RNCNvNtNtCsjHtSR7YjKD4_8xet_data10processing12range_upload11compose_mdbs_0B7_: argument 0"}
!986 = distinct !{!986, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!987 = distinct !{!987, !986, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!988 = distinct !{!988, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!989 = distinct !{!989, !988, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!990 = distinct !{!990, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryE8push_mutCsjHtSR7YjKD4_8xet_data"}
!991 = distinct !{!991, !990, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryE8push_mutCsjHtSR7YjKD4_8xet_data: argument 0"}
!992 = !{!939}
!993 = !{!941}
!994 = !{!943, !941}
!995 = !{!955, !953, !951, !949, !947, !945, !941}
!996 = !{!949, !947, !945}
!997 = !{!957}
!998 = !{!959, !957}
!999 = !{!971, !969, !967, !965, !963, !961, !957}
!1000 = !{!965, !963, !961}
!1001 = !{!973}
!1002 = !{!976, !975}
!1003 = !{!978}
!1004 = !{!980}
!1005 = !{!982}
!1006 = !{!985, !984}
!1007 = !{!987}
!1008 = !{!989}
!1009 = !{!991}
!1010 = distinct !{!1010, i1 true, !"_RNCNvNtNtCsjHtSR7YjKD4_8xet_data10processing12range_upload18compute_total_size0B7_"}
!1011 = distinct !{!1011, !1010, !"_RNCNvNtNtCsjHtSR7YjKD4_8xet_data10processing12range_upload18compute_total_size0B7_: argument 0"}
!1012 = distinct !{!1012, i1 true, !"_RNCNvNtNtCsjHtSR7YjKD4_8xet_data10processing12range_upload18compute_total_sizes0_0B7_"}
!1013 = distinct !{!1013, !1012, !"_RNCNvNtNtCsjHtSR7YjKD4_8xet_data10processing12range_upload18compute_total_sizes0_0B7_: argument 0"}
!1014 = distinct !{!1014, !1012, !"_RNCNvNtNtCsjHtSR7YjKD4_8xet_data10processing12range_upload18compute_total_sizes0_0B7_: argument 1"}
!1015 = !{!1011}
!1016 = !{!1013}
!1017 = !{!1013, !1014}
!1018 = !{!1014}
!1019 = distinct !{!1019, !1020}
!1020 = !{!"llvm.loop.peeled.count", i32 1}
!1021 = distinct !{!1021, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjjEE8push_mutCsjHtSR7YjKD4_8xet_data"}
!1022 = distinct !{!1022, !1021, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjjEE8push_mutCsjHtSR7YjKD4_8xet_data: argument 0"}
!1023 = distinct !{!1023, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!1024 = distinct !{!1024, !1023, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!1025 = !{!1022}
!1026 = !{!1024}
!1027 = distinct !{!1027, i1 true, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB16_2__CEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2E_5slice4iter4IterNtB16_19XorbRangeDescriptorENCNCNvNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term24retrieve_file_term_block0s_0EE9from_iterB4o_"}
!1028 = distinct !{!1028, !1027, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB16_2__CEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2E_5slice4iter4IterNtB16_19XorbRangeDescriptorENCNCNvNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term24retrieve_file_term_block0s_0EE9from_iterB4o_: argument 0"}
!1029 = distinct !{!1029, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data"}
!1030 = distinct !{!1030, !1029, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data: argument 0"}
!1031 = distinct !{!1031, i1 true, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBW_2__CEEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2k_5slice4iter4IterNtBW_19XorbRangeDescriptorENCNCNvNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term24retrieve_file_term_block0s_0EE11spec_extendB43_"}
!1032 = distinct !{!1032, !1031, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBW_2__CEEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2k_5slice4iter4IterNtBW_19XorbRangeDescriptorENCNCNvNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term24retrieve_file_term_block0s_0EE11spec_extendB43_: argument 0"}
!1033 = distinct !{!1033, i1 true, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBJ_2__CEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtBJ_19XorbRangeDescriptorENCNCNvNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term24retrieve_file_term_block0s_0EEB3L_"}
!1034 = distinct !{!1034, !1033, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBJ_2__CEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtBJ_19XorbRangeDescriptorENCNCNvNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term24retrieve_file_term_block0s_0EEB3L_: argument 0"}
!1035 = distinct !{!1035, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBP_2__CEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!1036 = distinct !{!1036, !1035, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBP_2__CEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!1037 = !{!1028}
!1038 = !{!1030, !1028}
!1039 = !{!1034, !1032, !1028}
!1040 = !{!1036, !1028}
!1041 = distinct !{!1041, i1 true, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB16_2__HEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2E_5slice4iter4IterNtB16_19XorbRangeDescriptorENCNCNvNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term24retrieve_file_term_block0s0_0EE9from_iterB4o_"}
!1042 = distinct !{!1042, !1041, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtB16_2__HEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2E_5slice4iter4IterNtB16_19XorbRangeDescriptorENCNCNvNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term24retrieve_file_term_block0s0_0EE9from_iterB4o_: argument 0"}
!1043 = distinct !{!1043, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data"}
!1044 = distinct !{!1044, !1043, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data: argument 0"}
!1045 = distinct !{!1045, i1 true, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBW_2__HEEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2k_5slice4iter4IterNtBW_19XorbRangeDescriptorENCNCNvNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term24retrieve_file_term_block0s0_0EE11spec_extendB43_"}
!1046 = distinct !{!1046, !1045, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBW_2__HEEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2k_5slice4iter4IterNtBW_19XorbRangeDescriptorENCNCNvNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term24retrieve_file_term_block0s0_0EE11spec_extendB43_: argument 0"}
!1047 = distinct !{!1047, i1 true, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBJ_2__HEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtBJ_19XorbRangeDescriptorENCNCNvNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term24retrieve_file_term_block0s0_0EEB3L_"}
!1048 = distinct !{!1048, !1047, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBJ_2__HEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtBJ_19XorbRangeDescriptorENCNCNvNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term24retrieve_file_term_block0s0_0EEB3L_: argument 0"}
!1049 = distinct !{!1049, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBP_2__HEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!1050 = distinct !{!1050, !1049, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBP_2__HEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!1051 = !{!1042}
!1052 = !{!1044, !1042}
!1053 = !{!1048, !1046, !1042}
!1054 = !{!1050, !1042}
!1055 = distinct !{!1055, i1 true, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsG258MDvU3F_3std4path7PathBufEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2f_5slice4iter4IterINtNtB8_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data10processing15shard_interface6nativeNtB5d_21SessionShardInterface3new00EE9from_iterB5j_"}
!1056 = distinct !{!1056, !1055, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsG258MDvU3F_3std4path7PathBufEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2f_5slice4iter4IterINtNtB8_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data10processing15shard_interface6nativeNtB5d_21SessionShardInterface3new00EE9from_iterB5j_: argument 0"}
!1057 = distinct !{!1057, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data"}
!1058 = distinct !{!1058, !1057, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data: argument 0"}
!1059 = distinct !{!1059, i1 true, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtCsG258MDvU3F_3std4path7PathBufEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1W_5slice4iter4IterINtNtB8_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data10processing15shard_interface6nativeNtB4U_21SessionShardInterface3new00EE11spec_extendB50_"}
!1060 = distinct !{!1060, !1059, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtCsG258MDvU3F_3std4path7PathBufEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1W_5slice4iter4IterINtNtB8_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data10processing15shard_interface6nativeNtB4U_21SessionShardInterface3new00EE11spec_extendB50_: argument 0"}
!1061 = distinct !{!1061, i1 true, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCsG258MDvU3F_3std4path7PathBufE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4IterINtNtB8_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data10processing15shard_interface6nativeNtB4C_21SessionShardInterface3new00EEB4I_"}
!1062 = distinct !{!1062, !1061, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCsG258MDvU3F_3std4path7PathBufE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4IterINtNtB8_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEENCNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data10processing15shard_interface6nativeNtB4C_21SessionShardInterface3new00EEB4I_: argument 0"}
!1063 = !{!1056}
!1064 = !{!1058, !1056}
!1065 = !{!1062, !1060, !1056}
!1066 = distinct !{!1066, i1 true, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2R_5slice4iter4IterNtNtNtB19_11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4E_11FileDeduperNtNtNtB4I_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks00EE9from_iterB4I_"}
!1067 = distinct !{!1067, !1066, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2R_5slice4iter4IterNtNtNtB19_11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4E_11FileDeduperNtNtNtB4I_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks00EE9from_iterB4I_: argument 0"}
!1068 = distinct !{!1068, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data"}
!1069 = distinct !{!1069, !1068, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data: argument 0"}
!1070 = distinct !{!1070, i1 true, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2y_5slice4iter4IterNtNtNtBZ_11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4k_11FileDeduperNtNtNtB4o_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks00EE11spec_extendB4o_"}
!1071 = distinct !{!1071, !1070, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2y_5slice4iter4IterNtNtNtBZ_11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4k_11FileDeduperNtNtNtB4o_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks00EE11spec_extendB4o_: argument 0"}
!1072 = distinct !{!1072, i1 true, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterNtNtNtBM_11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB42_11FileDeduperNtNtNtB46_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks00EEB46_"}
!1073 = distinct !{!1073, !1072, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterNtNtNtBM_11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB42_11FileDeduperNtNtNtB46_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks00EEB46_: argument 0"}
!1074 = distinct !{!1074, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!1075 = distinct !{!1075, !1074, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!1076 = !{!1067}
!1077 = !{!1069, !1067}
!1078 = !{!1073, !1071, !1067}
!1079 = !{!1075, !1067}
!1080 = distinct !{!1080, i1 true, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2R_5slice4iter4IterTB13_yEENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4c_11FileDeduperNtNtNtB4g_10processing23deduplication_interface24UploadSessionDataManagerE8finalize00EE9from_iterB4g_"}
!1081 = distinct !{!1081, !1080, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2R_5slice4iter4IterTB13_yEENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4c_11FileDeduperNtNtNtB4g_10processing23deduplication_interface24UploadSessionDataManagerE8finalize00EE9from_iterB4g_: argument 0"}
!1082 = distinct !{!1082, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data"}
!1083 = distinct !{!1083, !1082, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data: argument 0"}
!1084 = distinct !{!1084, i1 true, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2y_5slice4iter4IterTBT_yEENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB3S_11FileDeduperNtNtNtB3W_10processing23deduplication_interface24UploadSessionDataManagerE8finalize00EE11spec_extendB3W_"}
!1085 = distinct !{!1085, !1084, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2y_5slice4iter4IterTBT_yEENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB3S_11FileDeduperNtNtNtB3W_10processing23deduplication_interface24UploadSessionDataManagerE8finalize00EE11spec_extendB3W_: argument 0"}
!1086 = distinct !{!1086, i1 true, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterTBG_yEENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB3A_11FileDeduperNtNtNtB3E_10processing23deduplication_interface24UploadSessionDataManagerE8finalize00EEB3E_"}
!1087 = distinct !{!1087, !1086, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterTBG_yEENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB3A_11FileDeduperNtNtNtB3E_10processing23deduplication_interface24UploadSessionDataManagerE8finalize00EEB3E_: argument 0"}
!1088 = distinct !{!1088, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!1089 = distinct !{!1089, !1088, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!1090 = !{!1081}
!1091 = !{!1083, !1081}
!1092 = !{!1087, !1085, !1081}
!1093 = !{!1089, !1081}
!1094 = distinct !{!1094, i1 true, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtB8_11collections5btree3map6ValuesNtNtNtB19_10merklehash9data_hash8DataHashB13_EEE9from_iterCsjHtSR7YjKD4_8xet_data"}
!1095 = distinct !{!1095, !1094, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtB8_11collections5btree3map6ValuesNtNtNtB19_10merklehash9data_hash8DataHashB13_EEE9from_iterCsjHtSR7YjKD4_8xet_data: argument 1"}
!1096 = distinct !{!1096, !1094, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtB8_11collections5btree3map6ValuesNtNtNtB19_10merklehash9data_hash8DataHashB13_EEE9from_iterCsjHtSR7YjKD4_8xet_data: argument 0"}
!1097 = distinct !{!1097, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data"}
!1098 = distinct !{!1098, !1097, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data: argument 0"}
!1099 = distinct !{!1099, i1 true, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtB8_11collections5btree3map6ValuesNtNtNtBZ_10merklehash9data_hash8DataHashBT_EEE11spec_extendCsjHtSR7YjKD4_8xet_data"}
!1100 = distinct !{!1100, !1099, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtB8_11collections5btree3map6ValuesNtNtNtBZ_10merklehash9data_hash8DataHashBT_EEE11spec_extendCsjHtSR7YjKD4_8xet_data: argument 0"}
!1101 = distinct !{!1101, i1 true, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtB8_11collections5btree3map6ValuesNtNtNtBM_10merklehash9data_hash8DataHashBG_EEECsjHtSR7YjKD4_8xet_data"}
!1102 = distinct !{!1102, !1101, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtB8_11collections5btree3map6ValuesNtNtNtBM_10merklehash9data_hash8DataHashBG_EEECsjHtSR7YjKD4_8xet_data: argument 0"}
!1103 = distinct !{!1103, !1099, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtB8_11collections5btree3map6ValuesNtNtNtBZ_10merklehash9data_hash8DataHashBT_EEE11spec_extendCsjHtSR7YjKD4_8xet_data: argument 1"}
!1104 = distinct !{!1104, !1101, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtB8_11collections5btree3map6ValuesNtNtNtBM_10merklehash9data_hash8DataHashBG_EEECsjHtSR7YjKD4_8xet_data: argument 1"}
!1105 = distinct !{!1105, i1 true, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map6ValuesNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB20_14metadata_shard12file_structs11MDBFileInfoEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtB16_3vecINtB4N_3VecB34_E14extend_trustedB3_E0ECsjHtSR7YjKD4_8xet_data"}
!1106 = distinct !{!1106, !1105, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map6ValuesNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB20_14metadata_shard12file_structs11MDBFileInfoEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtB16_3vecINtB4N_3VecB34_E14extend_trustedB3_E0ECsjHtSR7YjKD4_8xet_data: argument 1"}
!1107 = distinct !{!1107, !1105, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map6ValuesNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB20_14metadata_shard12file_structs11MDBFileInfoEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtB16_3vecINtB4N_3VecB34_E14extend_trustedB3_E0ECsjHtSR7YjKD4_8xet_data: argument 0"}
!1108 = distinct !{!1108, i1 true, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map6ValuesNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB25_14metadata_shard12file_structs11MDBFileInfoEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB42_8for_each4callB39_NCINvMsk_NtB1b_3vecINtB5i_3VecB39_E14extend_trustedBP_E0E0ECsjHtSR7YjKD4_8xet_data"}
!1109 = distinct !{!1109, !1108, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map6ValuesNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB25_14metadata_shard12file_structs11MDBFileInfoEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB42_8for_each4callB39_NCINvMsk_NtB1b_3vecINtB5i_3VecB39_E14extend_trustedBP_E0E0ECsjHtSR7YjKD4_8xet_data: argument 1"}
!1110 = distinct !{!1110, !1108, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map6ValuesNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB25_14metadata_shard12file_structs11MDBFileInfoEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB42_8for_each4callB39_NCINvMsk_NtB1b_3vecINtB5i_3VecB39_E14extend_trustedBP_E0E0ECsjHtSR7YjKD4_8xet_data: argument 0"}
!1111 = distinct !{!1111, i1 true, !"_RINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map6ValuesNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB16_14metadata_shard12file_structs11MDBFileInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB38_8adapters3map8map_foldRB2a_B2a_uNvYB2a_NtNtB3a_5clone5Clone5cloneNCINvNvB32_8for_each4callB2a_NCINvMsk_NtBc_3vecINtB5V_3VecB2a_E14extend_trustedINtNtB4a_6cloned6ClonedB3_EE0E0E0ECsjHtSR7YjKD4_8xet_data"}
!1112 = distinct !{!1112, !1111, !"_RINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map6ValuesNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB16_14metadata_shard12file_structs11MDBFileInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB38_8adapters3map8map_foldRB2a_B2a_uNvYB2a_NtNtB3a_5clone5Clone5cloneNCINvNvB32_8for_each4callB2a_NCINvMsk_NtBc_3vecINtB5V_3VecB2a_E14extend_trustedINtNtB4a_6cloned6ClonedB3_EE0E0E0ECsjHtSR7YjKD4_8xet_data: argument 1"}
!1113 = distinct !{!1113, i1 true, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3V_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtNtNtB3X_11collections5btree3map6ValuesNtNtNtB11_10merklehash9data_hash8DataHashBV_EEE0E0E0CsjHtSR7YjKD4_8xet_data"}
!1114 = distinct !{!1114, !1113, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3V_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtNtNtB3X_11collections5btree3map6ValuesNtNtNtB11_10merklehash9data_hash8DataHashBV_EEE0E0E0CsjHtSR7YjKD4_8xet_data: argument 1"}
!1115 = distinct !{!1115, i1 true, !"_RNvYNvYNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoNtNtCskKLDkoKarTP_4core5clone5Clone5cloneINtNtNtB1v_3ops8function5FnMutTRB5_EE8call_mutCsjHtSR7YjKD4_8xet_data"}
!1116 = distinct !{!1116, !1115, !"_RNvYNvYNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoNtNtCskKLDkoKarTP_4core5clone5Clone5cloneINtNtNtB1v_3ops8function5FnMutTRB5_EE8call_mutCsjHtSR7YjKD4_8xet_data: argument 1"}
!1117 = distinct !{!1117, i1 true, !"_RNvXsw_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB5_11MDBFileInfoNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!1118 = distinct !{!1118, !1117, !"_RNvXsw_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB5_11MDBFileInfoNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 1"}
!1119 = distinct !{!1119, !1113, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3V_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtNtNtB3X_11collections5btree3map6ValuesNtNtNtB11_10merklehash9data_hash8DataHashBV_EEE0E0E0CsjHtSR7YjKD4_8xet_data: argument 0"}
!1120 = distinct !{!1120, !1115, !"_RNvYNvYNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoNtNtCskKLDkoKarTP_4core5clone5Clone5cloneINtNtNtB1v_3ops8function5FnMutTRB5_EE8call_mutCsjHtSR7YjKD4_8xet_data: argument 0"}
!1121 = distinct !{!1121, !1117, !"_RNvXsw_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB5_11MDBFileInfoNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!1122 = distinct !{!1122, i1 true, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data"}
!1123 = distinct !{!1123, !1122, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data: argument 0"}
!1124 = distinct !{!1124, i1 true, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data"}
!1125 = distinct !{!1125, !1124, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data: argument 1"}
!1126 = distinct !{!1126, !1124, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data: argument 0"}
!1127 = distinct !{!1127, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data"}
!1128 = distinct !{!1128, !1127, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data: argument 0"}
!1129 = distinct !{!1129, i1 true, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data"}
!1130 = distinct !{!1130, !1129, !"_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjHtSR7YjKD4_8xet_data: argument 0"}
!1131 = distinct !{!1131, i1 true, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data"}
!1132 = distinct !{!1132, !1131, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data: argument 1"}
!1133 = distinct !{!1133, !1131, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data: argument 0"}
!1134 = distinct !{!1134, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data"}
!1135 = distinct !{!1135, !1134, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data: argument 0"}
!1136 = distinct !{!1136, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!1137 = distinct !{!1137, !1136, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileDataSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!1138 = distinct !{!1138, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2K_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6cloned6ClonedINtNtNtNtB2M_11collections5btree3map6ValuesNtNtNtB1l_10merklehash9data_hash8DataHashB1f_EEE0E0CsjHtSR7YjKD4_8xet_data"}
!1139 = distinct !{!1139, !1138, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2K_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6cloned6ClonedINtNtNtNtB2M_11collections5btree3map6ValuesNtNtNtB1l_10merklehash9data_hash8DataHashB1f_EEE0E0CsjHtSR7YjKD4_8xet_data: argument 0"}
!1140 = distinct !{!1140, i1 true, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtBa_11collections5btree3map6ValuesNtNtNtBO_10merklehash9data_hash8DataHashBI_EEE0CsjHtSR7YjKD4_8xet_data"}
!1141 = distinct !{!1141, !1140, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtBa_11collections5btree3map6ValuesNtNtNtBO_10merklehash9data_hash8DataHashBI_EEE0CsjHtSR7YjKD4_8xet_data: argument 0"}
!1142 = !{!1095}
!1143 = !{!1096, !1095}
!1144 = !{!1098, !1096, !1095}
!1145 = !{!1100}
!1146 = !{!1102}
!1147 = !{!1110, !1109, !1107, !1106, !1102, !1104, !1100, !1103, !1096, !1095}
!1148 = !{!1109, !1106, !1102, !1100, !1096}
!1149 = !{!1109, !1106, !1102, !1100, !1096, !1095}
!1150 = !{!1112, !1110, !1109, !1107, !1106, !1102, !1104, !1100, !1103, !1096, !1095}
!1151 = !{!1114}
!1152 = !{!1116}
!1153 = !{!1118}
!1154 = !{!1118, !1116, !1114}
!1155 = !{!1128, !1126, !1125, !1123, !1121, !1118, !1120, !1116, !1119, !1114, !1112, !1110, !1109, !1107, !1106, !1102, !1104, !1100, !1103, !1096, !1095}
!1156 = !{!1126, !1123, !1121, !1118, !1120, !1116, !1119, !1114, !1112, !1110, !1109, !1107, !1106, !1102, !1104, !1100, !1103, !1096, !1095}
!1157 = !{!1135, !1133, !1132, !1130, !1121, !1118, !1120, !1116, !1119, !1114, !1112, !1110, !1109, !1107, !1106, !1102, !1104, !1100, !1103, !1096, !1095}
!1158 = !{!1133, !1130, !1121, !1118, !1120, !1116, !1119, !1114, !1112, !1110, !1109, !1107, !1106, !1102, !1104, !1100, !1103, !1096, !1095}
!1159 = !{!1121, !1118, !1120, !1116, !1119, !1114, !1112, !1110, !1109, !1107, !1106, !1102, !1104, !1100, !1103, !1096, !1095}
!1160 = !{!1137, !1121, !1118, !1120, !1116, !1119, !1114, !1112, !1110, !1109, !1107, !1106, !1102, !1104, !1100, !1103, !1096, !1095}
!1161 = !{!1119, !1112, !1110, !1109, !1107, !1106, !1102, !1104, !1100, !1103, !1096, !1095}
!1162 = !{!1141, !1139, !1119, !1114, !1112, !1110, !1109, !1107, !1106, !1102, !1104, !1100, !1103, !1096, !1095}
!1163 = !{!1119, !1114, !1112, !1110, !1109, !1107, !1106, !1102, !1104, !1100, !1103, !1096, !1095}
!1164 = !{!1102, !1100}
!1165 = !{!1112, !1110, !1109, !1107, !1106, !1096, !1095}
!1166 = distinct !{!1166, i1 true, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3d_5slice4iter4IterNtB15_21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4S_11FileDeduperNtNtNtB4W_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0EE9from_iterB4W_"}
!1167 = distinct !{!1167, !1166, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3d_5slice4iter4IterNtB15_21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4S_11FileDeduperNtNtNtB4W_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0EE9from_iterB4W_: argument 1"}
!1168 = distinct !{!1168, !1166, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3d_5slice4iter4IterNtB15_21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4S_11FileDeduperNtNtNtB4W_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0EE9from_iterB4W_: argument 0"}
!1169 = distinct !{!1169, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data"}
!1170 = distinct !{!1170, !1169, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data: argument 0"}
!1171 = distinct !{!1171, i1 true, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2U_5slice4iter4IterNtBV_21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4y_11FileDeduperNtNtNtB4C_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0EE11spec_extendB4C_"}
!1172 = distinct !{!1172, !1171, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2U_5slice4iter4IterNtBV_21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4y_11FileDeduperNtNtNtB4C_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0EE11spec_extendB4C_: argument 1"}
!1173 = distinct !{!1173, !1171, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2U_5slice4iter4IterNtBV_21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4y_11FileDeduperNtNtNtB4C_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0EE11spec_extendB4C_: argument 0"}
!1174 = distinct !{!1174, i1 true, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2C_5slice4iter4IterNtBI_21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4g_11FileDeduperNtNtNtB4k_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0EEB4k_"}
!1175 = distinct !{!1175, !1174, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2C_5slice4iter4IterNtBI_21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4g_11FileDeduperNtNtNtB4k_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0EEB4k_: argument 1"}
!1176 = distinct !{!1176, !1174, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2C_5slice4iter4IterNtBI_21FileDataSequenceEntryENCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB4g_11FileDeduperNtNtNtB4k_10processing23deduplication_interface24UploadSessionDataManagerE8finalize0EEB4k_: argument 0"}
!1177 = distinct !{!1177, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!1178 = distinct !{!1178, !1177, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs21FileVerificationEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!1179 = !{!1167}
!1180 = !{!1168, !1167}
!1181 = !{!1170, !1168, !1167}
!1182 = !{!1176, !1175, !1173, !1172, !1168, !1167}
!1183 = !{!1168}
!1184 = !{!1178, !1168, !1167}
!1185 = distinct !{!1185, i1 true, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2O_5slice4iter4IterNtNtB8_6string6StringENCNCNCNvNtNtB17_14migration_tool7migrate18migrate_files_impl000EE9from_iterB19_"}
!1186 = distinct !{!1186, !1185, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2O_5slice4iter4IterNtNtB8_6string6StringENCNCNCNvNtNtB17_14migration_tool7migrate18migrate_files_impl000EE9from_iterB19_: argument 0"}
!1187 = distinct !{!1187, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data"}
!1188 = distinct !{!1188, !1187, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data: argument 0"}
!1189 = distinct !{!1189, i1 true, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2v_5slice4iter4IterNtNtB8_6string6StringENCNCNCNvNtNtBX_14migration_tool7migrate18migrate_files_impl000EE11spec_extendBZ_"}
!1190 = distinct !{!1190, !1189, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2v_5slice4iter4IterNtNtB8_6string6StringENCNCNCNvNtNtBX_14migration_tool7migrate18migrate_files_impl000EE11spec_extendBZ_: argument 0"}
!1191 = distinct !{!1191, i1 true, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2d_5slice4iter4IterNtNtB8_6string6StringENCNCNCNvNtNtBK_14migration_tool7migrate18migrate_files_impl000EEBM_"}
!1192 = distinct !{!1192, !1191, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2d_5slice4iter4IterNtNtB8_6string6StringENCNCNCNvNtNtBK_14migration_tool7migrate18migrate_files_impl000EEBM_: argument 0"}
!1193 = distinct !{!1193, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_"}
!1194 = distinct !{!1194, !1193, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleaner12Sha256PolicyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_: argument 0"}
!1195 = !{!1186}
!1196 = !{!1188, !1186}
!1197 = !{!1192, !1190, !1186}
!1198 = !{!1194, !1186}
!1199 = distinct !{!1199, i1 true, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecTmmEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1F_6filter6FilterINtNtNtB1J_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB3i_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB4l_9XorbBlock26determine_size_if_possible0ENCB4f_s_0EE9from_iterB4r_"}
!1200 = distinct !{!1200, !1199, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecTmmEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1F_6filter6FilterINtNtNtB1J_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB3i_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB4l_9XorbBlock26determine_size_if_possible0ENCB4f_s_0EE9from_iterB4r_: argument 0"}
!1201 = distinct !{!1201, !1199, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecTmmEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1F_6filter6FilterINtNtNtB1J_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB3i_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB4l_9XorbBlock26determine_size_if_possible0ENCB4f_s_0EE9from_iterB4r_: argument 1"}
!1202 = distinct !{!1202, i1 true, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1O_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2R_9XorbBlock26determine_size_if_possible0ENCB2L_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2X_"}
!1203 = distinct !{!1203, !1202, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1O_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2R_9XorbBlock26determine_size_if_possible0ENCB2L_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2X_: argument 1"}
!1204 = distinct !{!1204, i1 true, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1y_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2B_9XorbBlock26determine_size_if_possible0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_"}
!1205 = distinct !{!1205, !1204, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1y_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2B_9XorbBlock26determine_size_if_possible0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_: argument 0"}
!1206 = distinct !{!1206, i1 true, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBP_2__CEENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2C_9XorbBlock26determine_size_if_possible0EB2I_"}
!1207 = distinct !{!1207, !1206, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBP_2__CEENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2C_9XorbBlock26determine_size_if_possible0EB2I_: argument 0"}
!1208 = distinct !{!1208, i1 true, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBP_2__CEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1J_4find5checkRSBM_QNCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB38_9XorbBlock26determine_size_if_possible0E0INtNtNtBa_3ops12control_flow11ControlFlowB2U_EEB3e_"}
!1209 = distinct !{!1209, !1208, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBP_2__CEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1J_4find5checkRSBM_QNCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB38_9XorbBlock26determine_size_if_possible0E0INtNtNtBa_3ops12control_flow11ControlFlowB2U_EEB3e_: argument 0"}
!1210 = distinct !{!1210, i1 true, !"_RNvXsY_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBU_2__CEENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data"}
!1211 = distinct !{!1211, !1210, !"_RNvXsY_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBU_2__CEENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsjHtSR7YjKD4_8xet_data: argument 0"}
!1212 = distinct !{!1212, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkRSINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1h_2__CEQNCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2k_9XorbBlock26determine_size_if_possible0E0B2q_"}
!1213 = distinct !{!1213, !1212, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkRSINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1h_2__CEQNCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2k_9XorbBlock26determine_size_if_possible0E0B2q_: argument 0"}
!1214 = distinct !{!1214, !1202, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1O_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2R_9XorbBlock26determine_size_if_possible0ENCB2L_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2X_: argument 0"}
!1215 = distinct !{!1215, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data"}
!1216 = distinct !{!1216, !1215, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data: argument 0"}
!1217 = distinct !{!1217, i1 true, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecTmmEEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1m_6filter6FilterINtNtNtB1q_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB2Z_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB42_9XorbBlock26determine_size_if_possible0ENCB3W_s_0EE11spec_extendB48_"}
!1218 = distinct !{!1218, !1217, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecTmmEEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1m_6filter6FilterINtNtNtB1q_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB2Z_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB42_9XorbBlock26determine_size_if_possible0ENCB3W_s_0EE11spec_extendB48_: argument 0"}
!1219 = distinct !{!1219, i1 true, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecTmmEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB18_6filter6FilterINtNtNtB1c_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB2L_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB3O_9XorbBlock26determine_size_if_possible0ENCB3I_s_0EEB3U_"}
!1220 = distinct !{!1220, !1219, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecTmmEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB18_6filter6FilterINtNtNtB1c_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB2L_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB3O_9XorbBlock26determine_size_if_possible0ENCB3I_s_0EEB3U_: argument 0"}
!1221 = distinct !{!1221, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkRSINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1h_2__CEQNCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2k_9XorbBlock26determine_size_if_possible0E0B2q_"}
!1222 = distinct !{!1222, !1221, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4find5checkRSINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1h_2__CEQNCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2k_9XorbBlock26determine_size_if_possible0E0B2q_: argument 0"}
!1223 = distinct !{!1223, !1217, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecTmmEEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1m_6filter6FilterINtNtNtB1q_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB2Z_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB42_9XorbBlock26determine_size_if_possible0ENCB3W_s_0EE11spec_extendB48_: argument 1"}
!1224 = distinct !{!1224, !1219, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecTmmEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB18_6filter6FilterINtNtNtB1c_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB2L_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB3O_9XorbBlock26determine_size_if_possible0ENCB3I_s_0EEB3U_: argument 1"}
!1225 = distinct !{!1225, i1 true, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1O_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2R_9XorbBlock26determine_size_if_possible0ENCB2L_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2X_"}
!1226 = distinct !{!1226, !1225, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1O_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2R_9XorbBlock26determine_size_if_possible0ENCB2L_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2X_: argument 1"}
!1227 = distinct !{!1227, !1225, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1O_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2R_9XorbBlock26determine_size_if_possible0ENCB2L_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2X_: argument 0"}
!1228 = distinct !{!1228, i1 true, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1y_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2B_9XorbBlock26determine_size_if_possible0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_"}
!1229 = distinct !{!1229, !1228, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtB1y_2__CEENCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2B_9XorbBlock26determine_size_if_possible0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_: argument 0"}
!1230 = distinct !{!1230, i1 true, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBP_2__CEENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2C_9XorbBlock26determine_size_if_possible0EB2I_"}
!1231 = distinct !{!1231, !1230, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBP_2__CEENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB2C_9XorbBlock26determine_size_if_possible0EB2I_: argument 0"}
!1232 = distinct !{!1232, i1 true, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBP_2__CEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1J_4find5checkRSBM_QNCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB38_9XorbBlock26determine_size_if_possible0E0INtNtNtBa_3ops12control_flow11ControlFlowB2U_EEB3e_"}
!1233 = distinct !{!1233, !1232, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter7WindowsINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBP_2__CEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1J_4find5checkRSBM_QNCNvMs0_NtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_blockNtB38_9XorbBlock26determine_size_if_possible0E0INtNtNtBa_3ops12control_flow11ControlFlowB2U_EEB3e_: argument 0"}
!1234 = distinct !{!1234, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTmmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data"}
!1235 = distinct !{!1235, !1234, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTmmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data: argument 0"}
!1236 = !{!1200}
!1237 = !{!1201}
!1238 = !{!1200, !1201}
!1239 = !{!1203}
!1240 = !{!1205}
!1241 = !{!1207}
!1242 = !{!1209}
!1243 = !{i64 1, i64 0}
!1244 = !{!1211, !1209, !1207, !1205, !1203, !1201}
!1245 = !{!1209, !1207, !1205, !1203, !1201}
!1246 = !{!1213}
!1247 = !{!1213, !1209, !1207, !1205, !1214, !1203, !1200, !1201}
!1248 = !{!1209, !1207, !1205, !1214, !1203, !1200, !1201}
!1249 = !{!1216, !1200, !1201}
!1250 = !{!1218}
!1251 = !{!1220}
!1252 = !{!1222}
!1253 = !{!1233, !1231, !1229, !1227, !1226, !1220, !1224, !1218, !1223, !1200, !1201}
!1254 = !{!1220, !1218}
!1255 = !{!1220, !1224, !1218, !1223, !1200, !1201}
!1256 = !{!1235, !1200, !1201}
!1257 = distinct !{!1257, i1 true, !"_RNvXsC_NtCs7SkU8gPisFf_4redb5errorNtB5_12StorageErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!1258 = distinct !{!1258, !1257, !"_RNvXsC_NtCs7SkU8gPisFf_4redb5errorNtB5_12StorageErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!1259 = distinct !{!1259, !1257, !"_RNvXsC_NtCs7SkU8gPisFf_4redb5errorNtB5_12StorageErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!1260 = !{!1258}
!1261 = !{i64 0, i64 -9223372036854775803}
!1262 = !{!1258, !1259}
!1263 = distinct !{!1263, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data"}
!1264 = distinct !{!1264, !1263, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data: argument 0"}
!1265 = !{!1264}
!1266 = distinct !{!1266, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data"}
!1267 = distinct !{!1267, !1266, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data: argument 0"}
!1268 = !{!1267}
!1269 = distinct !{!1269, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data"}
!1270 = distinct !{!1270, !1269, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data: argument 0"}
!1271 = !{!1270}
!1272 = distinct !{!1272, i1 true, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2j_5slice4iter4IterNtNtNtBN_11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB45_11FileDeduperNtNtNtB49_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks0s_0EEB49_"}
!1273 = distinct !{!1273, !1272, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2j_5slice4iter4IterNtNtNtBN_11xorb_object5chunk5ChunkENCNCNvMNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplicationINtB45_11FileDeduperNtNtNtB49_10processing23deduplication_interface24UploadSessionDataManagerE14process_chunks0s_0EEB49_: argument 0"}
!1274 = distinct !{!1274, i1 true, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE7reserveCsjHtSR7YjKD4_8xet_data"}
!1275 = distinct !{!1275, !1274, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE7reserveCsjHtSR7YjKD4_8xet_data: argument 0"}
!1276 = !{!1273}
!1277 = !{!1275, !1273}
!1278 = distinct !{!1278, i1 true, !"_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockENvMse_NtB6_4syncINtB40_3ArcB2l_E3newEB4a_EB2t_"}
!1279 = distinct !{!1279, !1278, !"_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockENvMse_NtB6_4syncINtB40_3ArcB2l_E3newEB4a_EB2t_: argument 0"}
!1280 = distinct !{!1280, !1278, !"_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockENvMse_NtB6_4syncINtB40_3ArcB2l_E3newEB4a_EB2t_: argument 1"}
!1281 = distinct !{!1281, i1 true, !"_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockE32forget_allocation_drop_remainingB14_"}
!1282 = distinct !{!1282, !1281, !"_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockE32forget_allocation_drop_remainingB14_: argument 0"}
!1283 = distinct !{!1283, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockENvMse_NtB1g_4syncINtB3C_3ArcB1X_E3newEEB25_"}
!1284 = distinct !{!1284, !1283, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockENvMse_NtB1g_4syncINtB3C_3ArcB1X_E3newEEB25_: argument 0"}
!1285 = distinct !{!1285, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockEEB1x_"}
!1286 = distinct !{!1286, !1285, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockEEB1x_: argument 0"}
!1287 = distinct !{!1287, i1 true, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_"}
!1288 = distinct !{!1288, !1287, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_: argument 0"}
!1289 = distinct !{!1289, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_"}
!1290 = distinct !{!1290, !1289, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_: argument 0"}
!1291 = distinct !{!1291, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_"}
!1292 = distinct !{!1292, !1291, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms10xorb_block9XorbBlockENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_: argument 0"}
!1293 = !{!1279}
!1294 = !{!1280}
!1295 = !{!1279, !1280}
!1296 = !{!1282, !1280}
!1297 = !{!1284}
!1298 = !{!1286}
!1299 = !{!1288}
!1300 = !{!1288, !1286, !1284, !1280}
!1301 = !{!1288, !1286, !1284, !1279}
!1302 = !{!1290, !1288, !1286, !1284, !1279}
!1303 = !{!1292, !1288, !1286, !1284, !1279}
!1304 = distinct !{!1304, i1 true, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtB15_13FileTermEntryENCNCNvB15_24retrieve_file_term_block0s6_0EE9from_iterB1b_"}
!1305 = distinct !{!1305, !1304, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtB15_13FileTermEntryENCNCNvB15_24retrieve_file_term_block0s6_0EE9from_iterB1b_: argument 1"}
!1306 = distinct !{!1306, !1304, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtB15_13FileTermEntryENCNCNvB15_24retrieve_file_term_block0s6_0EE9from_iterB1b_: argument 0"}
!1307 = distinct !{!1307, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data"}
!1308 = distinct !{!1308, !1307, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data: argument 0"}
!1309 = distinct !{!1309, i1 true, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtBV_13FileTermEntryENCNCNvBV_24retrieve_file_term_block0s6_0EE11spec_extendB11_"}
!1310 = distinct !{!1310, !1309, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtBV_13FileTermEntryENCNCNvBV_24retrieve_file_term_block0s6_0EE11spec_extendB11_: argument 1"}
!1311 = distinct !{!1311, !1309, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtBV_13FileTermEntryENCNCNvBV_24retrieve_file_term_block0s6_0EE11spec_extendB11_: argument 0"}
!1312 = distinct !{!1312, i1 true, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtBI_13FileTermEntryENCNCNvBI_24retrieve_file_term_block0s6_0EEBO_"}
!1313 = distinct !{!1313, !1312, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtBI_13FileTermEntryENCNCNvBI_24retrieve_file_term_block0s6_0EEBO_: argument 1"}
!1314 = distinct !{!1314, !1312, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtBI_13FileTermEntryENCNCNvBI_24retrieve_file_term_block0s6_0EEBO_: argument 0"}
!1315 = distinct !{!1315, i1 true, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term13FileTermEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_"}
!1316 = distinct !{!1316, !1315, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term13FileTermEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_: argument 0"}
!1317 = distinct !{!1317, i1 true, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term13FileTermEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_"}
!1318 = distinct !{!1318, !1317, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term13FileTermEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_: argument 0"}
!1319 = distinct !{!1319, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term13FileTermEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_"}
!1320 = distinct !{!1320, !1319, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term13FileTermEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_: argument 0"}
!1321 = !{!1305}
!1322 = !{!1306, !1305}
!1323 = !{!1308, !1306, !1305}
!1324 = !{!1314, !1313, !1311, !1310, !1306, !1305}
!1325 = !{!1306}
!1326 = !{!1316, !1305}
!1327 = !{!1320, !1318, !1306, !1305}
!1328 = distinct !{!1328, i1 true, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBN_2__CENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data"}
!1329 = distinct !{!1329, !1328, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBN_2__CENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data: argument 0"}
!1330 = distinct !{!1330, !1328, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangemNtBN_2__CENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data: argument 1"}
!1331 = distinct !{!1331, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data"}
!1332 = distinct !{!1332, !1331, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data: argument 0"}
!1333 = distinct !{!1333, !18, !19}
!1334 = distinct !{!1334, !19, !18}
!1335 = !{!1329}
!1336 = !{!1330}
!1337 = !{!1332, !1329, !1330}
!1338 = !{!1329, !1330}
!1339 = distinct !{!1339, i1 true, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBN_2__HENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data"}
!1340 = distinct !{!1340, !1339, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBN_2__HENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data: argument 0"}
!1341 = distinct !{!1341, !1339, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBN_2__HENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data: argument 1"}
!1342 = distinct !{!1342, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data"}
!1343 = distinct !{!1343, !1342, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data: argument 0"}
!1344 = distinct !{!1344, !18, !19}
!1345 = distinct !{!1345, !19, !18}
!1346 = !{!1340}
!1347 = !{!1341}
!1348 = !{!1343, !1340, !1341}
!1349 = !{!1340, !1341}
!1350 = distinct !{!1350, i1 true, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data"}
!1351 = distinct !{!1351, !1350, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data: argument 0"}
!1352 = distinct !{!1352, !1350, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjHtSR7YjKD4_8xet_data: argument 1"}
!1353 = distinct !{!1353, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data"}
!1354 = distinct !{!1354, !1353, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjHtSR7YjKD4_8xet_data: argument 0"}
!1355 = !{!1351}
!1356 = !{!1354, !1351, !1352}
!1357 = !{!1351, !1352}
!1358 = distinct !{!1358, i1 true, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_"}
!1359 = distinct !{!1359, !1358, !"_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtNtCsjHtSR7YjKD4_8xet_data19file_reconstruction20reconstruction_terms9file_term8FileTermNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_: argument 1"}
end_hunk_3
