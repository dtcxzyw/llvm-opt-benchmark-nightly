Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.07?download=true
inline.NumInlined: 195
inline.NumDeleted: 83
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3revINtB5_3RevINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1I_NtNtNtNtB1O_3nfa8thompson6pikevm13FollowEpsilonuNcNtB3P_7Explore0NCINvNvB2K_8for_each4callB3P_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5u_3VecB3P_E14extend_trustedINtB3t_3MapBM_B4B_EE0E0E0EB1O_:bb.a
    #dbg_value(i64 %.sroa.4.0.copyload.i, !5988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5877)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !6072
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !6072, !alias.scope !5972
    #dbg_value(ptr %.sroa.6.0.copyload.i, !5988, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5877)
    #dbg_value(ptr poison, !2327, !DIExpression(), !5880)
    #dbg_value(ptr %0, !5991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5881)
    #dbg_value(ptr %1, !5991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5881)
    #dbg_declare(ptr poison, !5992, !DIExpression(), !5882)
    #dbg_declare(ptr poison, !5993, !DIExpression(), !5883)
    #dbg_value(ptr undef, !2343, !DIExpression(), !5884)
    #dbg_value(ptr undef, !2347, !DIExpression(), !5886)
    #dbg_value(ptr undef, !2352, !DIExpression(), !5888)
    #dbg_value(i64 1, !2356, !DIExpression(), !5888)
    #dbg_value(i64 1, !2361, !DIExpression(), !5890)
    #dbg_value(i64 -1, !2368, !DIExpression(), !5892)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1, !dbg !6073
  br i1 %i.a, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4IterNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEENtNtNtBa_6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtB8_3map8map_foldB1t_NtNtNtNtB1z_3nfa8thompson6pikevm13FollowEpsilonuNcNtB3R_7Explore0NCINvNvNtNtB2y_8iterator8Iterator8for_each4callB3R_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5S_3VecB3R_E14extend_trustedINtB3v_3MapINtNtB8_3rev3RevBQ_EB4D_EE0E0E0EB1z_.exit, label %.lr.ph.i.i, !dbg !6074

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.b = phi i64 [ %i.e, %.lr.ph.i.i ], [ %.sroa.4.0.copyload.i, %bb.a ], !dbg !6075 ; 2 uses
  %.sroa.2.012.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %1, %bb.a ]
    #dbg_value(ptr %.sroa.2.012.i.i, !5991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5881)
    #dbg_value(ptr undef, !2359, !DIExpression(), !5893)
    #dbg_value(ptr %.sroa.2.012.i.i, !2365, !DIExpression(), !5890)
    #dbg_value(ptr %.sroa.2.012.i.i, !2372, !DIExpression(), !5892)
  %i.c = getelementptr inbounds i8, ptr %.sroa.2.012.i.i, i64 -4, !dbg !6075 ; 3 uses
    #dbg_value(ptr %i.c, !2365, !DIExpression(), !5890)
    #dbg_value(ptr %i.c, !2372, !DIExpression(), !5892)
    #dbg_value(ptr %i.c, !5991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5881)
    #dbg_value(ptr %i.c, !5994, !DIExpression(), !5894)
  %.val8.i.i = load i32, ptr %i.c, align 4, !dbg !6076, !noalias !5998, !noundef !1030
    #dbg_value(ptr poison, !5999, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5900)
    #dbg_declare(ptr poison, !6003, !DIExpression(), !5901)
    #dbg_value(ptr poison, !6005, !DIExpression(), !5900)
    #dbg_value(i32 %.val8.i.i, !6004, !DIExpression(), !5902)
    #dbg_value(ptr poison, !6007, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5905)
    #dbg_declare(ptr poison, !6011, !DIExpression(), !5906)
    #dbg_value(i32 %.val8.i.i, !6012, !DIExpression(), !5905)
    #dbg_value(i32 0, !6019, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5909)
    #dbg_value(i32 0, !6028, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5913)
    #dbg_value(i32 %.val8.i.i, !6019, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5909)
    #dbg_value(i32 %.val8.i.i, !6028, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5913)
    #dbg_value(i64 undef, !6019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5909)
    #dbg_value(i64 undef, !6028, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5913)
    #dbg_value(ptr poison, !6023, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5914)
    #dbg_declare(ptr poison, !6024, !DIExpression(), !5915)
    #dbg_value(ptr poison, !6032, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !5916)
    #dbg_value(ptr poison, !6033, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !5916)
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.sroa.6.0.copyload.i, i64 %i.b, !dbg !6077 ; 2 uses
  store i32 0, ptr %i.d, align 8, !dbg !6078, !noalias !6044
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4, !dbg !6078
  store i32 %.val8.i.i, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 4, !dbg !6078, !noalias !6044
  %i.e = add i64 %i.b, 1, !dbg !6079              ; 2 uses
    #dbg_value(ptr undef, !2343, !DIExpression(), !5884)
    #dbg_value(ptr undef, !2347, !DIExpression(), !5886)
    #dbg_value(ptr undef, !2352, !DIExpression(), !5888)
    #dbg_value(i64 1, !2356, !DIExpression(), !5888)
    #dbg_value(i64 1, !2361, !DIExpression(), !5890)
    #dbg_value(i64 -1, !2368, !DIExpression(), !5892)
    #dbg_value(ptr %i.c, !2345, !DIExpression(), !5931)
    #dbg_value(ptr undef, !2327, !DIExpression(), !5880)
    #dbg_value(ptr poison, !2330, !DIExpression(), !5932)
  %i.f = icmp eq ptr %0, %i.c, !dbg !6073
  br i1 %i.f, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4IterNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEENtNtNtBa_6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtB8_3map8map_foldB1t_NtNtNtNtB1z_3nfa8thompson6pikevm13FollowEpsilonuNcNtB3R_7Explore0NCINvNvNtNtB2y_8iterator8Iterator8for_each4callB3R_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5S_3VecB3R_E14extend_trustedINtB3v_3MapINtNtB8_3rev3RevBQ_EB4D_EE0E0E0EB1z_.exit, label %.lr.ph.i.i, !dbg !6074

