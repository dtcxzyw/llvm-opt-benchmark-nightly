Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.13?download=true
inline.NumInlined: 1330
inline.NumDeleted: 900
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENCNvMs_NtNtNtB1t_6models7unigram7trainerNtB2F_14UnigramTrainer8finalizes0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3M_8for_each4callTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMsj_NtB4U_3vecINtB5C_3VecB4P_E14extend_trustedBN_E0E0EB1t_
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENCNvMs_NtNtNtB1t_6models7unigram7trainerNtB2F_14UnigramTrainer8finalizes0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3M_8for_each4callTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMsj_NtB4U_3vecINtB5C_3VecB4P_E14extend_trustedBN_E0E0EB1t_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB27_8adapters3map8map_foldRBQ_TNtNtCscdodAO9FK5_5alloc6string6StringdEuNCNvMs_NtNtNtBW_6models7unigram7trainerNtB4b_14UnigramTrainer8finalizes0_0NCINvNvB21_8for_each4callB3p_NCINvMsj_NtB3u_3vecINtB5S_3VecB3p_E14extend_trustedINtB2R_3MapBF_B44_EE0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 5
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1204
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.d unwind label %bb.e, !noalias !1204

bb.d:                                             ; preds = %bb.c
  store double 0.000000e+00, ptr %i.g, align 8, !noalias !1205
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !1206
  %i.j = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1204
  %i.k = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB27_8adapters3map8map_foldRBQ_TNtNtCscdodAO9FK5_5alloc6string6StringdEuNCNvMs_NtNtNtBW_6models7unigram7trainerNtB4b_14UnigramTrainer8finalizes0_0NCINvNvB21_8for_each4callB3p_NCINvMsj_NtB3u_3vecINtB5S_3VecB3p_E14extend_trustedINtB2R_3MapBF_B44_EE0E0E0EBW_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1204
  resume { ptr, i32 } %i.m

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB27_8adapters3map8map_foldRBQ_TNtNtCscdodAO9FK5_5alloc6string6StringdEuNCNvMs_NtNtNtBW_6models7unigram7trainerNtB4b_14UnigramTrainer8finalizes0_0NCINvNvB21_8for_each4callB3p_NCINvMsj_NtB3u_3vecINtB5S_3VecB3p_E14extend_trustedINtB2R_3MapBF_B44_EE0E0E0EBW_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.j, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1204
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENCNvMs_NtNtNtB1t_6models9wordlevel7trainerNtB2F_16WordLevelTrainer8do_trains_0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvXs_NtB8_4takeINtB4I_4TakepEB3P_8try_fold5checkNtNtCscdodAO9FK5_5alloc6string6StringuINtNtNtBc_3ops9try_trait17NeverShortCircuituENCINvMB64_B61_10wrap_mut_2uB5p_NCINvNvXs_NtB8_9enumerateINtB7p_9EnumeratepEB3P_4fold9enumerateB5p_uNCINvB6_8map_foldTjB5p_ETB5p_mEuNCB2A_s2_0NCINvNvB3P_8for_each4callB8J_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB9E_7HashMapB5p_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB3T_7collect6ExtendB8J_E6extendIBO_IB7F_IB4T_INtNtB8_5chain5ChainBN_IBO_INtNtB8_6filter6FilterINtNtNtB5t_3vec9into_iter8IntoIterTRB5p_RyEENCB2A_s0_0ENCB2A_s1_0EEEEB8R_EE0E0E0E0E0E0INtNtB66_12control_flow11ControlFlowB61_EEB1t_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1233, !nonnull !3, !noundef !3
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !1233
  %i.d = load ptr, ptr %1, align 8, !alias.scope !1232, !nonnull !3, !align !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1232, !nonnull !3, !align !4
  %.promoted11.i = load i64, ptr %i.f, align 8, !alias.scope !1232
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = phi i64 [ %i.n, %bb.c ], [ %.promoted11.i, %bb.a ] ; 2 uses
  %i.h = phi ptr [ %i.i, %bb.c ], [ %.promoted.i, %bb.a ] ; 3 uses
  %.not.not.not.i.not.not.not.not.not = icmp ne ptr %i.h, %i.c ; 2 uses
  br i1 %.not.not.not.i.not.not.not.not.not, label %bb.c, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_NtNtCscdodAO9FK5_5alloc6string6StringuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB48_9try_trait17NeverShortCircuituEENCNvMs_NtNtNtBP_6models9wordlevel7trainerNtB5u_16WordLevelTrainer8do_trains_0QNCINvNvXs_NtB2Q_4takeINtB6N_4TakepEB1U_8try_fold5checkB3r_uB4I_NCINvMB4L_B4I_10wrap_mut_2uB3r_NCINvNvXs_NtB2Q_9enumerateINtB8j_9EnumeratepEB1U_4fold9enumerateB3r_uNCINvB2O_8map_foldTjB3r_ETB3r_mEuNCB5p_s2_0NCINvNvB1U_8for_each4callB9F_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtBaA_7HashMapB3r_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB1Y_7collect6ExtendB9F_E6extendINtB2O_3MapIB8A_IB6Z_INtNtB2Q_5chain5ChainIBcP_B3_B5n_EIBcP_INtNtB2Q_6filter6FilterINtNtNtB3v_3vec9into_iter8IntoIterTRB3r_RyEENCB5p_s0_0ENCB5p_s1_0EEEEB9N_EE0E0E0E0E0E0E0B43_EBP_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !1233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1234
  call void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h), !noalias !1235
  call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  %i.j = load i64, ptr %i.d, align 8, !noalias !1237, !noundef !3
  %i.k = add i64 %i.j, -1
  store i64 %i.k, ptr %i.d, align 8, !noalias !1237
  call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.l = trunc i64 %i.g to i32
  %i.m = call { i32, i32 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %i.l), !noalias !1240 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1234
  %i.n = add i64 %i.g, 1                          ; 2 uses
  store i64 %i.n, ptr %i.f, align 8, !alias.scope !1241, !noalias !1242
  %i.o = load i64, ptr %i.d, align 8, !noalias !1237, !noundef !3
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_NtNtCscdodAO9FK5_5alloc6string6StringuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB48_9try_trait17NeverShortCircuituEENCNvMs_NtNtNtBP_6models9wordlevel7trainerNtB5u_16WordLevelTrainer8do_trains_0QNCINvNvXs_NtB2Q_4takeINtB6N_4TakepEB1U_8try_fold5checkB3r_uB4I_NCINvMB4L_B4I_10wrap_mut_2uB3r_NCINvNvXs_NtB2Q_9enumerateINtB8j_9EnumeratepEB1U_4fold9enumerateB3r_uNCINvB2O_8map_foldTjB3r_ETB3r_mEuNCB5p_s2_0NCINvNvB1U_8for_each4callB9F_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtBaA_7HashMapB3r_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB1Y_7collect6ExtendB9F_E6extendINtB2O_3MapIB8A_IB6Z_INtNtB2Q_5chain5ChainIBcP_B3_B5n_EIBcP_INtNtB2Q_6filter6FilterINtNtNtB3v_3vec9into_iter8IntoIterTRB3r_RyEENCB5p_s0_0ENCB5p_s1_0EEEEB9N_EE0E0E0E0E0E0E0B43_EBP_.exit, label %bb.b

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_NtNtCscdodAO9FK5_5alloc6string6StringuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB48_9try_trait17NeverShortCircuituEENCNvMs_NtNtNtBP_6models9wordlevel7trainerNtB5u_16WordLevelTrainer8do_trains_0QNCINvNvXs_NtB2Q_4takeINtB6N_4TakepEB1U_8try_fold5checkB3r_uB4I_NCINvMB4L_B4I_10wrap_mut_2uB3r_NCINvNvXs_NtB2Q_9enumerateINtB8j_9EnumeratepEB1U_4fold9enumerateB3r_uNCINvB2O_8map_foldTjB3r_ETB3r_mEuNCB5p_s2_0NCINvNvB1U_8for_each4callB9F_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtBaA_7HashMapB3r_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB1Y_7collect6ExtendB9F_E6extendINtB2O_3MapIB8A_IB6Z_INtNtB2Q_5chain5ChainIBcP_B3_B5n_EIBcP_INtNtB2Q_6filter6FilterINtNtNtB3v_3vec9into_iter8IntoIterTRB3r_RyEENCB5p_s0_0ENCB5p_s1_0EEEEB9N_EE0E0E0E0E0E0E0B43_EBP_.exit: ; preds = %bb.b, %bb.c
  ret i1 %.not.not.not.i.not.not.not.not.not
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENCNvNtNtB1t_5utils7padding13pad_encodings0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNvB33_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1t_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1V_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_5utils7padding13pad_encodings0NCINvNvB1P_6max_by4foldjNvYjNtNtBb_3cmp3Ord3cmpE0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.i, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [256 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %.val.i = load i64, ptr %i.j, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1249
  store i64 %.sroa.02.0.i, ptr %i.c, align 8, !noalias !1250
  store i64 %.val.i, ptr %i.b, align 8, !noalias !1250
  %i.k = call noundef i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvYjNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRjB1p_EE9call_onceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %i.l = icmp sgt i8 %i.k, 0
  %.sroa.0.0.i.i.i.i = select i1 %i.l, i64 %.sroa.02.0.i, i64 %.val.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1249
  %i.m = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1V_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_5utils7padding13pad_encodings0NCINvNvB1P_6max_by4foldjNvYjNtNtBb_3cmp3Ord3cmpE0E0EBW_.exit, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1V_8adapters3map8map_foldRBQ_jjNCNvNtNtBW_5utils7padding13pad_encodings0NCINvNvB1P_6max_by4foldjNvYjNtNtBb_3cmp3Ord3cmpE0E0EBW_.exit: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %.sroa.0.0.i.i.i.i, %bb.c ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENCNvMs3_B1p_NtB1p_4Word9get_chars0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2S_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB45_3VecmE14extend_trustedBN_E0E0EB1v_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_muNCNvMs3_BS_NtBS_4Word9get_chars0NCINvNvB1M_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4h_3VecmE14extend_trustedINtB2C_3MapBF_B3c_EE0E0E0EBY_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 5                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 544
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.h = lshr exact i64 %i.d, 3
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.j = getelementptr i8, ptr %i.i, i64 %i.h
  %i.k = getelementptr i8, ptr %0, i64 24
  %i.l = getelementptr i8, ptr %0, i64 %i.d
  %i.m = getelementptr i8, ptr %i.l, i64 -4
  %bound0 = icmp ult ptr %i.g, %i.m
  %bound1 = icmp ult ptr %i.k, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.n = and i64 %i.e, 7                          ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  %i.p = select i1 %i.o, i64 8, i64 %i.n
  %n.vec = sub nsw i64 %i.e, %i.p                 ; 3 uses
  %i.q = add i64 %.sroa.5.0.copyload, %n.vec
  %i.r = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %index
  %i.aa = getelementptr i8, ptr %i.s, i64 24
  %i.ab = getelementptr i8, ptr %i.t, i64 56
  %i.ac = getelementptr i8, ptr %i.u, i64 88
  %i.ad = getelementptr i8, ptr %i.v, i64 120
  %i.ae = getelementptr i8, ptr %i.w, i64 152
  %i.af = getelementptr i8, ptr %i.x, i64 184
  %i.ag = getelementptr i8, ptr %i.y, i64 216
  %i.ah = getelementptr i8, ptr %i.z, i64 248
  %i.ai = load i32, ptr %i.aa, align 8, !alias.scope !1265, !noalias !1266
  %i.aj = load i32, ptr %i.ab, align 8, !alias.scope !1265, !noalias !1266
  %i.ak = load i32, ptr %i.ac, align 8, !alias.scope !1265, !noalias !1266
  %i.al = load i32, ptr %i.ad, align 8, !alias.scope !1265, !noalias !1266
  %i.am = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 1
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 2
  %i.ap = insertelement <4 x i32> %i.ao, i32 %i.al, i64 3
  %i.aq = load i32, ptr %i.ae, align 8, !alias.scope !1265, !noalias !1266
  %i.ar = load i32, ptr %i.af, align 8, !alias.scope !1265, !noalias !1266
  %i.as = load i32, ptr %i.ag, align 8, !alias.scope !1265, !noalias !1266
  %i.at = load i32, ptr %i.ah, align 8, !alias.scope !1265, !noalias !1266
  %i.au = insertelement <4 x i32> poison, i32 %i.aq, i64 0
  %i.av = insertelement <4 x i32> %i.au, i32 %i.ar, i64 1
  %i.aw = insertelement <4 x i32> %i.av, i32 %i.as, i64 2
  %i.ax = insertelement <4 x i32> %i.aw, i32 %i.at, i64 3
  %i.ay = getelementptr [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x i32> %i.ap, ptr %i.ay, align 4, !alias.scope !1267, !noalias !1268
  store <4 x i32> %i.ax, ptr %i.az, align 4, !alias.scope !1267, !noalias !1268
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1262

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.q, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.bb = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.bb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.bc = phi i64 [ %i.bg, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.bh, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %i.be = getelementptr i8, ptr %i.bd, i64 24
  %.val16.i.prol = load i32, ptr %i.be, align 8, !noalias !1266, !noundef !3
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bc
  store i32 %.val16.i.prol, ptr %i.bf, align 4, !noalias !1269
  %i.bg = add i64 %i.bc, 1                        ; 3 uses
  %i.bh = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1263

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.bg, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.bg, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.bh, %scalar.ph.prol ]
  %i.bi = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.bj = icmp ugt i64 %i.bi, -4
  br i1 %i.bj, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_muNCNvMs3_BS_NtBS_4Word9get_chars0NCINvNvB1M_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4h_3VecmE14extend_trustedINtB2C_3MapBF_B3c_EE0E0E0EBY_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bk = phi i64 [ %i.ca, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.cb, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 24
  %.val16.i = load i32, ptr %i.bm, align 8, !noalias !1266, !noundef !3
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bk
  store i32 %.val16.i, ptr %i.bn, align 4, !noalias !1269
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 56
  %.val16.i.1 = load i32, ptr %i.bp, align 8, !noalias !1266, !noundef !3
  %i.bq = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bk
  %i.br = getelementptr i8, ptr %i.bq, i64 4
  store i32 %.val16.i.1, ptr %i.br, align 4, !noalias !1269
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 88
  %.val16.i.2 = load i32, ptr %i.bt, align 8, !noalias !1266, !noundef !3
  %i.bu = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bk
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  store i32 %.val16.i.2, ptr %i.bv, align 4, !noalias !1269
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 120
  %.val16.i.3 = load i32, ptr %i.bx, align 8, !noalias !1266, !noundef !3
  %i.by = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bk
  %i.bz = getelementptr i8, ptr %i.by, i64 12
  store i32 %.val16.i.3, ptr %i.bz, align 4, !noalias !1269
  %i.ca = add i64 %i.bk, 4                        ; 2 uses
  %i.cb = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.cc = icmp eq i64 %i.cb, %i.e
  br i1 %i.cc, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_muNCNvMs3_BS_NtBS_4Word9get_chars0NCINvNvB1M_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4h_3VecmE14extend_trustedINtB2C_3MapBF_B3c_EE0E0E0EBY_.exit, label %scalar.ph, !llvm.loop !1264

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_muNCNvMs3_BS_NtBS_4Word9get_chars0NCINvNvB1M_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4h_3VecmE14extend_trustedINtB2C_3MapBF_B3c_EE0E0E0EBY_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ca, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1266
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENCNvXs2_B1p_NtB1p_4WordNtNtBc_3fmt5Debug3fmt0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB33_8for_each4callNtNtCscdodAO9FK5_5alloc6string6StringNCINvMsj_NtB4a_3vecINtB4Q_3VecB46_E14extend_trustedBN_E0E0EB1v_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [10 x i8], align 1                ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_NtNtCscdodAO9FK5_5alloc6string6StringuNCNvXs2_BS_NtBS_4WordNtNtBb_3fmt5Debug3fmt0NCINvNvB1M_8for_each4callB3a_NCINvMsj_NtB3e_3vecINtB55_3VecB3a_E14extend_trustedINtB2C_3MapBF_B3M_EE0E0E0EBY_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.v, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.w, %bb.g ] ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.k = getelementptr i8, ptr %i.j, i64 24
  %.val16.i = load i32, ptr %i.k, align 8, !noalias !1280, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1281
  %i.l = invoke { ptr, i64 } @_RNvMsa_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impm4__fmt(i32 noundef %.val16.i, ptr noalias noundef nonnull %i.b, i64 noundef 10)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1280 ; 2 uses

.noexc.i:                                         ; preds = %bb.c
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1281
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.n, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1280

.noexc17.i:                                       ; preds = %.noexc.i
  %i.o = load i64, ptr %i.a, align 8, !range !5, !noalias !1281, !noundef !3
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = load i64, ptr %i.h, align 8, !range !6, !noalias !1281, !noundef !3 ; 3 uses
  br i1 %i.p, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %.noexc17.i
  %i.r = load i64, ptr %i.i, align 8, !noalias !1281
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.r) #30
          to label %.noexc18.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !1280

.noexc18.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc17.i
  %i.s = load ptr, ptr %i.i, align 8, !noalias !1281, !nonnull !3, !noundef !3 ; 2 uses
  %i.t = icmp ule i64 %i.n, %i.q
  call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1281
  %.not.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.m, i64 %i.n, i1 false), !noalias !1281
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1281
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i ; 3 uses
  store i64 %i.q, ptr %i.u, align 8, !noalias !1282
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.s, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1282
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.n, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1282
  %i.v = add i64 %.val15.i, 1                     ; 2 uses
  %i.w = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.g
  br i1 %i.x, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_NtNtCscdodAO9FK5_5alloc6string6StringuNCNvXs2_BS_NtBS_4WordNtNtBb_3fmt5Debug3fmt0NCINvNvB1M_8for_each4callB3a_NCINvMsj_NtB3e_3vecINtB55_3VecB3a_E14extend_trustedINtB2C_3MapBF_B3M_EE0E0E0EBY_.exit, label %bb.c

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %.noexc.i, %bb.d
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1280
  resume { ptr, i32 } %lpad.loopexit.split-lp24

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_NtNtCscdodAO9FK5_5alloc6string6StringuNCNvXs2_BS_NtBS_4WordNtNtBb_3fmt5Debug3fmt0NCINvNvB1M_8for_each4callB3a_NCINvMsj_NtB3e_3vecINtB55_3VecB3a_E14extend_trustedINtB2C_3MapBF_B3M_EE0E0E0EBY_.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.v, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1280
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB29_14UnigramTrainer14required_chars0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenNtNtNtBc_3str4iter5CharsuNCINvNvXsi_B4v_B4I_B3G_4fold7flattenB5p_uQNCINvB6_8map_foldcB1o_uNCB24_s_0NCIB6x_B1o_TB1o_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB7s_7HashSetB1o_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB3K_7collect6ExtendB1o_E6extendIBO_INtNtB8_5chain5ChainINtB4v_7FlatMapBX_B5p_B22_EINtNtB8_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB6R_EE0NCINvNvB3G_8for_each4callB7b_NCINvXs1i_NtB7u_3mapINtBcw_7HashMapB1o_uB8f_EIB96_B7b_E6extendIBO_B9F_B7j_EE0E0E0E0E0E0EB2f_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i.i.i.i.i = alloca i32, align 4        ; 16 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1B_8adapters3map8map_foldRBQ_NtNtNtBb_3str4iter5CharsuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3p_14UnigramTrainer14required_chars0NCINvNvMsg_NtB2n_7flattenINtB56_13FlattenCompatppE9iter_fold7flattenB2T_uNCINvNvXsi_B56_B5k_B1v_4fold7flattenB2T_uQNCIB2j_cBR_uNCB3k_s_0NCIB2j_BR_TBR_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB7x_7HashSetBR_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB1z_7collect6ExtendBR_E6extendINtB2l_3MapINtNtB2n_5chain5ChainINtB56_7FlatMapBF_B2T_B3i_EINtNtB2n_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB6Y_EE0NCINvNvB1v_8for_each4callB7h_NCINvXs1i_NtB7z_3mapINtBcI_7HashMapBR_uB8j_EIB9a_B7h_E6extendIB9J_B9I_B7o_EE0E0E0E0E0E0E0EB3v_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i = load ptr, ptr %2, align 8, !nonnull !3, !align !4 ; 2 uses
  %.sroa.0.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.1.i.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i, i64 1
  %.sroa.0.i.i.i.i.i.2.i.i.i.i.i.2.i.i.i.i.i.2.i.i.i.i.2.i.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i, i64 2
  %.sroa.0.i.i.i.i.i.3.i.i.i.i.i.3.i.i.i.i.i.3.i.i.i.i.3.i.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i, i64 3
  %.sroa.0.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.1.i.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx15 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i, i64 1
  %.sroa.0.i.i.i.i.i.2.i.i.i.i.i.2.i.i.i.i.i.2.i.i.i.i.2.i.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx17 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i, i64 2
  %.sroa.0.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.1.i.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx16 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i, i64 1
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB29_14UnigramTrainer14required_chars0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4v_13FlattenCompatppE9iter_fold7flattenNtNtNtBc_3str4iter5CharsuNCINvNvXsi_B4v_B4I_B3G_4fold7flattenB5p_uQNCINvB6_8map_foldcB1o_uNCB24_s_0NCIB6x_B1o_TB1o_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB7s_7HashSetB1o_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB3K_7collect6ExtendB1o_E6extendIBO_INtNtB8_5chain5ChainINtB4v_7FlatMapBX_B5p_B22_EINtNtB8_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB6R_EE0NCINvNvB3G_8for_each4callB7b_NCINvXs1i_NtB7u_3mapINtBcw_7HashMapB1o_uB8f_EIB96_B7b_E6extendIBO_B9F_B7j_EE0E0E0E0E0E0EB2f_:bb.a

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldcNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer14required_charss_0NCIBS_B1v_TB1v_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB4d_7HashSetB1v_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtBY_6traits7collect6ExtendB1v_E6extendINtBU_3MapINtNtBW_5chain5ChainINtNtBW_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1v_mEENtNtNtBb_3str4iter5CharsNCB29_0EINtNtBW_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB27_EE0NCINvNvNtNtB5V_8iterator8Iterator8for_each4callB3W_NCINvXs1i_NtB4f_3mapINtBaS_7HashMapB1v_uB50_EIB5R_B3W_E6extendIB6z_B6y_B44_EE0E0E0E0INtB7_5FnMutTucEE8call_mutB2k_.exit.i
  %.sroa.0.010.i.i.i.i.i = phi ptr [ %.sroa.0.1.ph.i.i.i.i20.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldcNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer14required_charss_0NCIBS_B1v_TB1v_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB4d_7HashSetB1v_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtBY_6traits7collect6ExtendB1v_E6extendINtBU_3MapINtNtBW_5chain5ChainINtNtBW_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1v_mEENtNtNtBb_3str4iter5CharsNCB29_0EINtNtBW_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB27_EE0NCINvNvNtNtB5V_8iterator8Iterator8for_each4callB3W_NCINvXs1i_NtB4f_3mapINtBaS_7HashMapB1v_uB50_EIB5R_B3W_E6extendIB6z_B6y_B44_EE0E0E0E0INtB7_5FnMutTucEE8call_mutB2k_.exit.i ], [ %.val10.i, %bb.c ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 1 ; 3 uses
  %i.o = load i8, ptr %.sroa.0.010.i.i.i.i.i, align 1, !noalias !1308, !noundef !3 ; 5 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %.thread.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.q = and i8 %i.o, 31
  %i.r = zext nneg i8 %i.q to i32                 ; 3 uses
  %i.s = icmp ne ptr %i.n, %i.m
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 2 ; 3 uses
  %i.u = load i8, ptr %i.n, align 1, !noalias !1308, !noundef !3
  %i.v = shl nuw nsw i32 %i.r, 6
  %i.w = and i8 %i.u, 63
  %i.x = zext nneg i8 %i.w to i32                 ; 2 uses
  %i.y = or disjoint i32 %i.v, %i.x
  %i.z = icmp samesign ugt i8 %i.o, -33
  br i1 %i.z, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i, label %bb.d

.thread.i:                                        ; preds = %.lr.ph.i.i.i.i.i
  %i.aa = zext nneg i8 %i.o to i32
  %.val.i.i19.i = load ptr, ptr %.val.i.i, align 8, !noalias !1309
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  store i32 0, ptr %.sroa.0.i.i.i.i.i, align 4, !noalias !1310
  br label %bb.f

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i
  %i.ab = icmp ne ptr %i.t, %i.m
  call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 3 ; 3 uses
  %i.ad = load i8, ptr %i.t, align 1, !noalias !1308, !noundef !3
  %i.ae = shl nuw nsw i32 %i.x, 6
  %i.af = and i8 %i.ad, 63
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ae, %i.ag            ; 2 uses
  %i.ai = shl nuw nsw i32 %i.r, 12
  %i.aj = or disjoint i32 %i.ah, %i.ai
  %i.ak = icmp samesign ugt i8 %i.o, -17
  br i1 %i.ak, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i.i, label %bb.d

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i
  %i.al = icmp ne ptr %i.ac, %i.m
  call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 4
  %i.an = load i8, ptr %i.ac, align 1, !noalias !1308, !noundef !3
  %i.ao = shl nuw nsw i32 %i.r, 18
  %i.ap = and i32 %i.ao, 1835008
  %i.aq = shl nuw nsw i32 %i.ah, 6
  %i.ar = and i8 %i.an, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = or disjoint i32 %i.aq, %i.as
  %i.au = or disjoint i32 %i.at, %i.ap
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i
  %.sroa.0.1.ph.i.i.i.i.i = phi ptr [ %i.t, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i ], [ %i.ac, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i.i ] ; 4 uses
  %spec.select.i.ph.i.i.i.i.i = phi i32 [ %i.y, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i.i.i.i.i ], [ %i.aj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i.i.i.i.i ], [ %i.au, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i.i.i.i.i ] ; 8 uses
  %.val.i.i.i = load ptr, ptr %.val.i.i, align 8, !noalias !1311 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  store i32 0, ptr %.sroa.0.i.i.i.i.i, align 4, !noalias !1312
  %i.av = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i, 128
  br i1 %i.av, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i, 2048
  %i.ax = trunc i32 %spec.select.i.ph.i.i.i.i.i to i8
  %i.ay = and i8 %i.ax, 63
  %i.az = or disjoint i8 %i.ay, -128              ; 3 uses
  %i.ba = lshr i32 %spec.select.i.ph.i.i.i.i.i, 6
  %i.bb = trunc i32 %i.ba to i8                   ; 2 uses
  %i.bc = and i8 %i.bb, 63
  %i.bd = or disjoint i8 %i.bc, -128              ; 2 uses
  %i.be = lshr i32 %spec.select.i.ph.i.i.i.i.i, 12
  %i.bf = trunc i32 %i.be to i8                   ; 2 uses
  %i.bg = and i8 %i.bf, 63
  %i.bh = or disjoint i8 %i.bg, -128
  %i.bi = lshr i32 %spec.select.i.ph.i.i.i.i.i, 18
  %i.bj = trunc nuw nsw i32 %i.bi to i8
  %i.bk = or disjoint i8 %i.bj, -16
  br i1 %i.aw, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d, %.thread.i
  %.val.i.i24.i = phi ptr [ %.val.i.i19.i, %.thread.i ], [ %.val.i.i.i, %bb.d ]
  %spec.select.i.ph.i.i.i.i22.i = phi i32 [ %i.aa, %.thread.i ], [ %spec.select.i.ph.i.i.i.i.i, %bb.d ]
  %.sroa.0.1.ph.i.i.i.i21.i = phi ptr [ %i.n, %.thread.i ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.d ]
  %i.bl = trunc nuw nsw i32 %spec.select.i.ph.i.i.i.i22.i to i8
  store i8 %i.bl, ptr %.sroa.0.i.i.i.i.i, align 4, !alias.scope !1313, !noalias !1312
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.bm = or disjoint i8 %i.bb, -64
  store i8 %i.bm, ptr %.sroa.0.i.i.i.i.i, align 4, !alias.scope !1313, !noalias !1312
  store i8 %i.az, ptr %.sroa.0.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.1.i.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx16, align 1, !alias.scope !1313, !noalias !1312
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.bn = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i, 65536
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = or disjoint i8 %i.bf, -32
  store i8 %i.bo, ptr %.sroa.0.i.i.i.i.i, align 4, !alias.scope !1313, !noalias !1312
  store i8 %i.bd, ptr %.sroa.0.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.1.i.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx15, align 1, !alias.scope !1313, !noalias !1312
  store i8 %i.az, ptr %.sroa.0.i.i.i.i.i.2.i.i.i.i.i.2.i.i.i.i.i.2.i.i.i.i.2.i.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx17, align 2, !alias.scope !1313, !noalias !1312
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  store i8 %i.bk, ptr %.sroa.0.i.i.i.i.i, align 4, !alias.scope !1313, !noalias !1312
  store i8 %i.bh, ptr %.sroa.0.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.1.i.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx, align 1, !alias.scope !1313, !noalias !1312
  store i8 %i.bd, ptr %.sroa.0.i.i.i.i.i.2.i.i.i.i.i.2.i.i.i.i.i.2.i.i.i.i.2.i.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx, align 2, !alias.scope !1313, !noalias !1312
  store i8 %i.az, ptr %.sroa.0.i.i.i.i.i.3.i.i.i.i.i.3.i.i.i.i.i.3.i.i.i.i.3.i.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx, align 1, !alias.scope !1313, !noalias !1312
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %.val.i.i23.i = phi ptr [ %.val.i.i24.i, %bb.f ], [ %.val.i.i.i, %bb.g ], [ %.val.i.i.i, %bb.i ], [ %.val.i.i.i, %bb.j ] ; 2 uses
  %.sroa.0.1.ph.i.i.i.i20.i = phi ptr [ %.sroa.0.1.ph.i.i.i.i21.i, %bb.f ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.g ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.i ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.j ] ; 2 uses
  %.sroa.0.05.i.i.i.i.i.i = phi i64 [ 1, %bb.f ], [ 2, %bb.g ], [ 3, %bb.i ], [ 4, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1312
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.05.i.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1312
  %i.bp = load i64, ptr %i.b, align 8, !range !5, !noalias !1312, !noundef !3
  %i.bq = trunc nuw i64 %i.bp to i1
  %i.br = load i64, ptr %i.h, align 8, !range !6, !noalias !1312, !noundef !3 ; 3 uses
  br i1 %i.bq, label %bb.k, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldcNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer14required_charss_0NCIBS_B1v_TB1v_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB4d_7HashSetB1v_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtBY_6traits7collect6ExtendB1v_E6extendINtBU_3MapINtNtBW_5chain5ChainINtNtBW_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1v_mEENtNtNtBb_3str4iter5CharsNCB29_0EINtNtBW_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB27_EE0NCINvNvNtNtB5V_8iterator8Iterator8for_each4callB3W_NCINvXs1i_NtB4f_3mapINtBaS_7HashMapB1v_uB50_EIB5R_B3W_E6extendIB6z_B6y_B44_EE0E0E0E0INtB7_5FnMutTucEE8call_mutB2k_.exit.i, !prof !7

bb.k:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i
  %i.bs = load i64, ptr %i.i, align 8, !noalias !1312
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.br, i64 %i.bs) #30, !noalias !1312
  unreachable

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldcNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer14required_charss_0NCIBS_B1v_TB1v_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB4d_7HashSetB1v_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtBY_6traits7collect6ExtendB1v_E6extendINtBU_3MapINtNtBW_5chain5ChainINtNtBW_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1v_mEENtNtNtBb_3str4iter5CharsNCB29_0EINtNtBW_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB27_EE0NCINvNvNtNtB5V_8iterator8Iterator8for_each4callB3W_NCINvXs1i_NtB4f_3mapINtBaS_7HashMapB1v_uB50_EIB5R_B3W_E6extendIB6z_B6y_B44_EE0E0E0E0INtB7_5FnMutTucEE8call_mutB2k_.exit.i: ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i.i.i.i
  %i.bt = load ptr, ptr %i.i, align 8, !noalias !1312, !nonnull !3, !noundef !3 ; 2 uses
  %i.bu = icmp samesign ule i64 %.sroa.0.05.i.i.i.i.i.i, %i.br
  call void @llvm.assume(i1 %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bt, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0.i.i.i.i.i, i64 %.sroa.0.05.i.i.i.i.i.i, i1 false), !noalias !1312
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1314
  store i64 %i.br, ptr %i.a, align 8, !noalias !1311
  store ptr %i.bt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !1311
  store i64 %.sroa.0.05.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !1311
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i23.i) ]
  %i.bv = call noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringuNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val.i.i23.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1314 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1314
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i20.i, %i.m
  br i1 %.not.i.i.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRTNtNtCscdodAO9FK5_5alloc6string6StringmENtNtNtBa_3str4iter5CharsuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB25_14UnigramTrainer14required_chars0NCINvNvMsg_NtB6_7flattenINtB3M_13FlattenCompatppE9iter_fold7flattenB1z_uNCINvNvXsi_B3M_B3Z_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1z_uQNCIB2_cBW_uNCB20_s_0NCIB2_BW_TBW_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6E_7HashSetBW_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB58_7collect6ExtendBW_E6extendINtB4_3MapINtNtB6_5chain5ChainINtB3M_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB1z_B1Y_EINtNtB6_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB66_EE0NCINvNvB54_8for_each4callB6o_NCINvXs1i_NtB6G_3mapINtBcd_7HashMapBW_uB7q_EIB8h_B6o_E6extendIB8Q_B8P_B6v_EE0E0E0E0E0E0E0B2b_.exit.i, label %.lr.ph.i.i.i.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRTNtNtCscdodAO9FK5_5alloc6string6StringmENtNtNtBa_3str4iter5CharsuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB25_14UnigramTrainer14required_chars0NCINvNvMsg_NtB6_7flattenINtB3M_13FlattenCompatppE9iter_fold7flattenB1z_uNCINvNvXsi_B3M_B3Z_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1z_uQNCIB2_cBW_uNCB20_s_0NCIB2_BW_TBW_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6E_7HashSetBW_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB58_7collect6ExtendBW_E6extendINtB4_3MapINtNtB6_5chain5ChainINtB3M_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB1z_B1Y_EINtNtB6_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB66_EE0NCINvNvB54_8for_each4callB6o_NCINvXs1i_NtB6G_3mapINtBcd_7HashMapBW_uB7q_EIB8h_B6o_E6extendIB8Q_B8P_B6v_EE0E0E0E0E0E0E0B2b_.exit.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldcNtNtCscdodAO9FK5_5alloc6string6StringuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer14required_charss_0NCIBS_B1v_TB1v_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB4d_7HashSetB1v_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtBY_6traits7collect6ExtendB1v_E6extendINtBU_3MapINtNtBW_5chain5ChainINtNtBW_7flatten7FlatMapINtNtNtBb_5slice4iter4IterTB1v_mEENtNtNtBb_3str4iter5CharsNCB29_0EINtNtBW_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB27_EE0NCINvNvNtNtB5V_8iterator8Iterator8for_each4callB3W_NCINvXs1i_NtB4f_3mapINtBaS_7HashMapB1v_uB50_EIB5R_B3W_E6extendIB6z_B6y_B44_EE0E0E0E0INtB7_5FnMutTucEE8call_mutB2k_.exit.i, %bb.c
  %i.bw = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.bx = icmp eq i64 %i.bw, %i.g
  br i1 %i.bx, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1B_8adapters3map8map_foldRBQ_NtNtNtBb_3str4iter5CharsuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3p_14UnigramTrainer14required_chars0NCINvNvMsg_NtB2n_7flattenINtB56_13FlattenCompatppE9iter_fold7flattenB2T_uNCINvNvXsi_B56_B5k_B1v_4fold7flattenB2T_uQNCIB2j_cBR_uNCB3k_s_0NCIB2j_BR_TBR_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB7x_7HashSetBR_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB1z_7collect6ExtendBR_E6extendINtB2l_3MapINtNtB2n_5chain5ChainINtB56_7FlatMapBF_B2T_B3i_EINtNtB2n_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB6Y_EE0NCINvNvB1v_8for_each4callB7h_NCINvXs1i_NtB7z_3mapINtBcI_7HashMapBR_uB8j_EIB9a_B7h_E6extendIB9J_B9I_B7o_EE0E0E0E0E0E0E0EB3v_.exit, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1B_8adapters3map8map_foldRBQ_NtNtNtBb_3str4iter5CharsuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB3p_14UnigramTrainer14required_chars0NCINvNvMsg_NtB2n_7flattenINtB56_13FlattenCompatppE9iter_fold7flattenB2T_uNCINvNvXsi_B56_B5k_B1v_4fold7flattenB2T_uQNCIB2j_cBR_uNCB3k_s_0NCIB2j_BR_TBR_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB7x_7HashSetBR_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB1z_7collect6ExtendBR_E6extendINtB2l_3MapINtNtB2n_5chain5ChainINtB56_7FlatMapBF_B2T_B3i_EINtNtB2n_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB6Y_EE0NCINvNvB1v_8for_each4callB7h_NCINvXs1i_NtB7z_3mapINtBcI_7HashMapBR_uB8j_EIB9a_B7h_E6extendIB9J_B9I_B7o_EE0E0E0E0E0E0E0EB3v_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRTNtNtCscdodAO9FK5_5alloc6string6StringmENtNtNtBa_3str4iter5CharsuNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB25_14UnigramTrainer14required_chars0NCINvNvMsg_NtB6_7flattenINtB3M_13FlattenCompatppE9iter_fold7flattenB1z_uNCINvNvXsi_B3M_B3Z_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1z_uQNCIB2_cBW_uNCB20_s_0NCIB2_BW_TBW_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6E_7HashSetBW_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB58_7collect6ExtendBW_E6extendINtB4_3MapINtNtB6_5chain5ChainINtB3M_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB1z_B1Y_EINtNtB6_6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEEEB66_EE0NCINvNvB54_8for_each4callB6o_NCINvXs1i_NtB6G_3mapINtBcd_7HashMapBW_uB7q_EIB8h_B6o_E6extendIB8Q_B8P_B6v_EE0E0E0E0E0E0E0B2b_.exit.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTjjEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB1B_16NormalizedString5sliceINtNtNtBc_3ops5range5RangejEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3q_8for_each4callB1n_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4G_3VecB1n_E14extend_trustedBN_E0E0EB1F_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !align !4, !noundef !3 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2w_16NormalizedString5sliceINtNtNtBb_3ops5range5RangejEE0NCINvNvBV_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4U_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0EB2A_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 4 uses
  %i.j = lshr i64 %i.i, 4                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 160
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 4           ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 %i.i     ; 2 uses
  %i.o = getelementptr i8, ptr %i.e, i64 8
  %bound0 = icmp ult ptr %i.l, %i.c
  %bound1 = icmp ult ptr %i.a, %i.n
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %i.l, %i.o
  %bound19 = icmp ult ptr %i.e, %i.n
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 1152921504606846974      ; 4 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.q = load i64, ptr %i.e, align 8, !alias.scope !1329, !noalias !1330
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.q, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.r = add i64 %.sroa.5.0.copyload, %index      ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %index
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %index
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <2 x i64>, ptr %i.s, align 8, !alias.scope !1331, !noalias !1332
  %wide.load11 = load <2 x i64>, ptr %i.u, align 8, !alias.scope !1331, !noalias !1332
  %i.v = sub <2 x i64> %wide.load, %broadcast.splat
  %i.w = sub <2 x i64> %wide.load11, %broadcast.splat
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.r
  %i.y = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.r
  %i.z = getelementptr i8, ptr %i.y, i64 16
  store <2 x i64> %i.v, ptr %i.x, align 8, !alias.scope !1333, !noalias !1334
  store <2 x i64> %i.w, ptr %i.z, align 8, !alias.scope !1333, !noalias !1334
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !1327

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2w_16NormalizedString5sliceINtNtNtBb_3ops5range5RangejEE0NCINvNvBV_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4U_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0EB2A_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.ab = and i64 %i.i, 16
  %lcmp.mod.not = icmp eq i64 %i.ab, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %i.ad = load i64, ptr %i.e, align 8, !noalias !1330, !noundef !3
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  %i.af = load <2 x i64>, ptr %i.ac, align 8, !noalias !1332
  %i.ag = insertelement <2 x i64> poison, i64 %i.ad, i64 0
  %i.ah = shufflevector <2 x i64> %i.ag, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ai = sub <2 x i64> %i.af, %i.ah
  store <2 x i64> %i.ai, ptr %i.ae, align 8, !noalias !1335
  %i.aj = add i64 %.ph, 1                         ; 2 uses
  %i.ak = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aj, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aj, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ak, %scalar.ph.prol ]
  %i.al = icmp eq i64 %i.j, %.neg
  br i1 %i.al, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2w_16NormalizedString5sliceINtNtNtBb_3ops5range5RangejEE0NCINvNvBV_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4U_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0EB2A_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.am = phi i64 [ %i.bd, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.be, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.ao = load i64, ptr %i.e, align 8, !noalias !1330, !noundef !3
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.am
  %i.aq = load <2 x i64>, ptr %i.an, align 8, !noalias !1332
  %i.ar = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %i.as = shufflevector <2 x i64> %i.ar, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.at = sub <2 x i64> %i.aq, %i.as
  store <2 x i64> %i.at, ptr %i.ap, align 8, !noalias !1335
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i64, ptr %i.e, align 8, !noalias !1330, !noundef !3
  %i.ax = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.am
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %i.az = load <2 x i64>, ptr %i.av, align 8, !noalias !1332
  %i.ba = insertelement <2 x i64> poison, i64 %i.aw, i64 0
  %i.bb = shufflevector <2 x i64> %i.ba, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bc = sub <2 x i64> %i.az, %i.bb
  store <2 x i64> %i.bc, ptr %i.ay, align 8, !noalias !1335
  %i.bd = add i64 %i.am, 2                        ; 2 uses
  %i.be = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.bf = icmp eq i64 %i.be, %i.j
  br i1 %i.bf, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2w_16NormalizedString5sliceINtNtNtBb_3ops5range5RangejEE0NCINvNvBV_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4U_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0EB2A_.exit, label %scalar.ph, !llvm.loop !1328

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTjjEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2w_16NormalizedString5sliceINtNtNtBb_3ops5range5RangejEE0NCINvNvBV_8for_each4callBQ_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4U_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0EB2A_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bd, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1332
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB29_8for_each4callhNCINvMsj_NtB1v_3vecINtB3m_3VechE14extend_trustedBN_E0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.l = add i64 %i.i, -1
  %i.m = icmp eq i64 %i.l, %i.j
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %i.n = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load i8, ptr %i.o, align 1, !noalias !1344, !noundef !3 ; 2 uses
  %i.p = load i8, ptr %i.e, align 1, !noalias !1345, !noundef !3
  %i.q = icmp eq i8 %.val16.i, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.g, align 1, !noalias !1345, !noundef !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.d ], [ %.val16.i, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.n
  store i8 %.sroa.0.0.i.i.i, ptr %i.s, align 1, !noalias !1346
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.val16.i.1 = load i8, ptr %i.u, align 1, !noalias !1344, !noundef !3 ; 2 uses
  %i.v = load i8, ptr %i.e, align 1, !noalias !1345, !noundef !3
  %i.w = icmp eq i8 %.val16.i.1, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i8, ptr %i.g, align 1, !noalias !1345, !noundef !3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.x, %bb.f ], [ %.val16.i.1, %bb.e ]
  %i.y = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.n
  %i.z = getelementptr i8, ptr %i.y, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.z, align 1, !noalias !1346
  %i.aa = add i64 %i.n, 2                         ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val16.i.epil = load i8, ptr %i.ac, align 1, !noalias !1344, !noundef !3 ; 2 uses
  %i.ad = load i8, ptr %i.e, align 1, !noalias !1345, !noundef !3
  %i.ae = icmp eq i8 %.val16.i.epil, %i.ad
  br i1 %i.ae, label %bb.h, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.epil.preheader
  %i.af = load i8, ptr %i.g, align 1, !noalias !1345, !noundef !3
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.epilog-lcssa

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.af, %bb.h ], [ %.val16.i.epil, %.epil.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.ag, align 1, !noalias !1346
  %i.ah = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa ], [ %i.ah, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.loopexit.epilog-lcssa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1344
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2D_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3Q_3VecmE14extend_trustedBN_E0E0EB1x_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
end_hunk_1
