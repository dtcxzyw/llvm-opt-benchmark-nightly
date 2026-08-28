Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/api-06614bd479596541.api.cf22817590643bcf-cgu.002?download=true
inline.NumInlined: 2585
inline.NumDeleted: 1111
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB2v_3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorEEINtNtNtBb_5slice4iter4IterB3k_ENCNvXs8_NtB3o_8validateNtB3m_17BatchVectorStructNtNtCs1cB7FFWPEsq_9validator6traits8Validate8validate0ENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRB3k_B1a_E0ENtNtNtB9_6traits8iterator8Iterator4nextB3q_:bb.a
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2815)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2823)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2826
  store ptr %i.g, ptr %i.f, align 8, !noalias !2832
  %i.h = load ptr, ptr %1, align 8, !alias.scope !2835, !noalias !2836, !noundef !9 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2840)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2843
  store ptr %i.f, ptr %i.e, align 8, !noalias !2846
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2849, !noalias !2852, !nonnull !9, !noundef !9 ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %.loopexit49.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %bb.c
  %i.l = phi ptr [ %i.m, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 208 ; 3 uses
  store ptr %i.m, ptr %1, align 8, !alias.scope !2849, !noalias !2852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2846
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsQNCINvNtCslmvYCXbQjWR_6common10validation13validate_iterB1P_INtNtNtB11_8adapters7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB5S_3vec3VecB1Q_EEINtNtNtBb_5slice4iter4IterB1Q_ENCNvXs8_NtB1U_8validateNtB1S_17BatchVectorStructNtNtB2B_6traits8Validate8validate0EE0E0INtB7_5FnMutTuB1P_EE8call_mutB1W_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.l), !noalias !2853
  %i.n = load ptr, ptr %i.d, align 8, !alias.scope !2854, !noalias !2857, !noundef !9 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2846
  %i.o = icmp eq ptr %i.m, %i.j
  br i1 %i.o, label %.loopexit49.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx5.i.i.i.i.i.i, i64 40, i1 false), !noalias !2859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2843
  br label %bb.m

.loopexit49.i.i.i.i:                              ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2843
  br label %bb.e

bb.e:                                             ; preds = %.loopexit49.i.i.i.i, %bb.a
  store ptr null, ptr %1, align 8, !alias.scope !2835, !noalias !2836
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2860)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2863, !noalias !2864, !noundef !9
  %.not.i5.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i5.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2868
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1U_3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorEENCNvXs8_NtB2N_8validateNtB2L_17BatchVectorStructNtNtCs1cB7FFWPEsq_9validator6traits8Validate8validate0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB60_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterB2J_EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtB4i_5types16ValidationErrorsENCINvNvXsi_B60_B6d_B57_8try_fold7flattenB6Z_uB7v_NCINvNvB57_8find_map5checkRB2J_B8a_QNCINvNtCslmvYCXbQjWR_6common10validation13validate_iterB9U_INtB60_7FlatMapBX_B6Z_B3s_EE0E0E0E0B7v_EB2P_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1), !noalias !2869
  %i.r = load ptr, ptr %i.c, align 8, !alias.scope !2870, !noalias !2873, !noundef !9 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2868
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %.sroa.7.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx3.i.i.i.i.i, i64 40, i1 false), !noalias !2859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2868
  br label %bb.m

bb.i:                                             ; preds = %bb.g, %bb.e
  store ptr null, ptr %1, align 8, !alias.scope !2835, !noalias !2836
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !2835, !noalias !2836, !noundef !9 ; 3 uses
  %.not3.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not3.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEECshMzyYDJGtjv_3api.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2875)
  call void @llvm.experimental.noalias.scope.decl(metadata !2878)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2881
  store ptr %i.f, ptr %i.b, align 8, !noalias !2884
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !2887, !noalias !2890, !nonnull !9, !noundef !9 ; 2 uses
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %.loopexit.i.i.i.i, label %.lr.ph.i.i9.i.i.i.i

.lr.ph.i.i9.i.i.i.i:                              ; preds = %bb.j, %bb.k
  %i.x = phi ptr [ %i.y, %bb.k ], [ %i.t, %bb.j ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 208 ; 3 uses
  store ptr %i.y, ptr %i.s, align 8, !alias.scope !2887, !noalias !2890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2884
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkRNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsQNCINvNtCslmvYCXbQjWR_6common10validation13validate_iterB1P_INtNtNtB11_8adapters7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB5S_3vec3VecB1Q_EEINtNtNtBb_5slice4iter4IterB1Q_ENCNvXs8_NtB1U_8validateNtB1S_17BatchVectorStructNtNtB2B_6traits8Validate8validate0EE0E0INtB7_5FnMutTuB1P_EE8call_mutB1W_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.x), !noalias !2891
  %i.z = load ptr, ptr %i.a, align 8, !alias.scope !2892, !noalias !2895, !noundef !9 ; 2 uses
  %.not.i.i.i10.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i10.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i9.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2884
  %i.aa = icmp eq ptr %i.y, %i.v
  br i1 %i.aa, label %.loopexit.i.i.i.i, label %.lr.ph.i.i9.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i9.i.i.i.i
  %.sroa.7.0..sroa_idx5.i.i11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx5.i.i11.i.i.i.i, i64 40, i1 false), !noalias !2859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2881
  br label %bb.m

.loopexit.i.i.i.i:                                ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2881
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEECshMzyYDJGtjv_3api.exit.i

bb.m:                                             ; preds = %bb.l, %bb.h, %bb.d
  %.lcssa16.sink.i.i.ph.i = phi ptr [ %i.z, %bb.l ], [ %i.r, %bb.h ], [ %i.n, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2826
  store ptr %.lcssa16.sink.i.i.ph.i, ptr %0, align 8, !alias.scope !2812, !noalias !2897
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false), !noalias !2897
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1W_3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorEEINtNtNtBc_5slice4iter4IterB2L_ENCNvXs8_NtB2P_8validateNtB2N_17BatchVectorStructNtNtCs1cB7FFWPEsq_9validator6traits8Validate8validate0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB4P_5types16ValidationErrorsQNCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRB2L_B3_E0EB2R_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEECshMzyYDJGtjv_3api.exit.i: ; preds = %.loopexit.i.i.i.i, %bb.i
  store ptr null, ptr %i.s, align 8, !alias.scope !2835, !noalias !2836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2826
  store ptr null, ptr %0, align 8, !alias.scope !2812, !noalias !2897
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1W_3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorEEINtNtNtBc_5slice4iter4IterB2L_ENCNvXs8_NtB2P_8validateNtB2N_17BatchVectorStructNtNtCs1cB7FFWPEsq_9validator6traits8Validate8validate0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB4P_5types16ValidationErrorsQNCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRB2L_B3_E0EB2R_.exit

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1W_3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6schema6VectorEEINtNtNtBc_5slice4iter4IterB2L_ENCNvXs8_NtB2P_8validateNtB2N_17BatchVectorStructNtNtCs1cB7FFWPEsq_9validator6traits8Validate8validate0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB4P_5types16ValidationErrorsQNCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRB2L_B3_E0EB2R_.exit: ; preds = %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEECshMzyYDJGtjv_3api.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEENCNvXs_NtNtB2l_4grpc11conversionsNtNtB3m_6qdrant21ListShardKeysResponseINtNtBb_7convert4FromTNtNtCsG258MDvU3F_3std4time7InstantNtB2h_17ShardKeysResponseEE4from0ENtNtNtB9_6traits8iterator8Iterator4nextB2l_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i = alloca i64, align 8              ; 11 uses
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2901)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %.sroa.7.0..sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx12.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.622.0..sroa_idx23.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre.i.i = load ptr, ptr %i.b, align 8, !alias.scope !2904, !noalias !2907
  %i.e = icmp eq ptr %.pre.i.i, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2911)
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.peel.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2916)
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !2919, !noalias !2920, !nonnull !9, !noundef !9
  %i.g = load ptr, ptr %i.d, align 8, !alias.scope !2919, !noalias !2920, !nonnull !9, !noundef !9 ; 4 uses
  %i.h = icmp eq ptr %i.g, %i.f
  br i1 %i.h, label %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.thread.i.i.peel.i, label %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.i.i.peel.i

_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.i.i.peel.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.i, ptr %i.d, align 8, !alias.scope !2919, !noalias !2920
  %.sroa.027.0.copyload.i.peel.i = load i64, ptr %i.g, align 8, !noalias !2923 ; 2 uses
  %.not6.i.i.peel.i = icmp eq i64 %.sroa.027.0.copyload.i.peel.i, 2
  br i1 %.not6.i.i.peel.i, label %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.thread.i.i.peel.i, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEENtNtNtB9_6traits8iterator8Iterator4nextB25_.exit.thread

_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.thread.i.i.peel.i: ; preds = %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.i.i.peel.i, %bb.b
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB20_.exit.thread36.i.peel.i unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.i.loopexit.split-lp.i, !noalias !2907

_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB20_.exit.thread36.i.peel.i: ; preds = %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.thread.i.i.peel.i
  store ptr null, ptr %i.b, align 8, !alias.scope !2924, !noalias !2907
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.peel.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.peel.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB20_.exit.thread36.i.peel.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2925)
  %i.j = load i64, ptr %1, align 8, !range !56, !alias.scope !2928, !noalias !2930, !noundef !9 ; 2 uses
  %.not.i2.i.peel.i = icmp eq i64 %i.j, -2
  br i1 %.not.i2.i.peel.i, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEINtB5_8FuseImplBY_E4nextB1Z_.exit.i.peel.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.peel.i
  store i64 %i.j, ptr %.sroa.0.i.i, align 8, !alias.scope !2931, !noalias !2935
  %.sroa.7.sroa.0.0.copyload.i.peel.i = load ptr, ptr %.sroa.7.0..sroa_idx12.i.i, align 8, !alias.scope !2936, !noalias !2937
  %.sroa.7.sroa.5.0.copyload.i.peel.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx12.sroa_idx.i.i, align 8, !alias.scope !2936, !noalias !2937
  br label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEINtB5_8FuseImplBY_E4nextB1Z_.exit.i.peel.i