_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4IterNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEENtNtNtBa_6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtB8_3map8map_foldB1t_NtNtNtNtB1z_3nfa8thompson6pikevm13FollowEpsilonuNcNtB3R_7Explore0NCINvNvNtNtB2y_8iterator8Iterator8for_each4callB3R_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5S_3VecB3R_E14extend_trustedINtB3v_3MapINtNtB8_3rev3RevBQ_EB4D_EE0E0E0EB1z_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %.val7.i.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.a ], [ %i.e, %.lr.ph.i.i ], !dbg !6080
    #dbg_value(ptr poison, !5991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5881)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
    #dbg_value(ptr poison, !6047, !DIExpression(), !5935)
    #dbg_value(ptr poison, !6053, !DIExpression(), !5938)
    #dbg_value(ptr poison, !6059, !DIExpression(), !5941)
    #dbg_value(ptr poison, !6065, !DIExpression(), !5944)
    #dbg_value(ptr poison, !2385, !DIExpression(), !5946)
    #dbg_value(ptr poison, !2391, !DIExpression(), !5948)
  store i64 %.val7.i.i, ptr %.sroa.0.0.copyload.i, align 8, !dbg !6081, !noalias !5998
  ret void, !dbg !6082
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3revINtB5_3RevINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1I_NtNtNtNtB1O_3nfa8thompson9backtrack5FrameuNCNvMs2_B3R_NtB3R_18BoundedBacktracker4step0NCINvNvB2K_8for_each4callB3P_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5P_3VecB3P_E14extend_trustedINtB3t_3MapBM_B4v_EE0E0E0EB1O_(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !6087 {
bb.a:
    #dbg_value(ptr %0, !6194, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6200)
    #dbg_value(ptr %1, !6194, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6200)
    #dbg_declare(ptr poison, !6195, !DIExpression(), !6201)
    #dbg_declare(ptr %2, !6196, !DIExpression(), !6202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6203), !dbg !6311
    #dbg_value(ptr %0, !6204, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6092)
    #dbg_value(ptr %1, !6204, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6092)
    #dbg_declare(ptr poison, !6207, !DIExpression(), !6093)
    #dbg_declare(ptr %2, !6208, !DIExpression(), !6094)
    #dbg_declare(ptr %2, !6211, !DIExpression(), !6098)
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !dbg !6312, !alias.scope !6203 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload.i, !6219, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6103)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !6312
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !6312, !alias.scope !6203 ; 2 uses
    #dbg_value(i64 %.sroa.4.0.copyload.i, !6219, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6103)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !6312
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !6312, !alias.scope !6203
    #dbg_value(ptr %.sroa.6.0.copyload.i, !6219, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6103)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !6312
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !6312, !alias.scope !6203 ; 2 uses
    #dbg_value(ptr %.sroa.7.0.copyload.i, !6219, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6103)
    #dbg_value(ptr poison, !2327, !DIExpression(), !6106)
    #dbg_value(ptr %0, !6222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6107)
    #dbg_value(ptr %1, !6222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6107)
    #dbg_declare(ptr poison, !6223, !DIExpression(), !6108)
    #dbg_declare(ptr poison, !6224, !DIExpression(), !6109)
    #dbg_value(ptr undef, !2343, !DIExpression(), !6110)
    #dbg_value(ptr undef, !2347, !DIExpression(), !6112)
    #dbg_value(ptr undef, !2352, !DIExpression(), !6114)
    #dbg_value(i64 1, !2356, !DIExpression(), !6114)
    #dbg_value(i64 1, !2361, !DIExpression(), !6116)
    #dbg_value(i64 -1, !2368, !DIExpression(), !6118)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1, !dbg !6313
  br i1 %i.a, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4IterNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEENtNtNtBa_6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtB8_3map8map_foldB1t_NtNtNtNtB1z_3nfa8thompson9backtrack5FrameuNCNvMs2_B3T_NtB3T_18BoundedBacktracker4step0NCINvNvNtNtB2y_8iterator8Iterator8for_each4callB3R_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6d_3VecB3R_E14extend_trustedINtB3v_3MapINtNtB8_3rev3RevBQ_EB4x_EE0E0E0EB1z_.exit, label %.lr.ph.i.i, !dbg !6314

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  br label %bb.b, !dbg !6314

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.b = phi i64 [ %.sroa.4.0.copyload.i, %.lr.ph.i.i ], [ %i.f, %bb.b ], !dbg !6315 ; 2 uses
  %.sroa.2.012.i.i = phi ptr [ %1, %.lr.ph.i.i ], [ %i.c, %bb.b ]
    #dbg_value(ptr %.sroa.2.012.i.i, !6222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6107)
    #dbg_value(ptr undef, !2359, !DIExpression(), !6119)
    #dbg_value(ptr %.sroa.2.012.i.i, !2365, !DIExpression(), !6116)
    #dbg_value(ptr %.sroa.2.012.i.i, !2372, !DIExpression(), !6118)
  %i.c = getelementptr inbounds i8, ptr %.sroa.2.012.i.i, i64 -4, !dbg !6315 ; 3 uses
    #dbg_value(ptr %i.c, !2365, !DIExpression(), !6116)
    #dbg_value(ptr %i.c, !2372, !DIExpression(), !6118)
    #dbg_value(ptr %i.c, !6222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6107)
    #dbg_value(ptr %i.c, !6225, !DIExpression(), !6120)
  %.val8.i.i = load i32, ptr %i.c, align 4, !dbg !6316, !noalias !6229, !noundef !1030
    #dbg_value(ptr poison, !6230, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6126)
    #dbg_declare(ptr poison, !6234, !DIExpression(), !6127)
    #dbg_value(ptr poison, !6236, !DIExpression(), !6126)
    #dbg_value(i32 %.val8.i.i, !6235, !DIExpression(), !6128)
    #dbg_value(ptr poison, !6238, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6131)
    #dbg_value(ptr poison, !6244, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24), !6131)
    #dbg_declare(ptr poison, !6242, !DIExpression(), !6132)
    #dbg_value(i32 %.val8.i.i, !6243, !DIExpression(), !6131)
    #dbg_value(ptr poison, !6252, !DIExpression(DW_OP_deref, DW_OP_deref), !6135)
    #dbg_value(i32 %.val8.i.i, !6256, !DIExpression(), !6135)
  %i.d = load i64, ptr %.sroa.7.0.copyload.i, align 8, !dbg !6317, !noalias !6258, !noundef !1030
    #dbg_value(i32 0, !6259, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6144)
    #dbg_value(i32 0, !6268, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6148)
    #dbg_value(i32 %.val8.i.i, !6259, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6144)
    #dbg_value(i32 %.val8.i.i, !6268, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6148)
    #dbg_value(i64 %i.d, !6259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6144)
    #dbg_value(i64 %i.d, !6268, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6148)
    #dbg_value(ptr poison, !6263, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6149)
    #dbg_declare(ptr poison, !6264, !DIExpression(), !6150)
    #dbg_value(ptr poison, !6272, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !6151)
    #dbg_value(ptr poison, !6273, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6151)
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %.sroa.6.0.copyload.i, i64 %i.b, !dbg !6318 ; 3 uses
  store i32 0, ptr %i.e, align 8, !dbg !6319, !noalias !6284
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4, !dbg !6319
  store i32 %.val8.i.i, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 4, !dbg !6319, !noalias !6284
  %.sroa.55.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !6319
  store i64 %i.d, ptr %.sroa.55.0..sroa_idx.i.i.i.i, align 8, !dbg !6319, !noalias !6284
  %i.f = add i64 %i.b, 1, !dbg !6320              ; 2 uses
    #dbg_value(ptr undef, !2343, !DIExpression(), !6110)
    #dbg_value(ptr undef, !2347, !DIExpression(), !6112)
    #dbg_value(ptr undef, !2352, !DIExpression(), !6114)
    #dbg_value(i64 1, !2356, !DIExpression(), !6114)
    #dbg_value(i64 1, !2361, !DIExpression(), !6116)
    #dbg_value(i64 -1, !2368, !DIExpression(), !6118)
    #dbg_value(ptr %i.c, !2345, !DIExpression(), !6162)
    #dbg_value(ptr undef, !2327, !DIExpression(), !6106)
    #dbg_value(ptr poison, !2330, !DIExpression(), !6163)
  %i.g = icmp eq ptr %0, %i.c, !dbg !6313
  br i1 %i.g, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4IterNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEENtNtNtBa_6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtB8_3map8map_foldB1t_NtNtNtNtB1z_3nfa8thompson9backtrack5FrameuNCNvMs2_B3T_NtB3T_18BoundedBacktracker4step0NCINvNvNtNtB2y_8iterator8Iterator8for_each4callB3R_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6d_3VecB3R_E14extend_trustedINtB3v_3MapINtNtB8_3rev3RevBQ_EB4x_EE0E0E0EB1z_.exit, label %bb.b, !dbg !6314

_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4IterNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEENtNtNtBa_6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtB8_3map8map_foldB1t_NtNtNtNtB1z_3nfa8thompson9backtrack5FrameuNCNvMs2_B3T_NtB3T_18BoundedBacktracker4step0NCINvNvNtNtB2y_8iterator8Iterator8for_each4callB3R_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6d_3VecB3R_E14extend_trustedINtB3v_3MapINtNtB8_3rev3RevBQ_EB4x_EE0E0E0EB1z_.exit: ; preds = %bb.b, %bb.a
  %.val7.i.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.a ], [ %i.f, %bb.b ], !dbg !6321
    #dbg_value(ptr poison, !6222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6107)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
    #dbg_value(ptr poison, !6287, !DIExpression(), !6166)
    #dbg_value(ptr poison, !6293, !DIExpression(), !6169)
    #dbg_value(ptr poison, !6299, !DIExpression(), !6172)
    #dbg_value(ptr poison, !6305, !DIExpression(), !6175)
    #dbg_value(ptr poison, !2385, !DIExpression(), !6177)
    #dbg_value(ptr poison, !2391, !DIExpression(), !6179)
  store i64 %.val7.i.i, ptr %.sroa.0.0.copyload.i, align 8, !dbg !6322, !noalias !6229
  ret void, !dbg !6323
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB5_6ClonedINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2K_8for_each4callB1I_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB40_3VecB1I_E14extend_trustedBP_E0E0EB1O_(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !6326 {
bb.a:
    #dbg_value(ptr %0, !6409, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6415)
    #dbg_value(ptr %1, !6409, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6415)
    #dbg_declare(ptr poison, !6410, !DIExpression(), !6416)
    #dbg_declare(ptr %2, !6411, !DIExpression(), !6417)
    #dbg_declare(ptr poison, !6418, !DIExpression(), !6437)
    #dbg_value(ptr %0, !6430, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6438)
    #dbg_value(ptr %1, !6430, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6438)
  %3 = ptrtoaddr ptr %0 to i64, !dbg !6519        ; 2 uses
  %4 = ptrtoaddr ptr %1 to i64, !dbg !6519        ; 2 uses
  %.sroa.07.0.copyload = load ptr, ptr %2, align 8, !dbg !6519 ; 2 uses
    #dbg_value(ptr %.sroa.07.0.copyload, !6431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6438)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !6519
  %.sroa.48.0.copyload = load i64, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !6519 ; 6 uses
    #dbg_value(i64 %.sroa.48.0.copyload, !6431, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6438)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !6519
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !6519 ; 4 uses
    #dbg_value(ptr %.sroa.5.0.copyload, !6431, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6438)
    #dbg_value(ptr %.sroa.07.0.copyload, !6439, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6450)
    #dbg_value(ptr %.sroa.07.0.copyload, !6451, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6460)
    #dbg_value(i64 %.sroa.48.0.copyload, !6439, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6450)
    #dbg_value(i64 %.sroa.48.0.copyload, !6451, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6460)
    #dbg_value(ptr %.sroa.5.0.copyload, !6439, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6450)
    #dbg_value(ptr %.sroa.5.0.copyload, !6451, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6460)
    #dbg_value(ptr %0, !6445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6336)
    #dbg_value(ptr %1, !6445, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6336)
    #dbg_declare(ptr poison, !6446, !DIExpression(), !6337)
    #dbg_value(ptr poison, !2327, !DIExpression(), !6340)
    #dbg_value(ptr %0, !6454, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6341)
    #dbg_value(ptr %1, !6454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6341)
    #dbg_declare(ptr poison, !6455, !DIExpression(), !6342)
    #dbg_declare(ptr poison, !6456, !DIExpression(), !6343)
    #dbg_value(ptr undef, !2343, !DIExpression(), !6344)
    #dbg_value(ptr undef, !2347, !DIExpression(), !6346)
    #dbg_value(ptr undef, !2352, !DIExpression(), !6348)
    #dbg_value(i64 1, !2356, !DIExpression(), !6348)
    #dbg_value(i64 1, !2361, !DIExpression(), !6350)
    #dbg_value(i64 -1, !2368, !DIExpression(), !6352)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1, !dbg !6520
  br i1 %i.a, label %.loopexit, label %.lr.ph.i.i.preheader, !dbg !6521

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.b = add i64 %4, -4, !dbg !6521
  %i.c = sub i64 %i.b, %3, !dbg !6521             ; 2 uses
  %i.d = lshr i64 %i.c, 2, !dbg !6521
  %i.e = add nuw nsw i64 %i.d, 1, !dbg !6521      ; 2 uses
  %min.iters.check = icmp ult i64 %i.c, 108, !dbg !6521
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader15, label %vector.memcheck, !dbg !6521

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.f = shl i64 %.sroa.48.0.copyload, 2, !dbg !6521 ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.5.0.copyload, i64 %i.f, !dbg !6521
  %5 = add i64 %4, -4, !dbg !6521
  %6 = sub i64 %5, %3, !dbg !6521
  %i.g = and i64 %6, -4, !dbg !6521               ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.5.0.copyload, i64 %i.f, !dbg !6521
  %i.i = getelementptr i8, ptr %i.h, i64 %i.g, !dbg !6521
  %scevgep10 = getelementptr i8, ptr %i.i, i64 4, !dbg !6521
  %i.j = sub nuw nsw i64 -4, %i.g, !dbg !6521
  %scevgep11 = getelementptr i8, ptr %1, i64 %i.j, !dbg !6521
  %bound0 = icmp ult ptr %scevgep, %1, !dbg !6521
  %bound1 = icmp ult ptr %scevgep11, %scevgep10, !dbg !6521
  %found.conflict = and i1 %bound0, %bound1, !dbg !6521
  br i1 %found.conflict, label %.lr.ph.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 9223372036854775800      ; 4 uses
  %i.k = add i64 %.sroa.48.0.copyload, %n.vec     ; 2 uses
  %i.l = mul i64 %n.vec, -4
  %i.m = getelementptr i8, ptr %1, i64 %i.l
  %i.n = getelementptr [4 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.48.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = mul i64 %index, -4
  %next.gep = getelementptr i8, ptr %1, i64 %i.o  ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %next.gep, i64 -16, !dbg !6522
  %i.q = getelementptr inbounds i8, ptr %next.gep, i64 -32, !dbg !6522
  %wide.load = load <4 x i32>, ptr %i.p, align 4, !dbg !6522, !alias.scope !6461, !noalias !6462
  %wide.load12 = load <4 x i32>, ptr %i.q, align 4, !dbg !6522, !alias.scope !6461, !noalias !6462
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !6522
  %reverse13 = shufflevector <4 x i32> %wide.load12, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !6522
  %i.r = getelementptr [4 x i8], ptr %i.n, i64 %index, !dbg !6523 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !6524
  store <4 x i32> %reverse, ptr %i.r, align 4, !dbg !6524, !alias.scope !6496, !noalias !6497
  store <4 x i32> %reverse13, ptr %i.s, align 4, !dbg !6524, !alias.scope !6496, !noalias !6497
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec, !dbg !6521
  br i1 %i.t, label %middle.block, label %vector.body, !dbg !6521, !llvm.loop !6376

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !6521
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.preheader15, !dbg !6521

.lr.ph.i.i.preheader15:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.48.0.copyload, %vector.memcheck ], [ %.sroa.48.0.copyload, %.lr.ph.i.i.preheader ], [ %i.k, %middle.block ]
  %.sroa.2.012.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph.i.i, !dbg !6521

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader15, %.lr.ph.i.i
  %i.u = phi i64 [ %i.x, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader15 ], !dbg !6525 ; 2 uses
  %.sroa.2.012.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.2.012.i.i.ph, %.lr.ph.i.i.preheader15 ]
    #dbg_value(ptr %.sroa.2.012.i.i, !6454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6341)
    #dbg_value(ptr undef, !2359, !DIExpression(), !6377)
    #dbg_value(ptr %.sroa.2.012.i.i, !2365, !DIExpression(), !6350)
    #dbg_value(ptr %.sroa.2.012.i.i, !2372, !DIExpression(), !6352)
  %i.v = getelementptr inbounds i8, ptr %.sroa.2.012.i.i, i64 -4, !dbg !6525 ; 3 uses
    #dbg_value(ptr %i.v, !2365, !DIExpression(), !6350)
    #dbg_value(ptr %i.v, !2372, !DIExpression(), !6352)
    #dbg_value(ptr %i.v, !6454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6341)
    #dbg_value(ptr %i.v, !6457, !DIExpression(), !6378)
  %.val8.i.i = load i32, ptr %i.v, align 4, !dbg !6522, !noalias !6462, !noundef !1030
    #dbg_value(ptr poison, !6488, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6379)
    #dbg_declare(ptr poison, !6486, !DIExpression(), !6380)
    #dbg_value(ptr poison, !6487, !DIExpression(), !6379)
    #dbg_value(ptr poison, !6478, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6381)
    #dbg_declare(ptr poison, !6479, !DIExpression(), !6382)
    #dbg_value(i32 %.val8.i.i, !6477, !DIExpression(), !6381)
    #dbg_value(ptr poison, !6469, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !6383)
    #dbg_value(ptr poison, !6470, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6383)
    #dbg_value(i32 %.val8.i.i, !6468, !DIExpression(), !6383)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %i.u, !dbg !6523
  store i32 %.val8.i.i, ptr %i.w, align 4, !dbg !6524, !noalias !6500
  %i.x = add i64 %i.u, 1, !dbg !6526              ; 2 uses
    #dbg_value(ptr undef, !2343, !DIExpression(), !6344)
    #dbg_value(ptr undef, !2347, !DIExpression(), !6346)
    #dbg_value(ptr undef, !2352, !DIExpression(), !6348)
    #dbg_value(i64 1, !2356, !DIExpression(), !6348)
    #dbg_value(i64 1, !2361, !DIExpression(), !6350)
    #dbg_value(i64 -1, !2368, !DIExpression(), !6352)
    #dbg_value(ptr %i.v, !2345, !DIExpression(), !6386)
    #dbg_value(ptr undef, !2327, !DIExpression(), !6340)
    #dbg_value(ptr poison, !2330, !DIExpression(), !6387)
  %i.y = icmp eq ptr %0, %i.v, !dbg !6520
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i, !dbg !6521, !llvm.loop !6388

.loopexit:                                        ; preds = %.lr.ph.i.i, %middle.block, %bb.a
  %.val7.i.i = phi i64 [ %.sroa.48.0.copyload, %bb.a ], [ %i.k, %middle.block ], [ %i.x, %.lr.ph.i.i ], !dbg !6527
    #dbg_value(ptr poison, !6454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6341)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload) ]
    #dbg_value(ptr poison, !6501, !DIExpression(), !6391)
    #dbg_value(ptr poison, !6507, !DIExpression(), !6394)
    #dbg_value(ptr poison, !6513, !DIExpression(), !6397)
    #dbg_value(ptr poison, !2385, !DIExpression(), !6399)
    #dbg_value(ptr poison, !2391, !DIExpression(), !6401)
  store i64 %.val7.i.i, ptr %.sroa.07.0.copyload, align 8, !dbg !6528, !noalias !6462
  ret void, !dbg !6529
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNCNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB7_3DFA19start_state_forward0Bb_(i64 %.24.val, i64 %0) unnamed_addr #0 !dbg !368 {
bb.a:
  %.sroa.03.0.extract.trunc = trunc i64 %0 to i32 ; 3 uses
  %.sroa.4.0.extract.shift = lshr i64 %0, 32      ; 2 uses
    #dbg_value(i32 %.sroa.03.0.extract.trunc, !2428, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6530)
    #dbg_value(i64 %.sroa.4.0.extract.shift, !2428, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !6530)
    #dbg_value(ptr poison, !2429, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6530)
    #dbg_value(i64 1, !2435, !DIExpression(), !6532)
    #dbg_value(ptr @11, !2438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6534)
    #dbg_value(i64 36, !2438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6534)
  %i.a = icmp ugt i32 %.sroa.03.0.extract.trunc, 2, !dbg !6538
  %i.b = add i32 %.sroa.03.0.extract.trunc, -3, !dbg !6539
  %trunc = select i1 %i.a, i32 %i.b, i32 2, !dbg !6538
  switch i32 %trunc, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ], !dbg !6539

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !6540

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError7gave_up(i64 noundef %.24.val), !dbg !6541
  br label %bb.f, !dbg !6542

