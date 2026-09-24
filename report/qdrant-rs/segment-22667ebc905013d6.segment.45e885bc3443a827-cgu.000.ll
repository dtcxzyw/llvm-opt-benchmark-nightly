Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.000?download=true
inline.NumInlined: 13187
inline.NumDeleted: 6664
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsG258MDvU3F_3std4path7PathBufE6retainNCNvXs0_NtNtNtNtCs607s0NAIaWN_7segment5index12sparse_index19sparse_vector_index17vector_index_implINtB1v_17SparseVectorIndexNtNtNtNtCs4ByaKcm8ifS_6sparse5index14inverted_index18inverted_index_ram16InvertedIndexRamENtNtB1z_17vector_index_base11VectorIndex5files0EB1B_:bb.a
_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsG258MDvU3F_3std4path7PathBufE10retain_mutNCINvB2_6retainNCNvXs0_NtNtNtNtCs607s0NAIaWN_7segment5index12sparse_index19sparse_vector_index17vector_index_implINtB1P_17SparseVectorIndexNtNtNtNtCs4ByaKcm8ifS_6sparse5index14inverted_index18inverted_index_ram16InvertedIndexRamENtNtB1T_17vector_index_base11VectorIndex5files0E0EB1V_.exit: ; preds = %bb.f, %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs607s0NAIaWN_7segment.exit._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsawMg70ExlpE_9blobstore7tracker15OptionalPointerE5drainINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 3 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs607s0NAIaWN_7segment(i64 noundef %2, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsE11resize_withNvYBF_NtNtCskKLDkoKarTP_4core7default7Default7defaultEBL_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [216 x i8], align 8               ; 4 uses
  %.sroa.4.i.i.i.i.i.i = alloca [222 x i8], align 2 ; 4 uses
  %.sroa.52.i.i.i.i = alloca [222 x i8], align 2  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !14 ; 8 uses
  %i.d = icmp ult i64 %i.c, 41175768021673107
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp ugt i64 %1, %i.c
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  %i.f = sub nuw nsw i64 %i.c, %1                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1087, !nonnull !14, !noundef !14
  %i.i = getelementptr inbounds nuw [224 x i8], ptr %i.h, i64 %1 ; 2 uses
  store i64 %1, ptr %i.b, align 8, !alias.scope !1087
  %i.j = icmp eq i64 %i.c, %1
  br i1 %i.j, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsE8truncateBK_.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.k = icmp eq i64 %i.m, %i.f
  br i1 %i.k, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsE8truncateBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i14 = phi i64 [ %i.m, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [224 x i8], ptr %i.i, i64 %.sroa.0.0.i.i14
  %i.m = add nuw nsw i64 %.sroa.0.0.i.i14, 1      ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsEBH_(ptr noalias nofree noundef align 8 dereferenceable(224) %i.l)
          to label %bb.c unwind label %bb.e, !noalias !1087

bb.d:                                             ; preds = %.lr.ph16
  %i.n = add nuw nsw i64 %.sroa.0.1.i.i15, 1      ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.f
  br i1 %i.o, label %common.resume, label %.lr.ph16

bb.e:                                             ; preds = %.lr.ph
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = icmp eq i64 %i.m, %i.f
  br i1 %i.q, label %common.resume, label %.lr.ph16

.lr.ph16:                                         ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i15 = phi i64 [ %i.n, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw [224 x i8], ptr %i.i, i64 %.sroa.0.1.i.i15
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsEBH_(ptr noalias nofree noundef align 8 dereferenceable(224) %i.r) #30
          to label %bb.d unwind label %bb.f, !noalias !1087

common.resume:                                    ; preds = %bb.d, %bb.e, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.p, %bb.e ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %.lr.ph16
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !1087
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.t = sub nuw i64 %1, %i.c                     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  %i.u = load i64, ptr %0, align 8, !range !15, !alias.scope !1089, !noundef !14
  %i.v = sub nsw i64 %i.u, %i.c
  %i.w = icmp ugt i64 %i.t, %i.v
  br i1 %i.w, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsE7reserveBK_.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsE7reserveBK_.exit.i, !prof !16

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsE7reserveBK_.exit.thread.i: ; preds = %bb.g
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %i.t, i64 noundef 8, i64 noundef 224)
  %i.x = load i64, ptr %i.b, align 8, !alias.scope !1088, !noundef !14
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsE7reserveBK_.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsE7reserveBK_.exit.i: ; preds = %bb.g, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsE7reserveBK_.exit.thread.i
  %i.y = phi i64 [ %i.x, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsE7reserveBK_.exit.thread.i ], [ %i.c, %bb.g ]
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %.in.i, align 8, !alias.scope !1088, !nonnull !14, !noundef !14
  %.sroa.4.8..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i.i, i64 6
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsE7reserveBK_.exit.i
  %.val7.i.i.i.i = phi i64 [ %i.y, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsE7reserveBK_.exit.i ], [ %i.ab, %bb.i ] ; 3 uses
  %.sroa.0.0.i.in.i.i.i = phi i64 [ %i.t, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsE7reserveBK_.exit.i ], [ %.sroa.0.0.i.i.i.i, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1090
  invoke void @_RINvMsm_NtCskKLDkoKarTP_4core5arrayAuj3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitTINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors9CowVectorEENCINvMBN_BK_10wrap_mut_1uNCNvXNtNtCs3Sd3Uuv2szn_7tinyvec5array18const_generic_implAB1r_Bz_NtB3F_5Array7default0E0EB2a_(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(address) dereferenceable(216) %i.a)
          to label %bb.i unwind label %bb.j, !noalias !1091

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.i.i.i.i = add i64 %.sroa.0.0.i.in.i.i.i, -1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(216) %.sroa.4.8..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(216) %i.a, i64 216, i1 false), !noalias !1090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1090
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.52.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(222) %.sroa.52.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(222) %.sroa.4.i.i.i.i.i.i, i64 222, i1 false), !noalias !1092
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i)
  %i.aa = getelementptr inbounds nuw [224 x i8], ptr %i.z, i64 %.val7.i.i.i.i ; 2 uses
  store i16 0, ptr %i.aa, align 8, !noalias !1093
  %.sroa.52.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(222) %.sroa.52.8..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(222) %.sroa.52.i.i.i.i, i64 222, i1 false), !noalias !1093
  %i.ab = add i64 %.val7.i.i.i.i, 1               ; 2 uses
  %i.ac = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52.i.i.i.i)
  br i1 %i.ac, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2b_7sources11repeat_with10RepeatWithNvYBG_NtNtB2d_7default7Default7defaultEEEBM_.exit, label %bb.h