_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEINtB5_8FuseImplBY_E4nextB1Z_.exit.i.peel.i: ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.peel.i
  %.sroa.7.sroa.5.0.i.peel.i = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.peel.i ], [ %.sroa.7.sroa.5.0.copyload.i.peel.i, %bb.c ] ; 2 uses
  %.sroa.7.sroa.0.0.i.peel.i = phi ptr [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.peel.i ], [ %.sroa.7.sroa.0.0.copyload.i.peel.i, %bb.c ] ; 3 uses
  %.sink.i.i.peel.i = phi ptr [ %.sroa.0.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.peel.i ], [ %1, %bb.c ]
  store i64 -1, ptr %.sink.i.i.peel.i, align 8, !alias.scope !2938, !noalias !2937
  %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i.peel.i = load i64, ptr %.sroa.0.i.i, align 8, !range !60, !noalias !2935, !noundef !9 ; 2 uses
  %.not1.i.peel.i = icmp eq i64 %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i.peel.i, -1
  br i1 %.not1.i.peel.i, label %.loopexit4.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEB1R_.exit.i.peel.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEB1R_.exit.i.peel.i: ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEINtB5_8FuseImplBY_E4nextB1Z_.exit.i.peel.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.i.peel.i) ]
  %i.k = icmp ult i64 %.sroa.7.sroa.5.0.i.peel.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.sroa.0.0.i.peel.i, i64 %.sroa.7.sroa.5.0.i.peel.i
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEB1R_.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEB1R_.exit.i.peel.i
  %.sroa.7.sroa.0.0.i.peel.sink13.i = phi ptr [ %.sroa.7.sroa.0.0.i.peel.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEB1R_.exit.i.peel.i ], [ %.sroa.7.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEB1R_.exit.i.i ] ; 6 uses
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i.peel.sink.i = phi i64 [ %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i.peel.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEB1R_.exit.i.peel.i ], [ %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEB1R_.exit.i.i ]
  %.sink.i = phi ptr [ %i.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEB1R_.exit.i.peel.i ], [ %i.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEB1R_.exit.i.i ] ; 2 uses
  store ptr %.sroa.7.sroa.0.0.i.peel.sink13.i, ptr %i.b, align 8, !alias.scope !2939, !noalias !2937
  store ptr %.sroa.7.sroa.0.0.i.peel.sink13.i, ptr %i.d, align 8, !alias.scope !2939, !noalias !2937
  store i64 %.sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i.peel.sink.i, ptr %.sroa.622.0..sroa_idx23.i.i, align 8, !alias.scope !2939, !noalias !2937
  store ptr %.sink.i, ptr %i.c, align 8, !alias.scope !2939, !noalias !2937
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2943)
  %i.m = icmp eq ptr %.sroa.7.sroa.0.0.i.peel.sink13.i, %.sink.i
  br i1 %i.m, label %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.thread.i.i.i, label %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.i.i.i

_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.7.sroa.0.0.i.peel.sink13.i, i64 24
  store ptr %i.n, ptr %i.d, align 8, !alias.scope !2945, !noalias !2920
  %.sroa.027.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.0.0.i.peel.sink13.i, align 8, !noalias !2946 ; 2 uses
  %.not6.i.i.i = icmp eq i64 %.sroa.027.0.copyload.i.i, 2
  br i1 %.not6.i.i.i, label %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.thread.i.i.i, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEENtNtNtB9_6traits8iterator8Iterator4nextB25_.exit.thread

_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.thread.i.i.i: ; preds = %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.i.i.i, %bb.d
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.i unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.i.loopexit.i, !noalias !2907

common.resume.i.i:                                ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i7.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %lpad.phi.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.i.i ], [ %i.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i7.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.i.loopexit.i: ; preds = %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.thread.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.i.loopexit.split-lp.i: ; preds = %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.thread.i.i.peel.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.i.loopexit.split-lp.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.i.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.i.loopexit.i ], [ %lpad.loopexit.split-lp.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.i.loopexit.split-lp.i ]
  store ptr null, ptr %i.b, align 8, !alias.scope !2904, !noalias !2907
  br label %common.resume.i.i

_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEENtNtNtB9_6traits8iterator8Iterator4nextB25_.exit.thread: ; preds = %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.i.i.i, %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.i.i.peel.i
  %.lcssa.i = phi ptr [ %i.g, %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.i.i.peel.i ], [ %.sroa.7.sroa.0.0.i.peel.sink13.i, %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.i.i.i ]
  %.sroa.027.0.copyload.i.lcssa.i = phi i64 [ %.sroa.027.0.copyload.i.peel.i, %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.i.i.peel.i ], [ %.sroa.027.0.copyload.i.i, %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.i.i.i ]
  %.sroa.629.0..sroa_idx.le.i.i = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.629.0..sroa_idx.le.i.i, i64 16, i1 false)
  br label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.i: ; preds = %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.thread.i.i.i
  store ptr null, ptr %i.b, align 8, !alias.scope !2904, !noalias !2907
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2947)
  %i.o = load i64, ptr %1, align 8, !range !56, !alias.scope !2928, !noalias !2949, !noundef !9 ; 2 uses
  %.not.i2.i.i = icmp eq i64 %i.o, -2
  br i1 %.not.i2.i.i, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEINtB5_8FuseImplBY_E4nextB1Z_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.i
  store i64 %i.o, ptr %.sroa.0.i.i, align 8, !alias.scope !2950, !noalias !2935
  %.sroa.7.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx12.i.i, align 8, !alias.scope !2951, !noalias !2937
  %.sroa.7.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx12.sroa_idx.i.i, align 8, !alias.scope !2951, !noalias !2937
  br label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEINtB5_8FuseImplBY_E4nextB1Z_.exit.i.i

_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEINtB5_8FuseImplBY_E4nextB1Z_.exit.i.i: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.i
  %.sroa.7.sroa.5.0.i.i = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.i ], [ %.sroa.7.sroa.5.0.copyload.i.i, %bb.e ] ; 2 uses
  %.sroa.7.sroa.0.0.i.i = phi ptr [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.i ], [ %.sroa.7.sroa.0.0.copyload.i.i, %bb.e ] ; 3 uses
  %.sink.i.i.i = phi ptr [ %.sroa.0.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i.i ], [ %1, %bb.e ]
  store i64 -1, ptr %.sink.i.i.i, align 8, !alias.scope !2952, !noalias !2937
  %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.i.i, align 8, !range !60, !noalias !2935, !noundef !9 ; 2 uses
  %.not1.i.i = icmp eq i64 %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i.i, -1
  br i1 %.not1.i.i, label %.loopexit4.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEB1R_.exit.i.i

.loopexit4.i:                                     ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEINtB5_8FuseImplBY_E4nextB1Z_.exit.i.i, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEINtB5_8FuseImplBY_E4nextB1Z_.exit.i.peel.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2953)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2956, !noalias !2957, !noundef !9
  %.not.i3.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i3.i.i, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEENtNtNtB9_6traits8iterator8Iterator4nextB25_.exit.thread5, label %bb.f

bb.f:                                             ; preds = %.loopexit4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2962)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !2965, !noalias !2966, !nonnull !9, !noundef !9
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !2965, !noalias !2966, !nonnull !9, !noundef !9 ; 4 uses
  %i.v = icmp eq ptr %i.u, %i.s
  br i1 %i.v, label %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.thread.i9.i.i, label %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.i4.i.i

_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.i4.i.i: ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.w, ptr %i.t, align 8, !alias.scope !2965, !noalias !2966
  %.sroa.031.0.copyload.i.i = load i64, ptr %i.u, align 8, !noalias !2969 ; 2 uses
  %.not6.i6.i.i = icmp eq i64 %.sroa.031.0.copyload.i.i, 2
  br i1 %.not6.i6.i.i, label %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.thread.i9.i.i, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEENtNtNtB9_6traits8iterator8Iterator4nextB25_.exit

_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.thread.i9.i.i: ; preds = %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.i4.i.i, %bb.f
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEENtNtNtB9_6traits8iterator8Iterator4nextB25_.exit.thread8 unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i7.i.i, !noalias !2957

_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEENtNtNtB9_6traits8iterator8Iterator4nextB25_.exit.thread8: ; preds = %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.thread.i9.i.i
  store ptr null, ptr %i.p, align 8, !alias.scope !2956, !noalias !2957
  br label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEENtNtNtB9_6traits8iterator8Iterator4nextB25_.exit.thread5

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEB13_.exit.i7.i.i: ; preds = %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.thread.i9.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.p, align 8, !alias.scope !2956, !noalias !2957
  br label %common.resume.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEB1R_.exit.i.i: ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEEINtB5_8FuseImplBY_E4nextB1Z_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.i.i) ]
  %i.y = icmp ult i64 %.sroa.7.sroa.5.0.i.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.sroa.0.0.i.i, i64 %.sroa.7.sroa.5.0.i.i
  br label %bb.d, !llvm.loop !2970

