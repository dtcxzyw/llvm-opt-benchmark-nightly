Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/clap_builder-30cbe4f1c73b6c1c.clap_builder.7b6dbbbaa4b59d1c-cgu.11?download=true
inline.NumInlined: 188
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterReEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueuINvMB2D_B2B_3newB1s_ENCIB2d_B2B_NtNtCsbSS6DM8SDEO_5alloc6string6StringuNCNvXsC_NtB2F_12value_parserNtB54_15BoolValueParserNtB54_16TypedValueParser9parse_ref0NCINvNvB1w_8for_each4callB4j_NCINvMsk_NtB4n_3vecINtB6W_3VecB4j_E14extend_trustedINtB2f_3MapIB7D_BP_B3N_EB4W_EE0E0E0E0EB2H_:bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters6copied9copy_foldBQ_uNCINvNtB1L_3map8map_foldBQ_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueuINvMB2N_B2L_3newBQ_ENCIB2n_B2L_NtNtCsbSS6DM8SDEO_5alloc6string6StringuNCNvXsC_NtB2P_12value_parserNtB5d_15BoolValueParserNtB5d_16TypedValueParser9parse_ref0NCINvNvBT_8for_each4callB4s_NCINvMsk_NtB4w_3vecINtB74_3VecB4s_E14extend_trustedINtB2p_3MapIB7L_INtB1J_6CopiedBF_EB3X_EB55_EE0E0E0E0E0EB2R_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReNtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueuINvMBY_BW_3newBU_ENCIB2_BW_NtNtCsbSS6DM8SDEO_5alloc6string6StringuNCNvXsC_NtB10_12value_parserNtB3k_15BoolValueParserNtB3k_16TypedValueParser9parse_ref0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2z_NCINvMsk_NtB2D_3vecINtB5G_3VecB2z_E14extend_trustedINtB4_3MapIB6n_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterBU_EEB28_EB3c_EE0E0E0E0B12_.exit.i.i, %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.d:                                             ; preds = %bb.k, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.y, %bb.k ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.z, %bb.k ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load ptr, ptr %i.m, align 8, !noalias !42, !nonnull !4, !noundef !4
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load i64, ptr %i.n, align 8, !noalias !42, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !43
  invoke void @_RINvMNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_valueNtB3_13PossibleValue3newReEB7_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val15.i, i64 noundef %.val16.i)
          to label %.noexc.i unwind label %bb.c, !noalias !42

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.o = load ptr, ptr %i.h, align 8, !alias.scope !44, !noalias !43, !nonnull !4, !noundef !4
  %i.p = load i64, ptr %i.i, align 8, !alias.scope !44, !noalias !43, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.p, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !46

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i, %bb.f
  %lpad.loopexit.split-lp32 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b) #17
          to label %bb.l unwind label %bb.j, !noalias !47

bb.e:                                             ; preds = %.noexc.i
  %i.q = load i64, ptr %i.a, align 8, !range !48, !noalias !45, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = load i64, ptr %i.j, align 8, !range !49, !noalias !45, !noundef !4 ; 3 uses
  br i1 %i.r, label %bb.f, label %bb.g, !prof !50

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.k, align 8, !noalias !45
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.t) #18
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !46

