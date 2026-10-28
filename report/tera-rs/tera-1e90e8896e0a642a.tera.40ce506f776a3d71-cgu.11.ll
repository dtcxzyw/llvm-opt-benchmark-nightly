Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.11?download=true
inline.NumInlined: 436
inline.NumDeleted: 193
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s1_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Z_5count0EB26_:bb.a
    #dbg_value(i64 %.sroa.01.024.i.i.i, !6120, !DIExpression(), !6017)
    #dbg_value(ptr poison, !6121, !DIExpression(), !6017)
    #dbg_value(ptr poison, !6115, !DIExpression(), !6018)
    #dbg_value(i64 %.sroa.01.024.i.i.i, !6113, !DIExpression(), !6018)
    #dbg_value(ptr poison, !6114, !DIExpression(), !6018)
  %i.r = add nuw i64 %.sroa.01.024.i.i.i, 1, !dbg !6145
    #dbg_value(i64 %i.r, !6079, !DIExpression(), !5992)
    #dbg_value(ptr %0, !2287, !DIExpression(), !5994)
    #dbg_value(i64 1, !2302, !DIExpression(), !5996)
    #dbg_value(ptr %i.n, !2298, !DIExpression(), !5997)
    #dbg_value(ptr %i.n, !2306, !DIExpression(), !5996)
    #dbg_value(ptr %i.g, !2299, !DIExpression(), !5998)
    #dbg_value(ptr poison, !2309, !DIExpression(), !6000)
    #dbg_value(ptr poison, !2313, !DIExpression(), !6001)
  %i.s = icmp eq ptr %i.n, %i.g, !dbg !6134
  br i1 %i.s, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s1_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3N_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B2Z_5count0E0B48_EB26_.exit, label %bb.d, !dbg !6135

bb.g:                                             ; preds = %bb.b
  %i.t = add i64 %i.f, -1, !dbg !6146
    #dbg_value(ptr %0, !2399, !DIExpression(), !6020)
    #dbg_value(i64 %i.t, !2402, !DIExpression(), !6020)
    #dbg_value(i64 1, !2410, !DIExpression(), !6024)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6147
  %i.v = load ptr, ptr %i.u, align 8, !dbg !6147, !alias.scope !6126, !nonnull !975, !noundef !975 ; 2 uses
    #dbg_value(ptr %i.v, !2404, !DIExpression(), !6027)
    #dbg_value(ptr %i.v, !2424, !DIExpression(), !6028)
  %i.w = load ptr, ptr %0, align 8, !dbg !6148, !alias.scope !6126, !nonnull !975, !noundef !975 ; 2 uses
    #dbg_value(ptr %i.w, !2425, !DIExpression(), !6028)
    #dbg_value(ptr %i.v, !2418, !DIExpression(), !6029)
    #dbg_value(ptr %i.w, !2419, !DIExpression(), !6029)
    #dbg_value(ptr %i.w, !2414, !DIExpression(), !6030)
    #dbg_value(ptr %i.v, !2413, !DIExpression(), !6030)
  %i.x = ptrtoint ptr %i.v to i64, !dbg !6149
  %i.y = ptrtoint ptr %i.w to i64, !dbg !6149
  %i.z = sub nuw i64 %i.x, %i.y, !dbg !6149
  %.not.i.not.i.i = icmp ult i64 %i.t, %i.z, !dbg !6150
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f, !dbg !6150
  br i1 %.not.i.not.i.i, label %bb.c, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s1_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3N_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B2Z_5count0E0B48_EB26_.exit, !dbg !6151

_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s1_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3N_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B2Z_5count0E0B48_EB26_.exit: ; preds = %bb.e, %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s1_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i, %bb.a, %bb.c, %bb.g
  %.sroa.0.1.i = phi i64 [ 0, %bb.g ], [ 0, %bb.a ], [ 0, %bb.c ], [ %i.k, %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s1_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i ], [ %.sroa.01.024.i.i.i, %bb.e ], !dbg !6152
  ret i64 %.sroa.0.1.i, !dbg !6153
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef i64 @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Z_5count0EB26_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !6155 {
bb.a:
    #dbg_declare(ptr %0, !6227, !DIExpression(), !6233)
    #dbg_value(i64 0, !6228, !DIExpression(), !6234)
    #dbg_declare(ptr poison, !6229, !DIExpression(), !6235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6236), !dbg !6321
    #dbg_value(ptr %0, !6238, !DIExpression(), !6163)
    #dbg_value(i64 0, !6243, !DIExpression(), !6163)
    #dbg_declare(ptr poison, !6244, !DIExpression(), !6164)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !6322
  %i.b = load i8, ptr %i.a, align 8, !dbg !6322, !range !1225, !alias.scope !6236, !noundef !975
  %i.c = trunc nuw i8 %i.b to i1, !dbg !6322
  br i1 %i.c, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3N_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B2Z_5count0E0B48_EB26_.exit, label %bb.b, !dbg !6322

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.a, !6245, !DIExpression(), !6165)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6323
    #dbg_value(ptr %i.d, !6247, !DIExpression(), !6166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6251), !dbg !6324
    #dbg_value(ptr %0, !6252, !DIExpression(), !6173)
    #dbg_value(i64 0, !6259, !DIExpression(), !6173)
    #dbg_value(ptr %i.d, !6260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6173)
    #dbg_value(ptr %i.a, !6260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6173)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6325
  %i.f = load i64, ptr %i.e, align 8, !dbg !6325, !alias.scope !6265, !noundef !975 ; 3 uses
    #dbg_value(i64 %i.f, !6261, !DIExpression(), !6174)
  %.not.i.i = icmp eq i64 %i.f, 0, !dbg !6326
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.g, !dbg !6326