_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEENtNtNtB9_6traits8iterator8Iterator4nextB25_.exit: ; preds = %_RNvYNvYINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.i4.i.i
  %.sroa.633.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.633.0..sroa_idx.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEENtNtNtB9_6traits8iterator8Iterator4nextB25_.exit, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEENtNtNtB9_6traits8iterator8Iterator4nextB25_.exit.thread
  %.sroa.0.14 = phi i64 [ %.sroa.027.0.copyload.i.lcssa.i, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEENtNtNtB9_6traits8iterator8Iterator4nextB25_.exit.thread ], [ %.sroa.031.0.copyload.i.i, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEENtNtNtB9_6traits8iterator8Iterator4nextB25_.exit ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  store i64 %.sroa.0.14, ptr %i.a, align 8
  call void @_RNvNtNtCshMzyYDJGtjv_3api4grpc11conversions25convert_shard_key_to_grpc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEENtNtNtB9_6traits8iterator8Iterator4nextB25_.exit.thread5: ; preds = %.loopexit4.i, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEENtNtNtB9_6traits8iterator8Iterator4nextB25_.exit.thread8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  store i64 -4, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCshMzyYDJGtjv_3api4rest6models19ShardKeyDescriptionEEENtNtNtB9_6traits8iterator8Iterator4nextB25_.exit.thread5, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtCs9XvERIT2X68_9itertools11groupbylazy6ChunksINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEEINvYINtBZ_5ChunkB1J_ENtNtNtB9_6traits8iterator8Iterator7collectINtB1O_3VecfEEEB2V_4nextCshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 152 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !2972, !noundef !9 ; 9 uses
  %i.g = add i64 %i.f, 1                          ; 2 uses
  store i64 %i.g, ptr %i.e, align 8, !noalias !2972
  %i.h = load i64, ptr %.0.val, align 8, !noalias !2972, !noundef !9
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.o, !prof !11

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %.0.val, align 8, !noalias !2972
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 120
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2975, !noalias !2972, !noundef !9
  %i.m = icmp ult i64 %i.f, %i.l
  br i1 %i.m, label %_RNvXsh_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_6ChunksINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshMzyYDJGtjv_3api.exit.thread20, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 112 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !2975, !noalias !2972, !noundef !9 ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp eq i64 %i.f, %i.o
  br i1 %i.q, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !2975, !noalias !2972, !noundef !9 ; 2 uses
  %i.t = icmp ult i64 %i.s, 288230376151711744
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 128
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !2975, !noalias !2972, !noundef !9
  %i.w = sub i64 %i.f, %i.v
  %i.x = icmp ugt i64 %i.s, %i.w
  br i1 %i.x, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.0.val, i64 144 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !range !2978, !alias.scope !2975, !noalias !2972, !noundef !9
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_RNvXsh_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_6ChunksINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshMzyYDJGtjv_3api.exit.thread20, label %bb.h

.thread.i:                                        ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 144
  %i.ac = load i8, ptr %i.ab, align 8, !range !2978, !alias.scope !2975, !noalias !2972, !noundef !9
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_RNvXsh_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_6ChunksINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshMzyYDJGtjv_3api.exit.thread20, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.ae = invoke { i32, float } @_RNvMs2_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_10GroupInnerjINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfENtB5_10ChunkIndexE14step_bufferingCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.j, i64 noundef %i.f) #26
          to label %.noexc4.i unwind label %bb.p, !noalias !2972

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2979)
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !range !2982, !alias.scope !2979, !noalias !2972, !noundef !9
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.val, i64 52 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !alias.scope !2979, !noalias !2972
  store i32 0, ptr %i.af, align 8, !alias.scope !2979, !noalias !2972
  %i.aj = trunc nuw i32 %i.ag to i1
  br i1 %i.aj, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2983)
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !2986, !noalias !2972, !nonnull !9, !noundef !9
  %i.am = getelementptr inbounds nuw i8, ptr %.0.val, i64 64 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !2986, !noalias !2972, !nonnull !9, !noundef !9 ; 3 uses
  %i.ao = icmp eq ptr %i.an, %i.al
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.y, align 8, !alias.scope !2979, !noalias !2972
  br label %_RNvXsh_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_6ChunksINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshMzyYDJGtjv_3api.exit.thread20

bb.k:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store ptr %i.ap, ptr %i.am, align 8, !alias.scope !2986, !noalias !2972
  %i.aq = load float, ptr %i.an, align 4, !noalias !2987, !noundef !9 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.val, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %.0.val, i64 96 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !2988, !noalias !2972, !noundef !9 ; 2 uses
  %i.au = load i64, ptr %i.ar, align 8, !alias.scope !2988, !noalias !2972, !noundef !9
  %i.av = icmp eq i64 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.val, i64 104 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !2988, !noalias !2972 ; 2 uses
  br i1 %i.av, label %bb.l, label %._RNvXs0_NtCs9XvERIT2X68_9itertools11groupbylazyNtB5_10ChunkIndexINtB5_11KeyFunctionRfE8call_mutCshMzyYDJGtjv_3api.exit_crit_edge.i.i

._RNvXs0_NtCs9XvERIT2X68_9itertools11groupbylazyNtB5_10ChunkIndexINtB5_11KeyFunctionRfE8call_mutCshMzyYDJGtjv_3api.exit_crit_edge.i.i: ; preds = %bb.k
  %i.ay = add i64 %i.at, 1
  br label %_RNvXs0_NtCs9XvERIT2X68_9itertools11groupbylazyNtB5_10ChunkIndexINtB5_11KeyFunctionRfE8call_mutCshMzyYDJGtjv_3api.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.az = add i64 %i.ax, 1                        ; 2 uses
  store i64 %i.az, ptr %i.aw, align 8, !alias.scope !2988, !noalias !2972
  br label %_RNvXs0_NtCs9XvERIT2X68_9itertools11groupbylazyNtB5_10ChunkIndexINtB5_11KeyFunctionRfE8call_mutCshMzyYDJGtjv_3api.exit.i.i

_RNvXs0_NtCs9XvERIT2X68_9itertools11groupbylazyNtB5_10ChunkIndexINtB5_11KeyFunctionRfE8call_mutCshMzyYDJGtjv_3api.exit.i.i: ; preds = %bb.l, %._RNvXs0_NtCs9XvERIT2X68_9itertools11groupbylazyNtB5_10ChunkIndexINtB5_11KeyFunctionRfE8call_mutCshMzyYDJGtjv_3api.exit_crit_edge.i.i
  %i.ba = phi i64 [ %i.ax, %._RNvXs0_NtCs9XvERIT2X68_9itertools11groupbylazyNtB5_10ChunkIndexINtB5_11KeyFunctionRfE8call_mutCshMzyYDJGtjv_3api.exit_crit_edge.i.i ], [ %i.az, %bb.l ] ; 2 uses
  %i.bb = phi i64 [ %i.ay, %._RNvXs0_NtCs9XvERIT2X68_9itertools11groupbylazyNtB5_10ChunkIndexINtB5_11KeyFunctionRfE8call_mutCshMzyYDJGtjv_3api.exit_crit_edge.i.i ], [ 1, %bb.l ]
  store i64 %i.bb, ptr %i.as, align 8, !alias.scope !2988, !noalias !2972
  %i.bc = load i64, ptr %i.j, align 8, !range !159, !alias.scope !2979, !noalias !2972, !noundef !9
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !2979, !noalias !2972
  %i.bf = trunc nuw i64 %i.bc to i1
  %i.bg = icmp ne i64 %i.be, %i.ba
  %or.cond.i.i = select i1 %i.bf, i1 %i.bg, i1 false
  store i64 1, ptr %i.j, align 8, !alias.scope !2979, !noalias !2972
  store i64 %i.ba, ptr %i.bd, align 8, !alias.scope !2979, !noalias !2972
  br i1 %or.cond.i.i, label %bb.m, label %.thread

bb.m:                                             ; preds = %_RNvXs0_NtCs9XvERIT2X68_9itertools11groupbylazyNtB5_10ChunkIndexINtB5_11KeyFunctionRfE8call_mutCshMzyYDJGtjv_3api.exit.i.i
  store i32 1, ptr %i.af, align 8, !alias.scope !2979, !noalias !2972
  store float %i.aq, ptr %i.ah, align 4, !alias.scope !2979, !noalias !2972
  store i64 %i.g, ptr %i.n, align 8, !alias.scope !2979, !noalias !2972
  br label %_RNvXsh_NtCs9XvERIT2X68_9itertools11groupbylazyINtB5_6ChunksINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshMzyYDJGtjv_3api.exit.thread20

end_hunk_0
begin_hunk_1_@_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshMzyYDJGtjv_3api:bb.a
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !4253
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %bb.g unwind label %bb.e, !noalias !4257

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshMzyYDJGtjv_3api.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !4253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !4258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4253
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types13GeoLineStringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !9 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4259)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4262
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 384307168202282326) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !4262
  %i.h = load i64, ptr %i.b, align 8, !range !159, !noalias !4262, !noundef !9
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !2342, !noalias !4262, !noundef !9 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i, !prof !2271

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !4262
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #27, !noalias !4262
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !4262, !nonnull !9, !noundef !9 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4262
  store i64 %i.k, ptr %i.c, align 8, !noalias !4262
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !4262
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment5types13GeoLineStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshMzyYDJGtjv_3api.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs9G_NtCs607s0NAIaWN_7segment5typesNtB6_13GeoLineStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.015.041.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.x, %_RNvXs9G_NtCs607s0NAIaWN_7segment5typesNtB6_13GeoLineStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ] ; 4 uses
  %.sroa.7.040.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %_RNvXs9G_NtCs607s0NAIaWN_7segment5typesNtB6_13GeoLineStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ] ; 3 uses
  %.sroa.10.039.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.v, %_RNvXs9G_NtCs607s0NAIaWN_7segment5typesNtB6_13GeoLineStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %i.v = add i64 %.sroa.10.039.i, -1              ; 2 uses
  %i.w = icmp eq ptr %.sroa.015.041.i, %i.r
  br i1 %i.w, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment5types13GeoLineStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshMzyYDJGtjv_3api.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.015.041.i, i64 24
  %i.y = add nuw nsw i64 %.sroa.7.040.i, 1
  %i.z = getelementptr i8, ptr %.sroa.015.041.i, i64 8
  %.val12.i = load ptr, ptr %i.z, align 8, !alias.scope !4264, !noalias !4267, !nonnull !9, !noundef !9
  %i.aa = getelementptr i8, ptr %.sroa.015.041.i, i64 16
  %.val13.i = load i64, ptr %i.aa, align 8, !alias.scope !4264, !noalias !4267, !noundef !9 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4269
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %.val13.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !4262

