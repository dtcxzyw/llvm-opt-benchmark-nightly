Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.181?download=true
inline.NumInlined: 271
inline.NumDeleted: 161
begin_hunk_0_@_RNvXs1_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index18on_disk_text_index9lifecycleNtB7_24FullTextMmapIndexBuilderNtNtNtBb_16field_index_base7builder22FieldIndexBuilderTrait9add_point:bb.a
  br label %.body.thread.i

.sink.split.i:                                    ; preds = %bb.j, %_RNvXs0_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index18on_disk_text_index9lifecycleNtB7_24FullTextMmapIndexBuilderNtNtNtBb_16field_index_base13value_indexer12ValueIndexer9get_value.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !493
  br label %bb.e

bb.e:                                             ; preds = %.sink.split.i, %bb.d
  %.not5.i = icmp eq ptr %i.j, %i.i
  br i1 %.not5.i, label %_RNvYNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index18on_disk_text_index24FullTextMmapIndexBuilderNtNtNtB8_16field_index_base13value_indexer12ValueIndexer9add_pointBc_.exit, label %.lr.ph.i

_RNvXs0_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index18on_disk_text_index9lifecycleNtB7_24FullTextMmapIndexBuilderNtNtNtBb_16field_index_base13value_indexer12ValueIndexer9get_value.exit.i: ; preds = %bb.c
  %.pr.i = load i64, ptr %i.c, align 8, !noalias !493
  %.not4.i = icmp eq i64 %.pr.i, -1
  br i1 %.not4.i, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs0_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index18on_disk_text_index9lifecycleNtB7_24FullTextMmapIndexBuilderNtNtNtBb_16field_index_base13value_indexer12ValueIndexer9get_value.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !493
  %i.u = load i64, ptr %i.h, align 8, !alias.scope !496, !noalias !497, !noundef !4 ; 3 uses
  %i.v = load i64, ptr %i.d, align 8, !range !10, !alias.scope !496, !noalias !497, !noundef !4
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsG258MDvU3F_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.j unwind label %bb.h, !noalias !498

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #14
          to label %.body.thread.i unwind label %bb.i, !noalias !495

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !noalias !495
  unreachable

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.z = load ptr, ptr %i.g, align 8, !alias.scope !496, !noalias !497, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !495
  %i.ab = add i64 %i.u, 1
  store i64 %i.ab, ptr %i.h, align 8, !alias.scope !496, !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !493
  br label %.sink.split.i

bb.k:                                             ; preds = %.body.thread.i
  resume { ptr, i32 } %eh.lpad-body15.i

