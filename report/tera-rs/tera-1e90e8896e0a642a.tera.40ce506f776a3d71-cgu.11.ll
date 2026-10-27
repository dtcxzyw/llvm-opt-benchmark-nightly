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
end_hunk_0
begin_hunk_1_@_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3revINtB5_3RevNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB2y_6StringINtNtB1p_7collect6ExtendcE6extendBM_E0E0ECs5yXxDE1DkoT_4tera:bb.a
    #dbg_value(i32 %i.s, !6801, !DIExpression(), !6658)
  %i.t = icmp slt i8 %i.q, -64, !dbg !6845
  br i1 %i.t, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit34.i.i.i, label %bb.c, !dbg !6846

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit34.i.i.i: ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit32.i.i.i
    #dbg_value(ptr undef, !2460, !DIExpression(), !6608)
    #dbg_value(ptr undef, !2468, !DIExpression(), !6607)
    #dbg_value(ptr undef, !2473, !DIExpression(), !6606)
    #dbg_value(i64 1, !2477, !DIExpression(), !6606)
    #dbg_value(i64 1, !2481, !DIExpression(), !6710)
    #dbg_value(i64 -1, !2485, !DIExpression(), !6712)
    #dbg_value(ptr %i.p, !2462, !DIExpression(), !6713)
    #dbg_value(ptr undef, !2456, !DIExpression(), !6603)
    #dbg_value(ptr poison, !2457, !DIExpression(), !6714)
  %i.u = icmp ne ptr %0, %i.p, !dbg !6847
  tail call void @llvm.assume(i1 %i.u), !dbg !6848
    #dbg_value(ptr undef, !2479, !DIExpression(), !6715)
    #dbg_value(ptr %i.p, !2483, !DIExpression(), !6710)
    #dbg_value(ptr %i.p, !2489, !DIExpression(), !6712)
  %i.v = getelementptr inbounds i8, ptr %.sroa.2.016.i, i64 -4, !dbg !6849 ; 2 uses
    #dbg_value(ptr %i.v, !2483, !DIExpression(), !6710)
    #dbg_value(ptr %i.v, !2489, !DIExpression(), !6712)
    #dbg_value(ptr %i.v, !6788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6628)
  %i.w = load i8, ptr %i.v, align 1, !dbg !6850, !noalias !6799, !noundef !975
    #dbg_value(i8 %i.w, !6781, !DIExpression(), !6716)
    #dbg_value(i8 %i.w, !6797, !DIExpression(), !6639)
  %i.x = and i8 %i.w, 7, !dbg !6851
  %i.y = zext nneg i8 %i.x to i32, !dbg !6851
    #dbg_value(i32 %i.y, !6778, !DIExpression(), !6672)
    #dbg_value(i32 %i.y, !6801, !DIExpression(), !6674)
    #dbg_value(i32 %i.y, !6801, !DIExpression(), !6671)
    #dbg_value(i32 %i.y, !6801, !DIExpression(), !6658)
  %i.z = shl nuw nsw i32 %i.y, 6, !dbg !6852
  %i.aa = and i8 %i.q, 63, !dbg !6853
  %i.ab = zext nneg i8 %i.aa to i32, !dbg !6853
  %i.ac = or disjoint i32 %i.z, %i.ab, !dbg !6852
    #dbg_value(i32 %i.ac, !6778, !DIExpression(), !6672)
    #dbg_value(i32 %i.ac, !6801, !DIExpression(), !6674)
    #dbg_value(i32 %i.ac, !6801, !DIExpression(), !6671)
    #dbg_value(i32 %i.ac, !6801, !DIExpression(), !6658)
  br label %bb.c, !dbg !6854

bb.c:                                             ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit34.i.i.i, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit32.i.i.i
  %.sroa.2.2.i = phi ptr [ %i.v, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit34.i.i.i ], [ %i.p, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit32.i.i.i ], !dbg !6855
  %.sroa.010.1.i.i.i = phi i32 [ %i.ac, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit34.i.i.i ], [ %i.s, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit32.i.i.i ], !dbg !6856
    #dbg_value(ptr %.sroa.2.2.i, !6788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6628)
    #dbg_value(i32 %.sroa.010.1.i.i.i, !6801, !DIExpression(), !6674)
    #dbg_value(i32 %.sroa.010.1.i.i.i, !6778, !DIExpression(), !6672)
  %i.ad = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6, !dbg !6857
  %i.ae = and i8 %i.h, 63, !dbg !6858
  %i.af = zext nneg i8 %i.ae to i32, !dbg !6858
  %i.ag = or disjoint i32 %i.ad, %i.af, !dbg !6857
    #dbg_value(i32 %i.ag, !6778, !DIExpression(), !6672)
    #dbg_value(i32 %i.ag, !6801, !DIExpression(), !6674)
    #dbg_value(i32 %i.ag, !6801, !DIExpression(), !6671)
    #dbg_value(i32 %i.ag, !6801, !DIExpression(), !6658)
  br label %bb.d, !dbg !6859

bb.d:                                             ; preds = %bb.c, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit30.i.i.i
  %.sroa.2.1.i = phi ptr [ %.sroa.2.2.i, %bb.c ], [ %i.g, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit30.i.i.i ], !dbg !6860 ; 4 uses
  %.sroa.010.0.i.i.i = phi i32 [ %i.ag, %bb.c ], [ %i.j, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit30.i.i.i ], !dbg !6861 ; 7 uses
    #dbg_value(ptr %.sroa.2.1.i, !6788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6628)
    #dbg_value(i32 %.sroa.010.0.i.i.i, !6801, !DIExpression(), !6674)
    #dbg_value(i32 %.sroa.010.0.i.i.i, !6778, !DIExpression(), !6672)
  %i.ah = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6, !dbg !6862
  %i.ai = and i8 %i.d, 63, !dbg !6863             ; 2 uses
  %i.aj = zext nneg i8 %i.ai to i32, !dbg !6863
  %i.ak = or disjoint i32 %i.ah, %i.aj, !dbg !6862
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !6778, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6672)
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !6801, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6674)
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !6801, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6671)
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !6801, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6658)
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !6792, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6675)
    #dbg_value(ptr poison, !6805, !DIExpression(DW_OP_deref), !6678)
    #dbg_declare(ptr poison, !6810, !DIExpression(), !6679)
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !6809, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6678)
    #dbg_value(ptr poison, !6814, !DIExpression(DW_OP_deref), !6682)
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !6818, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6682)
    #dbg_value(ptr %2, !2518, !DIExpression(), !6684)
    #dbg_value(ptr %2, !2526, !DIExpression(), !6686)
    #dbg_value(ptr %2, !2531, !DIExpression(), !6688)
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !2522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6684)
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !2538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6690)
  %i.al = load i64, ptr %i.a, align 8, !dbg !6836, !alias.scope !6822, !noundef !975 ; 6 uses
    #dbg_value(i64 %i.al, !2523, !DIExpression(), !6694)
    #dbg_value(i64 %i.al, !2549, !DIExpression(), !6696)
  %i.am = icmp sgt i64 %i.al, -1, !dbg !6837
  tail call void @llvm.assume(i1 %i.am), !dbg !6838
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !2552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6698)
  %i.an = icmp samesign ult i32 %.sroa.010.0.i.i.i, 2, !dbg !6839
  br i1 %i.an, label %bb.f, label %bb.e, !dbg !6839

bb.e:                                             ; preds = %bb.d
  %i.ao = icmp samesign ult i32 %.sroa.010.0.i.i.i, 32, !dbg !6864 ; 2 uses
  %i.ap = icmp samesign ult i32 %.sroa.010.0.i.i.i, 1024, !dbg !6864 ; 2 uses
  %..i.i.i.i = select i1 %i.ap, i64 3, i64 4, !dbg !6864
  %.sroa.0.0.ph.i.i.i.i = select i1 %i.ao, i64 2, i64 %..i.i.i.i, !dbg !6864
    #dbg_value(i64 %.sroa.0.0.ph.i.i.i.i, !2524, !DIExpression(), !6723)
    #dbg_value(i64 %.sroa.0.0.ph.i.i.i.i, !2535, !DIExpression(), !6688)
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.sroa.0.0.ph.i.i.i.i), !dbg !6865
    #dbg_value(ptr %2, !2556, !DIExpression(), !6725)
  %i.aq = load ptr, ptr %i.b, align 8, !dbg !6866, !alias.scope !6822, !nonnull !975, !noundef !975
    #dbg_value(ptr %i.aq, !2550, !DIExpression(), !6696)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.al, !dbg !6867 ; 9 uses
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !2572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6730)
    #dbg_value(ptr %i.ar, !2575, !DIExpression(), !6730)
    #dbg_value(ptr %i.ar, !2582, !DIExpression(), !6732)
    #dbg_value(ptr %i.ar, !2582, !DIExpression(), !6734)
    #dbg_value(ptr %i.ar, !2582, !DIExpression(), !6736)
    #dbg_value(ptr %i.ar, !2582, !DIExpression(), !6738)
    #dbg_value(ptr %i.ar, !2582, !DIExpression(), !6740)
    #dbg_value(ptr %i.ar, !2582, !DIExpression(), !6742)
    #dbg_value(i64 1, !2583, !DIExpression(), !6732)
    #dbg_value(i64 1, !2583, !DIExpression(), !6734)
    #dbg_value(i64 1, !2583, !DIExpression(), !6736)
    #dbg_value(i64 2, !2583, !DIExpression(), !6738)
    #dbg_value(i64 2, !2583, !DIExpression(), !6740)
    #dbg_value(i64 3, !2583, !DIExpression(), !6742)
    #dbg_value(i64 poison, !2576, !DIExpression(), !6743)
  %i.as = or disjoint i8 %i.ai, -128, !dbg !6868  ; 3 uses
    #dbg_value(i8 %i.as, !2577, !DIExpression(), !6744)
  %i.at = trunc i32 %.sroa.010.0.i.i.i to i8, !dbg !6869 ; 2 uses
  %i.au = and i8 %i.at, 63, !dbg !6869
  %i.av = or disjoint i8 %i.au, -128, !dbg !6869  ; 2 uses
    #dbg_value(i8 %i.av, !2578, !DIExpression(), !6745)
  %i.aw = lshr i32 %.sroa.010.0.i.i.i, 6, !dbg !6870
  %i.ax = trunc i32 %i.aw to i8, !dbg !6871       ; 2 uses
  %i.ay = and i8 %i.ax, 63, !dbg !6871
  %i.az = or disjoint i8 %i.ay, -128, !dbg !6871
    #dbg_value(i8 %i.az, !2579, !DIExpression(), !6746)
  %i.ba = lshr i32 %.sroa.010.0.i.i.i, 12, !dbg !6872
  %i.bb = trunc nuw nsw i32 %i.ba to i8, !dbg !6873
  %i.bc = or disjoint i8 %i.bb, -16, !dbg !6873
    #dbg_value(i8 %i.bc, !2580, !DIExpression(), !6747)
  br i1 %i.ao, label %bb.g, label %bb.h, !dbg !6874

bb.f:                                             ; preds = %bb.d, %.thread.i
  %i.bd = phi i64 [ %i.m, %.thread.i ], [ %i.al, %bb.d ] ; 2 uses
  %spec.select.i.ph14.i = phi i32 [ %i.l, %.thread.i ], [ %i.ak, %bb.d ]
  %.sroa.2.3.ph13.i = phi ptr [ %i.c, %.thread.i ], [ %.sroa.2.1.i, %bb.d ]
    #dbg_value(i64 1, !2524, !DIExpression(), !6723)
    #dbg_value(i64 1, !2535, !DIExpression(), !6688)
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1), !dbg !6865
    #dbg_value(ptr %2, !2556, !DIExpression(), !6725)
  %i.be = load ptr, ptr %i.b, align 8, !dbg !6866, !alias.scope !6822, !nonnull !975, !noundef !975
    #dbg_value(ptr %i.be, !2550, !DIExpression(), !6696)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd, !dbg !6867
    #dbg_value(i32 %spec.select.i.ph14.i, !2572, !DIExpression(), !6730)
    #dbg_value(ptr %i.bf, !2575, !DIExpression(), !6730)
    #dbg_value(ptr %i.bf, !2582, !DIExpression(), !6732)
    #dbg_value(ptr %i.bf, !2582, !DIExpression(), !6734)
    #dbg_value(ptr %i.bf, !2582, !DIExpression(), !6736)
    #dbg_value(ptr %i.bf, !2582, !DIExpression(), !6738)
    #dbg_value(ptr %i.bf, !2582, !DIExpression(), !6740)
    #dbg_value(ptr %i.bf, !2582, !DIExpression(), !6742)
    #dbg_value(i64 1, !2583, !DIExpression(), !6732)
    #dbg_value(i64 1, !2583, !DIExpression(), !6734)
    #dbg_value(i64 1, !2583, !DIExpression(), !6736)
    #dbg_value(i64 2, !2583, !DIExpression(), !6738)
    #dbg_value(i64 2, !2583, !DIExpression(), !6740)
    #dbg_value(i64 3, !2583, !DIExpression(), !6742)
    #dbg_value(i64 1, !2576, !DIExpression(), !6743)
  %i.bg = trunc nuw nsw i32 %spec.select.i.ph14.i to i8, !dbg !6875
  store i8 %i.bg, ptr %i.bf, align 1, !dbg !6875
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs5yXxDE1DkoT_4tera.exit.i, !dbg !6876

bb.g:                                             ; preds = %bb.e
  %i.bh = or disjoint i8 %i.at, -64, !dbg !6877
  store i8 %i.bh, ptr %i.ar, align 1, !dbg !6877
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 1, !dbg !6878
  store i8 %i.as, ptr %i.bi, align 1, !dbg !6879
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs5yXxDE1DkoT_4tera.exit.i, !dbg !6880

bb.h:                                             ; preds = %bb.e
  br i1 %i.ap, label %bb.i, label %bb.j, !dbg !6881

bb.i:                                             ; preds = %bb.h
  %i.bj = or disjoint i8 %i.ax, -32, !dbg !6882
  store i8 %i.bj, ptr %i.ar, align 1, !dbg !6882
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 1, !dbg !6883
  store i8 %i.av, ptr %i.bk, align 1, !dbg !6884
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 2, !dbg !6885
  store i8 %i.as, ptr %i.bl, align 1, !dbg !6886
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs5yXxDE1DkoT_4tera.exit.i, !dbg !6880

bb.j:                                             ; preds = %bb.h
  store i8 %i.bc, ptr %i.ar, align 1, !dbg !6887
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 1, !dbg !6888
  store i8 %i.az, ptr %i.bm, align 1, !dbg !6889
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 2, !dbg !6890
  store i8 %i.av, ptr %i.bn, align 1, !dbg !6891
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 3, !dbg !6892
  store i8 %i.as, ptr %i.bo, align 1, !dbg !6893
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs5yXxDE1DkoT_4tera.exit.i, !dbg !6894

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %i.bp = phi i64 [ %i.bd, %bb.f ], [ %i.al, %bb.g ], [ %i.al, %bb.i ], [ %i.al, %bb.j ]
  %.sroa.2.3.ph12.i = phi ptr [ %.sroa.2.3.ph13.i, %bb.f ], [ %.sroa.2.1.i, %bb.g ], [ %.sroa.2.1.i, %bb.i ], [ %.sroa.2.1.i, %bb.j ] ; 3 uses
  %.sroa.0.011.i.i.i.i = phi i64 [ 1, %bb.f ], [ 2, %bb.g ], [ 3, %bb.i ], [ 4, %bb.j ]
    #dbg_value(ptr %2, !2587, !DIExpression(), !6749)
  %3 = add nuw i64 %.sroa.0.011.i.i.i.i, %i.bp, !dbg !6895
    #dbg_value(i64 %3, !2591, !DIExpression(), !6750)
  store i64 %3, ptr %i.a, align 8, !dbg !6896, !alias.scope !6822
    #dbg_value(ptr %.sroa.2.3.ph12.i, !6788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6628)
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.3.ph12.i) ]
    #dbg_value(ptr %.sroa.2.3.ph12.i, !2462, !DIExpression(), !6751)
    #dbg_value(ptr undef, !2456, !DIExpression(), !6627)
    #dbg_value(ptr poison, !2457, !DIExpression(), !6752)
  %.not.i.i = icmp eq ptr %0, %.sroa.2.3.ph12.i, !dbg !6824
  br i1 %.not.i.i, label %_RINvYNtNtNtCsf3Ta7LF998c_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtBL_8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB2E_6StringINtNtBL_7collect6ExtendcE6extendINtNtNtBN_8adapters3rev3RevB3_EE0E0ECs5yXxDE1DkoT_4tera.exit, label %bb.b, !dbg !6825

_RINvYNtNtNtCsf3Ta7LF998c_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtBL_8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB2E_6StringINtNtBL_7collect6ExtendcE6extendINtNtNtBN_8adapters3rev3RevB3_EE0E0ECs5yXxDE1DkoT_4tera.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs5yXxDE1DkoT_4tera.exit.i, %bb.a
    #dbg_value(ptr poison, !6788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6628)
  ret void, !dbg !6897
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBW_5ValueEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterBS_B1w_EEBY_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0) unnamed_addr #1 !dbg !6909 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %0, !6973, !DIExpression(), !6977)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7011
    #dbg_declare(ptr %0, !6979, !DIExpression(), !6912)
    #dbg_declare(ptr %0, !6986, !DIExpression(), !6920)
    #dbg_declare(ptr %0, !7005, !DIExpression(), !6923)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7012, !noalias !7007
    #dbg_declare(ptr %0, !6979, !DIExpression(), !6931)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i64 40, i1 false), !dbg !7013, !alias.scope !7008, !noalias !7009
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB10_5ValueEEINtB2_12SpecFromIterBU_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterBW_B1A_EE9from_iterB12_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !dbg !7014, !noalias !7010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7015, !noalias !7007
  %i.c = call { ptr, i64 } @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBK_5ValueEE16into_boxed_sliceBM_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !7016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7017
  ret { ptr, i64 } %i.c, !dbg !7018
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsu_NtCsf3Ta7LF998c_4core4charNtB6_11ToUppercaseNtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvBO_8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB27_6StringINtNtBS_7collect6ExtendcE6extendBw_E0E0ECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !7029 {
bb.a:
    #dbg_declare(ptr %0, !7198, !DIExpression(), !7204)
    #dbg_declare(ptr poison, !7199, !DIExpression(), !7205)
    #dbg_declare(ptr poison, !7206, !DIExpression(), !7214)
    #dbg_value(ptr %1, !7200, !DIExpression(), !7215)
    #dbg_value(ptr %1, !7211, !DIExpression(), !7216)
    #dbg_declare(ptr %0, !7210, !DIExpression(), !7217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7218), !dbg !7381
    #dbg_declare(ptr %0, !7220, !DIExpression(), !7035)
    #dbg_declare(ptr poison, !7224, !DIExpression(), !7036)
    #dbg_declare(ptr poison, !7229, !DIExpression(), !7041)
    #dbg_declare(ptr poison, !7248, !DIExpression(), !7048)
    #dbg_value(ptr %1, !7225, !DIExpression(), !7049)
    #dbg_value(ptr %1, !7246, !DIExpression(), !7050)
    #dbg_value(ptr %0, !7245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7050)
    #dbg_value(ptr %0, !7259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7051)
    #dbg_value(i64 3, !7245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7050)
    #dbg_value(i64 3, !7259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7051)
    #dbg_value(ptr %1, !7260, !DIExpression(), !7051)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7382
    #dbg_value(ptr %i.a, !7261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7052)
    #dbg_value(i64 3, !7261, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7052)
    #dbg_value(ptr %i.a, !7268, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7061)
    #dbg_value(i64 3, !7268, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7061)
    #dbg_value(ptr %1, !7268, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7287), !dbg !7383
    #dbg_value(ptr %0, !7278, !DIExpression(), !7064)
    #dbg_value(ptr %0, !7288, !DIExpression(), !7067)
    #dbg_value(ptr %0, !7294, !DIExpression(), !7071)
    #dbg_declare(ptr poison, !7279, !DIExpression(), !7072)
    #dbg_value(i64 1, !7300, !DIExpression(), !7075)
  %i.b = load i64, ptr %0, align 8, !dbg !7384, !alias.scope !7303, !noundef !975 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7385
  %i.d = load i64, ptr %i.c, align 8, !dbg !7385, !alias.scope !7303, !noundef !975 ; 3 uses
  %i.e = icmp ule i64 %i.b, %i.d, !dbg !7384
    #dbg_value(i1 true, !7304, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7078)
  tail call void @llvm.assume(i1 %i.e), !dbg !7386
  %.not5.i.i = icmp eq i64 %i.b, %i.d, !dbg !7387
  br i1 %.not5.i.i, label %_RINvXs3_NtNtCsf3Ta7LF998c_4core5array4iterINtB6_8IntoItercKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBZ_8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB2i_6StringINtNtB13_7collect6ExtendcE6extendNtNtBa_4char11ToUppercaseE0E0ECs5yXxDE1DkoT_4tera.exit, label %.lr.ph.i.i, !dbg !7387

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre.i.i = load i64, ptr %i.f, align 8, !dbg !7388, !alias.scope !7306, !noalias !7307
  br label %bb.b, !dbg !7387

bb.b:                                             ; preds = %_RNCINvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB4r_6StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs5yXxDE1DkoT_4tera.exit.i.i, %.lr.ph.i.i
  %i.h = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.ar, %_RNCINvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB4r_6StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs5yXxDE1DkoT_4tera.exit.i.i ], !dbg !7388 ; 3 uses
  %i.i = phi i64 [ %i.b, %.lr.ph.i.i ], [ %i.j, %_RNCINvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB4r_6StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs5yXxDE1DkoT_4tera.exit.i.i ] ; 3 uses
    #dbg_value(i64 %i.i, !7280, !DIExpression(), !7096)
    #dbg_value(i64 %i.i, !7298, !DIExpression(), !7097)
    #dbg_value(i64 %i.i, !7301, !DIExpression(), !7075)
  %i.j = add nuw nsw i64 %i.i, 1, !dbg !7389      ; 2 uses
    #dbg_value(ptr poison, !7341, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !7098)
    #dbg_value(ptr poison, !7342, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !7098)
    #dbg_declare(ptr poison, !7339, !DIExpression(), !7099)
    #dbg_value(i64 %i.i, !7340, !DIExpression(), !7098)
    #dbg_value(i64 %i.i, !7345, !DIExpression(), !7103)
    #dbg_value(i64 %i.i, !7356, !DIExpression(), !7107)
    #dbg_value(ptr %i.a, !7352, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7103)
    #dbg_value(ptr %i.a, !7363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7107)
    #dbg_value(i64 3, !7352, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7103)
    #dbg_value(i64 3, !7363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7107)
  %i.k = icmp ult i64 %i.i, 3, !dbg !7390
  tail call void @llvm.assume(i1 %i.k), !dbg !7391
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.i, !dbg !7392
    #dbg_value(ptr %i.l, !7367, !DIExpression(), !7110)
    #dbg_value(ptr %i.l, !7373, !DIExpression(), !7113)
    #dbg_value(ptr %i.l, !7377, !DIExpression(), !7116)
  %i.m = load i32, ptr %i.l, align 4, !dbg !7393, !range !7379, !alias.scope !7218, !noalias !7380, !noundef !975 ; 8 uses
    #dbg_value(i32 %i.m, !7343, !DIExpression(), !7117)
    #dbg_value(ptr poison, !7330, !DIExpression(DW_OP_deref), !7118)
    #dbg_declare(ptr poison, !7328, !DIExpression(), !7119)
    #dbg_value(i32 %i.m, !7329, !DIExpression(), !7118)
    #dbg_value(ptr poison, !7320, !DIExpression(DW_OP_deref), !7120)
    #dbg_declare(ptr poison, !7321, !DIExpression(), !7121)
    #dbg_value(i32 %i.m, !7319, !DIExpression(), !7120)
    #dbg_value(ptr poison, !7312, !DIExpression(DW_OP_deref), !7122)
    #dbg_value(i32 %i.m, !7311, !DIExpression(), !7122)
    #dbg_value(ptr %1, !2518, !DIExpression(), !7123)
    #dbg_value(ptr %1, !2526, !DIExpression(), !7124)
    #dbg_value(ptr %1, !2531, !DIExpression(), !7126)
    #dbg_value(i32 %i.m, !2522, !DIExpression(), !7123)
    #dbg_value(i32 %i.m, !2538, !DIExpression(), !7128)
    #dbg_value(i64 %i.h, !2523, !DIExpression(), !7129)
    #dbg_value(i64 %i.h, !2549, !DIExpression(), !7131)
    #dbg_value(i32 %i.m, !2552, !DIExpression(), !7133)
  %i.n = icmp samesign ult i32 %i.m, 128, !dbg !7394
  br i1 %i.n, label %.noexc6.i, label %.noexc.i, !dbg !7394