.noexc.i:                                         ; preds = %bb.d
  %i.ab = load i64, ptr %i.a, align 8, !range !159, !noalias !4269, !noundef !9
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = load i64, ptr %i.t, align 8, !range !2342, !noalias !4269, !noundef !9 ; 3 uses
  br i1 %i.ac, label %bb.e, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i.i.i.i, !prof !2271

bb.e:                                             ; preds = %.noexc.i
  %i.ae = load i64, ptr %i.u, align 8, !noalias !4269
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ad, i64 %i.ae) #27
          to label %.noexc14.i unwind label %.loopexit.split-lp.i, !noalias !4262

.noexc14.i:                                       ; preds = %bb.e
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i.i.i.i: ; preds = %.noexc.i
  %i.af = load ptr, ptr %i.u, align 8, !noalias !4269, !nonnull !9, !noundef !9 ; 2 uses
  %i.ag = icmp ule i64 %.val13.i, %i.ad
  tail call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4269
  %.not.i.i.i.i = icmp eq i64 %.val13.i, 0
  br i1 %.not.i.i.i.i, label %_RNvXs9G_NtCs607s0NAIaWN_7segment5typesNtB6_13GeoLineStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i.i.i.i
  %i.ah = shl nuw nsw i64 %.val13.i, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull readonly align 8 %.val12.i, i64 %i.ah, i1 false), !noalias !4278
  br label %_RNvXs9G_NtCs607s0NAIaWN_7segment5typesNtB6_13GeoLineStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXs9G_NtCs607s0NAIaWN_7segment5typesNtB6_13GeoLineStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.f, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i.i.i.i
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.7.040.i ; 3 uses
  store i64 %i.ad, ptr %i.ai, align 8, !noalias !4262
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.af, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !4262
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.val13.i, ptr %.sroa.527.0..sroa_idx.i, align 8, !noalias !4262
  %i.aj = icmp eq i64 %i.v, 0
  br i1 %i.aj, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment5types13GeoLineStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshMzyYDJGtjv_3api.exit, label %bb.c

bb.g:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !4262
  unreachable

.loopexit.i:                                      ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  store i64 %.sroa.7.040.i, ptr %i.q, align 8, !noalias !4262
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types13GeoLineStringEECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %bb.i unwind label %bb.g, !noalias !4262

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %lpad.phi.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment5types13GeoLineStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshMzyYDJGtjv_3api.exit: ; preds = %bb.c, %_RNvXs9G_NtCs607s0NAIaWN_7segment5typesNtB6_13GeoLineStringNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !4262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !4259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4262
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !noundef !9
  %i.e = load i64, ptr %i.b, align 8, !noundef !9 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4279)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4282
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !4282
  %i.f = load i64, ptr %i.a, align 8, !range !159, !noalias !4282, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !2342, !noalias !4282, !noundef !9 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i, !prof !2271

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !4282
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27, !noalias !4282
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !4282, !nonnull !9, !noundef !9 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4282
  store i64 %i.i, ptr %0, align 8, !alias.scope !4279, !noalias !4284
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !4279, !noalias !4284
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !4279, !noalias !4284
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment5types8GeoPointNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECshMzyYDJGtjv_3api.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i
  %i.p = shl nuw nsw i64 %i.e, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull readonly align 8 %i.d, i64 %i.p, i1 false), !noalias !4279
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !4279, !noalias !4284
  br label %_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment5types8GeoPointNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECshMzyYDJGtjv_3api.exit

_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment5types8GeoPointNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECshMzyYDJGtjv_3api.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [104 x i8], align 8               ; 8 uses
  %i.d = alloca [48 x i8], align 16               ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 16               ; 5 uses
  %i.g = alloca [24 x i8], align 16               ; 6 uses
  %i.h = alloca [24 x i8], align 16               ; 5 uses
  %i.i = alloca [24 x i8], align 16               ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i35.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.53.i.i.i = alloca [56 x i8], align 8     ; 5 uses
  %.sroa.5.i.i.i = alloca [56 x i8], align 8      ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.513.i.i = alloca [56 x i8], align 8      ; 4 uses
  %.sroa.59.sroa.0.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.56.i.i.sroa.4 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.5.i.i = alloca [56 x i8], align 8        ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 6 uses
  %i.r = alloca [48 x i8], align 8                ; 6 uses
  %i.s = alloca [64 x i8], align 16               ; 8 uses
  %i.t = alloca [24 x i8], align 16               ; 5 uses
  %i.u = alloca [104 x i8], align 16              ; 10 uses
  %.sroa.22.sroa.11.sroa.9 = alloca [16 x i8], align 8 ; 5 uses
  %.sroa.22.sroa.13 = alloca [56 x i8], align 8   ; 4 uses
  %.sroa.22.sroa.15 = alloca [56 x i8], align 8   ; 3 uses
  %.sroa.22.sroa.16 = alloca [72 x i8], align 8   ; 2 uses
  %.sroa.22.sroa.17 = alloca [48 x i8], align 8   ; 2 uses
  %.sroa.22.sroa.19 = alloca [16 x i8], align 8   ; 2 uses
  %.sroa.22.sroa.21 = alloca [16 x i8], align 8   ; 2 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.z = load i64, ptr %i.w, align 8, !noundef !9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4285
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 0, 24530244778869085) %i.z, i1 noundef zeroext false, i64 noundef 8, i64 noundef 376), !noalias !4285
  %i.aa = load i64, ptr %i.e, align 8, !range !159, !noalias !4285, !noundef !9
  %i.ab = trunc nuw i64 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !2342, !noalias !4285, !noundef !9 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.ab, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit, !prof !2271

bb.b:                                             ; preds = %bb.a
  %i.af = load i64, ptr %i.ae, align 8, !noalias !4285
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ad, i64 %i.af) #27, !noalias !4285
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit: ; preds = %bb.a
  %i.ag = load ptr, ptr %i.ae, align 8, !noalias !4285, !nonnull !9, !noundef !9 ; 2 uses
  %i.ah = icmp ule i64 %i.z, %i.ad
  tail call void @llvm.assume(i1 %i.ah), !noalias !4285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4285
  store i64 %i.ad, ptr %i.v, align 8, !noalias !4285
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.ag, ptr %i.ai, align 8, !noalias !4285
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store i64 0, ptr %i.aj, align 8, !noalias !4285
  %i.ak = getelementptr inbounds nuw [376 x i8], ptr %i.y, i64 %i.z
  %i.al = icmp eq i64 %i.ad, 0
  br i1 %i.al, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment5types9ConditionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshMzyYDJGtjv_3api.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit
  %.sroa.22.8..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.22.sroa.0.sroa.10.0..sroa.22.8..sroa_idx35.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.22.sroa.11.0..sroa.22.8..sroa_idx35.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.22.sroa.11.sroa.9.0..sroa.22.sroa.11.0..sroa.22.8..sroa_idx35.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.22.sroa.12.0..sroa.22.8..sroa_idx35.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %.sroa.22.sroa.13.0..sroa.22.8..sroa_idx35.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %.sroa.5138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.8141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.11143.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.12144.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.13145.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.14146.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.583.sroa.4.0..sroa.583.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.886.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.9123.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.9135.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.517.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i36.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RNvXsdf_NtCs607s0NAIaWN_7segment5typesNtB6_9ConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  %.sroa.012.0188 = phi ptr [ %i.y, %.lr.ph ], [ %i.at, %_RNvXsdf_NtCs607s0NAIaWN_7segment5typesNtB6_9ConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit ] ; 40 uses
  %.sroa.7.0185 = phi i64 [ 0, %.lr.ph ], [ %i.au, %_RNvXsdf_NtCs607s0NAIaWN_7segment5typesNtB6_9ConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.10.0184 = phi i64 [ %i.ad, %.lr.ph ], [ %i.ar, %_RNvXsdf_NtCs607s0NAIaWN_7segment5typesNtB6_9ConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit ]
  %i.ar = add i64 %.sroa.10.0184, -1              ; 2 uses
  %i.as = icmp eq ptr %.sroa.012.0188, %i.ak
  br i1 %i.as, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment5types9ConditionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshMzyYDJGtjv_3api.exit, label %bb.d

.loopexit:                                        ; preds = %bb.e, %bb.ap, %bb.as, %bb.av, %bb.aw, %bb.bd, %bb.ay
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 376
  %i.au = add nuw nsw i64 %.sroa.7.0185, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4289)
  %i.av = load i64, ptr %.sroa.012.0188, align 8, !range !1038, !alias.scope !4289, !noalias !4292, !noundef !9
  %i.aw = tail call i64 @llvm.usub.sat.i64(i64 %i.av, i64 1)
  switch i64 %i.aw, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.ap
    i64 2, label %bb.as
    i64 3, label %bb.av
    i64 4, label %bb.aw
    i64 5, label %bb.ax
    i64 6, label %bb.ay
    i64 7, label %bb.bd
    i64 8, label %bb.be
  ]