.body.thread.i:                                   ; preds = %bb.h, %.body.thread17.i
  %eh.lpad-body15.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread17.i ], [ %i.x, %bb.h ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #14
          to label %bb.k unwind label %bb.l, !noalias !495

bb.l:                                             ; preds = %.body.thread.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !noalias !495
  unreachable

_RNvYNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index18on_disk_text_index24FullTextMmapIndexBuilderNtNtNtB8_16field_index_base13value_indexer12ValueIndexer9add_pointBc_.exit: ; preds = %bb.e, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !493
  call void @_RNvXs0_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index18on_disk_text_index9lifecycleNtB7_24FullTextMmapIndexBuilderNtNtNtBb_16field_index_base13value_indexer12ValueIndexer8add_many(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1, i32 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %5), !noalias !491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !493
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector12SparseVectorINtNtCskKLDkoKarTP_4core7convert7TryFromNtB5_14VectorInternalE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !499, !noundef !4 ; 4 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808       ; 2 uses
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sink = phi i64 [ -9223372036854775794, %bb.d ], [ -1, %bb.c ], [ -9223372036854775795, %bb.a ]
  store i64 %.sink, ptr %0, align 8
  %i.g = icmp sgt i64 %i.a, -1
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalEBH_.exit, label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalEBH_.exit: ; preds = %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECs607s0NAIaWN_7segment.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs607s0NAIaWN_7segment10data_types7vectors21TypedMultiDenseVectorfEEBI_.exit.i, %bb.e
  ret void

bb.f:                                             ; preds = %bb.e
  switch i64 %i.c, label %bb.g [
    i64 0, label %bb.j
    i64 1, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs607s0NAIaWN_7segment10data_types7vectors21TypedMultiDenseVectorfEEBI_.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %common.resume.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

common.resume.i:                                  ; preds = %bb.k, %bb.h
  %common.resume.op.i = phi { ptr, i32 } [ %i.i, %bb.h ], [ %i.l, %bb.k ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs607s0NAIaWN_7segment10data_types7vectors21TypedMultiDenseVectorfEEBI_.exit.i: ; preds = %bb.g
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalEBH_.exit

bb.j:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECs607s0NAIaWN_7segment.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECs607s0NAIaWN_7segment.exit.i: ; preds = %bb.j
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalEBH_.exit

bb.m:                                             ; preds = %bb.f
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector12SparseVectorECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalEBH_.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs607s0NAIaWN_7segment14vector_storage6sparse21stored_sparse_vectorsNtB4_18StoredSparseVectorINtNtCskKLDkoKarTP_4core7convert4FromRNtNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector12SparseVectorE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  call void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecyEINtB4_18SpecFromIterNestedyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6copied6CopiedINtNtNtB1F_5slice4iter4ItermEENvYyINtNtB1F_7convert4FrommE4fromEE9from_iterCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %i.j, ptr noundef nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.o, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #14
          to label %common.resume unwind label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !4 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.x = icmp ugt i64 %i.s, 1
  br i1 %i.x, label %.lr.ph, label %_RINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfECs607s0NAIaWN_7segment.exit

bb.e:                                             ; preds = %.lr.ph
  %i.y = add nsw i64 %i.aa, -1                    ; 2 uses
  %i.z = icmp ugt i64 %i.y, 1
  br i1 %i.z, label %.lr.ph, label %_RINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfECs607s0NAIaWN_7segment.exit

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.aa = phi i64 [ %i.y, %bb.e ], [ %i.s, %bb.d ]
  %i.ab = phi ptr [ %i.ac, %bb.e ], [ %i.q, %bb.d ] ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8      ; 2 uses
  %.val.i.i = load i64, ptr %i.ab, align 8, !alias.scope !524, !noalias !525, !noundef !4
  %.val5.i.i = load i64, ptr %i.ac, align 8, !alias.scope !526, !noalias !527, !noundef !4
  %.not.i.i = icmp ult i64 %.val.i.i, %.val5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !528
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.s
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.w
  invoke void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEEINtB5_7ZipImplBW_B1o_E3newCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull align 8 %i.q, ptr noundef nonnull %i.ad, ptr noundef nonnull align 4 %i.u, ptr noundef nonnull %i.ae)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.f
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecTyfEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1r_3zip3ZipINtNtNtB1v_5slice4iter4IteryEIB2s_fEENCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0EE9from_iterCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
          to label %.noexc2 unwind label %bb.p

.noexc2:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !528
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !528, !nonnull !4, !noundef !4 ; 13 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !528, !noundef !4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !529
  store ptr %i.a, ptr %i.b, align 8, !noalias !529
  %i.aj = icmp samesign ult i64 %i.ai, 2
  br i1 %i.aj, label %bb.j, label %bb.g, !prof !530

bb.g:                                             ; preds = %.noexc2
  %i.ak = icmp samesign ult i64 %i.ai, 21
  br i1 %i.ak, label %bb.i, label %bb.h, !prof !530

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortTyfENCINvMB6_SBT_20sort_unstable_by_keyyNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs0_0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 %i.ag, i64 noundef range(i64 0, 576460752303423488) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #15
          to label %bb.j unwind label %bb.o

bb.i:                                             ; preds = %bb.g
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTyfENCINvMB8_SB1m_20sort_unstable_by_keyyNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs0_0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 %i.ag, i64 noundef range(i64 0, 576460752303423488) %i.ai, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i, %bb.h, %.noexc2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !529
  %i.al = load i64, ptr %i.e, align 8, !range !10, !noalias !528, !noundef !4
  %i.am = icmp ult i64 %i.ai, 576460752303423488
  call void @llvm.assume(i1 %i.am)
  %.idx.i = shl nuw nsw i64 %i.ai, 4              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !528
  store ptr %i.ag, ptr %i.c, align 8, !noalias !528
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.ag, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8, !noalias !528
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.al, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !noalias !528
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.an, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !528
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !528
  %i.ao = icmp eq i64 %i.ai, 0
  br i1 %i.ao, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTyfEEENtNtNtB8_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment.exit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.ap = add nsw i64 %.idx.i, -16                ; 2 uses
  %i.aq = lshr exact i64 %i.ap, 4
  %i.ar = call i64 @llvm.umin.i64(i64 %i.w, i64 %i.s) ; 2 uses
  %i.as = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.aq) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader36, label %vector.memcheck

.lr.ph.i.preheader36:                             ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.preheader
  %.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.preheader ], [ %i.bb, %vector.body ]
  %.ph37 = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph.i

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.at = lshr exact i64 %i.ap, 4
  %umin24 = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.at) ; 3 uses
  %i.au = shl nuw nsw i64 %umin24, 3
  %i.av = getelementptr i8, ptr %i.q, i64 %i.au
  %scevgep = getelementptr i8, ptr %i.av, i64 8   ; 2 uses
  %i.aw = shl nuw nsw i64 %umin24, 2
  %i.ax = getelementptr i8, ptr %i.u, i64 %i.aw
  %scevgep25 = getelementptr i8, ptr %i.ax, i64 4 ; 2 uses
  %i.ay = shl nuw i64 %umin24, 4
  %i.az = getelementptr i8, ptr %i.ag, i64 %i.ay
  %scevgep26 = getelementptr i8, ptr %i.az, i64 12 ; 2 uses
  %bound0 = icmp ult ptr %i.q, %scevgep25
  %bound1 = icmp ult ptr %i.u, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound027 = icmp ult ptr %i.q, %scevgep26
  %bound128 = icmp ult ptr %i.ag, %scevgep
  %found.conflict29 = and i1 %bound027, %bound128
  %conflict.rdx = or i1 %found.conflict, %found.conflict29
  %bound030 = icmp ult ptr %i.u, %scevgep26
  %bound131 = icmp ult ptr %i.ag, %scevgep25
  %found.conflict32 = and i1 %bound030, %bound131
  %conflict.rdx33 = or i1 %conflict.rdx, %found.conflict32
  br i1 %conflict.rdx33, label %.lr.ph.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 1152921504606846974     ; 3 uses
  %i.ba = shl nuw i64 %n.vec, 4
  %i.bb = getelementptr i8, ptr %i.ag, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bc = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ag, i64 %i.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.be = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.bf = getelementptr i8, ptr %i.bd, i64 24
  %i.bg = load float, ptr %i.be, align 8, !alias.scope !533, !noalias !534, !noundef !4
  %i.bh = load float, ptr %i.bf, align 8, !alias.scope !533, !noalias !534, !noundef !4
  %i.bi = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.bh, i64 1
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !alias.scope !533, !noalias !534
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index
  store <2 x i64> %strided.vec, ptr %i.bk, align 8, !alias.scope !535, !noalias !536
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index
  store <2 x float> %i.bj, ptr %i.bl, align 4, !alias.scope !537, !noalias !538
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %.lr.ph.i.preheader36, label %vector.body, !llvm.loop !520