.noexc.i:                                         ; preds = %bb.b
  %i.o = icmp samesign ult i32 %i.m, 2048, !dbg !7395 ; 2 uses
  %i.p = icmp samesign ult i32 %i.m, 65536, !dbg !7395 ; 2 uses
  %..i.i.i.i.i.i.i = select i1 %i.p, i64 3, i64 4, !dbg !7395
  %.sroa.0.0.ph.i.i.i.i.i.i.i = select i1 %i.o, i64 2, i64 %..i.i.i.i.i.i.i, !dbg !7395
    #dbg_value(i64 %.sroa.0.0.ph.i.i.i.i.i.i.i, !2524, !DIExpression(), !7134)
    #dbg_value(i64 %.sroa.0.0.ph.i.i.i.i.i.i.i, !2535, !DIExpression(), !7126)
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.0.0.ph.i.i.i.i.i.i.i), !dbg !7396, !noalias !7218
    #dbg_value(ptr %1, !2556, !DIExpression(), !7136)
  %i.q = load ptr, ptr %i.g, align 8, !dbg !7397, !alias.scope !7306, !noalias !7307, !nonnull !975, !noundef !975
    #dbg_value(ptr %i.q, !2550, !DIExpression(), !7131)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h, !dbg !7398 ; 9 uses
    #dbg_value(i32 %i.m, !2572, !DIExpression(), !7141)
    #dbg_value(ptr %i.r, !2575, !DIExpression(), !7141)
    #dbg_value(ptr %i.r, !2582, !DIExpression(), !7143)
    #dbg_value(ptr %i.r, !2582, !DIExpression(), !7145)
    #dbg_value(ptr %i.r, !2582, !DIExpression(), !7147)
    #dbg_value(ptr %i.r, !2582, !DIExpression(), !7149)
    #dbg_value(ptr %i.r, !2582, !DIExpression(), !7151)
    #dbg_value(ptr %i.r, !2582, !DIExpression(), !7153)
    #dbg_value(i64 1, !2583, !DIExpression(), !7143)
    #dbg_value(i64 1, !2583, !DIExpression(), !7145)
    #dbg_value(i64 1, !2583, !DIExpression(), !7147)
    #dbg_value(i64 2, !2583, !DIExpression(), !7149)
    #dbg_value(i64 2, !2583, !DIExpression(), !7151)
    #dbg_value(i64 3, !2583, !DIExpression(), !7153)
    #dbg_value(i64 poison, !2576, !DIExpression(), !7154)
  %i.s = trunc i32 %i.m to i8, !dbg !7399
  %i.t = and i8 %i.s, 63, !dbg !7399
  %i.u = or disjoint i8 %i.t, -128, !dbg !7399    ; 3 uses
    #dbg_value(i8 %i.u, !2577, !DIExpression(), !7155)
  %i.v = lshr i32 %i.m, 6, !dbg !7400
  %i.w = trunc i32 %i.v to i8, !dbg !7401         ; 2 uses
  %i.x = and i8 %i.w, 63, !dbg !7401
  %i.y = or disjoint i8 %i.x, -128, !dbg !7401    ; 2 uses
    #dbg_value(i8 %i.y, !2578, !DIExpression(), !7156)
  %i.z = lshr i32 %i.m, 12, !dbg !7402
  %i.aa = trunc i32 %i.z to i8, !dbg !7403        ; 2 uses
  %i.ab = and i8 %i.aa, 63, !dbg !7403
  %i.ac = or disjoint i8 %i.ab, -128, !dbg !7403
    #dbg_value(i8 %i.ac, !2579, !DIExpression(), !7157)
  %i.ad = lshr i32 %i.m, 18, !dbg !7404
  %i.ae = trunc nuw nsw i32 %i.ad to i8, !dbg !7405
  %i.af = or disjoint i8 %i.ae, -16, !dbg !7405
    #dbg_value(i8 %i.af, !2580, !DIExpression(), !7158)
  br i1 %i.o, label %bb.c, label %bb.d, !dbg !7406

.noexc6.i:                                        ; preds = %bb.b
    #dbg_value(i64 1, !2524, !DIExpression(), !7134)
    #dbg_value(i64 1, !2535, !DIExpression(), !7126)
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1), !dbg !7396, !noalias !7218
    #dbg_value(ptr %1, !2556, !DIExpression(), !7136)
  %i.ag = load ptr, ptr %i.g, align 8, !dbg !7397, !alias.scope !7306, !noalias !7307, !nonnull !975, !noundef !975
    #dbg_value(ptr %i.ag, !2550, !DIExpression(), !7131)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.h, !dbg !7398
    #dbg_value(i32 %i.m, !2572, !DIExpression(), !7141)
    #dbg_value(ptr %i.ah, !2575, !DIExpression(), !7141)
    #dbg_value(ptr %i.ah, !2582, !DIExpression(), !7143)
    #dbg_value(ptr %i.ah, !2582, !DIExpression(), !7145)
    #dbg_value(ptr %i.ah, !2582, !DIExpression(), !7147)
    #dbg_value(ptr %i.ah, !2582, !DIExpression(), !7149)
    #dbg_value(ptr %i.ah, !2582, !DIExpression(), !7151)
    #dbg_value(ptr %i.ah, !2582, !DIExpression(), !7153)
    #dbg_value(i64 1, !2583, !DIExpression(), !7143)
    #dbg_value(i64 1, !2583, !DIExpression(), !7145)
    #dbg_value(i64 1, !2583, !DIExpression(), !7147)
    #dbg_value(i64 2, !2583, !DIExpression(), !7149)
    #dbg_value(i64 2, !2583, !DIExpression(), !7151)
    #dbg_value(i64 3, !2583, !DIExpression(), !7153)
    #dbg_value(i64 1, !2576, !DIExpression(), !7154)
  %i.ai = trunc nuw nsw i32 %i.m to i8, !dbg !7407
  store i8 %i.ai, ptr %i.ah, align 1, !dbg !7407, !noalias !7307
  br label %_RNCINvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB4r_6StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs5yXxDE1DkoT_4tera.exit.i.i, !dbg !7408

bb.c:                                             ; preds = %.noexc.i
  %i.aj = or disjoint i8 %i.w, -64, !dbg !7409
  store i8 %i.aj, ptr %i.r, align 1, !dbg !7409, !noalias !7307
end_hunk_1
begin_hunk_2_@_RNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0B7_:bb.a
    #dbg_value(ptr %i.sd, !12828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12831)
    #dbg_value(ptr %i.sd, !12832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12835)
    #dbg_value(i64 %i.se, !10139, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12827)
    #dbg_value(i64 %i.se, !12828, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12831)
    #dbg_value(i64 %i.se, !12832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12835)
  br label %bb.cb, !dbg !14746

_RNvMNtCsf3Ta7LF998c_4core3stre16split_at_checked.exit2567.._crit_edge3931_crit_edge: ; preds = %bb.cb
    #dbg_value(ptr %i.ru, !10140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12840)
    #dbg_value(ptr %i.ru, !12594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12843)
    #dbg_value(i64 %i.rw, !10140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12840)
    #dbg_value(i64 %i.rw, !12594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12843)
    #dbg_value(ptr %i.ru, !10141, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12840)
    #dbg_value(i64 %i.rv, !10141, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12840)
    #dbg_value(ptr %i.ru, !10142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12844)
    #dbg_value(!DIArgList(ptr %i.ru, i64 %i.rw), !10142, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12844)
    #dbg_value(ptr undef, !10414, !DIExpression(), !10765)
    #dbg_value(ptr undef, !2260, !DIExpression(), !7902)
    #dbg_value(i32 2, !2281, !DIExpression(), !8656)
    #dbg_value(ptr undef, !2287, !DIExpression(), !7901)
    #dbg_value(i64 1, !2302, !DIExpression(), !8658)
    #dbg_value(ptr %i.ru, !2298, !DIExpression(), !8659)
    #dbg_value(ptr %i.ru, !2306, !DIExpression(), !8658)
    #dbg_value(!DIArgList(ptr %i.ru, i64 %i.rw), !2299, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8660)
    #dbg_value(ptr poison, !2309, !DIExpression(), !8662)
    #dbg_value(ptr poison, !2313, !DIExpression(), !8663)
  %.pre40384209 = load i64, ptr %i.cp, align 8, !dbg !14747
  %.pre4039 = load i64, ptr %i.cq, align 8, !dbg !14748
  br label %._crit_edge3931, !dbg !14749

.lr.ph3930:                                       ; preds = %bb.cd, %.split6.i2559
    #dbg_value(ptr %i.ru, !12496, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8665)
    #dbg_value(i64 %i.rv, !12496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8665)
    #dbg_value(i64 %i.rw, !12497, !DIExpression(), !8665)
    #dbg_value(i64 %i.rw, !12490, !DIExpression(), !8667)
    #dbg_value(i64 %i.rv, !12498, !DIExpression(), !8668)
    #dbg_value(ptr %i.ru, !12499, !DIExpression(), !8669)
    #dbg_value(ptr %i.ru, !12489, !DIExpression(), !8667)
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.rw, !dbg !14750
  %i.sg = sub i64 %i.rv, %i.rw, !dbg !14751
    #dbg_value(ptr %i.ru, !10140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12840)
    #dbg_value(ptr %i.ru, !12594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12843)
    #dbg_value(i64 %i.rw, !10140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12840)
    #dbg_value(i64 %i.rw, !12594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12843)
    #dbg_value(ptr %i.sf, !10141, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12840)
    #dbg_value(i64 %i.sg, !10141, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12840)
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.rw, !dbg !14752 ; 4 uses
    #dbg_value(ptr %i.ru, !10142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12844)
    #dbg_value(ptr %i.sh, !10142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12844)
    #dbg_value(ptr undef, !10414, !DIExpression(), !10765)
    #dbg_value(ptr undef, !2260, !DIExpression(), !7902)
    #dbg_value(i32 2, !2281, !DIExpression(), !8656)
    #dbg_value(ptr undef, !2287, !DIExpression(), !7901)
    #dbg_value(i64 1, !2302, !DIExpression(), !8658)
    #dbg_value(ptr %i.ru, !2298, !DIExpression(), !8659)
    #dbg_value(ptr %i.ru, !2306, !DIExpression(), !8658)
    #dbg_value(ptr %i.sh, !2299, !DIExpression(), !8660)
    #dbg_value(ptr poison, !2309, !DIExpression(), !8662)
    #dbg_value(ptr poison, !2313, !DIExpression(), !8663)
  %.pre4038 = load i64, ptr %i.cp, align 8, !dbg !14747
  %.promoted4384 = load i64, ptr %i.cq, align 8
  %.promoted4386 = load i64, ptr %i.co, align 8
  br label %bb.cg, !dbg !14749

bb.cf:                                            ; preds = %bb.cd, %.split6.i2559
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ru, i64 noundef %i.rv, i64 noundef 0, i64 noundef %i.rw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24, !dbg !14753
  unreachable, !dbg !14753

bb.cg:                                            ; preds = %.lr.ph3930, %bb.cl
  %i.si = phi i64 [ %.promoted4386, %.lr.ph3930 ], [ %i.uf, %bb.cl ] ; 2 uses
  %.pre40374385 = phi i64 [ %.promoted4384, %.lr.ph3930 ], [ %i.ug, %bb.cl ] ; 2 uses
  %i.sj = phi i64 [ %.pre4038, %.lr.ph3930 ], [ %storemerge2417, %bb.cl ]
  %.sroa.02894.03929 = phi ptr [ %i.ru, %.lr.ph3930 ], [ %.sroa.02894.1.ph31783185, %bb.cl ] ; 5 uses
    #dbg_value(ptr %.sroa.02894.03929, !10142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12844)
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.02894.03929, i64 1, !dbg !14754 ; 3 uses
    #dbg_value(ptr %i.sk, !10142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12844)
  %i.sl = load i8, ptr %.sroa.02894.03929, align 1, !dbg !14755, !noalias !12851, !noundef !975 ; 5 uses
    #dbg_value(i8 %i.sl, !2261, !DIExpression(), !8672)
    #dbg_value(i8 %i.sl, !2284, !DIExpression(), !8656)
  %i.sm = icmp sgt i8 %i.sl, -1, !dbg !14756
  br i1 %i.sm, label %.thread3175, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2568, !dbg !14756

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2568: ; preds = %bb.cg
  %i.sn = and i8 %i.sl, 31, !dbg !14757
  %i.so = zext nneg i8 %i.sn to i32, !dbg !14757  ; 3 uses
    #dbg_value(i32 %i.so, !2264, !DIExpression(), !8673)
    #dbg_value(i32 %i.so, !2315, !DIExpression(), !8675)
    #dbg_value(ptr undef, !2287, !DIExpression(), !7899)
    #dbg_value(i64 1, !2302, !DIExpression(), !8677)
    #dbg_value(ptr %i.sk, !2298, !DIExpression(), !8678)
    #dbg_value(ptr %i.sk, !2306, !DIExpression(), !8677)
    #dbg_value(ptr %i.sh, !2299, !DIExpression(), !8679)
    #dbg_value(ptr poison, !2309, !DIExpression(), !8681)
    #dbg_value(ptr poison, !2313, !DIExpression(), !8682)
  %i.sp = icmp ne ptr %i.sk, %i.sh, !dbg !14758
  tail call void @llvm.assume(i1 %i.sp), !dbg !14759
  %i.sq = getelementptr inbounds nuw i8, ptr %.sroa.02894.03929, i64 2, !dbg !14760 ; 3 uses
    #dbg_value(ptr %i.sq, !10142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12844)
  %i.sr = load i8, ptr %i.sk, align 1, !dbg !14761, !noalias !12851, !noundef !975
    #dbg_value(i8 %i.sr, !2265, !DIExpression(), !8683)
    #dbg_value(i8 %i.sr, !2318, !DIExpression(), !8675)
  %i.ss = shl nuw nsw i32 %i.so, 6, !dbg !14762
  %i.st = and i8 %i.sr, 63, !dbg !14763
  %i.su = zext nneg i8 %i.st to i32, !dbg !14763  ; 2 uses
  %i.sv = or disjoint i32 %i.ss, %i.su, !dbg !14762
    #dbg_value(i32 %i.sv, !2266, !DIExpression(), !8684)
  %i.sw = icmp samesign ugt i8 %i.sl, -33, !dbg !14764
  br i1 %i.sw, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2571, label %bb.ch, !dbg !14764

.thread3175:                                      ; preds = %bb.cg
  %i.sx = zext nneg i8 %i.sl to i32, !dbg !14765
    #dbg_value(ptr %i.sk, !10142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12844)
    #dbg_value(i32 1, !10924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !12852)
    #dbg_value(i32 %i.sx, !10924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !12852)
    #dbg_value(i32 %i.sx, !12463, !DIExpression(), !12855)
    #dbg_value(i32 %i.sx, !12468, !DIExpression(), !12858)
    #dbg_value(i32 %i.sx, !12473, !DIExpression(), !12861)
    #dbg_value(i32 %i.sx, !10143, !DIExpression(), !12862)
    #dbg_value(i32 %i.sx, !12479, !DIExpression(), !12865)
    #dbg_value(i32 %i.sx, !12484, !DIExpression(), !12868)
  br label %bb.ci, !dbg !14766

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2571: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2568
    #dbg_value(ptr undef, !2287, !DIExpression(), !7897)
    #dbg_value(i64 1, !2302, !DIExpression(), !8686)
    #dbg_value(ptr %i.sq, !2298, !DIExpression(), !8687)
    #dbg_value(ptr %i.sq, !2306, !DIExpression(), !8686)
    #dbg_value(ptr %i.sh, !2299, !DIExpression(), !8688)
    #dbg_value(ptr poison, !2309, !DIExpression(), !8690)
    #dbg_value(ptr poison, !2313, !DIExpression(), !8691)
  %i.sy = icmp ne ptr %i.sq, %i.sh, !dbg !14767
  tail call void @llvm.assume(i1 %i.sy), !dbg !14768
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.02894.03929, i64 3, !dbg !14769 ; 3 uses
    #dbg_value(ptr %i.sz, !10142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12844)
  %i.ta = load i8, ptr %i.sq, align 1, !dbg !14770, !noalias !12851, !noundef !975
    #dbg_value(i8 %i.ta, !2267, !DIExpression(), !8692)
    #dbg_value(i8 %i.ta, !2318, !DIExpression(), !8694)
    #dbg_value(i32 %i.su, !2315, !DIExpression(), !8694)
  %i.tb = shl nuw nsw i32 %i.su, 6, !dbg !14771
  %i.tc = and i8 %i.ta, 63, !dbg !14772
  %i.td = zext nneg i8 %i.tc to i32, !dbg !14772
  %i.te = or disjoint i32 %i.tb, %i.td, !dbg !14771 ; 2 uses
    #dbg_value(i32 %i.te, !2268, !DIExpression(), !8695)
    #dbg_value(i32 %i.te, !2315, !DIExpression(), !8697)
  %i.tf = shl nuw nsw i32 %i.so, 12, !dbg !14773
  %i.tg = or disjoint i32 %i.te, %i.tf, !dbg !14774
    #dbg_value(i32 %i.tg, !2266, !DIExpression(), !8684)
  %i.th = icmp samesign ugt i8 %i.sl, -17, !dbg !14775
  br i1 %i.th, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2572, label %bb.ch, !dbg !14775

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2572: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2571
    #dbg_value(ptr undef, !2287, !DIExpression(), !7895)
    #dbg_value(i64 1, !2302, !DIExpression(), !8699)
    #dbg_value(ptr %i.sz, !2298, !DIExpression(), !8700)
    #dbg_value(ptr %i.sz, !2306, !DIExpression(), !8699)
    #dbg_value(ptr %i.sh, !2299, !DIExpression(), !8701)
    #dbg_value(ptr poison, !2309, !DIExpression(), !8703)
    #dbg_value(ptr poison, !2313, !DIExpression(), !8704)
  %i.ti = icmp ne ptr %i.sz, %i.sh, !dbg !14776
  tail call void @llvm.assume(i1 %i.ti), !dbg !14777
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.02894.03929, i64 4, !dbg !14778
    #dbg_value(ptr %i.tj, !10142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12844)
  %i.tk = load i8, ptr %i.sz, align 1, !dbg !14779, !noalias !12851, !noundef !975
    #dbg_value(i8 %i.tk, !2269, !DIExpression(), !8705)
    #dbg_value(i8 %i.tk, !2318, !DIExpression(), !8697)
  %i.tl = shl nuw nsw i32 %i.so, 18, !dbg !14780
  %i.tm = and i32 %i.tl, 1835008, !dbg !14780
  %i.tn = shl nuw nsw i32 %i.te, 6, !dbg !14781
  %i.to = and i8 %i.tk, 63, !dbg !14782
  %i.tp = zext nneg i8 %i.to to i32, !dbg !14782
  %i.tq = or disjoint i32 %i.tn, %i.tp, !dbg !14781
  %i.tr = or disjoint i32 %i.tq, %i.tm, !dbg !14783
    #dbg_value(i32 %i.tr, !2266, !DIExpression(), !8684)
  br label %bb.ch, !dbg !14784

bb.ch:                                            ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2568, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2572, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2571
  %.sroa.02894.1.ph = phi ptr [ %i.sq, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2568 ], [ %i.sz, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2571 ], [ %i.tj, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2572 ] ; 2 uses
  %.sroa.4.0.i2569.ph = phi i32 [ %i.sv, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2568 ], [ %i.tg, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2571 ], [ %i.tr, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2572 ] ; 5 uses
    #dbg_value(ptr %.sroa.02894.1.ph, !10142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12844)
    #dbg_value(i32 1, !10924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !12852)
    #dbg_value(i32 %.sroa.4.0.i2569.ph, !10924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !12852)
    #dbg_value(i32 %.sroa.4.0.i2569.ph, !12463, !DIExpression(), !12855)
    #dbg_value(i32 %.sroa.4.0.i2569.ph, !12468, !DIExpression(), !12858)
    #dbg_value(i32 %.sroa.4.0.i2569.ph, !12473, !DIExpression(), !12861)
    #dbg_value(i32 %.sroa.4.0.i2569.ph, !10143, !DIExpression(), !12862)
    #dbg_value(i32 %.sroa.4.0.i2569.ph, !12479, !DIExpression(), !12865)
  %i.ts = icmp samesign ult i32 %.sroa.4.0.i2569.ph, 1114112, !dbg !14785
  tail call void @llvm.assume(i1 %i.ts), !dbg !14785
    #dbg_value(i32 %.sroa.4.0.i2569.ph, !12484, !DIExpression(), !12868)
  %i.tt = icmp samesign ult i32 %.sroa.4.0.i2569.ph, 128, !dbg !14766
  br i1 %i.tt, label %bb.ci, label %.thread3181, !dbg !14766

._crit_edge3931:                                  ; preds = %bb.cl, %_RNvMNtCsf3Ta7LF998c_4core3stre16split_at_checked.exit2567.._crit_edge3931_crit_edge
  %.sroa.72965.04212 = phi ptr [ %i.ru, %_RNvMNtCsf3Ta7LF998c_4core3stre16split_at_checked.exit2567.._crit_edge3931_crit_edge ], [ %i.sf, %bb.cl ]
  %.sroa.92966.04210 = phi i64 [ %i.rv, %_RNvMNtCsf3Ta7LF998c_4core3stre16split_at_checked.exit2567.._crit_edge3931_crit_edge ], [ %i.sg, %bb.cl ]
  %i.tu = phi i64 [ %.pre4039, %_RNvMNtCsf3Ta7LF998c_4core3stre16split_at_checked.exit2567.._crit_edge3931_crit_edge ], [ %i.ug, %bb.cl ], !dbg !14748
  %i.tv = phi i64 [ %.pre40384209, %_RNvMNtCsf3Ta7LF998c_4core3stre16split_at_checked.exit2567.._crit_edge3931_crit_edge ], [ %storemerge2417, %bb.cl ], !dbg !14747
    #dbg_value(ptr poison, !10142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12844)
    #dbg_value(i32 0, !10924, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !12852)
    #dbg_value(i32 undef, !10924, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !12852)
  store ptr %.sroa.72965.04212, ptr %i.ci, align 8, !dbg !14786, !captures !12624
  store i64 %.sroa.92966.04210, ptr %i.cj, align 8, !dbg !14786
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.060.1) ]
  %i.tw = load i64, ptr %i.co, align 8, !dbg !14787, !noundef !975
  store i8 1, ptr %0, align 8, !dbg !14788
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14788
  store i8 %.sroa.026.0, ptr %.sroa.483.0..sroa_idx, align 1, !dbg !14788
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !14788
  store i8 %i.qz, ptr %.sroa.584.0..sroa_idx, align 2, !dbg !14788
  %.sroa.786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14788
  store ptr %.sroa.060.1, ptr %.sroa.786.0..sroa_idx, align 8, !dbg !14788
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14788
  store i64 %.sroa.663.1, ptr %.sroa.887.0..sroa_idx, align 8, !dbg !14788
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14788
  store i64 %.promoted3849.lcssa, ptr %.sroa.1089.0..sroa_idx, align 8, !dbg !14788
  %.sroa.1089.sroa.4.0..sroa.1089.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !14788
  store i64 %i.tu, ptr %.sroa.1089.sroa.4.0..sroa.1089.0..sroa_idx.sroa_idx, align 8, !dbg !14788
  %.sroa.1089.sroa.5.0..sroa.1089.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !14788
  store i64 %.promoted3852.lcssa, ptr %.sroa.1089.sroa.5.0..sroa.1089.0..sroa_idx.sroa_idx, align 8, !dbg !14788
  %.sroa.1089.sroa.6.0..sroa.1089.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !14788
  store i64 %.promoted3850.lcssa, ptr %.sroa.1089.sroa.6.0..sroa.1089.0..sroa_idx.sroa_idx, align 8, !dbg !14788
  %.sroa.1089.sroa.7.0..sroa.1089.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !14788
  store i64 %i.tw, ptr %.sroa.1089.sroa.7.0..sroa.1089.0..sroa_idx.sroa_idx, align 8, !dbg !14788
  %.sroa.1089.sroa.8.0..sroa.1089.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !14788
  store i64 %i.tv, ptr %.sroa.1089.sroa.8.0..sroa.1089.0..sroa_idx.sroa_idx, align 8, !dbg !14788
  br label %bb.ny, !dbg !14789

.thread3181:                                      ; preds = %bb.ch
  %i.tx = icmp samesign ult i32 %.sroa.4.0.i2569.ph, 2048, !dbg !14790
  %i.ty = icmp samesign ult i32 %.sroa.4.0.i2569.ph, 65536, !dbg !14790
  %.2430 = select i1 %i.ty, i64 3, i64 4, !dbg !14790
  %.sroa.067.0.ph = select i1 %i.tx, i64 2, i64 %.2430, !dbg !14790
  %i.tz = add i64 %.pre40374385, %.sroa.067.0.ph, !dbg !14791 ; 2 uses
  store i64 %i.tz, ptr %i.cq, align 8, !dbg !14791
  br label %bb.ck, !dbg !14792

bb.ci:                                            ; preds = %.thread3175, %bb.ch
  %.sroa.4.0.i2569.ph3179 = phi i32 [ %.sroa.4.0.i2569.ph, %bb.ch ], [ %i.sx, %.thread3175 ]
  %.sroa.02894.1.ph3178 = phi ptr [ %.sroa.02894.1.ph, %bb.ch ], [ %i.sk, %.thread3175 ] ; 2 uses
  %i.ua = add i64 %.pre40374385, 1, !dbg !14791   ; 3 uses
  store i64 %i.ua, ptr %i.cq, align 8, !dbg !14791
  %i.ub = icmp eq i32 %.sroa.4.0.i2569.ph3179, 10, !dbg !14792
  br i1 %i.ub, label %bb.cj, label %bb.ck, !dbg !14792