bb.j:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  store i64 %.val7.i.i.i.i, ptr %i.b, align 8, !alias.scope !1088, !noalias !1091
  br label %common.resume

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2b_7sources11repeat_with10RepeatWithNvYBG_NtNtB2d_7default7Default7defaultEEEBM_.exit: ; preds = %bb.i
  store i64 %i.ab, ptr %i.b, align 8, !alias.scope !1088, !noalias !1094
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsE8truncateBK_.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsE8truncateBK_.exit: ; preds = %bb.c, %bb.b, %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors12NamedVectorsE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2b_7sources11repeat_with10RepeatWithNvYBG_NtNtB2d_7default7Default7defaultEEEBM_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker6change13MappingChangeE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEBN_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 3 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs607s0NAIaWN_7segment(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashE8dedup_byNCNvMNtNtNtBJ_9geo_index17on_disk_geo_index9lifecycleNtB20_14OnDiskGeoIndex10all_points0EBN_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 6 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !14, !noundef !14 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %.sroa.0.023 = phi i64 [ 1, %bb.b ], [ %.sroa.5.024, %bb.d ] ; 4 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.023 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %.val10 = load i64, ptr %i.h, align 8, !noundef !14
  %i.i = tail call noundef zeroext i1 @_RNvMs6_NtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hashNtB5_7GeoHash11starts_with(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, i64 noundef %.val10)
  %.sroa.5.024 = add nuw nsw i64 %.sroa.0.023, 1  ; 4 uses
  br i1 %i.i, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.j = icmp samesign ult i64 %.sroa.5.024, %i.b
  br i1 %i.j, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.024, %i.b
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.023, %.preheader ], [ %.sroa.11.1, %bb.f ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.sroa.5.026 = phi i64 [ %.sroa.5.0, %bb.f ], [ %.sroa.5.024, %.preheader ] ; 3 uses
  %.sroa.11.025 = phi i64 [ %.sroa.11.1, %bb.f ], [ %.sroa.0.023, %.preheader ] ; 4 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.026 ; 3 uses
  %i.l = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.025 ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %.val = load i64, ptr %i.m, align 8, !noundef !14
  %i.n = invoke noundef zeroext i1 @_RNvMs6_NtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hashNtB5_7GeoHash11starts_with(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, i64 noundef %.val)
          to label %_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index17on_disk_geo_index9lifecycleNtB6_14OnDiskGeoIndex10all_points0Be_.exit unwind label %bb.g

.thread:                                          ; preds = %bb.d, %bb.a, %._crit_edge
  ret void

_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index17on_disk_geo_index9lifecycleNtB6_14OnDiskGeoIndex10all_points0Be_.exit: ; preds = %.lr.ph
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index17on_disk_geo_index9lifecycleNtB6_14OnDiskGeoIndex10all_points0Be_.exit
  %i.o = load i64, ptr %i.k, align 8
  store i64 %i.o, ptr %i.l, align 8
  %i.p = add i64 %.sroa.11.025, 1
  br label %bb.f

bb.f:                                             ; preds = %_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index17on_disk_geo_index9lifecycleNtB6_14OnDiskGeoIndex10all_points0Be_.exit, %bb.e
  %.sroa.11.1 = phi i64 [ %i.p, %bb.e ], [ %.sroa.11.025, %_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index17on_disk_geo_index9lifecycleNtB6_14OnDiskGeoIndex10all_points0Be_.exit ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.026, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = sub nuw nsw i64 %i.b, %.sroa.5.026       ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.k, i64 %i.s, i1 false), !noalias !1099
  %i.t = add i64 %i.r, %.sroa.11.025
  store i64 %i.t, ptr %i.a, align 8, !noalias !1099
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE11resize_withNvYBF_NtNtCskKLDkoKarTP_4core7default7Default7defaultEBR_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 9 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  %i.e = sub nuw nsw i64 %i.b, %1                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1116, !nonnull !14, !noundef !14
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8, !alias.scope !1116
  %i.i = icmp eq i64 %i.b, %1
  br i1 %i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE8truncateBQ_.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEBN_.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9jZsDbilXxj_7roaring6bitmap13RoaringBitmapECs607s0NAIaWN_7segment.exit.i.i.i
  %i.j = icmp eq i64 %i.l, %i.e
  br i1 %i.j, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE8truncateBQ_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEBN_.exit.i.i
  %.sroa.0.0.i.i22 = phi i64 [ %i.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEBN_.exit.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.0.0.i.i22 ; 3 uses
  %i.l = add nuw nsw i64 %.sroa.0.0.i.i22, 1      ; 4 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9jZsDbilXxj_7roaring6bitmap9container9ContainerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9jZsDbilXxj_7roaring6bitmap13RoaringBitmapECs607s0NAIaWN_7segment.exit.i.i.i unwind label %bb.c, !noalias !1116

bb.c:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9jZsDbilXxj_7roaring6bitmap9container9ContainerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i.i unwind label %bb.d, !noalias !1116

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !1116
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9jZsDbilXxj_7roaring6bitmap13RoaringBitmapECs607s0NAIaWN_7segment.exit.i.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9jZsDbilXxj_7roaring6bitmap9container9ContainerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEBN_.exit.i.i unwind label %bb.f, !noalias !1116

bb.e:                                             ; preds = %.lr.ph24
  %i.o = add nuw nsw i64 %.sroa.0.1.i.i23, 1      ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e
  br i1 %i.p, label %._crit_edge, label %.lr.ph24

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9jZsDbilXxj_7roaring6bitmap13RoaringBitmapECs607s0NAIaWN_7segment.exit.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.m, %bb.c ]
  %i.r = icmp eq i64 %i.l, %i.e
  br i1 %i.r, label %._crit_edge, label %.lr.ph24

.lr.ph24:                                         ; preds = %.body.i.i, %bb.e
  %.sroa.0.1.i.i23 = phi i64 [ %i.o, %bb.e ], [ %i.l, %.body.i.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.0.1.i.i23
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEBN_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #30
          to label %bb.e unwind label %bb.g, !noalias !1116

._crit_edge:                                      ; preds = %bb.e, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.g:                                             ; preds = %.lr.ph24
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !1116
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.u = sub nuw i64 %1, %i.b                     ; 5 uses
  %i.v = load i64, ptr %0, align 8, !range !15, !alias.scope !1117, !noundef !14
  %i.w = sub nsw i64 %i.v, %i.b
  %i.x = icmp ugt i64 %i.u, %i.w
  br i1 %i.x, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i, !prof !16

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.thread.i: ; preds = %bb.h
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.u, i64 noundef 8, i64 noundef 24)
  %i.y = load i64, ptr %i.a, align 8, !alias.scope !1118, !noundef !14
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i: ; preds = %bb.h, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.thread.i
  %i.z = phi i64 [ %i.y, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.thread.i ], [ %i.b, %bb.h ] ; 3 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %.in.i, align 8, !alias.scope !1118, !nonnull !14, !noundef !14 ; 3 uses
  %.neg = add nuw nsw i64 %i.b, 1
  %xtraiter = and i64 %i.u, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i
  %.sroa.0.0.i.i.i.i.prol = add nsw i64 %i.u, -1
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.z ; 3 uses
  store i64 0, ptr %i.ab, align 8, !noalias !1119
  %.sroa.52.8..sroa_idx.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.52.8..sroa_idx.i.i.i.i.prol, align 8, !noalias !1119
  %.sroa.63.8..sroa_idx.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %.sroa.63.8..sroa_idx.i.i.i.i.prol, align 8, !noalias !1119
  %i.ac = add i64 %i.z, 1                         ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i
  %.lcssa.unr = phi i64 [ poison, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i ], [ %i.ac, %.prol.loopexit.unr-lcssa ]
  %.unr = phi i64 [ %i.z, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i ], [ %i.ac, %.prol.loopexit.unr-lcssa ]
  %.sroa.0.0.i.in.i.i.i.unr = phi i64 [ %i.u, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i ], [ %.sroa.0.0.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.ad = icmp eq i64 %1, %.neg
  br i1 %i.ad, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2T_7sources11repeat_with10RepeatWithNvYBG_NtNtB2V_7default7Default7defaultEEEBS_.exit, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i.new

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i.new: ; preds = %.prol.loopexit, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i.new
  %i.ae = phi i64 [ %i.ai, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i.new ], [ %.unr, %.prol.loopexit ] ; 3 uses
  %.sroa.0.0.i.in.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.1, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i.new ], [ %.sroa.0.0.i.in.i.i.i.unr, %.prol.loopexit ]
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ae ; 3 uses
  store i64 0, ptr %i.af, align 8, !noalias !1119
  %.sroa.52.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.52.8..sroa_idx.i.i.i.i, align 8, !noalias !1119
  %.sroa.63.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 0, ptr %.sroa.63.8..sroa_idx.i.i.i.i, align 8, !noalias !1119
  %.sroa.0.0.i.i.i.i.1 = add i64 %.sroa.0.0.i.in.i.i.i, -2 ; 2 uses
  %i.ag = getelementptr [24 x i8], ptr %i.aa, i64 %i.ae ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 24
  store i64 0, ptr %i.ah, align 8, !noalias !1119
  %.sroa.52.8..sroa_idx.i.i.i.i.1 = getelementptr i8, ptr %i.ag, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.52.8..sroa_idx.i.i.i.i.1, align 8, !noalias !1119
  %.sroa.63.8..sroa_idx.i.i.i.i.1 = getelementptr i8, ptr %i.ag, i64 40
  store i64 0, ptr %.sroa.63.8..sroa_idx.i.i.i.i.1, align 8, !noalias !1119
  %i.ai = add i64 %i.ae, 2                        ; 2 uses
  %i.aj = icmp eq i64 %.sroa.0.0.i.i.i.i.1, 0
  br i1 %i.aj, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2T_7sources11repeat_with10RepeatWithNvYBG_NtNtB2V_7default7Default7defaultEEEBS_.exit, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i.new

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2T_7sources11repeat_with10RepeatWithNvYBG_NtNtB2V_7default7Default7defaultEEEBS_.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i.new, %.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.ai, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE7reserveBQ_.exit.i.new ]
  store i64 %.lcssa, ptr %i.a, align 8, !alias.scope !1118, !noalias !1120
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE8truncateBQ_.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE8truncateBQ_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEBN_.exit.i.i, %bb.b, %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2T_7sources11repeat_with10RepeatWithNvYBG_NtNtB2V_7default7Default7defaultEEEBS_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE11resize_withNvYhNtNtCskKLDkoKarTP_4core7default7Default7defaultECs607s0NAIaWN_7segment:bb.a
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCs607s0NAIaWN_7segment.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCs607s0NAIaWN_7segment.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs607s0NAIaWN_7segment.exit.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.l, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs607s0NAIaWN_7segment.exit.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE5drainINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECs607s0NAIaWN_7segment(i64 noundef %2, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjE11resize_withNCNCINvMs0_NtCsinALYEoamBN_6bitvec3vecNtB15_6BitVec14do_reservationNvB2_7reserveE00ECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 6 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE8truncateCs607s0NAIaWN_7segment.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !15, !alias.scope !1385, !noundef !14
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i, !prof !16

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.thread.i: ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 8, i64 noundef 8)
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !1386, !noundef !14
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i: ; preds = %bb.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.thread.i
  %i.j = phi i64 [ %i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.thread.i ], [ %i.b, %bb.b ] ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %.in.i, align 8, !alias.scope !1386, !nonnull !14, !noundef !14
  %i.l = shl i64 %i.j, 3
  %scevgep.i.i.i.i = getelementptr nuw i8, ptr %i.k, i64 %i.l
  %i.m = shl i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.i.i.i.i, i8 0, i64 %i.m, i1 false), !noalias !1387
  %i.n = add i64 %i.j, %i.e
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE8truncateCs607s0NAIaWN_7segment.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE8truncateCs607s0NAIaWN_7segment.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.n, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs607s0NAIaWN_7segment.exit.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 3 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs607s0NAIaWN_7segment(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBT_16LiveReloadResult5merge0EB11_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1398, !noalias !1399, !noundef !14 ; 12 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit, label %.preheader33.i

.preheader33.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1398, !noalias !1399, !nonnull !14, !noundef !14 ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1400, !nonnull !14, !noundef !14 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noalias !1400, !noundef !14 ; 6 uses
  switch i64 %i.j, label %.lr.ph.i.i.i.preheader.i [
    i64 0, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit
    i64 1, label %.preheader33.split.us46.i
  ]

.preheader33.split.us46.i:                        ; preds = %.preheader33.i
  %.val14.i.i.i.us51.i = load i32, ptr %i.h, align 4, !alias.scope !1401, !noalias !1402, !noundef !14 ; 5 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.k = icmp samesign ult i64 %i.b, 4
  br i1 %i.k, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil.preheader, label %.preheader33.split.us46.i.new

.preheader33.split.us46.i.new:                    ; preds = %.preheader33.split.us46.i
  %unroll_iter = and i64 %i.b, 2305843009213693948
  br label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i: ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.3, %.preheader33.split.us46.i.new
  %.sroa.0.0.us47.i = phi i64 [ 0, %.preheader33.split.us46.i.new ], [ %i.s, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.3 ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader33.split.us46.i.new ], [ %niter.next.3, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.3 ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.0.0.us47.i
  %.val11.us48.i = load i32, ptr %i.l, align 4, !noalias !1400
  %.not.us52.i = icmp eq i32 %.val14.i.i.i.us51.i, %.val11.us48.i
  br i1 %.not.us52.i, label %.preheader.i, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i, !prof !1403

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i: ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i
  %i.m = or disjoint i64 %.sroa.0.0.us47.i, 1     ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.m
  %.val11.us48.i.1 = load i32, ptr %i.n, align 4, !noalias !1400
  %.not.us52.i.1 = icmp eq i32 %.val14.i.i.i.us51.i, %.val11.us48.i.1
  br i1 %.not.us52.i.1, label %.preheader.i, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.1, !prof !1403

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.1: ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i
  %i.o = or disjoint i64 %.sroa.0.0.us47.i, 2     ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.o
  %.val11.us48.i.2 = load i32, ptr %i.p, align 4, !noalias !1400
  %.not.us52.i.2 = icmp eq i32 %.val14.i.i.i.us51.i, %.val11.us48.i.2
  br i1 %.not.us52.i.2, label %.preheader.i, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.2, !prof !1403

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.2: ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.1
  %i.q = or disjoint i64 %.sroa.0.0.us47.i, 3     ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.q
  %.val11.us48.i.3 = load i32, ptr %i.r, align 4, !noalias !1400
  %.not.us52.i.3 = icmp eq i32 %.val14.i.i.i.us51.i, %.val11.us48.i.3
  br i1 %.not.us52.i.3, label %.preheader.i, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.3, !prof !1403

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.3: ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.2
  %i.s = add nuw nsw i64 %.sroa.0.0.us47.i, 4     ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit.loopexit51.unr-lcssa, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %.preheader33.i, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.i
  %.sroa.0.0.i = phi i64 [ %i.ax, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.i ], [ 0, %.preheader33.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.0.0.i
  %.val11.i = load i32, ptr %i.t, align 4, !noalias !1400 ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.preheader.i
  %.sroa.01.017.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.preheader.i ] ; 2 uses
  %.sroa.05.016.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader.i ] ; 2 uses
  %i.u = lshr i64 %.sroa.01.017.i.i.i.i, 1        ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %.sroa.05.016.i.i.i.i ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.j
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.v
  %.val12.i.i.i.i = load i32, ptr %i.x, align 4, !alias.scope !1401, !noalias !1402, !noundef !14
  %i.y = icmp ugt i32 %.val12.i.i.i.i, %.val11.i
  %i.z = select i1 %i.y, i64 %.sroa.05.016.i.i.i.i, i64 %i.v, !unpredictable !14 ; 2 uses
  %i.aa = sub nuw nsw i64 %.sroa.01.017.i.i.i.i, %i.u ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.loopexit.i

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.z
  %.val14.i.i.i.i = load i32, ptr %i.ac, align 4, !alias.scope !1401, !noalias !1402, !noundef !14
  %.not.i = icmp eq i32 %.val14.i.i.i.i, %.val11.i
  br i1 %.not.i, label %.preheader.i, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.i, !prof !1403

.preheader.i:                                     ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.2, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.1, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.loopexit.i
  %.us-phi60.i = phi i64 [ %.sroa.0.0.i, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.loopexit.i ], [ %i.q, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.2 ], [ %.sroa.0.0.us47.i, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i ], [ %i.m, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i ], [ %i.o, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.1 ], [ %.sroa.0.0.us47.i.epil, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil ] ; 12 uses
  %.sroa.7.062.i = add nuw nsw i64 %.us-phi60.i, 1 ; 4 uses
  %i.ad = icmp samesign ult i64 %.sroa.7.062.i, %i.b
  br i1 %i.ad, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  switch i64 %i.j, label %.lr.ph.i [
    i64 0, label %.lr.ph.i.us.preheader
    i64 1, label %.lr.ph.i.us7.preheader
  ]

.lr.ph.i.us7.preheader:                           ; preds = %.lr.ph.i.preheader
  %i.ae = add nsw i64 %i.b, -2
  %i.af = sub i64 %.us-phi60.i, %i.b
  %i.ag = and i64 %i.af, 1
  %lcmp.mod57.not.not = icmp eq i64 %i.ag, 0
  br i1 %lcmp.mod57.not.not, label %.lr.ph.i.us7.prol, label %.lr.ph.i.us7.prol.loopexit

.lr.ph.i.us7.prol:                                ; preds = %.lr.ph.i.us7.preheader
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.7.062.i
  %.val9.i.us10.prol = load i32, ptr %i.ah, align 4, !noalias !1400 ; 2 uses
  %.val14.i.i.i15.i.us13.prol = load i32, ptr %i.h, align 4, !alias.scope !1404, !noalias !1405, !noundef !14
  %.not32.i.us14.prol = icmp eq i32 %.val14.i.i.i15.i.us13.prol, %.val9.i.us10.prol
  br i1 %.not32.i.us14.prol, label %.lr.ph.i.us7.prol.loopexit.unr-lcssa, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15.prol

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15.prol: ; preds = %.lr.ph.i.us7.prol
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.us-phi60.i
  store i32 %.val9.i.us10.prol, ptr %i.ai, align 4, !noalias !1400
  %i.aj = add i64 %.us-phi60.i, 1
  br label %.lr.ph.i.us7.prol.loopexit.unr-lcssa

.lr.ph.i.us7.prol.loopexit.unr-lcssa:             ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15.prol, %.lr.ph.i.us7.prol
  %.sroa.13.1.i.us16.prol = phi i64 [ %i.aj, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15.prol ], [ %.us-phi60.i, %.lr.ph.i.us7.prol ] ; 2 uses
  %.sroa.7.0.i.us17.prol = add nuw nsw i64 %.us-phi60.i, 2
  br label %.lr.ph.i.us7.prol.loopexit

.lr.ph.i.us7.prol.loopexit:                       ; preds = %.lr.ph.i.us7.prol.loopexit.unr-lcssa, %.lr.ph.i.us7.preheader
  %.sroa.13.1.i.us16.lcssa.unr = phi i64 [ poison, %.lr.ph.i.us7.preheader ], [ %.sroa.13.1.i.us16.prol, %.lr.ph.i.us7.prol.loopexit.unr-lcssa ]
  %.sroa.7.064.i.us8.unr = phi i64 [ %.sroa.7.062.i, %.lr.ph.i.us7.preheader ], [ %.sroa.7.0.i.us17.prol, %.lr.ph.i.us7.prol.loopexit.unr-lcssa ]
  %.sroa.13.063.i.us9.unr = phi i64 [ %.us-phi60.i, %.lr.ph.i.us7.preheader ], [ %.sroa.13.1.i.us16.prol, %.lr.ph.i.us7.prol.loopexit.unr-lcssa ]
  %i.ak = icmp eq i64 %i.ae, %.us-phi60.i
  br i1 %i.ak, label %._crit_edge.i, label %.lr.ph.i.us7

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader
  %i.al = shl nsw i64 %.us-phi60.i, 2             ; 2 uses
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.al
  %i.am = getelementptr i8, ptr %i.f, i64 %i.al
  %scevgep30 = getelementptr i8, ptr %i.am, i64 4
  %i.an = add nsw i64 %i.b, -1                    ; 2 uses
  %i.ao = sub nsw i64 %i.an, %.us-phi60.i
  %i.ap = shl nuw nsw i64 %i.ao, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep, ptr align 4 %scevgep30, i64 %i.ap, i1 false), !noalias !1400
  br label %._crit_edge.i