bb.k:                                             ; preds = %.invoke.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyfEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body unwind label %bb.n

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader36, %bb.m
  %i.bo = phi ptr [ %i.bq, %bb.m ], [ %.ph, %.lr.ph.i.preheader36 ] ; 3 uses
  %i.bp = phi i64 [ %i.bt, %bb.m ], [ %.ph37, %.lr.ph.i.preheader36 ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load float, ptr %i.br, align 8, !noalias !534, !noundef !4
  %i.bt = add nuw nsw i64 %i.bp, 1                ; 3 uses
  %exitcond.not.i = icmp eq i64 %i.bp, %i.s
  br i1 %exitcond.not.i, label %.invoke.i, label %bb.l

._RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTyfEEENtNtNtB8_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment.exit_crit_edge.i: ; preds = %bb.m
  store ptr %i.an, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8, !alias.scope !541, !noalias !542
  store i64 %i.bt, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !531, !noalias !543
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTyfEEENtNtNtB8_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment.exit.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTyfEEENtNtNtB8_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment.exit.i: ; preds = %._RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTyfEEENtNtNtB8_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment.exit_crit_edge.i, %bb.j
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTyfEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.noexc3 unwind label %bb.p

.noexc3:                                          ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTyfEEENtNtNtB8_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !528
  %.pre = load ptr, ptr %i.p, align 8
  %.pre11 = load i64, ptr %i.r, align 8
  br label %_RINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfECs607s0NAIaWN_7segment.exit

bb.l:                                             ; preds = %.lr.ph.i
  %i.bu = load i64, ptr %i.bo, align 8, !noalias !534, !noundef !4
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bp
  store i64 %i.bu, ptr %i.bv, align 8, !alias.scope !522, !noalias !523
  %exitcond46.not.i = icmp eq i64 %i.bp, %i.w
  br i1 %exitcond46.not.i, label %.invoke.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bp
  store float %i.bs, ptr %i.bw, align 4, !alias.scope !523, !noalias !522
  %i.bx = icmp eq ptr %i.bq, %i.an
  br i1 %i.bx, label %._RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTyfEEENtNtNtB8_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment.exit_crit_edge.i, label %.lr.ph.i, !llvm.loop !521

.invoke.i:                                        ; preds = %bb.l, %.lr.ph.i
  %i.by = phi i64 [ %i.s, %.lr.ph.i ], [ %i.w, %bb.l ] ; 2 uses
  %i.bz = phi ptr [ @5, %.lr.ph.i ], [ @6, %bb.l ]
  store ptr %i.bq, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8, !alias.scope !541, !noalias !542
  store i64 %i.bt, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !531, !noalias !543
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.by, i64 noundef %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bz) #13
          to label %.cont.i unwind label %bb.k

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.n:                                             ; preds = %bb.o, %bb.k
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.o:                                             ; preds = %bb.i, %bb.h
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyfEEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #14
          to label %.body unwind label %bb.n