default.unreachable:                              ; preds = %bb.h, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4294), !noalias !4297
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i35.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4298
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4300
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax)
          to label %.noexc unwind label %.loopexit, !inline_history !4304

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4300
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 296
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i unwind label %bb.f, !noalias !4305, !inline_history !4304

bb.f:                                             ; preds = %.noexc
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.bi unwind label %bb.g, !noalias !4305, !inline_history !4304

bb.g:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !4305, !inline_history !4304
  unreachable

_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !4306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !4306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4298
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 200
  %i.bc = load i64, ptr %i.bb, align 8, !range !137, !alias.scope !4307, !noalias !4308, !noundef !9 ; 3 uses
  %.not.i.i = icmp eq i64 %i.bc, -1
  br i1 %.not.i.i, label %bb.u, label %bb.h

bb.h:                                             ; preds = %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4309), !noalias !4297
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4312), !noalias !4297
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.i.i.i), !noalias !4298
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i), !noalias !4298
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 208 ; 5 uses
  switch i64 %i.bc, label %default.unreachable [
    i64 0, label %bb.j
    i64 1, label %.invoke
    i64 2, label %.invoke
    i64 3, label %.invoke
    i64 4, label %.invoke
    i64 5, label %bb.k
    i64 6, label %bb.l
  ]

bb.i:                                             ; preds = %bb.j
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.be = load i64, ptr %i.bd, align 8, !range !138, !alias.scope !4314, !noalias !4315, !noundef !9 ; 2 uses
  %i.bf = icmp slt i64 %i.be, 0
  %i.bg = add i64 %i.be, -9223372036854775807
  %i.bh = select i1 %i.bf, i64 %i.bg, i64 0
  switch i64 %i.bh, label %bb.i [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
  ]

.invoke:                                          ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
          to label %.noexc.i.i unwind label %bb.x, !noalias !4308, !inline_history !4304

bb.k:                                             ; preds = %bb.h
  %i.bi = load i64, ptr %i.bd, align 8, !range !159, !alias.scope !4314, !noalias !4315, !noundef !9
  %i.bj = trunc nuw i64 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 216 ; 2 uses
  br i1 %i.bj, label %bb.q, label %bb.r

bb.l:                                             ; preds = %bb.h
  %i.bl = load i64, ptr %i.bd, align 8, !range !159, !alias.scope !4314, !noalias !4315, !noundef !9
  %i.bm = trunc nuw i64 %i.bl to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 216 ; 2 uses
  br i1 %i.bm, label %bb.s, label %bb.t

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4316
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
          to label %.noexc30.i.i unwind label %bb.x, !noalias !4308, !inline_history !4304

.noexc30.i.i:                                     ; preds = %bb.m
  %.sroa.06.0.copyload.i.i.i = load i64, ptr %i.m, align 8, !noalias !4316
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !4316 ; 2 uses
  %.sroa.6.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.6.0.copyload.i.i.i to i8
  %.sroa.6.sroa.6.0.extract.shift.i.i.i = and i64 %.sroa.6.0.copyload.i.i.i, -256
  %.sroa.8.0.copyload.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !4316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4316
  br label %bb.p

bb.n:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 216
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !4314, !noalias !4315, !noundef !9 ; 2 uses
  %.sroa.6.sroa.0.0.extract.trunc12.i.i.i = trunc i64 %i.bp to i8
  %.sroa.6.sroa.6.0.extract.shift13.i.i.i = and i64 %i.bp, -256
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 216
  %i.br = load i8, ptr %i.bq, align 8, !range !2978, !alias.scope !4314, !noalias !4315, !noundef !9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.noexc30.i.i
  %.sroa.6.sroa.6.sroa.0.0.i.i.i = phi i64 [ %.sroa.6.sroa.6.0.extract.shift.i.i.i, %.noexc30.i.i ], [ %.sroa.6.sroa.6.0.extract.shift13.i.i.i, %bb.n ], [ 0, %bb.o ]
  %.sroa.6.sroa.0.0.i.i.i = phi i8 [ %.sroa.6.sroa.0.0.extract.trunc.i.i.i, %.noexc30.i.i ], [ %.sroa.6.sroa.0.0.extract.trunc12.i.i.i, %bb.n ], [ %i.br, %bb.o ]
  %.sroa.8.0.i.i.i = phi i64 [ %.sroa.8.0.copyload.i.i.i, %.noexc30.i.i ], [ undef, %bb.n ], [ undef, %bb.o ]
  %.sroa.06.0.i.i.i = phi i64 [ %.sroa.06.0.copyload.i.i.i, %.noexc30.i.i ], [ -9223372036854775808, %bb.n ], [ -9223372036854775807, %bb.o ]
  %.sroa.6.sroa.0.0.insert.ext.i.i.i = zext i8 %.sroa.6.sroa.0.0.i.i.i to i64
  %.sroa.6.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.6.sroa.6.sroa.0.0.i.i.i, %.sroa.6.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.06.0.i.i.i, ptr %i.ao, align 8, !alias.scope !4309, !noalias !4317
  store i64 %.sroa.6.sroa.0.0.insert.insert.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !4309, !noalias !4317
  store i64 %.sroa.8.0.i.i.i, ptr %.sroa.517.0..sroa_idx.i.i.i, align 8, !alias.scope !4309, !noalias !4317
  br label %.noexc.i.i

bb.q:                                             ; preds = %bb.k
  invoke void @_RNvXNtCshqfBqtY9aGF_8indexmap3mapINtB2_8IndexMapxuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsbojlWnkViqs_3fnv9FnvHasherEENtNtBR_5clone5Clone5cloneCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %.sroa.53.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bk)
          to label %.noexc31.i.i unwind label %bb.x, !noalias !4308, !inline_history !4304

bb.r:                                             ; preds = %bb.k
  invoke void @_RNvXNtCshqfBqtY9aGF_8indexmap3mapINtB2_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsbojlWnkViqs_3fnv9FnvHasherEENtNtB1s_5clone5Clone5cloneCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %.sroa.53.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bk)
          to label %.noexc31.i.i unwind label %bb.x, !noalias !4308, !inline_history !4304

.noexc31.i.i:                                     ; preds = %bb.r, %bb.q
  %.sroa.02.0.i.i.i = phi i64 [ 1, %bb.q ], [ 0, %bb.r ]
  store i64 %.sroa.02.0.i.i.i, ptr %i.ao, align 8, !alias.scope !4309, !noalias !4317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.53.i.i.i, i64 56, i1 false), !noalias !4317
  br label %.noexc.i.i

bb.s:                                             ; preds = %bb.l
  invoke void @_RNvXNtCshqfBqtY9aGF_8indexmap3mapINtB2_8IndexMapxuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsbojlWnkViqs_3fnv9FnvHasherEENtNtBR_5clone5Clone5cloneCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %.sroa.5.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bn)
          to label %.noexc33.i.i unwind label %bb.x, !noalias !4308, !inline_history !4304

bb.t:                                             ; preds = %bb.l
  invoke void @_RNvXNtCshqfBqtY9aGF_8indexmap3mapINtB2_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsbojlWnkViqs_3fnv9FnvHasherEENtNtB1s_5clone5Clone5cloneCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %.sroa.5.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bn)
          to label %.noexc33.i.i unwind label %bb.x, !noalias !4308, !inline_history !4304

.noexc33.i.i:                                     ; preds = %bb.t, %bb.s
  %.sroa.0.0.i.i.i = phi i64 [ 1, %bb.s ], [ 0, %bb.t ]
  store i64 %.sroa.0.0.i.i.i, ptr %i.ao, align 8, !alias.scope !4309, !noalias !4317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.i.i.i, i64 56, i1 false), !noalias !4317
  br label %.noexc.i.i

bb.u:                                             ; preds = %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  store i64 -1, ptr %i.q, align 8, !noalias !4298
  br label %bb.v

bb.v:                                             ; preds = %.noexc.i.i, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 136
  %i.bt = load i64, ptr %i.bs, align 8, !range !158, !alias.scope !4307, !noalias !4308, !noundef !9 ; 2 uses
  %.not21.i.i = icmp eq i64 %i.bt, -1
  br i1 %.not21.i.i, label %bb.z, label %bb.y

bb.w:                                             ; preds = %.body.i.i, %bb.x
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.bu, %bb.x ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(48) %i.r) #22
          to label %bb.bi unwind label %bb.ao, !noalias !4308, !inline_history !4304

bb.x:                                             ; preds = %.invoke, %bb.t, %bb.s, %bb.r, %bb.q, %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.noexc.i.i:                                       ; preds = %.invoke, %.noexc33.i.i, %.noexc31.i.i, %bb.p
  store i64 %i.bc, ptr %i.p, align 8, !alias.scope !4309, !noalias !4317
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53.i.i.i), !noalias !4298
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i), !noalias !4298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !noalias !4298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4298
  br label %bb.v