bb.cj:                                            ; preds = %bb.ci
  %i.uc = add i64 %i.si, 1, !dbg !14793           ; 2 uses
  store i64 %i.uc, ptr %i.co, align 8, !dbg !14793
  br label %bb.cl, !dbg !14794

bb.ck:                                            ; preds = %.thread3181, %bb.ci
  %i.ud = phi i64 [ %i.tz, %.thread3181 ], [ %i.ua, %bb.ci ]
  %.sroa.02894.1.ph31783186 = phi ptr [ %.sroa.02894.1.ph, %.thread3181 ], [ %.sroa.02894.1.ph3178, %bb.ci ]
  %i.ue = add i64 %i.sj, 1, !dbg !14795
  br label %bb.cl, !dbg !14795

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.uf = phi i64 [ %i.si, %bb.ck ], [ %i.uc, %bb.cj ]
  %i.ug = phi i64 [ %i.ud, %bb.ck ], [ %i.ua, %bb.cj ] ; 2 uses
  %.sroa.02894.1.ph31783185 = phi ptr [ %.sroa.02894.1.ph31783186, %bb.ck ], [ %.sroa.02894.1.ph3178, %bb.cj ] ; 2 uses
  %storemerge2417 = phi i64 [ %i.ue, %bb.ck ], [ 0, %bb.cj ], !dbg !12862 ; 3 uses
  store i64 %storemerge2417, ptr %i.cp, align 8, !dbg !12862
    #dbg_value(ptr %.sroa.02894.1.ph31783185, !10142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12844)
    #dbg_value(ptr undef, !10414, !DIExpression(), !10765)
    #dbg_value(ptr undef, !2260, !DIExpression(), !7902)
    #dbg_value(i32 2, !2281, !DIExpression(), !8656)
    #dbg_value(ptr undef, !2287, !DIExpression(), !7901)
    #dbg_value(i64 1, !2302, !DIExpression(), !8658)
    #dbg_value(ptr %.sroa.02894.1.ph31783185, !2298, !DIExpression(), !8659)
    #dbg_value(ptr %.sroa.02894.1.ph31783185, !2306, !DIExpression(), !8658)
    #dbg_value(ptr %i.sh, !2299, !DIExpression(), !8660)
    #dbg_value(ptr poison, !2309, !DIExpression(), !8662)
    #dbg_value(ptr poison, !2313, !DIExpression(), !8663)
  %i.uh = icmp eq ptr %.sroa.02894.1.ph31783185, %i.sh, !dbg !14796
  br i1 %i.uh, label %._crit_edge3931, label %bb.cg, !dbg !14749

bb.cm:                                            ; preds = %bb.bs
  %i.ui = load i64, ptr %i.qp, align 8, !dbg !14797
    #dbg_value(i64 %i.qo, !11099, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12870)
    #dbg_value(i64 %i.ui, !11099, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12870)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.qo, i64 %i.ui) #22, !dbg !14798
  unreachable, !dbg !14798

bb.cn:                                            ; preds = %bb.bs
  %i.uj = load ptr, ptr %i.qp, align 8, !dbg !14799, !nonnull !975, !noundef !975 ; 2 uses
    #dbg_value(i64 %i.qo, !11098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12871)
    #dbg_value(ptr %i.uj, !11098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12871)
    #dbg_value(ptr poison, !11136, !DIExpression(), !12872)
    #dbg_value(ptr poison, !11077, !DIExpression(), !12873)
  %i.uk = icmp samesign ugt i64 %i.qo, 26, !dbg !14800
    #dbg_value(i1 true, !12630, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12875)
  tail call void @llvm.assume(i1 %i.uk), !dbg !14801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !14802
    #dbg_value(i64 %i.qo, !12634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12877)
    #dbg_value(i64 %i.qo, !11036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12878)
    #dbg_value(ptr %i.uj, !12634, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12877)
    #dbg_value(ptr %i.uj, !11036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12878)
    #dbg_value(i64 0, !12634, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12877)
    #dbg_value(i64 0, !11036, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12878)
    #dbg_value(ptr @4, !12568, !DIExpression(), !12788)
    #dbg_value(ptr @4, !12574, !DIExpression(), !12790)
    #dbg_value(ptr %i.uj, !12569, !DIExpression(), !12788)
    #dbg_value(ptr %i.uj, !12575, !DIExpression(), !12790)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.uj, ptr noundef nonnull align 1 dereferenceable(27) @4, i64 27, i1 false), !dbg !14803
    #dbg_value(i64 27, !12634, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12877)
    #dbg_value(i64 27, !11036, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12878)
  store i64 %i.qo, ptr %i.cg, align 8, !dbg !14804
  %.sroa.4828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !14804
  store ptr %i.uj, ptr %.sroa.4828.0..sroa_idx, align 8, !dbg !14804
  %.sroa.6829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 16, !dbg !14804
  store i64 27, ptr %.sroa.6829.0..sroa_idx, align 8, !dbg !14804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !dbg !14805
  %i.ul = load i64, ptr %i.cq, align 8, !dbg !14806, !noundef !975
  %i.um = getelementptr inbounds nuw i8, ptr %i.cf, i64 16, !dbg !14807
  store i64 %.promoted3852.lcssa, ptr %i.um, align 8, !dbg !14807
  %i.un = getelementptr inbounds nuw i8, ptr %i.cf, i64 24, !dbg !14807
  store i64 %.promoted3850.lcssa, ptr %i.un, align 8, !dbg !14807
  %i.uo = getelementptr inbounds nuw i8, ptr %i.cf, i64 32, !dbg !14807
  %i.up = load <2 x i64>, ptr %i.co, align 8, !dbg !14808
  store <2 x i64> %i.up, ptr %i.uo, align 8, !dbg !14807
  store i64 %.promoted3849.lcssa, ptr %i.cf, align 8, !dbg !14807
  %i.uq = getelementptr inbounds nuw i8, ptr %i.cf, i64 8, !dbg !14807
  store i64 %i.ul, ptr %i.uq, align 8, !dbg !14807
  call void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ch, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cf), !dbg !14704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !dbg !14809
  %.sroa.497.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.497, i64 7, !dbg !14703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %.sroa.497.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.ch, i64 72, i1 false), !dbg !14703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !dbg !14810
  store i8 -1, ptr %0, align 8, !dbg !14811
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.497.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.497, i64 79, i1 false), !dbg !14811
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.497), !dbg !14812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !dbg !14813
  br label %bb.ny, !dbg !14789

.thread3188:                                      ; preds = %bb.bk
  %i.ur = icmp samesign ult i32 %.sroa.4.0.i2549.ph, 2048, !dbg !14814
  %i.us = icmp samesign ult i32 %.sroa.4.0.i2549.ph, 65536, !dbg !14814
  %.2431 = select i1 %i.us, i64 3, i64 4, !dbg !14814
  %.sroa.031.0.ph = select i1 %i.ur, i64 2, i64 %.2431, !dbg !14814
  %i.ut = add i64 %i.og, %.sroa.031.0.ph, !dbg !14815 ; 2 uses
  store i64 %i.ut, ptr %i.cq, align 8, !dbg !14815
  br label %bb.cq, !dbg !14816

bb.co:                                            ; preds = %.thread3145, %bb.bk
  %.sroa.4.0.i2549.ph3149 = phi i32 [ %.sroa.4.0.i2549.ph, %bb.bk ], [ %i.ot, %.thread3145 ]
  %.sroa.02890.1.ph3148.idx = phi i64 [ %.sroa.02890.1.ph.idx, %bb.bk ], [ %.sroa.02890.0.add, %.thread3145 ] ; 2 uses
  %i.uu = add i64 %i.og, 1, !dbg !14815           ; 3 uses
  store i64 %i.uu, ptr %i.cq, align 8, !dbg !14815
  %i.uv = icmp eq i32 %.sroa.4.0.i2549.ph3149, 10, !dbg !14816
  br i1 %i.uv, label %bb.cp, label %bb.cq, !dbg !14816

bb.cp:                                            ; preds = %bb.co
  %i.uw = add i64 %i.of, 1, !dbg !14817           ; 2 uses
  store i64 %i.uw, ptr %i.co, align 8, !dbg !14817
  br label %bb.cr, !dbg !14818

bb.cq:                                            ; preds = %.thread3188, %bb.co
  %i.ux = phi i64 [ %i.ut, %.thread3188 ], [ %i.uu, %bb.co ]
  %.sroa.02890.1.ph31483193.idx = phi i64 [ %.sroa.02890.1.ph.idx, %.thread3188 ], [ %.sroa.02890.1.ph3148.idx, %bb.co ]
  %i.uy = add i64 %i.oh, 1, !dbg !14819
  br label %bb.cr, !dbg !14819

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.uz = phi i64 [ %i.of, %bb.cq ], [ %i.uw, %bb.cp ]
  %i.va = phi i64 [ %i.ux, %bb.cq ], [ %i.uu, %bb.cp ]
  %.sroa.02890.1.ph31483192.idx = phi i64 [ %.sroa.02890.1.ph31483193.idx, %bb.cq ], [ %.sroa.02890.1.ph3148.idx, %bb.cp ] ; 2 uses
  %storemerge2418 = phi i64 [ %i.uy, %bb.cq ], [ 0, %bb.cp ], !dbg !12684 ; 2 uses
  store i64 %storemerge2418, ptr %i.cp, align 8, !dbg !12684
    #dbg_value(!DIArgList(ptr %.lcssa4486, i64 %.sroa.02890.1.ph31483192.idx), !10125, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12672)
    #dbg_value(ptr undef, !10414, !DIExpression(), !10777)
    #dbg_value(ptr undef, !2260, !DIExpression(), !7922)
    #dbg_value(i32 2, !2281, !DIExpression(), !8535)
    #dbg_value(ptr undef, !2287, !DIExpression(), !7921)
    #dbg_value(i64 1, !2302, !DIExpression(), !8530)
    #dbg_value(!DIArgList(ptr %.lcssa4486, i64 %.sroa.02890.1.ph31483192.idx), !2298, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8528)
    #dbg_value(!DIArgList(ptr %.lcssa4486, i64 %.sroa.02890.1.ph31483192.idx), !2306, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8530)
    #dbg_value(ptr %.lcssa4486, !2299, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !8706)
    #dbg_value(ptr poison, !2309, !DIExpression(), !8707)
    #dbg_value(ptr poison, !2313, !DIExpression(), !8708)
  %i.vb = icmp eq i64 %.sroa.02890.1.ph31483192.idx, 3, !dbg !14644
  br i1 %i.vb, label %.loopexit3745, label %.split6.i2533, !dbg !14820

bb.cs:                                            ; preds = %bb.f
    #dbg_value(ptr undef, !10586, !DIExpression(), !10795)
    #dbg_value(ptr poison, !10587, !DIExpression(), !12879)
    #dbg_value(ptr %.lcssa4486, !10883, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10887)
    #dbg_value(ptr %.lcssa4486, !10874, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10879)
  %i.vc = getelementptr inbounds nuw i8, ptr %.lcssa4486, i64 2, !dbg !14821
    #dbg_value(ptr undef, !10588, !DIExpression(), !10794)
    #dbg_value(ptr undef, !10559, !DIExpression(), !10793)
    #dbg_value(ptr undef, !10589, !DIExpression(DW_OP_deref), !12880)
    #dbg_value(ptr undef, !10563, !DIExpression(DW_OP_deref), !12881)
    #dbg_value(ptr %i.vc, !12429, !DIExpression(), !12884)
    #dbg_value(ptr poison, !12433, !DIExpression(), !12884)
  %i.vd = load i8, ptr %i.vc, align 1, !dbg !14822, !noundef !975 ; 2 uses
  %i.ve = icmp eq i8 %i.vd, 45, !dbg !14822
  br i1 %i.ve, label %bb.cu, label %bb.ct, !dbg !10791

bb.ct:                                            ; preds = %bb.cs
    #dbg_value(ptr %.lcssa4486, !10894, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10960)
    #dbg_value(i64 %storemerge38573862.lcssa, !10894, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10960)
    #dbg_value(ptr %.lcssa4486, !12438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8710)
    #dbg_value(ptr %.lcssa4486, !12452, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8712)
end_hunk_2
begin_hunk_3_@_RNvMNtCs5yXxDE1DkoT_4tera6errorsNtB2_11ReportError8add_note:bb.a
  %i.u = load i64, ptr %i.t, align 8, !dbg !18023
    #dbg_value(i64 %i.s, !17845, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17949)
    #dbg_value(i64 %i.u, !17845, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17949)
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #22
          to label %bb.w unwind label %bb.g, !dbg !18024

bb.j:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.t, align 8, !dbg !18025, !nonnull !975, !noundef !975 ; 2 uses
    #dbg_value(i64 %i.s, !17844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17950)
    #dbg_value(ptr %i.v, !17844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17950)
    #dbg_value(ptr poison, !17852, !DIExpression(), !17951)
  %i.w = icmp ule i64 %4, %i.s, !dbg !18026
    #dbg_value(i1 true, !17926, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17953)
  tail call void @llvm.assume(i1 %i.w), !dbg !18027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18028
    #dbg_value(i64 %i.s, !17930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17955)
    #dbg_value(i64 %i.s, !17823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17956)
    #dbg_value(ptr %i.v, !17930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17955)
    #dbg_value(ptr %i.v, !17823, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17956)
    #dbg_value(i64 0, !17930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17955)
    #dbg_value(i64 0, !17823, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17956)
  %.not76 = icmp eq i64 %4, 0, !dbg !18029
  br i1 %.not76, label %bb.k, label %bb.l, !dbg !18029

bb.k:                                             ; preds = %bb.l, %bb.j
    #dbg_value(i64 %4, !17823, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17956)
    #dbg_value(i64 %4, !17930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17955)
  store i64 %i.s, ptr %i.d, align 8, !dbg !18030
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !18030
  store ptr %i.v, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !18030
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !18030
  store i64 %4, ptr %.sroa.66.0..sroa_idx, align 8, !dbg !18030
    #dbg_value(ptr %5, !17814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17957)
    #dbg_value(ptr %5, !17816, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17958)
    #dbg_value(ptr %5, !17808, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17959)
    #dbg_value(ptr %5, !17819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17960)
    #dbg_value(i64 %6, !17814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17957)
    #dbg_value(i64 %6, !17816, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17958)
    #dbg_value(i64 %6, !17808, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17959)
    #dbg_value(i64 %6, !17819, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17960)
    #dbg_value(i64 %6, !17824, !DIExpression(), !17961)
    #dbg_value(i64 %6, !17830, !DIExpression(), !17962)
    #dbg_value(i64 %6, !17835, !DIExpression(), !17963)
    #dbg_value(i64 %6, !17910, !DIExpression(), !17966)
    #dbg_value(i64 %6, !17916, !DIExpression(), !17969)
    #dbg_value(i64 %6, !17840, !DIExpression(), !17970)
    #dbg_value(i64 %6, !17853, !DIExpression(), !17901)
    #dbg_value(i64 1, !17841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17970)
    #dbg_value(i64 1, !17854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17901)
    #dbg_value(i64 1, !17841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17970)
    #dbg_value(i64 1, !17854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17901)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18031
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.n unwind label %bb.m, !dbg !18031

bb.l:                                             ; preds = %bb.j
    #dbg_value(ptr %3, !17911, !DIExpression(), !17944)
    #dbg_value(ptr %3, !17917, !DIExpression(), !17947)
    #dbg_value(ptr %i.v, !17912, !DIExpression(), !17944)
    #dbg_value(ptr %i.v, !17918, !DIExpression(), !17947)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %3, i64 %4, i1 false), !dbg !18032
    #dbg_value(i64 %4, !17930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17955)
    #dbg_value(i64 %4, !17823, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17956)
  br label %bb.k, !dbg !18033

bb.m:                                             ; preds = %bb.o, %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #23
          to label %bb.f unwind label %bb.v, !dbg !18021

bb.n:                                             ; preds = %bb.k
  %i.y = load i64, ptr %i.a, align 8, !dbg !18031, !range !1459, !noundef !975
  %i.z = trunc nuw i64 %i.y to i1, !dbg !18034
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17970
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !17970, !range !1460, !noundef !975 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17970 ; 2 uses
  br i1 %i.z, label %bb.o, label %bb.p, !dbg !18034, !prof !1461

bb.o:                                             ; preds = %bb.n
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !18035
    #dbg_value(i64 %i.ab, !17847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17971)
    #dbg_value(i64 %i.ad, !17847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17971)
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ab, i64 %i.ad) #22
          to label %bb.w unwind label %bb.m, !dbg !18036

bb.p:                                             ; preds = %bb.n
  %i.ae = load ptr, ptr %i.ac, align 8, !dbg !18037, !nonnull !975, !noundef !975 ; 2 uses
    #dbg_value(i64 %i.ab, !17846, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17972)
    #dbg_value(ptr %i.ae, !17846, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17972)
    #dbg_value(ptr poison, !17852, !DIExpression(), !17973)
  %i.af = icmp ule i64 %6, %i.ab, !dbg !18038
    #dbg_value(i1 true, !17926, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17975)
  tail call void @llvm.assume(i1 %i.af), !dbg !18039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18040
    #dbg_value(i64 %i.ab, !17930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17977)
    #dbg_value(i64 %i.ab, !17825, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17978)
    #dbg_value(ptr %i.ae, !17930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17977)
    #dbg_value(ptr %i.ae, !17825, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17978)
    #dbg_value(i64 0, !17930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17977)
    #dbg_value(i64 0, !17825, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17978)
  %.not77 = icmp eq i64 %6, 0, !dbg !18041
  br i1 %.not77, label %bb.r, label %bb.q, !dbg !18041

bb.q:                                             ; preds = %bb.p
    #dbg_value(ptr %5, !17911, !DIExpression(), !17966)
    #dbg_value(ptr %5, !17917, !DIExpression(), !17969)
    #dbg_value(ptr %i.ae, !17912, !DIExpression(), !17966)
    #dbg_value(ptr %i.ae, !17918, !DIExpression(), !17969)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 1 %5, i64 %6, i1 false), !dbg !18042
    #dbg_value(i64 %6, !17930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17977)
    #dbg_value(i64 %6, !17825, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17978)
  br label %bb.r, !dbg !18043

bb.r:                                             ; preds = %bb.p, %bb.q
    #dbg_value(i64 %6, !17825, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17978)
    #dbg_value(i64 %6, !17930, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17977)
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16, !dbg !18044
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 32, !dbg !18044
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !18045 ; 2 uses
    #dbg_value(ptr %i.ai, !17803, !DIExpression(), !17902)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !18005
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !18005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !18005
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 48, !dbg !18005
  store i64 %i.ab, ptr %i.ak, align 8, !dbg !18005
  %.sroa.4.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.f, i64 56, !dbg !18005
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx82, align 8, !dbg !18005
  %.sroa.5.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.f, i64 64, !dbg !18005
  store i64 %6, ptr %.sroa.5.0..sroa_idx83, align 8, !dbg !18005
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 72, !dbg !18005
  %i.am = load <2 x i64>, ptr %7, align 8, !dbg !18044
  store <2 x i64> %i.am, ptr %i.al, align 8, !dbg !18005
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 88, !dbg !18005
  %i.an = load <2 x i64>, ptr %i.ag, align 8, !dbg !18044
  store <2 x i64> %i.an, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18005
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104, !dbg !18005
  %i.ao = load <2 x i64>, ptr %i.ah, align 8, !dbg !18044
  store <2 x i64> %i.ao, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !18021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !18021
    #dbg_value(ptr %i.ai, !17979, !DIExpression(), !17716)
    #dbg_value(ptr %i.ai, !17987, !DIExpression(), !17719)
    #dbg_declare(ptr %i.f, !17983, !DIExpression(), !17720)
    #dbg_value(i64 120, !17992, !DIExpression(), !17725)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !18046 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !18046, !alias.scope !18000, !noundef !975 ; 3 uses
    #dbg_value(i64 %i.aq, !17984, !DIExpression(), !17728)
    #dbg_value(i64 %i.aq, !18001, !DIExpression(), !17731)
    #dbg_value(ptr %i.ai, !17998, !DIExpression(), !17732)
  %i.ar = load i64, ptr %i.ai, align 8, !dbg !18047, !range !1800, !alias.scope !18000, !noundef !975
  %i.as = icmp eq i64 %i.aq, %i.ar, !dbg !18048
  br i1 %i.as, label %bb.s, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5yXxDE1DkoT_4tera6errors4NoteE8push_mutBJ_.exit, !dbg !18048

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera6errors4NoteE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5yXxDE1DkoT_4tera6errors4NoteE8push_mutBJ_.exit unwind label %bb.t, !dbg !18049, !noalias !18004

bb.t:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera6errors4NoteEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.f) #23
          to label %common.resume unwind label %bb.u, !dbg !18050

bb.u:                                             ; preds = %bb.t
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !18051
  unreachable, !dbg !18051

common.resume:                                    ; preds = %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.t ], [ %.pn79, %bb.f ]
  resume { ptr, i32 } %common.resume.op, !dbg !17750

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5yXxDE1DkoT_4tera6errors4NoteE8push_mutBJ_.exit: ; preds = %bb.r, %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !18052
  %i.aw = load ptr, ptr %i.av, align 8, !dbg !18052, !alias.scope !18000, !nonnull !975, !noundef !975
    #dbg_value(ptr %i.aw, !18002, !DIExpression(), !17731)
  %i.ax = getelementptr inbounds nuw [120 x i8], ptr %i.aw, i64 %i.aq, !dbg !18053
    #dbg_value(ptr %i.ax, !17985, !DIExpression(), !17740)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ax, ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 120, i1 false), !dbg !18054
  %i.ay = add i64 %i.aq, 1, !dbg !18055
  store i64 %i.ay, ptr %i.ap, align 8, !dbg !18055, !alias.scope !18000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !18056
  ret void, !dbg !18057

bb.v:                                             ; preds = %bb.m, %bb.f
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !18058
  unreachable, !dbg !18058