bb.g:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.k, align 8, !noalias !45, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp ule i64 %i.p, %i.s
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45
  %.not.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReNtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueuINvMBY_BW_3newBU_ENCIB2_BW_NtNtCsbSS6DM8SDEO_5alloc6string6StringuNCNvXsC_NtB10_12value_parserNtB3k_15BoolValueParserNtB3k_16TypedValueParser9parse_ref0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2z_NCINvMsk_NtB2D_3vecINtB5G_3VecB2z_E14extend_trustedINtB4_3MapIB6n_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterBU_EEB28_EB3c_EE0E0E0E0B12_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %i.o, i64 %i.p, i1 false), !noalias !46
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReNtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueuINvMBY_BW_3newBU_ENCIB2_BW_NtNtCsbSS6DM8SDEO_5alloc6string6StringuNCNvXsC_NtB10_12value_parserNtB3k_15BoolValueParserNtB3k_16TypedValueParser9parse_ref0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2z_NCINvMsk_NtB2D_3vecINtB5G_3VecB2z_E14extend_trustedINtB4_3MapIB6n_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterBU_EEB28_EB3c_EE0E0E0E0B12_.exit.i.i

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #16, !noalias !47
  unreachable

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReNtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueuINvMBY_BW_3newBU_ENCIB2_BW_NtNtCsbSS6DM8SDEO_5alloc6string6StringuNCNvXsC_NtB10_12value_parserNtB3k_15BoolValueParserNtB3k_16TypedValueParser9parse_ref0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2z_NCINvMsk_NtB2D_3vecINtB5G_3VecB2z_E14extend_trustedINtB4_3MapIB6n_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterBU_EEB28_EB3c_EE0E0E0E0B12_.exit.i.i: ; preds = %bb.h, %bb.g
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %bb.k unwind label %bb.c, !noalias !42

