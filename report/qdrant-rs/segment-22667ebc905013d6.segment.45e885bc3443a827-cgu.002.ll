Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.002?download=true
inline.NumInlined: 8609
inline.NumDeleted: 4831
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENCNvNtB2B_24immutable_inverted_index41create_compressed_postings_with_positionss_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5J_8for_each4callINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2B_9positions9PositionsENCINvMsk_B1O_INtB1O_3VecB6M_E14extend_trustedBN_E0E0EB2J_:bb.a
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [104 x i8], align 8               ; 4 uses
  %.sroa.620.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !11, !noundef !5
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1254, !nonnull !5, !noundef !5 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val13.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1254, !nonnull !5, !noundef !5 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val13.i.i.i, %.val.i.i.i
  br i1 %.not.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.j = ptrtoint ptr %.val13.i.i.i to i64
  %i.k = ptrtoint ptr %.val.i.i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = udiv i64 %i.l, 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 5 uses
  %.sroa.7.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %.promoted.i.i = load i32, ptr %i.n, align 8, !alias.scope !1255
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %i.r = phi ptr [ %.val.i.i.i, %.lr.ph.i.i.i ], [ %i.y, %bb.g ] ; 5 uses
  %i.s = phi i32 [ %.promoted.i.i, %.lr.ph.i.i.i ], [ %i.u, %bb.g ] ; 2 uses
  %.val15.i.i.i = phi i64 [ %.sroa.5.0.copyload, %.lr.ph.i.i.i ], [ %i.ai, %bb.g ] ; 3 uses
  %.sroa.01.026.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.t, %bb.g ]
  %i.t = add nuw nsw i64 %.sroa.01.026.i.i.i, 1   ; 2 uses
  %i.u = add i32 %i.s, 1                          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  %i.v = icmp eq ptr %i.r, %.val13.i.i.i
  br i1 %i.v, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB18_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !alias.scope !1257
  %.sroa.018.0.copyload19.i.i.i = load i64, ptr %i.r, align 8, !noalias !1258
  %.sroa.620.0..sroa_idx21.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.0..sroa_idx21.i.i.i, i64 16, i1 false), !noalias !1258
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB18_.exit.i.i.i

.split11.i.i:                                     ; preds = %_RNCNvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_index41create_compressed_postings_with_positionss_0Bd_.exit.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  store i32 %i.u, ptr %i.n, align 8, !alias.scope !1255
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.split7.i.i, %.split.i.i, %.split11.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.x, %.split11.i.i ], [ %i.ae, %.split7.i.i ], [ %i.ad, %.split.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1259
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEEEB2F_.exit.i.i.i unwind label %bb.h, !noalias !1260

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB18_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.y = phi ptr [ %i.w, %bb.c ], [ %i.r, %bb.b ]
  %.sroa.018.0.i.i.i = phi i64 [ %.sroa.018.0.copyload19.i.i.i, %bb.c ], [ -1, %bb.b ] ; 2 uses
  %i.z = icmp ne i64 %.sroa.018.0.i.i.i, -1
  call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.i.i.i, i64 16, i1 false), !noalias !1259
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1261
  store i32 %i.s, ptr %i.c, align 4, !noalias !1261
  store i64 %.sroa.018.0.i.i.i, ptr %i.b, align 8, !noalias !1262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1261
  %i.aa = load ptr, ptr %.sroa.7.8..sroa_idx.i.i.i, align 8, !noalias !1261, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = load i64, ptr %i.o, align 8, !noalias !1261, !noundef !5
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.ab
  store i64 -1, ptr %i.a, align 8, !noalias !1261
  store i64 -1, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1261
  store ptr %i.aa, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1261
  store ptr %i.ac, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1261
  store ptr %i.g, ptr %i.p, align 8, !noalias !1261
  store ptr %i.c, ptr %i.q, align 8, !noalias !1261
  invoke void @_RINvXs0_NtCs6cW95TQWYPl_12posting_list12posting_listINtB6_11PostingListNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTmB17_EE9from_iterINtNtNtB2X_8adapters3map3MapNtNtNtCs9jZsDbilXxj_7roaring6bitmap4iter4IterNCNCNvNtB1b_24immutable_inverted_index41create_compressed_postings_with_positionss_00EEB1j_(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.a)
          to label %bb.d unwind label %.split.i.i, !noalias !1263

.split.i.i:                                       ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB18_.exit.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  store i32 %i.u, ptr %i.n, align 8, !alias.scope !1255
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEBN_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #37
          to label %.body.i.i.i unwind label %bb.f, !noalias !1261

bb.d:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB18_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1261
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9jZsDbilXxj_7roaring6bitmap9container9ContainerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCNvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_index41create_compressed_postings_with_positionss_0Bd_.exit.i.i.i.i unwind label %.split7.i.i, !noalias !1261

.split7.i.i:                                      ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  store i32 %i.u, ptr %i.n, align 8, !alias.scope !1255
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9jZsDbilXxj_7roaring6bitmap9container9ContainerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i.i.i unwind label %bb.e, !noalias !1261

bb.e:                                             ; preds = %.split7.i.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !1261
  unreachable

bb.f:                                             ; preds = %.split.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !1261
  unreachable

_RNCNvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_index41create_compressed_postings_with_positionss_0Bd_.exit.i.i.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9jZsDbilXxj_7roaring6bitmap9container9ContainerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %.split11.i.i, !noalias !1259

bb.g:                                             ; preds = %_RNCNvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_index41create_compressed_postings_with_positionss_0Bd_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1261
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %.sroa.7.0.copyload, i64 %.val15.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ah, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false), !noalias !1263
  %i.ai = add i64 %.val15.i.i.i, 1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1259
  %exitcond.not.i.i.i = icmp eq i64 %i.t, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit.loopexit, label %bb.b, !llvm.loop !1250