bb.w:                                             ; preds = %bb.o, %bb.i
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs5yXxDE1DkoT_4tera9reportingNtB2_14SourceLocation3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !18069 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !18330, !DIExpression(), !18340)
    #dbg_value(ptr poison, !18351, !DIExpression(), !18354)
    #dbg_value(ptr poison, !18347, !DIExpression(), !18355)
    #dbg_value(ptr poison, !2287, !DIExpression(), !18078)
    #dbg_value(ptr poison, !2287, !DIExpression(), !18080)
    #dbg_value(ptr poison, !2287, !DIExpression(), !18082)
    #dbg_value(ptr poison, !2287, !DIExpression(), !18084)
    #dbg_value(ptr poison, !2260, !DIExpression(), !18085)
    #dbg_value(ptr poison, !18356, !DIExpression(), !18368)
    #dbg_value(ptr poison, !18366, !DIExpression(), !18369)
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
    #dbg_value(ptr %1, !18313, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18370)
    #dbg_value(ptr %1, !18371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18375)
    #dbg_value(ptr %1, !18376, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18383)
    #dbg_value(ptr %1, !18384, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18388)
    #dbg_value(ptr %1, !18389, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18394)
    #dbg_value(ptr %1, !18395, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18402)
    #dbg_value(ptr %1, !18403, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18407)
    #dbg_value(ptr %1, !18408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18414)
    #dbg_value(i64 %2, !18313, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18370)
    #dbg_value(i64 %2, !18371, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18375)
    #dbg_value(i64 %2, !18376, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18383)
    #dbg_value(i64 %2, !18384, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18388)
    #dbg_value(i64 %2, !18389, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18394)
    #dbg_value(i64 %2, !18395, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18402)
    #dbg_value(i64 %2, !18403, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18407)
    #dbg_value(i64 %2, !18408, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18414)
    #dbg_value(ptr %3, !18314, !DIExpression(), !18370)
    #dbg_declare(ptr %i.d, !18315, !DIExpression(), !18415)
    #dbg_declare(ptr %i.c, !18319, !DIExpression(), !18416)
    #dbg_value(i64 100, !18417, !DIExpression(), !18420)
    #dbg_value(i64 100, !18421, !DIExpression(), !18424)
    #dbg_value(i64 100, !18425, !DIExpression(), !18429)
    #dbg_declare(ptr poison, !18426, !DIExpression(), !18430)
    #dbg_value(i64 100, !18431, !DIExpression(), !18435)
    #dbg_declare(ptr poison, !18432, !DIExpression(), !18436)
    #dbg_value(i64 100, !18437, !DIExpression(), !18444)
    #dbg_declare(ptr poison, !18438, !DIExpression(), !18445)
    #dbg_value(i64 0, !18446, !DIExpression(), !18452)
    #dbg_value(i64 100, !18448, !DIExpression(), !18452)
    #dbg_declare(ptr poison, !18453, !DIExpression(), !18458)
    #dbg_value(i64 1, !18459, !DIExpression(), !18466)
    #dbg_value(i64 1, !18467, !DIExpression(), !18471)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !18747
    #dbg_value(ptr %1, !18472, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18113)
    #dbg_value(i64 %2, !18472, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18113)
    #dbg_declare(ptr %i.a, !18476, !DIExpression(), !18136)
    #dbg_declare(ptr %i.a, !18543, !DIExpression(), !18139)
    #dbg_declare(ptr %i.a, !18548, !DIExpression(), !18142)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18748, !noalias !18552
    #dbg_value(ptr %1, !18553, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18148)
    #dbg_value(ptr %1, !18562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18151)
    #dbg_value(i64 %2, !18553, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18148)
    #dbg_value(i64 %2, !18562, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18151)
    #dbg_value(i64 0, !18553, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18148)
    #dbg_value(i64 0, !18562, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18151)
    #dbg_value(i64 %2, !18553, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18148)
    #dbg_value(i64 %2, !18562, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18151)
    #dbg_value(i32 10, !18553, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !18148)
    #dbg_value(i32 10, !18562, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !18151)
    #dbg_value(i32 10, !18553, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !18148)
    #dbg_value(i32 10, !18562, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !18151)
    #dbg_value(i8 1, !18553, !DIExpression(DW_OP_LLVM_fragment, 320, 8), !18148)
    #dbg_value(i8 1, !18562, !DIExpression(DW_OP_LLVM_fragment, 320, 8), !18151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18569), !dbg !18749
    #dbg_value(i64 1, !18556, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18154)
    #dbg_value(i64 0, !18556, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18154)
    #dbg_value(i64 1, !18564, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18155)
    #dbg_value(i64 0, !18564, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18155)
  store i64 1, ptr %i.a, align 8, !dbg !18750, !alias.scope !18570, !noalias !18552
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18750
  store i64 0, ptr %i.e, align 8, !dbg !18750, !alias.scope !18570, !noalias !18552
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18750
  store ptr %1, ptr %i.f, align 8, !dbg !18750, !alias.scope !18571, !noalias !18552
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !18750
  store i64 %2, ptr %.sroa.420.0..sroa_idx.i, align 8, !dbg !18750, !alias.scope !18571, !noalias !18552
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !18750
  store i64 0, ptr %.sroa.521.0..sroa_idx.i, align 8, !dbg !18750, !alias.scope !18571, !noalias !18552
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !18750
  store i64 %2, ptr %.sroa.622.0..sroa_idx.i, align 8, !dbg !18750, !alias.scope !18571, !noalias !18552
  %.sroa.723.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !18750
  store i32 10, ptr %.sroa.723.0..sroa_idx.i, align 8, !dbg !18750, !alias.scope !18571, !noalias !18552
  %.sroa.824.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 52, !dbg !18750
  store i32 10, ptr %.sroa.824.0..sroa_idx.i, align 4, !dbg !18750, !alias.scope !18571, !noalias !18552
  %.sroa.925.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !18750
  store i8 1, ptr %.sroa.925.0..sroa_idx.i, align 8, !dbg !18750, !alias.scope !18571, !noalias !18552
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtNtB1B_7sources4once4OncejEINtNtB1z_3map3MapINtNtNtB1D_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEE9from_iterB3O_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !dbg !18751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18752, !noalias !18552
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !18753
  %i.h = load i64, ptr %i.g, align 8, !dbg !18753, !noundef !975 ; 8 uses
    #dbg_value(i64 %i.h, !18316, !DIExpression(), !18572)
    #dbg_value(i64 %i.h, !18573, !DIExpression(), !18582)
    #dbg_value(i64 %i.h, !18583, !DIExpression(), !18598)
    #dbg_value(i64 %i.h, !18599, !DIExpression(), !18606)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !18754
  %i.j = load i64, ptr %i.i, align 8, !dbg !18754, !noundef !975 ; 5 uses
    #dbg_value(i64 %i.j, !18317, !DIExpression(), !18607)
    #dbg_value(ptr %i.d, !18608, !DIExpression(), !18614)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !18755
  %i.l = load i64, ptr %i.k, align 8, !dbg !18755, !noundef !975 ; 6 uses
  %i.m = icmp ult i64 %i.l, 1152921504606846976, !dbg !18756
  call void @llvm.assume(i1 %i.m), !dbg !18757
  %i.n = icmp eq i64 %i.h, %i.l, !dbg !18758
    #dbg_value(ptr %i.d, !18578, !DIExpression(), !18616)
    #dbg_value(ptr %i.d, !18578, !DIExpression(), !18618)
    #dbg_value(ptr %i.d, !18619, !DIExpression(), !18624)
    #dbg_value(ptr %i.d, !18619, !DIExpression(), !18627)
    #dbg_value(ptr %i.d, !18628, !DIExpression(), !18632)
    #dbg_value(ptr %i.d, !18628, !DIExpression(), !18635)
    #dbg_value(ptr %i.d, !18636, !DIExpression(), !18643)
    #dbg_value(ptr %i.d, !18636, !DIExpression(), !18646)
  %i.o = add i64 %i.h, -1, !dbg !18607            ; 5 uses
  br i1 %i.n, label %bb.c, label %bb.b, !dbg !18758

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %i.o, !18573, !DIExpression(), !18647)
    #dbg_value(i64 %i.o, !18583, !DIExpression(), !18649)
    #dbg_value(i64 %i.o, !18599, !DIExpression(), !18652)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !18759
  %i.q = load ptr, ptr %i.p, align 8, !dbg !18759, !nonnull !975, !noundef !975 ; 2 uses
    #dbg_value(ptr %i.q, !18590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18649)
    #dbg_value(ptr %i.q, !18602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18652)
    #dbg_value(i64 %i.l, !18590, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18649)
    #dbg_value(i64 %i.l, !18602, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18652)
  %i.r = icmp ult i64 %i.o, %i.l, !dbg !18760
  br i1 %i.r, label %bb.d, label %.invoke123, !dbg !18760

bb.c:                                             ; preds = %bb.a
    #dbg_value(i64 %i.o, !18573, !DIExpression(), !18672)
    #dbg_value(i64 %i.o, !18583, !DIExpression(), !18674)
    #dbg_value(i64 %i.o, !18599, !DIExpression(), !18676)
    #dbg_value(ptr poison, !18590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18674)
    #dbg_value(ptr poison, !18602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18676)
    #dbg_value(i64 %i.l, !18590, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18674)
    #dbg_value(i64 %i.l, !18602, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18676)
  %.not122 = icmp eq i64 %i.h, 0, !dbg !18761
  br i1 %.not122, label %.invoke123, label %bb.n, !dbg !18761

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o, !dbg !18762
  %i.t = load i64, ptr %i.s, align 8, !dbg !18763, !noundef !975 ; 9 uses
    #dbg_value(i64 %i.t, !18385, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18388)
    #dbg_value(i64 %i.t, !18390, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18394)
    #dbg_value(i64 %i.t, !18397, !DIExpression(), !18677)
    #dbg_value(i64 %i.t, !18409, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18414)
    #dbg_value(ptr %i.d, !18578, !DIExpression(), !18678)
    #dbg_value(ptr %i.d, !18619, !DIExpression(), !18680)
    #dbg_value(ptr %i.d, !18628, !DIExpression(), !18683)
    #dbg_value(ptr %i.d, !18636, !DIExpression(), !18686)
    #dbg_value(ptr %i.q, !18590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18598)
    #dbg_value(ptr %i.q, !18602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18606)
    #dbg_value(i64 %i.l, !18590, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18598)
    #dbg_value(i64 %i.l, !18602, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18606)
  %i.u = icmp samesign ult i64 %i.h, %i.l, !dbg !18764
  br i1 %i.u, label %bb.h, label %.invoke123, !dbg !18764

bb.e:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f
  %.pn = phi { ptr, i32 } [ %i.v, %bb.f ], [ %lpad.loopexit.split-lp127, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #23
          to label %common.resume unwind label %bb.aa, !dbg !18765

bb.f:                                             ; preds = %.invoke123, %.invoke, %bb.t, %bb.r, %bb.m
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.t
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.h, !dbg !18766
  %i.x = load i64, ptr %i.w, align 8, !dbg !18767, !noundef !975 ; 8 uses
    #dbg_value(i64 %i.x, !18385, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18388)
    #dbg_value(i64 %i.x, !18390, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18394)
    #dbg_value(i64 %i.x, !18398, !DIExpression(), !18677)
    #dbg_value(i64 %i.x, !18409, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18414)
    #dbg_value(i64 %i.t, !18396, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18402)
    #dbg_value(i64 %i.t, !18404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18407)
    #dbg_value(i64 %i.x, !18396, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18402)
    #dbg_value(i64 %i.x, !18404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18407)
    #dbg_value(ptr %1, !2837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18171)
    #dbg_value(i64 %2, !2837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18171)
    #dbg_value(i64 %i.t, !2840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18171)
    #dbg_value(i64 %i.x, !2840, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18171)
    #dbg_value(i64 %i.t, !2841, !DIExpression(), !18172)
    #dbg_value(i64 %i.t, !2845, !DIExpression(), !18174)
    #dbg_value(i64 %i.x, !2842, !DIExpression(), !18172)
    #dbg_value(i64 %i.x, !2845, !DIExpression(), !18176)
    #dbg_value(ptr %1, !2843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18177)
    #dbg_value(i64 %2, !2843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18177)
  %i.y = icmp ugt i64 %i.t, %i.x, !dbg !18768
  %i.z = icmp ugt i64 %i.x, %2
  %or.cond.i = or i1 %i.y, %i.z, !dbg !18768
  br i1 %or.cond.i, label %.invoke, label %bb.i, !dbg !18768, !prof !2848

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i64 %i.t, %2, !dbg !18769
  br i1 %i.aa, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, label %bb.j, !dbg !18769

bb.j:                                             ; preds = %bb.i
  %i.ab = icmp eq i64 %i.t, 0, !dbg !18770
  br i1 %i.ab, label %bb.k, label %bb.l, !dbg !18770

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ac = icmp eq i64 %i.x, %2, !dbg !18771
  br i1 %i.ac, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit, !dbg !18771

bb.l:                                             ; preds = %bb.j
    #dbg_value(ptr %1, !2846, !DIExpression(), !18174)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.t, !dbg !18772
    #dbg_value(ptr %i.ad, !2849, !DIExpression(), !18179)
    #dbg_value(ptr %i.ad, !2853, !DIExpression(), !18181)
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !18773, !alias.scope !18687, !noundef !975
    #dbg_value(i8 %i.ae, !2855, !DIExpression(), !18185)
  %i.af = icmp sgt i8 %i.ae, -65, !dbg !18774
  br i1 %i.af, label %bb.k, label %.invoke, !dbg !18775, !prof !2857

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit: ; preds = %bb.k
    #dbg_value(ptr %1, !2846, !DIExpression(), !18176)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.x, !dbg !18776
    #dbg_value(ptr %i.ag, !2849, !DIExpression(), !18187)
    #dbg_value(ptr %i.ag, !2853, !DIExpression(), !18189)
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !18777, !alias.scope !18687, !noundef !975
    #dbg_value(i8 %i.ah, !2855, !DIExpression(), !18191)
  %i.ai = icmp sgt i8 %i.ah, -65, !dbg !18778
  br i1 %i.ai, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, label %.invoke, !dbg !18779, !prof !2859

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread: ; preds = %bb.k, %bb.i, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit
    #dbg_value(ptr %1, !18410, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18688)
    #dbg_value(i64 %2, !18410, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18688)
  %i.aj = sub nuw i64 %i.x, %i.t, !dbg !18780
  br label %bb.m, !dbg !18781

bb.m:                                             ; preds = %bb.q, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread
  %.sroa.3.0 = phi i64 [ %i.ax, %bb.q ], [ %i.aj, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread ], !dbg !18607
  %.pn98 = phi i64 [ %i.ao, %bb.q ], [ %i.t, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread ]
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.pn98, !dbg !18607
  %i.ak = invoke { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre16trim_end_matchescECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.3.0, i32 noundef 10)
          to label %bb.r unwind label %bb.f, !dbg !18782 ; 2 uses

bb.n:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !18783
  %i.am = load ptr, ptr %i.al, align 8, !dbg !18783, !nonnull !975, !noundef !975
    #dbg_value(ptr %i.am, !18590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18674)
    #dbg_value(ptr %i.am, !18602, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18676)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.o, !dbg !18784
  %i.ao = load i64, ptr %i.an, align 8, !dbg !18785, !noundef !975 ; 8 uses
    #dbg_value(i64 %i.ao, !18378, !DIExpression(), !18692)
    #dbg_value(i64 %i.ao, !18372, !DIExpression(), !18375)
    #dbg_value(i64 %i.ao, !18377, !DIExpression(), !18383)
    #dbg_value(i64 %2, !18379, !DIExpression(), !18692)
    #dbg_value(i64 %i.ao, !2814, !DIExpression(), !18193)
    #dbg_value(ptr %1, !2817, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18193)
    #dbg_value(ptr %1, !2819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18195)
    #dbg_value(ptr %1, !2822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18197)
    #dbg_value(ptr %1, !2828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18199)
    #dbg_value(i64 %2, !2817, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18193)
    #dbg_value(i64 %2, !2819, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18195)
    #dbg_value(i64 %2, !2822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18197)
    #dbg_value(i64 %2, !2828, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18199)
    #dbg_value(i64 %i.ao, !2820, !DIExpression(), !18195)
    #dbg_value(i64 %i.ao, !2825, !DIExpression(), !18197)
    #dbg_value(i64 %i.ao, !2831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18199)
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !18786
  br i1 %i.ap, label %bb.q, label %bb.o, !dbg !18786

bb.o:                                             ; preds = %bb.n
  %.not.i = icmp ult i64 %i.ao, %2, !dbg !18787
  br i1 %.not.i, label %bb.p, label %.split.i, !dbg !18787

.split.i:                                         ; preds = %bb.o
  %i.aq = icmp eq i64 %i.ao, %2, !dbg !18788
  br i1 %i.aq, label %bb.q, label %.invoke, !dbg !18789

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao, !dbg !18790
  %i.as = load i8, ptr %i.ar, align 1, !dbg !18790, !alias.scope !18693, !noundef !975
    #dbg_value(i8 %i.as, !2835, !DIExpression(), !18203)
  %i.at = icmp sgt i8 %i.as, -65, !dbg !18791
  br i1 %i.at, label %bb.q, label %.invoke, !dbg !18789

.invoke123:                                       ; preds = %bb.b, %bb.c, %bb.d
  %i.au = phi i64 [ %i.h, %bb.d ], [ %i.o, %bb.c ], [ %i.o, %bb.b ]
  %i.av = phi i64 [ %i.l, %bb.d ], [ %i.h, %bb.c ], [ %i.l, %bb.b ]
  %i.aw = phi ptr [ @31, %bb.d ], [ @33, %bb.c ], [ @30, %bb.b ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw) #22
          to label %.cont124 unwind label %bb.f, !dbg !18792

.cont124:                                         ; preds = %.invoke123
  unreachable

bb.q:                                             ; preds = %bb.p, %.split.i, %bb.n
    #dbg_value(ptr %1, !2832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18204)
    #dbg_value(i64 %2, !2832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18204)
    #dbg_value(i64 %2, !2826, !DIExpression(), !18205)
    #dbg_value(i64 %2, !2831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18199)
  %i.ax = sub nuw i64 %2, %i.ao, !dbg !18793
  br label %bb.m, !dbg !18781

.invoke:                                          ; preds = %.split.i, %bb.p, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit, %bb.h, %bb.l
  %i.ay = phi i64 [ %i.t, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit ], [ %i.t, %bb.l ], [ %i.t, %bb.h ], [ %i.ao, %bb.p ], [ %i.ao, %.split.i ]
  %i.az = phi i64 [ %i.x, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit ], [ %i.x, %bb.l ], [ %i.x, %bb.h ], [ %2, %bb.p ], [ %2, %.split.i ]
  %i.ba = phi ptr [ @32, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit ], [ @32, %bb.l ], [ @32, %bb.h ], [ @34, %bb.p ], [ @34, %.split.i ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ay, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba) #22
          to label %.cont unwind label %bb.f, !dbg !18607

.cont:                                            ; preds = %.invoke
  unreachable

bb.r:                                             ; preds = %bb.m
  %i.bb = extractvalue { ptr, i64 } %i.ak, 0, !dbg !18781 ; 4 uses
  %i.bc = extractvalue { ptr, i64 } %i.ak, 1, !dbg !18781 ; 2 uses
    #dbg_value(ptr %i.bb, !18318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18696)
    #dbg_value(ptr %i.bb, !18697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18700)
    #dbg_value(i64 %i.bc, !18318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18696)
    #dbg_value(i64 %i.bc, !18697, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18700)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18794
    #dbg_value(i64 1, !18439, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18444)
    #dbg_value(i64 1, !18449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18452)
    #dbg_value(i64 1, !18439, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18444)
    #dbg_value(i64 1, !18449, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18452)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18795
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 100, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.s unwind label %bb.f, !dbg !18795

bb.s:                                             ; preds = %bb.r
  %i.bd = load i64, ptr %i.b, align 8, !dbg !18795, !range !1459, !noundef !975
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !18796
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18444
  %5 = load i64, ptr %4, align 8, !dbg !18444, !range !1460, !noundef !975 ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !18444 ; 2 uses
  br i1 %i.be, label %bb.t, label %bb.u, !dbg !18796, !prof !1461

bb.t:                                             ; preds = %bb.s
  %i.bf = load i64, ptr %6, align 8, !dbg !18797
    #dbg_value(i64 %5, !18441, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18701)
    #dbg_value(i64 %i.bf, !18441, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18701)
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %5, i64 %i.bf) #22
          to label %bb.g unwind label %bb.f, !dbg !18798

bb.u:                                             ; preds = %bb.s
  %i.bg = load ptr, ptr %6, align 8, !dbg !18799, !nonnull !975, !noundef !975
    #dbg_value(i64 %5, !18440, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18702)
    #dbg_value(ptr %i.bg, !18440, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18702)
    #dbg_value(ptr poison, !18447, !DIExpression(), !18703)
  %i.bh = icmp samesign ugt i64 %5, 99, !dbg !18800
    #dbg_value(i1 true, !18704, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18707)
  call void @llvm.assume(i1 %i.bh), !dbg !18801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18802
  store i64 %5, ptr %i.c, align 8, !dbg !18803
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !18803 ; 3 uses
  store ptr %i.bg, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !18803
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !18803 ; 3 uses
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8, !dbg !18803
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ], !dbg !18804
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc, !dbg !18805 ; 4 uses
    #dbg_value(ptr %i.bb, !18320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18715)
    #dbg_value(ptr %i.bi, !18320, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18715)
    #dbg_value(i64 %i.j, !18320, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18715)
    #dbg_value(ptr undef, !18366, !DIExpression(), !18369)
  %i.bj = icmp eq i64 %i.j, 0, !dbg !18806
  br i1 %i.bj, label %._crit_edge, label %.lr.ph, !dbg !18806

.lr.ph:                                           ; preds = %bb.u, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit81
  %i.bk = phi i64 [ %storemerge, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit81 ], [ 0, %bb.u ] ; 4 uses
  %.sroa.0.083100 = phi ptr [ %.sroa.0.1.ph, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit81 ], [ %i.bb, %bb.u ] ; 6 uses
  %.sroa.10.099 = phi i64 [ %i.bl, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit81 ], [ %i.j, %bb.u ]
    #dbg_value(ptr %.sroa.0.083100, !18320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18715)
    #dbg_value(i64 %.sroa.10.099, !18320, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18715)
  %i.bl = add i64 %.sroa.10.099, -1, !dbg !18807  ; 2 uses
    #dbg_value(i64 %i.bl, !18320, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18715)
    #dbg_value(ptr undef, !18356, !DIExpression(), !18368)
    #dbg_value(ptr undef, !2260, !DIExpression(), !18085)
    #dbg_value(i32 2, !2281, !DIExpression(), !18213)
    #dbg_value(ptr undef, !2287, !DIExpression(), !18084)
    #dbg_value(i64 1, !2302, !DIExpression(), !18215)
    #dbg_value(ptr %.sroa.0.083100, !2298, !DIExpression(), !18216)
    #dbg_value(ptr %.sroa.0.083100, !2306, !DIExpression(), !18215)
    #dbg_value(ptr %i.bi, !2299, !DIExpression(), !18217)
    #dbg_value(ptr poison, !2309, !DIExpression(), !18219)
    #dbg_value(ptr poison, !2313, !DIExpression(), !18220)
  %i.bm = icmp eq ptr %.sroa.0.083100, %i.bi, !dbg !18808
  br i1 %i.bm, label %._crit_edge, label %bb.v, !dbg !18809

bb.v:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.083100, i64 1, !dbg !18810 ; 3 uses
    #dbg_value(ptr %i.bn, !18320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18715)
  %i.bo = load i8, ptr %.sroa.0.083100, align 1, !dbg !18811, !noalias !18716, !noundef !975 ; 5 uses
    #dbg_value(i8 %i.bo, !2261, !DIExpression(), !18223)
    #dbg_value(i8 %i.bo, !2284, !DIExpression(), !18213)
  %i.bp = icmp sgt i8 %i.bo, -1, !dbg !18812
  br i1 %i.bp, label %bb.w, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i, !dbg !18812

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i: ; preds = %bb.v
  %i.bq = and i8 %i.bo, 31, !dbg !18813
  %i.br = zext nneg i8 %i.bq to i32, !dbg !18813  ; 3 uses
    #dbg_value(i32 %i.br, !2264, !DIExpression(), !18224)
    #dbg_value(i32 %i.br, !2315, !DIExpression(), !18226)
    #dbg_value(ptr undef, !2287, !DIExpression(), !18082)
    #dbg_value(i64 1, !2302, !DIExpression(), !18228)
    #dbg_value(ptr %i.bn, !2298, !DIExpression(), !18229)
    #dbg_value(ptr %i.bn, !2306, !DIExpression(), !18228)
    #dbg_value(ptr %i.bi, !2299, !DIExpression(), !18230)
    #dbg_value(ptr poison, !2309, !DIExpression(), !18232)
    #dbg_value(ptr poison, !2313, !DIExpression(), !18233)
  %i.bs = icmp ne ptr %i.bn, %i.bi, !dbg !18814
  call void @llvm.assume(i1 %i.bs), !dbg !18815
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.083100, i64 2, !dbg !18816 ; 3 uses
    #dbg_value(ptr %i.bt, !18320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18715)
  %i.bu = load i8, ptr %i.bn, align 1, !dbg !18817, !noalias !18716, !noundef !975
    #dbg_value(i8 %i.bu, !2265, !DIExpression(), !18234)
    #dbg_value(i8 %i.bu, !2318, !DIExpression(), !18226)
  %i.bv = shl nuw nsw i32 %i.br, 6, !dbg !18818
  %i.bw = and i8 %i.bu, 63, !dbg !18819
  %i.bx = zext nneg i8 %i.bw to i32, !dbg !18819  ; 2 uses
  %i.by = or disjoint i32 %i.bv, %i.bx, !dbg !18818
    #dbg_value(i32 %i.by, !2266, !DIExpression(), !18235)
  %i.bz = icmp samesign ugt i8 %i.bo, -33, !dbg !18820
  br i1 %i.bz, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i, label %bb.x, !dbg !18820