._crit_edge.i.i:                                  ; preds = %bb.b
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !6266
  %.promoted.i.pre.i.i = load ptr, ptr %0, align 8, !alias.scope !6266
  br label %bb.c, !dbg !6326

bb.c:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.promoted.i.i.i = phi ptr [ %.promoted.i.pre.i.i, %._crit_edge.i.i ], [ %i.aa, %bb.g ] ; 3 uses
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.v, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6267), !dbg !6327
    #dbg_value(ptr %i.d, !6268, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6185)
    #dbg_value(ptr %i.a, !6268, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6185)
    #dbg_value(ptr %0, !6271, !DIExpression(), !6185)
    #dbg_value(i64 0, !6272, !DIExpression(), !6185)
    #dbg_value(i64 0, !6273, !DIExpression(), !6186)
    #dbg_value(ptr %0, !2287, !DIExpression(), !6188)
    #dbg_value(i64 1, !2302, !DIExpression(), !6190)
    #dbg_value(ptr %.promoted.i.i.i, !2298, !DIExpression(), !6191)
    #dbg_value(ptr %.promoted.i.i.i, !2306, !DIExpression(), !6190)
    #dbg_value(ptr %i.g, !2299, !DIExpression(), !6192)
    #dbg_value(ptr poison, !2309, !DIExpression(), !6194)
    #dbg_value(ptr poison, !2313, !DIExpression(), !6195)
  %i.h = icmp eq ptr %.promoted.i.i.i, %i.g, !dbg !6328
  br i1 %i.h, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3N_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B2Z_5count0E0B48_EB26_.exit, label %.lr.ph.i.i.i, !dbg !6329

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %.promoted29.i.i.i = ptrtoaddr ptr %.promoted.i.i.i to i64, !dbg !6328
  %i.i = ptrtoaddr ptr %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = sub i64 %i.i, %.promoted29.i.i.i, !dbg !6329
  %.val.i.pre30.i.i.i = load ptr, ptr %i.d, align 8, !dbg !6330, !alias.scope !6236, !noalias !6280 ; 2 uses
  %.val9.i.pre33.i.i.i = load ptr, ptr %i.j, align 8, !dbg !6330, !alias.scope !6236, !noalias !6280 ; 2 uses
  %.pre = load i8, ptr %.val.i.pre30.i.i.i, align 1, !dbg !6331, !range !1225, !noalias !6293
  br label %bb.d, !dbg !6329

bb.d:                                             ; preds = %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i, %.lr.ph.i.i.i
  %i.l = phi i8 [ %.pre, %.lr.ph.i.i.i ], [ %i.q, %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i ], !dbg !6331
  %.sroa.01.024.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.r, %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i ] ; 2 uses
  %i.m = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.n, %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i ] ; 2 uses
    #dbg_value(i64 %.sroa.01.024.i.i.i, !6273, !DIExpression(), !6186)
    #dbg_value(ptr %i.m, !2298, !DIExpression(), !6191)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !6332 ; 2 uses
    #dbg_value(ptr %i.m, !6274, !DIExpression(), !6203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6301), !dbg !6333
    #dbg_value(ptr poison, !6286, !DIExpression(DW_OP_deref), !6204)
    #dbg_value(ptr poison, !6288, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !6204)
    #dbg_value(i64 %.sroa.01.024.i.i.i, !6284, !DIExpression(), !6204)
    #dbg_value(ptr undef, !6285, !DIExpression(DW_OP_deref), !6204)
    #dbg_value(ptr poison, !6296, !DIExpression(DW_OP_deref, DW_OP_deref), !6205)
    #dbg_value(ptr poison, !6297, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !6205)
    #dbg_value(ptr poison, !6299, !DIExpression(), !6205)
    #dbg_value(i8 poison, !6298, !DIExpression(), !6206)
  %i.o = trunc nuw i8 %i.l to i1, !dbg !6331
  br i1 %i.o, label %_RNCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0B9_.exit.thread.sink.split.i.i.i.i, label %bb.e, !dbg !6331

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.m, align 1, !dbg !6334, !alias.scope !6301, !noalias !6302, !noundef !975
    #dbg_value(i8 %i.p, !6298, !DIExpression(), !6206)
  switch i8 %i.p, label %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i [
    i8 92, label %bb.f
    i8 96, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3N_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B2Z_5count0E0B48_EB26_.exit
  ], !dbg !6335

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.pre33.i.i.i) ]
  store i8 1, ptr %.val9.i.pre33.i.i.i, align 1, !dbg !6336, !noalias !6293
  br label %_RNCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0B9_.exit.thread.sink.split.i.i.i.i, !dbg !6337

_RNCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0B9_.exit.thread.sink.split.i.i.i.i: ; preds = %bb.f, %bb.d
  %.sink.i.i.i.i = phi i8 [ 1, %bb.f ], [ 0, %bb.d ] ; 2 uses
  store i8 %.sink.i.i.i.i, ptr %.val.i.pre30.i.i.i, align 1, !dbg !6338, !noalias !6293
  br label %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i, !dbg !6339

_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i: ; preds = %_RNCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0B9_.exit.thread.sink.split.i.i.i.i, %bb.e
  %i.q = phi i8 [ %.sink.i.i.i.i, %_RNCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0B9_.exit.thread.sink.split.i.i.i.i ], [ 0, %bb.e ]
    #dbg_value(i64 %.sroa.01.024.i.i.i, !6314, !DIExpression(), !6211)
    #dbg_value(ptr poison, !6315, !DIExpression(), !6211)
    #dbg_value(ptr poison, !6309, !DIExpression(), !6212)
    #dbg_value(i64 %.sroa.01.024.i.i.i, !6307, !DIExpression(), !6212)
    #dbg_value(ptr poison, !6308, !DIExpression(), !6212)
  %i.r = add nuw i64 %.sroa.01.024.i.i.i, 1, !dbg !6339
    #dbg_value(i64 %i.r, !6273, !DIExpression(), !6186)
    #dbg_value(ptr %0, !2287, !DIExpression(), !6188)
    #dbg_value(i64 1, !2302, !DIExpression(), !6190)
    #dbg_value(ptr %i.n, !2298, !DIExpression(), !6191)
    #dbg_value(ptr %i.n, !2306, !DIExpression(), !6190)
    #dbg_value(ptr %i.g, !2299, !DIExpression(), !6192)
    #dbg_value(ptr poison, !2309, !DIExpression(), !6194)
    #dbg_value(ptr poison, !2313, !DIExpression(), !6195)
  %i.s = icmp eq ptr %i.n, %i.g, !dbg !6328
  br i1 %i.s, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3N_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B2Z_5count0E0B48_EB26_.exit, label %bb.d, !dbg !6329

bb.g:                                             ; preds = %bb.b
  %i.t = add i64 %i.f, -1, !dbg !6340
    #dbg_value(ptr %0, !2399, !DIExpression(), !6214)
    #dbg_value(i64 %i.t, !2402, !DIExpression(), !6214)
    #dbg_value(i64 1, !2410, !DIExpression(), !6218)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6341
  %i.v = load ptr, ptr %i.u, align 8, !dbg !6341, !alias.scope !6320, !nonnull !975, !noundef !975 ; 2 uses
    #dbg_value(ptr %i.v, !2404, !DIExpression(), !6221)
    #dbg_value(ptr %i.v, !2424, !DIExpression(), !6222)
  %i.w = load ptr, ptr %0, align 8, !dbg !6342, !alias.scope !6320, !nonnull !975, !noundef !975 ; 2 uses
    #dbg_value(ptr %i.w, !2425, !DIExpression(), !6222)
    #dbg_value(ptr %i.v, !2418, !DIExpression(), !6223)
    #dbg_value(ptr %i.w, !2419, !DIExpression(), !6223)
    #dbg_value(ptr %i.w, !2414, !DIExpression(), !6224)
    #dbg_value(ptr %i.v, !2413, !DIExpression(), !6224)
  %i.x = ptrtoint ptr %i.v to i64, !dbg !6343
  %i.y = ptrtoint ptr %i.w to i64, !dbg !6343
  %i.z = sub nuw i64 %i.x, %i.y, !dbg !6343
  %.not.i.not.i.i = icmp ult i64 %i.t, %i.z, !dbg !6344
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f, !dbg !6344
  br i1 %.not.i.not.i.i, label %bb.c, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3N_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B2Z_5count0E0B48_EB26_.exit, !dbg !6345

