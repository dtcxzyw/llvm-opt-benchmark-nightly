Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.14?download=true
inline.NumInlined: 504
inline.NumDeleted: 240
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterINtNtNtBb_3ops5range5RangeyEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1W_8for_each4callB1s_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3c_3VecB1s_E14extend_trustedBP_E0E0ECshovLROGBtMy_11quinn_proto:bb.a
  br i1 %i.q, label %middle.block, label %vector.body, !dbg !5015, !llvm.loop !5016

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !5015
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1j_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecBQ_E14extend_trustedINtNtB2b_6cloned6ClonedBF_EE0E0E0ECshovLROGBtMy_11quinn_proto.exit, label %scalar.ph.preheader, !dbg !5015

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !5015
  %i.r = and i64 %i.d, 16, !dbg !5015
  %lcmp.mod.not = icmp eq i64 %i.r, 0, !dbg !5015
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !5015

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
    #dbg_value(i64 poison, !4907, !DIExpression(), !4908)
    #dbg_value(i64 poison, !4861, !DIExpression(), !4932)
    #dbg_value(ptr %0, !4951, !DIExpression(), !5017)
    #dbg_value(i64 poison, !4952, !DIExpression(), !5017)
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.ph, !dbg !4945
    #dbg_value(ptr %i.s, !4928, !DIExpression(), !5018)
    #dbg_value(ptr poison, !4993, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5020)
    #dbg_declare(ptr poison, !4991, !DIExpression(), !5021)
    #dbg_value(ptr poison, !4992, !DIExpression(), !5020)
    #dbg_value(ptr poison, !4981, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5022)
    #dbg_declare(ptr poison, !4982, !DIExpression(), !5023)
    #dbg_value(i64 poison, !4980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5022)
    #dbg_value(i64 poison, !4980, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5022)
    #dbg_value(ptr poison, !4969, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !5024)
    #dbg_value(ptr poison, !4970, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5024)
    #dbg_value(i64 poison, !4968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5024)
    #dbg_value(i64 poison, !4968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5024)
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sroa.58.0.copyload, i64 %.ph, !dbg !4958
  %i.u = load <2 x i64>, ptr %i.s, align 8, !dbg !4954, !noalias !4955
  store <2 x i64> %i.u, ptr %i.t, align 8, !dbg !4999, !noalias !5025
  %i.v = add i64 %.ph, 1, !dbg !5026              ; 2 uses
  %i.w = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !5034
    #dbg_value(i64 %i.w, !4861, !DIExpression(), !4932)
    #dbg_value(i64 %i.w, !4907, !DIExpression(), !4908)
  br label %scalar.ph.prol.loopexit, !dbg !5015

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %i.x = icmp eq i64 %i.e, %.neg, !dbg !5015
  br i1 %i.x, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1j_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecBQ_E14extend_trustedINtNtB2b_6cloned6ClonedBF_EE0E0E0ECshovLROGBtMy_11quinn_proto.exit, label %scalar.ph, !dbg !5015

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.y = phi i64 [ %i.ah, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !4945 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ai, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !4944 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i, !4907, !DIExpression(), !4908)
    #dbg_value(i64 %.sroa.01.0.i, !4861, !DIExpression(), !4932)
    #dbg_value(ptr %0, !4951, !DIExpression(), !5017)
    #dbg_value(i64 %.sroa.01.0.i, !4952, !DIExpression(), !5017)
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !4945
    #dbg_value(ptr %i.z, !4928, !DIExpression(), !5018)
    #dbg_value(ptr poison, !4993, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5020)
    #dbg_declare(ptr poison, !4991, !DIExpression(), !5021)
    #dbg_value(ptr poison, !4992, !DIExpression(), !5020)
    #dbg_value(ptr poison, !4981, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5022)
    #dbg_declare(ptr poison, !4982, !DIExpression(), !5023)
    #dbg_value(i64 poison, !4980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5022)
    #dbg_value(i64 poison, !4980, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5022)
    #dbg_value(ptr poison, !4969, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !5024)
    #dbg_value(ptr poison, !4970, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5024)
    #dbg_value(i64 poison, !4968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5024)
    #dbg_value(i64 poison, !4968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5024)
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.58.0.copyload, i64 %i.y, !dbg !4958
  %i.ab = load <2 x i64>, ptr %i.z, align 8, !dbg !4954, !noalias !4955
  store <2 x i64> %i.ab, ptr %i.aa, align 8, !dbg !4999, !noalias !5025
    #dbg_value(i64 %.sroa.01.0.i, !4907, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4908)
    #dbg_value(i64 %.sroa.01.0.i, !4861, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !4932)
    #dbg_value(i64 %.sroa.01.0.i, !4952, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !5017)
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !4945
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !4945
    #dbg_value(ptr %i.ad, !4928, !DIExpression(), !5018)
    #dbg_declare(ptr poison, !4991, !DIExpression(), !5021)
    #dbg_declare(ptr poison, !4982, !DIExpression(), !5023)
    #dbg_value(i64 poison, !4980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5022)
    #dbg_value(i64 poison, !4980, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5022)
    #dbg_value(i64 poison, !4968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5024)
    #dbg_value(i64 poison, !4968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5024)
  %i.ae = getelementptr [16 x i8], ptr %.sroa.58.0.copyload, i64 %i.y, !dbg !4958
  %i.af = getelementptr i8, ptr %i.ae, i64 16, !dbg !4958
  %i.ag = load <2 x i64>, ptr %i.ad, align 8, !dbg !4954, !noalias !4955
  store <2 x i64> %i.ag, ptr %i.af, align 8, !dbg !4999, !noalias !5025
  %i.ah = add i64 %i.y, 2, !dbg !5026             ; 2 uses
  %i.ai = add nuw i64 %.sroa.01.0.i, 2, !dbg !5034 ; 2 uses
    #dbg_value(i64 %i.ai, !4861, !DIExpression(), !4932)
    #dbg_value(i64 %i.ai, !4907, !DIExpression(), !4908)
  %i.aj = icmp eq i64 %i.ai, %i.e, !dbg !5015
  br i1 %i.aj, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1j_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecBQ_E14extend_trustedINtNtB2b_6cloned6ClonedBF_EE0E0E0ECshovLROGBtMy_11quinn_proto.exit, label %scalar.ph, !dbg !5015, !llvm.loop !5035

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1j_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecBQ_E14extend_trustedINtNtB2b_6cloned6ClonedBF_EE0E0E0ECshovLROGBtMy_11quinn_proto.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ah, %scalar.ph ], !dbg !5036
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.07.0.copyload, align 8, !dbg !5036, !noalias !4955
  ret void, !dbg !5074
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdEENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueNtNtCsG258MDvU3F_3std4time7InstantTB3g_B1s_EENCINvNtB7_10filter_map15filter_map_foldB1s_B3O_B2R_NCNvMNtB1w_10connectionNtB4T_10Connection19loss_time_and_space0NCINvNtB7_3map8map_foldB3O_B2R_B2R_NCINvNvB2e_10min_by_key3keyB3O_B3g_NCB4Q_s_0E0NvYB2R_NtB2U_3Ord3minE0E0EB1w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %3, ptr nofree noundef nonnull readonly align 16 captures(none) %4) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !5075 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 11 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
    #dbg_declare(ptr %i.b, !6965, !DIExpression(), !6985)
    #dbg_declare(ptr %i.b, !7028, !DIExpression(), !7041)
    #dbg_declare(ptr %i.b, !7050, !DIExpression(), !7060)
  %i.c = alloca [40 x i8], align 8                ; 5 uses
    #dbg_value(ptr %1, !6959, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7061)
    #dbg_value(ptr %2, !6959, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7061)
    #dbg_declare(ptr %3, !6960, !DIExpression(), !7062)
    #dbg_value(ptr %4, !6961, !DIExpression(), !7061)
    #dbg_declare(ptr %3, !7023, !DIExpression(), !7063)
    #dbg_value(ptr %1, !7022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7064)
    #dbg_value(ptr %2, !7022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7064)
    #dbg_value(ptr %4, !7024, !DIExpression(), !7064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7065), !dbg !7068
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7069), !dbg !7068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7071
    #dbg_value(ptr %4, !6996, !DIExpression(), !7088)
    #dbg_value(ptr %1, !6994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7088)
    #dbg_value(ptr %2, !6994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7088)
    #dbg_declare(ptr %3, !6995, !DIExpression(), !7089)
    #dbg_declare(ptr %i.b, !7001, !DIExpression(), !7090)
    #dbg_value(i64 1, !7091, !DIExpression(), !7099)
    #dbg_value(i64 1, !7116, !DIExpression(), !7120)
    #dbg_value(ptr %2, !6999, !DIExpression(), !7122)
    #dbg_value(ptr poison, !7085, !DIExpression(), !7123)
    #dbg_value(ptr poison, !7086, !DIExpression(), !7124)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ], !dbg !7071
  %i.d = icmp eq ptr %1, %2, !dbg !7125
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !7126

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %3, i64 40, i1 false), !dbg !7127, !noalias !7065
    #dbg_value(i64 0, !7002, !DIExpression(), !7128)
    #dbg_value(i64 0, !7119, !DIExpression(), !7120)
    #dbg_value(ptr %2, !7006, !DIExpression(), !7129)
    #dbg_value(ptr %2, !7113, !DIExpression(), !7130)
    #dbg_value(ptr %2, !7078, !DIExpression(), !7131)
    #dbg_value(ptr %1, !7114, !DIExpression(), !7130)
    #dbg_value(ptr %1, !7078, !DIExpression(), !7133)
    #dbg_value(ptr %2, !7105, !DIExpression(), !7135)
    #dbg_value(ptr %1, !7106, !DIExpression(), !7135)
    #dbg_value(ptr %1, !7098, !DIExpression(), !7136)
    #dbg_value(ptr %2, !7097, !DIExpression(), !7136)
  %i.e = ptrtoint ptr %2 to i64, !dbg !7137
  %i.f = ptrtoint ptr %1 to i64, !dbg !7137
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !7137
    #dbg_value(i64 %i.g, !7003, !DIExpression(), !7138)
  %.sroa.10.52..sroa.01.sroa.7.40..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.sroa.01.sroa.6.40..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.63.40..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.7.40..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.d, !dbg !7139

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %3, i64 40, i1 false), !dbg !7140, !alias.scope !7141
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueNtNtCsG258MDvU3F_3std4time7InstantTB2K_BQ_EENCINvNtNtB1H_8adapters3map8map_foldRBQ_BQ_B2l_NvYBQ_NtNtBb_5clone5Clone5cloneNCINvNtB3z_10filter_map15filter_map_foldBQ_B3i_B2l_NCNvMNtBU_10connectionNtB5B_10Connection19loss_time_and_space0NCIB3v_B3i_B2l_B2l_NCINvNvB1B_10min_by_key3keyB3i_B2K_NCB5y_s_0E0NvYB2l_NtB2o_3Ord3minE0E0E0EBU_.exit, !dbg !7142