bb.d:                                             ; preds = %bb.a
    #dbg_value(i64 %.sroa.4.0.extract.shift, !2430, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6535)
    #dbg_value(i64 %.24.val, !2436, !DIExpression(), !6532)
  %i.d = icmp eq i64 %.24.val, 0, !dbg !6543
  br i1 %i.d, label %bb.h, label %bb.g, !dbg !6543, !prof !1458

bb.e:                                             ; preds = %bb.a
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
    #dbg_value(i32 %.sroa.4.0.extract.trunc, !2428, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6530)
    #dbg_value(i32 %.sroa.03.0.extract.trunc, !2432, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6536)
    #dbg_value(i32 %.sroa.4.0.extract.trunc, !2432, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6536)
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError20unsupported_anchored(i32 noundef %.sroa.03.0.extract.trunc, i32 %.sroa.4.0.extract.trunc), !dbg !6544
  br label %bb.f, !dbg !6545

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.c
  %.sroa.04.0 = phi ptr [ %i.c, %bb.c ], [ %i.g, %bb.g ], [ %i.e, %bb.e ], !dbg !6530
  ret ptr %.sroa.04.0, !dbg !6546

bb.g:                                             ; preds = %bb.d
  %.sroa.3.4.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8, !dbg !6547
    #dbg_value(i8 %.sroa.3.4.extract.trunc, !2430, !DIExpression(), !6535)
  %i.f = add i64 %.24.val, -1, !dbg !6548
    #dbg_value(i64 %i.f, !2442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6534)
    #dbg_value(i64 1, !2442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6534)
    #dbg_value(i64 %i.f, !2431, !DIExpression(), !6537)
  %i.g = tail call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError4quit(i8 noundef %.sroa.3.4.extract.trunc, i64 noundef %i.f), !dbg !6549
  br label %bb.f, !dbg !6550