bb.y:                                             ; preds = %bb.v
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.4.0..sroa_idx.i.i, i64 56, i1 false), !noalias !4308
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %i.bv = load i64, ptr %.sroa.012.0188, align 8, !range !159, !alias.scope !4307, !noalias !4308, !noundef !9
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 8
  %i.by = load <2 x ptr>, ptr %i.bx, align 8, !noalias !4308
  %.sroa.54.i.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 24
  %.sroa.54.i.i.sroa.5.0.copyload = load i64, ptr %.sroa.54.i.i.sroa.5.0..sroa_idx, align 8, !noalias !4308
  %.sroa.54.i.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 32
  %.sroa.54.i.i.sroa.6.0.copyload = load i64, ptr %.sroa.54.i.i.sroa.6.0..sroa_idx, align 8, !noalias !4308
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.54.i.i.sroa.5.0 = phi i64 [ %.sroa.54.i.i.sroa.5.0.copyload, %bb.aa ], [ undef, %bb.z ]
  %.sroa.54.i.i.sroa.6.0 = phi i64 [ %.sroa.54.i.i.sroa.6.0.copyload, %bb.aa ], [ undef, %bb.z ]
  %.sroa.03.0.i.i = phi i64 [ 1, %bb.aa ], [ 0, %bb.z ]
  %i.bz = phi <2 x ptr> [ %i.by, %bb.aa ], [ undef, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56.i.i.sroa.4)
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 40
  %i.cb = load i64, ptr %i.ca, align 8, !range !159, !alias.scope !4307, !noalias !4308, !noundef !9
  %i.cc = trunc nuw i64 %i.cb to i1
  br i1 %i.cc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 48
  %.sroa.56.i.i.sroa.0.0.copyload = load i64, ptr %i.cd, align 8, !noalias !4308
  %.sroa.56.i.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.i.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.i.i.sroa.4.0..sroa_idx, i64 16, i1 false), !noalias !4308
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.56.i.i.sroa.0.0 = phi i64 [ %.sroa.56.i.i.sroa.0.0.copyload, %bb.ac ], [ undef, %bb.ab ]
  %.sroa.05.0.i.i = phi i64 [ 1, %bb.ac ], [ 0, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.59.sroa.0.i.i)
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 320
  %i.cf = load i64, ptr %i.ce, align 8, !range !60, !alias.scope !4307, !noalias !4308, !noundef !9
  %.not22.i.i = icmp eq i64 %i.cf, -1
  br i1 %.not22.i.i, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4318), !noalias !4297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4321
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4323), !noalias !4297
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 336
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 328
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !4326, !noalias !4327, !nonnull !9, !noundef !9
  %i.cj = load i64, ptr %i.cg, align 8, !alias.scope !4326, !noalias !4327, !noundef !9 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4329
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef range(i64 0, 576460752303423488) %i.cj, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc38.i.i unwind label %.loopexit156, !noalias !4308, !inline_history !4304

.noexc38.i.i:                                     ; preds = %bb.ae
  %i.ck = load i64, ptr %i.j, align 8, !range !159, !noalias !4329, !noundef !9
  %i.cl = trunc nuw i64 %i.ck to i1
  %i.cm = load i64, ptr %i.ap, align 8, !range !2342, !noalias !4329, !noundef !9 ; 4 uses
  br i1 %i.cl, label %bb.af, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i.i.i.i.i, !prof !2271

bb.af:                                            ; preds = %.noexc38.i.i
  %i.cn = load i64, ptr %i.aq, align 8, !noalias !4329
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cm, i64 %i.cn) #27
          to label %.noexc39.i.i unwind label %.loopexit.split-lp157, !noalias !4308, !inline_history !4304

.noexc39.i.i:                                     ; preds = %bb.af
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i.i.i.i.i: ; preds = %.noexc38.i.i
  %i.co = load ptr, ptr %i.aq, align 8, !noalias !4329, !nonnull !9, !noundef !9 ; 2 uses
  %i.cp = icmp ule i64 %i.cj, %i.cm
  tail call void @llvm.assume(i1 %i.cp), !noalias !4297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4329
  %.not.i.i.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i.i.i.i, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshMzyYDJGtjv_3api.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i.i.i.i.i
  %i.cq = shl nuw nsw i64 %i.cj, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.co, ptr nonnull readonly align 8 %i.ci, i64 %i.cq, i1 false), !noalias !4333
  br label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshMzyYDJGtjv_3api.exit.i.i.i

_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshMzyYDJGtjv_3api.exit.i.i.i: ; preds = %bb.ag, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i.i.i.i.i
  store i64 %i.cm, ptr %i.l, align 8, !noalias !4321
  store ptr %i.co, ptr %.sroa.4.0..sroa_idx.i36.i.i, align 8, !noalias !4321
  store i64 %i.cj, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !noalias !4321
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 344 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !range !60, !alias.scope !4334, !noalias !4335, !noundef !9
  %.not.i.i.i = icmp eq i64 %i.cs, -1
  br i1 %.not.i.i.i, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshMzyYDJGtjv_3api.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4321
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types13GeoLineStringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr)
          to label %bb.aj unwind label %bb.ai, !noalias !4335, !inline_history !4304

bb.ai:                                            ; preds = %bb.ah
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types8GeoPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.i.i unwind label %bb.ak, !noalias !4336, !inline_history !4304

bb.aj:                                            ; preds = %bb.ah
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.k, align 8, !noalias !4321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i35.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i, i64 16, i1 false), !noalias !4298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4321
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !4336, !inline_history !4304
  unreachable

bb.al:                                            ; preds = %bb.am, %bb.ad
  %.sroa.59.sroa.4.0.i.i = phi i64 [ undef, %bb.ad ], [ %.sroa.0.0.i37.i.i, %bb.am ]
  %.sroa.07.0.i.i = phi i64 [ -1, %bb.ad ], [ %i.cm, %bb.am ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.513.i.i)
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 72
  %i.cw = load i64, ptr %i.cv, align 8, !range !20, !alias.scope !4307, !noalias !4308, !noundef !9 ; 2 uses
  %.not24.i.i = icmp eq i64 %i.cw, 2
  br i1 %.not24.i.i, label %_RNvXsc9_NtCs607s0NAIaWN_7segment5typesNtB6_14FieldConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, label %bb.an

.loopexit156:                                     ; preds = %bb.ae
  %lpad.loopexit158 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp157:                            ; preds = %bb.af
  %lpad.loopexit.split-lp159 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit156, %.loopexit.split-lp157, %bb.ai
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ct, %bb.ai ], [ %lpad.loopexit158, %.loopexit156 ], [ %lpad.loopexit.split-lp159, %.loopexit.split-lp157 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types5MatchEECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(72) %i.q) #22
          to label %bb.w unwind label %bb.ao, !noalias !4308, !inline_history !4304

bb.am:                                            ; preds = %bb.aj, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshMzyYDJGtjv_3api.exit.i.i.i
  %.sroa.0.0.i37.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %bb.aj ], [ -1, %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshMzyYDJGtjv_3api.exit.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i36.i.i, i64 16, i1 false), !noalias !4298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4321
  br label %bb.al

bb.an:                                            ; preds = %bb.al
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.513.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.419.0..sroa_idx.i.i, i64 56, i1 false), !noalias !4308
  br label %_RNvXsc9_NtCs607s0NAIaWN_7segment5typesNtB6_14FieldConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.ao:                                            ; preds = %.body.i.i, %bb.w
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !4308, !inline_history !4304
  unreachable

_RNvXsc9_NtCs607s0NAIaWN_7segment5typesNtB6_14FieldConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.an, %bb.al
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 368
  %i.cz = load i8, ptr %i.cy, align 8, !range !2712, !alias.scope !4307, !noalias !4308, !noundef !9
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 369
  %i.db = load i8, ptr %i.da, align 1, !range !2712, !alias.scope !4307, !noalias !4308, !noundef !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.22.sroa.17, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.22.sroa.16, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.22.sroa.15, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.i.i, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.11.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.i.i.sroa.4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.19, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.sroa.0.i.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.21, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i35.i.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.22.sroa.13, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.513.i.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.513.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.59.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56.i.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4298
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i35.i.i)
  %i.dc = insertelement <2 x i64> poison, i64 %.sroa.54.i.i.sroa.6.0, i64 0
  %i.dd = insertelement <2 x i64> %i.dc, i64 %.sroa.05.0.i.i, i64 1
  br label %_RNvXsdf_NtCs607s0NAIaWN_7segment5typesNtB6_9ConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ap:                                            ; preds = %bb.d
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4337
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.de)
          to label %.noexc1 unwind label %.loopexit, !inline_history !4304

.noexc1:                                          ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4337
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 32
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.df)
          to label %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i unwind label %bb.aq, !noalias !4341, !inline_history !4304

bb.aq:                                            ; preds = %.noexc1
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.bi unwind label %bb.ar, !noalias !4341, !inline_history !4304

bb.ar:                                            ; preds = %bb.aq
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !4341, !inline_history !4304
  unreachable

_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %.noexc1
  %i.di = load <2 x ptr>, ptr %i.i, align 16, !noalias !4342
  %.sroa.5132.0.copyload = load i64, ptr %.sroa.5132.0..sroa_idx, align 16, !noalias !4342
  %i.dj = load <2 x i64>, ptr %i.h, align 16, !noalias !4342
  %.sroa.9135.24.copyload = load i64, ptr %.sroa.9135.24..sroa_idx, align 16, !noalias !4342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4337
  br label %_RNvXsdf_NtCs607s0NAIaWN_7segment5typesNtB6_9ConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.as:                                            ; preds = %bb.d
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4343
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dk)
          to label %.noexc2 unwind label %.loopexit, !inline_history !4304

.noexc2:                                          ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4343
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 32
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dl)
          to label %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit2.i unwind label %bb.at, !noalias !4347, !inline_history !4304

bb.at:                                            ; preds = %.noexc2
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.bi unwind label %bb.au, !noalias !4347, !inline_history !4304

bb.au:                                            ; preds = %bb.at
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !4347, !inline_history !4304
  unreachable