bb.w:                                             ; preds = %bb.v
  %i.ca = zext nneg i8 %i.bo to i32, !dbg !18821
  br label %bb.x, !dbg !18822

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i
    #dbg_value(ptr undef, !2287, !DIExpression(), !18080)
    #dbg_value(i64 1, !2302, !DIExpression(), !18237)
    #dbg_value(ptr %i.bt, !2298, !DIExpression(), !18238)
    #dbg_value(ptr %i.bt, !2306, !DIExpression(), !18237)
    #dbg_value(ptr %i.bi, !2299, !DIExpression(), !18239)
    #dbg_value(ptr poison, !2309, !DIExpression(), !18241)
    #dbg_value(ptr poison, !2313, !DIExpression(), !18242)
  %i.cb = icmp ne ptr %i.bt, %i.bi, !dbg !18823
  call void @llvm.assume(i1 %i.cb), !dbg !18824
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.083100, i64 3, !dbg !18825 ; 3 uses
    #dbg_value(ptr %i.cc, !18320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18715)
  %i.cd = load i8, ptr %i.bt, align 1, !dbg !18826, !noalias !18716, !noundef !975
    #dbg_value(i8 %i.cd, !2267, !DIExpression(), !18243)
    #dbg_value(i8 %i.cd, !2318, !DIExpression(), !18245)
    #dbg_value(i32 %i.bx, !2315, !DIExpression(), !18245)
  %i.ce = shl nuw nsw i32 %i.bx, 6, !dbg !18827
  %i.cf = and i8 %i.cd, 63, !dbg !18828
  %i.cg = zext nneg i8 %i.cf to i32, !dbg !18828
  %i.ch = or disjoint i32 %i.ce, %i.cg, !dbg !18827 ; 2 uses
    #dbg_value(i32 %i.ch, !2268, !DIExpression(), !18246)
    #dbg_value(i32 %i.ch, !2315, !DIExpression(), !18248)
  %i.ci = shl nuw nsw i32 %i.br, 12, !dbg !18829
  %i.cj = or disjoint i32 %i.ch, %i.ci, !dbg !18830
    #dbg_value(i32 %i.cj, !2266, !DIExpression(), !18235)
  %i.ck = icmp samesign ugt i8 %i.bo, -17, !dbg !18831
  br i1 %i.ck, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i, label %bb.x, !dbg !18831

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i
    #dbg_value(ptr undef, !2287, !DIExpression(), !18078)
    #dbg_value(i64 1, !2302, !DIExpression(), !18250)
    #dbg_value(ptr %i.cc, !2298, !DIExpression(), !18251)
    #dbg_value(ptr %i.cc, !2306, !DIExpression(), !18250)
    #dbg_value(ptr %i.bi, !2299, !DIExpression(), !18252)
    #dbg_value(ptr poison, !2309, !DIExpression(), !18254)
    #dbg_value(ptr poison, !2313, !DIExpression(), !18255)
  %i.cl = icmp ne ptr %i.cc, %i.bi, !dbg !18832
  call void @llvm.assume(i1 %i.cl), !dbg !18833
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.083100, i64 4, !dbg !18834
    #dbg_value(ptr %i.cm, !18320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18715)
  %i.cn = load i8, ptr %i.cc, align 1, !dbg !18835, !noalias !18716, !noundef !975
    #dbg_value(i8 %i.cn, !2269, !DIExpression(), !18256)
    #dbg_value(i8 %i.cn, !2318, !DIExpression(), !18248)
  %i.co = shl nuw nsw i32 %i.br, 18, !dbg !18836
  %i.cp = and i32 %i.co, 1835008, !dbg !18836
  %i.cq = shl nuw nsw i32 %i.ch, 6, !dbg !18837
  %i.cr = and i8 %i.cn, 63, !dbg !18838
  %i.cs = zext nneg i8 %i.cr to i32, !dbg !18838
  %i.ct = or disjoint i32 %i.cq, %i.cs, !dbg !18837
  %i.cu = or disjoint i32 %i.ct, %i.cp, !dbg !18839
    #dbg_value(i32 %i.cu, !2266, !DIExpression(), !18235)
  br label %bb.x, !dbg !18840

._crit_edge:                                      ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit81, %.lr.ph, %bb.u
  %i.cv = phi i64 [ 0, %bb.u ], [ %storemerge, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit81 ], [ %i.bk, %.lr.ph ]
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !18841
  %i.cx = load i64, ptr %i.cw, align 8, !dbg !18841, !noundef !975 ; 2 uses
  %i.cy = icmp ugt i64 %i.cx, %i.j, !dbg !18841
  %i.cz = sub nuw i64 %i.cx, %i.j, !dbg !18841
  %.sroa.04.0 = select i1 %i.cy, i64 %i.cz, i64 1, !dbg !18841 ; 2 uses
    #dbg_value(i64 %.sroa.04.0, !18322, !DIExpression(), !18717)
    #dbg_value(i64 0, !18323, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18718)
    #dbg_value(i64 %.sroa.04.0, !18323, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18718)
    #dbg_value(ptr undef, !18347, !DIExpression(), !18355)
    #dbg_value(ptr undef, !18351, !DIExpression(), !18354)
    #dbg_value(ptr undef, !18330, !DIExpression(), !18340)
    #dbg_value(ptr undef, !18334, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18719)
  %.not = icmp eq i64 %.sroa.04.0, 0, !dbg !18842
  br i1 %.not, label %._crit_edge105, label %.lr.ph104, !dbg !18339

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph104, %bb.x
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #23
          to label %bb.e unwind label %bb.aa, !dbg !18843

bb.x:                                             ; preds = %bb.w, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i
  %.sroa.0.1.ph = phi ptr [ %i.bt, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i ], [ %i.cc, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i ], [ %i.cm, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i ], [ %i.bn, %bb.w ]
  %.sroa.4.0.i.ph = phi i32 [ %i.by, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i ], [ %i.cj, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i ], [ %i.cu, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i ], [ %i.ca, %bb.w ] ; 2 uses
    #dbg_value(ptr %.sroa.0.1.ph, !18320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18715)
    #dbg_value(i32 1, !18454, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !18720)
    #dbg_value(i32 %.sroa.4.0.i.ph, !18454, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !18720)
    #dbg_value(i32 %.sroa.4.0.i.ph, !18455, !DIExpression(), !18721)
    #dbg_value(i32 %.sroa.4.0.i.ph, !18722, !DIExpression(), !18725)
    #dbg_value(i32 %.sroa.4.0.i.ph, !18726, !DIExpression(), !18729)
    #dbg_value(i32 %.sroa.4.0.i.ph, !18730, !DIExpression(), !18733)
  %i.da = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112, !dbg !18844
  call void @llvm.assume(i1 %i.da), !dbg !18844
    #dbg_value(i32 %.sroa.4.0.i.ph, !18321, !DIExpression(), !18734)
    #dbg_value(ptr %i.c, !2518, !DIExpression(), !18261)
    #dbg_value(ptr %i.c, !2518, !DIExpression(), !18263)
    #dbg_value(ptr %i.c, !2526, !DIExpression(), !18265)
    #dbg_value(ptr %i.c, !2526, !DIExpression(), !18267)
    #dbg_value(ptr %i.c, !2531, !DIExpression(), !18269)
    #dbg_value(ptr %i.c, !2531, !DIExpression(), !18271)
    #dbg_value(i64 %i.bk, !2523, !DIExpression(), !18272)
    #dbg_value(i64 %i.bk, !2523, !DIExpression(), !18273)
    #dbg_value(i64 %i.bk, !2549, !DIExpression(), !18275)
    #dbg_value(i64 %i.bk, !2549, !DIExpression(), !18277)
  %i.db = icmp sgt i64 %i.bk, -1, !dbg !18845
  call void @llvm.assume(i1 %i.db), !dbg !18846
    #dbg_value(i64 1, !2524, !DIExpression(), !18278)
    #dbg_value(i64 1, !2524, !DIExpression(), !18279)
    #dbg_value(i64 1, !2535, !DIExpression(), !18269)
    #dbg_value(i64 1, !2535, !DIExpression(), !18271)
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18847

._crit_edge105:                                   ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !18848
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !18849
  store ptr %i.bb, ptr %i.dc, align 8, !dbg !18849
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !18849
  store i64 %i.bc, ptr %i.dd, align 8, !dbg !18849
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !18849
  store i64 %i.h, ptr %i.de, align 8, !dbg !18849
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !18849
  store i64 %i.j, ptr %i.df, align 8, !dbg !18849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18843
    #dbg_value(ptr %i.d, !1970, !DIExpression(), !18281)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs5yXxDE1DkoT_4tera.exit unwind label %bb.y, !dbg !18850

bb.y:                                             ; preds = %._crit_edge105
  %i.dg = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.d, !1975, !DIExpression(), !18283)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.z, !dbg !18851