bb.h:                                             ; preds = %.body.i.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !1260
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEEEB2F_.exit.i.i.i: ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit.loopexit: ; preds = %bb.g
  store i32 %i.u, ptr %i.n, align 8, !alias.scope !1255
  br label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit: ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit.loopexit, %bb.a
  %.val17.i.i.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ai, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit.loopexit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val17.i.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1259
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e), !noalias !1260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItermEIB1e_fEENCNvMs1_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12point_scorerNtB1V_14FilteredScorer23score_points_unfiltered0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3G_8for_each4callNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5G_3VecB4J_E14extend_trustedBN_E0E0EB21_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 10 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8 ; 7 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8 ; 7 uses
  %i.a = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmRfENtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetuNCNvMs1_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12point_scorerNtB3z_14FilteredScorer23score_points_unfiltered0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5V_3VecB2C_E14extend_trustedINtB2e_3MapBM_B3r_EE0E0E0EB3F_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.41.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 18
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.44.0.copyload, 3
  %i.c = getelementptr i8, ptr %.sroa.65.0.copyload, i64 %i.b ; 2 uses
  %i.d = add i64 %.sroa.44.0.copyload, %.sroa.6.0.copyload
  %i.e = sub i64 %i.d, %.sroa.52.0.copyload
  %i.f = shl i64 %i.e, 3
  %i.g = getelementptr i8, ptr %.sroa.65.0.copyload, i64 %i.f ; 2 uses
  %i.h = shl i64 %.sroa.52.0.copyload, 2          ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.h
  %i.j = shl i64 %.sroa.6.0.copyload, 2           ; 2 uses
  %i.k = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.j
  %bound0 = icmp ult ptr %i.c, %i.k
  %bound1 = icmp ult ptr %i.i, %i.g
  %found.conflict = and i1 %bound0, %bound1
  %2 = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.h
  %3 = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.j
  %bound014 = icmp ult ptr %i.c, %3
  %bound115 = icmp ult ptr %2, %i.g
  %found.conflict16 = and i1 %bound014, %bound115
  %conflict.rdx = or i1 %found.conflict, %found.conflict16
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.l = add i64 %.sroa.44.0.copyload, %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = add i64 %.sroa.44.0.copyload, %index     ; 2 uses
  %i.n = add i64 %index, %.sroa.52.0.copyload     ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.n ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %wide.load22 = load <2 x float>, ptr %i.o, align 4, !alias.scope !1283, !noalias !1284
  %wide.load1723 = load <2 x float>, ptr %i.q, align 4, !alias.scope !1283, !noalias !1284
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %wide.load18 = load <2 x float>, ptr %i.p, align 4, !alias.scope !1285, !noalias !1284
  %wide.load19 = load <2 x float>, ptr %i.r, align 4, !alias.scope !1285, !noalias !1284
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.m
  %i.t = getelementptr [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.m
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %interleaved.vec = shufflevector <2 x float> %wide.load22, <2 x float> %wide.load18, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec, ptr %i.s, align 4, !alias.scope !1286, !noalias !1287
  %interleaved.vec20 = shufflevector <2 x float> %wide.load1723, <2 x float> %wide.load19, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec20, ptr %i.u, align 4, !alias.scope !1286, !noalias !1287
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !1281

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmRfENtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetuNCNvMs1_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12point_scorerNtB3z_14FilteredScorer23score_points_unfiltered0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5V_3VecB2C_E14extend_trustedINtB2e_3MapBM_B3r_EE0E0E0EB3F_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.44.0.copyload, %vector.memcheck ], [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.l, %middle.block ] ; 3 uses
  %.sroa.0.015.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.w = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  %i.x = xor i64 %.sroa.0.015.i.i.ph, -1
  %i.y = add i64 %.sroa.6.0.copyload, %i.x
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.z = or disjoint i64 %.sroa.0.015.i.i.ph, 1
  %i.aa = add i64 %.sroa.0.015.i.i.ph, %.sroa.52.0.copyload ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.aa
  %.val13.i.i.prol = load i32, ptr %i.ab, align 4, !noalias !1284, !noundef !5
  %.val14.i.i.prol = load float, ptr %i.ac, align 4, !noalias !1284, !noundef !5
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.65.0.copyload, i64 %.ph ; 2 uses
  store i32 %.val13.i.i.prol, ptr %i.ad, align 4, !noalias !1287
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store float %.val14.i.i.prol, ptr %i.ae, align 4, !noalias !1287
  %i.af = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.af, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.af, %scalar.ph.prol ]
  %.sroa.0.015.i.i.unr = phi i64 [ %.sroa.0.015.i.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.ag = icmp eq i64 %i.y, %.sroa.52.0.copyload
  br i1 %i.ag, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmRfENtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetuNCNvMs1_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12point_scorerNtB3z_14FilteredScorer23score_points_unfiltered0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5V_3VecB2C_E14extend_trustedINtB2e_3MapBM_B3r_EE0E0E0EB3F_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.52.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.ah = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.at, %scalar.ph ] ; 3 uses
  %.sroa.0.015.i.i = phi i64 [ %.sroa.0.015.i.i.unr, %scalar.ph.preheader.new ], [ %i.an, %scalar.ph ] ; 3 uses
  %i.ai = add i64 %.sroa.0.015.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.ai
  %.val13.i.i = load i32, ptr %i.aj, align 4, !noalias !1284, !noundef !5
  %.val14.i.i = load float, ptr %i.ak, align 4, !noalias !1284, !noundef !5
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.ah ; 2 uses
  store i32 %.val13.i.i, ptr %i.al, align 4, !noalias !1287
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store float %.val14.i.i, ptr %i.am, align 4, !noalias !1287
  %i.an = add nuw i64 %.sroa.0.015.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.015.i.i, %invariant.op ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %.reass
  %.val13.i.i.1 = load i32, ptr %i.ao, align 4, !noalias !1284, !noundef !5
  %.val14.i.i.1 = load float, ptr %i.ap, align 4, !noalias !1284, !noundef !5
  %i.aq = getelementptr [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.ah ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  store i32 %.val13.i.i.1, ptr %i.ar, align 4, !noalias !1287
  %i.as = getelementptr i8, ptr %i.aq, i64 12
  store float %.val14.i.i.1, ptr %i.as, align 4, !noalias !1287
  %i.at = add i64 %i.ah, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.an, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmRfENtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetuNCNvMs1_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12point_scorerNtB3z_14FilteredScorer23score_points_unfiltered0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5V_3VecB2C_E14extend_trustedINtB2e_3MapBM_B3r_EE0E0E0EB3F_.exit, label %scalar.ph, !llvm.loop !1282

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmRfENtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetuNCNvMs1_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12point_scorerNtB3z_14FilteredScorer23score_points_unfiltered0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5V_3VecB2C_E14extend_trustedINtB2e_3MapBM_B3r_EE0E0E0EB3F_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.l, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.at, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.03.0.copyload, align 8, !noalias !1284
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IteryEIB1e_fEENCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2X_8for_each4callTyfENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4d_3VecB40_E14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 4 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8 ; 3 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8 ; 3 uses
  %i.a = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload ; 3 uses
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.41.0.copyload) ]
  %.neg = add i64 %.sroa.52.0.copyload, 1
  %xtraiter = and i64 %i.a, 1
  %i.b = icmp eq i64 %.sroa.6.0.copyload, %.neg
  br i1 %i.b, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.a, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.new
  %i.c = phi i64 [ %.sroa.44.0.copyload, %.lr.ph.i.i.new ], [ %i.q, %bb.b ] ; 3 uses
  %.sroa.0.015.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.j, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.b ]
  %i.d = or disjoint i64 %.sroa.0.015.i.i, 1
  %i.e = add i64 %.sroa.0.015.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.e
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.e
  %.val13.i.i = load i64, ptr %i.f, align 8, !noalias !1300, !noundef !5
  %.val14.i.i = load float, ptr %i.g, align 4, !noalias !1300, !noundef !5
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.sroa.65.0.copyload, i64 %i.c ; 2 uses
  store i64 %.val13.i.i, ptr %i.h, align 8, !noalias !1301
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store float %.val14.i.i, ptr %i.i, align 8, !noalias !1301
  %i.j = add nuw i64 %.sroa.0.015.i.i, 2          ; 2 uses
  %i.k = add i64 %i.d, %.sroa.52.0.copyload       ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.k
  %.val13.i.i.1 = load i64, ptr %i.l, align 8, !noalias !1300, !noundef !5
  %.val14.i.i.1 = load float, ptr %i.m, align 4, !noalias !1300, !noundef !5
  %i.n = getelementptr [16 x i8], ptr %.sroa.65.0.copyload, i64 %i.c ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 16
  store i64 %.val13.i.i.1, ptr %i.o, align 8, !noalias !1301
  %i.p = getelementptr i8, ptr %i.n, i64 24
  store float %.val14.i.i.1, ptr %i.p, align 8, !noalias !1301
  %i.q = add i64 %i.c, 2                          ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit.loopexit.unr-lcssa, label %bb.b

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.epil.init = phi i64 [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.q, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.015.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.j, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit.loopexit.unr-lcssa ]
  %lcmp.mod7 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod7)
  %i.r = add i64 %.sroa.0.015.i.i.epil.init, %.sroa.52.0.copyload ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.r
  %.val13.i.i.epil = load i64, ptr %i.s, align 8, !noalias !1300, !noundef !5
  %.val14.i.i.epil = load float, ptr %i.t, align 4, !noalias !1300, !noundef !5
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sroa.65.0.copyload, i64 %.epil.init ; 2 uses
  store i64 %.val13.i.i.epil, ptr %i.u, align 8, !noalias !1301
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store float %.val14.i.i.epil, ptr %i.v, align 8, !noalias !1301
  %i.w = add i64 %.epil.init, 1
  br label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %.epil.preheader, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit.loopexit.unr-lcssa, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.q, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit.loopexit.unr-lcssa ], [ %i.w, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.03.0.copyload, align 8, !noalias !1300
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainIBY_IBY_INtNtB8_7flatten7FlattenINtNtBc_6option4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEEB1p_EB1p_EINtB1s_7FlatMapIB1O_NtB2G_9MinShouldERB27_NCNvMs2l_B2G_NtB2G_6Filter15iter_conditions0EENCNvB4h_24max_condition_input_size0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3maxEB2I_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(192) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecmE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment:bb.a
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.ad = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.af = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.ag, align 4, !noalias !7637, !noundef !5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  store i32 %.val15.i, ptr %i.ah, align 4, !noalias !7640
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.val15.i.1 = load i32, ptr %i.aj, align 4, !noalias !7637, !noundef !5
  %i.ak = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  store i32 %.val15.i.1, ptr %i.al, align 4, !noalias !7640
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.val15.i.2 = load i32, ptr %i.an, align 4, !noalias !7637, !noundef !5
  %i.ao = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  store i32 %.val15.i.2, ptr %i.ap, align 4, !noalias !7640
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.val15.i.3 = load i32, ptr %i.ar, align 4, !noalias !7637, !noundef !5
  %i.as = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.at = getelementptr i8, ptr %i.as, i64 12
  store i32 %.val15.i.3, ptr %i.at, align 4, !noalias !7640
  %i.au = add i64 %i.af, 4                        ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.e
  br i1 %i.aw, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %scalar.ph, !llvm.loop !7635

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtCseUPaKcRZYeZ_4half8binary163f16Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5S_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7637
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtNtB1t_6common5types11QuantizedU8Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecmE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.h = lshr exact i64 %i.d, 1
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.j = getelementptr i8, ptr %i.i, i64 %i.h
  %i.k = getelementptr i8, ptr %0, i64 %i.d
  %i.l = getelementptr i8, ptr %i.k, i64 -4
  %bound0 = icmp ult ptr %i.g, %i.l
  %bound1 = icmp ult ptr %0, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.m = and i64 %i.e, 7                          ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 8, i64 %i.m
  %n.vec = sub nsw i64 %i.e, %i.o                 ; 3 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec
  %i.q = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %wide.vec = load <8 x i32>, ptr %i.r, align 4, !alias.scope !7655, !noalias !7656
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x i32>, ptr %i.t, align 4, !alias.scope !7655, !noalias !7656
  %strided.vec5 = shufflevector <8 x i32> %wide.vec4, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.u = getelementptr [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %strided.vec, ptr %i.u, align 4, !alias.scope !7657, !noalias !7658
  store <4 x i32> %strided.vec5, ptr %i.v, align 4, !alias.scope !7657, !noalias !7658
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %scalar.ph.preheader, label %vector.body, !llvm.loop !7652

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.x = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.y = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ac, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i32, ptr %i.z, align 4, !noalias !7656, !noundef !5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.y
  store i32 %.val15.i.prol, ptr %i.aa, align 4, !noalias !7659
  %i.ab = add i64 %i.y, 1                         ; 3 uses
  %i.ac = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !7653

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.ad = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.af = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.ag, align 4, !noalias !7656, !noundef !5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  store i32 %.val15.i, ptr %i.ah, align 4, !noalias !7659
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.val15.i.1 = load i32, ptr %i.aj, align 4, !noalias !7656, !noundef !5
  %i.ak = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  store i32 %.val15.i.1, ptr %i.al, align 4, !noalias !7659
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.val15.i.2 = load i32, ptr %i.an, align 4, !noalias !7656, !noundef !5
  %i.ao = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  store i32 %.val15.i.2, ptr %i.ap, align 4, !noalias !7659
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.val15.i.3 = load i32, ptr %i.ar, align 4, !noalias !7656, !noundef !5
  %i.as = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.at = getelementptr i8, ptr %i.as, i64 12
  store i32 %.val15.i.3, ptr %i.at, align 4, !noalias !7659
  %i.au = add i64 %i.af, 4                        ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.e
  br i1 %i.aw, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %scalar.ph, !llvm.loop !7654

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es0_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7656
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtNtB1t_6common5types11QuantizedU8Es1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callB3M_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5I_3VecB3M_E14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !27, !noundef !5 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_NtNtNtBW_6common5types11QuantizedU8uNCINvMs1_NtBU_23compressed_posting_listNtB46_24CompressedPostingBuilder5buildB3n_Es1_0NCINvNvB1Z_8for_each4callB3n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5X_3VecB3n_E14extend_trustedINtB2P_3MapBF_B3X_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 2 uses
  %i.j = lshr exact i64 %i.i, 3                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.n = getelementptr i8, ptr %i.m, i64 %i.j     ; 2 uses
  %i.o = getelementptr i8, ptr %i.a, i64 4
  %bound0 = icmp ult ptr %i.l, %i.c
  %bound0.a = icmp ult ptr %i.o, %i.n
  %found.conflict = and i1 %bound0, %bound0.a
  %2 = getelementptr i8, ptr %i.e, i64 8
  %bound09 = icmp ult ptr %i.l, %2
  %bound110 = icmp ult ptr %i.e, %i.n
  %found.conflict11 = and i1 %bound09, %bound110
  %conflict.rdx = or i1 %found.conflict, %found.conflict11
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.p = and i64 %i.j, 3                          ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 4, i64 %i.p
  %n.vec = sub nsw i64 %i.j, %i.r                 ; 3 uses
  %i.s = add i64 %.sroa.5.0.copyload, %n.vec
  %i.t = load float, ptr %i.e, align 4, !alias.scope !7674, !noalias !7675
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.t, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.u = load float, ptr %i.k, align 4, !alias.scope !7674, !noalias !7675
  %broadcast.splatinsert12 = insertelement <4 x float> poison, float %i.u, i64 0
  %broadcast.splat13 = shufflevector <4 x float> %broadcast.splatinsert12, <4 x float> poison, <4 x i32> zeroinitializer
  %i.v = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %wide.vec = load <8 x float>, ptr %i.x, align 4, !alias.scope !7676, !noalias !7677
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.y = fsub <4 x float> %strided.vec, %broadcast.splat
  %i.z = fdiv <4 x float> %i.y, %broadcast.splat13
  %i.aa = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.z) ; 2 uses
  %i.ab = fcmp olt <4 x float> %i.aa, zeroinitializer
  %i.ac = select <4 x i1> %i.ab, <4 x float> zeroinitializer, <4 x float> %i.aa ; 2 uses
  %i.ad = fcmp ogt <4 x float> %i.ac, splat (float 2.550000e+02)
  %i.ae = select <4 x i1> %i.ad, <4 x float> splat (float 2.550000e+02), <4 x float> %i.ac
  %i.af = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.ae)
  %i.ag = getelementptr i8, ptr %i.v, i64 %index
  store <4 x i8> %i.af, ptr %i.ag, align 1, !alias.scope !7678, !noalias !7679
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %scalar.ph.preheader, label %vector.body, !llvm.loop !7672

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %vector.body ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ai = phi i64 [ %i.au, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.val15.i = load float, ptr %i.ak, align 4, !noalias !7677, !noundef !5
  %i.al = load float, ptr %i.e, align 4, !noalias !7675, !noundef !5
  %i.am = load float, ptr %i.k, align 4, !noalias !7675, !noundef !5
  %i.an = fsub float %.val15.i, %i.al
  %i.ao = fdiv float %i.an, %i.am
  %i.ap = tail call float @llvm.round.f32(float %i.ao) ; 2 uses
  %i.aq = fcmp olt float %i.ap, 0.000000e+00
  %spec.store.select.i.i.i.i.i = select i1 %i.aq, float 0.000000e+00, float %i.ap ; 2 uses
  %i.ar = fcmp ogt float %spec.store.select.i.i.i.i.i, 2.550000e+02
  %spec.store.select1.i.i.i.i.i = select i1 %i.ar, float 2.550000e+02, float %spec.store.select.i.i.i.i.i
  %i.as = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %spec.store.select1.i.i.i.i.i)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ai
  store i8 %i.as, ptr %i.at, align 1, !noalias !7680
  %i.au = add i64 %i.ai, 1                        ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.j
  br i1 %i.aw, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_NtNtNtBW_6common5types11QuantizedU8uNCINvMs1_NtBU_23compressed_posting_listNtB46_24CompressedPostingBuilder5buildB3n_Es1_0NCINvNvB1Z_8for_each4callB3n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5X_3VecB3n_E14extend_trustedINtB2P_3MapBF_B3X_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %scalar.ph, !llvm.loop !7673

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_NtNtNtBW_6common5types11QuantizedU8uNCINvMs1_NtBU_23compressed_posting_listNtB46_24CompressedPostingBuilder5buildB3n_Es1_0NCINvNvB1Z_8for_each4callB3n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5X_3VecB3n_E14extend_trustedINtB2P_3MapBF_B3X_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.au, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7677
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENCINvMs1_NtB1r_23compressed_posting_listNtB2F_24CompressedPostingBuilder5buildNtNtNtB1t_6common5types11QuantizedU8Es2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecmE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.h = lshr exact i64 %i.d, 1
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.j = getelementptr i8, ptr %i.i, i64 %i.h
  %i.k = getelementptr i8, ptr %0, i64 %i.d
  %i.l = getelementptr i8, ptr %i.k, i64 -4
  %bound0 = icmp ult ptr %i.g, %i.l
  %bound1 = icmp ult ptr %0, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.m = and i64 %i.e, 7                          ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 8, i64 %i.m
  %n.vec = sub nsw i64 %i.e, %i.o                 ; 3 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec
  %i.q = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %wide.vec = load <8 x i32>, ptr %i.r, align 4, !alias.scope !7695, !noalias !7696
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x i32>, ptr %i.t, align 4, !alias.scope !7695, !noalias !7696
  %strided.vec5 = shufflevector <8 x i32> %wide.vec4, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.u = getelementptr [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %strided.vec, ptr %i.u, align 4, !alias.scope !7697, !noalias !7698
  store <4 x i32> %strided.vec5, ptr %i.v, align 4, !alias.scope !7697, !noalias !7698
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %scalar.ph.preheader, label %vector.body, !llvm.loop !7692

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.x = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.y = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ac, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i32, ptr %i.z, align 4, !noalias !7696, !noundef !5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.y
  store i32 %.val15.i.prol, ptr %i.aa, align 4, !noalias !7699
  %i.ab = add i64 %i.y, 1                         ; 3 uses
  %i.ac = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !7693

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.ad = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.af = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.ag, align 4, !noalias !7696, !noundef !5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  store i32 %.val15.i, ptr %i.ah, align 4, !noalias !7699
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.val15.i.1 = load i32, ptr %i.aj, align 4, !noalias !7696, !noundef !5
  %i.ak = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  store i32 %.val15.i.1, ptr %i.al, align 4, !noalias !7699
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.val15.i.2 = load i32, ptr %i.an, align 4, !noalias !7696, !noundef !5
  %i.ao = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  store i32 %.val15.i.2, ptr %i.ap, align 4, !noalias !7699
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.val15.i.3 = load i32, ptr %i.ar, align 4, !noalias !7696, !noundef !5
  %i.as = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.af
  %i.at = getelementptr i8, ptr %i.as, i64 12
  store i32 %.val15.i.3, ptr %i.at, align 4, !noalias !7699
  %i.au = add i64 %i.af, 4                        ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.e
  br i1 %i.aw, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %scalar.ph, !llvm.loop !7694

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs4ByaKcm8ifS_6sparse5index19posting_list_common14PostingElementENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldRBQ_muNCINvMs1_NtBU_23compressed_posting_listNtB3y_24CompressedPostingBuilder5buildNtNtNtBW_6common5types11QuantizedU8Es2_0NCINvNvB1Z_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5R_3VecmE14extend_trustedINtB2P_3MapBF_B3p_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7696
  ret void
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCNvNtNtNtCs607s0NAIaWN_7segment14vector_storage5turbo6shared23turbo_storage_roundtrip0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2P_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB42_3VecfE14extend_trustedBN_E0E0EB1z_:bb.a

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ab = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load double, ptr %i.ac, align 8, !noalias !9782, !noundef !5
  %i.ad = fptrunc double %.val15.i to float
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  store float %i.ad, ptr %i.ae, align 4, !noalias !9785
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val15.i.1 = load double, ptr %i.ag, align 8, !noalias !9782, !noundef !5
  %i.ah = fptrunc double %.val15.i.1 to float
  %i.ai = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  store float %i.ah, ptr %i.aj, align 4, !noalias !9785
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val15.i.2 = load double, ptr %i.al, align 8, !noalias !9782, !noundef !5
  %i.am = fptrunc double %.val15.i.2 to float
  %i.an = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  store float %i.am, ptr %i.ao, align 4, !noalias !9785
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.val15.i.3 = load double, ptr %i.aq, align 8, !noalias !9782, !noundef !5
  %i.ar = fptrunc double %.val15.i.3 to float
  %i.as = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.at = getelementptr i8, ptr %i.as, i64 12
  store float %i.ar, ptr %i.at, align 4, !noalias !9785
  %i.au = add i64 %i.ab, 4                        ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.e
  br i1 %i.aw, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdfuNCNvNtNtNtCs607s0NAIaWN_7segment14vector_storage5turbo6shared23turbo_storage_roundtrip0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4c_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph, !llvm.loop !9780

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdfuNCNvNtNtNtCs607s0NAIaWN_7segment14vector_storage5turbo6shared23turbo_storage_roundtrip0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4c_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !9782
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCNvNtNtNtCs607s0NAIaWN_7segment14vector_storage5turbo6shared29dequantize_for_requantization0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2V_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB48_3VecfE14extend_trustedBN_E0E0EB1z_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdfuNCNvNtNtNtCs607s0NAIaWN_7segment14vector_storage5turbo6shared29dequantize_for_requantization0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4i_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 96
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.h = lshr exact i64 %i.d, 1
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.j = getelementptr i8, ptr %i.i, i64 %i.h
  %bound0 = icmp ult ptr %i.g, %1
  %bound1 = icmp ult ptr %0, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693948      ; 4 uses
  %i.k = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.l = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <2 x double>, ptr %i.m, align 8, !alias.scope !9800, !noalias !9801
  %wide.load4 = load <2 x double>, ptr %i.n, align 8, !alias.scope !9800, !noalias !9801
  %i.o = fptrunc <2 x double> %wide.load to <2 x float>
  %i.p = fptrunc <2 x double> %wide.load4 to <2 x float>
  %i.q = getelementptr [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store <2 x float> %i.o, ptr %i.q, align 4, !alias.scope !9802, !noalias !9803
  store <2 x float> %i.p, ptr %i.r, align 4, !alias.scope !9802, !noalias !9803
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !9797

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdfuNCNvNtNtNtCs607s0NAIaWN_7segment14vector_storage5turbo6shared29dequantize_for_requantization0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4i_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.k, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.t = phi i64 [ %i.x, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.y, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load double, ptr %i.u, align 8, !noalias !9801, !noundef !5
  %i.v = fptrunc double %.val15.i.prol to float
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.t
  store float %i.v, ptr %i.w, align 4, !noalias !9804
  %i.x = add i64 %i.t, 1                          ; 3 uses
  %i.y = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !9798

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.z = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdfuNCNvNtNtNtCs607s0NAIaWN_7segment14vector_storage5turbo6shared29dequantize_for_requantization0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4i_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ab = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load double, ptr %i.ac, align 8, !noalias !9801, !noundef !5
  %i.ad = fptrunc double %.val15.i to float
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  store float %i.ad, ptr %i.ae, align 4, !noalias !9804
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val15.i.1 = load double, ptr %i.ag, align 8, !noalias !9801, !noundef !5
  %i.ah = fptrunc double %.val15.i.1 to float
  %i.ai = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  store float %i.ah, ptr %i.aj, align 4, !noalias !9804
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val15.i.2 = load double, ptr %i.al, align 8, !noalias !9801, !noundef !5
  %i.am = fptrunc double %.val15.i.2 to float
  %i.an = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  store float %i.am, ptr %i.ao, align 4, !noalias !9804
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.val15.i.3 = load double, ptr %i.aq, align 8, !noalias !9801, !noundef !5
  %i.ar = fptrunc double %.val15.i.3 to float
  %i.as = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.at = getelementptr i8, ptr %i.as, i64 12
  store float %i.ar, ptr %i.at, align 4, !noalias !9804
  %i.au = add i64 %i.ab, 4                        ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.e
  br i1 %i.aw, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdfuNCNvNtNtNtCs607s0NAIaWN_7segment14vector_storage5turbo6shared29dequantize_for_requantization0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4i_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph, !llvm.loop !9799

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdfuNCNvNtNtNtCs607s0NAIaWN_7segment14vector_storage5turbo6shared29dequantize_for_requantization0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4i_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !9801
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB1x_16EncodedVectorsU8INtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized17quantized_storage16QuantizedStorageNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEE17encode_int8_query0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5w_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6J_3VechE14extend_trustedBN_E0E0EB2T_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8INtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized17quantized_storage16QuantizedStorageNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6T_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3J_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !11, !noundef !5 ; 3 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 2 uses
  %i.j = lshr exact i64 %i.i, 2                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.o = getelementptr i8, ptr %i.n, i64 %i.j     ; 2 uses
  %bound0 = icmp ult ptr %i.m, %i.c
  %bound0.a = icmp ult ptr %i.a, %i.o
  %found.conflict = and i1 %bound0, %bound0.a
  %2 = getelementptr i8, ptr %i.f, i64 48
  %bound08 = icmp ult ptr %i.m, %2
  %bound19 = icmp ult ptr %i.l, %i.o
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 4611686018427387900      ; 4 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.q = load float, ptr %i.k, align 4, !alias.scope !9819, !noalias !9820
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.r = load float, ptr %i.l, align 8, !alias.scope !9819, !noalias !9820
  %broadcast.splatinsert11 = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat12 = shufflevector <4 x float> %broadcast.splatinsert11, <4 x float> poison, <4 x i32> zeroinitializer
  %i.s = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %wide.load = load <4 x float>, ptr %i.t, align 4, !alias.scope !9821, !noalias !9822
  %i.u = fsub <4 x float> %wide.load, %broadcast.splat
  %i.v = fdiv <4 x float> %i.u, %broadcast.splat12 ; 2 uses
  %i.w = fcmp olt <4 x float> %i.v, zeroinitializer
  %i.x = select <4 x i1> %i.w, <4 x float> zeroinitializer, <4 x float> %i.v ; 2 uses
  %i.y = fcmp ogt <4 x float> %i.x, splat (float 1.270000e+02)
  %i.z = select <4 x i1> %i.y, <4 x float> splat (float 1.270000e+02), <4 x float> %i.x
  %i.aa = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.z)
  %i.ab = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.aa)
  %i.ac = getelementptr i8, ptr %i.s, i64 %index
  store <4 x i8> %i.ab, ptr %i.ac, align 1, !alias.scope !9823, !noalias !9824
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !9817

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8INtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized17quantized_storage16QuantizedStorageNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6T_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3J_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ae = phi i64 [ %i.ap, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.aq, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.af, align 4, !noalias !9822, !noundef !5
  %i.ag = load float, ptr %i.k, align 4, !noalias !9820, !noundef !5
  %i.ah = fsub float %.val15.i, %i.ag
  %i.ai = load float, ptr %i.l, align 8, !noalias !9820, !noundef !5
  %i.aj = fdiv float %i.ah, %i.ai                 ; 2 uses
  %i.ak = fcmp olt float %i.aj, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.ak, float 0.000000e+00, float %i.aj ; 2 uses
  %i.al = fcmp ogt float %spec.store.select.i.i.i.i, 1.270000e+02
  %spec.store.select1.i.i.i.i = select i1 %i.al, float 1.270000e+02, float %spec.store.select.i.i.i.i
  %i.am = tail call float @llvm.round.f32(float %spec.store.select1.i.i.i.i)
  %i.an = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ae
  store i8 %i.an, ptr %i.ao, align 1, !noalias !9825
  %i.ap = add i64 %i.ae, 1                        ; 2 uses
  %i.aq = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.j
  br i1 %i.ar, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8INtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized17quantized_storage16QuantizedStorageNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6T_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3J_.exit, label %scalar.ph, !llvm.loop !9818

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8INtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized17quantized_storage16QuantizedStorageNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6T_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3J_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %middle.block ], [ %i.ap, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !9822
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB1x_16EncodedVectorsU8NtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized21quantized_ram_storage19QuantizedRamStorageE17encode_int8_query0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4I_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5V_3VechE14extend_trustedBN_E0E0EB2S_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8NtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized21quantized_ram_storage19QuantizedRamStorageE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB65_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3I_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !11, !noundef !5 ; 3 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 2 uses
  %i.j = lshr exact i64 %i.i, 2                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.o = getelementptr i8, ptr %i.n, i64 %i.j     ; 2 uses
  %bound0 = icmp ult ptr %i.m, %i.c
  %bound0.a = icmp ult ptr %i.a, %i.o
  %found.conflict = and i1 %bound0, %bound0.a
  %2 = getelementptr i8, ptr %i.f, i64 48
  %bound08 = icmp ult ptr %i.m, %2
  %bound19 = icmp ult ptr %i.l, %i.o
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 4611686018427387900      ; 4 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.q = load float, ptr %i.k, align 4, !alias.scope !9840, !noalias !9841
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.r = load float, ptr %i.l, align 8, !alias.scope !9840, !noalias !9841
  %broadcast.splatinsert11 = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat12 = shufflevector <4 x float> %broadcast.splatinsert11, <4 x float> poison, <4 x i32> zeroinitializer
  %i.s = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %wide.load = load <4 x float>, ptr %i.t, align 4, !alias.scope !9842, !noalias !9843
  %i.u = fsub <4 x float> %wide.load, %broadcast.splat
  %i.v = fdiv <4 x float> %i.u, %broadcast.splat12 ; 2 uses
  %i.w = fcmp olt <4 x float> %i.v, zeroinitializer
  %i.x = select <4 x i1> %i.w, <4 x float> zeroinitializer, <4 x float> %i.v ; 2 uses
  %i.y = fcmp ogt <4 x float> %i.x, splat (float 1.270000e+02)
  %i.z = select <4 x i1> %i.y, <4 x float> splat (float 1.270000e+02), <4 x float> %i.x
  %i.aa = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.z)
  %i.ab = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.aa)
  %i.ac = getelementptr i8, ptr %i.s, i64 %index
  store <4 x i8> %i.ab, ptr %i.ac, align 1, !alias.scope !9844, !noalias !9845
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !9838

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8NtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized21quantized_ram_storage19QuantizedRamStorageE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB65_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3I_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ae = phi i64 [ %i.ap, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.aq, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.af, align 4, !noalias !9843, !noundef !5
  %i.ag = load float, ptr %i.k, align 4, !noalias !9841, !noundef !5
  %i.ah = fsub float %.val15.i, %i.ag
  %i.ai = load float, ptr %i.l, align 8, !noalias !9841, !noundef !5
  %i.aj = fdiv float %i.ah, %i.ai                 ; 2 uses
  %i.ak = fcmp olt float %i.aj, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.ak, float 0.000000e+00, float %i.aj ; 2 uses
  %i.al = fcmp ogt float %spec.store.select.i.i.i.i, 1.270000e+02
  %spec.store.select1.i.i.i.i = select i1 %i.al, float 1.270000e+02, float %spec.store.select.i.i.i.i
  %i.am = tail call float @llvm.round.f32(float %spec.store.select1.i.i.i.i)
  %i.an = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ae
  store i8 %i.an, ptr %i.ao, align 1, !noalias !9846
  %i.ap = add i64 %i.ae, 1                        ; 2 uses
  %i.aq = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.j
  br i1 %i.ar, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8NtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized21quantized_ram_storage19QuantizedRamStorageE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB65_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3I_.exit, label %scalar.ph, !llvm.loop !9839

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8NtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized21quantized_ram_storage19QuantizedRamStorageE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB65_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3I_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %middle.block ], [ %i.ap, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !9843
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB1x_16EncodedVectorsU8NtNtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized30quantized_chunked_mmap_storage10read_write23QuantizedChunkedStorageE17encode_int8_query0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB59_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6m_3VechE14extend_trustedBN_E0E0EB2U_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8NtNtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized30quantized_chunked_mmap_storage10read_write23QuantizedChunkedStorageE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3K_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !11, !noundef !5 ; 3 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 2 uses
  %i.j = lshr exact i64 %i.i, 2                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.o = getelementptr i8, ptr %i.n, i64 %i.j     ; 2 uses
  %bound0 = icmp ult ptr %i.m, %i.c
  %bound0.a = icmp ult ptr %i.a, %i.o
  %found.conflict = and i1 %bound0, %bound0.a
  %2 = getelementptr i8, ptr %i.f, i64 48
  %bound08 = icmp ult ptr %i.m, %2
  %bound19 = icmp ult ptr %i.l, %i.o
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 4611686018427387900      ; 4 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.q = load float, ptr %i.k, align 4, !alias.scope !9861, !noalias !9862
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.r = load float, ptr %i.l, align 8, !alias.scope !9861, !noalias !9862
  %broadcast.splatinsert11 = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat12 = shufflevector <4 x float> %broadcast.splatinsert11, <4 x float> poison, <4 x i32> zeroinitializer
  %i.s = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %wide.load = load <4 x float>, ptr %i.t, align 4, !alias.scope !9863, !noalias !9864
  %i.u = fsub <4 x float> %wide.load, %broadcast.splat
  %i.v = fdiv <4 x float> %i.u, %broadcast.splat12 ; 2 uses
  %i.w = fcmp olt <4 x float> %i.v, zeroinitializer
  %i.x = select <4 x i1> %i.w, <4 x float> zeroinitializer, <4 x float> %i.v ; 2 uses
  %i.y = fcmp ogt <4 x float> %i.x, splat (float 1.270000e+02)
  %i.z = select <4 x i1> %i.y, <4 x float> splat (float 1.270000e+02), <4 x float> %i.x
  %i.aa = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.z)
  %i.ab = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.aa)
  %i.ac = getelementptr i8, ptr %i.s, i64 %index
  store <4 x i8> %i.ab, ptr %i.ac, align 1, !alias.scope !9865, !noalias !9866
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !9859

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8NtNtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized30quantized_chunked_mmap_storage10read_write23QuantizedChunkedStorageE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3K_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ae = phi i64 [ %i.ap, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.aq, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.af, align 4, !noalias !9864, !noundef !5
  %i.ag = load float, ptr %i.k, align 4, !noalias !9862, !noundef !5
  %i.ah = fsub float %.val15.i, %i.ag
  %i.ai = load float, ptr %i.l, align 8, !noalias !9862, !noundef !5
  %i.aj = fdiv float %i.ah, %i.ai                 ; 2 uses
  %i.ak = fcmp olt float %i.aj, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.ak, float 0.000000e+00, float %i.aj ; 2 uses
  %i.al = fcmp ogt float %spec.store.select.i.i.i.i, 1.270000e+02
  %spec.store.select1.i.i.i.i = select i1 %i.al, float 1.270000e+02, float %spec.store.select.i.i.i.i
  %i.am = tail call float @llvm.round.f32(float %spec.store.select1.i.i.i.i)
  %i.an = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ae
  store i8 %i.an, ptr %i.ao, align 1, !noalias !9867
  %i.ap = add i64 %i.ae, 1                        ; 2 uses
  %i.aq = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.j
  br i1 %i.ar, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8NtNtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized30quantized_chunked_mmap_storage10read_write23QuantizedChunkedStorageE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3K_.exit, label %scalar.ph, !llvm.loop !9860

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvMs0_NtCs9xXWl5j4IME_12quantization18encoded_vectors_u8INtB2n_16EncodedVectorsU8NtNtNtNtNtCs607s0NAIaWN_7segment14vector_storage9quantized30quantized_chunked_mmap_storage10read_write23QuantizedChunkedStorageE17encode_int8_query0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB3K_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %middle.block ], [ %i.ap, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !9864
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvNtNtCs607s0NAIaWN_7segment6spaces6simple17cosine_preprocesss_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2u_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3H_3VecfE14extend_trustedBN_E0E0EB1x_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !27, !noundef !5 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNvNtNtCs607s0NAIaWN_7segment6spaces6simple17cosine_preprocesss_0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 4 uses
  %i.j = lshr i64 %i.i, 2                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 %i.i     ; 2 uses
  %bound0 = icmp ult ptr %i.l, %i.c
  %bound0.a = icmp ult ptr %i.a, %i.n
  %found.conflict = and i1 %bound0, %bound0.a
  %2 = getelementptr i8, ptr %i.e, i64 4
  %bound08 = icmp ult ptr %i.l, %2
  %bound19 = icmp ult ptr %i.e, %i.n
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 4611686018427387900      ; 4 uses
  %i.o = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.p = load float, ptr %i.e, align 4, !alias.scope !9882, !noalias !9883
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.p, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.q = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %wide.load = load <4 x float>, ptr %i.r, align 4, !alias.scope !9884, !noalias !9885
  %i.s = fdiv <4 x float> %wide.load, %broadcast.splat
  %i.t = getelementptr [4 x i8], ptr %i.q, i64 %index
  store <4 x float> %i.s, ptr %i.t, align 4, !alias.scope !9886, !noalias !9887
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !9880

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNvNtNtCs607s0NAIaWN_7segment6spaces6simple17cosine_preprocesss_0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.o, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.v = and i64 %i.i, 4
  %lcmp.mod.not = icmp eq i64 %i.v, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load float, ptr %i.w, align 4, !noalias !9885, !noundef !5
  %i.x = load float, ptr %i.e, align 4, !noalias !9883, !noundef !5
  %i.y = fdiv float %.val15.i.prol, %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store float %i.y, ptr %i.z, align 4, !noalias !9888
  %i.aa = add i64 %.ph, 1                         ; 2 uses
  %i.ab = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = icmp eq i64 %i.j, %.neg
  br i1 %i.ac, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNvNtNtCs607s0NAIaWN_7segment6spaces6simple17cosine_preprocesss_0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ad = phi i64 [ %i.ao, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ap, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.ae, align 4, !noalias !9885, !noundef !5
  %i.af = load float, ptr %i.e, align 4, !noalias !9883, !noundef !5
  %i.ag = fdiv float %.val15.i, %i.af
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  store float %i.ag, ptr %i.ah, align 4, !noalias !9888
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.val15.i.1 = load float, ptr %i.aj, align 4, !noalias !9885, !noundef !5
  %i.ak = load float, ptr %i.e, align 4, !noalias !9883, !noundef !5
  %i.al = fdiv float %.val15.i.1, %i.ak
  %i.am = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ad
  %i.an = getelementptr i8, ptr %i.am, i64 4
  store float %i.al, ptr %i.an, align 4, !noalias !9888
  %i.ao = add i64 %i.ad, 2                        ; 2 uses
  %i.ap = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.aq = icmp eq i64 %i.ap, %i.j
  br i1 %i.aq, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNvNtNtCs607s0NAIaWN_7segment6spaces6simple17cosine_preprocesss_0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph, !llvm.loop !9881

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNvNtNtCs607s0NAIaWN_7segment6spaces6simple17cosine_preprocesss_0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.o, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ao, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !9885
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB1x_22PrimitiveVectorElement20slice_from_float_cow0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3c_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4p_3VechE14extend_trustedBN_E0E0EB1B_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4z_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr i64 %i.d, 2                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.h = getelementptr i8, ptr %i.g, i64 %i.e
  %bound0 = icmp ult ptr %i.f, %1
  %bound1 = icmp ult ptr %0, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387896      ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x float>, ptr %i.k, align 4, !alias.scope !9902, !noalias !9903
  %wide.load4 = load <4 x float>, ptr %i.l, align 4, !alias.scope !9902, !noalias !9903
  %i.m = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %wide.load)
  %i.n = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %wide.load4)
  %i.o = getelementptr i8, ptr %i.j, i64 %index   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store <4 x i8> %i.m, ptr %i.o, align 1, !alias.scope !9904, !noalias !9905
  store <4 x i8> %i.n, ptr %i.p, align 1, !alias.scope !9904, !noalias !9905
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !9900

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4z_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.r = and i64 %i.d, 4
  %lcmp.mod.not = icmp eq i64 %i.r, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load float, ptr %i.s, align 4, !noalias !9903, !noundef !5
  %i.t = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %.val15.i.prol)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.ph
  store i8 %i.t, ptr %i.u, align 1, !noalias !9906
  %i.v = add i64 %.ph, 1                          ; 2 uses
  %i.w = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %i.x = icmp eq i64 %i.e, %.neg
  br i1 %i.x, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4z_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.y = phi i64 [ %i.ah, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ai, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.z, align 4, !noalias !9903, !noundef !5
  %i.aa = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %.val15.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.y
  store i8 %i.aa, ptr %i.ab, align 1, !noalias !9906
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.val15.i.1 = load float, ptr %i.ad, align 4, !noalias !9903, !noundef !5
  %i.ae = tail call noundef i8 @llvm.fptoui.sat.i8.f32(float %.val15.i.1)
  %i.af = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.y
  %i.ag = getelementptr i8, ptr %i.af, i64 1
  store i8 %i.ae, ptr %i.ag, align 1, !noalias !9906
  %i.ah = add i64 %i.y, 2                         ; 2 uses
  %i.ai = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.e
  br i1 %i.aj, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4z_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph, !llvm.loop !9901

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfhuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4z_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ah, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !9903
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB1x_22PrimitiveVectorElement22from_float_multivector0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3e_8for_each4callhNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4r_3VechE14extend_trustedBN_E0E0EB1B_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
end_hunk_2
begin_hunk_3_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCINvNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_indexNtB1x_22ImmutableInvertedIndex14filter_has_all12intersectionNtNtB1z_9positions9PositionsNCB1u_0E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionzEEB4T_8try_folduNCINvNvB4T_12try_for_each4callINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewB4h_EINtNtNtBc_3ops12control_flow11ControlFlowB7e_ENcNtB8c_5Break0E0B8c_E0IB8d_B8c_EEB1H_:bb.a
  %i.x = load ptr, ptr %i.w, align 8, !noalias !10147, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.z = load i64, ptr %i.y, align 8, !noalias !10147, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.ab = load <2 x i32>, ptr %i.aa, align 8, !noalias !10147
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i32 -1, ptr %0, align 8, !alias.scope !10148
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6option6OptionINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsEEuINtNtNtBa_3ops12control_flow11ControlFlowIB5g_B2B_EENCINvNvMNtB3y_24immutable_inverted_indexNtB6d_22ImmutableInvertedIndex14filter_has_all12intersectionB3u_NCB6a_0E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B65_EIB2g_zEEBL_8try_folduNCINvNvBL_12try_for_each4callB2B_B5U_NcNtB5U_5Break0E0B5U_E0E0B5f_EB3G_.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.14.0.i = phi i64 [ %i.z, %bb.d ], [ undef, %bb.c ]
  %.sroa.13.0.i = phi ptr [ %i.x, %bb.d ], [ undef, %bb.c ]
  %.sroa.12.0.i = phi i64 [ %i.v, %bb.d ], [ undef, %bb.c ]
  %.sroa.11.0.i = phi ptr [ %i.t, %bb.d ], [ undef, %bb.c ]
  %.sroa.10.0.i = phi i64 [ %i.r, %bb.d ], [ undef, %bb.c ]
  %.sroa.9.0.i = phi ptr [ %i.p, %bb.d ], [ undef, %bb.c ]
  %.sroa.8.0.i = phi i64 [ %i.n, %bb.d ], [ undef, %bb.c ]
  %.sroa.75.0.i = phi ptr [ %i.l, %bb.d ], [ undef, %bb.c ]
  %i.ac = phi <2 x i32> [ %i.ab, %bb.d ], [ <i32 2, i32 undef>, %bb.c ]
  store <2 x i32> %i.ac, ptr %0, align 8, !alias.scope !10149
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.75.0.i, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !10149
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !10149
  %.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.9.0.i, ptr %.sroa.7.0..sroa_idx8.i, align 8, !alias.scope !10149
  %.sroa.89.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.10.0.i, ptr %.sroa.89.0..sroa_idx.i, align 8, !alias.scope !10149
  %.sroa.910.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.11.0.i, ptr %.sroa.910.0..sroa_idx.i, align 8, !alias.scope !10149
  %.sroa.1011.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.12.0.i, ptr %.sroa.1011.0..sroa_idx.i, align 8, !alias.scope !10149
  %.sroa.1112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.13.0.i, ptr %.sroa.1112.0..sroa_idx.i, align 8, !alias.scope !10149
  %.sroa.1213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.14.0.i, ptr %.sroa.1213.0..sroa_idx.i, align 8, !alias.scope !10149
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6option6OptionINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsEEuINtNtNtBa_3ops12control_flow11ControlFlowIB5g_B2B_EENCINvNvMNtB3y_24immutable_inverted_indexNtB6d_22ImmutableInvertedIndex14filter_has_all12intersectionB3u_NCB6a_0E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B65_EIB2g_zEEBL_8try_folduNCINvNvBL_12try_for_each4callB2B_B5U_NcNtB5U_5Break0E0B5U_E0E0B5f_EB3G_.exit

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6option6OptionINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsEEuINtNtNtBa_3ops12control_flow11ControlFlowIB5g_B2B_EENCINvNvMNtB3y_24immutable_inverted_indexNtB6d_22ImmutableInvertedIndex14filter_has_all12intersectionB3u_NCB6a_0E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B65_EIB2g_zEEBL_8try_folduNCINvNvBL_12try_for_each4callB2B_B5U_NcNtB5U_5Break0E0B5U_E0E0B5f_EB3G_.exit: ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCINvNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_indexNtB1x_22ImmutableInvertedIndex14filter_has_all12intersectionuNCB1u_0E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionzEEB4s_8try_folduNCINvNvB4s_12try_for_each4callINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewuEINtNtNtBc_3ops12control_flow11ControlFlowB6N_ENcNtB7I_5Break0E0B7I_E0IB7J_B7I_EEB1H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 4)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %3) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10168)
  %i.b = load ptr, ptr %1, align 8, !alias.scope !10169, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !10169, !nonnull !5, !noundef !5
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.f, ptr %1, align 8, !alias.scope !10169
  %.val5.i = load i32, ptr %i.b, align 4, !noalias !10170, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.g, align 8, !noalias !10171, !noundef !5
  %i.h = zext i32 %.val5.i to i64                 ; 2 uses
  %i.i = icmp ugt i64 %.val1.i.i, %i.h
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 1, !noalias !10172
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %i.a, align 8, !noalias !10171, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw [104 x i8], ptr %.val.i.i, i64 %i.h ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !10173, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !10173, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !10173, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.r = load i64, ptr %i.q, align 8, !noalias !10173, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !noalias !10173, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.v = load i64, ptr %i.u, align 8, !noalias !10173, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !noalias !10173, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.z = load i64, ptr %i.y, align 8, !noalias !10173, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.ab = load <2 x i32>, ptr %i.aa, align 8, !noalias !10173
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i32 -1, ptr %0, align 8, !alias.scope !10174
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6option6OptionINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewuEEuINtNtNtBa_3ops12control_flow11ControlFlowIB3z_B2B_EENCINvNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_indexNtB4w_22ImmutableInvertedIndex14filter_has_all12intersectionuNCB4t_0E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B4o_EIB2g_zEEBL_8try_folduNCINvNvBL_12try_for_each4callB2B_B4d_NcNtB4d_5Break0E0B4d_E0E0B3y_EB4G_.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.14.0.i = phi i64 [ %i.z, %bb.d ], [ undef, %bb.c ]
  %.sroa.13.0.i = phi ptr [ %i.x, %bb.d ], [ undef, %bb.c ]
  %.sroa.12.0.i = phi i64 [ %i.v, %bb.d ], [ undef, %bb.c ]
  %.sroa.11.0.i = phi ptr [ %i.t, %bb.d ], [ undef, %bb.c ]
  %.sroa.10.0.i = phi i64 [ %i.r, %bb.d ], [ undef, %bb.c ]
  %.sroa.9.0.i = phi ptr [ %i.p, %bb.d ], [ undef, %bb.c ]
  %.sroa.8.0.i = phi i64 [ %i.n, %bb.d ], [ undef, %bb.c ]
  %.sroa.75.0.i = phi ptr [ %i.l, %bb.d ], [ undef, %bb.c ]
  %i.ac = phi <2 x i32> [ %i.ab, %bb.d ], [ <i32 2, i32 undef>, %bb.c ]
  store <2 x i32> %i.ac, ptr %0, align 8, !alias.scope !10175
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.75.0.i, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !10175
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !10175
  %.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.9.0.i, ptr %.sroa.7.0..sroa_idx8.i, align 8, !alias.scope !10175
  %.sroa.89.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.10.0.i, ptr %.sroa.89.0..sroa_idx.i, align 8, !alias.scope !10175
  %.sroa.910.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.11.0.i, ptr %.sroa.910.0..sroa_idx.i, align 8, !alias.scope !10175
  %.sroa.1011.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.12.0.i, ptr %.sroa.1011.0..sroa_idx.i, align 8, !alias.scope !10175
  %.sroa.1112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.13.0.i, ptr %.sroa.1112.0..sroa_idx.i, align 8, !alias.scope !10175
  %.sroa.1213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.14.0.i, ptr %.sroa.1213.0..sroa_idx.i, align 8, !alias.scope !10175
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6option6OptionINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewuEEuINtNtNtBa_3ops12control_flow11ControlFlowIB3z_B2B_EENCINvNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_indexNtB4w_22ImmutableInvertedIndex14filter_has_all12intersectionuNCB4t_0E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B4o_EIB2g_zEEBL_8try_folduNCINvNvBL_12try_for_each4callB2B_B4d_NcNtB4d_5Break0E0B4d_E0E0B3y_EB4G_.exit

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6option6OptionINtNtCs6cW95TQWYPl_12posting_list4view15PostingListViewuEEuINtNtNtBa_3ops12control_flow11ControlFlowIB3z_B2B_EENCINvNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_indexNtB4w_22ImmutableInvertedIndex14filter_has_all12intersectionuNCB4t_0E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B4o_EIB2g_zEEBL_8try_folduNCINvNvBL_12try_for_each4callB2B_B4d_NcNtB4d_5Break0E0B4d_E0E0B3y_EB4G_.exit: ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { i64, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22mutable_inverted_indexNtB1u_20MutableInvertedIndex14filter_has_all0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionzEEB3Y_8try_folduNCINvNvB3Y_12try_for_each4callRNtNtB1w_12posting_list11PostingListINtNtNtBc_3ops12control_flow11ControlFlowB6j_ENcNtB6T_5Break0E0B6T_E0IB6U_B6T_EEB1E_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10182)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !10183, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !10183, !nonnull !5, !noundef !5
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6option6OptionRNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEuINtNtNtBa_3ops12control_flow11ControlFlowIB4u_B2B_EENCNvMNtB2G_22mutable_inverted_indexNtB5o_20MutableInvertedIndex14filter_has_all0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5j_EIB2g_zEEBL_8try_folduNCINvNvBL_12try_for_each4callB2B_B58_NcNtB58_5Break0E0B58_E0E0B4t_EB2O_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store ptr %i.f, ptr %0, align 8, !alias.scope !10183
  %.val7.i = load i32, ptr %i.a, align 4, !noalias !10182, !noundef !5
  %.val.i.i = load ptr, ptr %i.e, align 8, !noalias !10182, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noalias !10182, !noundef !5
  %i.i = zext i32 %.val7.i to i64                 ; 2 uses
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22mutable_inverted_indexNtB4_20MutableInvertedIndex14filter_has_all0Be_.exit.i.i, label %bb.c