_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit2.i: ; preds = %.noexc2
  %i.do = load <2 x ptr>, ptr %i.g, align 16, !noalias !4348
  %.sroa.5120.0.copyload = load i64, ptr %.sroa.5120.0..sroa_idx, align 16, !noalias !4348
  %i.dp = load <2 x i64>, ptr %i.f, align 16, !noalias !4348
  %.sroa.9123.24.copyload = load i64, ptr %.sroa.9123.24..sroa_idx, align 16, !noalias !4348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4343
  br label %_RNvXsdf_NtCs607s0NAIaWN_7segment5typesNtB6_9ConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.av:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4349
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 8
  invoke void @_RNvXs1_NtNtCs607s0NAIaWN_7segment5utils9maybe_arcINtB5_8MaybeArcINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetNtNtB9_5types15ExtendedPointIdEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dq)
          to label %.noexc3 unwind label %.loopexit, !inline_history !4304

.noexc3:                                          ; preds = %bb.av
  %i.dr = load <2 x ptr>, ptr %i.s, align 16, !noalias !4349
  %.sroa.583.sroa.0.0.copyload = load i64, ptr %.sroa.583.0..sroa_idx, align 16, !noalias !4349
  %i.ds = load <2 x i64>, ptr %.sroa.583.sroa.4.0..sroa.583.0..sroa_idx.sroa_idx, align 8, !noalias !4349
  %.sroa.785.0.copyload = load i64, ptr %.sroa.785.0..sroa_idx, align 8, !noalias !4349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.11.sroa.9, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.886.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4349
  br label %_RNvXsdf_NtCs607s0NAIaWN_7segment5typesNtB6_9ConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.aw:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4349
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 8
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt)
          to label %.noexc4 unwind label %.loopexit, !inline_history !4304

.noexc4:                                          ; preds = %bb.aw
  %i.du = load <2 x ptr>, ptr %i.t, align 16, !noalias !4349
  %.sroa.589.0.copyload = load i64, ptr %.sroa.589.0..sroa_idx, align 16, !noalias !4349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4349
  br label %_RNvXsdf_NtCs607s0NAIaWN_7segment5typesNtB6_9ConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ax:                                            ; preds = %bb.d
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !4289, !noalias !4292
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = insertelement <2 x ptr> <ptr poison, ptr undef>, ptr %i.dx, i64 0
  br label %_RNvXsdf_NtCs607s0NAIaWN_7segment5typesNtB6_9ConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ay:                                            ; preds = %bb.d
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4354
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.dz)
          to label %.noexc9 unwind label %.loopexit, !inline_history !4358

.noexc9:                                          ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4354
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 32
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ea)
          to label %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i8 unwind label %bb.az, !noalias !4359, !inline_history !4358

bb.az:                                            ; preds = %.noexc9
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.bi unwind label %bb.ba, !noalias !4359, !inline_history !4358

bb.ba:                                            ; preds = %bb.az
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !4359, !inline_history !4358
  unreachable

_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i8: ; preds = %.noexc9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !4360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !4360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4350
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 56
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ed)
          to label %.noexc5 unwind label %bb.bb, !noalias !4361, !inline_history !4358

bb.bb:                                            ; preds = %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i8
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d) #22
          to label %bb.bi unwind label %bb.bc, !noalias !4361, !inline_history !4358

bb.bc:                                            ; preds = %bb.bb
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !4361, !inline_history !4358
  unreachable

.noexc5:                                          ; preds = %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i8
  %i.eg = load <2 x ptr>, ptr %i.d, align 16, !noalias !4362
  %.sroa.5138.0.copyload = load i64, ptr %.sroa.5138.0..sroa_idx, align 16, !noalias !4362
  %i.eh = load <2 x i64>, ptr %i.am, align 8, !noalias !4362
  %.sroa.8141.0.copyload = load i64, ptr %.sroa.8141.0..sroa_idx, align 8, !noalias !4362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.11.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %.sroa.11143.48.copyload = load i64, ptr %.sroa.11143.48..sroa_idx, align 8, !noalias !4362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.22.sroa.13, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12144.48..sroa_idx, i64 56, i1 false)
  %.sroa.13145.48.copyload = load i64, ptr %.sroa.13145.48..sroa_idx, align 8, !noalias !4362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14146.48..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4350
  br label %_RNvXsdf_NtCs607s0NAIaWN_7segment5typesNtB6_9ConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.bd:                                            ; preds = %bb.d
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4349
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ei) #28
          to label %.noexc6 unwind label %.loopexit, !inline_history !4304

.noexc6:                                          ; preds = %bb.bd
  %i.ej = load <2 x ptr>, ptr %i.u, align 16, !noalias !4363
  %.sroa.22.sroa.0.sroa.0.0.copyload90 = load i64, ptr %.sroa.22.8..sroa_idx35, align 16, !noalias !4363
  %i.ek = load <2 x i64>, ptr %.sroa.22.sroa.0.sroa.10.0..sroa.22.8..sroa_idx35.sroa_idx, align 8, !noalias !4363
  %.sroa.22.sroa.11.sroa.0.0.copyload71 = load i64, ptr %.sroa.22.sroa.11.0..sroa.22.8..sroa_idx35.sroa_idx, align 8, !noalias !4363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.11.sroa.9, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.22.sroa.11.sroa.9.0..sroa.22.sroa.11.0..sroa.22.8..sroa_idx35.sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.22.sroa.12.0.copyload65 = load i64, ptr %.sroa.22.sroa.12.0..sroa.22.8..sroa_idx35.sroa_idx, align 16, !noalias !4363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.22.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.22.sroa.13.0..sroa.22.8..sroa_idx35.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !4349
  br label %_RNvXsdf_NtCs607s0NAIaWN_7segment5typesNtB6_9ConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.be:                                            ; preds = %bb.d
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.012.0188, i64 8 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !4289, !noalias !4292, !nonnull !9, !noundef !9
  %i.en = atomicrmw add ptr %i.em, i64 1 monotonic, align 8, !noalias !4292
  %i.eo = icmp slt i64 %i.en, 0
  br i1 %i.eo, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ep = load <2 x ptr>, ptr %i.el, align 8, !alias.scope !4289, !noalias !4292
  br label %_RNvXsdf_NtCs607s0NAIaWN_7segment5typesNtB6_9ConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.bg:                                            ; preds = %bb.be
  tail call void @llvm.trap(), !noalias !4297
  unreachable