bb.z:                                             ; preds = %bb.y
end_hunk_3
begin_hunk_4_@llvm.experimental.noalias.scope.decl
!18007 = !DILocation(line: 445, column: 15, scope: !17706, inlinedAt: !17849)
!18008 = !DILocation(line: 445, column: 9, scope: !17706, inlinedAt: !17849)
!18009 = !DILocation(line: 454, column: 17, scope: !17706, inlinedAt: !17849)
!18010 = !DILocation(line: 454, column: 25, scope: !17704, inlinedAt: !17849)
!18011 = !DILocation(line: 446, column: 16, scope: !17706, inlinedAt: !17849)
!18012 = !DILocation(line: 787, column: 9, scope: !17707, inlinedAt: !17856)
!18013 = !DILocation(line: 210, column: 9, scope: !17710, inlinedAt: !17928)
!18014 = !DILocation(line: 455, column: 9, scope: !17706, inlinedAt: !17849)
!18015 = !DILocation(line: 449, column: 20, scope: !17695, inlinedAt: !17827)
!18016 = !DILocation(line: 1035, column: 9, scope: !17711, inlinedAt: !17932)
!18017 = !DILocation(line: 57, column: 23, scope: !17678)
!18018 = !DILocation(line: 445, column: 15, scope: !17706, inlinedAt: !17875)
!18019 = !DILocation(line: 574, column: 14, scope: !17709, inlinedAt: !17920)
!18020 = !DILocation(line: 449, column: 17, scope: !17695, inlinedAt: !17827)
!18021 = !DILocation(line: 60, column: 9, scope: !17678)
!18022 = !DILocation(line: 445, column: 9, scope: !17706, inlinedAt: !17875)
!18023 = !DILocation(line: 454, column: 17, scope: !17706, inlinedAt: !17875)
!18024 = !DILocation(line: 454, column: 25, scope: !17702, inlinedAt: !17875)
!18025 = !DILocation(line: 446, column: 16, scope: !17706, inlinedAt: !17875)
!18026 = !DILocation(line: 787, column: 9, scope: !17707, inlinedAt: !17878)
!18027 = !DILocation(line: 210, column: 9, scope: !17710, inlinedAt: !17952)
!18028 = !DILocation(line: 455, column: 9, scope: !17706, inlinedAt: !17875)
!18029 = !DILocation(line: 449, column: 20, scope: !17693, inlinedAt: !17866)
!18030 = !DILocation(line: 1035, column: 9, scope: !17711, inlinedAt: !17954)
!18031 = !DILocation(line: 445, column: 15, scope: !17706, inlinedAt: !17897)
!18032 = !DILocation(line: 574, column: 14, scope: !17709, inlinedAt: !17946)
!18033 = !DILocation(line: 449, column: 17, scope: !17693, inlinedAt: !17866)
!18034 = !DILocation(line: 445, column: 9, scope: !17706, inlinedAt: !17897)
!18035 = !DILocation(line: 454, column: 17, scope: !17706, inlinedAt: !17897)
!18036 = !DILocation(line: 454, column: 25, scope: !17700, inlinedAt: !17897)
!18037 = !DILocation(line: 446, column: 16, scope: !17706, inlinedAt: !17897)
!18038 = !DILocation(line: 787, column: 9, scope: !17707, inlinedAt: !17900)
!18039 = !DILocation(line: 210, column: 9, scope: !17710, inlinedAt: !17974)
!18040 = !DILocation(line: 455, column: 9, scope: !17706, inlinedAt: !17897)
!18041 = !DILocation(line: 449, column: 20, scope: !17691, inlinedAt: !17888)
!18042 = !DILocation(line: 574, column: 14, scope: !17709, inlinedAt: !17968)
!18043 = !DILocation(line: 449, column: 17, scope: !17691, inlinedAt: !17888)
!18044 = !DILocation(line: 51, column: 10, scope: !17686, inlinedAt: !17797)
!18045 = !DILocation(line: 55, column: 9, scope: !17678)
!18046 = !DILocation(line: 1033, column: 19, scope: !17714, inlinedAt: !17715)
!18047 = !DILocation(line: 632, column: 49, scope: !17721, inlinedAt: !17724)
!18048 = !DILocation(line: 1036, column: 12, scope: !17713, inlinedAt: !17715)
!18049 = !DILocation(line: 1037, column: 22, scope: !17713, inlinedAt: !17715)
!18050 = !DILocation(line: 1047, column: 5, scope: !17714, inlinedAt: !17715)
!18051 = !DILocation(line: 1031, column: 5, scope: !17714, inlinedAt: !17715)
!18052 = !DILocation(line: 627, column: 9, scope: !17734, inlinedAt: !17739)
!18053 = !DILocation(line: 971, column: 18, scope: !17729, inlinedAt: !17730)
!18054 = !DILocation(line: 1042, column: 29, scope: !17712, inlinedAt: !17715)
!18055 = !DILocation(line: 1043, column: 13, scope: !17712, inlinedAt: !17715)
!18056 = !DILocation(line: 60, column: 10, scope: !17678)
!18057 = !DILocation(line: 61, column: 6, scope: !17678)
!18058 = !DILocation(line: 54, column: 5, scope: !17678)
!18059 = distinct !DILexicalBlock(scope: !18060, file: !2867, line: 41, column: 9)
!18060 = distinct !DILexicalBlock(scope: !18064, file: !2867, line: 36, column: 9)
!18061 = distinct !DILexicalBlock(scope: !18063, file: !2867, line: 30, column: 9)
!18062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Take<core::str::iter::Chars>", scope: !18325, file: !759, size: 192, align: 64, flags: DIFlagPublic, elements: !18328, templateParams: !18329, identifier: "5e4c3cec3b90f6dd5cfd9fb66ac2fd54")
!18063 = distinct !DILexicalBlock(scope: !18064, file: !2867, line: 30, column: 9)
!18064 = distinct !DILexicalBlock(scope: !18065, file: !2867, line: 29, column: 9)
!18065 = distinct !DILexicalBlock(scope: !18066, file: !2867, line: 22, column: 9)
!18066 = distinct !DILexicalBlock(scope: !18067, file: !2867, line: 21, column: 9)
!18067 = distinct !DILexicalBlock(scope: !18068, file: !2867, line: 20, column: 9)
!18068 = distinct !DILexicalBlock(scope: !18069, file: !2867, line: 19, column: 9)
!18069 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtCs5yXxDE1DkoT_4tera9reportingNtB2_14SourceLocation3new", scope: !358, file: !2867, line: 18, type: !18311, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, declaration: !18312, retainedNodes: !18324)
!18070 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCsf3Ta7LF998c_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !18331, file: !2671, line: 2224, type: !18333, scopeLine: 2224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18335)
!18071 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera", scope: !18343, file: !18341, line: 1184, type: !18346, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18349, retainedNodes: !18348)
!18072 = distinct !DILexicalBlock(scope: !18073, file: !18341, line: 1101, column: 13)
!18073 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs5yXxDE1DkoT_4tera", scope: !18350, file: !18341, line: 1099, type: !18346, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1575, retainedNodes: !18353)
!18074 = distinct !DISubprogram(name: "next", linkageName: "_RNvXNtNtCsf3Ta7LF998c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next", scope: !2670, file: !2502, line: 39, type: !2505, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18357)
!18075 = distinct !DISubprogram(name: "next<core::str::iter::Chars>", linkageName: "_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera", scope: !18362, file: !18361, line: 36, type: !18365, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18329, retainedNodes: !18367)
!18076 = distinct !DILocation(line: 42, column: 18, scope: !18074, inlinedAt: !18360)
!18077 = distinct !DILocation(line: 63, column: 37, scope: !375, inlinedAt: !18076)
!18078 = distinct !DILocation(line: 0, scope: !396, inlinedAt: !18077)
!18079 = distinct !DILocation(line: 55, column: 33, scope: !377, inlinedAt: !18076)
!18080 = distinct !DILocation(line: 0, scope: !396, inlinedAt: !18079)
!18081 = distinct !DILocation(line: 48, column: 29, scope: !379, inlinedAt: !18076)
!18082 = distinct !DILocation(line: 0, scope: !396, inlinedAt: !18081)
!18083 = distinct !DILocation(line: 37, column: 20, scope: !387, inlinedAt: !18076)
!18084 = distinct !DILocation(line: 0, scope: !396, inlinedAt: !18083)
!18085 = distinct !DILocation(line: 0, scope: !387, inlinedAt: !18076)
!18086 = distinct !DISubprogram(name: "index<core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXs2_NtNtCsf3Ta7LF998c_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs5yXxDE1DkoT_4tera", scope: !2715, file: !2698, line: 62, type: !2809, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !2810, retainedNodes: !18373)
!18087 = distinct !DILexicalBlock(scope: !18088, file: !2698, line: 527, column: 13)
!18088 = distinct !DILexicalBlock(scope: !18089, file: !2698, line: 525, column: 9)
!18089 = distinct !DISubprogram(name: "index", linkageName: "_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE5index", scope: !2811, file: !2698, line: 524, type: !2813, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18381)
!18090 = distinct !DISubprogram(name: "index<core::ops::range::Range<usize>>", linkageName: "_RNvXs2_NtNtCsf3Ta7LF998c_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range5RangejEE5indexCs5yXxDE1DkoT_4tera", scope: !2715, file: !2698, line: 62, type: !2717, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !2697, retainedNodes: !18386)
!18091 = distinct !DISubprogram(name: "index", linkageName: "_RNvXs5_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE5index", scope: !2700, file: !2698, line: 247, type: !2719, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18391)
!18092 = distinct !DILexicalBlock(scope: !18093, file: !2698, line: 334, column: 13)
!18093 = distinct !DILexicalBlock(scope: !18094, file: !2698, line: 332, column: 9)
!18094 = distinct !DISubprogram(name: "index", linkageName: "_RNvXs6_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE5index", scope: !2705, file: !2698, line: 331, type: !2721, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18400)
!18095 = distinct !DISubprogram(name: "get", linkageName: "_RNvXs6_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get", scope: !2705, file: !2698, line: 261, type: !2707, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18405)
!18096 = distinct !DILexicalBlock(scope: !18097, file: !2698, line: 305, column: 13)
!18097 = distinct !DILexicalBlock(scope: !18098, file: !2698, line: 284, column: 9)
!18098 = distinct !DISubprogram(name: "get_unchecked", linkageName: "_RNvXs6_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE13get_unchecked", scope: !2705, file: !2698, line: 283, type: !2709, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18412)
!18099 = distinct !DISubprogram(name: "with_capacity", linkageName: "_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String13with_capacity", scope: !12, file: !1346, line: 493, type: !2723, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, declaration: !2724, retainedNodes: !18418)
!18100 = distinct !DISubprogram(name: "with_capacity<u8>", linkageName: "_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VechE13with_capacityCs5yXxDE1DkoT_4tera", scope: !11, file: !1392, line: 524, type: !2726, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !997, declaration: !2727, retainedNodes: !18422)
!18101 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE16with_capacity_inCs5yXxDE1DkoT_4tera", scope: !11, file: !1392, line: 972, type: !1395, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1017, declaration: !1396, retainedNodes: !18427)
!18102 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechE16with_capacity_inCs5yXxDE1DkoT_4tera", scope: !10, file: !1399, line: 177, type: !1402, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1017, declaration: !1403, retainedNodes: !18433)
!18103 = distinct !DILexicalBlock(scope: !18105, file: !1399, line: 454, column: 13)
!18104 = distinct !DILexicalBlock(scope: !18105, file: !1399, line: 446, column: 13)
!18105 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5yXxDE1DkoT_4tera", scope: !9, file: !1399, line: 444, type: !1424, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1016, declaration: !1432, retainedNodes: !18442)
!18106 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCs5yXxDE1DkoT_4tera", scope: !9, file: !1399, line: 786, type: !1453, scopeLine: 786, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1016, declaration: !1454, retainedNodes: !18450)
!18107 = distinct !DILexicalBlock(scope: !18108, file: !1203, line: 1165, column: 13)
!18108 = distinct !DISubprogram(name: "map<u32, char, core::str::iter::{impl#0}::next::{closure_env#0}>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionmE3mapcNCNvXNtNtB5_3str4iterNtBU_5CharsNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs5yXxDE1DkoT_4tera", scope: !373, file: !1203, line: 1160, type: !2687, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !2690, declaration: !2691, retainedNodes: !18456)
!18109 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCsf3Ta7LF998c_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !18460, file: !18341, line: 263, type: !18462, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18464)
!18110 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCsf3Ta7LF998c_4core3numj13unchecked_add", scope: !2616, file: !2615, line: 1031, type: !2618, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18469)
!18111 = distinct !DISubprogram(name: "get_line_starts", linkageName: "_RNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts", scope: !2193, file: !2867, line: 4, type: !18474, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18475)
!18112 = distinct !DILocation(line: 19, column: 35, scope: !18069)
!18113 = distinct !DILocation(line: 0, scope: !18111, inlinedAt: !18112)
!18114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !18491, file: !759, align: 8, elements: !975, identifier: "ff84c7d5249a1f7ad7ca5f5841ecaf3a")
!18115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CharSearcher", scope: !18496, file: !759, size: 384, align: 64, flags: DIFlagPublic, elements: !18504, templateParams: !975, identifier: "9e2225116c536a9c166c6a06620377c")
!18116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MatchIndicesInternal<char>", scope: !2498, file: !759, size: 384, align: 64, flags: DIFlagProtected, elements: !18495, templateParams: !18506, identifier: "302bf23398f3b0904d55b68ca90b0b32")
!18117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MatchIndices<char>", scope: !2498, file: !759, size: 384, align: 64, flags: DIFlagPublic, elements: !18493, templateParams: !18506, identifier: "7260a984fbf1af5820282d071f8d9a9a")
!18118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Map<core::str::iter::MatchIndices<char>, tera::reporting::get_line_starts::{closure_env#0}>", scope: !18487, file: !759, size: 384, align: 64, flags: DIFlagPublic, elements: !18490, templateParams: !18509, identifier: "6795b62b964ae80dc981e2b06010fb5")
!18119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !18122, file: !759, size: 384, align: 64, flags: DIFlagPublic, elements: !18486, templateParams: !18511, identifier: "a1800a73c0ca992b5681512ee10fdc0a")
!18120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !18122, file: !759, size: 384, align: 64, flags: DIFlagPublic, elements: !975, templateParams: !18511, identifier: "6224dc2ad80a02915da2306a11e8d22c")
!18121 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !18122, file: !759, size: 384, align: 64, elements: !18484, templateParams: !975, identifier: "d9f7a0e94c075cab1ce9c627d7db25b7", discriminator: !18512)
!18122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::iter::adapters::map::Map<core::str::iter::MatchIndices<char>, tera::reporting::get_line_starts::{closure_env#0}>>", scope: !1035, file: !759, size: 384, align: 64, flags: DIFlagPublic, elements: !18481, templateParams: !975, identifier: "4c1a2f44bf3b63672a012d9e3d0bc3f8")
!18123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Item<usize>", scope: !1035, file: !759, size: 128, align: 64, flags: DIFlagPrivate, elements: !18525, templateParams: !18349, identifier: "13b0b59a094df6f1a278975e04107eb2")
!18124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IntoIter<usize>", scope: !1035, file: !759, size: 128, align: 64, flags: DIFlagPublic, elements: !18523, templateParams: !18349, identifier: "3f00adbf74589e7d9913cb137526f4e3")
!18125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Once<usize>", scope: !18519, file: !759, size: 128, align: 64, flags: DIFlagPublic, elements: !18521, templateParams: !1575, identifier: "ec459a62c0fecf4f528a4871f63ee457")
!18126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !18129, file: !759, size: 128, align: 64, flags: DIFlagPublic, elements: !18518, templateParams: !18527, identifier: "f62970d5012d37608542ceb0bdb83a71")
!18127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !18129, file: !759, size: 128, align: 64, flags: DIFlagPublic, elements: !975, templateParams: !18527, identifier: "e6998dc224d9b411a32c8ccc48d942b0")
!18128 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !18129, file: !759, size: 128, align: 64, elements: !18516, templateParams: !975, identifier: "8464cba41faf1d18d753887bdd7269f7", discriminator: !18528)
!18129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::iter::sources::once::Once<usize>>", scope: !1035, file: !759, size: 128, align: 64, flags: DIFlagPublic, elements: !18513, templateParams: !975, identifier: "e7a4a8495e63c13099efdc40ca380a29")
!18130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Chain<core::iter::sources::once::Once<usize>, core::iter::adapters::map::Map<core::str::iter::MatchIndices<char>, tera::reporting::get_line_starts::{closure_env#0}>>", scope: !18477, file: !759, size: 512, align: 64, flags: DIFlagPublic, elements: !18480, templateParams: !18531, identifier: "a1e9fac5c5b4c4bde675bd84e68036e9")
!18131 = distinct !DILexicalBlock(scope: !18132, file: !2598, line: 61, column: 38)
!18132 = distinct !DILexicalBlock(scope: !18133, file: !2598, line: 61, column: 38)
!18133 = distinct !DILexicalBlock(scope: !18134, file: !2376, line: 2082, column: 13)
!18134 = distinct !DISubprogram(name: "collect<core::iter::adapters::chain::Chain<core::iter::sources::once::Once<usize>, core::iter::adapters::map::Map<core::str::iter::MatchIndices<char>, tera::reporting::get_line_starts::{closure_env#0}>>, alloc::vec::Vec<usize, alloc::alloc::Global>>", linkageName: "_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtNtBa_7sources4once4OncejEINtNtB8_3map3MapINtNtNtBc_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsgCecv3eZDcN_5alloc3vec3VecjEEB2k_", scope: !2329, file: !2376, line: 2073, type: !18533, scopeLine: 2073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18542, retainedNodes: !18539)
!18135 = distinct !DILocation(line: 7, column: 10, scope: !18111, inlinedAt: !18112)
!18136 = distinct !DILocation(line: 2073, column: 45, scope: !18134, inlinedAt: !18135)
!18137 = distinct !DISubprogram(name: "from_iter<usize, core::iter::adapters::chain::Chain<core::iter::sources::once::Once<usize>, core::iter::adapters::map::Map<core::str::iter::MatchIndices<char>, tera::reporting::get_line_starts::{closure_env#0}>>>", linkageName: "_RINvXsf_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecjEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorjE9from_iterINtNtNtBP_8adapters5chain5ChainINtNtNtBP_7sources4once4OncejEINtNtB1Z_3map3MapINtNtNtBR_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEEB3P_", scope: !2612, file: !1392, line: 4038, type: !18533, scopeLine: 4038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18546, retainedNodes: !18544)
!18138 = distinct !DILocation(line: 2086, column: 9, scope: !18134, inlinedAt: !18135)
!18139 = distinct !DILocation(line: 4038, column: 45, scope: !18137, inlinedAt: !18138)
!18140 = distinct !DISubprogram(name: "from_iter<usize, core::iter::adapters::chain::Chain<core::iter::sources::once::Once<usize>, core::iter::adapters::map::Map<core::str::iter::MatchIndices<char>, tera::reporting::get_line_starts::{closure_env#0}>>>", linkageName: "_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtNtB1o_7sources4once4OncejEINtNtB1m_3map3MapINtNtNtB1q_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEE9from_iterB3B_", scope: !18550, file: !18547, line: 32, type: !18533, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18546, retainedNodes: !18551)
!18141 = distinct !DILocation(line: 4039, column: 9, scope: !18137, inlinedAt: !18138)
!18142 = distinct !DILocation(line: 32, column: 26, scope: !18140, inlinedAt: !18141)
!18143 = distinct !{!18143, i1 true, !"_RNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts"}
!18144 = distinct !{!18144, !18143, !"_RNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts: argument 1"}
!18145 = distinct !{!18145, !18143, !"_RNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts: argument 0"}
!18146 = distinct !DISubprogram(name: "chain<core::iter::sources::once::Once<usize>, core::iter::adapters::map::Map<core::str::iter::MatchIndices<char>, tera::reporting::get_line_starts::{closure_env#0}>>", linkageName: "_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources4once4OncejENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_8adapters3map3MapINtNtNtBc_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEB2E_", scope: !2329, file: !2376, line: 510, type: !18555, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18560, retainedNodes: !18557)
!18147 = distinct !DILocation(line: 6, column: 10, scope: !18111, inlinedAt: !18112)
!18148 = distinct !DILocation(line: 0, scope: !18146, inlinedAt: !18147)
!18149 = distinct !DISubprogram(name: "new<core::iter::sources::once::Once<usize>, core::iter::adapters::map::Map<core::str::iter::MatchIndices<char>, tera::reporting::get_line_starts::{closure_env#0}>>", linkageName: "_RNvMNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB2_5ChainINtNtNtB6_7sources4once4OncejEINtNtB4_3map3MapINtNtNtB8_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EE3newB2m_", scope: !18130, file: !18561, line: 36, type: !18555, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18531, declaration: !18563, retainedNodes: !18565)
!18150 = distinct !DILocation(line: 515, column: 9, scope: !18146, inlinedAt: !18147)
!18151 = distinct !DILocation(line: 0, scope: !18149, inlinedAt: !18150)
!18152 = distinct !{!18152, i1 true, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources4once4OncejENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_8adapters3map3MapINtNtNtBc_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEB2E_"}
!18153 = distinct !{!18153, !18152, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources4once4OncejENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_8adapters3map3MapINtNtNtBc_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEB2E_: argument 1"}
!18154 = distinct !DILocation(line: 0, scope: !18146, inlinedAt: !18147)
!18155 = distinct !DILocation(line: 0, scope: !18149, inlinedAt: !18150)
!18156 = distinct !{!18156, !18152, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources4once4OncejENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_8adapters3map3MapINtNtNtBc_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEB2E_: argument 0"}
!18157 = distinct !DISubprogram(name: "index<usize, usize, alloc::alloc::Global>", linkageName: "_RNvXsd_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjEINtNtNtCsf3Ta7LF998c_4core3ops5index5IndexjE5indexCs5yXxDE1DkoT_4tera", scope: !18574, file: !1392, line: 3976, type: !18577, scopeLine: 3976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18580, retainedNodes: !18579)
!18158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&[usize]", file: !759, size: 128, align: 64, elements: !18589, templateParams: !975, identifier: "a94d184ec7a10d03ac3d257c401ebb83")
!18159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const [usize]", file: !759, size: 128, align: 64, elements: !18594, templateParams: !975, identifier: "7f0d9eef14a7a86ef8a0e7b8227fc09e")
!18160 = distinct !DISubprogram(name: "index<usize, usize>", linkageName: "_RNvXNtNtCsf3Ta7LF998c_4core5slice5indexSjINtNtNtB6_3ops5index5IndexjE5indexCs5yXxDE1DkoT_4tera", scope: !2803, file: !2622, line: 18, type: !18585, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18595, retainedNodes: !18591)
!18161 = distinct !DISubprogram(name: "index<usize>", linkageName: "_RNvXs0_NtNtCsf3Ta7LF998c_4core5slice5indexjINtB5_10SliceIndexSjE5indexCs5yXxDE1DkoT_4tera", scope: !2624, file: !2622, line: 236, type: !18601, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1575, retainedNodes: !18603)
!18162 = distinct !DISubprogram(name: "len<usize, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE3lenCs5yXxDE1DkoT_4tera", scope: !284, file: !1392, line: 3135, type: !18610, scopeLine: 3135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1969, declaration: !18611, retainedNodes: !18612)
!18163 = distinct !DISubprogram(name: "deref<usize, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCs5yXxDE1DkoT_4tera", scope: !2869, file: !1392, line: 3894, type: !18621, scopeLine: 3894, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1969, retainedNodes: !18622)
!18164 = distinct !DISubprogram(name: "as_slice<usize, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE8as_sliceCs5yXxDE1DkoT_4tera", scope: !284, file: !1392, line: 1856, type: !18621, scopeLine: 1856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1969, declaration: !18629, retainedNodes: !18630)
!18165 = distinct !DISubprogram(name: "as_ptr<usize, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE6as_ptrCs5yXxDE1DkoT_4tera", scope: !284, file: !1392, line: 1974, type: !18639, scopeLine: 1974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1969, declaration: !18640, retainedNodes: !18641)
!18166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<usize>", scope: !1011, file: !759, size: 64, align: 64, flags: DIFlagPublic, elements: !18656, templateParams: !1575, identifier: "95bfc06295e4b7491b738eb4b91ed05a")
!18167 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, usize>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner8non_nulljECs5yXxDE1DkoT_4tera", scope: !9, file: !1399, line: 626, type: !18654, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18657, declaration: !18658)
!18168 = distinct !DISubprogram(name: "ptr<usize, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjE3ptrCs5yXxDE1DkoT_4tera", scope: !283, file: !1399, line: 304, type: !18667, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1969, declaration: !18668)
!18169 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, usize>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner3ptrjECs5yXxDE1DkoT_4tera", scope: !9, file: !1399, line: 621, type: !18670, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18657, declaration: !18671)
!18170 = distinct !DILocation(line: 262, column: 12, scope: !18095, inlinedAt: !18406)
!18171 = distinct !DILocation(line: 0, scope: !507, inlinedAt: !18170)
!18172 = distinct !DILocation(line: 0, scope: !506, inlinedAt: !18170)
!18173 = distinct !DILocation(line: 145, column: 39, scope: !505, inlinedAt: !18170)
!18174 = distinct !DILocation(line: 0, scope: !508, inlinedAt: !18173)
!18175 = distinct !DILocation(line: 146, column: 54, scope: !505, inlinedAt: !18170)
!18176 = distinct !DILocation(line: 0, scope: !508, inlinedAt: !18175)
!18177 = distinct !DILocation(line: 0, scope: !505, inlinedAt: !18170)
!18178 = distinct !DILocation(line: 145, column: 50, scope: !505, inlinedAt: !18170)
!18179 = distinct !DILocation(line: 0, scope: !509, inlinedAt: !18178)
!18180 = distinct !DILocation(line: 1154, column: 18, scope: !509, inlinedAt: !18178)
!18181 = distinct !DILocation(line: 0, scope: !510, inlinedAt: !18180)
!18182 = distinct !{!18182, i1 true, !"_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range"}
!18183 = distinct !{!18183, !18182, !"_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range: argument 0"}
!18184 = distinct !DILocation(line: 145, column: 57, scope: !505, inlinedAt: !18170)
!18185 = distinct !DILocation(line: 0, scope: !511, inlinedAt: !18184)
!18186 = distinct !DILocation(line: 146, column: 63, scope: !505, inlinedAt: !18170)
!18187 = distinct !DILocation(line: 0, scope: !509, inlinedAt: !18186)
!18188 = distinct !DILocation(line: 1154, column: 18, scope: !2858, inlinedAt: !18186)
!18189 = distinct !DILocation(line: 0, scope: !510, inlinedAt: !18188)
!18190 = distinct !DILocation(line: 146, column: 70, scope: !505, inlinedAt: !18170)
!18191 = distinct !DILocation(line: 0, scope: !511, inlinedAt: !18190)
!18192 = distinct !DILocation(line: 526, column: 20, scope: !18088, inlinedAt: !18382)
!18193 = distinct !DILocation(line: 0, scope: !497, inlinedAt: !18192)
!18194 = distinct !DILocation(line: 493, column: 18, scope: !497, inlinedAt: !18192)
!18195 = distinct !DILocation(line: 0, scope: !498, inlinedAt: !18194)
!18196 = distinct !DILocation(line: 496, column: 34, scope: !497, inlinedAt: !18192)
!18197 = distinct !DILocation(line: 0, scope: !500, inlinedAt: !18196)
!18198 = distinct !DILocation(line: 515, column: 36, scope: !499, inlinedAt: !18196)
!18199 = distinct !DILocation(line: 0, scope: !503, inlinedAt: !18198)
!18200 = distinct !{!18200, i1 true, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!18201 = distinct !{!18201, !18200, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!18202 = distinct !DILocation(line: 396, column: 36, scope: !498, inlinedAt: !18194)
!18203 = distinct !DILocation(line: 0, scope: !504, inlinedAt: !18202)
!18204 = distinct !DILocation(line: 0, scope: !502, inlinedAt: !18198)
!18205 = distinct !DILocation(line: 0, scope: !499, inlinedAt: !18196)
!18206 = distinct !DISubprogram(name: "chars", linkageName: "_RNvMNtCsf3Ta7LF998c_4core3stre5chars", scope: !2684, file: !2683, line: 1079, type: !2801, scopeLine: 1079, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18698)
!18207 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCsf3Ta7LF998c_4core4hint16assert_unchecked", scope: !1465, file: !1463, line: 202, type: !1467, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18705)
!18208 = distinct !DISubprogram(name: "as_ptr<u8>", linkageName: "_RNvMs1_NtNtCsf3Ta7LF998c_4core3ptr8non_nullINtB5_7NonNullhE6as_ptrCs5yXxDE1DkoT_4tera", scope: !7, file: !2166, line: 411, type: !18709, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !997, declaration: !18710)
!18209 = distinct !DISubprogram(name: "iter<u8>", linkageName: "_RNvMNtCsf3Ta7LF998c_4core5sliceSh4iterCs5yXxDE1DkoT_4tera", scope: !2620, file: !2619, line: 1041, type: !2748, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !997)
!18210 = distinct !DISubprogram(name: "new<u8>", linkageName: "_RNvMs4_NtNtCsf3Ta7LF998c_4core5slice4iterINtB5_4IterhE3newCs5yXxDE1DkoT_4tera", scope: !369, file: !2749, line: 94, type: !2748, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !997, declaration: !2750)
!18211 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCsf3Ta7LF998c_4core3ptr7mut_ptrOh3addCs5yXxDE1DkoT_4tera", scope: !1235, file: !1233, line: 937, type: !2492, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !997)
!18212 = distinct !DILocation(line: 45, column: 16, scope: !386, inlinedAt: !18076)
!18213 = distinct !DILocation(line: 0, scope: !388, inlinedAt: !18212)
!18214 = distinct !DILocation(line: 185, column: 40, scope: !394, inlinedAt: !18083)
!18215 = distinct !DILocation(line: 0, scope: !397, inlinedAt: !18214)
!18216 = distinct !DILocation(line: 0, scope: !395, inlinedAt: !18083)
!18217 = distinct !DILocation(line: 0, scope: !394, inlinedAt: !18083)
!18218 = distinct !DILocation(line: 180, column: 28, scope: !394, inlinedAt: !18083)
!18219 = distinct !DILocation(line: 1662, column: 11, scope: !398, inlinedAt: !18218)
!18220 = distinct !DILocation(line: 1662, column: 18, scope: !398, inlinedAt: !18218)
!18221 = distinct !{!18221, i1 true, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5yXxDE1DkoT_4tera"}
!18222 = distinct !{!18222, !18221, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5yXxDE1DkoT_4tera: argument 0"}
!18223 = distinct !DILocation(line: 0, scope: !386, inlinedAt: !18076)
!18224 = distinct !DILocation(line: 0, scope: !379, inlinedAt: !18076)
!18225 = distinct !DILocation(line: 49, column: 18, scope: !378, inlinedAt: !18076)
!18226 = distinct !DILocation(line: 0, scope: !399, inlinedAt: !18225)
!18227 = distinct !DILocation(line: 185, column: 40, scope: !394, inlinedAt: !18081)
!18228 = distinct !DILocation(line: 0, scope: !397, inlinedAt: !18227)
!18229 = distinct !DILocation(line: 0, scope: !395, inlinedAt: !18081)
!18230 = distinct !DILocation(line: 0, scope: !394, inlinedAt: !18081)
!18231 = distinct !DILocation(line: 180, column: 28, scope: !394, inlinedAt: !18081)
!18232 = distinct !DILocation(line: 1662, column: 11, scope: !398, inlinedAt: !18231)
!18233 = distinct !DILocation(line: 1662, column: 18, scope: !398, inlinedAt: !18231)
!18234 = distinct !DILocation(line: 0, scope: !378, inlinedAt: !18076)
!18235 = distinct !DILocation(line: 0, scope: !377, inlinedAt: !18076)
!18236 = distinct !DILocation(line: 185, column: 40, scope: !394, inlinedAt: !18079)
!18237 = distinct !DILocation(line: 0, scope: !397, inlinedAt: !18236)
!18238 = distinct !DILocation(line: 0, scope: !395, inlinedAt: !18079)
!18239 = distinct !DILocation(line: 0, scope: !394, inlinedAt: !18079)
!18240 = distinct !DILocation(line: 180, column: 28, scope: !394, inlinedAt: !18079)
!18241 = distinct !DILocation(line: 1662, column: 11, scope: !398, inlinedAt: !18240)
!18242 = distinct !DILocation(line: 1662, column: 18, scope: !398, inlinedAt: !18240)
!18243 = distinct !DILocation(line: 0, scope: !376, inlinedAt: !18076)
!18244 = distinct !DILocation(line: 56, column: 19, scope: !376, inlinedAt: !18076)
!18245 = distinct !DILocation(line: 0, scope: !399, inlinedAt: !18244)
!18246 = distinct !DILocation(line: 0, scope: !375, inlinedAt: !18076)
!18247 = distinct !DILocation(line: 64, column: 37, scope: !374, inlinedAt: !18076)
!18248 = distinct !DILocation(line: 0, scope: !399, inlinedAt: !18247)
!18249 = distinct !DILocation(line: 185, column: 40, scope: !394, inlinedAt: !18077)
!18250 = distinct !DILocation(line: 0, scope: !397, inlinedAt: !18249)
!18251 = distinct !DILocation(line: 0, scope: !395, inlinedAt: !18077)
!18252 = distinct !DILocation(line: 0, scope: !394, inlinedAt: !18077)
!18253 = distinct !DILocation(line: 180, column: 28, scope: !394, inlinedAt: !18077)
!18254 = distinct !DILocation(line: 1662, column: 11, scope: !398, inlinedAt: !18253)
!18255 = distinct !DILocation(line: 1662, column: 18, scope: !398, inlinedAt: !18253)
!18256 = distinct !DILocation(line: 0, scope: !374, inlinedAt: !18076)
!18257 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvXNtNtCsf3Ta7LF998c_4core3str4iterNtB4_5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator4next0Cs5yXxDE1DkoT_4tera", scope: !2685, file: !2502, line: 42, type: !2757, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18723)
!18258 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvMNtNtCsf3Ta7LF998c_4core4char7methodsc18from_u32_unchecked", scope: !2541, file: !2537, line: 243, type: !2759, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18727)
!18259 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvNtNtCsf3Ta7LF998c_4core4char7convert18from_u32_unchecked", scope: !2761, file: !2760, line: 26, type: !2763, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18731)
!18260 = distinct !DILocation(line: 32, column: 35, scope: !18061)
!18261 = distinct !DILocation(line: 0, scope: !442, inlinedAt: !18260)
!18262 = distinct !DILocation(line: 33, column: 32, scope: !18061)
!18263 = distinct !DILocation(line: 0, scope: !442, inlinedAt: !18262)
!18264 = distinct !DILocation(line: 1452, column: 24, scope: !442, inlinedAt: !18260)
!18265 = distinct !DILocation(line: 0, scope: !443, inlinedAt: !18264)
!18266 = distinct !DILocation(line: 1452, column: 24, scope: !442, inlinedAt: !18262)
!18267 = distinct !DILocation(line: 0, scope: !443, inlinedAt: !18266)
!18268 = distinct !DILocation(line: 1454, column: 14, scope: !440, inlinedAt: !18260)
!18269 = distinct !DILocation(line: 0, scope: !444, inlinedAt: !18268)
!18270 = distinct !DILocation(line: 1454, column: 14, scope: !440, inlinedAt: !18262)
!18271 = distinct !DILocation(line: 0, scope: !444, inlinedAt: !18270)
!18272 = distinct !DILocation(line: 0, scope: !441, inlinedAt: !18260)
!18273 = distinct !DILocation(line: 0, scope: !441, inlinedAt: !18262)
!18274 = distinct !DILocation(line: 1458, column: 84, scope: !440, inlinedAt: !18260)
!18275 = distinct !DILocation(line: 0, scope: !447, inlinedAt: !18274)
!18276 = distinct !DILocation(line: 1458, column: 84, scope: !440, inlinedAt: !18262)
!18277 = distinct !DILocation(line: 0, scope: !447, inlinedAt: !18276)
!18278 = distinct !DILocation(line: 0, scope: !440, inlinedAt: !18260)
!18279 = distinct !DILocation(line: 0, scope: !440, inlinedAt: !18262)
!18280 = distinct !DILocation(line: 51, column: 5, scope: !18069)
!18281 = distinct !DILocation(line: 0, scope: !285, inlinedAt: !18280)
!18282 = distinct !DILocation(line: 848, column: 1, scope: !285, inlinedAt: !18280)
!18283 = distinct !DILocation(line: 0, scope: !286, inlinedAt: !18282)
!18284 = distinct !DILocation(line: 848, column: 1, scope: !285, inlinedAt: !18280)
!18285 = distinct !DILocation(line: 0, scope: !286, inlinedAt: !18284)
!18286 = distinct !DILocation(line: 42, column: 23, scope: !18059)
!18287 = distinct !DILocation(line: 1452, column: 24, scope: !442, inlinedAt: !18286)
!18288 = distinct !DILocation(line: 1903, column: 18, scope: !443, inlinedAt: !18287)
!18289 = distinct !DILocation(line: 0, scope: !442, inlinedAt: !18286)
!18290 = distinct !DILocation(line: 0, scope: !443, inlinedAt: !18287)
!18291 = distinct !DILocation(line: 1454, column: 14, scope: !440, inlinedAt: !18286)
!18292 = distinct !DILocation(line: 0, scope: !444, inlinedAt: !18291)
!18293 = distinct !DILocation(line: 0, scope: !441, inlinedAt: !18286)
!18294 = distinct !DILocation(line: 1458, column: 84, scope: !440, inlinedAt: !18286)
!18295 = distinct !DILocation(line: 0, scope: !447, inlinedAt: !18294)
!18296 = distinct !DILocation(line: 0, scope: !440, inlinedAt: !18286)
!18297 = distinct !DILocation(line: 1458, column: 71, scope: !440, inlinedAt: !18286)
!18298 = distinct !DILocation(line: 2058, column: 29, scope: !449, inlinedAt: !18297)
!18299 = distinct !{!18299, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push"}
!18300 = distinct !{!18300, !18299, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push: argument 0"}
!18301 = distinct !DILocation(line: 2061, column: 18, scope: !449, inlinedAt: !18297)
!18302 = distinct !DILocation(line: 305, column: 20, scope: !452, inlinedAt: !18301)
!18303 = distinct !DILocation(line: 622, column: 14, scope: !451, inlinedAt: !18302)
!18304 = distinct !DILocation(line: 1458, column: 13, scope: !440, inlinedAt: !18286)
!18305 = distinct !DILocation(line: 0, scope: !458, inlinedAt: !18304)
!18306 = distinct !DILocation(line: 0, scope: !457, inlinedAt: !18304)
!18307 = distinct !DILocation(line: 1459, column: 22, scope: !440, inlinedAt: !18286)
!18308 = distinct !DILocation(line: 2225, column: 33, scope: !460, inlinedAt: !18307)
!18309 = distinct !DILocation(line: 0, scope: !460, inlinedAt: !18307)
!18310 = !{!358, !33, !2918}
!18311 = !DISubroutineType(types: !18310)
!18312 = !DISubprogram(name: "new", linkageName: "_RNvMNtCs5yXxDE1DkoT_4tera9reportingNtB2_14SourceLocation3new", scope: !358, file: !2867, line: 18, type: !18311, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !975)
!18313 = !DILocalVariable(name: "source", arg: 1, scope: !18069, file: !2867, line: 18, type: !33)
!18314 = !DILocalVariable(name: "span", arg: 2, scope: !18069, file: !2867, line: 18, type: !2918)
!18315 = !DILocalVariable(name: "line_starts", scope: !18068, file: !2867, line: 19, type: !284, align: 64)
!18316 = !DILocalVariable(name: "start_line", scope: !18067, file: !2867, line: 20, type: !959, align: 64)
!18317 = !DILocalVariable(name: "start_col", scope: !18066, file: !2867, line: 21, type: !959, align: 64)
!18318 = !DILocalVariable(name: "line", scope: !18065, file: !2867, line: 22, type: !33, align: 64)
!18319 = !DILocalVariable(name: "underline", scope: !18064, file: !2867, line: 29, type: !12, align: 64)
!18320 = !DILocalVariable(name: "iter", scope: !18063, file: !2867, line: 30, type: !18062, align: 64)
!18321 = !DILocalVariable(name: "c", scope: !18061, file: !2867, line: 30, type: !2510, align: 32)
!18322 = !DILocalVariable(name: "width", scope: !18060, file: !2867, line: 36, type: !959, align: 64)
!18323 = !DILocalVariable(name: "iter", scope: !18059, file: !2867, line: 41, type: !93, align: 64)
!18324 = !{!18313, !18314, !18315, !18316, !18317, !18318, !18319, !18320, !18321, !18322, !18323}
!18325 = !DINamespace(name: "take", scope: !2324)
!18326 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !18062, file: !759, baseType: !435, size: 128, align: 64, flags: DIFlagPrivate)
!18327 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !18062, file: !759, baseType: !959, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!18328 = !{!18326, !18327}
!18329 = !{!2501}
!18330 = !DILocalVariable(name: "self", arg: 1, scope: !18070, file: !2671, line: 2224, type: !2152)
!18331 = !DINamespace(name: "{impl#58}", scope: !2673)
!18332 = !{!1450, !2152, !2152}
!18333 = !DISubroutineType(types: !18332)
!18334 = !DILocalVariable(name: "other", arg: 2, scope: !18070, file: !2671, line: 2224, type: !2152)
!18335 = !{!18330, !18334}
!18336 = !DILexicalBlockFile(scope: !18059, file: !2867, discriminator: 2)
!18337 = !DILocation(line: 41, column: 18, scope: !18336)
!18338 = !DILocation(line: 1185, column: 14, scope: !18071, inlinedAt: !18337)
!18339 = !DILocation(line: 1100, column: 12, scope: !18073, inlinedAt: !18338)
!18340 = !DILocation(line: 2224, column: 19, scope: !18070, inlinedAt: !18339)
!18341 = !DIFile(filename: "library/core/src/iter/range.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "6038fbd2305f6e8ce8c79c7d50b4046d")
!18342 = !DINamespace(name: "range", scope: !2323)
!18343 = !DINamespace(name: "{impl#6}", scope: !18342)
!18344 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::ops::range::Range<usize>", baseType: !93, size: 64, align: 64, dwarfAddressSpace: 0)
!18345 = !{!465, !18344}
!18346 = !DISubroutineType(types: !18345)
!18347 = !DILocalVariable(name: "self", arg: 1, scope: !18071, file: !18341, line: 1184, type: !18344)
!18348 = !{!18347}
!18349 = !{!2397}
!18350 = !DINamespace(name: "{impl#5}", scope: !18342)
!18351 = !DILocalVariable(name: "self", arg: 1, scope: !18073, file: !18341, line: 1099, type: !18344)
!18352 = !DILocalVariable(name: "old", scope: !18072, file: !18341, line: 1101, type: !959, align: 64)
!18353 = !{!18351, !18352}
!18354 = !DILocation(line: 1099, column: 18, scope: !18073, inlinedAt: !18338)
!18355 = !DILocation(line: 1184, column: 13, scope: !18071, inlinedAt: !18337)
!18356 = !DILocalVariable(name: "self", arg: 1, scope: !18074, file: !2502, line: 39, type: !2503)
!18357 = !{!18356}
!18358 = !DILexicalBlockFile(scope: !18063, file: !2867, discriminator: 2)
!18359 = !DILocation(line: 30, column: 18, scope: !18358)
!18360 = !DILocation(line: 39, column: 23, scope: !18075, inlinedAt: !18359)
!18361 = !DIFile(filename: "library/core/src/iter/adapters/take.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "c26f67e0ebb3407ed3802e085ce3525b")
!18362 = !DINamespace(name: "{impl#1}", scope: !18325)
!18363 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::take::Take<core::str::iter::Chars>", baseType: !18062, size: 64, align: 64, dwarfAddressSpace: 0)
!18364 = !{!439, !18363}
!18365 = !DISubroutineType(types: !18364)
!18366 = !DILocalVariable(name: "self", arg: 1, scope: !18075, file: !18361, line: 36, type: !18363)
!18367 = !{!18366}
!18368 = !DILocation(line: 39, column: 13, scope: !18074, inlinedAt: !18360)
!18369 = !DILocation(line: 36, column: 13, scope: !18075, inlinedAt: !18359)
!18370 = !DILocation(line: 0, scope: !18069)
!18371 = !DILocalVariable(name: "self", arg: 1, scope: !18086, file: !2698, line: 62, type: !33)
!18372 = !DILocalVariable(name: "index", arg: 2, scope: !18086, file: !2698, line: 62, type: !496)
!18373 = !{!18371, !18372}
!18374 = !DILocation(line: 23, column: 20, scope: !18066)
!18375 = !DILocation(line: 0, scope: !18086, inlinedAt: !18374)
!18376 = !DILocalVariable(name: "slice", arg: 2, scope: !18089, file: !2698, line: 524, type: !33)
!18377 = !DILocalVariable(name: "self", arg: 1, scope: !18089, file: !2698, line: 524, type: !496)
!18378 = !DILocalVariable(name: "start", scope: !18088, file: !2698, line: 525, type: !959, align: 64)
!18379 = !DILocalVariable(name: "end", scope: !18088, file: !2698, line: 525, type: !959, align: 64)
!18380 = !DILocalVariable(name: "s", scope: !18087, file: !2698, line: 527, type: !33, align: 64)
!18381 = !{!18377, !18376, !18378, !18379, !18380}
!18382 = !DILocation(line: 63, column: 15, scope: !18086, inlinedAt: !18374)
!18383 = !DILocation(line: 0, scope: !18089, inlinedAt: !18382)
!18384 = !DILocalVariable(name: "self", arg: 1, scope: !18090, file: !2698, line: 62, type: !33)
!18385 = !DILocalVariable(name: "index", scope: !18090, file: !2698, line: 62, type: !93, align: 64)
!18386 = !{!18384, !18385}
!18387 = !DILocation(line: 25, column: 20, scope: !18066)
!18388 = !DILocation(line: 0, scope: !18090, inlinedAt: !18387)
!18389 = !DILocalVariable(name: "slice", arg: 2, scope: !18091, file: !2698, line: 247, type: !33)
!18390 = !DILocalVariable(name: "self", scope: !18091, file: !2698, line: 247, type: !93, align: 64)
!18391 = !{!18390, !18389}
!18392 = !DILexicalBlockFile(scope: !18090, file: !2698, discriminator: 2)
!18393 = !DILocation(line: 63, column: 15, scope: !18392, inlinedAt: !18387)
!18394 = !DILocation(line: 0, scope: !18091, inlinedAt: !18393)
!18395 = !DILocalVariable(name: "slice", arg: 2, scope: !18094, file: !2698, line: 331, type: !33)
!18396 = !DILocalVariable(name: "self", arg: 1, scope: !18094, file: !2698, line: 331, type: !485)
!18397 = !DILocalVariable(name: "start", scope: !18093, file: !2698, line: 332, type: !959, align: 64)
!18398 = !DILocalVariable(name: "end", scope: !18093, file: !2698, line: 332, type: !959, align: 64)
!18399 = !DILocalVariable(name: "s", scope: !18092, file: !2698, line: 334, type: !33, align: 64)
!18400 = !{!18396, !18395, !18397, !18398, !18399}
!18401 = !DILocation(line: 248, column: 34, scope: !18091, inlinedAt: !18393)
!18402 = !DILocation(line: 0, scope: !18094, inlinedAt: !18401)
!18403 = !DILocalVariable(name: "slice", arg: 2, scope: !18095, file: !2698, line: 261, type: !33)
!18404 = !DILocalVariable(name: "self", arg: 1, scope: !18095, file: !2698, line: 261, type: !485)
!18405 = !{!18404, !18403}
!18406 = !DILocation(line: 333, column: 20, scope: !18093, inlinedAt: !18401)
!18407 = !DILocation(line: 0, scope: !18095, inlinedAt: !18406)
!18408 = !DILocalVariable(name: "slice", arg: 2, scope: !18098, file: !2698, line: 283, type: !33)
!18409 = !DILocalVariable(name: "self", scope: !18098, file: !2698, line: 283, type: !485, align: 64)
!18410 = !DILocalVariable(name: "slice", scope: !18097, file: !2698, line: 284, type: !486, align: 64)
end_hunk_4
begin_hunk_5_@llvm.experimental.noalias.scope.decl
!18499 = !DIDerivedType(tag: DW_TAG_member, name: "finger_back", scope: !18115, file: !759, baseType: !959, size: 64, align: 64, offset: 192, flags: DIFlagPrivate)
!18500 = !DIDerivedType(tag: DW_TAG_member, name: "needle", scope: !18115, file: !759, baseType: !2510, size: 32, align: 32, offset: 288, flags: DIFlagPrivate)
!18501 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_size", scope: !18115, file: !759, baseType: !763, size: 8, align: 8, offset: 320, flags: DIFlagPrivate)
!18502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 32, align: 8, elements: !2932)
!18503 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_encoded", scope: !18115, file: !759, baseType: !18502, size: 32, align: 8, offset: 256, flags: DIFlagPrivate)
!18504 = !{!18497, !18498, !18499, !18500, !18501, !18503}
!18505 = !DITemplateTypeParameter(name: "P", type: !2510)
!18506 = !{!18505}
!18507 = !DITemplateTypeParameter(name: "I", type: !18117)
!18508 = !DITemplateTypeParameter(name: "F", type: !18114)
!18509 = !{!18507, !18508}
!18510 = !DITemplateTypeParameter(name: "T", type: !18118)
!18511 = !{!18510}
!18512 = !DIDerivedType(tag: DW_TAG_member, scope: !18122, file: !759, baseType: !1208, size: 32, align: 32, offset: 288, flags: DIFlagArtificial)
!18513 = !{!18128}
!18514 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !18128, file: !759, baseType: !18127, size: 128, align: 64, extraData: i64 2)
!18515 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !18128, file: !759, baseType: !18126, size: 128, align: 64)
!18516 = !{!18514, !18515}
!18517 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !18126, file: !759, baseType: !18125, size: 128, align: 64, flags: DIFlagPublic)
!18518 = !{!18517}
!18519 = !DINamespace(name: "once", scope: !2933)
!18520 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !18125, file: !759, baseType: !18124, size: 128, align: 64, flags: DIFlagPrivate)
!18521 = !{!18520}
!18522 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !18124, file: !759, baseType: !18123, size: 128, align: 64, flags: DIFlagPrivate)
!18523 = !{!18522}
!18524 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !18123, file: !759, baseType: !465, size: 128, align: 64, flags: DIFlagPrivate)
!18525 = !{!18524}
!18526 = !DITemplateTypeParameter(name: "T", type: !18125)
!18527 = !{!18526}
!18528 = !DIDerivedType(tag: DW_TAG_member, scope: !18129, file: !759, baseType: !825, size: 64, align: 64, flags: DIFlagArtificial)
!18529 = !DITemplateTypeParameter(name: "A", type: !18125)
!18530 = !DITemplateTypeParameter(name: "B", type: !18118)
!18531 = !{!18529, !18530}
!18532 = !{!284, !18130}
!18533 = !DISubroutineType(types: !18532)
!18534 = !DILocalVariable(name: "hint", scope: !18133, file: !2376, line: 2082, type: !466, align: 64)
!18535 = !DILexicalBlockFile(scope: !18132, file: !2376, discriminator: 0)
!18536 = !DILocalVariable(name: "args", scope: !18535, file: !2376, line: 2083, type: !461, align: 64)
!18537 = !DILexicalBlockFile(scope: !18131, file: !2376, discriminator: 0)
!18538 = !DILocalVariable(name: "args", scope: !18537, file: !2376, line: 2083, type: !2597, align: 64)
!18539 = !{!18476, !18534, !18536, !18538}
!18540 = !DITemplateTypeParameter(name: "Self", type: !18130)
!18541 = !DITemplateTypeParameter(name: "B", type: !284)
!18542 = !{!18540, !18541}
!18543 = !DILocalVariable(name: "iter", arg: 1, scope: !18137, file: !1392, line: 4038, type: !18130)
!18544 = !{!18543}
!18545 = !DITemplateTypeParameter(name: "I", type: !18130)
!18546 = !{!1574, !18545}
!18547 = !DIFile(filename: "library/alloc/src/vec/spec_from_iter.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "dddf949739df2af0f65ecbf6f40f29fe")
!18548 = !DILocalVariable(name: "iterator", arg: 1, scope: !18140, file: !18547, line: 32, type: !18130)
!18549 = !DINamespace(name: "spec_from_iter", scope: !987)
!18550 = !DINamespace(name: "{impl#0}", scope: !18549)
!18551 = !{!18548}
!18552 = !{!18145, !18144}
!18553 = !DILocalVariable(name: "other", arg: 2, scope: !18146, file: !2376, line: 510, type: !18118)
!18554 = !{!18130, !18125, !18118}
!18555 = !DISubroutineType(types: !18554)
!18556 = !DILocalVariable(name: "self", arg: 1, scope: !18146, file: !2376, line: 510, type: !18125)
!18557 = !{!18556, !18553}
!18558 = !DITemplateTypeParameter(name: "Self", type: !18125)
!18559 = !DITemplateTypeParameter(name: "U", type: !18118)
!18560 = !{!18558, !18559}
!18561 = !DIFile(filename: "library/core/src/iter/adapters/chain.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "ed4e243bd9b16f08a251b2fe8db38765")
!18562 = !DILocalVariable(name: "b", arg: 2, scope: !18149, file: !18561, line: 36, type: !18118)
!18563 = !DISubprogram(name: "new<core::iter::sources::once::Once<usize>, core::iter::adapters::map::Map<core::str::iter::MatchIndices<char>, tera::reporting::get_line_starts::{closure_env#0}>>", linkageName: "_RNvMNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB2_5ChainINtNtNtB6_7sources4once4OncejEINtNtB4_3map3MapINtNtNtB8_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EE3newB2m_", scope: !18130, file: !18561, line: 36, type: !18555, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !18531)
!18564 = !DILocalVariable(name: "a", arg: 1, scope: !18149, file: !18561, line: 36, type: !18125)
!18565 = !{!18564, !18562}
!18569 = !{!18153}
!18570 = !{!18156}
!18571 = !{!18156, !18153}
!18572 = !DILocation(line: 0, scope: !18067)
!18573 = !DILocalVariable(name: "index", arg: 2, scope: !18157, file: !1392, line: 3976, type: !959)
!18574 = !DINamespace(name: "{impl#15}", scope: !987)
!18575 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::vec::Vec<usize, alloc::alloc::Global>", baseType: !284, size: 64, align: 64, dwarfAddressSpace: 0)
!18576 = !{!2152, !18575, !959, !1204}
!18577 = !DISubroutineType(types: !18576)
!18578 = !DILocalVariable(name: "self", arg: 1, scope: !18157, file: !1392, line: 3976, type: !18575)
!18579 = !{!18578, !18573}
!18580 = !{!1574, !2621, !1015}
!18581 = !DILocation(line: 25, column: 61, scope: !18066)
!18582 = !DILocation(line: 0, scope: !18157, inlinedAt: !18581)
!18583 = !DILocalVariable(name: "index", arg: 2, scope: !18160, file: !2622, line: 18, type: !959)
!18584 = !{!2152, !18158, !959, !1204}
!18585 = !DISubroutineType(types: !18584)
!18586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64, align: 64, dwarfAddressSpace: 0)
!18587 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !18158, file: !759, baseType: !18586, size: 64, align: 64)
!18588 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !18158, file: !759, baseType: !959, size: 64, align: 64, offset: 64)
!18589 = !{!18587, !18588}
!18590 = !DILocalVariable(name: "self", arg: 1, scope: !18160, file: !2622, line: 18, type: !18159)
!18591 = !{!18590, !18583}
!18592 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !18159, file: !759, baseType: !18586, size: 64, align: 64)
!18593 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !18159, file: !759, baseType: !959, size: 64, align: 64, offset: 64)
!18594 = !{!18592, !18593}
!18595 = !{!1574, !2621}
!18596 = !DILexicalBlockFile(scope: !18157, file: !1392, discriminator: 4)
!18597 = !DILocation(line: 3977, column: 9, scope: !18596, inlinedAt: !18581)
!18598 = !DILocation(line: 0, scope: !18160, inlinedAt: !18597)
!18599 = !DILocalVariable(name: "self", arg: 1, scope: !18161, file: !2622, line: 236, type: !959)
!18600 = !{!2152, !959, !18158, !1204}
!18601 = !DISubroutineType(types: !18600)
!18602 = !DILocalVariable(name: "slice", arg: 2, scope: !18161, file: !2622, line: 236, type: !18159)
!18603 = !{!18599, !18602}
!18604 = !DILexicalBlockFile(scope: !18160, file: !2622, discriminator: 4)
!18605 = !DILocation(line: 19, column: 15, scope: !18604, inlinedAt: !18597)
!18606 = !DILocation(line: 0, scope: !18161, inlinedAt: !18605)
!18607 = !DILocation(line: 0, scope: !18066)
!18608 = !DILocalVariable(name: "self", arg: 1, scope: !18162, file: !1392, line: 3135, type: !18575)
!18609 = !{!959, !18575}
!18610 = !DISubroutineType(types: !18609)
!18611 = !DISubprogram(name: "len<usize, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE3lenCs5yXxDE1DkoT_4tera", scope: !284, file: !1392, line: 3135, type: !18610, scopeLine: 3135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1969)
!18612 = !{!18608}
!18613 = !DILocation(line: 22, column: 49, scope: !18066)
!18614 = !DILocation(line: 3135, column: 22, scope: !18162, inlinedAt: !18613)
!18615 = !DILocation(line: 23, column: 32, scope: !18066)
!18616 = !DILocation(line: 3976, column: 14, scope: !18157, inlinedAt: !18615)
!18617 = !DILocation(line: 25, column: 32, scope: !18066)
!18618 = !DILocation(line: 3976, column: 14, scope: !18157, inlinedAt: !18617)
!18619 = !DILocalVariable(name: "self", arg: 1, scope: !18163, file: !1392, line: 3894, type: !18575)
!18620 = !{!18158, !18575}
!18621 = !DISubroutineType(types: !18620)
!18622 = !{!18619}
!18623 = !DILocation(line: 3977, column: 23, scope: !18157, inlinedAt: !18615)
!18624 = !DILocation(line: 3894, column: 14, scope: !18163, inlinedAt: !18623)
!18625 = !DILexicalBlockFile(scope: !18157, file: !1392, discriminator: 2)
!18626 = !DILocation(line: 3977, column: 23, scope: !18625, inlinedAt: !18617)
!18627 = !DILocation(line: 3894, column: 14, scope: !18163, inlinedAt: !18626)
!18628 = !DILocalVariable(name: "self", arg: 1, scope: !18164, file: !1392, line: 1856, type: !18575)
!18629 = !DISubprogram(name: "as_slice<usize, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE8as_sliceCs5yXxDE1DkoT_4tera", scope: !284, file: !1392, line: 1856, type: !18621, scopeLine: 1856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1969)
!18630 = !{!18628}
!18631 = !DILocation(line: 3895, column: 14, scope: !18163, inlinedAt: !18623)
!18632 = !DILocation(line: 1856, column: 27, scope: !18164, inlinedAt: !18631)
!18633 = !DILexicalBlockFile(scope: !18163, file: !1392, discriminator: 2)
!18634 = !DILocation(line: 3895, column: 14, scope: !18633, inlinedAt: !18626)
!18635 = !DILocation(line: 1856, column: 27, scope: !18164, inlinedAt: !18634)
!18636 = !DILocalVariable(name: "self", arg: 1, scope: !18165, file: !1392, line: 1974, type: !18575)
!18637 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const usize", baseType: !959, size: 64, align: 64, dwarfAddressSpace: 0)
!18638 = !{!18637, !18575}
!18639 = !DISubroutineType(types: !18638)
!18640 = !DISubprogram(name: "as_ptr<usize, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE6as_ptrCs5yXxDE1DkoT_4tera", scope: !284, file: !1392, line: 1974, type: !18639, scopeLine: 1974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1969)
!18641 = !{!18636}
!18642 = !DILocation(line: 1873, column: 76, scope: !18164, inlinedAt: !18631)
!18643 = !DILocation(line: 1974, column: 25, scope: !18165, inlinedAt: !18642)
!18644 = !DILexicalBlockFile(scope: !18164, file: !1392, discriminator: 2)
!18645 = !DILocation(line: 1873, column: 76, scope: !18644, inlinedAt: !18634)
!18646 = !DILocation(line: 1974, column: 25, scope: !18165, inlinedAt: !18645)
!18647 = !DILocation(line: 0, scope: !18157, inlinedAt: !18617)
!18648 = !DILocation(line: 3977, column: 9, scope: !18625, inlinedAt: !18617)
!18649 = !DILocation(line: 0, scope: !18160, inlinedAt: !18648)
!18650 = !DILexicalBlockFile(scope: !18160, file: !2622, discriminator: 2)
!18651 = !DILocation(line: 19, column: 15, scope: !18650, inlinedAt: !18648)
!18652 = !DILocation(line: 0, scope: !18161, inlinedAt: !18651)
!18653 = !{!18166, !1451}
!18654 = !DISubroutineType(types: !18653)
!18655 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !18166, file: !759, baseType: !18637, size: 64, align: 64, flags: DIFlagPrivate)
!18656 = !{!18655}
!18657 = !{!1015, !1574}
!18658 = !DISubprogram(name: "non_null<alloc::alloc::Global, usize>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner8non_nulljECs5yXxDE1DkoT_4tera", scope: !9, file: !1399, line: 626, type: !18654, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !18657)
!18659 = !DILexicalBlockFile(scope: !18169, file: !1399, discriminator: 2)
!18660 = !DILexicalBlockFile(scope: !18168, file: !1399, discriminator: 2)
!18661 = !DILexicalBlockFile(scope: !18165, file: !1392, discriminator: 2)
!18662 = !DILocation(line: 1977, column: 18, scope: !18661, inlinedAt: !18645)
!18663 = !DILocation(line: 305, column: 20, scope: !18660, inlinedAt: !18662)
!18664 = !DILocation(line: 622, column: 14, scope: !18659, inlinedAt: !18663)
!18665 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::raw_vec::RawVec<usize, alloc::alloc::Global>", baseType: !283, size: 64, align: 64, dwarfAddressSpace: 0)
!18666 = !{!2405, !18665}
!18667 = !DISubroutineType(types: !18666)
!18668 = !DISubprogram(name: "ptr<usize, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjE3ptrCs5yXxDE1DkoT_4tera", scope: !283, file: !1399, line: 304, type: !18667, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1969)
!18669 = !{!2405, !1451}
!18670 = !DISubroutineType(types: !18669)
!18671 = !DISubprogram(name: "ptr<alloc::alloc::Global, usize>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner3ptrjECs5yXxDE1DkoT_4tera", scope: !9, file: !1399, line: 621, type: !18670, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !18657)
!18672 = !DILocation(line: 0, scope: !18157, inlinedAt: !18615)
!18673 = !DILocation(line: 3977, column: 9, scope: !18157, inlinedAt: !18615)
!18674 = !DILocation(line: 0, scope: !18160, inlinedAt: !18673)
!18675 = !DILocation(line: 19, column: 15, scope: !18160, inlinedAt: !18673)
!18676 = !DILocation(line: 0, scope: !18161, inlinedAt: !18675)
!18677 = !DILocation(line: 0, scope: !18093, inlinedAt: !18401)
!18678 = !DILocation(line: 3976, column: 14, scope: !18157, inlinedAt: !18581)
!18679 = !DILocation(line: 3977, column: 23, scope: !18596, inlinedAt: !18581)
!18680 = !DILocation(line: 3894, column: 14, scope: !18163, inlinedAt: !18679)
!18681 = !DILexicalBlockFile(scope: !18163, file: !1392, discriminator: 4)
!18682 = !DILocation(line: 3895, column: 14, scope: !18681, inlinedAt: !18679)
!18683 = !DILocation(line: 1856, column: 27, scope: !18164, inlinedAt: !18682)
!18684 = !DILexicalBlockFile(scope: !18164, file: !1392, discriminator: 4)
!18685 = !DILocation(line: 1873, column: 76, scope: !18684, inlinedAt: !18682)
!18686 = !DILocation(line: 1974, column: 25, scope: !18165, inlinedAt: !18685)
!18687 = !{!18183}
!18688 = !DILocation(line: 0, scope: !18097, inlinedAt: !18413)
!18689 = !DILocation(line: 1977, column: 18, scope: !18165, inlinedAt: !18642)
!18690 = !DILocation(line: 305, column: 20, scope: !18168, inlinedAt: !18689)
!18691 = !DILocation(line: 622, column: 14, scope: !18169, inlinedAt: !18690)
!18692 = !DILocation(line: 0, scope: !18088, inlinedAt: !18382)
!18693 = !{!18201}
!18694 = !DILocation(line: 3977, column: 9, scope: !18157, inlinedAt: !18607)
!18695 = !DILocation(line: 19, column: 15, scope: !18160, inlinedAt: !18694)
!18696 = !DILocation(line: 0, scope: !18065)
!18697 = !DILocalVariable(name: "self", arg: 1, scope: !18206, file: !2683, line: 1079, type: !33)
!18698 = !{!18697}
!18699 = !DILocation(line: 30, column: 23, scope: !18064)
!18700 = !DILocation(line: 0, scope: !18206, inlinedAt: !18699)
!18701 = !DILocation(line: 0, scope: !18103, inlinedAt: !18443)
!18702 = !DILocation(line: 0, scope: !18104, inlinedAt: !18443)
!18703 = !DILocation(line: 786, column: 28, scope: !18106, inlinedAt: !18451)
!18704 = !DILocalVariable(name: "cond", arg: 1, scope: !18207, file: !1463, line: 202, type: !1450)
!18705 = !{!18704}
!18706 = !DILocation(line: 450, column: 21, scope: !18104, inlinedAt: !18443)
!18707 = !DILocation(line: 0, scope: !18207, inlinedAt: !18706)
!18708 = !{!1410, !7}
!18709 = !DISubroutineType(types: !18708)
!18710 = !DISubprogram(name: "as_ptr<u8>", linkageName: "_RNvMs1_NtNtCsf3Ta7LF998c_4core3ptr8non_nullINtB5_7NonNullhE6as_ptrCs5yXxDE1DkoT_4tera", scope: !7, file: !2166, line: 411, type: !18709, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !997)
!18711 = !DILocation(line: 1080, column: 39, scope: !18206, inlinedAt: !18699)
!18712 = !DILocation(line: 1042, column: 9, scope: !18209, inlinedAt: !18711)
!18713 = !DILocation(line: 100, column: 69, scope: !18210, inlinedAt: !18712)
!18714 = !DILocation(line: 100, column: 78, scope: !18210, inlinedAt: !18712)
!18715 = !DILocation(line: 0, scope: !18063)
!18716 = !{!18222}
!18717 = !DILocation(line: 0, scope: !18060)
!18718 = !DILocation(line: 0, scope: !18059)
!18719 = !DILocation(line: 2224, column: 26, scope: !18070, inlinedAt: !18339)
!18720 = !DILocation(line: 0, scope: !18108, inlinedAt: !18457)
!18721 = !DILocation(line: 0, scope: !18107, inlinedAt: !18457)
!18722 = !DILocalVariable(name: "ch", arg: 2, scope: !18257, file: !2502, line: 42, type: !1208)
!18723 = !{!18722}
!18724 = !DILocation(line: 1165, column: 29, scope: !18107, inlinedAt: !18457)
!18725 = !DILocation(line: 0, scope: !18257, inlinedAt: !18724)
!18726 = !DILocalVariable(name: "i", arg: 1, scope: !18258, file: !2537, line: 243, type: !1208)
!18727 = !{!18726}
!18728 = !DILocation(line: 42, column: 59, scope: !18257, inlinedAt: !18724)
!18729 = !DILocation(line: 0, scope: !18258, inlinedAt: !18728)
!18730 = !DILocalVariable(name: "i", arg: 1, scope: !18259, file: !2760, line: 26, type: !1208)
!18731 = !{!18730}
!18732 = !DILocation(line: 245, column: 18, scope: !18258, inlinedAt: !18728)
!18733 = !DILocation(line: 0, scope: !18259, inlinedAt: !18732)
!18734 = !DILocation(line: 0, scope: !18061)
!18735 = !DILocation(line: 1452, column: 24, scope: !442, inlinedAt: !18734)
!18736 = !DILocation(line: 1903, column: 18, scope: !443, inlinedAt: !18735)
!18737 = !DILocation(line: 1454, column: 14, scope: !440, inlinedAt: !18734)
!18738 = !DILocation(line: 0, scope: !18072, inlinedAt: !18338)
!18739 = !{!18300}
!18740 = !DILocation(line: 1458, column: 71, scope: !440, inlinedAt: !18734)
!18741 = !DILocation(line: 2061, column: 18, scope: !449, inlinedAt: !18740)
!18742 = !DILocation(line: 305, column: 20, scope: !452, inlinedAt: !18741)
!18743 = !DILocation(line: 622, column: 14, scope: !451, inlinedAt: !18742)
!18744 = !DILocation(line: 1458, column: 84, scope: !440, inlinedAt: !18734)
!18745 = !DILocation(line: 1458, column: 13, scope: !440, inlinedAt: !18734)
!18746 = !DILocation(line: 1459, column: 22, scope: !440, inlinedAt: !18734)
!18747 = !DILocation(line: 19, column: 13, scope: !18069)
!18748 = !DILocation(line: 5, column: 5, scope: !18111, inlinedAt: !18112)
!18749 = !DILocation(line: 6, column: 10, scope: !18111, inlinedAt: !18112)
!18750 = !DILocation(line: 37, column: 9, scope: !18149, inlinedAt: !18150)
!18751 = !DILocation(line: 33, column: 9, scope: !18140, inlinedAt: !18141)
!18752 = !DILocation(line: 7, column: 18, scope: !18111, inlinedAt: !18112)
!18753 = !DILocation(line: 20, column: 26, scope: !18068)
!18754 = !DILocation(line: 21, column: 25, scope: !18067)
!18755 = !DILocation(line: 3136, column: 19, scope: !18162, inlinedAt: !18613)
!18756 = !DILocation(line: 3141, column: 37, scope: !18162, inlinedAt: !18613)
!18757 = !DILocation(line: 3141, column: 18, scope: !18162, inlinedAt: !18613)
!18758 = !DILocation(line: 22, column: 23, scope: !18066)
!18759 = !DILocation(line: 627, column: 9, scope: !18167, inlinedAt: !18664)
!18760 = !DILocation(line: 238, column: 10, scope: !18161, inlinedAt: !18651)
!18761 = !DILocation(line: 238, column: 10, scope: !18161, inlinedAt: !18675)
!18762 = !DILocation(line: 238, column: 9, scope: !18161, inlinedAt: !18651)
!18763 = !DILocation(line: 25, column: 21, scope: !18066)
!18764 = !DILocation(line: 238, column: 10, scope: !18161, inlinedAt: !18605)
!18765 = !DILocation(line: 51, column: 5, scope: !18069)
!18766 = !DILocation(line: 238, column: 9, scope: !18161, inlinedAt: !18605)
!18767 = !DILocation(line: 25, column: 50, scope: !18066)
!18768 = !DILocation(line: 129, column: 8, scope: !505, inlinedAt: !18170)
!18769 = !DILocation(line: 133, column: 8, scope: !505, inlinedAt: !18170)
!18770 = !DILocation(line: 145, column: 10, scope: !505, inlinedAt: !18170)
!18771 = !DILocation(line: 146, column: 17, scope: !505, inlinedAt: !18170)
!18772 = !DILocation(line: 872, column: 18, scope: !508, inlinedAt: !18173)
!18773 = !DILocation(line: 1758, column: 9, scope: !510, inlinedAt: !18180)
!18774 = !DILocation(line: 1231, column: 9, scope: !511, inlinedAt: !18184)
!18775 = !DILocation(line: 145, column: 24, scope: !505, inlinedAt: !18170)
!18776 = !DILocation(line: 872, column: 18, scope: !508, inlinedAt: !18175)
!18777 = !DILocation(line: 1758, column: 9, scope: !510, inlinedAt: !18188)
!18778 = !DILocation(line: 1231, column: 9, scope: !511, inlinedAt: !18190)
!18779 = !DILocation(line: 262, column: 12, scope: !18095, inlinedAt: !18406)
!18780 = !DILocation(line: 305, column: 27, scope: !18097, inlinedAt: !18413)
!18781 = !DILocation(line: 22, column: 20, scope: !18066)
!18782 = !DILocation(line: 27, column: 10, scope: !18066)
!18783 = !DILocation(line: 627, column: 9, scope: !18167, inlinedAt: !18691)
!18784 = !DILocation(line: 238, column: 9, scope: !18161, inlinedAt: !18675)
!18785 = !DILocation(line: 23, column: 21, scope: !18066)
!18786 = !DILocation(line: 380, column: 12, scope: !498, inlinedAt: !18194)
!18787 = !DILocation(line: 384, column: 12, scope: !498, inlinedAt: !18194)
!18788 = !DILocation(line: 394, column: 13, scope: !498, inlinedAt: !18194)
!18789 = !DILocation(line: 493, column: 12, scope: !497, inlinedAt: !18192)
!18790 = !DILocation(line: 396, column: 13, scope: !498, inlinedAt: !18194)
!18791 = !DILocation(line: 1231, column: 9, scope: !504, inlinedAt: !18202)
!18792 = !DILocation(line: 238, column: 10, scope: !18161, inlinedAt: !18695)
!18793 = !DILocation(line: 221, column: 27, scope: !502, inlinedAt: !18198)
!18794 = !DILocation(line: 29, column: 13, scope: !18065)
!18795 = !DILocation(line: 445, column: 15, scope: !18105, inlinedAt: !18443)
!18796 = !DILocation(line: 445, column: 9, scope: !18105, inlinedAt: !18443)
!18797 = !DILocation(line: 454, column: 17, scope: !18105, inlinedAt: !18443)
!18798 = !DILocation(line: 454, column: 25, scope: !18103, inlinedAt: !18443)
!18799 = !DILocation(line: 446, column: 16, scope: !18105, inlinedAt: !18443)
!18800 = !DILocation(line: 787, column: 9, scope: !18106, inlinedAt: !18451)
!18801 = !DILocation(line: 210, column: 9, scope: !18207, inlinedAt: !18706)
!18802 = !DILocation(line: 455, column: 9, scope: !18105, inlinedAt: !18443)
!18803 = !DILocation(line: 494, column: 9, scope: !18099, inlinedAt: !18419)
!18804 = !DILocation(line: 417, column: 18, scope: !18208, inlinedAt: !18713)
!18805 = !DILocation(line: 971, column: 18, scope: !18211, inlinedAt: !18714)
!18806 = !DILocation(line: 37, column: 12, scope: !18075, inlinedAt: !18359)
!18807 = !DILocation(line: 38, column: 13, scope: !18075, inlinedAt: !18359)
!18808 = !DILocation(line: 1663, column: 9, scope: !398, inlinedAt: !18218)
!18809 = !DILocation(line: 180, column: 28, scope: !394, inlinedAt: !18083)
!18810 = !DILocation(line: 627, column: 28, scope: !397, inlinedAt: !18214)
!18811 = !DILocation(line: 37, column: 13, scope: !387, inlinedAt: !18076)
!18812 = !DILocation(line: 38, column: 8, scope: !386, inlinedAt: !18076)
!18813 = !DILocation(line: 11, column: 5, scope: !388, inlinedAt: !18212)
!18814 = !DILocation(line: 1663, column: 9, scope: !398, inlinedAt: !18231)
!18815 = !DILocation(line: 180, column: 28, scope: !394, inlinedAt: !18081)
!18816 = !DILocation(line: 627, column: 28, scope: !397, inlinedAt: !18227)
!18817 = !DILocation(line: 48, column: 22, scope: !379, inlinedAt: !18076)
!18818 = !DILocation(line: 17, column: 5, scope: !399, inlinedAt: !18225)
!18819 = !DILocation(line: 17, column: 17, scope: !399, inlinedAt: !18225)
!18820 = !DILocation(line: 50, column: 8, scope: !377, inlinedAt: !18076)
!18821 = !DILocation(line: 39, column: 21, scope: !386, inlinedAt: !18076)
!18822 = !DILocation(line: 0, scope: !2321, inlinedAt: !18076)
!18823 = !DILocation(line: 1663, column: 9, scope: !398, inlinedAt: !18240)
!18824 = !DILocation(line: 180, column: 28, scope: !394, inlinedAt: !18079)
!18825 = !DILocation(line: 627, column: 28, scope: !397, inlinedAt: !18236)
!18826 = !DILocation(line: 55, column: 26, scope: !377, inlinedAt: !18076)
!18827 = !DILocation(line: 17, column: 5, scope: !399, inlinedAt: !18244)
!18828 = !DILocation(line: 17, column: 17, scope: !399, inlinedAt: !18244)
!18829 = !DILocation(line: 57, column: 14, scope: !375, inlinedAt: !18076)
!18830 = !DILocation(line: 57, column: 9, scope: !375, inlinedAt: !18076)
!18831 = !DILocation(line: 58, column: 12, scope: !375, inlinedAt: !18076)
!18832 = !DILocation(line: 1663, column: 9, scope: !398, inlinedAt: !18253)
!18833 = !DILocation(line: 180, column: 28, scope: !394, inlinedAt: !18077)
!18834 = !DILocation(line: 627, column: 28, scope: !397, inlinedAt: !18249)
!18835 = !DILocation(line: 63, column: 30, scope: !375, inlinedAt: !18076)
!18836 = !DILocation(line: 64, column: 18, scope: !374, inlinedAt: !18076)
!18837 = !DILocation(line: 17, column: 5, scope: !399, inlinedAt: !18247)
!18838 = !DILocation(line: 17, column: 17, scope: !399, inlinedAt: !18247)
!18839 = !DILocation(line: 64, column: 13, scope: !374, inlinedAt: !18076)
!18840 = !DILocation(line: 58, column: 9, scope: !375, inlinedAt: !18076)
!18841 = !DILocation(line: 36, column: 24, scope: !18064)
!18842 = !DILocation(line: 2224, column: 50, scope: !18070, inlinedAt: !18339)
!18843 = !DILocation(line: 51, column: 5, scope: !18065)
!18844 = !DILocation(line: 34, column: 9, scope: !18259, inlinedAt: !18732)
!18845 = !DILocation(line: 3141, column: 37, scope: !446, inlinedAt: !18736)
!18846 = !DILocation(line: 3141, column: 18, scope: !446, inlinedAt: !18736)
!18847 = !DILocation(line: 1255, column: 18, scope: !444, inlinedAt: !18737)
!18848 = !DILocation(line: 47, column: 13, scope: !18060)
!18849 = !DILocation(line: 45, column: 9, scope: !18060)
!18850 = !DILocation(line: 848, column: 1, scope: !285, inlinedAt: !18280)
!18851 = !DILocation(line: 848, column: 1, scope: !286, inlinedAt: !18282)
!18852 = !DILocation(line: 848, column: 1, scope: !286, inlinedAt: !18284)
!18853 = !DILocation(line: 51, column: 6, scope: !18069)
!18854 = !DILocation(line: 3136, column: 19, scope: !446, inlinedAt: !18288)
!18855 = !DILocation(line: 3141, column: 37, scope: !446, inlinedAt: !18288)
!18856 = !DILocation(line: 3141, column: 18, scope: !446, inlinedAt: !18288)
!18857 = !DILocation(line: 1255, column: 18, scope: !444, inlinedAt: !18291)
!18858 = !DILocation(line: 1043, column: 17, scope: !18110, inlinedAt: !18470)
!18859 = !DILocation(line: 627, column: 9, scope: !450, inlinedAt: !18303)
!18860 = !DILocation(line: 971, column: 18, scope: !447, inlinedAt: !18294)
!18861 = !DILocation(line: 2547, column: 13, scope: !457, inlinedAt: !18304)
!18862 = !DILocation(line: 1459, column: 30, scope: !440, inlinedAt: !18286)
!18863 = !DILocation(line: 2232, column: 9, scope: !460, inlinedAt: !18307)
!18864 = !DILocation(line: 31, column: 13, scope: !18061)
!18865 = !DILocation(line: 627, column: 9, scope: !450, inlinedAt: !18743)
!18866 = !DILocation(line: 971, column: 18, scope: !447, inlinedAt: !18744)
!18867 = !DILocation(line: 2547, column: 13, scope: !457, inlinedAt: !18745)
!18868 = !DILocation(line: 1459, column: 30, scope: !440, inlinedAt: !18734)
!18869 = !DILocation(line: 2232, column: 9, scope: !460, inlinedAt: !18746)
!18870 = !DILocation(line: 18, column: 5, scope: !18069)
!18871 = distinct !DILocation(line: 1458, column: 13, scope: !440)
!18872 = distinct !DILocation(line: 0, scope: !458, inlinedAt: !18871)
!18873 = distinct !DILocation(line: 2558, column: 18, scope: !453, inlinedAt: !18871)
!18874 = distinct !DILocation(line: 0, scope: !459, inlinedAt: !18873)
!18875 = distinct !DILocation(line: 2564, column: 18, scope: !453, inlinedAt: !18871)
!18876 = distinct !DILocation(line: 0, scope: !459, inlinedAt: !18875)
!18877 = distinct !DILocation(line: 2570, column: 14, scope: !453, inlinedAt: !18871)
!18878 = distinct !DILocation(line: 0, scope: !459, inlinedAt: !18877)
!18879 = distinct !DILocation(line: 2565, column: 18, scope: !453, inlinedAt: !18871)
!18880 = distinct !DILocation(line: 0, scope: !459, inlinedAt: !18879)
!18881 = distinct !DILocation(line: 2571, column: 14, scope: !453, inlinedAt: !18871)
!18882 = distinct !DILocation(line: 0, scope: !459, inlinedAt: !18881)
!18883 = distinct !DILocation(line: 2572, column: 14, scope: !453, inlinedAt: !18871)
!18884 = distinct !DILocation(line: 0, scope: !459, inlinedAt: !18883)
!18885 = distinct !DILocation(line: 0, scope: !457, inlinedAt: !18871)
!18886 = distinct !DILocation(line: 0, scope: !456, inlinedAt: !18871)
!18887 = distinct !DILocation(line: 0, scope: !455, inlinedAt: !18871)
!18888 = distinct !DILocation(line: 0, scope: !454, inlinedAt: !18871)
!18889 = distinct !DILocation(line: 0, scope: !453, inlinedAt: !18871)
!18890 = !DILocation(line: 0, scope: !442)
!18891 = !DILocation(line: 1452, column: 24, scope: !442)
!18892 = !DILocation(line: 0, scope: !443, inlinedAt: !18891)
!18893 = !DILocation(line: 1454, column: 14, scope: !440)
!18894 = !DILocation(line: 0, scope: !444, inlinedAt: !18893)
!18895 = !DILocation(line: 1453, column: 25, scope: !441)
!18896 = !DILocation(line: 0, scope: !445, inlinedAt: !18895)
!18897 = !DILocation(line: 1903, column: 18, scope: !443, inlinedAt: !18891)
!18898 = !DILocation(line: 0, scope: !441)
!18899 = !DILocation(line: 1458, column: 84, scope: !440)
!18900 = !DILocation(line: 0, scope: !447, inlinedAt: !18899)
!18901 = !DILocation(line: 666, column: 9, scope: !445, inlinedAt: !18895)
!18902 = !DILocation(line: 0, scope: !448, inlinedAt: !18901)
!18903 = !DILocation(line: 0, scope: !440)
!18904 = !DILocation(line: 1458, column: 71, scope: !440)
!18905 = !DILocation(line: 2058, column: 29, scope: !449, inlinedAt: !18904)
!18906 = !DILocation(line: 2061, column: 18, scope: !449, inlinedAt: !18904)
!18907 = !DILocation(line: 305, column: 20, scope: !452, inlinedAt: !18906)
!18908 = !DILocation(line: 622, column: 14, scope: !451, inlinedAt: !18907)
!18909 = !DILocation(line: 1459, column: 22, scope: !440)
!18910 = !DILocation(line: 2225, column: 33, scope: !460, inlinedAt: !18909)
!18911 = !DILocation(line: 0, scope: !460, inlinedAt: !18909)
!18912 = !DILocation(line: 3136, column: 19, scope: !446, inlinedAt: !18897)
!18913 = !DILocation(line: 3141, column: 37, scope: !446, inlinedAt: !18897)
!18914 = !DILocation(line: 3141, column: 18, scope: !446, inlinedAt: !18897)
!18915 = !DILocation(line: 2475, column: 9, scope: !448, inlinedAt: !18901)
!18916 = !DILocation(line: 2476, column: 9, scope: !448, inlinedAt: !18901)
!18917 = !DILocation(line: 1255, column: 18, scope: !444, inlinedAt: !18893)
!18918 = !DILocation(line: 627, column: 9, scope: !450, inlinedAt: !18908)
!18919 = !DILocation(line: 971, column: 18, scope: !447, inlinedAt: !18899)
!18920 = !DILocation(line: 2551, column: 21, scope: !457, inlinedAt: !18871)
!18921 = !DILocation(line: 2552, column: 22, scope: !456, inlinedAt: !18871)
!18922 = !DILocation(line: 2552, column: 21, scope: !456, inlinedAt: !18871)
!18923 = !DILocation(line: 2553, column: 22, scope: !455, inlinedAt: !18871)
!18924 = !DILocation(line: 2553, column: 21, scope: !455, inlinedAt: !18871)
!18925 = !DILocation(line: 2554, column: 22, scope: !454, inlinedAt: !18871)
!18926 = !DILocation(line: 2554, column: 21, scope: !454, inlinedAt: !18871)
!18927 = !DILocation(line: 2556, column: 12, scope: !453, inlinedAt: !18871)
!18928 = !DILocation(line: 2547, column: 13, scope: !457, inlinedAt: !18871)
!18929 = !DILocation(line: 0, scope: !2585, inlinedAt: !18871)
!18930 = !DILocation(line: 2557, column: 13, scope: !453, inlinedAt: !18871)
!18931 = !DILocation(line: 971, column: 18, scope: !459, inlinedAt: !18873)
!18932 = !DILocation(line: 2558, column: 13, scope: !453, inlinedAt: !18871)
!18933 = !DILocation(line: 0, scope: !2586, inlinedAt: !18871)
!18934 = !DILocation(line: 2562, column: 12, scope: !453, inlinedAt: !18871)
!18935 = !DILocation(line: 2563, column: 13, scope: !453, inlinedAt: !18871)
!18936 = !DILocation(line: 971, column: 18, scope: !459, inlinedAt: !18875)
!18937 = !DILocation(line: 2564, column: 13, scope: !453, inlinedAt: !18871)
!18938 = !DILocation(line: 971, column: 18, scope: !459, inlinedAt: !18879)
!18939 = !DILocation(line: 2565, column: 13, scope: !453, inlinedAt: !18871)
!18940 = !DILocation(line: 2569, column: 9, scope: !453, inlinedAt: !18871)
!18941 = !DILocation(line: 971, column: 18, scope: !459, inlinedAt: !18877)
!18942 = !DILocation(line: 2570, column: 9, scope: !453, inlinedAt: !18871)
!18943 = !DILocation(line: 971, column: 18, scope: !459, inlinedAt: !18881)
!18944 = !DILocation(line: 2571, column: 9, scope: !453, inlinedAt: !18871)
!18945 = !DILocation(line: 971, column: 18, scope: !459, inlinedAt: !18883)
!18946 = !DILocation(line: 2572, column: 9, scope: !453, inlinedAt: !18871)
!18947 = !DILocation(line: 2574, column: 2, scope: !458, inlinedAt: !18871)
!18948 = !DILocation(line: 1459, column: 30, scope: !440)
!18949 = !DILocation(line: 2232, column: 9, scope: !460, inlinedAt: !18909)
!18950 = !DILocation(line: 1461, column: 6, scope: !442)
!18951 = distinct !DISubprogram(name: "syntax_error", linkageName: "_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error", scope: !101, file: !1237, line: 243, type: !18980, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, declaration: !18981, retainedNodes: !18984)
!18952 = distinct !{!18952, i1 true, !"_RNvMNtCs5yXxDE1DkoT_4tera6errorsNtB2_11ReportError18new_without_source"}
!18953 = distinct !{!18953, !18952, !"_RNvMNtCs5yXxDE1DkoT_4tera6errorsNtB2_11ReportError18new_without_source: argument 0"}
!18954 = distinct !{!18954, !18952, !"_RNvMNtCs5yXxDE1DkoT_4tera6errorsNtB2_11ReportError18new_without_source: argument 1"}
!18955 = distinct !{!18955, !18952, !"_RNvMNtCs5yXxDE1DkoT_4tera6errorsNtB2_11ReportError18new_without_source: argument 2"}
!18956 = distinct !DILocation(line: 245, column: 51, scope: !18951)
!18957 = distinct !DILocation(line: 39, column: 38, scope: !524, inlinedAt: !18956)
!18958 = distinct !DILocation(line: 0, scope: !524, inlinedAt: !18956)
!18959 = distinct !DILocation(line: 44, column: 24, scope: !524, inlinedAt: !18956)
!18960 = distinct !DILocation(line: 0, scope: !525, inlinedAt: !18959)
!18961 = distinct !DILexicalBlock(scope: !18962, file: !1768, line: 292, column: 9)
!18962 = distinct !DISubprogram(name: "new<tera::errors::ReportError>", linkageName: "_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCs5yXxDE1DkoT_4tera6errors11ReportErrorE3newBI_", scope: !2934, file: !1768, line: 290, type: !18993, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !2186, retainedNodes: !18996)
!18963 = distinct !DILocation(line: 245, column: 42, scope: !18951)
!18964 = distinct !DILocation(line: 290, column: 16, scope: !18962, inlinedAt: !18963)
!18965 = distinct !DILocation(line: 292, column: 19, scope: !18962, inlinedAt: !18963)
!18966 = distinct !DILocation(line: 0, scope: !528, inlinedAt: !18965)
!18967 = distinct !DILocation(line: 251, column: 18, scope: !528, inlinedAt: !18965)
!18968 = distinct !DILocation(line: 0, scope: !534, inlinedAt: !18967)
!18969 = distinct !DILocation(line: 548, column: 14, scope: !534, inlinedAt: !18967)
!18970 = distinct !DILocation(line: 0, scope: !535, inlinedAt: !18969)
!18971 = distinct !DILocation(line: 430, column: 9, scope: !535, inlinedAt: !18969)
!18972 = distinct !DILocation(line: 0, scope: !545, inlinedAt: !18971)
!18973 = distinct !DILocation(line: 308, column: 73, scope: !544, inlinedAt: !18971)
!18974 = distinct !DILocation(line: 0, scope: !546, inlinedAt: !18973)
!18975 = distinct !DILocation(line: 0, scope: !544, inlinedAt: !18971)
!18976 = distinct !{!18976, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCs5yXxDE1DkoT_4tera6errors11ReportErrorE3newBI_"}
!18977 = distinct !{!18977, !18976, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCs5yXxDE1DkoT_4tera6errors11ReportErrorE3newBI_: argument 0"}
!18978 = distinct !DILocation(line: 0, scope: !18961, inlinedAt: !18963)
!18979 = !{!101, !12, !2918}
!18980 = !DISubroutineType(types: !18979)
!18981 = !DISubprogram(name: "syntax_error", linkageName: "_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error", scope: !101, file: !1237, line: 243, type: !18980, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !975)
!18982 = !DILocalVariable(name: "message", arg: 1, scope: !18951, file: !1237, line: 243, type: !12)
!18983 = !DILocalVariable(name: "span", arg: 2, scope: !18951, file: !1237, line: 243, type: !2918)
!18984 = !{!18982, !18983}
!18985 = !DILocation(line: 243, column: 32, scope: !18951)
!18986 = !DILocation(line: 0, scope: !18951)
!18987 = !{!18953}
!18988 = !{!18954}
!18989 = !{!18955}
!18990 = !{!18953, !18954}
!18991 = !DILocalVariable(name: "x", arg: 1, scope: !18962, file: !1768, line: 290, type: !95)
!18992 = !{!1301, !95}
!18993 = !DISubroutineType(types: !18992)
!18994 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut tera::errors::ReportError", baseType: !95, size: 64, align: 64, dwarfAddressSpace: 0)
!18995 = !DILocalVariable(name: "ptr", scope: !18961, file: !1768, line: 292, type: !18994, align: 64)
!18996 = !{!18991, !18995}
!18997 = !{!18977}
!18998 = !DILocation(line: 245, column: 51, scope: !18951)
!18999 = !DILocation(line: 51, column: 10, scope: !525, inlinedAt: !18959)
!19000 = !DILocation(line: 40, column: 9, scope: !524, inlinedAt: !18956)
!19001 = !DILocation(line: 129, column: 9, scope: !546, inlinedAt: !18973)
!19002 = !DILocation(line: 131, column: 9, scope: !546, inlinedAt: !18973)
!19003 = !DILocation(line: 251, column: 11, scope: !528, inlinedAt: !18965)
!19004 = !DILocation(line: 251, column: 5, scope: !528, inlinedAt: !18965)
end_hunk_5