bb.d:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdBV_INtNtBa_3cmp11KeyAndValueNtNtCsG258MDvU3F_3std4time7InstantTB27_BV_EENvYBV_NtNtBa_5clone5Clone5cloneNCINvNtB6_10filter_map15filter_map_foldBV_B2F_B1I_NCNvMNtBZ_10connectionNtB4d_10Connection19loss_time_and_space0NCIB2_B2F_B1I_B1I_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB2F_B27_NCB4a_s_0E0NvYB1I_NtB1L_3Ord3minE0E0E0BZ_.exit.i, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.v, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdBV_INtNtBa_3cmp11KeyAndValueNtNtCsG258MDvU3F_3std4time7InstantTB27_BV_EENvYBV_NtNtBa_5clone5Clone5cloneNCINvNtB6_10filter_map15filter_map_foldBV_B2F_B1I_NCNvMNtBZ_10connectionNtB4d_10Connection19loss_time_and_space0NCIB2_B2F_B1I_B1I_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB2F_B27_NCB4a_s_0E0NvYB1I_NtB1L_3Ord3minE0E0E0BZ_.exit.i ], !dbg !7143 ; 2 uses
    #dbg_value(i64 %.sroa.01.0.i, !7119, !DIExpression(), !7120)
    #dbg_value(i64 %.sroa.01.0.i, !7002, !DIExpression(), !7128)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !7144
    #dbg_value(ptr %1, !7145, !DIExpression(), !7152)
    #dbg_value(i64 %.sroa.01.0.i, !7151, !DIExpression(), !7152)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.0.i, !dbg !7154
    #dbg_value(ptr %i.k, !7078, !DIExpression(), !7155)
  %.val20.i = load i8, ptr %i.k, align 1, !dbg !7144, !range !3476, !noalias !7141, !noundef !64 ; 2 uses
    #dbg_value(ptr poison, !6979, !DIExpression(DW_OP_deref), !7157)
    #dbg_value(ptr poison, !6978, !DIExpression(), !7157)
    #dbg_value(ptr poison, !7052, !DIExpression(DW_OP_deref), !7158)
    #dbg_value(i8 %.val20.i, !7051, !DIExpression(), !7158)
    #dbg_declare(ptr poison, !7159, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !7195)
    #dbg_value(ptr poison, !7216, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !7222)
    #dbg_value(i8 %.val20.i, !7215, !DIExpression(), !7222)
    #dbg_value(i8 %.val20.i, !7223, !DIExpression(), !7233)
    #dbg_value(ptr poison, !7232, !DIExpression(DW_OP_plus_uconst, 912, DW_OP_stack_value), !7233)
  %i.l = zext nneg i8 %.val20.i to i64, !dbg !7235
    #dbg_value(ptr %4, !7232, !DIExpression(DW_OP_plus_uconst, 912, DW_OP_stack_value), !7233)
  %i.m = getelementptr inbounds nuw [736 x i8], ptr %4, i64 %i.l, !dbg !7236 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1320, !dbg !7237
  %i.o = load i32, ptr %i.n, align 8, !dbg !7237, !range !7238, !noalias !7239, !noundef !64 ; 4 uses
    #dbg_value(i64 poison, !7159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7248)
    #dbg_value(i32 %i.o, !7159, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7248)
  %.not.i.i.i.i = icmp eq i32 %i.o, -1, !dbg !7249
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e, !dbg !7250

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1312, !dbg !7237
  %i.q = load i64, ptr %i.p, align 16, !dbg !7237, !noalias !7239 ; 4 uses
    #dbg_value(i64 %i.q, !7159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7248)
    #dbg_value(i64 %i.q, !7054, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7251)
    #dbg_value(i32 %i.o, !7054, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7251)
    #dbg_value(i8 %.val20.i, !7054, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !7251)
    #dbg_declare(ptr undef, !7034, !DIExpression(), !7252)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7253
  store i8 %.val20.i, ptr %.sroa.10.52..sroa.01.sroa.7.40..sroa_idx.i.sroa_idx.i.i.i, align 8, !dbg !7258, !noalias !7259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !7141
  store i64 %i.q, ptr %i.h, align 8, !noalias !7260
  store i32 %i.o, ptr %.sroa.01.sroa.6.40..sroa_idx.i.i.i.i, align 8, !noalias !7260
  store i64 %i.q, ptr %.sroa.63.40..sroa_idx.i.i.i.i, align 8, !noalias !7260
  store i32 %i.o, ptr %.sroa.7.40..sroa_idx.i.i.i.i, align 8, !noalias !7260
    #dbg_value(ptr poison, !7264, !DIExpression(), !7279)
    #dbg_declare(ptr %i.a, !7271, !DIExpression(), !7281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7282), !dbg !7281
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7285), !dbg !7281
    #dbg_declare(ptr %i.a, !7287, !DIExpression(), !7294)
    #dbg_declare(ptr %i.h, !7291, !DIExpression(), !7296)
  %.val2.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !dbg !7297, !alias.scope !7298, !noalias !7300, !noundef !64 ; 2 uses
  %.val3.i.i.i.i.i.i = load i32, ptr %i.j, align 8, !dbg !7297, !alias.scope !7298, !noalias !7300
    #dbg_value(ptr poison, !7302, !DIExpression(), !7310)
    #dbg_value(ptr poison, !7309, !DIExpression(), !7310)
    #dbg_value(ptr poison, !7312, !DIExpression(), !7323)
    #dbg_value(ptr poison, !7319, !DIExpression(), !7323)
    #dbg_declare(ptr poison, !7325, !DIExpression(), !7352)
    #dbg_value(ptr poison, !7354, !DIExpression(), !7362)
    #dbg_value(ptr poison, !7364, !DIExpression(), !7371)
    #dbg_value(ptr poison, !7361, !DIExpression(), !7362)
    #dbg_value(ptr poison, !7370, !DIExpression(), !7371)
    #dbg_value(ptr poison, !7373, !DIExpression(), !7382)
    #dbg_value(ptr poison, !7381, !DIExpression(), !7382)
    #dbg_value(ptr poison, !7384, !DIExpression(), !7395)
    #dbg_value(ptr poison, !7392, !DIExpression(), !7395)
  %i.r = icmp eq i64 %i.q, %.val2.i.i.i.i.i.i, !dbg !7397
    #dbg_value(i8 poison, !7349, !DIExpression(), !7398)
  %i.s = icmp ult i32 %i.o, %.val3.i.i.i.i.i.i, !dbg !7399
  %i.t = icmp slt i64 %i.q, %.val2.i.i.i.i.i.i, !dbg !7399
  %i.u = select i1 %i.r, i1 %i.s, i1 %i.t, !dbg !7397
  %..i.i.i.i.i.i = select i1 %i.u, ptr %i.h, ptr %i.a, !dbg !7400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %..i.i.i.i.i.i, i64 40, i1 false), !dbg !7401, !alias.scope !7402, !noalias !7403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7281, !noalias !7253
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdBV_INtNtBa_3cmp11KeyAndValueNtNtCsG258MDvU3F_3std4time7InstantTB27_BV_EENvYBV_NtNtBa_5clone5Clone5cloneNCINvNtB6_10filter_map15filter_map_foldBV_B2F_B1I_NCNvMNtBZ_10connectionNtB4d_10Connection19loss_time_and_space0NCIB2_B2F_B1I_B1I_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB2F_B27_NCB4a_s_0E0NvYB1I_NtB1L_3Ord3minE0E0E0BZ_.exit.i, !dbg !7404

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !dbg !7405, !noalias !7141
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdBV_INtNtBa_3cmp11KeyAndValueNtNtCsG258MDvU3F_3std4time7InstantTB27_BV_EENvYBV_NtNtBa_5clone5Clone5cloneNCINvNtB6_10filter_map15filter_map_foldBV_B2F_B1I_NCNvMNtBZ_10connectionNtB4d_10Connection19loss_time_and_space0NCIB2_B2F_B1I_B1I_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB2F_B27_NCB4a_s_0E0NvYB1I_NtB1L_3Ord3minE0E0E0BZ_.exit.i, !dbg !7405

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdBV_INtNtBa_3cmp11KeyAndValueNtNtCsG258MDvU3F_3std4time7InstantTB27_BV_EENvYBV_NtNtBa_5clone5Clone5cloneNCINvNtB6_10filter_map15filter_map_foldBV_B2F_B1I_NCNvMNtBZ_10connectionNtB4d_10Connection19loss_time_and_space0NCIB2_B2F_B1I_B1I_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB2F_B27_NCB4a_s_0E0NvYB1I_NtB1L_3Ord3minE0E0E0BZ_.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !dbg !7406, !noalias !7141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7407
  %i.v = add nuw i64 %.sroa.01.0.i, 1, !dbg !7408 ; 2 uses
    #dbg_value(i64 %i.v, !7002, !DIExpression(), !7128)
    #dbg_value(i64 %i.v, !7119, !DIExpression(), !7120)
  %i.w = icmp eq i64 %i.v, %i.g, !dbg !7409
  br i1 %i.w, label %bb.g, label %bb.d, !dbg !7409