_RNvXsdf_NtCs607s0NAIaWN_7segment5typesNtB6_9ConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.bf, %.noexc6, %.noexc5, %bb.ax, %.noexc4, %.noexc3, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit2.i, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %_RNvXsc9_NtCs607s0NAIaWN_7segment5typesNtB6_14FieldConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %.sroa.22.sroa.0.sroa.0.0 = phi i64 [ %.sroa.54.i.i.sroa.5.0, %_RNvXsc9_NtCs607s0NAIaWN_7segment5typesNtB6_14FieldConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.5132.0.copyload, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.5120.0.copyload, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit2.i ], [ %.sroa.583.sroa.0.0.copyload, %.noexc3 ], [ %.sroa.589.0.copyload, %.noexc4 ], [ undef, %bb.ax ], [ %.sroa.5138.0.copyload, %.noexc5 ], [ %.sroa.22.sroa.0.sroa.0.0.copyload90, %.noexc6 ], [ undef, %bb.bf ]
  %.sroa.22.sroa.11.sroa.0.0 = phi i64 [ %.sroa.56.i.i.sroa.0.0, %_RNvXsc9_NtCs607s0NAIaWN_7segment5typesNtB6_14FieldConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.9135.24.copyload, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.9123.24.copyload, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit2.i ], [ %.sroa.785.0.copyload, %.noexc3 ], [ undef, %.noexc4 ], [ undef, %bb.ax ], [ %.sroa.8141.0.copyload, %.noexc5 ], [ %.sroa.22.sroa.11.sroa.0.0.copyload71, %.noexc6 ], [ undef, %bb.bf ]
  %.sroa.22.sroa.23.0 = phi i8 [ %i.db, %_RNvXsc9_NtCs607s0NAIaWN_7segment5typesNtB6_14FieldConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit2.i ], [ undef, %.noexc3 ], [ undef, %.noexc4 ], [ undef, %bb.ax ], [ undef, %.noexc5 ], [ undef, %.noexc6 ], [ undef, %bb.bf ]
  %.sroa.22.sroa.22.0 = phi i8 [ %i.cz, %_RNvXsc9_NtCs607s0NAIaWN_7segment5typesNtB6_14FieldConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit2.i ], [ undef, %.noexc3 ], [ undef, %.noexc4 ], [ undef, %bb.ax ], [ undef, %.noexc5 ], [ undef, %.noexc6 ], [ undef, %bb.bf ]
  %.sroa.22.sroa.20.0 = phi i64 [ %.sroa.59.sroa.4.0.i.i, %_RNvXsc9_NtCs607s0NAIaWN_7segment5typesNtB6_14FieldConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit2.i ], [ undef, %.noexc3 ], [ undef, %.noexc4 ], [ undef, %bb.ax ], [ undef, %.noexc5 ], [ undef, %.noexc6 ], [ undef, %bb.bf ]
  %.sroa.22.sroa.18.0 = phi i64 [ %.sroa.07.0.i.i, %_RNvXsc9_NtCs607s0NAIaWN_7segment5typesNtB6_14FieldConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit2.i ], [ undef, %.noexc3 ], [ undef, %.noexc4 ], [ undef, %bb.ax ], [ undef, %.noexc5 ], [ undef, %.noexc6 ], [ undef, %bb.bf ]
  %.sroa.22.sroa.14.0 = phi i64 [ %i.bt, %_RNvXsc9_NtCs607s0NAIaWN_7segment5typesNtB6_14FieldConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit2.i ], [ undef, %.noexc3 ], [ undef, %.noexc4 ], [ undef, %bb.ax ], [ %.sroa.13145.48.copyload, %.noexc5 ], [ undef, %.noexc6 ], [ undef, %bb.bf ]
  %.sroa.22.sroa.12.0 = phi i64 [ %i.cw, %_RNvXsc9_NtCs607s0NAIaWN_7segment5typesNtB6_14FieldConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit2.i ], [ undef, %.noexc3 ], [ undef, %.noexc4 ], [ undef, %bb.ax ], [ %.sroa.11143.48.copyload, %.noexc5 ], [ %.sroa.22.sroa.12.0.copyload65, %.noexc6 ], [ undef, %bb.bf ]
  %.sroa.013.0 = phi i64 [ %.sroa.03.0.i.i, %_RNvXsc9_NtCs607s0NAIaWN_7segment5typesNtB6_14FieldConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ 2, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ 3, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit2.i ], [ 4, %.noexc3 ], [ 5, %.noexc4 ], [ 6, %bb.ax ], [ 7, %.noexc5 ], [ 8, %.noexc6 ], [ 9, %bb.bf ]
  %i.eq = phi <2 x i64> [ %i.dd, %_RNvXsc9_NtCs607s0NAIaWN_7segment5typesNtB6_14FieldConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.dj, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.dp, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit2.i ], [ %i.ds, %.noexc3 ], [ undef, %.noexc4 ], [ undef, %bb.ax ], [ %i.eh, %.noexc5 ], [ %i.ek, %.noexc6 ], [ undef, %bb.bf ]
  %i.er = phi <2 x ptr> [ %i.bz, %_RNvXsc9_NtCs607s0NAIaWN_7segment5typesNtB6_14FieldConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.di, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %i.do, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit2.i ], [ %i.dr, %.noexc3 ], [ %i.du, %.noexc4 ], [ %i.dy, %bb.ax ], [ %i.eg, %.noexc5 ], [ %i.ej, %.noexc6 ], [ %i.ep, %bb.bf ]
  %i.es = getelementptr inbounds nuw [376 x i8], ptr %i.ag, i64 %.sroa.7.0185 ; 18 uses
  store i64 %.sroa.013.0, ptr %i.es, align 8, !noalias !4297
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store <2 x ptr> %i.er, ptr %.sroa.448.0..sroa_idx, align 8, !noalias !4297
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store i64 %.sroa.22.sroa.0.sroa.0.0, ptr %.sroa.650.0..sroa_idx, align 8, !noalias !4297
  %.sroa.650.sroa.0.sroa.4.0..sroa.650.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  store <2 x i64> %i.eq, ptr %.sroa.650.sroa.0.sroa.4.0..sroa.650.0..sroa_idx.sroa_idx, align 8, !noalias !4297
  %.sroa.650.sroa.5.0..sroa.650.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  store i64 %.sroa.22.sroa.11.sroa.0.0, ptr %.sroa.650.sroa.5.0..sroa.650.0..sroa_idx.sroa_idx, align 8, !noalias !4297
  %.sroa.650.sroa.5.sroa.4.0..sroa.650.sroa.5.0..sroa.650.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.650.sroa.5.sroa.4.0..sroa.650.sroa.5.0..sroa.650.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.11.sroa.9, i64 16, i1 false)
  %.sroa.650.sroa.6.0..sroa.650.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 72
  store i64 %.sroa.22.sroa.12.0, ptr %.sroa.650.sroa.6.0..sroa.650.0..sroa_idx.sroa_idx, align 8, !noalias !4297
  %.sroa.650.sroa.7.0..sroa.650.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.650.sroa.7.0..sroa.650.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.22.sroa.13, i64 56, i1 false)
  %.sroa.650.sroa.8.0..sroa.650.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 136
  store i64 %.sroa.22.sroa.14.0, ptr %.sroa.650.sroa.8.0..sroa.650.0..sroa_idx.sroa_idx, align 8, !noalias !4297
  %.sroa.650.sroa.9.0..sroa.650.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.650.sroa.9.0..sroa.650.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.22.sroa.15, i64 56, i1 false)
  %.sroa.650.sroa.10.0..sroa.650.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.650.sroa.10.0..sroa.650.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.22.sroa.16, i64 72, i1 false)
  %.sroa.650.sroa.11.0..sroa.650.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.650.sroa.11.0..sroa.650.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.22.sroa.17, i64 48, i1 false)
  %.sroa.650.sroa.12.0..sroa.650.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 320
  store i64 %.sroa.22.sroa.18.0, ptr %.sroa.650.sroa.12.0..sroa.650.0..sroa_idx.sroa_idx, align 8, !noalias !4297
  %.sroa.650.sroa.13.0..sroa.650.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.650.sroa.13.0..sroa.650.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.19, i64 16, i1 false)
  %.sroa.650.sroa.14.0..sroa.650.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 344
  store i64 %.sroa.22.sroa.20.0, ptr %.sroa.650.sroa.14.0..sroa.650.0..sroa_idx.sroa_idx, align 8, !noalias !4297
  %.sroa.650.sroa.15.0..sroa.650.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.650.sroa.15.0..sroa.650.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.21, i64 16, i1 false)
  %.sroa.650.sroa.16.0..sroa.650.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 368
  store i8 %.sroa.22.sroa.22.0, ptr %.sroa.650.sroa.16.0..sroa.650.0..sroa_idx.sroa_idx, align 8, !noalias !4297
  %.sroa.650.sroa.17.0..sroa.650.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 369
  store i8 %.sroa.22.sroa.23.0, ptr %.sroa.650.sroa.17.0..sroa.650.0..sroa_idx.sroa_idx, align 1, !noalias !4297
  %i.et = icmp eq i64 %i.ar, 0
  br i1 %i.et, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment5types9ConditionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshMzyYDJGtjv_3api.exit, label %bb.c

bb.bh:                                            ; preds = %bb.bi
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !4297, !inline_history !4364
  unreachable

bb.bi:                                            ; preds = %.loopexit, %bb.w, %bb.f, %bb.aq, %bb.at, %bb.az, %bb.bb
  %eh.lpad-body = phi { ptr, i32 } [ %i.dg, %bb.aq ], [ %i.eb, %bb.az ], [ %.pn.i.i, %bb.w ], [ %i.ee, %bb.bb ], [ %i.dm, %bb.at ], [ %i.az, %bb.f ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.0185, ptr %i.aj, align 8, !noalias !4297
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #22
          to label %bb.bj unwind label %bb.bh, !noalias !4297, !inline_history !4364

bb.bj:                                            ; preds = %bb.bi
  resume { ptr, i32 } %eh.lpad-body

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment5types9ConditionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshMzyYDJGtjv_3api.exit: ; preds = %_RNvXsdf_NtCs607s0NAIaWN_7segment5typesNtB6_9ConditionNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %bb.c, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit
  store i64 %i.z, ptr %i.aj, align 8, !noalias !4285
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !4365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4285
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !9 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4366)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4369
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !4369
  %i.h = load i64, ptr %i.a, align 8, !range !159, !noalias !4369, !noundef !9
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !2342, !noalias !4369, !noundef !9 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i, !prof !2271

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !4369
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #27, !noalias !4369
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !4369, !nonnull !9, !noundef !9 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4369
  store i64 %i.k, ptr %i.c, align 8, !noalias !4369
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !4369
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshMzyYDJGtjv_3api.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshMzyYDJGtjv_3api.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNvXsg_NtCs607s0NAIaWN_7segment9json_pathNtB5_12JsonPathItemNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.012.024.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.w, %_RNvXsg_NtCs607s0NAIaWN_7segment9json_pathNtB5_12JsonPathItemNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ] ; 5 uses
  %.sroa.7.023.i = phi i64 [ 0, %.lr.ph.i ], [ %i.x, %_RNvXsg_NtCs607s0NAIaWN_7segment9json_pathNtB5_12JsonPathItemNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ] ; 3 uses
  %.sroa.10.022.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.u, %_RNvXsg_NtCs607s0NAIaWN_7segment9json_pathNtB5_12JsonPathItemNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ]
  %i.u = add i64 %.sroa.10.022.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.024.i, %i.r
  br i1 %i.v, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshMzyYDJGtjv_3api.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.024.i, i64 24
  %i.x = add nuw nsw i64 %.sroa.7.023.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4369
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4374)
  %i.y = load i64, ptr %.sroa.012.024.i, align 8, !range !138, !alias.scope !4376, !noalias !4377, !noundef !9 ; 2 uses
  %i.z = icmp slt i64 %i.y, 0
  %i.aa = add i64 %i.y, -9223372036854775807
  %i.ab = select i1 %i.z, i64 %i.aa, i64 0
  switch i64 %i.ab, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %_RNvXsg_NtCs607s0NAIaWN_7segment9json_pathNtB5_12JsonPathItemNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.sink.split.i
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.024.i)
          to label %_RNvXsg_NtCs607s0NAIaWN_7segment9json_pathNtB5_12JsonPathItemNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i unwind label %bb.i, !noalias !4378

bb.g:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.024.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !4376, !noalias !4377, !noundef !9
  store i64 %i.ad, ptr %i.t, align 8, !alias.scope !4371, !noalias !4379
  br label %_RNvXsg_NtCs607s0NAIaWN_7segment9json_pathNtB5_12JsonPathItemNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.sink.split.i

_RNvXsg_NtCs607s0NAIaWN_7segment9json_pathNtB5_12JsonPathItemNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.sink.split.i: ; preds = %bb.g, %bb.d
  %.sink.i = phi i64 [ -9223372036854775808, %bb.g ], [ -9223372036854775807, %bb.d ]
  store i64 %.sink.i, ptr %i.b, align 8, !alias.scope !4371, !noalias !4379
  br label %_RNvXsg_NtCs607s0NAIaWN_7segment9json_pathNtB5_12JsonPathItemNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

end_hunk_1