bb.k:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldReNtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueuINvMBY_BW_3newBU_ENCIB2_BW_NtNtCsbSS6DM8SDEO_5alloc6string6StringuNCNvXsC_NtB10_12value_parserNtB3k_15BoolValueParserNtB3k_16TypedValueParser9parse_ref0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2z_NCINvMsk_NtB2D_3vecINtB5G_3VecB2z_E14extend_trustedINtB4_3MapIB6n_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterBU_EEB28_EB3c_EE0E0E0E0B12_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 3 uses
  store i64 %i.s, ptr %i.x, align 8, !noalias !51
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.u, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !51
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.p, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !51
  %i.y = add i64 %.val10.i, 1                     ; 2 uses
  %i.z = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.g
  br i1 %i.aa, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters6copied9copy_foldBQ_uNCINvNtB1L_3map8map_foldBQ_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueuINvMB2N_B2L_3newBQ_ENCIB2n_B2L_NtNtCsbSS6DM8SDEO_5alloc6string6StringuNCNvXsC_NtB2P_12value_parserNtB5d_15BoolValueParserNtB5d_16TypedValueParser9parse_ref0NCINvNvBT_8for_each4callB4s_NCINvMsk_NtB4w_3vecINtB74_3VecB4s_E14extend_trustedINtB2p_3MapIB7L_INtB1J_6CopiedBF_EB3X_EB55_EE0E0E0E0E0EB2R_.exit, label %bb.d

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.l, %bb.c ], [ %lpad.loopexit.split-lp32, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !42
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters6copied9copy_foldBQ_uNCINvNtB1L_3map8map_foldBQ_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueuINvMB2N_B2L_3newBQ_ENCIB2n_B2L_NtNtCsbSS6DM8SDEO_5alloc6string6StringuNCNvXsC_NtB2P_12value_parserNtB5d_15BoolValueParserNtB5d_16TypedValueParser9parse_ref0NCINvNvBT_8for_each4callB4s_NCINvMsk_NtB4w_3vecINtB74_3VecB4s_E14extend_trustedINtB2p_3MapIB7L_INtB1J_6CopiedBF_EB3X_EB55_EE0E0E0E0E0EB2R_.exit: ; preds = %bb.k, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.y, %bb.k ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !42
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterReEENtNtNtB9_6traits8iterator8Iterator8try_foldINtNtNtBb_3num7nonzero7NonZerojENCINvNtB7_3map12map_try_foldB1s_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB2d_INtNtBb_6option6OptionB2d_EINvMB3h_B3f_3newB1s_ENCNvXs_NvB1w_10advance_byINtB2O_3MapBP_B4V_ENtB5n_13SpecAdvanceBy15spec_advance_by0E0B4u_EB3l_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !59, !nonnull !4, !noundef !4
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !59
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = phi ptr [ %.promoted.i, %bb.a ], [ %i.g, %bb.c ] ; 4 uses
  %.sroa.01.0.i = phi i64 [ %1, %bb.a ], [ %i.i, %bb.c ] ; 3 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtBS_8adapters6copied13copy_try_foldBJ_B1A_INtNtBa_6option6OptionB1A_ENCINvNtB2d_3map12map_try_foldBJ_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB1A_B2U_INvMB3T_B3R_3newBJ_ENCNvXs_NvBM_10advance_byINtB3q_3MapINtB2b_6CopiedB3_EB5a_ENtB5B_13SpecAdvanceBy15spec_advance_by0E0E0B2U_EB3X_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !59
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !58, !nonnull !4, !noundef !4
  %i.h = getelementptr i8, ptr %i.e, i64 8
  %.val8.i = load i64, ptr %i.h, align 8, !noalias !58, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60
  call void @_RINvMNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_valueNtB3_13PossibleValue3newReEB7_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val8.i), !noalias !58
  store i64 %.sroa.01.0.i, ptr %i.a, align 8, !noalias !60
  %i.i = add i64 %.sroa.01.0.i, -1                ; 2 uses
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtBS_8adapters6copied13copy_try_foldBJ_B1A_INtNtBa_6option6OptionB1A_ENCINvNtB2d_3map12map_try_foldBJ_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB1A_B2U_INvMB3T_B3R_3newBJ_ENCNvXs_NvBM_10advance_byINtB3q_3MapINtB2b_6CopiedB3_EB5a_ENtB5B_13SpecAdvanceBy15spec_advance_by0E0E0B2U_EB3X_.exit, label %bb.b

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtBS_8adapters6copied13copy_try_foldBJ_B1A_INtNtBa_6option6OptionB1A_ENCINvNtB2d_3map12map_try_foldBJ_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB1A_B2U_INvMB3T_B3R_3newBJ_ENCNvXs_NvBM_10advance_byINtB3q_3MapINtB2b_6CopiedB3_EB5a_ENtB5B_13SpecAdvanceBy15spec_advance_by0E0E0B2U_EB3X_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %.sroa.01.0.i, %bb.b ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterjEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !65, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !alias.scope !65, !nonnull !4, !noundef !4
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterjENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsaB0tVqiIPBo_12clap_builder.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !alias.scope !65
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !66, !noundef !4
  br label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterjENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsaB0tVqiIPBo_12clap_builder.exit.thread

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterjENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsaB0tVqiIPBo_12clap_builder.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, -1) i64 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReINtNtNtBb_3num7nonzero7NonZerojEINtNtBb_6option6OptionB1E_ENCINvNtBV_3map12map_try_foldB1C_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB1E_B2a_NCNvMsE_NtB3b_12value_parserNtB4y_17FalseyValueParser15possible_values0NCNvXs_NvNtNtNtBX_6traits8iterator8Iterator10advance_byINtB2G_3MapINtBT_6CopiedINtNtBV_5chain5ChainINtNtNtBb_5slice4iter4IterB1C_EB7a_EEB4q_ENtB5G_13SpecAdvanceBy15spec_advance_by0E0E0INtB7_5FnMutTB1E_RB1C_EE8call_mutB3d_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  %.val = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  switch i64 %.val1, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldReINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB15_ENCINvNtB6_3map12map_try_foldB13_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB15_B1B_NCNvMsE_NtB2C_12value_parserNtB3Z_17FalseyValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB27_3MapINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterB13_EB6B_EEB3R_ENtB57_13SpecAdvanceBy15spec_advance_by0E0E0B2E_.exit.a [
    i64 4, label %bb.b
    i64 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %.val, align 1
  %i.d = icmp ne i32 %i.c, 1702195828             ; 2 uses
  %i.e = zext i1 %i.d to i32                      ; 0 uses
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldReINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB15_ENCINvNtB6_3map12map_try_foldB13_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB15_B1B_NCNvMsE_NtB2C_12value_parserNtB3Z_17FalseyValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB27_3MapINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterB13_EB6B_EEB3R_ENtB57_13SpecAdvanceBy15spec_advance_by0E0E0B2E_.exit.a

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr %.val, align 1
  %i.g = xor i32 %i.f, 1936482662
  %i.h = getelementptr i8, ptr %.val, i64 4
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = xor i32 %i.j, 101
  %i.l = or i32 %i.g, %i.k
  %i.m = icmp ne i32 %i.l, 0                      ; 2 uses
  %i.n = zext i1 %i.m to i32                      ; 0 uses
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldReINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB15_ENCINvNtB6_3map12map_try_foldB13_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB15_B1B_NCNvMsE_NtB2C_12value_parserNtB3Z_17FalseyValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB27_3MapINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterB13_EB6B_EEB3R_ENtB57_13SpecAdvanceBy15spec_advance_by0E0E0B2E_.exit.a

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldReINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB15_ENCINvNtB6_3map12map_try_foldB13_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB15_B1B_NCNvMsE_NtB2C_12value_parserNtB3Z_17FalseyValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB27_3MapINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterB13_EB6B_EEB3R_ENtB57_13SpecAdvanceBy15spec_advance_by0E0E0B2E_.exit.a: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.shrunk.i.i.i = phi i1 [ %i.d, %bb.b ], [ %i.m, %bb.c ], [ true, %bb.a ]
  %.sroa.0.0.i.i.i = zext i1 %.sroa.0.0.shrunk.i.i.i to i8
  store i64 %1, ptr %i.a, align 8, !noalias !69
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store i64 0, ptr %i.o, align 8, !noalias !69
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !69
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !69
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 -1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !69
  %.sroa.71.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.val, ptr %.sroa.71.0..sroa_idx.i.i, align 8, !noalias !69
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.val1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !69
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 %.sroa.0.0.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !69
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3str3StrENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.o)
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldReINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB15_ENCINvNtB6_3map12map_try_foldB13_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB15_B1B_NCNvMsE_NtB2C_12value_parserNtB3Z_17FalseyValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB27_3MapINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterB13_EB6B_EEB3R_ENtB57_13SpecAdvanceBy15spec_advance_by0E0E0B2E_.exit unwind label %3