_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22mutable_inverted_indexNtB4_20MutableInvertedIndex14filter_has_all0Be_.exit.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !10182, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.i
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6option6OptionRNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEuINtNtNtBa_3ops12control_flow11ControlFlowIB4u_B2B_EENCNvMNtB2G_22mutable_inverted_indexNtB5o_20MutableInvertedIndex14filter_has_all0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5j_EIB2g_zEEBL_8try_folduNCINvNvBL_12try_for_each4callB2B_B58_NcNtB58_5Break0E0B58_E0E0B4t_EB2O_.exit

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 1, !noalias !10184
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6option6OptionRNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEuINtNtNtBa_3ops12control_flow11ControlFlowIB4u_B2B_EENCNvMNtB2G_22mutable_inverted_indexNtB5o_20MutableInvertedIndex14filter_has_all0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5j_EIB2g_zEEBL_8try_folduNCINvNvBL_12try_for_each4callB2B_B58_NcNtB58_5Break0E0B58_E0E0B4t_EB2O_.exit

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6option6OptionRNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEuINtNtNtBa_3ops12control_flow11ControlFlowIB4u_B2B_EENCNvMNtB2G_22mutable_inverted_indexNtB5o_20MutableInvertedIndex14filter_has_all0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5j_EIB2g_zEEBL_8try_folduNCINvNvBL_12try_for_each4callB2B_B58_NcNtB58_5Break0E0B58_E0E0B4t_EB2O_.exit: ; preds = %bb.a, %_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22mutable_inverted_indexNtB4_20MutableInvertedIndex14filter_has_all0Be_.exit.i.i, %bb.c
  %.sroa.3.0.i = phi ptr [ undef, %bb.a ], [ %i.m, %_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22mutable_inverted_indexNtB4_20MutableInvertedIndex14filter_has_all0Be_.exit.i.i ], [ null, %bb.c ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ 1, %_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22mutable_inverted_indexNtB4_20MutableInvertedIndex14filter_has_all0Be_.exit.i.i ], [ 1, %bb.c ]
  %i.n = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.o = insertvalue { i64, ptr } %i.n, ptr %.sroa.3.0.i, 1
  ret { i64, ptr } %i.o
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positionsNtB1u_9Positions18to_token_positions0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3C_8for_each4callNtB1u_13TokenPositionNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB59_3VecB4F_E14extend_trustedBN_E0E0EB1E_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !27, !noundef !5 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions13TokenPositionuNCNvMB2f_NtB2f_9Positions18to_token_positions0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5m_3VecB2d_E14extend_trustedINtB1I_3MapBF_B41_EE0E0E0EB2p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 4 uses
  %i.j = lshr i64 %i.i, 2                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 3           ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k ; 2 uses
  %i.m = shl i64 %i.i, 1
  %i.n = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m     ; 2 uses
  %bound0 = icmp ult ptr %i.l, %i.c
  %bound0.a = icmp ult ptr %i.a, %i.o
  %found.conflict = and i1 %bound0, %bound0.a
  %2 = getelementptr i8, ptr %i.e, i64 4
  %bound08 = icmp ult ptr %i.l, %2
  %bound19 = icmp ult ptr %i.e, %i.o
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 4611686018427387900      ; 4 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.q = load i32, ptr %i.e, align 4, !alias.scope !10199, !noalias !10200
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.q, i64 0 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = add i64 %.sroa.5.0.copyload, %index      ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %wide.load = load <2 x i32>, ptr %i.s, align 4, !alias.scope !10201, !noalias !10202
  %wide.load11 = load <2 x i32>, ptr %i.t, align 4, !alias.scope !10201, !noalias !10202
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.r
  %i.v = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.r
  %i.w = getelementptr i8, ptr %i.v, i64 16
  %interleaved.vec = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> %wide.load, <4 x i32> <i32 0, i32 2, i32 0, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.u, align 4, !alias.scope !10203, !noalias !10204
  %interleaved.vec12 = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> %wide.load11, <4 x i32> <i32 0, i32 2, i32 0, i32 3>
  store <4 x i32> %interleaved.vec12, ptr %i.w, align 4, !alias.scope !10203, !noalias !10204
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !10197

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions13TokenPositionuNCNvMB2f_NtB2f_9Positions18to_token_positions0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5m_3VecB2d_E14extend_trustedINtB1I_3MapBF_B41_EE0E0E0EB2p_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.y = and i64 %i.i, 4
  %lcmp.mod.not = icmp eq i64 %i.y, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load i32, ptr %i.z, align 4, !noalias !10202, !noundef !5
  %i.aa = load i32, ptr %i.e, align 4, !noalias !10200, !noundef !5
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph ; 2 uses
  store i32 %i.aa, ptr %i.ab, align 4, !noalias !10204
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %.val15.i.prol, ptr %i.ac, align 4, !noalias !10204
  %i.ad = add i64 %.ph, 1                         ; 2 uses
  %i.ae = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %i.af = icmp eq i64 %i.j, %.neg
  br i1 %i.af, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions13TokenPositionuNCNvMB2f_NtB2f_9Positions18to_token_positions0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5m_3VecB2d_E14extend_trustedINtB1I_3MapBF_B41_EE0E0E0EB2p_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ag = phi i64 [ %i.ar, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.ah, align 4, !noalias !10202, !noundef !5
  %i.ai = load i32, ptr %i.e, align 4, !noalias !10200, !noundef !5
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ag ; 2 uses
  store i32 %i.ai, ptr %i.aj, align 4, !noalias !10204
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %.val15.i, ptr %i.ak, align 4, !noalias !10204
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.val15.i.1 = load i32, ptr %i.am, align 4, !noalias !10202, !noundef !5
  %i.an = load i32, ptr %i.e, align 4, !noalias !10200, !noundef !5
  %i.ao = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ag ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  store i32 %i.an, ptr %i.ap, align 4, !noalias !10204
  %i.aq = getelementptr i8, ptr %i.ao, i64 12
  store i32 %.val15.i.1, ptr %i.aq, align 4, !noalias !10204
  %i.ar = add i64 %i.ag, 2                        ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.j
  br i1 %i.at, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions13TokenPositionuNCNvMB2f_NtB2f_9Positions18to_token_positions0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5m_3VecB2d_E14extend_trustedINtB1I_3MapBF_B41_EE0E0E0EB2p_.exit, label %scalar.ph, !llvm.loop !10198

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRmNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions13TokenPositionuNCNvMB2f_NtB2f_9Positions18to_token_positions0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5m_3VecB2d_E14extend_trustedINtB1I_3MapBF_B41_EE0E0E0EB2p_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ar, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !10202
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCNvYNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB1y_13InvertedIndex31estimate_has_subset_cardinality0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtB1G_6common15operation_error14OperationErrorEEB4w_8try_folduNCINvXB8_IB5o_B5n_INtNtBc_6option6OptionzEEB4w_8try_folduNCINvNvB4w_12try_for_each4calljINtNtNtBc_3ops12control_flow11ControlFlowjENcNtB8B_5Break0E0B8B_E0IB8C_B8B_EE0IB8C_B9F_EEB1G_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(96) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10216)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !10217, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !10217, !nonnull !5, !noundef !5
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_IB48_jEEENCNvYNtNtNtNtNtNtB35_5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB59_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B50_EIB2g_zB2Z_EEBL_8try_folduNCINvXB1H_IB7Z_B7Y_IB2C_zEEBL_8try_folduNCINvNvBL_12try_for_each4calljB4R_NcNtB4R_5Break0E0B4R_E0B4M_E0E0B47_EB35_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.g, ptr %0, align 8, !alias.scope !10217
  %.val.i = load i32, ptr %i.b, align 4, !noalias !10218, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10218
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !10219, !nonnull !5, !align !11, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.i, align 8, !noalias !10219, !nonnull !5, !align !11, !noundef !5
  call void @_RNvXs_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22mutable_inverted_indexNtB4_20MutableInvertedIndexNtB6_13InvertedIndex15get_posting_len(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %.val.i.i, i32 noundef %.val.i, ptr noundef nonnull align 8 %.val1.i.i), !noalias !10219
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !10219 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !10219 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !10219 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %2, align 8, !range !10, !alias.scope !10220, !noalias !10221, !noundef !5
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i unwind label %bb.g, !noalias !10221