.lr.ph.i.us7:                                     ; preds = %.lr.ph.i.us7.prol.loopexit, %bb.b
  %.sroa.7.064.i.us8 = phi i64 [ %.sroa.7.0.i.us17.1, %bb.b ], [ %.sroa.7.064.i.us8.unr, %.lr.ph.i.us7.prol.loopexit ] ; 3 uses
  %.sroa.13.063.i.us9 = phi i64 [ %.sroa.13.1.i.us16.1, %bb.b ], [ %.sroa.13.063.i.us9.unr, %.lr.ph.i.us7.prol.loopexit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.7.064.i.us8
  %.val9.i.us10 = load i32, ptr %i.aq, align 4, !noalias !1400 ; 2 uses
  %.val14.i.i.i15.i.us13 = load i32, ptr %i.h, align 4, !alias.scope !1404, !noalias !1405, !noundef !14
  %.not32.i.us14 = icmp eq i32 %.val14.i.i.i15.i.us13, %.val9.i.us10
  br i1 %.not32.i.us14, label %.lr.ph.i.us7.1, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15: ; preds = %.lr.ph.i.us7
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.13.063.i.us9
  store i32 %.val9.i.us10, ptr %i.ar, align 4, !noalias !1400
  %i.as = add i64 %.sroa.13.063.i.us9, 1
  br label %.lr.ph.i.us7.1

.lr.ph.i.us7.1:                                   ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15, %.lr.ph.i.us7
  %.sroa.13.1.i.us16 = phi i64 [ %i.as, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15 ], [ %.sroa.13.063.i.us9, %.lr.ph.i.us7 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.7.064.i.us8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %.val9.i.us10.1 = load i32, ptr %i.au, align 4, !noalias !1400 ; 2 uses
  %.val14.i.i.i15.i.us13.1 = load i32, ptr %i.h, align 4, !alias.scope !1404, !noalias !1405, !noundef !14
  %.not32.i.us14.1 = icmp eq i32 %.val14.i.i.i15.i.us13.1, %.val9.i.us10.1
  br i1 %.not32.i.us14.1, label %bb.b, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15.1

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15.1: ; preds = %.lr.ph.i.us7.1
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.13.1.i.us16
  store i32 %.val9.i.us10.1, ptr %i.av, align 4, !noalias !1400
  %i.aw = add i64 %.sroa.13.1.i.us16, 1
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15.1, %.lr.ph.i.us7.1
  %.sroa.13.1.i.us16.1 = phi i64 [ %i.aw, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i.us15.1 ], [ %.sroa.13.1.i.us16, %.lr.ph.i.us7.1 ] ; 2 uses
  %.sroa.7.0.i.us17.1 = add nuw nsw i64 %.sroa.7.064.i.us8, 2 ; 2 uses
  %exitcond.not.i.us18.1 = icmp eq i64 %.sroa.7.0.i.us17.1, %i.b
  br i1 %exitcond.not.i.us18.1, label %._crit_edge.i, label %.lr.ph.i.us7

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.i: ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.loopexit.i
  %i.ax = add nuw nsw i64 %.sroa.0.0.i, 1         ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %i.b
  br i1 %i.ay, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit, label %.lr.ph.i.i.i.preheader.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.us7.prol.loopexit, %bb.b, %bb.c, %.lr.ph.i.us.preheader, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.us-phi60.i, %.preheader.i ], [ %.sroa.13.1.i, %bb.c ], [ %i.an, %.lr.ph.i.us.preheader ], [ %.sroa.13.1.i.us16.lcssa.unr, %.lr.ph.i.us7.prol.loopexit ], [ %.sroa.13.1.i.us16.1, %bb.b ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !1398, !noalias !1399
  br label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.sroa.7.064.i = phi i64 [ %.sroa.7.0.i, %bb.c ], [ %.sroa.7.062.i, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.13.063.i = phi i64 [ %.sroa.13.1.i, %bb.c ], [ %.us-phi60.i, %.lr.ph.i.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.7.064.i
  %.val9.i = load i32, ptr %i.az, align 4, !noalias !1400 ; 3 uses
  br label %.lr.ph.i.i.i16.i

.lr.ph.i.i.i16.i:                                 ; preds = %.lr.ph.i, %.lr.ph.i.i.i16.i
  %.sroa.01.017.i.i.i17.i = phi i64 [ %i.bg, %.lr.ph.i.i.i16.i ], [ %i.j, %.lr.ph.i ] ; 2 uses
  %.sroa.05.016.i.i.i18.i = phi i64 [ %i.bf, %.lr.ph.i.i.i16.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.ba = lshr i64 %.sroa.01.017.i.i.i17.i, 1     ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, %.sroa.05.016.i.i.i18.i ; 3 uses
  %i.bc = icmp ult i64 %i.bb, %i.j
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bb
  %.val12.i.i.i19.i = load i32, ptr %i.bd, align 4, !alias.scope !1404, !noalias !1405, !noundef !14
  %i.be = icmp ugt i32 %.val12.i.i.i19.i, %.val9.i
  %i.bf = select i1 %i.be, i64 %.sroa.05.016.i.i.i18.i, i64 %i.bb, !unpredictable !14 ; 2 uses
  %i.bg = sub nuw nsw i64 %.sroa.01.017.i.i.i17.i, %i.ba ; 2 uses
  %i.bh = icmp ugt i64 %i.bg, 1
  br i1 %i.bh, label %.lr.ph.i.i.i16.i, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.i.loopexit

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.i.loopexit: ; preds = %.lr.ph.i.i.i16.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bf
  %.val14.i.i.i15.i = load i32, ptr %i.bi, align 4, !alias.scope !1404, !noalias !1405, !noundef !14
  %.not32.i = icmp eq i32 %.val14.i.i.i15.i, %.val9.i
  br i1 %.not32.i, label %bb.c, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i: ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.i.loopexit
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.13.063.i
  store i32 %.val9.i, ptr %i.bj, align 4, !noalias !1400
  %i.bk = add i64 %.sroa.13.063.i, 1
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.i.loopexit
  %.sroa.13.1.i = phi i64 [ %i.bk, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.thread.i ], [ %.sroa.13.063.i, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit20.i.loopexit ] ; 2 uses
  %.sroa.7.0.i = add nuw nsw i64 %.sroa.7.064.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.0.i, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit.loopexit51.unr-lcssa: ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil.preheader

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil.preheader: ; preds = %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit.loopexit51.unr-lcssa, %.preheader33.split.us46.i
  %.sroa.0.0.us47.i.epil.init = phi i64 [ 0, %.preheader33.split.us46.i ], [ %i.s, %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit.loopexit51.unr-lcssa ]
  %lcmp.mod53 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod53)
  br label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil: ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.epil, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil.preheader
  %.sroa.0.0.us47.i.epil = phi i64 [ %i.bm, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.epil ], [ %.sroa.0.0.us47.i.epil.init, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.epil ], [ 0, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil.preheader ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.0.0.us47.i.epil
  %.val11.us48.i.epil = load i32, ptr %i.bl, align 4, !noalias !1400
  %.not.us52.i.epil = icmp eq i32 %.val14.i.i.i.us51.i, %.val11.us48.i.epil
  br i1 %.not.us52.i.epil, label %.preheader.i, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.epil, !prof !1403

_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.epil: ; preds = %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil
  %i.bm = add nuw nsw i64 %.sroa.0.0.us47.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit, label %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.us49.i.epil, !llvm.loop !1397

_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit: ; preds = %_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE10retain_mutNCINvB2_6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtB1d_16LiveReloadResult5merge0E0EB1l_.exit.loopexit51.unr-lcssa, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.us53.i.epil, %_RNCINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB7_3VecmE6retainNCNvMNtNtNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_tracker9read_only11live_reloadNtBV_16LiveReloadResult5merge0E0B13_.exit.thread.i, %bb.a, %.preheader33.i, %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8dedup_byNCNvMs5_B5_Bv_5dedup0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 7 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !14, !noundef !14 ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvar = phi i64 [ 0, %bb.b ], [ %indvar.next, %bb.e ] ; 3 uses
  %.sroa.0.022 = phi i64 [ 1, %bb.b ], [ %.sroa.5.023, %bb.e ] ; 8 uses
  %i.g = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -4
  %.val11 = load i32, ptr %i.g, align 4, !noundef !14
  %.val12 = load i32, ptr %i.h, align 4, !noundef !14
  %i.i = icmp eq i32 %.val11, %.val12
  %.sroa.5.023 = add nuw nsw i64 %.sroa.0.022, 1  ; 5 uses
  br i1 %i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.j = icmp samesign ult i64 %.sroa.5.023, %i.b
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = sub i64 %i.b, %indvar
  %i.l = add nsw i64 %i.b, -3
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.5.023
  %i.n = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %.val.prol = load i32, ptr %i.m, align 4, !noundef !14 ; 2 uses
  %.val10.prol = load i32, ptr %i.o, align 4, !noundef !14
  %i.p = icmp eq i32 %.val.prol, %.val10.prol
  br i1 %i.p, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.prol
  store i32 %.val.prol, ptr %i.n, align 4
  %i.q = add nuw i64 %.sroa.0.022, 1
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %.lr.ph.prol
  %.sroa.11.1.prol = phi i64 [ %i.q, %bb.d ], [ %.sroa.0.022, %.lr.ph.prol ] ; 2 uses
  %.sroa.5.0.prol = add nuw nsw i64 %.sroa.0.022, 2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.11.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.5.025.unr = phi i64 [ %.sroa.5.023, %.lr.ph.preheader ], [ %.sroa.5.0.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.11.024.unr = phi i64 [ %.sroa.0.022, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.r = icmp eq i64 %i.l, %indvar
  br i1 %i.r, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.023, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.022, %.preheader ], [ %.sroa.11.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.sroa.11.1.1, %bb.h ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.a, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
  %.sroa.5.025 = phi i64 [ %.sroa.5.0.1, %bb.h ], [ %.sroa.5.025.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.11.024 = phi i64 [ %.sroa.11.1.1, %bb.h ], [ %.sroa.11.024.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.5.025
  %i.t = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.11.024 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -4
  %.val = load i32, ptr %i.s, align 4, !noundef !14 ; 2 uses
  %.val10 = load i32, ptr %i.u, align 4, !noundef !14
  %i.v = icmp eq i32 %.val, %.val10
  br i1 %i.v, label %.lr.ph.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store i32 %.val, ptr %i.t, align 4
  %i.w = add i64 %.sroa.11.024, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.f
  %.sroa.11.1 = phi i64 [ %i.w, %bb.f ], [ %.sroa.11.024, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.5.025
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = getelementptr [4 x i8], ptr %i.f, i64 %.sroa.11.1 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %.val.1 = load i32, ptr %i.y, align 4, !noundef !14 ; 2 uses
  %.val10.1 = load i32, ptr %i.aa, align 4, !noundef !14
  %i.ab = icmp eq i32 %.val.1, %.val10.1
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.1
  store i32 %.val.1, ptr %i.z, align 4
  %i.ac = add i64 %.sroa.11.1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.1
  %.sroa.11.1.1 = phi i64 [ %i.ac, %bb.g ], [ %.sroa.11.1, %.lr.ph.1 ] ; 2 uses
  %.sroa.5.0.1 = add nuw nsw i64 %.sroa.5.025, 2  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.sroa.5.0.1, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyE11resize_withNCNCINvMs0_NtCsinALYEoamBN_6bitvec3vecINtB15_6BitVecyE14do_reservationNvB2_7reserveE00ECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !14 ; 6 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE8truncateCs607s0NAIaWN_7segment.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !15, !alias.scope !1420, !noundef !14
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCs607s0NAIaWN_7segment.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCs607s0NAIaWN_7segment.exit.i, !prof !16

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCs607s0NAIaWN_7segment.exit.thread.i: ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 8, i64 noundef 8)
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !1421, !noundef !14
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCs607s0NAIaWN_7segment.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCs607s0NAIaWN_7segment.exit.i: ; preds = %bb.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCs607s0NAIaWN_7segment.exit.thread.i
  %i.j = phi i64 [ %i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCs607s0NAIaWN_7segment.exit.thread.i ], [ %i.b, %bb.b ] ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %.in.i, align 8, !alias.scope !1421, !nonnull !14, !noundef !14
  %i.l = shl i64 %i.j, 3
  %scevgep.i.i.i.i = getelementptr nuw i8, ptr %i.k, i64 %i.l
  %i.m = shl i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.i.i.i.i, i8 0, i64 %i.m, i1 false), !noalias !1422
  %i.n = add i64 %i.j, %i.e
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE8truncateCs607s0NAIaWN_7segment.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE8truncateCs607s0NAIaWN_7segment.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCs607s0NAIaWN_7segment.exit.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.n, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCs607s0NAIaWN_7segment.exit.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB1U_5slice4iter4IterBG_EEEBK_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !24, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1427, !noundef !14 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !15, !alias.scope !1427, !noundef !14
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemE7reserveBI_.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 24)
  %.pre = load i64, ptr %i.j, align 8
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemE7reserveBI_.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemE7reserveBI_.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1428
  store ptr %i.j, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2i_8for_each4callB1s_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3y_3VecB1s_E14extend_trustedBP_E0E0EB1w_(ptr noundef nonnull %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1428
  ret void

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCsG258MDvU3F_3std4path7PathBufE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathBG_EENCNvMs_NtNtB2P_7segment8snapshotNtB3I_7Segment15immutable_files0EEB2P_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val5 = load ptr, ptr %i.c, align 8, !nonnull !14, !noundef !14
  %i.d = ptrtoint ptr %.val5 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 72                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1431, !noundef !14 ; 3 uses
  %i.j = load i64, ptr %0, align 8, !range !15, !alias.scope !1431, !noundef !14
  %i.k = sub i64 %i.j, %i.i
  %i.l = icmp ugt i64 %i.g, %i.k
  br i1 %i.l, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufE7reserveCs607s0NAIaWN_7segment.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i, i64 noundef %i.g, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufE7reserveCs607s0NAIaWN_7segment.exit_crit_edge unwind label %bb.c

._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufE7reserveCs607s0NAIaWN_7segment.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %i.h, align 8
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufE7reserveCs607s0NAIaWN_7segment.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufE7reserveCs607s0NAIaWN_7segment.exit: ; preds = %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufE7reserveCs607s0NAIaWN_7segment.exit_crit_edge, %bb.a
  %i.m = phi i64 [ %.pre, %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufE7reserveCs607s0NAIaWN_7segment.exit_crit_edge ], [ %i.i, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.p, align 8
  store ptr %i.h, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.q, align 8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCsG258MDvU3F_3std4path7PathBufEENCNvMs_NtNtB1Q_7segment8snapshotNtB3e_7Segment15immutable_files0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB48_8for_each4callB2v_NCINvMsk_B12_INtB12_3VecB2v_E14extend_trustedBN_E0E0EB1Q_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCsG258MDvU3F_3std4path7PathBufEENCNvMs_NtNtB22_7segment8snapshotNtB3q_7Segment15immutable_files0EEB22_.exit: ; preds = %bb.c
  resume { ptr, i32 } %lpad.thr_comm

bb.c:                                             ; preds = %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCsG258MDvU3F_3std4path7PathBufEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCsG258MDvU3F_3std4path7PathBufEENCNvMs_NtNtB22_7segment8snapshotNtB3q_7Segment15immutable_files0EEB22_.exit unwind label %bb.d
end_hunk_1