3:                                                ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldReINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB15_ENCINvNtB6_3map12map_try_foldB13_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB15_B1B_NCNvMsE_NtB2C_12value_parserNtB3Z_17FalseyValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB27_3MapINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterB13_EB6B_EEB3R_ENtB57_13SpecAdvanceBy15spec_advance_by0E0E0B2E_.exit.a
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3str3StrENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.o)
          to label %common.resume.i.i unwind label %5

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume.i.i:                                ; preds = %3
  resume { ptr, i32 } %4

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldReINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB15_ENCINvNtB6_3map12map_try_foldB13_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB15_B1B_NCNvMsE_NtB2C_12value_parserNtB3Z_17FalseyValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB27_3MapINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterB13_EB6B_EEB3R_ENtB57_13SpecAdvanceBy15spec_advance_by0E0E0B2E_.exit: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldReINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB15_ENCINvNtB6_3map12map_try_foldB13_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB15_B1B_NCNvMsE_NtB2C_12value_parserNtB3Z_17FalseyValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB27_3MapINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterB13_EB6B_EEB3R_ENtB57_13SpecAdvanceBy15spec_advance_by0E0E0B2E_.exit.a
  %7 = add i64 %1, -1
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3str3StrENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  ret i64 %7
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, -1) i64 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6copied13copy_try_foldReINtNtNtBb_3num7nonzero7NonZerojEINtNtBb_6option6OptionB1E_ENCINvNtBV_3map12map_try_foldB1C_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB1E_B2a_NCNvMsH_NtB3b_12value_parserNtB4y_18BoolishValueParser15possible_values0NCNvXs_NvNtNtNtBX_6traits8iterator8Iterator10advance_byINtB2G_3MapINtBT_6CopiedINtNtBV_5chain5ChainINtNtNtBb_5slice4iter4IterB1C_EB7b_EEB4q_ENtB5H_13SpecAdvanceBy15spec_advance_by0E0E0INtB7_5FnMutTB1E_RB1C_EE8call_mutB3d_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  %.val = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !72
  switch i64 %.val1, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldReINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB15_ENCINvNtB6_3map12map_try_foldB13_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB15_B1B_NCNvMsH_NtB2C_12value_parserNtB3Z_18BoolishValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB27_3MapINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterB13_EB6C_EEB3R_ENtB58_13SpecAdvanceBy15spec_advance_by0E0E0B2E_.exit.a [
    i64 4, label %bb.b
    i64 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %.val, align 1
  %i.d = icmp ne i32 %i.c, 1702195828             ; 2 uses
  %i.e = zext i1 %i.d to i32                      ; 0 uses
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldReINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB15_ENCINvNtB6_3map12map_try_foldB13_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB15_B1B_NCNvMsH_NtB2C_12value_parserNtB3Z_18BoolishValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB27_3MapINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterB13_EB6C_EEB3R_ENtB58_13SpecAdvanceBy15spec_advance_by0E0E0B2E_.exit.a

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr %.val, align 1
  %i.g = xor i32 %i.f, 1936482662
  %i.h = getelementptr i8, ptr %.val, i64 4
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = xor i32 %i.j, 101
  %i.l = or i32 %i.g, %i.k
  %i.m = icmp ne i32 %i.l, 0                      ; 2 uses
  %i.n = zext i1 %i.m to i32                      ; 0 uses
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldReINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB15_ENCINvNtB6_3map12map_try_foldB13_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB15_B1B_NCNvMsH_NtB2C_12value_parserNtB3Z_18BoolishValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB27_3MapINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterB13_EB6C_EEB3R_ENtB58_13SpecAdvanceBy15spec_advance_by0E0E0B2E_.exit.a

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldReINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB15_ENCINvNtB6_3map12map_try_foldB13_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB15_B1B_NCNvMsH_NtB2C_12value_parserNtB3Z_18BoolishValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB27_3MapINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterB13_EB6C_EEB3R_ENtB58_13SpecAdvanceBy15spec_advance_by0E0E0B2E_.exit.a: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.shrunk.i.i.i = phi i1 [ %i.d, %bb.b ], [ %i.m, %bb.c ], [ true, %bb.a ]
  %.sroa.0.0.i.i.i = zext i1 %.sroa.0.0.shrunk.i.i.i to i8
  store i64 %1, ptr %i.a, align 8, !noalias !72
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store i64 0, ptr %i.o, align 8, !noalias !72
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !72
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !72
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 -1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !72
  %.sroa.71.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.val, ptr %.sroa.71.0..sroa_idx.i.i, align 8, !noalias !72
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.val1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !72
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 %.sroa.0.0.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !72
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3str3StrENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.o)
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldReINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB15_ENCINvNtB6_3map12map_try_foldB13_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB15_B1B_NCNvMsH_NtB2C_12value_parserNtB3Z_18BoolishValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB27_3MapINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterB13_EB6C_EEB3R_ENtB58_13SpecAdvanceBy15spec_advance_by0E0E0B2E_.exit unwind label %3