bb.p:                                             ; preds = %_RINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfECs607s0NAIaWN_7segment.exit, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTyfEEENtNtNtB8_6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment.exit.i, %.noexc, %bb.f
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.cb, %bb.p ], [ %i.bn, %bb.k ], [ %lpad.thr_comm.i, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecfEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #14
          to label %bb.b unwind label %bb.s

_RINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfECs607s0NAIaWN_7segment.exit: ; preds = %bb.e, %bb.d, %.noexc3
  %i.cc = phi i64 [ %.pre11, %.noexc3 ], [ %i.s, %bb.d ], [ %i.s, %bb.e ]
  %i.cd = phi ptr [ %.pre, %.noexc3 ], [ %i.q, %bb.d ], [ %i.q, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvNtCslmvYCXbQjWR_6common10delta_pack10delta_pack(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cd, i64 noundef range(i64 0, 1152921504606846976) %i.cc)
          to label %_RNvMNtNtNtCs607s0NAIaWN_7segment14vector_storage6sparse21stored_sparse_vectorsNtB2_18StoredSparseVector17serialize_indices.exit unwind label %bb.p

_RNvMNtNtNtCs607s0NAIaWN_7segment14vector_storage6sparse21stored_sparse_vectorsNtB2_18StoredSparseVector17serialize_indices.exit: ; preds = %_RINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfECs607s0NAIaWN_7segment.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs607s0NAIaWN_7segment.exit unwind label %bb.q

bb.q:                                             ; preds = %_RNvMNtNtNtCs607s0NAIaWN_7segment14vector_storage6sparse21stored_sparse_vectorsNtB2_18StoredSparseVector17serialize_indices.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.cf, %bb.q ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs607s0NAIaWN_7segment.exit: ; preds = %_RNvMNtNtNtCs607s0NAIaWN_7segment14vector_storage6sparse21stored_sparse_vectorsNtB2_18StoredSparseVector17serialize_indices.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.s:                                             ; preds = %.body, %bb.b
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsc_NtNtCs607s0NAIaWN_7segment10data_types13named_vectorsNtNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector12SparseVectorINtNtCskKLDkoKarTP_4core7convert7TryFromNtB5_9CowVectorE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.616.sroa.5 = alloca [24 x i8], align 8   ; 5 uses
  %i.c = load i64, ptr %1, align 8, !range !11, !noundef !4 ; 7 uses
  %i.d = icmp ne i64 %i.c, -9223372036854775807
  tail call void @llvm.assume(i1 %i.d)
  %i.e = xor i64 %i.c, -9223372036854775808       ; 2 uses
  %i.f = icmp ult i64 %i.e, 3
  %i.g = select i1 %i.f, i64 %i.e, i64 1
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775795, ptr %0, align 8
  br label %bb.f

end_hunk_0
