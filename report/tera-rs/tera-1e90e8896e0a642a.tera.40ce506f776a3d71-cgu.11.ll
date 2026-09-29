Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.11?download=true
inline.NumInlined: 436
inline.NumDeleted: 193
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s1_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Z_5count0EB26_:bb.a
    #dbg_value(i64 %.sroa.01.024.i.i.i, !6119, !DIExpression(), !6016)
    #dbg_value(ptr poison, !6120, !DIExpression(), !6016)
    #dbg_value(ptr poison, !6114, !DIExpression(), !6017)
    #dbg_value(i64 %.sroa.01.024.i.i.i, !6112, !DIExpression(), !6017)
    #dbg_value(ptr poison, !6113, !DIExpression(), !6017)
  %i.r = add nuw i64 %.sroa.01.024.i.i.i, 1, !dbg !6143
    #dbg_value(i64 %i.r, !6078, !DIExpression(), !5991)
    #dbg_value(ptr %0, !2287, !DIExpression(), !5993)
    #dbg_value(i64 1, !2302, !DIExpression(), !5995)
    #dbg_value(ptr %i.n, !2298, !DIExpression(), !5996)
    #dbg_value(ptr %i.n, !2306, !DIExpression(), !5995)
    #dbg_value(ptr %i.g, !2299, !DIExpression(), !5997)
    #dbg_value(ptr poison, !2309, !DIExpression(), !5999)
    #dbg_value(ptr poison, !2313, !DIExpression(), !6000)
  %i.s = icmp eq ptr %i.n, %i.g, !dbg !6133
  br i1 %i.s, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s1_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3N_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B2Z_5count0E0B48_EB26_.exit, label %bb.d, !dbg !6134

bb.g:                                             ; preds = %bb.b
  %i.t = add i64 %i.f, -1, !dbg !6144
    #dbg_value(ptr %0, !2399, !DIExpression(), !6019)
    #dbg_value(i64 %i.t, !2402, !DIExpression(), !6019)
    #dbg_value(i64 1, !2410, !DIExpression(), !6023)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6145
  %i.v = load ptr, ptr %i.u, align 8, !dbg !6145, !alias.scope !6125, !nonnull !975, !noundef !975 ; 2 uses
    #dbg_value(ptr %i.v, !2404, !DIExpression(), !6026)
    #dbg_value(ptr %i.v, !2424, !DIExpression(), !6027)
  %i.w = load ptr, ptr %0, align 8, !dbg !6146, !alias.scope !6125, !nonnull !975, !noundef !975 ; 2 uses
    #dbg_value(ptr %i.w, !2425, !DIExpression(), !6027)
    #dbg_value(ptr %i.v, !2418, !DIExpression(), !6028)
    #dbg_value(ptr %i.w, !2419, !DIExpression(), !6028)
    #dbg_value(ptr %i.w, !2414, !DIExpression(), !6029)
    #dbg_value(ptr %i.v, !2413, !DIExpression(), !6029)
  %i.x = ptrtoint ptr %i.v to i64, !dbg !6147
  %i.y = ptrtoint ptr %i.w to i64, !dbg !6147
  %i.z = sub nuw i64 %i.x, %i.y, !dbg !6147
  %.not.i.not.i.i = icmp ult i64 %i.t, %i.z, !dbg !6148
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f, !dbg !6148
  br i1 %.not.i.not.i.i, label %bb.c, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s1_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3N_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B2Z_5count0E0B48_EB26_.exit, !dbg !6149

_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s1_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3N_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B2Z_5count0E0B48_EB26_.exit: ; preds = %bb.e, %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s1_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i, %bb.a, %bb.c, %bb.g
  %.sroa.0.1.i = phi i64 [ 0, %bb.g ], [ 0, %bb.a ], [ 0, %bb.c ], [ %i.k, %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s1_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i ], [ %.sroa.01.024.i.i.i, %bb.e ], !dbg !6150
  ret i64 %.sroa.0.1.i, !dbg !6151
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef i64 @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Z_5count0EB26_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !6153 {
bb.a:
    #dbg_declare(ptr %0, !6225, !DIExpression(), !6231)
    #dbg_value(i64 0, !6226, !DIExpression(), !6232)
    #dbg_declare(ptr poison, !6227, !DIExpression(), !6233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6234), !dbg !6319
    #dbg_value(ptr %0, !6236, !DIExpression(), !6161)
    #dbg_value(i64 0, !6241, !DIExpression(), !6161)
    #dbg_declare(ptr poison, !6242, !DIExpression(), !6162)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !6320
  %i.b = load i8, ptr %i.a, align 8, !dbg !6320, !range !1225, !alias.scope !6234, !noundef !975
  %i.c = trunc nuw i8 %i.b to i1, !dbg !6320
  br i1 %i.c, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3N_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B2Z_5count0E0B48_EB26_.exit, label %bb.b, !dbg !6320

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.a, !6243, !DIExpression(), !6163)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6321
    #dbg_value(ptr %i.d, !6245, !DIExpression(), !6164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6249), !dbg !6322
    #dbg_value(ptr %0, !6250, !DIExpression(), !6171)
    #dbg_value(i64 0, !6257, !DIExpression(), !6171)
    #dbg_value(ptr %i.d, !6258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6171)
    #dbg_value(ptr %i.a, !6258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6171)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6323
  %i.f = load i64, ptr %i.e, align 8, !dbg !6323, !alias.scope !6263, !noundef !975 ; 3 uses
    #dbg_value(i64 %i.f, !6259, !DIExpression(), !6172)
  %.not.i.i = icmp eq i64 %i.f, 0, !dbg !6324
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.g, !dbg !6324

._crit_edge.i.i:                                  ; preds = %bb.b
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !6264
  %.promoted.i.pre.i.i = load ptr, ptr %0, align 8, !alias.scope !6264
  br label %bb.c, !dbg !6324

bb.c:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.promoted.i.i.i = phi ptr [ %.promoted.i.pre.i.i, %._crit_edge.i.i ], [ %i.aa, %bb.g ] ; 3 uses
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.v, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6265), !dbg !6325
    #dbg_value(ptr %i.d, !6266, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6183)
    #dbg_value(ptr %i.a, !6266, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6183)
    #dbg_value(ptr %0, !6269, !DIExpression(), !6183)
    #dbg_value(i64 0, !6270, !DIExpression(), !6183)
    #dbg_value(i64 0, !6271, !DIExpression(), !6184)
    #dbg_value(ptr %0, !2287, !DIExpression(), !6186)
    #dbg_value(i64 1, !2302, !DIExpression(), !6188)
    #dbg_value(ptr %.promoted.i.i.i, !2298, !DIExpression(), !6189)
    #dbg_value(ptr %.promoted.i.i.i, !2306, !DIExpression(), !6188)
    #dbg_value(ptr %i.g, !2299, !DIExpression(), !6190)
    #dbg_value(ptr poison, !2309, !DIExpression(), !6192)
    #dbg_value(ptr poison, !2313, !DIExpression(), !6193)
  %i.h = icmp eq ptr %.promoted.i.i.i, %i.g, !dbg !6326
  br i1 %i.h, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3N_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B2Z_5count0E0B48_EB26_.exit, label %.lr.ph.i.i.i, !dbg !6327

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %.promoted29.i.i.i = ptrtoaddr ptr %.promoted.i.i.i to i64, !dbg !6326
  %i.i = ptrtoaddr ptr %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = sub i64 %i.i, %.promoted29.i.i.i, !dbg !6327
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !6234, !noalias !6278, !nonnull !975, !noundef !975 ; 2 uses
  %.val9.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !6234, !noalias !6278 ; 2 uses
  %.pre.i = load i8, ptr %.val.i.i.i.i, align 1, !dbg !6328, !range !1225, !noalias !6279
  br label %bb.d, !dbg !6327