3:                                                ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldReINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB15_ENCINvNtB6_3map12map_try_foldB13_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB15_B1B_NCNvMsH_NtB2C_12value_parserNtB3Z_18BoolishValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB27_3MapINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterB13_EB6C_EEB3R_ENtB58_13SpecAdvanceBy15spec_advance_by0E0E0B2E_.exit.a
  %4 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3str3StrENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.o)
          to label %common.resume.i.i unwind label %5

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume.i.i:                                ; preds = %3
  resume { ptr, i32 } %4

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldReINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB15_ENCINvNtB6_3map12map_try_foldB13_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB15_B1B_NCNvMsH_NtB2C_12value_parserNtB3Z_18BoolishValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB27_3MapINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterB13_EB6C_EEB3R_ENtB58_13SpecAdvanceBy15spec_advance_by0E0E0B2E_.exit: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6copied13copy_try_foldReINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB15_ENCINvNtB6_3map12map_try_foldB13_NtNtNtCsaB0tVqiIPBo_12clap_builder7builder14possible_value13PossibleValueB15_B1B_NCNvMsH_NtB2C_12value_parserNtB3Z_18BoolishValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB27_3MapINtB4_6CopiedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterB13_EB6C_EEB3R_ENtB58_13SpecAdvanceBy15spec_advance_by0E0E0B2E_.exit.a
  %7 = add i64 %1, -1
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3str3StrENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !72
  ret i64 %7
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtCsaB0tVqiIPBo_12clap_builder4util9any_value10AnyValueIdNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsa_NtCshzWfHUSfYae_4core3anyNtB5_6TypeIdNtNtB7_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtCsaB0tVqiIPBo_12clap_builder4util9any_value8AnyValueNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !76
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 8), !noalias !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 5, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
  %i.e = call noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !76
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder13arg_predicate12ArgPredicateNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !81, !noundef !4
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !82
  store ptr %i.b, ptr %i.a, align 8, !noalias !82
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !82
  br label %_RNvXs0_NtNtCsaB0tVqiIPBo_12clap_builder7builder13arg_predicateNtB5_12ArgPredicateNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 9), !noalias !81
  br label %_RNvXs0_NtNtCsaB0tVqiIPBo_12clap_builder7builder13arg_predicateNtB5_12ArgPredicateNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