bb.g:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdBV_INtNtBa_3cmp11KeyAndValueNtNtCsG258MDvU3F_3std4time7InstantTB27_BV_EENvYBV_NtNtBa_5clone5Clone5cloneNCINvNtB6_10filter_map15filter_map_foldBV_B2F_B1I_NCNvMNtBZ_10connectionNtB4d_10Connection19loss_time_and_space0NCIB2_B2F_B1I_B1I_NCINvNvNtNtNtB8_6traits8iterator8Iterator10min_by_key3keyB2F_B27_NCB4a_s_0E0NvYB1I_NtB1L_3Ord3minE0E0E0BZ_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !dbg !7410, !noalias !7069
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueNtNtCsG258MDvU3F_3std4time7InstantTB2K_BQ_EENCINvNtNtB1H_8adapters3map8map_foldRBQ_BQ_B2l_NvYBQ_NtNtBb_5clone5Clone5cloneNCINvNtB3z_10filter_map15filter_map_foldBQ_B3i_B2l_NCNvMNtBU_10connectionNtB5B_10Connection19loss_time_and_space0NCIB3v_B3i_B2l_B2l_NCINvNvB1B_10min_by_key3keyB3i_B2K_NCB5y_s_0E0NvYB2l_NtB2o_3Ord3minE0E0E0EBU_.exit, !dbg !7142

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueNtNtCsG258MDvU3F_3std4time7InstantTB2K_BQ_EENCINvNtNtB1H_8adapters3map8map_foldRBQ_BQ_B2l_NvYBQ_NtNtBb_5clone5Clone5cloneNCINvNtB3z_10filter_map15filter_map_foldBQ_B3i_B2l_NCNvMNtBU_10connectionNtB5B_10Connection19loss_time_and_space0NCIB3v_B3i_B2l_B2l_NCINvNvB1B_10min_by_key3keyB3i_B2K_NCB5y_s_0E0NvYB2l_NtB2o_3Ord3minE0E0E0EBU_.exit: ; preds = %bb.c, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7411
  ret void, !dbg !7412
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2e_8find_map5checkB1s_TNtNtCsG258MDvU3F_3std4time7InstantB1s_EQNCNvMNtB1w_10connectionNtB4a_10Connection19loss_time_and_space0E0INtNtNtBb_3ops12control_flow11ControlFlowB3q_EEB1w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !7413 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_declare(ptr poison, !7444, !DIExpression(DW_OP_LLVM_fragment, 96, 96), !7465)
    #dbg_declare(ptr poison, !7484, !DIExpression(DW_OP_LLVM_fragment, 96, 96), !7491)
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %1, !7438, !DIExpression(), !7492)
    #dbg_declare(ptr poison, !7439, !DIExpression(), !7493)
    #dbg_value(ptr %2, !7440, !DIExpression(), !7492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7494), !dbg !7497
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7498), !dbg !7497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8, !noalias !7500
    #dbg_value(ptr %1, !7479, !DIExpression(), !7502)
    #dbg_declare(ptr poison, !7480, !DIExpression(), !7503)
    #dbg_declare(ptr %i.b, !7481, !DIExpression(), !7504)
    #dbg_declare(ptr poison, !7482, !DIExpression(), !7505)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !7506, !noalias !7509, !nonnull !64, !noundef !64 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !7506, !noalias !7509 ; 2 uses
    #dbg_value(ptr %1, !7510, !DIExpression(), !7532)
    #dbg_value(i64 1, !7534, !DIExpression(), !7538)
    #dbg_value(ptr %.promoted.i, !7526, !DIExpression(), !7540)
    #dbg_value(ptr %.promoted.i, !7537, !DIExpression(), !7538)
    #dbg_value(ptr %i.d, !7528, !DIExpression(), !7541)
    #dbg_value(ptr poison, !7542, !DIExpression(), !7546)
    #dbg_value(ptr poison, !7545, !DIExpression(), !7548)
  %i.e = icmp eq ptr %.promoted.i, %i.d, !dbg !7549
  br i1 %i.e, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1A_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTNtNtCsG258MDvU3F_3std4time7InstantBJ_EENCINvNvB1u_8find_map5checkBJ_B3L_QNCNvMNtBN_10connectionNtB52_10Connection19loss_time_and_space0E0E0B36_EBN_.exit, label %.lr.ph.i, !dbg !7550

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b, !dbg !7550

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.g = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.h, %bb.d ] ; 2 uses
    #dbg_value(ptr %i.g, !7526, !DIExpression(), !7540)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1, !dbg !7551 ; 3 uses
  store ptr %i.h, ptr %1, align 8, !dbg !7552, !alias.scope !7506, !noalias !7509
    #dbg_value(ptr %i.g, !7483, !DIExpression(), !7553)
  %.val.i = load i8, ptr %i.g, align 1, !dbg !7554, !range !3476, !noalias !7555, !noundef !64
    #dbg_value(ptr %i.b, !7556, !DIExpression(DW_OP_deref), !7566)
    #dbg_declare(ptr poison, !7562, !DIExpression(), !7568)
    #dbg_value(ptr poison, !7563, !DIExpression(), !7566)
    #dbg_value(ptr %i.b, !7569, !DIExpression(DW_OP_deref), !7581)
    #dbg_declare(ptr poison, !7578, !DIExpression(), !7583)
    #dbg_value(i8 %.val.i, !7575, !DIExpression(), !7581)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7584, !noalias !7585
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtCshovLROGBtMy_11quinn_proto10connectionNtBT_10Connection19loss_time_and_space0INtB7_5FnMutTNtNtBV_6packet7SpaceIdEE8call_mutBV_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef range(i8 0, 3) %.val.i), !dbg !7584, !noalias !7592
  %i.i = load i32, ptr %i.f, align 8, !dbg !7584, !range !7238, !noalias !7585, !noundef !64 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.i, -1, !dbg !7584
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !dbg !7593