bb.d:                                             ; preds = %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i, %.lr.ph.i.i.i
  %i.l = phi i8 [ %.pre.i, %.lr.ph.i.i.i ], [ %i.q, %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i ], !dbg !6328
  %.sroa.01.024.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.r, %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i ] ; 2 uses
  %i.m = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.n, %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i ] ; 2 uses
    #dbg_value(i64 %.sroa.01.024.i.i.i, !6271, !DIExpression(), !6184)
    #dbg_value(ptr %i.m, !2298, !DIExpression(), !6189)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !6329 ; 2 uses
    #dbg_value(ptr %i.m, !6272, !DIExpression(), !6201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6299), !dbg !6330
    #dbg_value(ptr poison, !6292, !DIExpression(DW_OP_deref), !6202)
    #dbg_value(ptr poison, !6294, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !6202)
    #dbg_value(i64 %.sroa.01.024.i.i.i, !6290, !DIExpression(), !6202)
    #dbg_value(ptr undef, !6291, !DIExpression(DW_OP_deref), !6202)
    #dbg_value(ptr poison, !6282, !DIExpression(DW_OP_deref, DW_OP_deref), !6203)
    #dbg_value(ptr poison, !6283, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !6203)
    #dbg_value(ptr poison, !6285, !DIExpression(), !6203)
    #dbg_value(i8 poison, !6284, !DIExpression(), !6204)
  %i.o = trunc nuw i8 %i.l to i1, !dbg !6328
  br i1 %i.o, label %_RNCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0B9_.exit.thread.sink.split.i.i.i.i, label %bb.e, !dbg !6328

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.m, align 1, !dbg !6331, !alias.scope !6299, !noalias !6300, !noundef !975
    #dbg_value(i8 %i.p, !6284, !DIExpression(), !6204)
  switch i8 %i.p, label %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i [
    i8 92, label %bb.f
    i8 96, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3N_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B2Z_5count0E0B48_EB26_.exit
  ], !dbg !6332

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i) ]
  store i8 1, ptr %.val9.i.i.i.i, align 1, !dbg !6333, !noalias !6279
  br label %_RNCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0B9_.exit.thread.sink.split.i.i.i.i, !dbg !6334

_RNCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0B9_.exit.thread.sink.split.i.i.i.i: ; preds = %bb.f, %bb.d
  %.sink.i.i.i.i = phi i8 [ 1, %bb.f ], [ 0, %bb.d ] ; 2 uses
  store i8 %.sink.i.i.i.i, ptr %.val.i.i.i.i, align 1, !dbg !6335, !noalias !6279
  br label %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i, !dbg !6336

_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i: ; preds = %_RNCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0B9_.exit.thread.sink.split.i.i.i.i, %bb.e
  %i.q = phi i8 [ %.sink.i.i.i.i, %_RNCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0B9_.exit.thread.sink.split.i.i.i.i ], [ 0, %bb.e ]
    #dbg_value(i64 %.sroa.01.024.i.i.i, !6312, !DIExpression(), !6209)
    #dbg_value(ptr poison, !6313, !DIExpression(), !6209)
    #dbg_value(ptr poison, !6307, !DIExpression(), !6210)
    #dbg_value(i64 %.sroa.01.024.i.i.i, !6305, !DIExpression(), !6210)
    #dbg_value(ptr poison, !6306, !DIExpression(), !6210)
  %i.r = add nuw i64 %.sroa.01.024.i.i.i, 1, !dbg !6336
    #dbg_value(i64 %i.r, !6271, !DIExpression(), !6184)
    #dbg_value(ptr %0, !2287, !DIExpression(), !6186)
    #dbg_value(i64 1, !2302, !DIExpression(), !6188)
    #dbg_value(ptr %i.n, !2298, !DIExpression(), !6189)
    #dbg_value(ptr %i.n, !2306, !DIExpression(), !6188)
    #dbg_value(ptr %i.g, !2299, !DIExpression(), !6190)
    #dbg_value(ptr poison, !2309, !DIExpression(), !6192)
    #dbg_value(ptr poison, !2313, !DIExpression(), !6193)
  %i.s = icmp eq ptr %i.n, %i.g, !dbg !6326
  br i1 %i.s, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3N_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B2Z_5count0E0B48_EB26_.exit, label %bb.d, !dbg !6327

bb.g:                                             ; preds = %bb.b
  %i.t = add i64 %i.f, -1, !dbg !6337
    #dbg_value(ptr %0, !2399, !DIExpression(), !6212)
    #dbg_value(i64 %i.t, !2402, !DIExpression(), !6212)
    #dbg_value(i64 1, !2410, !DIExpression(), !6216)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6338
  %i.v = load ptr, ptr %i.u, align 8, !dbg !6338, !alias.scope !6318, !nonnull !975, !noundef !975 ; 2 uses
    #dbg_value(ptr %i.v, !2404, !DIExpression(), !6219)
    #dbg_value(ptr %i.v, !2424, !DIExpression(), !6220)
  %i.w = load ptr, ptr %0, align 8, !dbg !6339, !alias.scope !6318, !nonnull !975, !noundef !975 ; 2 uses
    #dbg_value(ptr %i.w, !2425, !DIExpression(), !6220)
    #dbg_value(ptr %i.v, !2418, !DIExpression(), !6221)
    #dbg_value(ptr %i.w, !2419, !DIExpression(), !6221)
    #dbg_value(ptr %i.w, !2414, !DIExpression(), !6222)
    #dbg_value(ptr %i.v, !2413, !DIExpression(), !6222)
  %i.x = ptrtoint ptr %i.v to i64, !dbg !6340
  %i.y = ptrtoint ptr %i.w to i64, !dbg !6340
  %i.z = sub nuw i64 %i.x, %i.y, !dbg !6340
  %.not.i.not.i.i = icmp ult i64 %i.t, %i.z, !dbg !6341
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f, !dbg !6341
  br i1 %.not.i.not.i.i, label %bb.c, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3N_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B2Z_5count0E0B48_EB26_.exit, !dbg !6342