_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3N_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B2Z_5count0E0B48_EB26_.exit: ; preds = %bb.e, %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i, %bb.a, %bb.c, %bb.g
  %.sroa.0.1.i = phi i64 [ 0, %bb.g ], [ 0, %bb.a ], [ 0, %bb.c ], [ %i.k, %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i ], [ %.sroa.01.024.i.i.i, %bb.e ], !dbg !6346
  ret i64 %.sroa.0.1.i, !dbg !6347
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6copied9copy_foldhuNCINvNvB1p_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB35_3VechE14extend_trustedINtB28_6CopiedBM_EE0E0E0ECs5yXxDE1DkoT_4tera(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !6353 {
bb.a:
    #dbg_value(ptr %0, !6467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6473)
    #dbg_value(ptr %1, !6467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6473)
    #dbg_declare(ptr poison, !6468, !DIExpression(), !6474)
    #dbg_declare(ptr %2, !6469, !DIExpression(), !6475)
  %i.a = ptrtoaddr ptr %0 to i64, !dbg !6567      ; 4 uses
  %i.b = ptrtoaddr ptr %1 to i64, !dbg !6567      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6476), !dbg !6567
    #dbg_value(ptr poison, !2456, !DIExpression(), !6362)
    #dbg_value(ptr %0, !6479, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6363)
    #dbg_value(ptr %1, !6479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6363)
    #dbg_declare(ptr poison, !6480, !DIExpression(), !6364)
    #dbg_declare(ptr %2, !6481, !DIExpression(), !6365)
    #dbg_declare(ptr poison, !6482, !DIExpression(), !6366)
    #dbg_value(ptr undef, !2460, !DIExpression(), !6367)
    #dbg_value(ptr undef, !2468, !DIExpression(), !6369)
    #dbg_value(ptr undef, !2473, !DIExpression(), !6371)
    #dbg_value(i64 1, !2477, !DIExpression(), !6371)
    #dbg_value(i64 1, !2481, !DIExpression(), !6373)
    #dbg_value(i64 -1, !2485, !DIExpression(), !6375)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = icmp eq ptr %0, %1, !dbg !6568
  br i1 %i.c, label %._crit_edge13.i, label %iter.check, !dbg !6569

._crit_edge13.i:                                  ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val7.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !dbg !6570, !alias.scope !6476
  br label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldhuNCINvNvNtNtBP_8iterator8Iterator8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3m_3VechE14extend_trustedINtB1T_6CopiedINtNtB1V_3rev3RevB3_EEE0E0E0ECs5yXxDE1DkoT_4tera.exit, !dbg !6569

iter.check:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !6486, !noundef !975 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.promoted.i = load i64, ptr %i.f, align 8, !alias.scope !6486 ; 8 uses
  %i.g = sub i64 %i.b, %i.a, !dbg !6569           ; 7 uses
  %min.iters.check = icmp ult i64 %i.g, 8, !dbg !6569
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !6569

vector.memcheck:                                  ; preds = %iter.check
  %i.h = getelementptr nuw i8, ptr %i.e, i64 %.promoted.i, !dbg !6569
  %i.i = add i64 %.promoted.i, %i.b, !dbg !6569
  %i.j = sub i64 %i.i, %i.a, !dbg !6569
  %i.k = getelementptr i8, ptr %i.e, i64 %i.j, !dbg !6569
  %bound0 = icmp ult ptr %i.h, %1, !dbg !6569
  %bound1 = icmp ult ptr %0, %i.k, !dbg !6569
  %found.conflict = and i1 %bound0, %bound1, !dbg !6569
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.g, 32, !dbg !6569
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !6569

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.g, 24
  %n.vec = and i64 %i.g, -32                      ; 5 uses
  %i.m = add i64 %.promoted.i, %n.vec             ; 2 uses
  %i.n = sub i64 0, %n.vec
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %i.p = getelementptr i8, ptr %i.e, i64 %.promoted.i
  br label %vector.body, !dbg !6569

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %1, i64 %i.q  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %next.gep, i64 -16, !dbg !6571
  %i.s = getelementptr inbounds i8, ptr %next.gep, i64 -32, !dbg !6571
  %wide.load = load <16 x i8>, ptr %i.r, align 1, !dbg !6571, !alias.scope !6487, !noalias !6476
  %wide.load5 = load <16 x i8>, ptr %i.s, align 1, !dbg !6571, !alias.scope !6487, !noalias !6476
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !6571
  %reverse6 = shufflevector <16 x i8> %wide.load5, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !6571
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6488), !dbg !6571
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6489), !dbg !6572
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6501), !dbg !6573
  %i.t = getelementptr i8, ptr %i.p, i64 %index, !dbg !6574 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !6575
  store <16 x i8> %reverse, ptr %i.t, align 1, !dbg !6575, !alias.scope !6526, !noalias !6527
  store <16 x i8> %reverse6, ptr %i.u, align 1, !dbg !6575, !alias.scope !6526, !noalias !6527
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !6569
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !6569, !llvm.loop !6397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !6569
  br i1 %cmp.n, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldhuNCINvNvNtNtBP_8iterator8Iterator8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3m_3VechE14extend_trustedINtB1T_6CopiedINtNtB1V_3rev3RevB3_EEE0E0E0ECs5yXxDE1DkoT_4tera.exit, label %vec.epilog.iter.check, !dbg !6569

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !6530

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec7 = and i64 %i.g, -8                      ; 4 uses
  %i.w = add i64 %.promoted.i, %n.vec7            ; 2 uses
  %i.x = sub i64 0, %n.vec7
  %i.y = getelementptr i8, ptr %1, i64 %i.x
  %i.z = getelementptr i8, ptr %i.e, i64 %.promoted.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = sub i64 0, %index8
  %next.gep9 = getelementptr i8, ptr %1, i64 %i.aa
  %i.ab = getelementptr inbounds i8, ptr %next.gep9, i64 -8, !dbg !6571
  %wide.load10 = load <8 x i8>, ptr %i.ab, align 1, !dbg !6571, !alias.scope !6487, !noalias !6476
  %reverse11 = shufflevector <8 x i8> %wide.load10, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !6571
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6488), !dbg !6571
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6489), !dbg !6572
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6501), !dbg !6573
  %i.ac = getelementptr i8, ptr %i.z, i64 %index8, !dbg !6574
  store <8 x i8> %reverse11, ptr %i.ac, align 1, !dbg !6575, !alias.scope !6526, !noalias !6527
  %index.next12 = add nuw i64 %index8, 8          ; 2 uses
  %i.ad = icmp eq i64 %index.next12, %n.vec7, !dbg !6569
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !6569, !llvm.loop !6398

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %i.g, %n.vec7, !dbg !6569
  br i1 %cmp.n13, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldhuNCINvNvNtNtBP_8iterator8Iterator8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3m_3VechE14extend_trustedINtB1T_6CopiedINtNtB1V_3rev3RevB3_EEE0E0E0ECs5yXxDE1DkoT_4tera.exit, label %vec.epilog.scalar.ph.preheader, !dbg !6569

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.promoted.i, %iter.check ], [ %.promoted.i, %vector.memcheck ], [ %i.m, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.2.012.i.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.o, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.2.012.i.ph15 = ptrtoaddr ptr %.sroa.2.012.i.ph to i64, !dbg !6569 ; 2 uses
  %i.ae = sub i64 %.sroa.2.012.i.ph15, %i.a, !dbg !6569
  %xtraiter = and i64 %i.ae, 3, !dbg !6569        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !6569
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !6569

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.af = phi i64 [ %i.ai, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !6576 ; 2 uses
  %.sroa.2.012.i.prol = phi ptr [ %i.ag, %vec.epilog.scalar.ph.prol ], [ %.sroa.2.012.i.ph, %vec.epilog.scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
    #dbg_value(ptr %.sroa.2.012.i.prol, !6479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6363)
    #dbg_value(ptr undef, !2479, !DIExpression(), !6399)
    #dbg_value(ptr %.sroa.2.012.i.prol, !2483, !DIExpression(), !6373)
    #dbg_value(ptr %.sroa.2.012.i.prol, !2489, !DIExpression(), !6375)
  %i.ag = getelementptr inbounds i8, ptr %.sroa.2.012.i.prol, i64 -1, !dbg !6576 ; 3 uses
    #dbg_value(ptr %i.ag, !2483, !DIExpression(), !6373)
    #dbg_value(ptr %i.ag, !2489, !DIExpression(), !6375)
    #dbg_value(ptr %i.ag, !6479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6363)
    #dbg_value(ptr %i.ag, !6483, !DIExpression(), !6400)
  %.val8.i.prol = load i8, ptr %i.ag, align 1, !dbg !6571, !noalias !6476, !noundef !975
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6488), !dbg !6571
    #dbg_value(ptr poison, !6495, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6401)
    #dbg_declare(ptr poison, !6494, !DIExpression(), !6402)
    #dbg_value(ptr poison, !6497, !DIExpression(), !6401)
    #dbg_value(i8 %.val8.i.prol, !6496, !DIExpression(), !6403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6489), !dbg !6572
    #dbg_value(ptr poison, !6506, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6404)
    #dbg_declare(ptr poison, !6507, !DIExpression(), !6405)
    #dbg_value(i8 %.val8.i.prol, !6505, !DIExpression(), !6404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6501), !dbg !6573
    #dbg_value(ptr poison, !6515, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !6406)
    #dbg_value(ptr poison, !6516, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6406)
    #dbg_value(i8 %.val8.i.prol, !6514, !DIExpression(), !6406)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.af, !dbg !6574
  store i8 %.val8.i.prol, ptr %i.ah, align 1, !dbg !6575, !noalias !6486
  %i.ai = add i64 %i.af, 1, !dbg !6577            ; 3 uses
    #dbg_value(ptr undef, !2460, !DIExpression(), !6367)
    #dbg_value(ptr undef, !2468, !DIExpression(), !6369)
    #dbg_value(ptr undef, !2473, !DIExpression(), !6371)
    #dbg_value(i64 1, !2477, !DIExpression(), !6371)
    #dbg_value(i64 1, !2481, !DIExpression(), !6373)
    #dbg_value(i64 -1, !2485, !DIExpression(), !6375)
    #dbg_value(ptr %i.ag, !2462, !DIExpression(), !6409)
    #dbg_value(ptr undef, !2456, !DIExpression(), !6362)
    #dbg_value(ptr poison, !2457, !DIExpression(), !6410)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !6569 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !6569
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !6569, !llvm.loop !6411

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ai, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ai, %vec.epilog.scalar.ph.prol ]
  %.sroa.2.012.i.unr = phi ptr [ %.sroa.2.012.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ag, %vec.epilog.scalar.ph.prol ]
  %i.aj = sub i64 %i.a, %.sroa.2.012.i.ph15, !dbg !6569
  %i.ak = icmp ugt i64 %i.aj, -4, !dbg !6569
  br i1 %i.ak, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldhuNCINvNvNtNtBP_8iterator8Iterator8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3m_3VechE14extend_trustedINtB1T_6CopiedINtNtB1V_3rev3RevB3_EEE0E0E0ECs5yXxDE1DkoT_4tera.exit, label %vec.epilog.scalar.ph, !dbg !6569

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.al = phi i64 [ %i.ax, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !6576 ; 5 uses
  %.sroa.2.012.i = phi ptr [ %i.au, %vec.epilog.scalar.ph ], [ %.sroa.2.012.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
    #dbg_value(ptr %.sroa.2.012.i, !6479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6363)
    #dbg_value(ptr undef, !2479, !DIExpression(), !6399)
    #dbg_value(ptr %.sroa.2.012.i, !2483, !DIExpression(), !6373)
    #dbg_value(ptr %.sroa.2.012.i, !2489, !DIExpression(), !6375)
  %i.am = getelementptr inbounds i8, ptr %.sroa.2.012.i, i64 -1, !dbg !6576
    #dbg_value(ptr %i.am, !2483, !DIExpression(), !6373)
    #dbg_value(ptr %i.am, !2489, !DIExpression(), !6375)
    #dbg_value(ptr %i.am, !6479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6363)
    #dbg_value(ptr %i.am, !6483, !DIExpression(), !6400)
  %.val8.i = load i8, ptr %i.am, align 1, !dbg !6571, !noalias !6476, !noundef !975
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6488), !dbg !6571
    #dbg_value(ptr poison, !6495, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6401)
    #dbg_declare(ptr poison, !6494, !DIExpression(), !6402)
    #dbg_value(ptr poison, !6497, !DIExpression(), !6401)
    #dbg_value(i8 %.val8.i, !6496, !DIExpression(), !6403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6489), !dbg !6572
    #dbg_value(ptr poison, !6506, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6404)
    #dbg_declare(ptr poison, !6507, !DIExpression(), !6405)
    #dbg_value(i8 %.val8.i, !6505, !DIExpression(), !6404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6501), !dbg !6573
    #dbg_value(ptr poison, !6515, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !6406)
    #dbg_value(ptr poison, !6516, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6406)
    #dbg_value(i8 %.val8.i, !6514, !DIExpression(), !6406)
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.al, !dbg !6574
  store i8 %.val8.i, ptr %i.an, align 1, !dbg !6575, !noalias !6486
    #dbg_value(ptr undef, !2460, !DIExpression(), !6367)
    #dbg_value(ptr undef, !2468, !DIExpression(), !6369)
    #dbg_value(ptr undef, !2473, !DIExpression(), !6371)
    #dbg_value(i64 1, !2477, !DIExpression(), !6371)
    #dbg_value(i64 1, !2481, !DIExpression(), !6373)
    #dbg_value(i64 -1, !2485, !DIExpression(), !6375)
    #dbg_value(ptr %i.am, !2462, !DIExpression(), !6409)
    #dbg_value(ptr undef, !2456, !DIExpression(), !6362)
    #dbg_value(ptr poison, !2457, !DIExpression(), !6410)
  %i.ao = getelementptr inbounds i8, ptr %.sroa.2.012.i, i64 -2, !dbg !6576
    #dbg_value(ptr %i.ao, !2483, !DIExpression(), !6373)
    #dbg_value(ptr %i.ao, !2489, !DIExpression(), !6375)
    #dbg_value(ptr %i.ao, !6479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6363)
    #dbg_value(ptr %i.ao, !6483, !DIExpression(), !6400)
  %.val8.i.1 = load i8, ptr %i.ao, align 1, !dbg !6571, !noalias !6476, !noundef !975
    #dbg_declare(ptr poison, !6494, !DIExpression(), !6402)
    #dbg_value(i8 %.val8.i.1, !6496, !DIExpression(), !6403)
    #dbg_declare(ptr poison, !6507, !DIExpression(), !6405)
    #dbg_value(i8 %.val8.i.1, !6505, !DIExpression(), !6404)
    #dbg_value(i8 %.val8.i.1, !6514, !DIExpression(), !6406)
  %i.ap = getelementptr i8, ptr %i.e, i64 %i.al, !dbg !6574
  %i.aq = getelementptr i8, ptr %i.ap, i64 1, !dbg !6574
  store i8 %.val8.i.1, ptr %i.aq, align 1, !dbg !6575, !noalias !6537
    #dbg_value(ptr %i.ao, !2462, !DIExpression(), !6409)
  %i.ar = getelementptr inbounds i8, ptr %.sroa.2.012.i, i64 -3, !dbg !6576
    #dbg_value(ptr %i.ar, !2483, !DIExpression(), !6373)
    #dbg_value(ptr %i.ar, !2489, !DIExpression(), !6375)
    #dbg_value(ptr %i.ar, !6479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6363)
    #dbg_value(ptr %i.ar, !6483, !DIExpression(), !6400)
  %.val8.i.2 = load i8, ptr %i.ar, align 1, !dbg !6571, !noalias !6476, !noundef !975
    #dbg_declare(ptr poison, !6494, !DIExpression(), !6402)
    #dbg_value(i8 %.val8.i.2, !6496, !DIExpression(), !6403)
    #dbg_declare(ptr poison, !6507, !DIExpression(), !6405)
    #dbg_value(i8 %.val8.i.2, !6505, !DIExpression(), !6404)
    #dbg_value(i8 %.val8.i.2, !6514, !DIExpression(), !6406)
  %i.as = getelementptr i8, ptr %i.e, i64 %i.al, !dbg !6574
  %i.at = getelementptr i8, ptr %i.as, i64 2, !dbg !6574
  store i8 %.val8.i.2, ptr %i.at, align 1, !dbg !6575, !noalias !6538
    #dbg_value(ptr %i.ar, !2462, !DIExpression(), !6409)
  %i.au = getelementptr inbounds i8, ptr %.sroa.2.012.i, i64 -4, !dbg !6576 ; 3 uses
    #dbg_value(ptr %i.au, !2483, !DIExpression(), !6373)
    #dbg_value(ptr %i.au, !2489, !DIExpression(), !6375)
    #dbg_value(ptr %i.au, !6479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6363)
    #dbg_value(ptr %i.au, !6483, !DIExpression(), !6400)
  %.val8.i.3 = load i8, ptr %i.au, align 1, !dbg !6571, !noalias !6476, !noundef !975
    #dbg_declare(ptr poison, !6494, !DIExpression(), !6402)
    #dbg_value(i8 %.val8.i.3, !6496, !DIExpression(), !6403)
    #dbg_declare(ptr poison, !6507, !DIExpression(), !6405)
    #dbg_value(i8 %.val8.i.3, !6505, !DIExpression(), !6404)
    #dbg_value(i8 %.val8.i.3, !6514, !DIExpression(), !6406)
  %i.av = getelementptr i8, ptr %i.e, i64 %i.al, !dbg !6574
  %i.aw = getelementptr i8, ptr %i.av, i64 3, !dbg !6574
  store i8 %.val8.i.3, ptr %i.aw, align 1, !dbg !6575, !noalias !6539
  %i.ax = add i64 %i.al, 4, !dbg !6577            ; 2 uses
    #dbg_value(ptr %i.au, !2462, !DIExpression(), !6409)
  %i.ay = icmp eq ptr %0, %i.au, !dbg !6568
  br i1 %i.ay, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldhuNCINvNvNtNtBP_8iterator8Iterator8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3m_3VechE14extend_trustedINtB1T_6CopiedINtNtB1V_3rev3RevB3_EEE0E0E0ECs5yXxDE1DkoT_4tera.exit, label %vec.epilog.scalar.ph, !dbg !6569, !llvm.loop !6430

_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldhuNCINvNvNtNtBP_8iterator8Iterator8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3m_3VechE14extend_trustedINtB1T_6CopiedINtNtB1V_3rev3RevB3_EEE0E0E0ECs5yXxDE1DkoT_4tera.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge13.i
  %.val7.i = phi i64 [ %.val7.pre.i, %._crit_edge13.i ], [ %i.w, %vec.epilog.middle.block ], [ %i.m, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ax, %vec.epilog.scalar.ph ], !dbg !6570
    #dbg_value(ptr poison, !6479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6363)
  %.val6.i = load ptr, ptr %2, align 8, !dbg !6570, !alias.scope !6476, !nonnull !975, !align !2495, !noundef !975
    #dbg_value(ptr poison, !6540, !DIExpression(), !6433)
    #dbg_value(ptr poison, !6546, !DIExpression(), !6436)
    #dbg_value(ptr poison, !6552, !DIExpression(), !6439)
    #dbg_value(ptr poison, !6558, !DIExpression(), !6442)
    #dbg_value(ptr poison, !6564, !DIExpression(), !6445)
  store i64 %.val7.i, ptr %.val6.i, align 8, !dbg !6578, !noalias !6476
  ret void, !dbg !6579
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3revINtB5_3RevNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB2y_6StringINtNtB1p_7collect6ExtendcE6extendBM_E0E0ECs5yXxDE1DkoT_4tera(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef nonnull align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !6583 {
bb.a:
    #dbg_value(ptr %0, !6763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6769)
    #dbg_value(ptr %1, !6763, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6769)
    #dbg_declare(ptr poison, !6764, !DIExpression(), !6770)
    #dbg_value(ptr %2, !6765, !DIExpression(), !6769)
    #dbg_value(ptr poison, !2456, !DIExpression(), !6603)
    #dbg_value(ptr poison, !2473, !DIExpression(), !6606)
    #dbg_value(ptr poison, !2468, !DIExpression(), !6607)
    #dbg_value(ptr poison, !2460, !DIExpression(), !6608)
    #dbg_value(ptr poison, !2456, !DIExpression(), !6611)
    #dbg_value(ptr poison, !2473, !DIExpression(), !6614)
    #dbg_value(ptr poison, !2468, !DIExpression(), !6615)
    #dbg_value(ptr poison, !2460, !DIExpression(), !6616)
    #dbg_value(ptr poison, !2456, !DIExpression(), !6619)
    #dbg_value(ptr poison, !2473, !DIExpression(), !6622)
    #dbg_value(ptr poison, !2468, !DIExpression(), !6623)
    #dbg_value(ptr poison, !2460, !DIExpression(), !6624)
    #dbg_value(ptr poison, !2456, !DIExpression(), !6627)
    #dbg_value(ptr %0, !6788, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6628)
    #dbg_value(ptr %1, !6788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6628)
    #dbg_value(ptr %2, !6790, !DIExpression(), !6628)
    #dbg_declare(ptr poison, !6789, !DIExpression(), !6629)
    #dbg_declare(ptr poison, !6791, !DIExpression(), !6630)
    #dbg_value(ptr undef, !6784, !DIExpression(), !6631)
    #dbg_value(ptr undef, !6771, !DIExpression(), !6632)
    #dbg_value(i32 2, !6796, !DIExpression(), !6635)
    #dbg_value(i32 3, !6796, !DIExpression(), !6637)
    #dbg_value(i32 4, !6796, !DIExpression(), !6639)
    #dbg_value(ptr undef, !2460, !DIExpression(), !6640)
    #dbg_value(ptr undef, !2468, !DIExpression(), !6642)
    #dbg_value(ptr undef, !2473, !DIExpression(), !6644)
    #dbg_value(i64 1, !2477, !DIExpression(), !6644)
    #dbg_value(i64 1, !2481, !DIExpression(), !6646)
    #dbg_value(i64 -1, !2485, !DIExpression(), !6648)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %.not.i15.i = icmp eq ptr %0, %1, !dbg !6824
  br i1 %.not.i15.i, label %_RINvYNtNtNtCsf3Ta7LF998c_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtBL_8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB2E_6StringINtNtBL_7collect6ExtendcE6extendINtNtNtBN_8adapters3rev3RevB3_EE0E0ECs5yXxDE1DkoT_4tera.exit, label %.lr.ph.i, !dbg !6825

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b, !dbg !6825

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs5yXxDE1DkoT_4tera.exit.i, %.lr.ph.i
  %.sroa.2.016.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.2.3.ph12.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs5yXxDE1DkoT_4tera.exit.i ] ; 4 uses
    #dbg_value(ptr %.sroa.2.016.i, !6788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6628)
    #dbg_value(ptr undef, !2479, !DIExpression(), !6649)
    #dbg_value(ptr %.sroa.2.016.i, !2483, !DIExpression(), !6646)
    #dbg_value(ptr %.sroa.2.016.i, !2489, !DIExpression(), !6648)
  %i.c = getelementptr inbounds i8, ptr %.sroa.2.016.i, i64 -1, !dbg !6826 ; 3 uses
    #dbg_value(ptr %i.c, !2483, !DIExpression(), !6646)
    #dbg_value(ptr %i.c, !2489, !DIExpression(), !6648)
    #dbg_value(ptr %i.c, !6788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6628)
    #dbg_value(ptr %i.c, !6776, !DIExpression(), !6650)
  %i.d = load i8, ptr %i.c, align 1, !dbg !6827, !noalias !6799, !noundef !975 ; 3 uses
    #dbg_value(i8 %i.d, !6772, !DIExpression(), !6655)
    #dbg_value(i8 %i.d, !6775, !DIExpression(), !6650)
    #dbg_value(i8 %i.d, !6800, !DIExpression(), !6658)
  %i.e = icmp sgt i8 %i.d, -1, !dbg !6827
  br i1 %i.e, label %.thread.i, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit30.i.i.i, !dbg !6827

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit30.i.i.i: ; preds = %bb.b
    #dbg_value(ptr undef, !2460, !DIExpression(), !6624)
    #dbg_value(ptr undef, !2468, !DIExpression(), !6623)
    #dbg_value(ptr undef, !2473, !DIExpression(), !6622)
    #dbg_value(i64 1, !2477, !DIExpression(), !6622)
    #dbg_value(i64 1, !2481, !DIExpression(), !6660)
    #dbg_value(i64 -1, !2485, !DIExpression(), !6662)
    #dbg_value(ptr %i.c, !2462, !DIExpression(), !6663)
    #dbg_value(ptr undef, !2456, !DIExpression(), !6619)
    #dbg_value(ptr poison, !2457, !DIExpression(), !6664)
  %i.f = icmp ne ptr %0, %i.c, !dbg !6828
  tail call void @llvm.assume(i1 %i.f), !dbg !6829
    #dbg_value(ptr undef, !2479, !DIExpression(), !6665)
    #dbg_value(ptr %i.c, !2483, !DIExpression(), !6660)
    #dbg_value(ptr %i.c, !2489, !DIExpression(), !6662)
  %i.g = getelementptr inbounds i8, ptr %.sroa.2.016.i, i64 -2, !dbg !6830 ; 3 uses
    #dbg_value(ptr %i.g, !2483, !DIExpression(), !6660)
    #dbg_value(ptr %i.g, !2489, !DIExpression(), !6662)
    #dbg_value(ptr %i.g, !6788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6628)
  %i.h = load i8, ptr %i.g, align 1, !dbg !6831, !noalias !6799, !noundef !975 ; 3 uses
    #dbg_value(i8 %i.h, !6779, !DIExpression(), !6666)
    #dbg_value(i8 %i.h, !6797, !DIExpression(), !6635)
    #dbg_value(i8 %i.h, !6803, !DIExpression(), !6669)
    #dbg_value(i8 %i.h, !6800, !DIExpression(), !6671)
  %i.i = and i8 %i.h, 31, !dbg !6832
  %i.j = zext nneg i8 %i.i to i32, !dbg !6832
    #dbg_value(i32 %i.j, !6778, !DIExpression(), !6672)
    #dbg_value(i32 %i.j, !6801, !DIExpression(), !6674)
    #dbg_value(i32 %i.j, !6801, !DIExpression(), !6671)
    #dbg_value(i32 %i.j, !6801, !DIExpression(), !6658)
  %i.k = icmp slt i8 %i.h, -64, !dbg !6833
  br i1 %i.k, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit32.i.i.i, label %bb.d, !dbg !6834

.thread.i:                                        ; preds = %bb.b
  %i.l = zext nneg i8 %i.d to i32, !dbg !6835
end_hunk_0