bb.h:                                             ; preds = %bb.d
    #dbg_value(i64 poison, !2442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6534)
    #dbg_value(i64 poison, !2442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6534)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #21, !dbg !6551
  unreachable, !dbg !6551
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCsdnbpgXzNiEQ_6memchr4arch3all6twowayNtB2_6Finder3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 2, -9223372036854775808) %2) unnamed_addr #0 !dbg !6558 {
bb.a:
    #dbg_value(ptr %1, !6636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6647)
    #dbg_value(i64 %2, !6636, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6647)
    #dbg_value(ptr poison, !6648, !DIExpression(), !6569)
    #dbg_value(ptr %1, !6657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6570)
    #dbg_value(ptr %1, !6662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6573)
    #dbg_value(ptr %1, !6665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6576)
    #dbg_value(ptr %1, !6667, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6582)
    #dbg_value(i64 %2, !6657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6570)
    #dbg_value(i64 %2, !6662, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6573)
    #dbg_value(i64 %2, !6665, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6576)
    #dbg_value(i64 %2, !6667, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6582)
    #dbg_value(i64 1, !6672, !DIExpression(), !6585)
    #dbg_value(i64 0, !6658, !DIExpression(), !6586)
    #dbg_value(i64 %2, !6668, !DIExpression(), !6587)
    #dbg_value(i64 %2, !6675, !DIExpression(), !6590)
    #dbg_value(ptr %1, !6669, !DIExpression(), !6591)
    #dbg_value(ptr %1, !6676, !DIExpression(), !6590)
    #dbg_value(ptr %1, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6592)
    #dbg_value(!DIArgList(ptr %1, i64 %2), !6659, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !6592)
    #dbg_value(ptr undef, !6648, !DIExpression(), !6569)
    #dbg_value(ptr %1, !6649, !DIExpression(), !6593)
    #dbg_value(ptr %1, !6673, !DIExpression(), !6585)
    #dbg_value(!DIArgList(ptr %1, i64 %2), !6650, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6594)
    #dbg_value(ptr poison, !6679, !DIExpression(), !6597)
    #dbg_value(ptr poison, !6680, !DIExpression(), !6598)
  %xtraiter = and i64 %2, 3, !dbg !6708           ; 3 uses
  %i.a = icmp samesign ult i64 %2, 4, !dbg !6708
  br i1 %i.a, label %.lr.ph.i.epil.preheader, label %.new, !dbg !6708

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %2, 9223372036854775804, !dbg !6708
  br label %.lr.ph.i, !dbg !6708

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.new
  %.sroa.0.017.i = phi i64 [ 0, %.new ], [ %i.y, %.lr.ph.i ]
  %.sroa.02.016.i = phi ptr [ %1, %.new ], [ %i.t, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %.lr.ph.i ]
    #dbg_value(i64 %.sroa.0.017.i, !6658, !DIExpression(), !6586)
    #dbg_value(ptr %.sroa.02.016.i, !6659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6592)
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.02.016.i, i64 1, !dbg !6709
end_hunk_0
begin_hunk_1_@_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search8find_rev:bb.a
    #dbg_value(ptr %2, !18673, !DIExpression(), !18454)
  %.sroa.072.0.copyload.i = load i64, ptr %2, align 8, !dbg !19469, !alias.scope !18773, !noalias !18792
    #dbg_value(i64 %.sroa.072.0.copyload.i, !18636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18017)
  %.sroa.473.0.copyload.i = load i64, ptr %.sroa.442.0..sroa_idx.i, align 8, !dbg !19469, !alias.scope !18773, !noalias !18792 ; 3 uses
    #dbg_value(i64 %.sroa.473.0.copyload.i, !18636, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18017)
    #dbg_value(i64 poison, !18636, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18017)
  store i64 0, ptr %2, align 8, !dbg !19470, !alias.scope !18773, !noalias !18792
  %i.wq = trunc nuw i64 %.sroa.072.0.copyload.i to i1, !dbg !19471
  br i1 %i.wq, label %bb.gs, label %bb.hd, !dbg !19471, !prof !1431