bb.e:                                             ; preds = %bb.b
  %i.l = trunc nuw i64 %.sroa.4.0.copyload.i.i to i1
  br i1 %i.l, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_IB2U_jEEENCNvYNtNtNtNtNtNtB1R_5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB3V_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4ItermEB3M_EIB12_zB1L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvXB6_IB6K_B6J_IB1o_zEEB7W_8try_folduNCINvNvB7W_12try_for_each4calljB3D_NcNtB3D_5Break0E0B3D_E0B3y_E0E0B1R_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !noalias !10221, !nonnull !5, !noundef !5
  store i8 1, ptr %.val.i.i.i, align 1, !noalias !10221
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_IB2U_jEEENCNvYNtNtNtNtNtNtB1R_5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB3V_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4ItermEB3M_EIB12_zB1L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvXB6_IB6K_B6J_IB1o_zEEB7W_8try_folduNCINvNvB7W_12try_for_each4calljB3D_NcNtB3D_5Break0E0B3D_E0B3y_E0E0B1R_.exit.i

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !10221
  %.sroa.511.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.511.0..8.val.sroa_idx.i.i.i, align 8, !noalias !10221
  %.sroa.614.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.614.0..8.val.sroa_idx.i.i.i, align 8, !noalias !10221
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !noalias !10219
  resume { ptr, i32 } %i.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !10221
  %.sroa.511.0..8.val.sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.511.0..8.val.sroa_idx12.i.i.i, align 8, !noalias !10221
  %.sroa.614.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.614.0..8.val.sroa_idx15.i.i.i, align 8, !noalias !10221
  %.sroa.7.0..8.val.sroa_idx17.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..8.val.sroa_idx17.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !noalias !10219
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_IB2U_jEEENCNvYNtNtNtNtNtNtB1R_5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB3V_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4ItermEB3M_EIB12_zB1L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvXB6_IB6K_B6J_IB1o_zEEB7W_8try_folduNCINvNvB7W_12try_for_each4calljB3D_NcNtB3D_5Break0E0B3D_E0B3y_E0E0B1R_.exit.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_IB2U_jEEENCNvYNtNtNtNtNtNtB1R_5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB3V_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4ItermEB3M_EIB12_zB1L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvXB6_IB6K_B6J_IB1o_zEEB7W_8try_folduNCINvNvB7W_12try_for_each4calljB3D_NcNtB3D_5Break0E0B3D_E0B3y_E0E0B1R_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i, %bb.f, %bb.e
  %.sroa.4.1.i.i.i = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i ], [ undef, %bb.f ], [ %.sroa.5.0.copyload.i.i, %bb.e ]
  %.sroa.0.1.i.i.i = phi i64 [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i ], [ 0, %bb.f ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10218
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_IB48_jEEENCNvYNtNtNtNtNtNtB35_5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB59_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B50_EIB2g_zB2Z_EEBL_8try_folduNCINvXB1H_IB7Z_B7Y_IB2C_zEEBL_8try_folduNCINvNvBL_12try_for_each4calljB4R_NcNtB4R_5Break0E0B4R_E0B4M_E0E0B47_EB35_.exit

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_IB48_jEEENCNvYNtNtNtNtNtNtB35_5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB59_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B50_EIB2g_zB2Z_EEBL_8try_folduNCINvXB1H_IB7Z_B7Y_IB2C_zEEBL_8try_folduNCINvNvBL_12try_for_each4calljB4R_NcNtB4R_5Break0E0B4R_E0B4M_E0E0B47_EB35_.exit: ; preds = %bb.a, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_IB2U_jEEENCNvYNtNtNtNtNtNtB1R_5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB3V_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4ItermEB3M_EIB12_zB1L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvXB6_IB6K_B6J_IB1o_zEEB7W_8try_folduNCINvNvB7W_12try_for_each4calljB3D_NcNtB3D_5Break0E0B3D_E0B3y_E0E0B1R_.exit.i
  %.sroa.3.0.i = phi i64 [ %.sroa.4.1.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_IB2U_jEEENCNvYNtNtNtNtNtNtB1R_5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB3V_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4ItermEB3M_EIB12_zB1L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvXB6_IB6K_B6J_IB1o_zEEB7W_8try_folduNCINvNvB7W_12try_for_each4calljB3D_NcNtB3D_5Break0E0B3D_E0B3y_E0E0B1R_.exit.i ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_IB2U_jEEENCNvYNtNtNtNtNtNtB1R_5index11field_index15full_text_index14inverted_index22mutable_inverted_index20MutableInvertedIndexNtB3V_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4ItermEB3M_EIB12_zB1L_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvXB6_IB6K_B6J_IB1o_zEEB7W_8try_folduNCINvNvB7W_12try_for_each4calljB3D_NcNtB3D_5Break0E0B3D_E0B3y_E0E0B1R_.exit.i ], [ -1, %bb.a ]
  %i.o = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.p = insertvalue { i64, i64 } %i.o, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCNvYNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_index19OnDiskInvertedIndexNtB1y_13InvertedIndex31estimate_has_subset_cardinality0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtB1G_6common15operation_error14OperationErrorEEB4v_8try_folduNCINvXB8_IB5n_B5m_INtNtBc_6option6OptionzEEB4v_8try_folduNCINvNvB4v_12try_for_each4calljINtNtNtBc_3ops12control_flow11ControlFlowjENcNtB8A_5Break0E0B8A_E0IB8B_B8A_EE0IB8B_B9E_EEB1G_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(96) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10233)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !10234, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !10234, !nonnull !5, !noundef !5
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldRmINtNtBa_6result6ResultINtNtBa_6option6OptionjENtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB48_IB48_jEEENCNvYNtNtNtNtNtNtB35_5index11field_index15full_text_index14inverted_index22on_disk_inverted_index19OnDiskInvertedIndexNtB59_13InvertedIndex31estimate_has_subset_cardinality0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B50_EIB2g_zB2Z_EEBL_8try_folduNCINvXB1H_IB7Y_B7X_IB2C_zEEBL_8try_folduNCINvNvBL_12try_for_each4calljB4R_NcNtB4R_5Break0E0B4R_E0B4M_E0E0B47_EB35_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.g, ptr %0, align 8, !alias.scope !10234
  %.val.i = load i32, ptr %i.b, align 4, !noalias !10235, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10235
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !10236, !nonnull !5, !align !11, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.i, align 8, !noalias !10236, !nonnull !5, !align !11, !noundef !5
  call void @_RNvXs1_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_indexNtB5_19OnDiskInvertedIndexNtB7_13InvertedIndex15get_posting_lenBf_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(480) %.val.i.i, i32 noundef %.val.i, ptr noundef nonnull align 8 %.val1.i.i), !noalias !10236
end_hunk_3