_RNvXs0_NtNtCsaB0tVqiIPBo_12clap_builder7builder13arg_predicateNtB5_12ArgPredicateNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRTNtNtNtCsaB0tVqiIPBo_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBD_4util2id2IdENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !86
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !noalias !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !86
  store ptr %i.d, ptr %i.b, align 8, !noalias !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !86
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.a, align 8, !noalias !86
  %i.f = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4) ; 0 uses
  %i.g = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5) ; 0 uses
  %i.h = call noundef zeroext i1 @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !86
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define noundef range(i8 -1, 2) i8 @_RNvXs3_NtNtCsaB0tVqiIPBo_12clap_builder4util9any_valueNtB5_10AnyValueIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %.val13.i.i = load ptr, ptr %0, align 8, !alias.scope !98, !noundef !4 ; 2 uses
  %.val14.i.i = load ptr, ptr %1, align 8, !alias.scope !99, !noundef !4 ; 2 uses
  %i.a = icmp ult ptr %.val13.i.i, %.val14.i.i
  %i.b = icmp ne ptr %.val13.i.i, %.val14.i.i
  %..i.i.i.i = zext i1 %i.b to i8
  %.sroa.0.0.i.i.i.i = select i1 %i.a, i8 -1, i8 %..i.i.i.i ; 2 uses
  %i.c = icmp eq i8 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.c, label %bb.b, label %_RNvXs5_NtNtCsaB0tVqiIPBo_12clap_builder4util9any_valueNtB5_10AnyValueIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val13.1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !98, !noundef !4 ; 2 uses
  %.val14.1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !99, !noundef !4 ; 2 uses
  %i.f = icmp ult ptr %.val13.1.i.i, %.val14.1.i.i
  %i.g = icmp ne ptr %.val13.1.i.i, %.val14.1.i.i
  %..i.i.1.i.i = zext i1 %i.g to i8
  %.sroa.0.0.i.i.1.i.i = select i1 %i.f, i8 -1, i8 %..i.i.1.i.i
  br label %_RNvXs5_NtNtCsaB0tVqiIPBo_12clap_builder4util9any_valueNtB5_10AnyValueIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit

_RNvXs5_NtNtCsaB0tVqiIPBo_12clap_builder4util9any_valueNtB5_10AnyValueIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i8 [ %.sroa.0.0.i.i.i.i, %bb.a ], [ %.sroa.0.0.i.i.1.i.i, %bb.b ]
  ret i8 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define noundef range(i8 -1, 2) i8 @_RNvXs5_NtNtCsaB0tVqiIPBo_12clap_builder4util9any_valueNtB5_10AnyValueIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %.val13.i = load ptr, ptr %0, align 8, !alias.scope !103, !noundef !4 ; 2 uses
  %.val14.i = load ptr, ptr %1, align 8, !alias.scope !104, !noundef !4 ; 2 uses
  %i.a = icmp ult ptr %.val13.i, %.val14.i
  %i.b = icmp ne ptr %.val13.i, %.val14.i
  %..i.i.i = zext i1 %i.b to i8
  %.sroa.0.0.i.i.i = select i1 %i.a, i8 -1, i8 %..i.i.i ; 2 uses
  %i.c = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.c, label %bb.b, label %_RINvNtNtCshzWfHUSfYae_4core5slice3cmp13chaining_implPuNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB1D_s_0ECsaB0tVqiIPBo_12clap_builder.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val13.1.i = load ptr, ptr %i.d, align 8, !alias.scope !103, !noundef !4 ; 2 uses
  %.val14.1.i = load ptr, ptr %i.e, align 8, !alias.scope !104, !noundef !4 ; 2 uses
  %i.f = icmp ult ptr %.val13.1.i, %.val14.1.i
  %i.g = icmp ne ptr %.val13.1.i, %.val14.1.i
  %..i.i.1.i = zext i1 %i.g to i8
  %.sroa.0.0.i.i.1.i = select i1 %i.f, i8 -1, i8 %..i.i.1.i
  br label %_RINvNtNtCshzWfHUSfYae_4core5slice3cmp13chaining_implPuNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB1D_s_0ECsaB0tVqiIPBo_12clap_builder.exit

_RINvNtNtCshzWfHUSfYae_4core5slice3cmp13chaining_implPuNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB1D_s_0ECsaB0tVqiIPBo_12clap_builder.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i8 [ %.sroa.0.0.i.i.i, %bb.a ], [ %.sroa.0.0.i.i.1.i, %bb.b ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXs6_NtCsaB0tVqiIPBo_12clap_builder6deriveNtNtCshzWfHUSfYae_4core7convert10InfallibleNtB5_14FromArgMatches16from_arg_matches(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMNtCsaB0tVqiIPBo_12clap_builder5errorNtB3_5Error3rawReEB5_(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 49)
  ret ptr %i.a
}

; Function Attrs: cold noreturn nonlazybind uwtable
define noalias noundef nonnull align 8 ptr @_RNvXs6_NtCsaB0tVqiIPBo_12clap_builder6deriveNtNtCshzWfHUSfYae_4core7convert10InfallibleNtB5_14FromArgMatches23update_from_arg_matches(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #4 {
bb.a:
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 253 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtNtCsaB0tVqiIPBo_12clap_builder4util9any_valueNtB5_10AnyValueIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsa_NtCshzWfHUSfYae_4core3anyNtB5_6TypeIdNtNtB7_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCsaB0tVqiIPBo_12clap_builder4util9any_valueNtB4_8AnyValueNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 8)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
  %i.d = call noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_5chain5ChainINtNtB6_6filter6FilterINtNtB6_7flatten7FlatMapINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdENCNvMNtNtB35_6parser9validatorNtB3O_9Validator24build_conflict_err_usages2_0EINtNtB6_3map3MapIB2A_TNtNtNtB35_7builder13arg_predicate12ArgPredicateB2Z_EENCNCB3L_s3_00ENCB3L_s3_0ENCB3L_s4_0EB2z_EENtNtNtB8_6traits8iterator8Iterator4nextB35_(ptr noalias nofree noundef align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !135, !noundef !4
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !142
  store ptr %0, ptr %i.a, align 8, !noalias !143
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !144, !noundef !4
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef align 8 ptr @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtNtCsaB0tVqiIPBo_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1u_4util2id2IdEENCNCNvMNtNtB1u_6parser9validatorNtB31_9Validator24build_conflict_err_usages3_00ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB4c_4find5checkRB2x_QNCB2Y_s4_0E0INtNtNtBc_3ops12control_flow11ControlFlowB5h_EEB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not8.i.i.i.i.i.i.i.i, label %bb.d, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6filter6FilterINtNtB4_7flatten7FlatMapINtNtB4_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdENCNvMNtNtB2O_6parser9validatorNtB3x_9Validator24build_conflict_err_usages2_0EINtNtB4_3map3MapIB2j_TNtNtNtB2O_7builder13arg_predicate12ArgPredicateB2I_EENCNCB3u_s3_00ENCB3u_s3_0ENCB3u_s4_0ERB2I_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2O_.exit.i

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.c, align 8, !alias.scope !144
end_hunk_0