bb.gs:                                            ; preds = %bb.gr
    #dbg_value(i64 %.sroa.473.0.copyload.i, !18627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18455)
    #dbg_value(i64 %i.n, !18627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18455)
    #dbg_value(ptr poison, !18692, !DIExpression(), !18457)
  %.not241.i = icmp ugt i64 %.sroa.473.0.copyload.i, %i.n, !dbg !19472
  %i.wr = sub nuw i64 %i.n, %.sroa.473.0.copyload.i, !dbg !19472
  %i.ws = sub nuw i64 %.sroa.473.0.copyload.i, %i.n, !dbg !19472
  %.sroa.075.0.i = select i1 %.not241.i, i64 %i.ws, i64 %i.wr, !dbg !19472
  %i.wt = getelementptr inbounds nuw i8, ptr %2, i64 344, !dbg !19473 ; 2 uses
  %i.wu = load i64, ptr %i.wt, align 8, !dbg !19473, !alias.scope !18773, !noalias !18792, !noundef !1030
  %i.wv = add i64 %i.wu, %.sroa.075.0.i, !dbg !19473
  store i64 %i.wv, ptr %i.wt, align 8, !dbg !19473, !alias.scope !18773, !noalias !18792
    #dbg_value(ptr %1, !3383, !DIExpression(), !17316)
    #dbg_value(ptr %2, !3384, !DIExpression(), !17316)
    #dbg_value(ptr %3, !3385, !DIExpression(), !17316)
    #dbg_value(ptr %3, !18677, !DIExpression(), !18459)
    #dbg_value(ptr undef, !3386, !DIExpression(), !17316)
    #dbg_value(ptr undef, !3381, !DIExpression(), !17315)
    #dbg_value(ptr undef, !3378, !DIExpression(), !17314)
    #dbg_value(ptr undef, !3397, !DIExpression(), !17311)
    #dbg_value(ptr undef, !3378, !DIExpression(), !17310)
    #dbg_value(ptr undef, !3381, !DIExpression(), !17307)
    #dbg_value(ptr undef, !3378, !DIExpression(), !17306)
    #dbg_value(ptr undef, !3387, !DIExpression(), !17316)
    #dbg_declare(ptr poison, !3399, !DIExpression(), !18461)
    #dbg_declare(ptr poison, !3412, !DIExpression(), !18463)
    #dbg_value(i64 %i.n, !3388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18464)
    #dbg_value(i64 poison, !3388, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18464)
    #dbg_value(i64 %i.n, !3424, !DIExpression(), !18467)
    #dbg_value(i64 %i.n, !3424, !DIExpression(), !18470)
  %.not.i97 = icmp eq i64 %i.n, 0, !dbg !19474
  br i1 %.not.i97, label %bb.gt, label %bb.gu, !dbg !19474

bb.gt:                                            ; preds = %bb.gs
  %i.ww = call fastcc { i32, i32 } @_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA14next_eoi_state(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %2, i32 noundef %.sroa.0211.3361) #22, !dbg !19475, !noalias !18818 ; 2 uses
  %i.wx = extractvalue { i32, i32 } %i.ww, 0, !dbg !19475
    #dbg_value(i32 %i.wx, !3420, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !18475)
    #dbg_value(i32 poison, !3420, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !18475)
    #dbg_value(ptr poison, !3421, !DIExpression(), !18476)
    #dbg_value(ptr poison, !3432, !DIExpression(), !18477)
  %i.wy = trunc i32 %i.wx to i1, !dbg !19476
  br i1 %i.wy, label %bb.gv, label %bb.gw, !dbg !19476