bb.c:                                             ; preds = %bb.b
  %.sroa.010.0.copyload.i = load i64, ptr %i.a, align 8, !dbg !7594, !noalias !7595
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !7594
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !7596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.514.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.711.0..sroa_idx.i, i64 12, i1 false), !dbg !7594, !noalias !7597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7598, !noalias !7585
    #dbg_value(i64 %.sroa.010.0.copyload.i, !7484, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7599)
    #dbg_value(i64 %.sroa.010.0.copyload.i, !7444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7600)
    #dbg_value(i32 %i.i, !7484, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7599)
    #dbg_value(i32 %i.i, !7444, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !7600)
  store i64 %.sroa.010.0.copyload.i, ptr %0, align 8, !dbg !7596, !alias.scope !7601, !noalias !7597
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1A_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTNtNtCsG258MDvU3F_3std4time7InstantBJ_EENCINvNvB1u_8find_map5checkBJ_B3L_QNCNvMNtBN_10connectionNtB52_10Connection19loss_time_and_space0E0E0B36_EBN_.exit, !dbg !7605

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7598, !noalias !7585
    #dbg_value(ptr %1, !7510, !DIExpression(), !7532)
    #dbg_value(i64 1, !7534, !DIExpression(), !7538)
    #dbg_value(ptr %i.h, !7526, !DIExpression(), !7540)
    #dbg_value(ptr %i.h, !7537, !DIExpression(), !7538)
    #dbg_value(ptr %i.d, !7528, !DIExpression(), !7541)
    #dbg_value(ptr poison, !7542, !DIExpression(), !7546)
    #dbg_value(ptr poison, !7545, !DIExpression(), !7548)
  %i.j = icmp eq ptr %i.h, %i.d, !dbg !7549
  br i1 %i.j, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1A_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTNtNtCsG258MDvU3F_3std4time7InstantBJ_EENCINvNvB1u_8find_map5checkBJ_B3L_QNCNvMNtBN_10connectionNtB52_10Connection19loss_time_and_space0E0E0B36_EBN_.exit, label %bb.b, !dbg !7550

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1A_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTNtNtCsG258MDvU3F_3std4time7InstantBJ_EENCINvNvB1u_8find_map5checkBJ_B3L_QNCNvMNtBN_10connectionNtB52_10Connection19loss_time_and_space0E0E0B36_EBN_.exit: ; preds = %bb.d, %bb.a, %bb.c
  %.sink = phi i32 [ %i.i, %bb.c ], [ -1, %bb.a ], [ -1, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7606
  store i32 %.sink, ptr %i.k, align 8, !dbg !7606, !alias.scope !7494, !noalias !7597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7607
  ret void, !dbg !7608
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterNtCshovLROGBtMy_11quinn_proto8StreamIdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1T_TB1T_uEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3T_7HashSetB1T_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherEINtNtB2B_7collect6ExtendB1T_E6extendBP_E0NCINvNvB2x_8for_each4callB3C_NCINvXs1i_NtB3V_3mapINtB6G_7HashMapB1T_uB4G_EIB5p_B3C_E6extendINtB3g_3MapBP_B3K_EE0E0E0EB1V_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !7609 {
bb.a:
    #dbg_declare(ptr %0, !7681, !DIExpression(), !7686)
    #dbg_declare(ptr poison, !7682, !DIExpression(), !7687)
    #dbg_value(ptr %1, !7683, !DIExpression(), !7688)
    #dbg_declare(ptr %0, !7689, !DIExpression(), !7708)
    #dbg_declare(ptr poison, !7703, !DIExpression(), !7710)
    #dbg_value(ptr %1, !7704, !DIExpression(), !7711)
    #dbg_declare(ptr %0, !7712, !DIExpression(), !7727)
    #dbg_declare(ptr poison, !7723, !DIExpression(), !7729)
    #dbg_declare(ptr poison, !7730, !DIExpression(), !7739)
    #dbg_value(ptr %1, !7724, !DIExpression(), !7741)
    #dbg_value(ptr %1, !7738, !DIExpression(), !7742)
    #dbg_declare(ptr %0, !7737, !DIExpression(), !7743)
  tail call void @_RINvXsU_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_4KeysNtCshovLROGBtMy_11quinn_proto8StreamIduENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1v_8adapters3map8map_foldRBL_BL_uNvYBL_NtNtB1x_5clone5Clone5cloneNCIB2t_BL_TBL_uEuNCINvXs8_NtB8_3setINtB43_7HashSetBL_NtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherEINtNtB1t_7collect6ExtendBL_E6extendINtNtB2x_6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterBL_EEE0NCINvNvB1p_8for_each4callB3N_NCINvXs1i_B6_INtB6_7HashMapBL_uB4u_EIB5d_B3N_E6extendINtB2v_3MapB5L_B3U_EE0E0E0E0EBN_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !dbg !7744
  ret void, !dbg !7745
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB6_12StreamsState24received_max_stream_datas_0Bc_(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #6 !dbg !7746 {
bb.a:
    #dbg_value(ptr poison, !7831, !DIExpression(), !7839)
    #dbg_value(ptr poison, !7850, !DIExpression(), !7854)
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !7830, !DIExpression(), !7855)
    #dbg_declare(ptr %0, !7809, !DIExpression(), !7856)
    #dbg_declare(ptr %i.a, !7816, !DIExpression(), !7857)
    #dbg_value(ptr poison, !7858, !DIExpression(), !7870)
    #dbg_declare(ptr poison, !7872, !DIExpression(), !7881)
    #dbg_value(i8 0, !7883, !DIExpression(), !7890)
    #dbg_value(i8 0, !7897, !DIExpression(), !7901)
    #dbg_declare(ptr poison, !7872, !DIExpression(), !7908)
    #dbg_value(ptr @_RNvNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB6_12StreamsState24received_max_stream_datas_10___CALLSITE, !7913, !DIExpression(), !7922)
    #dbg_value(ptr @_RNvNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB6_12StreamsState24received_max_stream_datas_10___CALLSITE, !7921, !DIExpression(), !7925)
  %i.b = load ptr, ptr @_RNvNvMs_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams5stateNtB6_12StreamsState24received_max_stream_datas_10___CALLSITE, align 8, !dbg !7927, !nonnull !64, !align !3512, !noundef !64
    #dbg_value(ptr %i.b, !7810, !DIExpression(), !7928)
  tail call void @_RNvMNtCsgb4gPAseikh_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0), !dbg !7929
    #dbg_value(ptr poison, !7865, !DIExpression(), !7930)
    #dbg_value(i8 -1, !7931, !DIExpression(), !7935)
    #dbg_value(i8 -1, !7876, !DIExpression(), !7947)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS, !7889, !DIExpression(), !7890)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS, !7948, !DIExpression(), !7954)
    #dbg_value(i8 0, !7953, !DIExpression(), !7954)
  %i.c = load atomic i8, ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS monotonic, align 1, !dbg !7956
  %.not = icmp eq i8 %i.c, 0, !dbg !7957
  br i1 %.not, label %bb.c, label %bb.b, !dbg !7871

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  ret void, !dbg !7958

end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCshovLROGBtMy_11quinn_proto10congestion8new_renoNtB4_7NewRenoNtB6_10Controller6on_ack:bb.a
bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !25987
  %i.u = sub nuw i64 %i.p, %i.k, !dbg !25987
  store i64 %i.u, ptr %i.t, align 8, !dbg !25987
  br label %bb.h, !dbg !25988

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.d, %bb.f, %bb.a, %bb.b
  ret void, !dbg !25989
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs_NtNtCshovLROGBtMy_11quinn_proto10congestion8new_renoNtB4_7NewRenoNtB6_10Controller6window(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #7 !dbg !25990 {
bb.a:
    #dbg_value(ptr %0, !25992, !DIExpression(), !25993)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25994
  %i.b = load i64, ptr %i.a, align 8, !dbg !25994, !noundef !64
  ret i64 %i.b, !dbg !25995
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs_NtNtCshovLROGBtMy_11quinn_proto10congestion8new_renoNtB4_7NewRenoNtB6_10Controller7metrics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 24), (32, 40)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #8 !dbg !25996 {
bb.a:
    #dbg_value(ptr %1, !26000, !DIExpression(), !26001)
    #dbg_value(ptr %1, !26002, !DIExpression(), !26005)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !26007
  %i.b = load i64, ptr %i.a, align 8, !dbg !26007, !noundef !64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !26008
  %i.d = load i64, ptr %i.c, align 8, !dbg !26008, !noundef !64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !26009
  store i64 %i.b, ptr %i.e, align 8, !dbg !26009
  store i64 1, ptr %0, align 8, !dbg !26009
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26009
  store i64 %i.d, ptr %i.f, align 8, !dbg !26009
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26009
  store i64 0, ptr %i.g, align 8, !dbg !26009
  ret void, !dbg !26010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs_NtNtCshovLROGBtMy_11quinn_proto10congestion8new_renoNtB4_7NewRenoNtB6_10Controller8into_any(ptr noalias noundef nonnull align 8 %0) unnamed_addr #10 !dbg !26011 {
bb.a:
    #dbg_value(ptr %0, !26015, !DIExpression(), !26016)
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0, !dbg !26017
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @143, 1, !dbg !26017
  ret { ptr, ptr } %i.b, !dbg !26017
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtCshovLROGBtMy_11quinn_proto10congestion8new_renoNtB4_7NewRenoNtB6_10Controller9clone_box(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !26018 {
bb.a:
  %i.a = alloca [56 x i8], align 16               ; 8 uses
    #dbg_value(ptr %0, !26022, !DIExpression(), !26023)
    #dbg_value(ptr %0, !26024, !DIExpression(), !26030)
    #dbg_value(i64 1, !26032, !DIExpression(), !26037)
    #dbg_value(i8 0, !26036, !DIExpression(), !26037)
    #dbg_value(i64 1, !26047, !DIExpression(), !26052)
    #dbg_value(i8 0, !26051, !DIExpression(), !26052)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26054
    #dbg_value(ptr %0, !26043, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !26055)
    #dbg_value(ptr %0, !26056, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !26059)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !26061
  %i.c = load ptr, ptr %i.b, align 8, !dbg !26061, !nonnull !64, !noundef !64 ; 3 uses
    #dbg_value(ptr %i.c, !26035, !DIExpression(), !26064)
    #dbg_value(ptr %i.c, !26050, !DIExpression(), !26052)
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8, !dbg !26065
    #dbg_value(i64 %i.d, !26044, !DIExpression(), !26066)
  %i.e = icmp slt i64 %i.d, 0, !dbg !26067
  br i1 %i.e, label %bb.g, label %bb.b, !dbg !26067

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26046
    #dbg_value(ptr %0, !26068, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !26074)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !26074
  %i.h = load i64, ptr %i.g, align 8, !dbg !26074, !noundef !64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !26074
  %i.j = load i32, ptr %i.i, align 8, !dbg !26074, !range !8546, !noundef !64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !26046 ; 2 uses
  store ptr %i.c, ptr %i.k, align 16, !dbg !26046
  %i.l = load <2 x i64>, ptr %0, align 8, !dbg !26046
  store <2 x i64> %i.l, ptr %i.a, align 16, !dbg !26046
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !26046
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !26046
  store i64 %i.h, ptr %i.n, align 8, !dbg !26046
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !26046
  store i32 %i.j, ptr %i.o, align 16, !dbg !26046
  %i.p = load <2 x i64>, ptr %i.f, align 8, !dbg !26046
  store <2 x i64> %i.p, ptr %i.m, align 16, !dbg !26046
    #dbg_declare(ptr %i.a, !22781, !DIExpression(), !26077)
    #dbg_value(i64 8, !21493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26079)
    #dbg_value(i64 8, !21502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26081)
    #dbg_value(i64 8, !21510, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26083)
    #dbg_value(i64 56, !21493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26079)
    #dbg_value(i64 56, !21502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26081)
    #dbg_value(i64 56, !21510, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26083)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !21507, !DIExpression(), !26081)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !21516, !DIExpression(), !26083)
    #dbg_value(i8 0, !21517, !DIExpression(), !26083)
    #dbg_value(i64 8, !21520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26085)
    #dbg_value(i64 8, !21552, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26087)
    #dbg_value(i64 56, !21520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26085)
    #dbg_value(i64 56, !21552, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26087)
    #dbg_value(i1 false, !21526, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !26085)
    #dbg_value(i64 56, !21527, !DIExpression(), !26089)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !26090, !noalias !26091
  %i.q = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 56, 545) 56, i64 noundef range(i64 8, 17) 8) #33, !dbg !26094, !noalias !26091 ; 3 uses
  %i.r = icmp eq ptr %i.q, null, !dbg !26095
  br i1 %i.r, label %bb.c, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCshovLROGBtMy_11quinn_proto10congestion8new_reno7NewRenoE3newBK_.exit, !dbg !26096, !prof !3640

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc unwind label %bb.d, !dbg !26097

.noexc:                                           ; preds = %bb.c
  unreachable, !dbg !26097

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !3984, !DIExpression(), !26098)
    #dbg_value(ptr %i.k, !3992, !DIExpression(), !26100)
    #dbg_value(ptr %i.k, !4006, !DIExpression(), !26102)
    #dbg_value(i64 1, !4021, !DIExpression(), !26104)
    #dbg_value(i8 1, !4025, !DIExpression(), !26104)
    #dbg_value(i64 1, !4028, !DIExpression(), !26106)
    #dbg_value(i8 1, !4032, !DIExpression(), !26106)
    #dbg_value(ptr %i.c, !4024, !DIExpression(), !26108)
    #dbg_value(ptr %i.c, !4031, !DIExpression(), !26106)
  %i.t = atomicrmw sub ptr %i.c, i64 1 release, align 8, !dbg !26109, !noalias !26110
  %i.u = icmp eq i64 %i.t, 1, !dbg !26117
  br i1 %i.u, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10congestion8new_reno7NewRenoEBH_.exit, !dbg !26117

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !3890, !DIExpression(), !26118)
  fence acquire, !dbg !26120
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshovLROGBtMy_11quinn_proto10congestion8new_reno13NewRenoConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10congestion8new_reno7NewRenoEBH_.exit unwind label %bb.f, !dbg !26121

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !26122
  unreachable, !dbg !26122

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10congestion8new_reno7NewRenoEBH_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.s, !dbg !26122

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCshovLROGBtMy_11quinn_proto10congestion8new_reno7NewRenoE3newBK_.exit: ; preds = %bb.b
    #dbg_value(ptr %i.q, !22787, !DIExpression(), !26123)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 16 dereferenceable(56) %i.a, i64 56, i1 false), !dbg !26124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26125
  %i.w = insertvalue { ptr, ptr } poison, ptr %i.q, 0, !dbg !26126
  %i.x = insertvalue { ptr, ptr } %i.w, ptr @126, 1, !dbg !26126
  ret { ptr, ptr } %i.x, !dbg !26126

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !26127
  unreachable, !dbg !26127
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtCshovLROGBtMy_11quinn_proto6crypto9ring_likeNtNtCs8shshkhJObF_4ring4hkdf3PrkNtB6_17HandshakeTokenKey14aead_from_hkdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !26128 {
_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCs8shshkhJObF_4ring4hkdf3OkmNtBK_9AlgorithmENtNtNtBM_5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %.sroa.218 = alloca [536 x i8], align 8         ; 2 uses
    #dbg_declare(ptr %.sroa.218, !26230, !DIExpression(DW_OP_LLVM_fragment, 64, 4288), !26241)
  %i.b = alloca [544 x i8], align 16              ; 6 uses
    #dbg_declare(ptr poison, !26243, !DIExpression(DW_OP_LLVM_fragment, 64, 4288), !26268)
    #dbg_declare(ptr poison, !26224, !DIExpression(DW_OP_LLVM_fragment, 64, 4288), !26270)
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 1                ; 5 uses
    #dbg_value(ptr %0, !26196, !DIExpression(), !26271)
    #dbg_value(ptr %1, !26197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26271)
    #dbg_value(i64 %2, !26197, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26271)
    #dbg_declare(ptr %i.d, !26198, !DIExpression(), !26272)
    #dbg_declare(ptr %i.c, !26200, !DIExpression(), !26273)
    #dbg_declare(ptr %i.b, !26274, !DIExpression(), !26326)
    #dbg_value(ptr @_RNvNtNtCs8shshkhJObF_4ring4aead9algorithm11AES_256_GCM, !26334, !DIExpression(), !26341)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !26342
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !dbg !26343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !26344
  store ptr %1, ptr %i.c, align 8, !dbg !26345
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !26345
  store i64 %2, ptr %i.e, align 8, !dbg !26345
  %i.f = load ptr, ptr @_RNvNtCs8shshkhJObF_4ring4hkdf11HKDF_SHA256, align 8, !dbg !26346, !nonnull !64, !align !3512, !noundef !64
    #dbg_value(ptr %i.f, !26347, !DIExpression(), !26373)
    #dbg_value(ptr %0, !26369, !DIExpression(), !26373)
    #dbg_value(ptr %i.c, !26370, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26373)
    #dbg_value(i64 1, !26370, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26373)
    #dbg_value(ptr poison, !26375, !DIExpression(), !26382)
    #dbg_value(ptr %i.f, !26384, !DIExpression(), !26391)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 89, !dbg !26393
  %i.h = load i8, ptr %i.g, align 1, !dbg !26393, !range !26394, !alias.scope !26395, !noalias !26398, !noundef !64
    #dbg_value(i8 %i.h, !26402, !DIExpression(), !26408)
  %i.i = zext nneg i8 %i.h to i64, !dbg !26410
    #dbg_value(ptr %0, !26203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26411)
    #dbg_value(ptr %0, !26412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26433)
    #dbg_value(ptr %i.c, !26203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26411)
    #dbg_value(ptr %i.c, !26412, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26433)
    #dbg_value(i64 1, !26203, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26411)
    #dbg_value(i64 1, !26412, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26433)
    #dbg_value(ptr %i.f, !26412, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26433)
    #dbg_value(ptr %i.f, !26203, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26411)
    #dbg_value(i64 %i.i, !26203, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26411)
    #dbg_value(i64 %i.i, !26412, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26433)
    #dbg_value(ptr %i.d, !26432, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26433)
    #dbg_value(i64 32, !26432, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26433)
  %i.j = call noundef zeroext i1 @_RNvNtCs8shshkhJObF_4ring4hkdf8fill_okm(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef 1, ptr noalias nofree noundef nonnull %i.d, i64 noundef 32, i64 noundef %i.i), !dbg !26435, !noalias !26436
    #dbg_value(i1 %i.j, !26439, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !26449)
    #dbg_declare(ptr %i.a, !26447, !DIExpression(), !26451)
  br i1 %i.j, label %bb.a, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCs8shshkhJObF_4ring5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit, !dbg !26452, !prof !3640

bb.a:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCs8shshkhJObF_4ring4hkdf3OkmNtBK_9AlgorithmENtNtNtBM_5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #36, !dbg !26453
  unreachable, !dbg !26453

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCs8shshkhJObF_4ring5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCs8shshkhJObF_4ring4hkdf3OkmNtBK_9AlgorithmENtNtNtBM_5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit
    #dbg_value(ptr %i.d, !26335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26341)
    #dbg_value(i64 32, !26335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26341)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !26327
  call void @_RNvNtNtNtCs8shshkhJObF_4ring3cpu5intel12featureflags11get_or_init(), !dbg !26454
  call void @_RNvMNtNtCs8shshkhJObF_4ring4aead13less_safe_keyNtB2_11LessSafeKey4new_(ptr noalias nofree noundef nonnull sret([544 x i8]) align 16 captures(none) dereferenceable(544) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @_RNvNtNtCs8shshkhJObF_4ring4aead9algorithm11AES_256_GCM, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 32), !dbg !26327
  %i.k = load i64, ptr %i.b, align 16, !dbg !26460, !range !26461, !noundef !64 ; 2 uses
  %i.l = icmp eq i64 %i.k, -2, !dbg !26460
  br i1 %i.l, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCs8shshkhJObF_4ring4aead11unbound_key10UnboundKeyNtNtNtBN_5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit, !dbg !26462

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCs8shshkhJObF_4ring5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26463
    #dbg_value(i64 -2, !26243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26464)
    #dbg_declare(ptr %i.a, !26266, !DIExpression(), !26465)
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #36, !dbg !26466, !noalias !26467
  unreachable, !dbg !26466

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCs8shshkhJObF_4ring4aead11unbound_key10UnboundKeyNtNtNtBN_5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCs8shshkhJObF_4ring5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !26471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %.sroa.218, ptr noundef nonnull align 8 dereferenceable(536) %.sroa.2.0..sroa_idx, i64 536, i1 false), !dbg !26471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26463
    #dbg_value(i64 %i.k, !26243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26464)
    #dbg_declare(ptr %i.a, !26266, !DIExpression(), !26465)
    #dbg_value(i64 %i.k, !26224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26472)
    #dbg_value(i64 %i.k, !26230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26473)
    #dbg_value(i64 16, !21493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26474)
    #dbg_value(i64 16, !21502, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26476)
    #dbg_value(i64 16, !21510, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26478)
    #dbg_value(i64 544, !21493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26474)
    #dbg_value(i64 544, !21502, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26476)
    #dbg_value(i64 544, !21510, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26478)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !21507, !DIExpression(), !26476)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !21516, !DIExpression(), !26478)
    #dbg_value(i8 0, !21517, !DIExpression(), !26478)
    #dbg_value(i64 16, !21520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26480)
    #dbg_value(i64 16, !21552, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26482)
    #dbg_value(i64 544, !21520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26480)
    #dbg_value(i64 544, !21552, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26482)
    #dbg_value(i1 false, !21526, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !26480)
    #dbg_value(i64 544, !21527, !DIExpression(), !26484)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !26485, !noalias !26486
  %i.m = call noundef align 16 dereferenceable_or_null(544) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 56, 545) 544, i64 noundef range(i64 8, 17) 16) #33, !dbg !26489, !noalias !26486 ; 4 uses
  %i.n = icmp eq ptr %i.m, null, !dbg !26490
  br i1 %i.n, label %bb.c, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !dbg !26491, !prof !3640