_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3N_17NeverShortCircuitjE10wrap_mut_2jRhNCNvYBV_B2Z_5count0E0B48_EB26_.exit: ; preds = %bb.e, %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i, %bb.a, %bb.c, %bb.g
  %.sroa.0.1.i = phi i64 [ 0, %bb.g ], [ 0, %bb.a ], [ 0, %bb.c ], [ %i.k, %_RNCINvNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4IterhEEB2R_EB1i_5count0E0E0B31_.exit.i.i.i ], [ %.sroa.01.024.i.i.i, %bb.e ], !dbg !6343
  ret i64 %.sroa.0.1.i, !dbg !6344
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6copied9copy_foldhuNCINvNvB1p_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB35_3VechE14extend_trustedINtB28_6CopiedBM_EE0E0E0ECs5yXxDE1DkoT_4tera(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !6350 {
bb.a:
    #dbg_value(ptr %0, !6455, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6461)
    #dbg_value(ptr %1, !6455, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6461)
    #dbg_declare(ptr poison, !6456, !DIExpression(), !6462)
    #dbg_declare(ptr %2, !6457, !DIExpression(), !6463)
  %3 = ptrtoaddr ptr %0 to i64, !dbg !6555        ; 4 uses
  %4 = ptrtoaddr ptr %1 to i64, !dbg !6555        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6464), !dbg !6555
    #dbg_value(ptr poison, !2456, !DIExpression(), !6359)
    #dbg_value(ptr %0, !6467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6360)
    #dbg_value(ptr %1, !6467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6360)
    #dbg_declare(ptr poison, !6468, !DIExpression(), !6361)
    #dbg_declare(ptr %2, !6469, !DIExpression(), !6362)
    #dbg_declare(ptr poison, !6470, !DIExpression(), !6363)
    #dbg_value(ptr undef, !2460, !DIExpression(), !6364)
    #dbg_value(ptr undef, !2468, !DIExpression(), !6366)
    #dbg_value(ptr undef, !2473, !DIExpression(), !6368)
    #dbg_value(i64 1, !2477, !DIExpression(), !6368)
    #dbg_value(i64 1, !2481, !DIExpression(), !6370)
    #dbg_value(i64 -1, !2485, !DIExpression(), !6372)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1, !dbg !6556
  br i1 %i.a, label %._crit_edge13.i, label %iter.check, !dbg !6557

._crit_edge13.i:                                  ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val7.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !dbg !6558, !alias.scope !6464
  br label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldhuNCINvNvNtNtBP_8iterator8Iterator8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3m_3VechE14extend_trustedINtB1T_6CopiedINtNtB1V_3rev3RevB3_EEE0E0E0ECs5yXxDE1DkoT_4tera.exit, !dbg !6557

iter.check:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !6474, !noundef !975 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.promoted.i = load i64, ptr %i.d, align 8, !alias.scope !6474 ; 8 uses
  %i.e = sub i64 %4, %3, !dbg !6557               ; 7 uses
  %min.iters.check = icmp ult i64 %i.e, 8, !dbg !6557
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !6557

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr nuw i8, ptr %i.c, i64 %.promoted.i, !dbg !6557
  %i.f = add i64 %.promoted.i, %4, !dbg !6557
  %i.g = sub i64 %i.f, %3, !dbg !6557
  %scevgep2 = getelementptr i8, ptr %i.c, i64 %i.g, !dbg !6557
  %bound0 = icmp ult ptr %scevgep, %1, !dbg !6557
  %bound1 = icmp ult ptr %0, %scevgep2, !dbg !6557
  %found.conflict = and i1 %bound0, %bound1, !dbg !6557
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.e, 32, !dbg !6557
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !6557

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %i.e, 24
  %n.vec = and i64 %i.e, -32                      ; 5 uses
  %i.i = add i64 %.promoted.i, %n.vec             ; 2 uses
  %i.j = sub i64 0, %n.vec
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = getelementptr i8, ptr %i.c, i64 %.promoted.i
  br label %vector.body, !dbg !6557

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %1, i64 %i.m  ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %next.gep, i64 -16, !dbg !6559
  %i.o = getelementptr inbounds i8, ptr %next.gep, i64 -32, !dbg !6559
  %wide.load = load <16 x i8>, ptr %i.n, align 1, !dbg !6559, !alias.scope !6475, !noalias !6464
  %wide.load5 = load <16 x i8>, ptr %i.o, align 1, !dbg !6559, !alias.scope !6475, !noalias !6464
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !6559
  %reverse6 = shufflevector <16 x i8> %wide.load5, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !6559
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6476), !dbg !6559
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6477), !dbg !6560
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6489), !dbg !6561
  %i.p = getelementptr i8, ptr %i.l, i64 %index, !dbg !6562 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !6563
  store <16 x i8> %reverse, ptr %i.p, align 1, !dbg !6563, !alias.scope !6514, !noalias !6515
  store <16 x i8> %reverse6, ptr %i.q, align 1, !dbg !6563, !alias.scope !6514, !noalias !6515
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec, !dbg !6557
  br i1 %i.r, label %middle.block, label %vector.body, !dbg !6557, !llvm.loop !6394

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !6557
  br i1 %cmp.n, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldhuNCINvNvNtNtBP_8iterator8Iterator8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3m_3VechE14extend_trustedINtB1T_6CopiedINtNtB1V_3rev3RevB3_EEE0E0E0ECs5yXxDE1DkoT_4tera.exit, label %vec.epilog.iter.check, !dbg !6557

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !6518

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %i.e, -8                      ; 4 uses
  %i.s = add i64 %.promoted.i, %n.vec8            ; 2 uses
  %i.t = sub i64 0, %n.vec8
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %i.c, i64 %.promoted.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 3 uses
  %i.w = sub i64 0, %index9
  %next.gep10 = getelementptr i8, ptr %1, i64 %i.w
  %i.x = getelementptr inbounds i8, ptr %next.gep10, i64 -8, !dbg !6559
  %wide.load11 = load <8 x i8>, ptr %i.x, align 1, !dbg !6559, !alias.scope !6475, !noalias !6464
  %reverse12 = shufflevector <8 x i8> %wide.load11, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !6559
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6476), !dbg !6559
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6477), !dbg !6560
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6489), !dbg !6561
  %i.y = getelementptr i8, ptr %i.v, i64 %index9, !dbg !6562
  store <8 x i8> %reverse12, ptr %i.y, align 1, !dbg !6563, !alias.scope !6514, !noalias !6515
  %index.next13 = add nuw i64 %index9, 8          ; 2 uses
  %i.z = icmp eq i64 %index.next13, %n.vec8, !dbg !6557
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !6557, !llvm.loop !6395

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %i.e, %n.vec8, !dbg !6557
  br i1 %cmp.n14, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldhuNCINvNvNtNtBP_8iterator8Iterator8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3m_3VechE14extend_trustedINtB1T_6CopiedINtNtB1V_3rev3RevB3_EEE0E0E0ECs5yXxDE1DkoT_4tera.exit, label %vec.epilog.scalar.ph.preheader, !dbg !6557

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.promoted.i, %iter.check ], [ %.promoted.i, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.2.012.i.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.2.012.i.ph17 = ptrtoaddr ptr %.sroa.2.012.i.ph to i64, !dbg !6557 ; 2 uses
  %i.aa = sub i64 %.sroa.2.012.i.ph17, %3, !dbg !6557
  %xtraiter = and i64 %i.aa, 3, !dbg !6557        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !6557
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !6557

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.ab = phi i64 [ %i.ae, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !6564 ; 2 uses
  %.sroa.2.012.i.prol = phi ptr [ %i.ac, %vec.epilog.scalar.ph.prol ], [ %.sroa.2.012.i.ph, %vec.epilog.scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
    #dbg_value(ptr %.sroa.2.012.i.prol, !6467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6360)
    #dbg_value(ptr undef, !2479, !DIExpression(), !6396)
    #dbg_value(ptr %.sroa.2.012.i.prol, !2483, !DIExpression(), !6370)
    #dbg_value(ptr %.sroa.2.012.i.prol, !2489, !DIExpression(), !6372)
  %i.ac = getelementptr inbounds i8, ptr %.sroa.2.012.i.prol, i64 -1, !dbg !6564 ; 3 uses
    #dbg_value(ptr %i.ac, !2483, !DIExpression(), !6370)
    #dbg_value(ptr %i.ac, !2489, !DIExpression(), !6372)
    #dbg_value(ptr %i.ac, !6467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6360)
    #dbg_value(ptr %i.ac, !6471, !DIExpression(), !6397)
  %.val8.i.prol = load i8, ptr %i.ac, align 1, !dbg !6559, !noalias !6464, !noundef !975
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6476), !dbg !6559
    #dbg_value(ptr poison, !6483, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6398)
    #dbg_declare(ptr poison, !6482, !DIExpression(), !6399)
    #dbg_value(ptr poison, !6485, !DIExpression(), !6398)
    #dbg_value(i8 %.val8.i.prol, !6484, !DIExpression(), !6400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6477), !dbg !6560
    #dbg_value(ptr poison, !6494, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6401)
    #dbg_declare(ptr poison, !6495, !DIExpression(), !6402)
    #dbg_value(i8 %.val8.i.prol, !6493, !DIExpression(), !6401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6489), !dbg !6561
    #dbg_value(ptr poison, !6503, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !6403)
    #dbg_value(ptr poison, !6504, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6403)
    #dbg_value(i8 %.val8.i.prol, !6502, !DIExpression(), !6403)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ab, !dbg !6562
  store i8 %.val8.i.prol, ptr %i.ad, align 1, !dbg !6563, !noalias !6474
  %i.ae = add i64 %i.ab, 1, !dbg !6565            ; 3 uses
    #dbg_value(ptr undef, !2460, !DIExpression(), !6364)
    #dbg_value(ptr undef, !2468, !DIExpression(), !6366)
    #dbg_value(ptr undef, !2473, !DIExpression(), !6368)
    #dbg_value(i64 1, !2477, !DIExpression(), !6368)
    #dbg_value(i64 1, !2481, !DIExpression(), !6370)
    #dbg_value(i64 -1, !2485, !DIExpression(), !6372)
    #dbg_value(ptr %i.ac, !2462, !DIExpression(), !6406)
    #dbg_value(ptr undef, !2456, !DIExpression(), !6359)
    #dbg_value(ptr poison, !2457, !DIExpression(), !6407)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !6557 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !6557
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !6557, !llvm.loop !6408

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ae, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ae, %vec.epilog.scalar.ph.prol ]
  %.sroa.2.012.i.unr = phi ptr [ %.sroa.2.012.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ac, %vec.epilog.scalar.ph.prol ]
  %i.af = sub i64 %3, %.sroa.2.012.i.ph17, !dbg !6557
  %i.ag = icmp ugt i64 %i.af, -4, !dbg !6557
  br i1 %i.ag, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldhuNCINvNvNtNtBP_8iterator8Iterator8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3m_3VechE14extend_trustedINtB1T_6CopiedINtNtB1V_3rev3RevB3_EEE0E0E0ECs5yXxDE1DkoT_4tera.exit, label %vec.epilog.scalar.ph, !dbg !6557

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ah = phi i64 [ %i.at, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !6564 ; 5 uses
  %.sroa.2.012.i = phi ptr [ %i.aq, %vec.epilog.scalar.ph ], [ %.sroa.2.012.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
    #dbg_value(ptr %.sroa.2.012.i, !6467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6360)
    #dbg_value(ptr undef, !2479, !DIExpression(), !6396)
    #dbg_value(ptr %.sroa.2.012.i, !2483, !DIExpression(), !6370)
    #dbg_value(ptr %.sroa.2.012.i, !2489, !DIExpression(), !6372)
  %i.ai = getelementptr inbounds i8, ptr %.sroa.2.012.i, i64 -1, !dbg !6564
    #dbg_value(ptr %i.ai, !2483, !DIExpression(), !6370)
    #dbg_value(ptr %i.ai, !2489, !DIExpression(), !6372)
    #dbg_value(ptr %i.ai, !6467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6360)
    #dbg_value(ptr %i.ai, !6471, !DIExpression(), !6397)
  %.val8.i = load i8, ptr %i.ai, align 1, !dbg !6559, !noalias !6464, !noundef !975
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6476), !dbg !6559
    #dbg_value(ptr poison, !6483, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6398)
    #dbg_declare(ptr poison, !6482, !DIExpression(), !6399)
    #dbg_value(ptr poison, !6485, !DIExpression(), !6398)
    #dbg_value(i8 %.val8.i, !6484, !DIExpression(), !6400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6477), !dbg !6560
    #dbg_value(ptr poison, !6494, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6401)
    #dbg_declare(ptr poison, !6495, !DIExpression(), !6402)
    #dbg_value(i8 %.val8.i, !6493, !DIExpression(), !6401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6489), !dbg !6561
    #dbg_value(ptr poison, !6503, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !6403)
    #dbg_value(ptr poison, !6504, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !6403)
    #dbg_value(i8 %.val8.i, !6502, !DIExpression(), !6403)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ah, !dbg !6562
  store i8 %.val8.i, ptr %i.aj, align 1, !dbg !6563, !noalias !6474
    #dbg_value(ptr undef, !2460, !DIExpression(), !6364)
    #dbg_value(ptr undef, !2468, !DIExpression(), !6366)
    #dbg_value(ptr undef, !2473, !DIExpression(), !6368)
    #dbg_value(i64 1, !2477, !DIExpression(), !6368)
    #dbg_value(i64 1, !2481, !DIExpression(), !6370)
    #dbg_value(i64 -1, !2485, !DIExpression(), !6372)
    #dbg_value(ptr %i.ai, !2462, !DIExpression(), !6406)
    #dbg_value(ptr undef, !2456, !DIExpression(), !6359)
    #dbg_value(ptr poison, !2457, !DIExpression(), !6407)
  %i.ak = getelementptr inbounds i8, ptr %.sroa.2.012.i, i64 -2, !dbg !6564
    #dbg_value(ptr %i.ak, !2483, !DIExpression(), !6370)
    #dbg_value(ptr %i.ak, !2489, !DIExpression(), !6372)
    #dbg_value(ptr %i.ak, !6467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6360)
    #dbg_value(ptr %i.ak, !6471, !DIExpression(), !6397)
  %.val8.i.1 = load i8, ptr %i.ak, align 1, !dbg !6559, !noalias !6464, !noundef !975
    #dbg_declare(ptr poison, !6482, !DIExpression(), !6399)
    #dbg_value(i8 %.val8.i.1, !6484, !DIExpression(), !6400)
    #dbg_declare(ptr poison, !6495, !DIExpression(), !6402)
    #dbg_value(i8 %.val8.i.1, !6493, !DIExpression(), !6401)
    #dbg_value(i8 %.val8.i.1, !6502, !DIExpression(), !6403)
  %i.al = getelementptr i8, ptr %i.c, i64 %i.ah, !dbg !6562
  %i.am = getelementptr i8, ptr %i.al, i64 1, !dbg !6562
  store i8 %.val8.i.1, ptr %i.am, align 1, !dbg !6563, !noalias !6525
    #dbg_value(ptr %i.ak, !2462, !DIExpression(), !6406)
  %i.an = getelementptr inbounds i8, ptr %.sroa.2.012.i, i64 -3, !dbg !6564
    #dbg_value(ptr %i.an, !2483, !DIExpression(), !6370)
    #dbg_value(ptr %i.an, !2489, !DIExpression(), !6372)
    #dbg_value(ptr %i.an, !6467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6360)
    #dbg_value(ptr %i.an, !6471, !DIExpression(), !6397)
  %.val8.i.2 = load i8, ptr %i.an, align 1, !dbg !6559, !noalias !6464, !noundef !975
    #dbg_declare(ptr poison, !6482, !DIExpression(), !6399)
    #dbg_value(i8 %.val8.i.2, !6484, !DIExpression(), !6400)
    #dbg_declare(ptr poison, !6495, !DIExpression(), !6402)
    #dbg_value(i8 %.val8.i.2, !6493, !DIExpression(), !6401)
    #dbg_value(i8 %.val8.i.2, !6502, !DIExpression(), !6403)
  %i.ao = getelementptr i8, ptr %i.c, i64 %i.ah, !dbg !6562
  %i.ap = getelementptr i8, ptr %i.ao, i64 2, !dbg !6562
  store i8 %.val8.i.2, ptr %i.ap, align 1, !dbg !6563, !noalias !6526
    #dbg_value(ptr %i.an, !2462, !DIExpression(), !6406)
  %i.aq = getelementptr inbounds i8, ptr %.sroa.2.012.i, i64 -4, !dbg !6564 ; 3 uses
    #dbg_value(ptr %i.aq, !2483, !DIExpression(), !6370)
    #dbg_value(ptr %i.aq, !2489, !DIExpression(), !6372)
    #dbg_value(ptr %i.aq, !6467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6360)
    #dbg_value(ptr %i.aq, !6471, !DIExpression(), !6397)
  %.val8.i.3 = load i8, ptr %i.aq, align 1, !dbg !6559, !noalias !6464, !noundef !975
    #dbg_declare(ptr poison, !6482, !DIExpression(), !6399)
    #dbg_value(i8 %.val8.i.3, !6484, !DIExpression(), !6400)
    #dbg_declare(ptr poison, !6495, !DIExpression(), !6402)
    #dbg_value(i8 %.val8.i.3, !6493, !DIExpression(), !6401)
    #dbg_value(i8 %.val8.i.3, !6502, !DIExpression(), !6403)
  %i.ar = getelementptr i8, ptr %i.c, i64 %i.ah, !dbg !6562
  %i.as = getelementptr i8, ptr %i.ar, i64 3, !dbg !6562
  store i8 %.val8.i.3, ptr %i.as, align 1, !dbg !6563, !noalias !6527
  %i.at = add i64 %i.ah, 4, !dbg !6565            ; 2 uses
    #dbg_value(ptr %i.aq, !2462, !DIExpression(), !6406)
  %i.au = icmp eq ptr %0, %i.aq, !dbg !6556
  br i1 %i.au, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldhuNCINvNvNtNtBP_8iterator8Iterator8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3m_3VechE14extend_trustedINtB1T_6CopiedINtNtB1V_3rev3RevB3_EEE0E0E0ECs5yXxDE1DkoT_4tera.exit, label %vec.epilog.scalar.ph, !dbg !6557, !llvm.loop !6418

_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldhuNCINvNvNtNtBP_8iterator8Iterator8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3m_3VechE14extend_trustedINtB1T_6CopiedINtNtB1V_3rev3RevB3_EEE0E0E0ECs5yXxDE1DkoT_4tera.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge13.i
  %.val7.i = phi i64 [ %.val7.pre.i, %._crit_edge13.i ], [ %i.s, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.at, %vec.epilog.scalar.ph ], !dbg !6558
    #dbg_value(ptr poison, !6467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6360)
  %.val6.i = load ptr, ptr %2, align 8, !dbg !6558, !alias.scope !6464, !nonnull !975, !align !2495, !noundef !975
    #dbg_value(ptr poison, !6528, !DIExpression(), !6421)
    #dbg_value(ptr poison, !6534, !DIExpression(), !6424)
    #dbg_value(ptr poison, !6540, !DIExpression(), !6427)
    #dbg_value(ptr poison, !6546, !DIExpression(), !6430)
    #dbg_value(ptr poison, !6552, !DIExpression(), !6433)
  store i64 %.val7.i, ptr %.val6.i, align 8, !dbg !6566, !noalias !6464
  ret void, !dbg !6567
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3revINtB5_3RevNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB2y_6StringINtNtB1p_7collect6ExtendcE6extendBM_E0E0ECs5yXxDE1DkoT_4tera(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef nonnull align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !6571 {
bb.a:
    #dbg_value(ptr %0, !6751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6757)
    #dbg_value(ptr %1, !6751, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6757)
    #dbg_declare(ptr poison, !6752, !DIExpression(), !6758)
    #dbg_value(ptr %2, !6753, !DIExpression(), !6757)
    #dbg_value(ptr poison, !2456, !DIExpression(), !6591)
    #dbg_value(ptr poison, !2473, !DIExpression(), !6594)
    #dbg_value(ptr poison, !2468, !DIExpression(), !6595)
    #dbg_value(ptr poison, !2460, !DIExpression(), !6596)
    #dbg_value(ptr poison, !2456, !DIExpression(), !6599)
    #dbg_value(ptr poison, !2473, !DIExpression(), !6602)
    #dbg_value(ptr poison, !2468, !DIExpression(), !6603)
    #dbg_value(ptr poison, !2460, !DIExpression(), !6604)
    #dbg_value(ptr poison, !2456, !DIExpression(), !6607)
    #dbg_value(ptr poison, !2473, !DIExpression(), !6610)
    #dbg_value(ptr poison, !2468, !DIExpression(), !6611)
    #dbg_value(ptr poison, !2460, !DIExpression(), !6612)
    #dbg_value(ptr poison, !2456, !DIExpression(), !6615)
    #dbg_value(ptr %0, !6776, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6616)
    #dbg_value(ptr %1, !6776, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6616)
    #dbg_value(ptr %2, !6778, !DIExpression(), !6616)
    #dbg_declare(ptr poison, !6777, !DIExpression(), !6617)
    #dbg_declare(ptr poison, !6779, !DIExpression(), !6618)
    #dbg_value(ptr undef, !6772, !DIExpression(), !6619)
    #dbg_value(ptr undef, !6759, !DIExpression(), !6620)
    #dbg_value(i32 2, !6784, !DIExpression(), !6623)
    #dbg_value(i32 3, !6784, !DIExpression(), !6625)
    #dbg_value(i32 4, !6784, !DIExpression(), !6627)
    #dbg_value(ptr undef, !2460, !DIExpression(), !6628)
    #dbg_value(ptr undef, !2468, !DIExpression(), !6630)
    #dbg_value(ptr undef, !2473, !DIExpression(), !6632)
    #dbg_value(i64 1, !2477, !DIExpression(), !6632)
    #dbg_value(i64 1, !2481, !DIExpression(), !6634)
    #dbg_value(i64 -1, !2485, !DIExpression(), !6636)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %.not.i15.i = icmp eq ptr %0, %1, !dbg !6812
  br i1 %.not.i15.i, label %_RINvYNtNtNtCsf3Ta7LF998c_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtBL_8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB2E_6StringINtNtBL_7collect6ExtendcE6extendINtNtNtBN_8adapters3rev3RevB3_EE0E0ECs5yXxDE1DkoT_4tera.exit, label %.lr.ph.i, !dbg !6813

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b, !dbg !6813

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs5yXxDE1DkoT_4tera.exit.i, %.lr.ph.i
  %.sroa.2.016.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.2.3.ph12.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs5yXxDE1DkoT_4tera.exit.i ] ; 4 uses
    #dbg_value(ptr %.sroa.2.016.i, !6776, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6616)
    #dbg_value(ptr undef, !2479, !DIExpression(), !6637)
    #dbg_value(ptr %.sroa.2.016.i, !2483, !DIExpression(), !6634)
    #dbg_value(ptr %.sroa.2.016.i, !2489, !DIExpression(), !6636)
  %i.c = getelementptr inbounds i8, ptr %.sroa.2.016.i, i64 -1, !dbg !6814 ; 3 uses
    #dbg_value(ptr %i.c, !2483, !DIExpression(), !6634)
    #dbg_value(ptr %i.c, !2489, !DIExpression(), !6636)
    #dbg_value(ptr %i.c, !6776, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6616)
    #dbg_value(ptr %i.c, !6764, !DIExpression(), !6638)
  %i.d = load i8, ptr %i.c, align 1, !dbg !6815, !noalias !6787, !noundef !975 ; 3 uses
    #dbg_value(i8 %i.d, !6760, !DIExpression(), !6643)
    #dbg_value(i8 %i.d, !6763, !DIExpression(), !6638)
    #dbg_value(i8 %i.d, !6788, !DIExpression(), !6646)
  %i.e = icmp sgt i8 %i.d, -1, !dbg !6815
  br i1 %i.e, label %.thread.i, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit30.i.i.i, !dbg !6815

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit30.i.i.i: ; preds = %bb.b
    #dbg_value(ptr undef, !2460, !DIExpression(), !6612)
    #dbg_value(ptr undef, !2468, !DIExpression(), !6611)
    #dbg_value(ptr undef, !2473, !DIExpression(), !6610)
    #dbg_value(i64 1, !2477, !DIExpression(), !6610)
    #dbg_value(i64 1, !2481, !DIExpression(), !6648)
    #dbg_value(i64 -1, !2485, !DIExpression(), !6650)
    #dbg_value(ptr %i.c, !2462, !DIExpression(), !6651)
    #dbg_value(ptr undef, !2456, !DIExpression(), !6607)
    #dbg_value(ptr poison, !2457, !DIExpression(), !6652)
  %i.f = icmp ne ptr %0, %i.c, !dbg !6816
  tail call void @llvm.assume(i1 %i.f), !dbg !6817
    #dbg_value(ptr undef, !2479, !DIExpression(), !6653)
    #dbg_value(ptr %i.c, !2483, !DIExpression(), !6648)
    #dbg_value(ptr %i.c, !2489, !DIExpression(), !6650)
  %i.g = getelementptr inbounds i8, ptr %.sroa.2.016.i, i64 -2, !dbg !6818 ; 3 uses
    #dbg_value(ptr %i.g, !2483, !DIExpression(), !6648)
    #dbg_value(ptr %i.g, !2489, !DIExpression(), !6650)
    #dbg_value(ptr %i.g, !6776, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6616)
  %i.h = load i8, ptr %i.g, align 1, !dbg !6819, !noalias !6787, !noundef !975 ; 3 uses
    #dbg_value(i8 %i.h, !6767, !DIExpression(), !6654)
    #dbg_value(i8 %i.h, !6785, !DIExpression(), !6623)
    #dbg_value(i8 %i.h, !6791, !DIExpression(), !6657)
    #dbg_value(i8 %i.h, !6788, !DIExpression(), !6659)
  %i.i = and i8 %i.h, 31, !dbg !6820
  %i.j = zext nneg i8 %i.i to i32, !dbg !6820
    #dbg_value(i32 %i.j, !6766, !DIExpression(), !6660)
    #dbg_value(i32 %i.j, !6789, !DIExpression(), !6662)
    #dbg_value(i32 %i.j, !6789, !DIExpression(), !6659)
    #dbg_value(i32 %i.j, !6789, !DIExpression(), !6646)
  %i.k = icmp slt i8 %i.h, -64, !dbg !6821
  br i1 %i.k, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit32.i.i.i, label %bb.d, !dbg !6822

.thread.i:                                        ; preds = %bb.b
  %i.l = zext nneg i8 %i.d to i32, !dbg !6823
end_hunk_0
begin_hunk_1_@_RNvYINtNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmt7AdapterINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtBb_3fmt5Write10write_charCs5yXxDE1DkoT_4tera:bb.a
bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64, !dbg !23020
  store i8 %i.s, ptr %i.a, align 4, !dbg !23020, !alias.scope !23004
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !23021
  store i8 %i.f, ptr %i.t, align 1, !dbg !23022, !alias.scope !23004
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit, !dbg !23023

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536, !dbg !23009
  br i1 %i.u, label %bb.f, label %bb.g, !dbg !23024

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32, !dbg !23025
  store i8 %i.v, ptr %i.a, align 4, !dbg !23025, !alias.scope !23004
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !23026
  store i8 %i.j, ptr %i.w, align 1, !dbg !23027, !alias.scope !23004
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2, !dbg !23028
  store i8 %i.f, ptr %i.x, align 2, !dbg !23029, !alias.scope !23004
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit, !dbg !23023

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !dbg !23030, !alias.scope !23004
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !23031
  store i8 %i.n, ptr %i.y, align 1, !dbg !23032, !alias.scope !23004
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2, !dbg !23033
  store i8 %i.j, ptr %i.z, align 2, !dbg !23034, !alias.scope !23004
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3, !dbg !23035
  store i8 %i.f, ptr %i.aa, align 1, !dbg !23036, !alias.scope !23004
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit, !dbg !23037

_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.09.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23005), !dbg !23038
    #dbg_value(ptr %0, !3639, !DIExpression(), !22989)
    #dbg_value(ptr %i.a, !3640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22989)
    #dbg_value(i64 %.sroa.0.09.i, !3640, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22989)
  %i.ab = load ptr, ptr %0, align 8, !dbg !23039, !alias.scope !23005, !noalias !23006, !nonnull !975, !align !2495, !noundef !975
    #dbg_value(ptr %i.ab, !3644, !DIExpression(), !22992)
    #dbg_value(ptr %i.a, !3650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22992)
    #dbg_value(i64 %.sroa.0.09.i, !3650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22992)
  call void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE17extend_from_sliceCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.09.i), !dbg !23040, !noalias !23005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23041
  ret i1 false, !dbg !23042
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmt7AdapterINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtBb_3fmt5Write9write_fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !23043 {
_RNvXs_NvNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtB4_12SpecWriteFmt14spec_write_fmtCs5yXxDE1DkoT_4tera.exit:
    #dbg_value(ptr %0, !23057, !DIExpression(), !23060)
    #dbg_value(ptr %1, !23058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23060)
    #dbg_value(ptr %2, !23058, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23060)
    #dbg_value(ptr %1, !23061, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23047)
    #dbg_value(ptr %2, !23061, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23047)
    #dbg_value(ptr %0, !23062, !DIExpression(), !23047)
    #dbg_value(ptr poison, !3693, !DIExpression(), !23049)
    #dbg_value(ptr poison, !3700, !DIExpression(), !23051)
    #dbg_value(ptr %2, !3702, !DIExpression(), !23052)
    #dbg_value(ptr poison, !3698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23053)
    #dbg_value(ptr %2, !3698, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !23053)
    #dbg_value(ptr poison, !3698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23053)
    #dbg_value(ptr %2, !3698, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !23053)
  %i.a = tail call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, ptr noundef nonnull %1, ptr noundef nonnull %2), !dbg !23067, !inline_history !23054
  ret i1 %i.a, !dbg !23068
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs5DvQZ7uvHZH_10serde_core6format3BufNtNtCsf3Ta7LF998c_4core3fmt5Write10write_charCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 !dbg !23069 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
    #dbg_value(ptr %0, !23099, !DIExpression(), !23102)
    #dbg_value(i32 %1, !23100, !DIExpression(), !23102)
    #dbg_value(i32 %1, !23103, !DIExpression(), !23107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23109
  store i32 0, ptr %i.a, align 4, !dbg !23109
    #dbg_value(ptr %i.a, !23104, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23107)
    #dbg_value(i64 4, !23104, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23107)
    #dbg_value(i32 %1, !3683, !DIExpression(), !23072)
    #dbg_value(i32 %1, !3689, !DIExpression(), !23074)
    #dbg_value(ptr %i.a, !3686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23072)
    #dbg_value(i64 4, !3686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23072)
  %i.b = icmp samesign ult i32 %1, 128, !dbg !23110
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !23110

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048, !dbg !23111
    #dbg_value(i64 poison, !3687, !DIExpression(), !23075)
    #dbg_value(i32 %1, !2572, !DIExpression(), !23077)
    #dbg_value(ptr %i.a, !2575, !DIExpression(), !23077)
    #dbg_value(ptr %i.a, !2582, !DIExpression(), !23079)
    #dbg_value(ptr %i.a, !2582, !DIExpression(), !23081)
    #dbg_value(ptr %i.a, !2582, !DIExpression(), !23083)
    #dbg_value(ptr %i.a, !2582, !DIExpression(), !23085)
    #dbg_value(ptr %i.a, !2582, !DIExpression(), !23087)
    #dbg_value(ptr %i.a, !2582, !DIExpression(), !23089)
    #dbg_value(i64 1, !2583, !DIExpression(), !23079)
    #dbg_value(i64 1, !2583, !DIExpression(), !23081)
    #dbg_value(i64 1, !2583, !DIExpression(), !23083)
    #dbg_value(i64 2, !2583, !DIExpression(), !23085)
    #dbg_value(i64 2, !2583, !DIExpression(), !23087)
    #dbg_value(i64 3, !2583, !DIExpression(), !23089)
    #dbg_value(i64 poison, !2576, !DIExpression(), !23090)
  %i.d = trunc i32 %1 to i8, !dbg !23112
  %i.e = and i8 %i.d, 63, !dbg !23112
  %i.f = or disjoint i8 %i.e, -128, !dbg !23112   ; 3 uses
    #dbg_value(i8 %i.f, !2577, !DIExpression(), !23091)
  %i.g = lshr i32 %1, 6, !dbg !23113
  %i.h = trunc i32 %i.g to i8, !dbg !23114        ; 2 uses
  %i.i = and i8 %i.h, 63, !dbg !23114
  %i.j = or disjoint i8 %i.i, -128, !dbg !23114   ; 2 uses
    #dbg_value(i8 %i.j, !2578, !DIExpression(), !23092)
  %i.k = lshr i32 %1, 12, !dbg !23115
  %i.l = trunc i32 %i.k to i8, !dbg !23116        ; 2 uses
  %i.m = and i8 %i.l, 63, !dbg !23116
  %i.n = or disjoint i8 %i.m, -128, !dbg !23116
    #dbg_value(i8 %i.n, !2579, !DIExpression(), !23093)
  %i.o = lshr i32 %1, 18, !dbg !23117
  %i.p = trunc nuw nsw i32 %i.o to i8, !dbg !23118
  %i.q = or disjoint i8 %i.p, -16, !dbg !23118
    #dbg_value(i8 %i.q, !2580, !DIExpression(), !23094)
  br i1 %i.c, label %bb.d, label %bb.e, !dbg !23119

bb.c:                                             ; preds = %bb.a
    #dbg_value(i64 1, !3687, !DIExpression(), !23075)
    #dbg_value(i32 %1, !2572, !DIExpression(), !23077)
    #dbg_value(ptr %i.a, !2575, !DIExpression(), !23077)
    #dbg_value(ptr %i.a, !2582, !DIExpression(), !23079)
    #dbg_value(ptr %i.a, !2582, !DIExpression(), !23081)
    #dbg_value(ptr %i.a, !2582, !DIExpression(), !23083)
    #dbg_value(ptr %i.a, !2582, !DIExpression(), !23085)
    #dbg_value(ptr %i.a, !2582, !DIExpression(), !23087)
    #dbg_value(ptr %i.a, !2582, !DIExpression(), !23089)
    #dbg_value(i64 1, !2583, !DIExpression(), !23079)
    #dbg_value(i64 1, !2583, !DIExpression(), !23081)
    #dbg_value(i64 1, !2583, !DIExpression(), !23083)
    #dbg_value(i64 2, !2583, !DIExpression(), !23085)
    #dbg_value(i64 2, !2583, !DIExpression(), !23087)
    #dbg_value(i64 3, !2583, !DIExpression(), !23089)
    #dbg_value(i64 1, !2576, !DIExpression(), !23090)
  %i.r = trunc nuw nsw i32 %1 to i8, !dbg !23120
  store i8 %i.r, ptr %i.a, align 4, !dbg !23120, !alias.scope !23108
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit, !dbg !23121

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64, !dbg !23122
  store i8 %i.s, ptr %i.a, align 4, !dbg !23122, !alias.scope !23108
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !23123
  store i8 %i.f, ptr %i.t, align 1, !dbg !23124, !alias.scope !23108
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit, !dbg !23125

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536, !dbg !23111
  br i1 %i.u, label %bb.f, label %bb.g, !dbg !23126

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32, !dbg !23127
  store i8 %i.v, ptr %i.a, align 4, !dbg !23127, !alias.scope !23108
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !23128
  store i8 %i.j, ptr %i.w, align 1, !dbg !23129, !alias.scope !23108
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2, !dbg !23130
  store i8 %i.f, ptr %i.x, align 2, !dbg !23131, !alias.scope !23108
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit, !dbg !23125

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !dbg !23132, !alias.scope !23108
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !23133
  store i8 %i.n, ptr %i.y, align 1, !dbg !23134, !alias.scope !23108
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2, !dbg !23135
  store i8 %i.j, ptr %i.z, align 2, !dbg !23136, !alias.scope !23108
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3, !dbg !23137
  store i8 %i.f, ptr %i.aa, align 1, !dbg !23138, !alias.scope !23108
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit, !dbg !23139

_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.09.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ab = call noundef zeroext i1 @_RNvXs_NtCs5DvQZ7uvHZH_10serde_core6formatNtB4_3BufNtNtCsf3Ta7LF998c_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.09.i), !dbg !23140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23141
  ret i1 %i.ab, !dbg !23142
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs5DvQZ7uvHZH_10serde_core6format3BufNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 !dbg !23143 {
_RNvXs_NvNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtQNtNtCs5DvQZ7uvHZH_10serde_core6format3BufNtB4_12SpecWriteFmt14spec_write_fmtCs5yXxDE1DkoT_4tera.exit:
    #dbg_value(ptr %0, !23157, !DIExpression(), !23160)
    #dbg_value(ptr %1, !23158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23160)
    #dbg_value(ptr %2, !23158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23160)
    #dbg_value(ptr %1, !23161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23147)
    #dbg_value(ptr %2, !23161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23147)
    #dbg_value(ptr %0, !23162, !DIExpression(), !23147)
    #dbg_value(ptr poison, !3693, !DIExpression(), !23149)
    #dbg_value(ptr poison, !3700, !DIExpression(), !23151)
    #dbg_value(ptr %2, !3702, !DIExpression(), !23152)
    #dbg_value(ptr poison, !3698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23153)
    #dbg_value(ptr %2, !3698, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !23153)
    #dbg_value(ptr poison, !3698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23153)
    #dbg_value(ptr %2, !3698, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !23153)
  %i.a = tail call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @66, ptr noundef nonnull %1, ptr noundef nonnull %2), !dbg !23167, !inline_history !23154
  ret i1 %i.a, !dbg !23168
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorNtNtCsf3Ta7LF998c_4core5error5Error11descriptionCs5yXxDE1DkoT_4tera(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 !dbg !23169 {
bb.a:
    #dbg_value(ptr poison, !23172, !DIExpression(), !23174)
  ret { ptr, i64 } { ptr @67, i64 40 }, !dbg !23175
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorNtNtCsf3Ta7LF998c_4core5error5Error6sourceCs5yXxDE1DkoT_4tera(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 !dbg !23182 {
bb.a:
    #dbg_value(ptr poison, !23198, !DIExpression(), !23200)
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !23201
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorNtNtCsf3Ta7LF998c_4core5error5Error7provideCs5yXxDE1DkoT_4tera(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #7 !dbg !23202 {
bb.a:
    #dbg_value(ptr poison, !23205, !DIExpression(), !23208)
    #dbg_value(ptr poison, !23206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23208)
    #dbg_value(ptr poison, !23206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23208)
  ret void, !dbg !23209
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorNtNtCsf3Ta7LF998c_4core5error5Error7type_idCs5yXxDE1DkoT_4tera(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 !dbg !23210 {
bb.a:
    #dbg_value(ptr poison, !23214, !DIExpression(), !23217)
    #dbg_declare(ptr poison, !23215, !DIExpression(), !23218)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @68, i64 16, i1 false), !dbg !23221
  ret void, !dbg !23222
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs5yXxDE1DkoT_4tera5value5utils21DeserializationFailedNtNtCs5DvQZ7uvHZH_10serde_core2de5Error12invalid_typeB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23248 {
_RINvXs3_NtNtCs5yXxDE1DkoT_4tera5value5utilsNtB6_21DeserializationFailedNtNtCs5DvQZ7uvHZH_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsEBa_.exit:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %3, ptr %i.c, align 8
    #dbg_declare(ptr %1, !23314, !DIExpression(), !23326)
    #dbg_declare(ptr %i.b, !23315, !DIExpression(), !23327)
    #dbg_value(ptr %1, !23316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23328)
    #dbg_value(ptr %i.b, !23316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23328)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23345
  store ptr %1, ptr %i.a, align 8, !dbg !23345
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !23345
  store ptr @_RNvXNtCs5DvQZ7uvHZH_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !23345
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !23345
  store ptr %i.b, ptr %i.d, align 8, !dbg !23345
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !23345
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRDNtNtCs5DvQZ7uvHZH_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCs5yXxDE1DkoT_4tera, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !23345
    #dbg_value(ptr @69, !23329, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23251)
    #dbg_value(ptr %i.a, !23329, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23251)
    #dbg_value(ptr poison, !23336, !DIExpression(), !23254)
    #dbg_value(ptr poison, !23340, !DIExpression(), !23257)
    #dbg_value(ptr @69, !23343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23260)
    #dbg_value(ptr %i.a, !23343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23260)
    #dbg_value(ptr poison, !2768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23262)
    #dbg_value(ptr %i.a, !2768, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !23262)
    #dbg_value(ptr poison, !2782, !DIExpression(), !23262)
    #dbg_declare(ptr poison, !2783, !DIExpression(), !23263)
    #dbg_value(ptr poison, !2786, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23265)
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @69, ptr noundef nonnull %i.a), !dbg !23346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23347
  ret void, !dbg !23348
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCs5yXxDE1DkoT_4tera(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #7 !dbg !23349 {
bb.a:
    #dbg_value(ptr poison, !23352, !DIExpression(), !23354)
  ret { ptr, i64 } { ptr @67, i64 40 }, !dbg !23355
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorNtNtB8_5error5Error7provideCs5yXxDE1DkoT_4tera(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #7 !dbg !23356 {
bb.a:
    #dbg_value(ptr poison, !23359, !DIExpression(), !23362)
    #dbg_value(ptr poison, !23360, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23362)
    #dbg_value(ptr poison, !23360, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23362)
  ret void, !dbg !23363
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorNtNtB8_5error5Error7type_idCs5yXxDE1DkoT_4tera(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 !dbg !23364 {
bb.a:
    #dbg_value(ptr poison, !23368, !DIExpression(), !23371)
    #dbg_declare(ptr poison, !23369, !DIExpression(), !23372)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @70, i64 16, i1 false), !dbg !23375
  ret void, !dbg !23376
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5yXxDE1DkoT_4tera6errors4NoteENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera6errors4NoteENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBK_5ValueEE16into_boxed_sliceBM_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB10_5ValueEEINtB2_12SpecFromIterBU_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterBW_B1A_EE9from_iterB12_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer6memstr(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsb_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CoweENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare { i64, i8 } @_RNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer8skip_tag(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer17find_start_marker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCsf3Ta7LF998c_4core3fmtcNtB5_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvXs2_NtNtCsf3Ta7LF998c_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #15

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre16trim_end_matchescECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef range(i32 0, 1114112)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #9

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsgCecv3eZDcN_5alloc6stringNtB5_13FromUtf8ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorNtNtCsf3Ta7LF998c_4core5error5Error5causeCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsf3Ta7LF998c_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera6errors4NoteE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5StateE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #18

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMsk_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impj4__fmt(i64 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsgCecv3eZDcN_5alloc5sliceSh6repeatCs5yXxDE1DkoT_4tera(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtNtB1B_7sources4once4OncejEINtNtB1z_3map3MapINtNtNtB1D_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEE9from_iterB3O_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtNtCs5Xr050g3D4S_3std3sys6random5linux19hashmap_random_keys() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

end_hunk_1