bb.gu:                                            ; preds = %bb.gs
  %i.wz = add i64 %i.n, -1, !dbg !19477           ; 4 uses
  %i.xa = icmp ult i64 %i.wz, %i.ly, !dbg !19478
  br i1 %i.xa, label %bb.gx, label %bb.gy, !dbg !19478

bb.gv:                                            ; preds = %bb.gt
  %i.xb = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError7gave_up(i64 noundef 0), !dbg !19479, !noalias !18818
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search7eoi_rev.exit106, !dbg !19480

bb.gw:                                            ; preds = %bb.gt
  %i.xc = extractvalue { i32, i32 } %i.ww, 1, !dbg !19475 ; 2 uses
    #dbg_value(i32 %i.xc, !3420, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !18475)
    #dbg_value(i32 %i.xc, !18510, !DIExpression(), !18791)
  %i.xd = and i32 %i.xc, 134217728, !dbg !19481
  %.not49.i103 = icmp eq i32 %i.xd, 0, !dbg !19481
  br i1 %.not49.i103, label %bb.he, label %.sink.split678, !dbg !19482

bb.gx:                                            ; preds = %bb.gu
  %i.xe = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.wz, !dbg !19478
  %i.xf = load i8, ptr %i.xe, align 1, !dbg !19478, !noalias !18819, !noundef !1030 ; 2 uses
    #dbg_value(i8 %i.xf, !3389, !DIExpression(), !18480)
  %i.xg = call fastcc { i32, i32 } @_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA10next_state(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %2, i32 noundef %.sroa.0211.3361, i8 noundef %i.xf) #22, !dbg !19483, !noalias !18818 ; 2 uses
  %i.xh = extractvalue { i32, i32 } %i.xg, 0, !dbg !19483
    #dbg_value(i32 %i.xh, !3408, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !18481)
    #dbg_value(i32 poison, !3408, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !18481)
    #dbg_value(ptr poison, !3409, !DIExpression(), !18482)
    #dbg_value(ptr poison, !3428, !DIExpression(), !18483)
  %i.xi = trunc i32 %i.xh to i1, !dbg !19484
  br i1 %i.xi, label %bb.gz, label %bb.ha, !dbg !19484

bb.gy:                                            ; preds = %bb.gu
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.wz, i64 noundef %i.ly, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #21, !dbg !19478, !noalias !18819
  unreachable, !dbg !19478

bb.gz:                                            ; preds = %bb.gx
  %i.xj = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError7gave_up(i64 noundef %i.n), !dbg !19485, !noalias !18818
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search7eoi_rev.exit106, !dbg !19486

bb.ha:                                            ; preds = %bb.gx
  %i.xk = extractvalue { i32, i32 } %i.xg, 1, !dbg !19483 ; 2 uses
    #dbg_value(i32 %i.xk, !3408, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !18481)
    #dbg_value(i32 %i.xk, !18510, !DIExpression(), !18791)
  %i.xl = zext i32 %i.xk to i64, !dbg !19487      ; 2 uses
  %i.xm = and i64 %i.xl, 134217728, !dbg !19488
  %.not50.i98 = icmp eq i64 %i.xm, 0, !dbg !19488
  br i1 %.not50.i98, label %bb.hb, label %.sink.split678, !dbg !19489

bb.hb:                                            ; preds = %bb.ha
  %i.xn = and i64 %i.xl, 536870912, !dbg !19490
  %.not51.i102 = icmp eq i64 %i.xn, 0, !dbg !19490
  br i1 %.not51.i102, label %bb.he, label %bb.hc, !dbg !19491

bb.hc:                                            ; preds = %bb.hb
  %i.xo = call noundef nonnull align 8 ptr @_RNvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10MatchError4quit(i8 noundef %i.xf, i64 noundef %i.wz), !dbg !19492, !noalias !18818
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search7eoi_rev.exit106, !dbg !19486

bb.hd:                                            ; preds = %bb.gr
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #21, !dbg !19493, !noalias !18771
  unreachable, !dbg !19493

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search7eoi_rev.exit106: ; preds = %bb.hc, %bb.gz, %bb.gv
  %.sroa.0.0.i101 = phi ptr [ %i.xj, %bb.gz ], [ %i.xb, %bb.gv ], [ %i.xo, %bb.hc ], !dbg !19494
    #dbg_value(i64 0, !18509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18775)
    #dbg_value(i64 undef, !18509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18775)
    #dbg_value(i32 undef, !18509, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !18775)
    #dbg_value(ptr %.sroa.0.0.i101, !18526, !DIExpression(), !18484)
    #dbg_value(ptr %.sroa.0.0.i101, !18660, !DIExpression(), !18486)
    #dbg_value(ptr %.sroa.0.0.i101, !18665, !DIExpression(), !18487)
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19495
  store ptr %.sroa.0.0.i101, ptr %i.xp, align 8, !dbg !19495, !alias.scope !18771, !noalias !18790
  store i64 2, ptr %0, align 8, !dbg !19495, !alias.scope !18771, !noalias !18790
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search12find_rev_imp.exit73, !dbg !19403

.sink.split678:                                   ; preds = %bb.ha, %bb.gw
  %.sink679 = phi i32 [ %i.xc, %bb.gw ], [ %i.xk, %bb.ha ]
  %.sroa.13.1.ph.ph = phi i64 [ 0, %bb.gw ], [ %i.n, %bb.ha ]
  %i.xq = getelementptr inbounds nuw i8, ptr %1, i64 688, !dbg !19494
  %.val110 = load ptr, ptr %i.xq, align 16, !dbg !19494, !nonnull !1030, !noundef !1030
  %i.xr = getelementptr inbounds nuw i8, ptr %1, i64 696, !dbg !19494
  %.val111 = load i64, ptr %i.xr, align 8, !dbg !19494
  %i.xs = getelementptr inbounds nuw i8, ptr %2, i64 80, !dbg !19494
  %.val112 = load ptr, ptr %i.xs, align 8, !dbg !19494
  %i.xt = getelementptr inbounds nuw i8, ptr %2, i64 88, !dbg !19494
  %.val113 = load i64, ptr %i.xt, align 8, !dbg !19494
  %i.xu = call fastcc noundef i32 @_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA13match_pattern(ptr nonnull %.val110, i64 %.val111, ptr %.val112, i64 %.val113, i32 noundef %.sink679, i64 noundef 0) #22, !dbg !19494
  br label %bb.he, !dbg !19496