bb.c:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCs8shshkhJObF_4ring4aead11unbound_key10UnboundKeyNtNtNtBN_5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit
  call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 544) #37, !dbg !26492, !noalias !26486
  unreachable, !dbg !26492

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCs8shshkhJObF_4ring4aead11unbound_key10UnboundKeyNtNtNtBN_5error11unspecified11UnspecifiedE6unwrapCshovLROGBtMy_11quinn_proto.exit
    #dbg_value(ptr %i.m, !26236, !DIExpression(), !26493)
  store i64 %i.k, ptr %i.m, align 16, !dbg !26494
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !26494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %.sroa.218.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(536) %.sroa.218, i64 536, i1 false), !dbg !26494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !26495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !26496
  %i.o = insertvalue { ptr, ptr } poison, ptr %i.m, 0, !dbg !26497
  %i.p = insertvalue { ptr, ptr } %i.o, ptr @147, 1, !dbg !26497
  ret { ptr, ptr } %i.p, !dbg !26497
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtNtBa_3ops5range5RangeyEEENtNtNtB8_6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !26498 {
bb.a:
    #dbg_value(ptr %1, !26500, !DIExpression(), !26501)
    #dbg_declare(ptr poison, !26502, !DIExpression(), !26508)
    #dbg_value(ptr %1, !26514, !DIExpression(), !26523)
    #dbg_value(i64 1, !26525, !DIExpression(), !26529)
  %i.a = load ptr, ptr %1, align 8, !dbg !26531, !alias.scope !26532, !nonnull !64, !noundef !64 ; 3 uses
    #dbg_value(ptr %i.a, !26517, !DIExpression(), !26535)
    #dbg_value(ptr %i.a, !26528, !DIExpression(), !26529)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !26536
  %i.c = load ptr, ptr %i.b, align 8, !dbg !26536, !alias.scope !26532, !nonnull !64, !noundef !64
    #dbg_value(ptr %i.c, !26519, !DIExpression(), !26537)
    #dbg_value(ptr poison, !26538, !DIExpression(), !26542)
    #dbg_value(ptr poison, !26541, !DIExpression(), !26544)
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !26545
  br i1 %i.d, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.thread, label %bb.b, !dbg !26546

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !26547
  store ptr %i.e, ptr %1, align 8, !dbg !26548, !alias.scope !26532
    #dbg_value(ptr %i.a, !26512, !DIExpression(), !26549)
    #dbg_value(ptr %i.a, !26505, !DIExpression(), !26550)
    #dbg_value(ptr %i.a, !26506, !DIExpression(), !26551)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26552
  %i.g = load <2 x i64>, ptr %i.a, align 8, !dbg !26553
  store <2 x i64> %i.g, ptr %i.f, align 8, !dbg !26552
  br label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.thread, !dbg !26556

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.thread: ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !26550
  store i64 %storemerge, ptr %0, align 8, !dbg !26550
  ret void, !dbg !26557
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtNtBa_3ops5range5RangeyEEENtNtNtB8_6traits8iterator8Iterator9size_hintCshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #8 !dbg !26558 {
bb.a:
    #dbg_value(ptr %1, !26563, !DIExpression(), !26564)
  %.val = load ptr, ptr %1, align 8, !dbg !26565, !nonnull !64, !noundef !64
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !26565
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !26565, !nonnull !64, !noundef !64
    #dbg_value(ptr poison, !26566, !DIExpression(), !26578)
    #dbg_value(i64 16, !26580, !DIExpression(), !26586)
    #dbg_value(ptr %.val1, !26576, !DIExpression(), !26598)
    #dbg_value(ptr %.val1, !26595, !DIExpression(), !26599)
    #dbg_value(ptr %.val, !26596, !DIExpression(), !26599)
    #dbg_value(ptr %.val1, !26590, !DIExpression(), !26600)
    #dbg_value(ptr %.val, !26591, !DIExpression(), !26600)
    #dbg_value(ptr %.val, !26585, !DIExpression(), !26601)
    #dbg_value(ptr %.val1, !26584, !DIExpression(), !26601)
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !26602
  %i.c = ptrtoint ptr %.val to i64, !dbg !26602
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !26602
  %i.e = lshr exact i64 %i.d, 4, !dbg !26602      ; 2 uses
    #dbg_value(i64 %i.e, !26572, !DIExpression(), !26603)
  store i64 %i.e, ptr %0, align 8, !dbg !26604, !alias.scope !26605
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26604
  store i64 1, ptr %i.f, align 8, !dbg !26604, !alias.scope !26605
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26604
  store i64 %i.e, ptr %i.g, align 8, !dbg !26604, !alias.scope !26605
  ret void, !dbg !26608
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtCshovLROGBtMy_11quinn_proto3DirEENtNtNtB8_6traits8iterator8Iterator4nextB1t_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #11 !dbg !26609 {
bb.a:
    #dbg_value(ptr %0, !26613, !DIExpression(), !26615)
    #dbg_declare(ptr poison, !26616, !DIExpression(), !26642)
    #dbg_value(ptr %0, !26651, !DIExpression(), !26662)
    #dbg_value(i64 1, !26664, !DIExpression(), !26671)
  %i.a = load ptr, ptr %0, align 8, !dbg !26673, !alias.scope !26674, !nonnull !64, !noundef !64 ; 3 uses
    #dbg_value(ptr %i.a, !26656, !DIExpression(), !26677)
    #dbg_value(ptr %i.a, !26670, !DIExpression(), !26671)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26678
  %i.c = load ptr, ptr %i.b, align 8, !dbg !26678, !alias.scope !26674, !nonnull !64, !noundef !64
    #dbg_value(ptr %i.c, !26658, !DIExpression(), !26679)
    #dbg_value(ptr poison, !26680, !DIExpression(), !26687)
    #dbg_value(ptr poison, !26686, !DIExpression(), !26689)
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !26690
  br i1 %i.d, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtCshovLROGBtMy_11quinn_proto3DirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBR_.exit.thread, label %bb.b, !dbg !26691

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !26692
  store ptr %i.e, ptr %0, align 8, !dbg !26693, !alias.scope !26674
    #dbg_value(ptr %i.a, !26649, !DIExpression(), !26694)
    #dbg_value(ptr %i.a, !26639, !DIExpression(), !26695)
    #dbg_value(ptr %i.a, !26640, !DIExpression(), !26696)
  %.val = load i8, ptr %i.a, align 1, !dbg !26697, !range !3513, !noundef !64
  br label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtCshovLROGBtMy_11quinn_proto3DirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBR_.exit.thread, !dbg !26705

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtCshovLROGBtMy_11quinn_proto3DirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBR_.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %.val, %bb.b ], [ 2, %bb.a ], !dbg !26695
  ret i8 %.sroa.0.0, !dbg !26706
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i8 -1, 3) i8 @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #11 !dbg !26707 {
bb.a:
    #dbg_value(ptr %0, !26722, !DIExpression(), !26724)
    #dbg_declare(ptr poison, !26725, !DIExpression(), !26736)
    #dbg_value(ptr %0, !7510, !DIExpression(), !26745)
    #dbg_value(i64 1, !7534, !DIExpression(), !26747)
  %i.a = load ptr, ptr %0, align 8, !dbg !26749, !alias.scope !26750, !nonnull !64, !noundef !64 ; 3 uses
    #dbg_value(ptr %i.a, !7526, !DIExpression(), !26753)
    #dbg_value(ptr %i.a, !7537, !DIExpression(), !26747)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26754
  %i.c = load ptr, ptr %i.b, align 8, !dbg !26754, !alias.scope !26750, !nonnull !64, !noundef !64
    #dbg_value(ptr %i.c, !7528, !DIExpression(), !26755)
    #dbg_value(ptr poison, !7542, !DIExpression(), !26756)
    #dbg_value(ptr poison, !7545, !DIExpression(), !26758)
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !26759
  br i1 %i.d, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.thread, label %bb.b, !dbg !26760

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !26761
  store ptr %i.e, ptr %0, align 8, !dbg !26762, !alias.scope !26750
    #dbg_value(ptr %i.a, !26743, !DIExpression(), !26763)
    #dbg_value(ptr %i.a, !26733, !DIExpression(), !26764)
    #dbg_value(ptr %i.a, !26734, !DIExpression(), !26765)
  %.val = load i8, ptr %i.a, align 1, !dbg !26766, !range !3476, !noundef !64
  br label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.thread, !dbg !26777

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtCshovLROGBtMy_11quinn_proto6packet7SpaceIdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %.val, %bb.b ], [ -1, %bb.a ], !dbg !26764
  ret i8 %.sroa.0.0, !dbg !26778
end_hunk_1