bb.he:                                            ; preds = %.sink.split678, %bb.hb, %bb.gw
  %.sroa.18.1.ph = phi i32 [ undef, %bb.gw ], [ undef, %bb.hb ], [ %i.xu, %.sink.split678 ]
  %.sroa.13.1.ph = phi i64 [ undef, %bb.gw ], [ undef, %bb.hb ], [ %.sroa.13.1.ph.ph, %.sink.split678 ]
  %.sroa.0.1.ph = phi i64 [ 0, %bb.gw ], [ 0, %bb.hb ], [ 1, %.sink.split678 ]
    #dbg_value(i64 %.sroa.0.1.ph, !18509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18775)
    #dbg_value(i64 %.sroa.13.1.ph, !18509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18775)
    #dbg_value(i32 %.sroa.18.1.ph, !18509, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !18775)
  store i64 %.sroa.0.1.ph, ptr %0, align 8, !dbg !19496, !noalias !18790
  %.sroa.4231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19496
  store i64 %.sroa.13.1.ph, ptr %.sroa.4231.0..sroa_idx, align 8, !dbg !19496, !noalias !18790
  %.sroa.5232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19496
  store i32 %.sroa.18.1.ph, ptr %.sroa.5232.0..sroa_idx, align 8, !dbg !19496, !noalias !18790
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search12find_rev_imp.exit73, !dbg !19497

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search7eoi_rev.exit96: ; preds = %bb.ex, %bb.eu, %bb.em
  %.sroa.0.0.i91 = phi ptr [ %i.qn, %bb.eu ], [ %i.pn, %bb.em ], [ %i.qs, %bb.ex ], !dbg !19498
    #dbg_value(i64 0, !18509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18775)
    #dbg_value(i64 undef, !18509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18775)
    #dbg_value(i32 undef, !18509, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !18775)
    #dbg_value(ptr %.sroa.0.0.i91, !18513, !DIExpression(), !18488)
    #dbg_value(ptr %.sroa.0.0.i91, !18660, !DIExpression(), !18490)
    #dbg_value(ptr %.sroa.0.0.i91, !18662, !DIExpression(), !18491)
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19499
  store ptr %.sroa.0.0.i91, ptr %i.xv, align 8, !dbg !19499, !alias.scope !18771, !noalias !18790
  store i64 2, ptr %0, align 8, !dbg !19499, !alias.scope !18771, !noalias !18790
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search12find_rev_imp.exit73, !dbg !19500

.sink.split684:                                   ; preds = %bb.ev, %bb.en
  %.sink685 = phi i32 [ %i.po, %bb.en ], [ %i.qo, %bb.ev ]
  %.sroa.13.0.ph.ph = phi i64 [ 0, %bb.en ], [ %i.n, %bb.ev ]
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 688, !dbg !19498
  %.val118 = load ptr, ptr %i.xw, align 16, !dbg !19498, !nonnull !1030, !noundef !1030
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 696, !dbg !19498
  %.val119 = load i64, ptr %i.xx, align 8, !dbg !19498
  %i.xy = getelementptr inbounds nuw i8, ptr %2, i64 80, !dbg !19498
  %.val120 = load ptr, ptr %i.xy, align 8, !dbg !19498
  %i.xz = getelementptr inbounds nuw i8, ptr %2, i64 88, !dbg !19498
  %.val121 = load i64, ptr %i.xz, align 8, !dbg !19498
  %i.ya = call fastcc noundef i32 @_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB5_3DFA13match_pattern(ptr nonnull %.val118, i64 %.val119, ptr %.val120, i64 %.val121, i32 noundef %.sink685, i64 noundef 0) #22, !dbg !19498
  br label %bb.hf, !dbg !19501

bb.hf:                                            ; preds = %.sink.split684, %bb.ew, %bb.en
  %.sroa.18.0.ph = phi i32 [ undef, %bb.en ], [ undef, %bb.ew ], [ %i.ya, %.sink.split684 ]
  %.sroa.13.0.ph = phi i64 [ undef, %bb.en ], [ undef, %bb.ew ], [ %.sroa.13.0.ph.ph, %.sink.split684 ]
  %.sroa.0.0.ph = phi i64 [ 0, %bb.en ], [ 0, %bb.ew ], [ 1, %.sink.split684 ]
    #dbg_value(i64 %.sroa.0.0.ph, !18509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18775)
    #dbg_value(i64 %.sroa.13.0.ph, !18509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18775)
    #dbg_value(i32 %.sroa.18.0.ph, !18509, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !18775)
  store i64 %.sroa.0.0.ph, ptr %0, align 8, !dbg !19501, !noalias !18790
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19501
  store i64 %.sroa.13.0.ph, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !19501, !noalias !18790
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19501
  store i32 %.sroa.18.0.ph, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !19501, !noalias !18790
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search12find_rev_imp.exit73, !dbg !19502

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search12find_rev_imp.exit73: ; preds = %bb.he, %bb.hf, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search7eoi_rev.exit96, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search7eoi_rev.exit106, %bb.gp, %bb.gn, %bb.gl, %bb.ga, %bb.fp, %bb.ec, %bb.dd, %bb.de, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search7eoi_rev.exit, %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search7eoi_rev.exit86, %bb.co, %bb.cm, %bb.by, %bb.bn, %bb.aa, %bb.c
  ret void, !dbg !18828
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, i64 } @_RNvNtNtCsdnbpgXzNiEQ_6memchr6memmem8searcher19searcher_kind_empty(ptr noalias nofree readonly align 32 captures(none) %0, ptr noalias nofree readnone align 4 captures(none) %1, ptr noalias nofree nonnull readonly captures(none) %2, i64 range(i64 0, -9223372036854775808) %3, ptr noalias nofree nonnull readonly captures(none) %4, i64 range(i64 0, -9223372036854775808) %5) unnamed_addr #9 !dbg !19503 {
bb.a:
    #dbg_value(ptr poison, !19504, !DIExpression(), !19509)
    #dbg_value(ptr poison, !19505, !DIExpression(), !19509)
    #dbg_value(ptr poison, !19506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19509)
    #dbg_value(i64 poison, !19506, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19509)
    #dbg_value(ptr poison, !19507, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19509)
    #dbg_value(i64 poison, !19507, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19509)
  ret { i64, i64 } { i64 1, i64 0 }, !dbg !19510
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5errorNtB5_10BuildErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !dbg !19519 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !19541, !DIExpression(), !19549)
    #dbg_value(ptr %1, !19542, !DIExpression(), !19549)
    #dbg_value(ptr %1, !19550, !DIExpression(), !19557)
    #dbg_value(ptr %1, !19550, !DIExpression(), !19560)
  %i.c = load i64, ptr %0, align 8, !dbg !19573, !range !19561, !noundef !1030
  %i.d = icmp eq i64 %i.c, -2, !dbg !19573
  br i1 %i.d, label %bb.d, label %bb.b, !dbg !19574

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !19575
  %i.f = load i32, ptr %i.e, align 8, !dbg !19575, !noundef !1030
    #dbg_value(i32 %i.f, !19543, !DIExpression(), !19562)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19576
    #dbg_value(ptr poison, !19563, !DIExpression(), !19566)
    #dbg_value(ptr poison, !19567, !DIExpression(), !19570)
  %i.g = zext i32 %i.f to i64, !dbg !19577
  store i64 %i.g, ptr %i.b, align 8, !dbg !19577
    #dbg_value(ptr %i.b, !19545, !DIExpression(), !19571)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19578
  store ptr %i.b, ptr %i.a, align 8, !dbg !19578
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !19578
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !19578
    #dbg_value(ptr @50, !19551, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19557)
    #dbg_value(ptr %i.a, !19551, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19557)
  %i.h = load ptr, ptr %1, align 8, !dbg !19579, !nonnull !1030, !noundef !1030
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19579
  %i.j = load ptr, ptr %i.i, align 8, !dbg !19579, !nonnull !1030, !align !2065, !noundef !1030
  %i.k = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @50, ptr noundef nonnull %i.a), !dbg !19580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19581
  br label %bb.c, !dbg !19581

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.1.in = phi i1 [ %i.q, %bb.d ], [ %i.k, %bb.b ]
  ret i1 %.sroa.0.1.in, !dbg !19582

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr @51, !19551, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19560)
    #dbg_value(ptr inttoptr (i64 37 to ptr), !19551, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19560)
    #dbg_value(ptr @51, !19553, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19572)
    #dbg_value(i64 18, !19553, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19572)
  %i.l = load ptr, ptr %1, align 8, !dbg !19583, !nonnull !1030, !noundef !1030
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19583
  %i.n = load ptr, ptr %i.m, align 8, !dbg !19583, !nonnull !1030, !align !2065, !noundef !1030
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !19583
  %i.p = load ptr, ptr %i.o, align 8, !dbg !19583, !invariant.load !1030, !nonnull !1030
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 18) #22, !dbg !19584
  br label %bb.c, !dbg !19585
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid5errorNtB5_10BuildErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !19603 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !19632, !DIExpression(), !19655)
    #dbg_value(ptr %1, !19633, !DIExpression(), !19655)
    #dbg_value(ptr %1, !19656, !DIExpression(), !19664)
    #dbg_value(ptr %1, !19656, !DIExpression(), !19667)
    #dbg_value(ptr %1, !19656, !DIExpression(), !19670)
  %i.f = load i64, ptr %0, align 8, !dbg !19679, !range !19671, !noundef !1030 ; 2 uses
  %i.g = add i64 %i.f, 9223372036854775801, !dbg !19679
  %i.h = icmp ult i64 %i.g, 3, !dbg !19679
  %i.i = add nsw i64 %i.f, 9223372036854775802, !dbg !19679
  %i.j = select i1 %i.h, i64 %i.i, i64 0, !dbg !19679
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.f
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ], !dbg !19680

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !19681

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !19682
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19682
  %i.l = load i64, ptr %i.k, align 8, !dbg !19682, !noundef !1030
    #dbg_value(i64 %i.l, !19634, !DIExpression(), !19673)
  store i64 %i.l, ptr %i.e, align 8, !dbg !19682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !19683
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19683
  %i.n = load i64, ptr %i.m, align 8, !dbg !19683, !noundef !1030
    #dbg_value(i64 %i.n, !19635, !DIExpression(), !19673)
  store i64 %i.n, ptr %i.d, align 8, !dbg !19683
    #dbg_value(ptr %i.d, !19637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19674)
    #dbg_value(ptr %i.e, !19637, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19674)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !19684
  store ptr %i.d, ptr %i.c, align 8, !dbg !19684
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !19684
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !19684
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !19684
  store ptr %i.e, ptr %i.o, align 8, !dbg !19684
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !19684
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.422.0..sroa_idx, align 8, !dbg !19684
    #dbg_value(ptr @52, !19657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19667)
    #dbg_value(ptr %i.c, !19657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19667)
  %i.p = load ptr, ptr %1, align 8, !dbg !19685, !nonnull !1030, !noundef !1030
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19685
  %i.r = load ptr, ptr %i.q, align 8, !dbg !19685, !nonnull !1030, !align !2065, !noundef !1030
  %i.s = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, ptr noundef nonnull @52, ptr noundef nonnull %i.c), !dbg !19686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !19687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !19687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !19687
  br label %bb.g, !dbg !19687

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19688
    #dbg_value(ptr %i.t, !19641, !DIExpression(), !19675)
  %i.u = tail call noundef zeroext i1 @_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid2idNtB5_16LazyStateIDErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !19689
  br label %bb.g, !dbg !19690

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19691
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19691
    #dbg_value(ptr %i.v, !19643, !DIExpression(), !19676)
  store ptr %i.v, ptr %i.b, align 8, !dbg !19691
    #dbg_value(ptr %i.b, !19645, !DIExpression(), !19677)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19692
  store ptr %i.b, ptr %i.a, align 8, !dbg !19692
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !19692
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRReNtB6_7Display3fmtCs9GYDdpCSJ4S_14regex_automata, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !19692
    #dbg_value(ptr @53, !19657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19670)
    #dbg_value(ptr %i.a, !19657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19670)
  %i.w = load ptr, ptr %1, align 8, !dbg !19693, !nonnull !1030, !noundef !1030
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19693
  %i.y = load ptr, ptr %i.x, align 8, !dbg !19693, !nonnull !1030, !align !2065, !noundef !1030
  %i.z = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noundef nonnull @53, ptr noundef nonnull %i.a), !dbg !19694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19695
  br label %bb.g, !dbg !19695

bb.f:                                             ; preds = %bb.a
    #dbg_value(ptr @51, !19657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19664)
    #dbg_value(ptr inttoptr (i64 37 to ptr), !19657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19664)
    #dbg_value(ptr @51, !19658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19678)
    #dbg_value(i64 18, !19658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19678)
  %i.aa = load ptr, ptr %1, align 8, !dbg !19696, !nonnull !1030, !noundef !1030
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19696
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !19696, !nonnull !1030, !align !2065, !noundef !1030
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24, !dbg !19696
  %i.ae = load ptr, ptr %i.ad, align 8, !dbg !19696, !invariant.load !1030, !nonnull !1030
  %i.af = tail call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 18) #22, !dbg !19697
  br label %bb.g, !dbg !19698

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.d
  %.sroa.0.0.in = phi i1 [ %i.af, %bb.f ], [ %i.z, %bb.e ], [ %i.s, %bb.c ], [ %i.u, %bb.d ]
  ret i1 %.sroa.0.0.in, !dbg !19699
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i1, i8 } @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #10 !dbg !19700 {
bb.a:
    #dbg_value(ptr %0, !19730, !DIExpression(), !19732)
    #dbg_value(ptr %0, !19733, !DIExpression(), !19705)
    #dbg_value(ptr %0, !19737, !DIExpression(), !19708)
    #dbg_value(ptr %0, !19742, !DIExpression(), !19713)
    #dbg_value(i64 1, !19746, !DIExpression(), !19713)
    #dbg_value(i64 1, !19750, !DIExpression(), !19716)
    #dbg_value(i64 -1, !19754, !DIExpression(), !19719)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19769 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !dbg !19769, !alias.scope !19760, !nonnull !1030, !noundef !1030 ; 2 uses
    #dbg_value(ptr %i.b, !19735, !DIExpression(), !19722)
    #dbg_value(ptr %0, !19761, !DIExpression(), !19725)
    #dbg_value(ptr poison, !19762, !DIExpression(), !19726)
  %i.c = load ptr, ptr %0, align 8, !dbg !19770, !alias.scope !19760, !nonnull !1030, !noundef !1030
  %i.d = icmp ne ptr %i.c, %i.b, !dbg !19770      ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !19771

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.a, !19748, !DIExpression(), !19727)
    #dbg_value(ptr %i.b, !19752, !DIExpression(), !19716)
    #dbg_value(ptr %i.b, !19758, !DIExpression(), !19719)
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -1, !dbg !19772 ; 2 uses
    #dbg_value(ptr %i.e, !19752, !DIExpression(), !19716)
    #dbg_value(ptr %i.e, !19758, !DIExpression(), !19719)
  store ptr %i.e, ptr %i.a, align 8, !dbg !19773, !alias.scope !19760
    #dbg_value(ptr %i.e, !19764, !DIExpression(), !19768)
  %i.f = load i8, ptr %i.e, align 1, !dbg !19774, !noundef !1030
  br label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !19775

end_hunk_1
