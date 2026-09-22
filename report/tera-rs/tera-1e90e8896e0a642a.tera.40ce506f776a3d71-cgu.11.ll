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
  %i.a = ptrtoaddr ptr %0 to i64, !dbg !6555      ; 4 uses
  %i.b = ptrtoaddr ptr %1 to i64, !dbg !6555      ; 2 uses
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
  %i.c = icmp eq ptr %0, %1, !dbg !6556
  br i1 %i.c, label %._crit_edge13.i, label %iter.check, !dbg !6557

._crit_edge13.i:                                  ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val7.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !dbg !6558, !alias.scope !6464
  br label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldhuNCINvNvNtNtBP_8iterator8Iterator8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3m_3VechE14extend_trustedINtB1T_6CopiedINtNtB1V_3rev3RevB3_EEE0E0E0ECs5yXxDE1DkoT_4tera.exit, !dbg !6557

iter.check:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !6474, !noundef !975 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.promoted.i = load i64, ptr %i.f, align 8, !alias.scope !6474 ; 8 uses
  %i.g = sub i64 %i.b, %i.a, !dbg !6557           ; 7 uses
  %min.iters.check = icmp ult i64 %i.g, 8, !dbg !6557
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !6557

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr nuw i8, ptr %i.e, i64 %.promoted.i, !dbg !6557
  %i.h = add i64 %.promoted.i, %i.b, !dbg !6557
  %i.i = sub i64 %i.h, %i.a, !dbg !6557
  %scevgep2 = getelementptr i8, ptr %i.e, i64 %i.i, !dbg !6557
  %bound0 = icmp ult ptr %scevgep, %1, !dbg !6557
  %bound1 = icmp ult ptr %0, %scevgep2, !dbg !6557
  %found.conflict = and i1 %bound0, %bound1, !dbg !6557
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.g, 32, !dbg !6557
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !6557

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.g, 24
  %n.vec = and i64 %i.g, -32                      ; 5 uses
  %i.k = add i64 %.promoted.i, %n.vec             ; 2 uses
  %i.l = sub i64 0, %n.vec
  %i.m = getelementptr i8, ptr %1, i64 %i.l
  %i.n = getelementptr i8, ptr %i.e, i64 %.promoted.i
  br label %vector.body, !dbg !6557

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %1, i64 %i.o  ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %next.gep, i64 -16, !dbg !6559
  %i.q = getelementptr inbounds i8, ptr %next.gep, i64 -32, !dbg !6559
  %wide.load = load <16 x i8>, ptr %i.p, align 1, !dbg !6559, !alias.scope !6475, !noalias !6464
  %wide.load5 = load <16 x i8>, ptr %i.q, align 1, !dbg !6559, !alias.scope !6475, !noalias !6464
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !6559
  %reverse6 = shufflevector <16 x i8> %wide.load5, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !6559
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6476), !dbg !6559
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6477), !dbg !6560
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6489), !dbg !6561
  %i.r = getelementptr i8, ptr %i.n, i64 %index, !dbg !6562 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !6563
  store <16 x i8> %reverse, ptr %i.r, align 1, !dbg !6563, !alias.scope !6514, !noalias !6515
  store <16 x i8> %reverse6, ptr %i.s, align 1, !dbg !6563, !alias.scope !6514, !noalias !6515
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec, !dbg !6557
  br i1 %i.t, label %middle.block, label %vector.body, !dbg !6557, !llvm.loop !6394

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec, !dbg !6557
  br i1 %cmp.n, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldhuNCINvNvNtNtBP_8iterator8Iterator8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3m_3VechE14extend_trustedINtB1T_6CopiedINtNtB1V_3rev3RevB3_EEE0E0E0ECs5yXxDE1DkoT_4tera.exit, label %vec.epilog.iter.check, !dbg !6557

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !6518

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %i.g, -8                      ; 4 uses
  %i.u = add i64 %.promoted.i, %n.vec8            ; 2 uses
  %i.v = sub i64 0, %n.vec8
  %i.w = getelementptr i8, ptr %1, i64 %i.v
  %i.x = getelementptr i8, ptr %i.e, i64 %.promoted.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 3 uses
  %i.y = sub i64 0, %index9
  %next.gep10 = getelementptr i8, ptr %1, i64 %i.y
  %i.z = getelementptr inbounds i8, ptr %next.gep10, i64 -8, !dbg !6559
  %wide.load11 = load <8 x i8>, ptr %i.z, align 1, !dbg !6559, !alias.scope !6475, !noalias !6464
  %reverse12 = shufflevector <8 x i8> %wide.load11, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !6559
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6476), !dbg !6559
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6477), !dbg !6560
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6489), !dbg !6561
  %i.aa = getelementptr i8, ptr %i.x, i64 %index9, !dbg !6562
  store <8 x i8> %reverse12, ptr %i.aa, align 1, !dbg !6563, !alias.scope !6514, !noalias !6515
  %index.next13 = add nuw i64 %index9, 8          ; 2 uses
  %i.ab = icmp eq i64 %index.next13, %n.vec8, !dbg !6557
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !6557, !llvm.loop !6395

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %i.g, %n.vec8, !dbg !6557
  br i1 %cmp.n14, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldhuNCINvNvNtNtBP_8iterator8Iterator8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3m_3VechE14extend_trustedINtB1T_6CopiedINtNtB1V_3rev3RevB3_EEE0E0E0ECs5yXxDE1DkoT_4tera.exit, label %vec.epilog.scalar.ph.preheader, !dbg !6557

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.promoted.i, %iter.check ], [ %.promoted.i, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.2.012.i.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.m, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.2.012.i.ph17 = ptrtoaddr ptr %.sroa.2.012.i.ph to i64, !dbg !6557 ; 2 uses
  %i.ac = sub i64 %.sroa.2.012.i.ph17, %i.a, !dbg !6557
  %xtraiter = and i64 %i.ac, 3, !dbg !6557        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !6557
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !6557

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.ad = phi i64 [ %i.ag, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !6564 ; 2 uses
  %.sroa.2.012.i.prol = phi ptr [ %i.ae, %vec.epilog.scalar.ph.prol ], [ %.sroa.2.012.i.ph, %vec.epilog.scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
    #dbg_value(ptr %.sroa.2.012.i.prol, !6467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6360)
    #dbg_value(ptr undef, !2479, !DIExpression(), !6396)
    #dbg_value(ptr %.sroa.2.012.i.prol, !2483, !DIExpression(), !6370)
    #dbg_value(ptr %.sroa.2.012.i.prol, !2489, !DIExpression(), !6372)
  %i.ae = getelementptr inbounds i8, ptr %.sroa.2.012.i.prol, i64 -1, !dbg !6564 ; 3 uses
    #dbg_value(ptr %i.ae, !2483, !DIExpression(), !6370)
    #dbg_value(ptr %i.ae, !2489, !DIExpression(), !6372)
    #dbg_value(ptr %i.ae, !6467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6360)
    #dbg_value(ptr %i.ae, !6471, !DIExpression(), !6397)
  %.val8.i.prol = load i8, ptr %i.ae, align 1, !dbg !6559, !noalias !6464, !noundef !975
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
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ad, !dbg !6562
  store i8 %.val8.i.prol, ptr %i.af, align 1, !dbg !6563, !noalias !6474
  %i.ag = add i64 %i.ad, 1, !dbg !6565            ; 3 uses
    #dbg_value(ptr undef, !2460, !DIExpression(), !6364)
    #dbg_value(ptr undef, !2468, !DIExpression(), !6366)
    #dbg_value(ptr undef, !2473, !DIExpression(), !6368)
    #dbg_value(i64 1, !2477, !DIExpression(), !6368)
    #dbg_value(i64 1, !2481, !DIExpression(), !6370)
    #dbg_value(i64 -1, !2485, !DIExpression(), !6372)
    #dbg_value(ptr %i.ae, !2462, !DIExpression(), !6406)
    #dbg_value(ptr undef, !2456, !DIExpression(), !6359)
    #dbg_value(ptr poison, !2457, !DIExpression(), !6407)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !6557 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !6557
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !6557, !llvm.loop !6408

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ag, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ag, %vec.epilog.scalar.ph.prol ]
  %.sroa.2.012.i.unr = phi ptr [ %.sroa.2.012.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ae, %vec.epilog.scalar.ph.prol ]
  %i.ah = sub i64 %i.a, %.sroa.2.012.i.ph17, !dbg !6557
  %i.ai = icmp ugt i64 %i.ah, -4, !dbg !6557
  br i1 %i.ai, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldhuNCINvNvNtNtBP_8iterator8Iterator8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3m_3VechE14extend_trustedINtB1T_6CopiedINtNtB1V_3rev3RevB3_EEE0E0E0ECs5yXxDE1DkoT_4tera.exit, label %vec.epilog.scalar.ph, !dbg !6557

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.aj = phi i64 [ %i.av, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !6564 ; 5 uses
  %.sroa.2.012.i = phi ptr [ %i.as, %vec.epilog.scalar.ph ], [ %.sroa.2.012.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
    #dbg_value(ptr %.sroa.2.012.i, !6467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6360)
    #dbg_value(ptr undef, !2479, !DIExpression(), !6396)
    #dbg_value(ptr %.sroa.2.012.i, !2483, !DIExpression(), !6370)
    #dbg_value(ptr %.sroa.2.012.i, !2489, !DIExpression(), !6372)
  %i.ak = getelementptr inbounds i8, ptr %.sroa.2.012.i, i64 -1, !dbg !6564
    #dbg_value(ptr %i.ak, !2483, !DIExpression(), !6370)
    #dbg_value(ptr %i.ak, !2489, !DIExpression(), !6372)
    #dbg_value(ptr %i.ak, !6467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6360)
    #dbg_value(ptr %i.ak, !6471, !DIExpression(), !6397)
  %.val8.i = load i8, ptr %i.ak, align 1, !dbg !6559, !noalias !6464, !noundef !975
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
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aj, !dbg !6562
  store i8 %.val8.i, ptr %i.al, align 1, !dbg !6563, !noalias !6474
    #dbg_value(ptr undef, !2460, !DIExpression(), !6364)
    #dbg_value(ptr undef, !2468, !DIExpression(), !6366)
    #dbg_value(ptr undef, !2473, !DIExpression(), !6368)
    #dbg_value(i64 1, !2477, !DIExpression(), !6368)
    #dbg_value(i64 1, !2481, !DIExpression(), !6370)
    #dbg_value(i64 -1, !2485, !DIExpression(), !6372)
    #dbg_value(ptr %i.ak, !2462, !DIExpression(), !6406)
    #dbg_value(ptr undef, !2456, !DIExpression(), !6359)
    #dbg_value(ptr poison, !2457, !DIExpression(), !6407)
  %i.am = getelementptr inbounds i8, ptr %.sroa.2.012.i, i64 -2, !dbg !6564
    #dbg_value(ptr %i.am, !2483, !DIExpression(), !6370)
    #dbg_value(ptr %i.am, !2489, !DIExpression(), !6372)
    #dbg_value(ptr %i.am, !6467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6360)
    #dbg_value(ptr %i.am, !6471, !DIExpression(), !6397)
end_hunk_0
begin_hunk_1_@_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3revINtB5_3RevNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB2y_6StringINtNtB1p_7collect6ExtendcE6extendBM_E0E0ECs5yXxDE1DkoT_4tera:bb.a
    #dbg_value(i32 %i.s, !6789, !DIExpression(), !6646)
  %i.t = icmp slt i8 %i.q, -64, !dbg !6833
  br i1 %i.t, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit34.i.i.i, label %bb.c, !dbg !6834

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit34.i.i.i: ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit32.i.i.i
    #dbg_value(ptr undef, !2460, !DIExpression(), !6596)
    #dbg_value(ptr undef, !2468, !DIExpression(), !6595)
    #dbg_value(ptr undef, !2473, !DIExpression(), !6594)
    #dbg_value(i64 1, !2477, !DIExpression(), !6594)
    #dbg_value(i64 1, !2481, !DIExpression(), !6698)
    #dbg_value(i64 -1, !2485, !DIExpression(), !6700)
    #dbg_value(ptr %i.p, !2462, !DIExpression(), !6701)
    #dbg_value(ptr undef, !2456, !DIExpression(), !6591)
    #dbg_value(ptr poison, !2457, !DIExpression(), !6702)
  %i.u = icmp ne ptr %0, %i.p, !dbg !6835
  tail call void @llvm.assume(i1 %i.u), !dbg !6836
    #dbg_value(ptr undef, !2479, !DIExpression(), !6703)
    #dbg_value(ptr %i.p, !2483, !DIExpression(), !6698)
    #dbg_value(ptr %i.p, !2489, !DIExpression(), !6700)
  %i.v = getelementptr inbounds i8, ptr %.sroa.2.016.i, i64 -4, !dbg !6837 ; 2 uses
    #dbg_value(ptr %i.v, !2483, !DIExpression(), !6698)
    #dbg_value(ptr %i.v, !2489, !DIExpression(), !6700)
    #dbg_value(ptr %i.v, !6776, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6616)
  %i.w = load i8, ptr %i.v, align 1, !dbg !6838, !noalias !6787, !noundef !975
    #dbg_value(i8 %i.w, !6769, !DIExpression(), !6704)
    #dbg_value(i8 %i.w, !6785, !DIExpression(), !6627)
  %i.x = and i8 %i.w, 7, !dbg !6839
  %i.y = zext nneg i8 %i.x to i32, !dbg !6839
    #dbg_value(i32 %i.y, !6766, !DIExpression(), !6660)
    #dbg_value(i32 %i.y, !6789, !DIExpression(), !6662)
    #dbg_value(i32 %i.y, !6789, !DIExpression(), !6659)
    #dbg_value(i32 %i.y, !6789, !DIExpression(), !6646)
  %i.z = shl nuw nsw i32 %i.y, 6, !dbg !6840
  %i.aa = and i8 %i.q, 63, !dbg !6841
  %i.ab = zext nneg i8 %i.aa to i32, !dbg !6841
  %i.ac = or disjoint i32 %i.z, %i.ab, !dbg !6840
    #dbg_value(i32 %i.ac, !6766, !DIExpression(), !6660)
    #dbg_value(i32 %i.ac, !6789, !DIExpression(), !6662)
    #dbg_value(i32 %i.ac, !6789, !DIExpression(), !6659)
    #dbg_value(i32 %i.ac, !6789, !DIExpression(), !6646)
  br label %bb.c, !dbg !6842

bb.c:                                             ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit34.i.i.i, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit32.i.i.i
  %.sroa.2.2.i = phi ptr [ %i.v, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit34.i.i.i ], [ %i.p, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit32.i.i.i ], !dbg !6843
  %.sroa.010.1.i.i.i = phi i32 [ %i.ac, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit34.i.i.i ], [ %i.s, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit32.i.i.i ], !dbg !6844
    #dbg_value(ptr %.sroa.2.2.i, !6776, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6616)
    #dbg_value(i32 %.sroa.010.1.i.i.i, !6789, !DIExpression(), !6662)
    #dbg_value(i32 %.sroa.010.1.i.i.i, !6766, !DIExpression(), !6660)
  %i.ad = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6, !dbg !6845
  %i.ae = and i8 %i.h, 63, !dbg !6846
  %i.af = zext nneg i8 %i.ae to i32, !dbg !6846
  %i.ag = or disjoint i32 %i.ad, %i.af, !dbg !6845
    #dbg_value(i32 %i.ag, !6766, !DIExpression(), !6660)
    #dbg_value(i32 %i.ag, !6789, !DIExpression(), !6662)
    #dbg_value(i32 %i.ag, !6789, !DIExpression(), !6659)
    #dbg_value(i32 %i.ag, !6789, !DIExpression(), !6646)
  br label %bb.d, !dbg !6847

bb.d:                                             ; preds = %bb.c, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit30.i.i.i
  %.sroa.2.1.i = phi ptr [ %.sroa.2.2.i, %bb.c ], [ %i.g, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit30.i.i.i ], !dbg !6848 ; 4 uses
  %.sroa.010.0.i.i.i = phi i32 [ %i.ag, %bb.c ], [ %i.j, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit30.i.i.i ], !dbg !6849 ; 7 uses
    #dbg_value(ptr %.sroa.2.1.i, !6776, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6616)
    #dbg_value(i32 %.sroa.010.0.i.i.i, !6789, !DIExpression(), !6662)
    #dbg_value(i32 %.sroa.010.0.i.i.i, !6766, !DIExpression(), !6660)
  %i.ah = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6, !dbg !6850
  %i.ai = and i8 %i.d, 63, !dbg !6851             ; 2 uses
  %i.aj = zext nneg i8 %i.ai to i32, !dbg !6851
  %i.ak = or disjoint i32 %i.ah, %i.aj, !dbg !6850
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !6766, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6660)
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !6789, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6662)
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !6789, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6659)
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !6789, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6646)
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !6780, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6663)
    #dbg_value(ptr poison, !6793, !DIExpression(DW_OP_deref), !6666)
    #dbg_declare(ptr poison, !6798, !DIExpression(), !6667)
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !6797, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6666)
    #dbg_value(ptr poison, !6802, !DIExpression(DW_OP_deref), !6670)
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !6806, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6670)
    #dbg_value(ptr %2, !2518, !DIExpression(), !6672)
    #dbg_value(ptr %2, !2526, !DIExpression(), !6674)
    #dbg_value(ptr %2, !2531, !DIExpression(), !6676)
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !2522, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6672)
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !2538, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6678)
  %i.al = load i64, ptr %i.a, align 8, !dbg !6824, !alias.scope !6810, !noundef !975 ; 6 uses
    #dbg_value(i64 %i.al, !2523, !DIExpression(), !6682)
    #dbg_value(i64 %i.al, !2549, !DIExpression(), !6684)
  %i.am = icmp sgt i64 %i.al, -1, !dbg !6825
  tail call void @llvm.assume(i1 %i.am), !dbg !6826
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !2552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6686)
  %i.an = icmp samesign ult i32 %.sroa.010.0.i.i.i, 2, !dbg !6827
  br i1 %i.an, label %bb.f, label %bb.e, !dbg !6827

bb.e:                                             ; preds = %bb.d
  %i.ao = icmp samesign ult i32 %.sroa.010.0.i.i.i, 32, !dbg !6852 ; 2 uses
  %i.ap = icmp samesign ult i32 %.sroa.010.0.i.i.i, 1024, !dbg !6852 ; 2 uses
  %..i.i.i.i = select i1 %i.ap, i64 3, i64 4, !dbg !6852
  %.sroa.0.0.ph.i.i.i.i = select i1 %i.ao, i64 2, i64 %..i.i.i.i, !dbg !6852
    #dbg_value(i64 %.sroa.0.0.ph.i.i.i.i, !2524, !DIExpression(), !6711)
    #dbg_value(i64 %.sroa.0.0.ph.i.i.i.i, !2535, !DIExpression(), !6676)
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.sroa.0.0.ph.i.i.i.i), !dbg !6853
    #dbg_value(ptr %2, !2556, !DIExpression(), !6713)
  %i.aq = load ptr, ptr %i.b, align 8, !dbg !6854, !alias.scope !6810, !nonnull !975, !noundef !975
    #dbg_value(ptr %i.aq, !2550, !DIExpression(), !6684)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.al, !dbg !6855 ; 9 uses
    #dbg_value(!DIArgList(i32 %i.ah, i32 %i.aj), !2572, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !6718)
    #dbg_value(ptr %i.ar, !2575, !DIExpression(), !6718)
    #dbg_value(ptr %i.ar, !2582, !DIExpression(), !6720)
    #dbg_value(ptr %i.ar, !2582, !DIExpression(), !6722)
    #dbg_value(ptr %i.ar, !2582, !DIExpression(), !6724)
    #dbg_value(ptr %i.ar, !2582, !DIExpression(), !6726)
    #dbg_value(ptr %i.ar, !2582, !DIExpression(), !6728)
    #dbg_value(ptr %i.ar, !2582, !DIExpression(), !6730)
    #dbg_value(i64 1, !2583, !DIExpression(), !6720)
    #dbg_value(i64 1, !2583, !DIExpression(), !6722)
    #dbg_value(i64 1, !2583, !DIExpression(), !6724)
    #dbg_value(i64 2, !2583, !DIExpression(), !6726)
    #dbg_value(i64 2, !2583, !DIExpression(), !6728)
    #dbg_value(i64 3, !2583, !DIExpression(), !6730)
    #dbg_value(i64 poison, !2576, !DIExpression(), !6731)
  %i.as = or disjoint i8 %i.ai, -128, !dbg !6856  ; 3 uses
    #dbg_value(i8 %i.as, !2577, !DIExpression(), !6732)
  %i.at = trunc i32 %.sroa.010.0.i.i.i to i8, !dbg !6857 ; 2 uses
  %i.au = and i8 %i.at, 63, !dbg !6857
  %i.av = or disjoint i8 %i.au, -128, !dbg !6857  ; 2 uses
    #dbg_value(i8 %i.av, !2578, !DIExpression(), !6733)
  %i.aw = lshr i32 %.sroa.010.0.i.i.i, 6, !dbg !6858
  %i.ax = trunc i32 %i.aw to i8, !dbg !6859       ; 2 uses
  %i.ay = and i8 %i.ax, 63, !dbg !6859
  %i.az = or disjoint i8 %i.ay, -128, !dbg !6859
    #dbg_value(i8 %i.az, !2579, !DIExpression(), !6734)
  %i.ba = lshr i32 %.sroa.010.0.i.i.i, 12, !dbg !6860
  %i.bb = trunc nuw nsw i32 %i.ba to i8, !dbg !6861
  %i.bc = or disjoint i8 %i.bb, -16, !dbg !6861
    #dbg_value(i8 %i.bc, !2580, !DIExpression(), !6735)
  br i1 %i.ao, label %bb.g, label %bb.h, !dbg !6862

bb.f:                                             ; preds = %bb.d, %.thread.i
  %i.bd = phi i64 [ %i.m, %.thread.i ], [ %i.al, %bb.d ] ; 2 uses
  %spec.select.i.ph14.i = phi i32 [ %i.l, %.thread.i ], [ %i.ak, %bb.d ]
  %.sroa.2.3.ph13.i = phi ptr [ %i.c, %.thread.i ], [ %.sroa.2.1.i, %bb.d ]
    #dbg_value(i64 1, !2524, !DIExpression(), !6711)
    #dbg_value(i64 1, !2535, !DIExpression(), !6676)
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1), !dbg !6853
    #dbg_value(ptr %2, !2556, !DIExpression(), !6713)
  %i.be = load ptr, ptr %i.b, align 8, !dbg !6854, !alias.scope !6810, !nonnull !975, !noundef !975
    #dbg_value(ptr %i.be, !2550, !DIExpression(), !6684)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd, !dbg !6855
    #dbg_value(i32 %spec.select.i.ph14.i, !2572, !DIExpression(), !6718)
    #dbg_value(ptr %i.bf, !2575, !DIExpression(), !6718)
    #dbg_value(ptr %i.bf, !2582, !DIExpression(), !6720)
    #dbg_value(ptr %i.bf, !2582, !DIExpression(), !6722)
    #dbg_value(ptr %i.bf, !2582, !DIExpression(), !6724)
    #dbg_value(ptr %i.bf, !2582, !DIExpression(), !6726)
    #dbg_value(ptr %i.bf, !2582, !DIExpression(), !6728)
    #dbg_value(ptr %i.bf, !2582, !DIExpression(), !6730)
    #dbg_value(i64 1, !2583, !DIExpression(), !6720)
    #dbg_value(i64 1, !2583, !DIExpression(), !6722)
    #dbg_value(i64 1, !2583, !DIExpression(), !6724)
    #dbg_value(i64 2, !2583, !DIExpression(), !6726)
    #dbg_value(i64 2, !2583, !DIExpression(), !6728)
    #dbg_value(i64 3, !2583, !DIExpression(), !6730)
    #dbg_value(i64 1, !2576, !DIExpression(), !6731)
  %i.bg = trunc nuw nsw i32 %spec.select.i.ph14.i to i8, !dbg !6863
  store i8 %i.bg, ptr %i.bf, align 1, !dbg !6863
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs5yXxDE1DkoT_4tera.exit.i, !dbg !6864

bb.g:                                             ; preds = %bb.e
  %i.bh = or disjoint i8 %i.at, -64, !dbg !6865
  store i8 %i.bh, ptr %i.ar, align 1, !dbg !6865
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 1, !dbg !6866
  store i8 %i.as, ptr %i.bi, align 1, !dbg !6867
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs5yXxDE1DkoT_4tera.exit.i, !dbg !6868

bb.h:                                             ; preds = %bb.e
  br i1 %i.ap, label %bb.i, label %bb.j, !dbg !6869

bb.i:                                             ; preds = %bb.h
  %i.bj = or disjoint i8 %i.ax, -32, !dbg !6870
  store i8 %i.bj, ptr %i.ar, align 1, !dbg !6870
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 1, !dbg !6871
  store i8 %i.av, ptr %i.bk, align 1, !dbg !6872
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 2, !dbg !6873
  store i8 %i.as, ptr %i.bl, align 1, !dbg !6874
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs5yXxDE1DkoT_4tera.exit.i, !dbg !6868

bb.j:                                             ; preds = %bb.h
  store i8 %i.bc, ptr %i.ar, align 1, !dbg !6875
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 1, !dbg !6876
  store i8 %i.az, ptr %i.bm, align 1, !dbg !6877
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 2, !dbg !6878
  store i8 %i.av, ptr %i.bn, align 1, !dbg !6879
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 3, !dbg !6880
  store i8 %i.as, ptr %i.bo, align 1, !dbg !6881
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs5yXxDE1DkoT_4tera.exit.i, !dbg !6882

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %i.bp = phi i64 [ %i.bd, %bb.f ], [ %i.al, %bb.g ], [ %i.al, %bb.i ], [ %i.al, %bb.j ]
  %.sroa.2.3.ph12.i = phi ptr [ %.sroa.2.3.ph13.i, %bb.f ], [ %.sroa.2.1.i, %bb.g ], [ %.sroa.2.1.i, %bb.i ], [ %.sroa.2.1.i, %bb.j ] ; 3 uses
  %.sroa.0.011.i.i.i.i = phi i64 [ 1, %bb.f ], [ 2, %bb.g ], [ 3, %bb.i ], [ 4, %bb.j ]
    #dbg_value(ptr %2, !2587, !DIExpression(), !6737)
  %3 = add nuw i64 %.sroa.0.011.i.i.i.i, %i.bp, !dbg !6883
    #dbg_value(i64 %3, !2591, !DIExpression(), !6738)
  store i64 %3, ptr %i.a, align 8, !dbg !6884, !alias.scope !6810
    #dbg_value(ptr %.sroa.2.3.ph12.i, !6776, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6616)
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.3.ph12.i) ]
    #dbg_value(ptr %.sroa.2.3.ph12.i, !2462, !DIExpression(), !6739)
    #dbg_value(ptr undef, !2456, !DIExpression(), !6615)
    #dbg_value(ptr poison, !2457, !DIExpression(), !6740)
  %.not.i.i = icmp eq ptr %0, %.sroa.2.3.ph12.i, !dbg !6812
  br i1 %.not.i.i, label %_RINvYNtNtNtCsf3Ta7LF998c_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtBL_8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB2E_6StringINtNtBL_7collect6ExtendcE6extendINtNtNtBN_8adapters3rev3RevB3_EE0E0ECs5yXxDE1DkoT_4tera.exit, label %bb.b, !dbg !6813

_RINvYNtNtNtCsf3Ta7LF998c_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtBL_8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB2E_6StringINtNtBL_7collect6ExtendcE6extendINtNtNtBN_8adapters3rev3RevB3_EE0E0ECs5yXxDE1DkoT_4tera.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtBc_8adapters3rev3RevNtNtNtBe_3str4iter5CharsEE0E0Cs5yXxDE1DkoT_4tera.exit.i, %bb.a
    #dbg_value(ptr poison, !6776, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6616)
  ret void, !dbg !6885
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBW_5ValueEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterBS_B1w_EEBY_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0) unnamed_addr #1 !dbg !6897 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
    #dbg_declare(ptr %0, !6961, !DIExpression(), !6965)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6999
    #dbg_declare(ptr %0, !6967, !DIExpression(), !6900)
    #dbg_declare(ptr %0, !6974, !DIExpression(), !6908)
    #dbg_declare(ptr %0, !6993, !DIExpression(), !6911)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7000, !noalias !6995
    #dbg_declare(ptr %0, !6967, !DIExpression(), !6919)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i64 40, i1 false), !dbg !7001, !alias.scope !6996, !noalias !6997
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtB10_5ValueEEINtB2_12SpecFromIterBU_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterBW_B1A_EE9from_iterB12_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !dbg !7002, !noalias !6998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7003, !noalias !6995
  %i.c = call { ptr, i64 } @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTRNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyRNtBK_5ValueEE16into_boxed_sliceBM_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !7004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7005
  ret { ptr, i64 } %i.c, !dbg !7006
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsu_NtCsf3Ta7LF998c_4core4charNtB6_11ToUppercaseNtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvBO_8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB27_6StringINtNtBS_7collect6ExtendcE6extendBw_E0E0ECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !7017 {
bb.a:
    #dbg_declare(ptr %0, !7186, !DIExpression(), !7192)
    #dbg_declare(ptr poison, !7187, !DIExpression(), !7193)
    #dbg_declare(ptr poison, !7194, !DIExpression(), !7202)
    #dbg_value(ptr %1, !7188, !DIExpression(), !7203)
    #dbg_value(ptr %1, !7199, !DIExpression(), !7204)
    #dbg_declare(ptr %0, !7198, !DIExpression(), !7205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7206), !dbg !7370
    #dbg_declare(ptr %0, !7208, !DIExpression(), !7023)
    #dbg_declare(ptr poison, !7212, !DIExpression(), !7024)
    #dbg_declare(ptr poison, !7217, !DIExpression(), !7029)
    #dbg_declare(ptr poison, !7236, !DIExpression(), !7036)
    #dbg_value(ptr %1, !7213, !DIExpression(), !7037)
    #dbg_value(ptr %1, !7234, !DIExpression(), !7038)
    #dbg_value(ptr %0, !7233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7038)
    #dbg_value(ptr %0, !7247, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7039)
    #dbg_value(i64 3, !7233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7038)
    #dbg_value(i64 3, !7247, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7039)
    #dbg_value(ptr %1, !7248, !DIExpression(), !7039)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7371
    #dbg_value(ptr %i.a, !7249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7040)
    #dbg_value(i64 3, !7249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7040)
    #dbg_value(ptr %i.a, !7256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7049)
    #dbg_value(i64 3, !7256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7049)
    #dbg_value(ptr %1, !7256, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7275), !dbg !7372
    #dbg_value(ptr %0, !7266, !DIExpression(), !7052)
    #dbg_value(ptr %0, !7276, !DIExpression(), !7055)
    #dbg_value(ptr %0, !7282, !DIExpression(), !7059)
    #dbg_declare(ptr poison, !7267, !DIExpression(), !7060)
    #dbg_value(i64 1, !7288, !DIExpression(), !7063)
  %i.b = load i64, ptr %0, align 8, !dbg !7373, !alias.scope !7291, !noalias !7292, !noundef !975 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7374
  %i.d = load i64, ptr %i.c, align 8, !dbg !7374, !alias.scope !7291, !noalias !7292, !noundef !975 ; 3 uses
  %i.e = icmp ule i64 %i.b, %i.d, !dbg !7373
    #dbg_value(i1 true, !7293, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7067)
  tail call void @llvm.assume(i1 %i.e), !dbg !7375
  %.not5.i.i = icmp eq i64 %i.b, %i.d, !dbg !7376
  br i1 %.not5.i.i, label %_RINvXs3_NtNtCsf3Ta7LF998c_4core5array4iterINtB6_8IntoItercKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBZ_8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB2i_6StringINtNtB13_7collect6ExtendcE6extendNtNtBa_4char11ToUppercaseE0E0ECs5yXxDE1DkoT_4tera.exit, label %.lr.ph.i.i, !dbg !7376

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre.i.i = load i64, ptr %i.f, align 8, !dbg !7377, !alias.scope !7295, !noalias !7296
  br label %bb.b, !dbg !7376

bb.b:                                             ; preds = %_RNCINvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB4r_6StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs5yXxDE1DkoT_4tera.exit.i.i, %.lr.ph.i.i
  %i.h = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.ar, %_RNCINvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB4r_6StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs5yXxDE1DkoT_4tera.exit.i.i ], !dbg !7377 ; 3 uses
  %i.i = phi i64 [ %i.b, %.lr.ph.i.i ], [ %i.j, %_RNCINvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB4r_6StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs5yXxDE1DkoT_4tera.exit.i.i ] ; 3 uses
    #dbg_value(i64 %i.i, !7268, !DIExpression(), !7084)
    #dbg_value(i64 %i.i, !7286, !DIExpression(), !7085)
    #dbg_value(i64 %i.i, !7289, !DIExpression(), !7063)
  %i.j = add nuw nsw i64 %i.i, 1, !dbg !7378      ; 2 uses
    #dbg_value(ptr poison, !7330, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !7086)
    #dbg_value(ptr poison, !7331, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !7086)
    #dbg_declare(ptr poison, !7328, !DIExpression(), !7087)
    #dbg_value(i64 %i.i, !7329, !DIExpression(), !7086)
    #dbg_value(i64 %i.i, !7334, !DIExpression(), !7091)
    #dbg_value(i64 %i.i, !7345, !DIExpression(), !7095)
    #dbg_value(ptr %i.a, !7341, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7091)
    #dbg_value(ptr %i.a, !7352, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7095)
    #dbg_value(i64 3, !7341, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7091)
    #dbg_value(i64 3, !7352, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7095)
  %i.k = icmp ult i64 %i.i, 3, !dbg !7379
  tail call void @llvm.assume(i1 %i.k), !dbg !7380
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.i, !dbg !7381
    #dbg_value(ptr %i.l, !7356, !DIExpression(), !7098)
    #dbg_value(ptr %i.l, !7362, !DIExpression(), !7101)
    #dbg_value(ptr %i.l, !7366, !DIExpression(), !7104)
  %i.m = load i32, ptr %i.l, align 4, !dbg !7382, !range !7368, !alias.scope !7206, !noalias !7369, !noundef !975 ; 8 uses
    #dbg_value(i32 %i.m, !7332, !DIExpression(), !7105)
    #dbg_value(ptr poison, !7319, !DIExpression(DW_OP_deref), !7106)
    #dbg_declare(ptr poison, !7317, !DIExpression(), !7107)
    #dbg_value(i32 %i.m, !7318, !DIExpression(), !7106)
    #dbg_value(ptr poison, !7309, !DIExpression(DW_OP_deref), !7108)
    #dbg_declare(ptr poison, !7310, !DIExpression(), !7109)
    #dbg_value(i32 %i.m, !7308, !DIExpression(), !7108)
    #dbg_value(ptr poison, !7301, !DIExpression(DW_OP_deref), !7110)
    #dbg_value(i32 %i.m, !7300, !DIExpression(), !7110)
    #dbg_value(ptr %1, !2518, !DIExpression(), !7111)
    #dbg_value(ptr %1, !2526, !DIExpression(), !7112)
    #dbg_value(ptr %1, !2531, !DIExpression(), !7114)
    #dbg_value(i32 %i.m, !2522, !DIExpression(), !7111)
    #dbg_value(i32 %i.m, !2538, !DIExpression(), !7116)
    #dbg_value(i64 %i.h, !2523, !DIExpression(), !7117)
    #dbg_value(i64 %i.h, !2549, !DIExpression(), !7119)
    #dbg_value(i32 %i.m, !2552, !DIExpression(), !7121)
  %i.n = icmp samesign ult i32 %i.m, 128, !dbg !7383
  br i1 %i.n, label %.noexc6.i, label %.noexc.i, !dbg !7383

.noexc.i:                                         ; preds = %bb.b
  %i.o = icmp samesign ult i32 %i.m, 2048, !dbg !7384 ; 2 uses
  %i.p = icmp samesign ult i32 %i.m, 65536, !dbg !7384 ; 2 uses
  %..i.i.i.i.i.i.i = select i1 %i.p, i64 3, i64 4, !dbg !7384
  %.sroa.0.0.ph.i.i.i.i.i.i.i = select i1 %i.o, i64 2, i64 %..i.i.i.i.i.i.i, !dbg !7384
    #dbg_value(i64 %.sroa.0.0.ph.i.i.i.i.i.i.i, !2524, !DIExpression(), !7122)
    #dbg_value(i64 %.sroa.0.0.ph.i.i.i.i.i.i.i, !2535, !DIExpression(), !7114)
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.0.0.ph.i.i.i.i.i.i.i), !dbg !7385, !noalias !7206
    #dbg_value(ptr %1, !2556, !DIExpression(), !7124)
  %i.q = load ptr, ptr %i.g, align 8, !dbg !7386, !alias.scope !7295, !noalias !7296, !nonnull !975, !noundef !975
    #dbg_value(ptr %i.q, !2550, !DIExpression(), !7119)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h, !dbg !7387 ; 9 uses
    #dbg_value(i32 %i.m, !2572, !DIExpression(), !7129)
    #dbg_value(ptr %i.r, !2575, !DIExpression(), !7129)
    #dbg_value(ptr %i.r, !2582, !DIExpression(), !7131)
    #dbg_value(ptr %i.r, !2582, !DIExpression(), !7133)
    #dbg_value(ptr %i.r, !2582, !DIExpression(), !7135)
    #dbg_value(ptr %i.r, !2582, !DIExpression(), !7137)
    #dbg_value(ptr %i.r, !2582, !DIExpression(), !7139)
    #dbg_value(ptr %i.r, !2582, !DIExpression(), !7141)
    #dbg_value(i64 1, !2583, !DIExpression(), !7131)
    #dbg_value(i64 1, !2583, !DIExpression(), !7133)
    #dbg_value(i64 1, !2583, !DIExpression(), !7135)
    #dbg_value(i64 2, !2583, !DIExpression(), !7137)
    #dbg_value(i64 2, !2583, !DIExpression(), !7139)
    #dbg_value(i64 3, !2583, !DIExpression(), !7141)
    #dbg_value(i64 poison, !2576, !DIExpression(), !7142)
  %i.s = trunc i32 %i.m to i8, !dbg !7388
  %i.t = and i8 %i.s, 63, !dbg !7388
  %i.u = or disjoint i8 %i.t, -128, !dbg !7388    ; 3 uses
    #dbg_value(i8 %i.u, !2577, !DIExpression(), !7143)
  %i.v = lshr i32 %i.m, 6, !dbg !7389
  %i.w = trunc i32 %i.v to i8, !dbg !7390         ; 2 uses
  %i.x = and i8 %i.w, 63, !dbg !7390
  %i.y = or disjoint i8 %i.x, -128, !dbg !7390    ; 2 uses
    #dbg_value(i8 %i.y, !2578, !DIExpression(), !7144)
  %i.z = lshr i32 %i.m, 12, !dbg !7391
  %i.aa = trunc i32 %i.z to i8, !dbg !7392        ; 2 uses
  %i.ab = and i8 %i.aa, 63, !dbg !7392
  %i.ac = or disjoint i8 %i.ab, -128, !dbg !7392
    #dbg_value(i8 %i.ac, !2579, !DIExpression(), !7145)
  %i.ad = lshr i32 %i.m, 18, !dbg !7393
  %i.ae = trunc nuw nsw i32 %i.ad to i8, !dbg !7394
  %i.af = or disjoint i8 %i.ae, -16, !dbg !7394
    #dbg_value(i8 %i.af, !2580, !DIExpression(), !7146)
  br i1 %i.o, label %bb.c, label %bb.d, !dbg !7395

.noexc6.i:                                        ; preds = %bb.b
    #dbg_value(i64 1, !2524, !DIExpression(), !7122)
    #dbg_value(i64 1, !2535, !DIExpression(), !7114)
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1), !dbg !7385, !noalias !7206
    #dbg_value(ptr %1, !2556, !DIExpression(), !7124)
  %i.ag = load ptr, ptr %i.g, align 8, !dbg !7386, !alias.scope !7295, !noalias !7296, !nonnull !975, !noundef !975
    #dbg_value(ptr %i.ag, !2550, !DIExpression(), !7119)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.h, !dbg !7387
    #dbg_value(i32 %i.m, !2572, !DIExpression(), !7129)
    #dbg_value(ptr %i.ah, !2575, !DIExpression(), !7129)
    #dbg_value(ptr %i.ah, !2582, !DIExpression(), !7131)
    #dbg_value(ptr %i.ah, !2582, !DIExpression(), !7133)
    #dbg_value(ptr %i.ah, !2582, !DIExpression(), !7135)
    #dbg_value(ptr %i.ah, !2582, !DIExpression(), !7137)
    #dbg_value(ptr %i.ah, !2582, !DIExpression(), !7139)
    #dbg_value(ptr %i.ah, !2582, !DIExpression(), !7141)
    #dbg_value(i64 1, !2583, !DIExpression(), !7131)
    #dbg_value(i64 1, !2583, !DIExpression(), !7133)
    #dbg_value(i64 1, !2583, !DIExpression(), !7135)
    #dbg_value(i64 2, !2583, !DIExpression(), !7137)
    #dbg_value(i64 2, !2583, !DIExpression(), !7139)
    #dbg_value(i64 3, !2583, !DIExpression(), !7141)
    #dbg_value(i64 1, !2576, !DIExpression(), !7142)
  %i.ai = trunc nuw nsw i32 %i.m to i8, !dbg !7396
  store i8 %i.ai, ptr %i.ah, align 1, !dbg !7396, !noalias !7296
  br label %_RNCINvMs8_NtNtNtCsf3Ta7LF998c_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB4r_6StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs5yXxDE1DkoT_4tera.exit.i.i, !dbg !7397

bb.c:                                             ; preds = %.noexc.i
  %i.aj = or disjoint i8 %i.w, -64, !dbg !7398
  store i8 %i.aj, ptr %i.r, align 1, !dbg !7398, !noalias !7296
end_hunk_1
begin_hunk_2_@_RNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0B7_:bb.a
    #dbg_value(ptr %i.sd, !12839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12842)
    #dbg_value(ptr %i.sd, !12843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12846)
    #dbg_value(i64 %i.se, !10147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12838)
    #dbg_value(i64 %i.se, !12839, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12842)
    #dbg_value(i64 %i.se, !12843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12846)
  br label %bb.cb, !dbg !14773

_RNvMNtCsf3Ta7LF998c_4core3stre16split_at_checked.exit2567.._crit_edge3931_crit_edge: ; preds = %bb.cb
    #dbg_value(ptr %i.ru, !10148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12852)
    #dbg_value(ptr %i.ru, !12604, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12855)
    #dbg_value(i64 %i.rw, !10148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12852)
    #dbg_value(i64 %i.rw, !12604, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12855)
    #dbg_value(ptr %i.ru, !10149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12852)
    #dbg_value(i64 %i.rv, !10149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12852)
    #dbg_value(ptr %i.ru, !10150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12856)
    #dbg_value(!DIArgList(ptr %i.ru, i64 %i.rw), !10150, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12856)
    #dbg_value(ptr undef, !10422, !DIExpression(), !10773)
    #dbg_value(ptr undef, !2260, !DIExpression(), !7891)
    #dbg_value(i32 2, !2281, !DIExpression(), !8649)
    #dbg_value(ptr undef, !2287, !DIExpression(), !7890)
    #dbg_value(i64 1, !2302, !DIExpression(), !8651)
    #dbg_value(ptr %i.ru, !2298, !DIExpression(), !8652)
    #dbg_value(ptr %i.ru, !2306, !DIExpression(), !8651)
    #dbg_value(!DIArgList(ptr %i.ru, i64 %i.rw), !2299, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8653)
    #dbg_value(ptr poison, !2309, !DIExpression(), !8655)
    #dbg_value(ptr poison, !2313, !DIExpression(), !8656)
  %.pre40324203 = load i64, ptr %i.cp, align 8, !dbg !14774
  %.pre4033 = load i64, ptr %i.cq, align 8, !dbg !14775
  br label %._crit_edge3931, !dbg !14776

.lr.ph3930:                                       ; preds = %bb.cd, %.split6.i2559
    #dbg_value(ptr %i.ru, !12505, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8658)
    #dbg_value(i64 %i.rv, !12505, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8658)
    #dbg_value(i64 %i.rw, !12506, !DIExpression(), !8658)
    #dbg_value(i64 %i.rw, !12499, !DIExpression(), !8660)
    #dbg_value(i64 %i.rv, !12507, !DIExpression(), !8661)
    #dbg_value(ptr %i.ru, !12508, !DIExpression(), !8662)
    #dbg_value(ptr %i.ru, !12498, !DIExpression(), !8660)
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.rw, !dbg !14777
  %i.sg = sub i64 %i.rv, %i.rw, !dbg !14778
    #dbg_value(ptr %i.ru, !10148, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12852)
    #dbg_value(ptr %i.ru, !12604, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12855)
    #dbg_value(i64 %i.rw, !10148, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12852)
    #dbg_value(i64 %i.rw, !12604, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12855)
    #dbg_value(ptr %i.sf, !10149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12852)
    #dbg_value(i64 %i.sg, !10149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12852)
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.rw, !dbg !14779 ; 4 uses
    #dbg_value(ptr %i.ru, !10150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12856)
    #dbg_value(ptr %i.sh, !10150, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12856)
    #dbg_value(ptr undef, !10422, !DIExpression(), !10773)
    #dbg_value(ptr undef, !2260, !DIExpression(), !7891)
    #dbg_value(i32 2, !2281, !DIExpression(), !8649)
    #dbg_value(ptr undef, !2287, !DIExpression(), !7890)
    #dbg_value(i64 1, !2302, !DIExpression(), !8651)
    #dbg_value(ptr %i.ru, !2298, !DIExpression(), !8652)
    #dbg_value(ptr %i.ru, !2306, !DIExpression(), !8651)
    #dbg_value(ptr %i.sh, !2299, !DIExpression(), !8653)
    #dbg_value(ptr poison, !2309, !DIExpression(), !8655)
    #dbg_value(ptr poison, !2313, !DIExpression(), !8656)
  %.pre4032 = load i64, ptr %i.cp, align 8, !dbg !14774
  %.promoted4378 = load i64, ptr %i.cq, align 8
  %.promoted4380 = load i64, ptr %i.co, align 8
  br label %bb.cg, !dbg !14776

bb.cf:                                            ; preds = %bb.cd, %.split6.i2559
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ru, i64 noundef %i.rv, i64 noundef 0, i64 noundef %i.rw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24, !dbg !14780
  unreachable, !dbg !14780

bb.cg:                                            ; preds = %.lr.ph3930, %bb.cl
  %i.si = phi i64 [ %.promoted4380, %.lr.ph3930 ], [ %i.uf, %bb.cl ] ; 2 uses
  %.pre40314379 = phi i64 [ %.promoted4378, %.lr.ph3930 ], [ %i.ug, %bb.cl ] ; 2 uses
  %i.sj = phi i64 [ %.pre4032, %.lr.ph3930 ], [ %storemerge2417, %bb.cl ]
  %.sroa.02894.03929 = phi ptr [ %i.ru, %.lr.ph3930 ], [ %.sroa.02894.1.ph31783185, %bb.cl ] ; 5 uses
    #dbg_value(ptr %.sroa.02894.03929, !10150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12856)
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.02894.03929, i64 1, !dbg !14781 ; 3 uses
    #dbg_value(ptr %i.sk, !10150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12856)
  %i.sl = load i8, ptr %.sroa.02894.03929, align 1, !dbg !14782, !noalias !12863, !noundef !975 ; 5 uses
    #dbg_value(i8 %i.sl, !2261, !DIExpression(), !8665)
    #dbg_value(i8 %i.sl, !2284, !DIExpression(), !8649)
  %i.sm = icmp sgt i8 %i.sl, -1, !dbg !14783
  br i1 %i.sm, label %.thread3175, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2568, !dbg !14783

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2568: ; preds = %bb.cg
  %i.sn = and i8 %i.sl, 31, !dbg !14784
  %i.so = zext nneg i8 %i.sn to i32, !dbg !14784  ; 3 uses
    #dbg_value(i32 %i.so, !2264, !DIExpression(), !8666)
    #dbg_value(i32 %i.so, !2315, !DIExpression(), !8668)
    #dbg_value(ptr undef, !2287, !DIExpression(), !7888)
    #dbg_value(i64 1, !2302, !DIExpression(), !8670)
    #dbg_value(ptr %i.sk, !2298, !DIExpression(), !8671)
    #dbg_value(ptr %i.sk, !2306, !DIExpression(), !8670)
    #dbg_value(ptr %i.sh, !2299, !DIExpression(), !8672)
    #dbg_value(ptr poison, !2309, !DIExpression(), !8674)
    #dbg_value(ptr poison, !2313, !DIExpression(), !8675)
  %i.sp = icmp ne ptr %i.sk, %i.sh, !dbg !14785
  tail call void @llvm.assume(i1 %i.sp), !dbg !14786
  %i.sq = getelementptr inbounds nuw i8, ptr %.sroa.02894.03929, i64 2, !dbg !14787 ; 3 uses
    #dbg_value(ptr %i.sq, !10150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12856)
  %i.sr = load i8, ptr %i.sk, align 1, !dbg !14788, !noalias !12863, !noundef !975
    #dbg_value(i8 %i.sr, !2265, !DIExpression(), !8676)
    #dbg_value(i8 %i.sr, !2318, !DIExpression(), !8668)
  %i.ss = shl nuw nsw i32 %i.so, 6, !dbg !14789
  %i.st = and i8 %i.sr, 63, !dbg !14790
  %i.su = zext nneg i8 %i.st to i32, !dbg !14790  ; 2 uses
  %i.sv = or disjoint i32 %i.ss, %i.su, !dbg !14789
    #dbg_value(i32 %i.sv, !2266, !DIExpression(), !8677)
  %i.sw = icmp samesign ugt i8 %i.sl, -33, !dbg !14791
  br i1 %i.sw, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2571, label %bb.ch, !dbg !14791

.thread3175:                                      ; preds = %bb.cg
  %i.sx = zext nneg i8 %i.sl to i32, !dbg !14792
    #dbg_value(ptr %i.sk, !10150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12856)
    #dbg_value(i32 1, !10932, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !12864)
    #dbg_value(i32 %i.sx, !10932, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !12864)
    #dbg_value(i32 %i.sx, !12472, !DIExpression(), !12867)
    #dbg_value(i32 %i.sx, !12477, !DIExpression(), !12870)
    #dbg_value(i32 %i.sx, !12482, !DIExpression(), !12873)
    #dbg_value(i32 %i.sx, !10151, !DIExpression(), !12874)
    #dbg_value(i32 %i.sx, !12488, !DIExpression(), !12877)
    #dbg_value(i32 %i.sx, !12493, !DIExpression(), !12880)
  br label %bb.ci, !dbg !14793

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2571: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2568
    #dbg_value(ptr undef, !2287, !DIExpression(), !7886)
    #dbg_value(i64 1, !2302, !DIExpression(), !8679)
    #dbg_value(ptr %i.sq, !2298, !DIExpression(), !8680)
    #dbg_value(ptr %i.sq, !2306, !DIExpression(), !8679)
    #dbg_value(ptr %i.sh, !2299, !DIExpression(), !8681)
    #dbg_value(ptr poison, !2309, !DIExpression(), !8683)
    #dbg_value(ptr poison, !2313, !DIExpression(), !8684)
  %i.sy = icmp ne ptr %i.sq, %i.sh, !dbg !14794
  tail call void @llvm.assume(i1 %i.sy), !dbg !14795
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.02894.03929, i64 3, !dbg !14796 ; 3 uses
    #dbg_value(ptr %i.sz, !10150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12856)
  %i.ta = load i8, ptr %i.sq, align 1, !dbg !14797, !noalias !12863, !noundef !975
    #dbg_value(i8 %i.ta, !2267, !DIExpression(), !8685)
    #dbg_value(i8 %i.ta, !2318, !DIExpression(), !8687)
    #dbg_value(i32 %i.su, !2315, !DIExpression(), !8687)
  %i.tb = shl nuw nsw i32 %i.su, 6, !dbg !14798
  %i.tc = and i8 %i.ta, 63, !dbg !14799
  %i.td = zext nneg i8 %i.tc to i32, !dbg !14799
  %i.te = or disjoint i32 %i.tb, %i.td, !dbg !14798 ; 2 uses
    #dbg_value(i32 %i.te, !2268, !DIExpression(), !8688)
    #dbg_value(i32 %i.te, !2315, !DIExpression(), !8690)
  %i.tf = shl nuw nsw i32 %i.so, 12, !dbg !14800
  %i.tg = or disjoint i32 %i.te, %i.tf, !dbg !14801
    #dbg_value(i32 %i.tg, !2266, !DIExpression(), !8677)
  %i.th = icmp samesign ugt i8 %i.sl, -17, !dbg !14802
  br i1 %i.th, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2572, label %bb.ch, !dbg !14802

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2572: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2571
    #dbg_value(ptr undef, !2287, !DIExpression(), !7884)
    #dbg_value(i64 1, !2302, !DIExpression(), !8692)
    #dbg_value(ptr %i.sz, !2298, !DIExpression(), !8693)
    #dbg_value(ptr %i.sz, !2306, !DIExpression(), !8692)
    #dbg_value(ptr %i.sh, !2299, !DIExpression(), !8694)
    #dbg_value(ptr poison, !2309, !DIExpression(), !8696)
    #dbg_value(ptr poison, !2313, !DIExpression(), !8697)
  %i.ti = icmp ne ptr %i.sz, %i.sh, !dbg !14803
  tail call void @llvm.assume(i1 %i.ti), !dbg !14804
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.02894.03929, i64 4, !dbg !14805
    #dbg_value(ptr %i.tj, !10150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12856)
  %i.tk = load i8, ptr %i.sz, align 1, !dbg !14806, !noalias !12863, !noundef !975
    #dbg_value(i8 %i.tk, !2269, !DIExpression(), !8698)
    #dbg_value(i8 %i.tk, !2318, !DIExpression(), !8690)
  %i.tl = shl nuw nsw i32 %i.so, 18, !dbg !14807
  %i.tm = and i32 %i.tl, 1835008, !dbg !14807
  %i.tn = shl nuw nsw i32 %i.te, 6, !dbg !14808
  %i.to = and i8 %i.tk, 63, !dbg !14809
  %i.tp = zext nneg i8 %i.to to i32, !dbg !14809
  %i.tq = or disjoint i32 %i.tn, %i.tp, !dbg !14808
  %i.tr = or disjoint i32 %i.tq, %i.tm, !dbg !14810
    #dbg_value(i32 %i.tr, !2266, !DIExpression(), !8677)
  br label %bb.ch, !dbg !14811

bb.ch:                                            ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2568, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2572, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2571
  %.sroa.02894.1.ph = phi ptr [ %i.sq, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2568 ], [ %i.sz, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2571 ], [ %i.tj, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2572 ] ; 2 uses
  %.sroa.4.0.i2569.ph = phi i32 [ %i.sv, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2568 ], [ %i.tg, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2571 ], [ %i.tr, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2572 ] ; 5 uses
    #dbg_value(ptr %.sroa.02894.1.ph, !10150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12856)
    #dbg_value(i32 1, !10932, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !12864)
    #dbg_value(i32 %.sroa.4.0.i2569.ph, !10932, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !12864)
    #dbg_value(i32 %.sroa.4.0.i2569.ph, !12472, !DIExpression(), !12867)
    #dbg_value(i32 %.sroa.4.0.i2569.ph, !12477, !DIExpression(), !12870)
    #dbg_value(i32 %.sroa.4.0.i2569.ph, !12482, !DIExpression(), !12873)
    #dbg_value(i32 %.sroa.4.0.i2569.ph, !10151, !DIExpression(), !12874)
    #dbg_value(i32 %.sroa.4.0.i2569.ph, !12488, !DIExpression(), !12877)
  %i.ts = icmp samesign ult i32 %.sroa.4.0.i2569.ph, 1114112, !dbg !14812
  tail call void @llvm.assume(i1 %i.ts), !dbg !14812
    #dbg_value(i32 %.sroa.4.0.i2569.ph, !12493, !DIExpression(), !12880)
  %i.tt = icmp samesign ult i32 %.sroa.4.0.i2569.ph, 128, !dbg !14793
  br i1 %i.tt, label %bb.ci, label %.thread3181, !dbg !14793

._crit_edge3931:                                  ; preds = %bb.cl, %_RNvMNtCsf3Ta7LF998c_4core3stre16split_at_checked.exit2567.._crit_edge3931_crit_edge
  %.sroa.72965.04206 = phi ptr [ %i.ru, %_RNvMNtCsf3Ta7LF998c_4core3stre16split_at_checked.exit2567.._crit_edge3931_crit_edge ], [ %i.sf, %bb.cl ]
  %.sroa.92966.04204 = phi i64 [ %i.rv, %_RNvMNtCsf3Ta7LF998c_4core3stre16split_at_checked.exit2567.._crit_edge3931_crit_edge ], [ %i.sg, %bb.cl ]
  %i.tu = phi i64 [ %.pre4033, %_RNvMNtCsf3Ta7LF998c_4core3stre16split_at_checked.exit2567.._crit_edge3931_crit_edge ], [ %i.ug, %bb.cl ], !dbg !14775
  %i.tv = phi i64 [ %.pre40324203, %_RNvMNtCsf3Ta7LF998c_4core3stre16split_at_checked.exit2567.._crit_edge3931_crit_edge ], [ %storemerge2417, %bb.cl ], !dbg !14774
    #dbg_value(ptr poison, !10150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12856)
    #dbg_value(i32 0, !10932, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !12864)
    #dbg_value(i32 undef, !10932, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !12864)
  store ptr %.sroa.72965.04206, ptr %i.ci, align 8, !dbg !14813, !captures !12634
  store i64 %.sroa.92966.04204, ptr %i.cj, align 8, !dbg !14813
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.060.1) ]
  %i.tw = load i64, ptr %i.co, align 8, !dbg !14814, !noundef !975
  store i8 1, ptr %0, align 8, !dbg !14815
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14815
  store i8 %.sroa.026.0, ptr %.sroa.483.0..sroa_idx, align 1, !dbg !14815
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !14815
  store i8 %i.qz, ptr %.sroa.584.0..sroa_idx, align 2, !dbg !14815
  %.sroa.786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14815
  store ptr %.sroa.060.1, ptr %.sroa.786.0..sroa_idx, align 8, !dbg !14815
  %.sroa.887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !14815
  store i64 %.sroa.663.1, ptr %.sroa.887.0..sroa_idx, align 8, !dbg !14815
  %.sroa.1089.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14815
  store i64 %.promoted3849.lcssa, ptr %.sroa.1089.0..sroa_idx, align 8, !dbg !14815
  %.sroa.1089.sroa.4.0..sroa.1089.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !14815
  store i64 %i.tu, ptr %.sroa.1089.sroa.4.0..sroa.1089.0..sroa_idx.sroa_idx, align 8, !dbg !14815
  %.sroa.1089.sroa.5.0..sroa.1089.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !14815
  store i64 %.promoted3852.lcssa, ptr %.sroa.1089.sroa.5.0..sroa.1089.0..sroa_idx.sroa_idx, align 8, !dbg !14815
  %.sroa.1089.sroa.6.0..sroa.1089.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !14815
  store i64 %.promoted3850.lcssa, ptr %.sroa.1089.sroa.6.0..sroa.1089.0..sroa_idx.sroa_idx, align 8, !dbg !14815
  %.sroa.1089.sroa.7.0..sroa.1089.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !14815
  store i64 %i.tw, ptr %.sroa.1089.sroa.7.0..sroa.1089.0..sroa_idx.sroa_idx, align 8, !dbg !14815
  %.sroa.1089.sroa.8.0..sroa.1089.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !14815
  store i64 %i.tv, ptr %.sroa.1089.sroa.8.0..sroa.1089.0..sroa_idx.sroa_idx, align 8, !dbg !14815
  br label %bb.ob, !dbg !14816

.thread3181:                                      ; preds = %bb.ch
  %i.tx = icmp samesign ult i32 %.sroa.4.0.i2569.ph, 2048, !dbg !14817
  %i.ty = icmp samesign ult i32 %.sroa.4.0.i2569.ph, 65536, !dbg !14817
  %.2430 = select i1 %i.ty, i64 3, i64 4, !dbg !14817
  %.sroa.067.0.ph = select i1 %i.tx, i64 2, i64 %.2430, !dbg !14817
  %i.tz = add i64 %.pre40314379, %.sroa.067.0.ph, !dbg !14818 ; 2 uses
  store i64 %i.tz, ptr %i.cq, align 8, !dbg !14818
  br label %bb.ck, !dbg !14819

bb.ci:                                            ; preds = %.thread3175, %bb.ch
  %.sroa.4.0.i2569.ph3179 = phi i32 [ %.sroa.4.0.i2569.ph, %bb.ch ], [ %i.sx, %.thread3175 ]
  %.sroa.02894.1.ph3178 = phi ptr [ %.sroa.02894.1.ph, %bb.ch ], [ %i.sk, %.thread3175 ] ; 2 uses
  %i.ua = add i64 %.pre40314379, 1, !dbg !14818   ; 3 uses
  store i64 %i.ua, ptr %i.cq, align 8, !dbg !14818
  %i.ub = icmp eq i32 %.sroa.4.0.i2569.ph3179, 10, !dbg !14819
  br i1 %i.ub, label %bb.cj, label %bb.ck, !dbg !14819

bb.cj:                                            ; preds = %bb.ci
  %i.uc = add i64 %i.si, 1, !dbg !14820           ; 2 uses
  store i64 %i.uc, ptr %i.co, align 8, !dbg !14820
  br label %bb.cl, !dbg !14821

bb.ck:                                            ; preds = %.thread3181, %bb.ci
  %i.ud = phi i64 [ %i.tz, %.thread3181 ], [ %i.ua, %bb.ci ]
  %.sroa.02894.1.ph31783186 = phi ptr [ %.sroa.02894.1.ph, %.thread3181 ], [ %.sroa.02894.1.ph3178, %bb.ci ]
  %i.ue = add i64 %i.sj, 1, !dbg !14822
  br label %bb.cl, !dbg !14822

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.uf = phi i64 [ %i.si, %bb.ck ], [ %i.uc, %bb.cj ]
  %i.ug = phi i64 [ %i.ud, %bb.ck ], [ %i.ua, %bb.cj ] ; 2 uses
  %.sroa.02894.1.ph31783185 = phi ptr [ %.sroa.02894.1.ph31783186, %bb.ck ], [ %.sroa.02894.1.ph3178, %bb.cj ] ; 2 uses
  %storemerge2417 = phi i64 [ %i.ue, %bb.ck ], [ 0, %bb.cj ], !dbg !12874 ; 3 uses
  store i64 %storemerge2417, ptr %i.cp, align 8, !dbg !12874
    #dbg_value(ptr %.sroa.02894.1.ph31783185, !10150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12856)
    #dbg_value(ptr undef, !10422, !DIExpression(), !10773)
    #dbg_value(ptr undef, !2260, !DIExpression(), !7891)
    #dbg_value(i32 2, !2281, !DIExpression(), !8649)
    #dbg_value(ptr undef, !2287, !DIExpression(), !7890)
    #dbg_value(i64 1, !2302, !DIExpression(), !8651)
    #dbg_value(ptr %.sroa.02894.1.ph31783185, !2298, !DIExpression(), !8652)
    #dbg_value(ptr %.sroa.02894.1.ph31783185, !2306, !DIExpression(), !8651)
    #dbg_value(ptr %i.sh, !2299, !DIExpression(), !8653)
    #dbg_value(ptr poison, !2309, !DIExpression(), !8655)
    #dbg_value(ptr poison, !2313, !DIExpression(), !8656)
  %i.uh = icmp eq ptr %.sroa.02894.1.ph31783185, %i.sh, !dbg !14823
  br i1 %i.uh, label %._crit_edge3931, label %bb.cg, !dbg !14776

bb.cm:                                            ; preds = %bb.bs
  %i.ui = load i64, ptr %i.qp, align 8, !dbg !14824
    #dbg_value(i64 %i.qo, !11107, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12882)
    #dbg_value(i64 %i.ui, !11107, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12882)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.qo, i64 %i.ui) #22, !dbg !14825
  unreachable, !dbg !14825

bb.cn:                                            ; preds = %bb.bs
  %i.uj = load ptr, ptr %i.qp, align 8, !dbg !14826, !nonnull !975, !noundef !975 ; 2 uses
    #dbg_value(i64 %i.qo, !11106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12883)
    #dbg_value(ptr %i.uj, !11106, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12883)
    #dbg_value(ptr poison, !11144, !DIExpression(), !12884)
    #dbg_value(ptr poison, !11085, !DIExpression(), !12885)
  %i.uk = icmp samesign ugt i64 %i.qo, 26, !dbg !14827
    #dbg_value(i1 true, !12640, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12887)
  tail call void @llvm.assume(i1 %i.uk), !dbg !14828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !14829
    #dbg_value(i64 %i.qo, !12644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12889)
    #dbg_value(i64 %i.qo, !11044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12890)
    #dbg_value(ptr %i.uj, !12644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12889)
    #dbg_value(ptr %i.uj, !11044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12890)
    #dbg_value(i64 0, !12644, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12889)
    #dbg_value(i64 0, !11044, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12890)
    #dbg_value(ptr @4, !12577, !DIExpression(), !12799)
    #dbg_value(ptr @4, !12583, !DIExpression(), !12801)
    #dbg_value(ptr %i.uj, !12578, !DIExpression(), !12799)
    #dbg_value(ptr %i.uj, !12584, !DIExpression(), !12801)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.uj, ptr noundef nonnull align 1 dereferenceable(27) @4, i64 27, i1 false), !dbg !14830
    #dbg_value(i64 27, !12644, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12889)
    #dbg_value(i64 27, !11044, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12890)
  store i64 %i.qo, ptr %i.cg, align 8, !dbg !14831
  %.sroa.4828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !14831
  store ptr %i.uj, ptr %.sroa.4828.0..sroa_idx, align 8, !dbg !14831
  %.sroa.6829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 16, !dbg !14831
  store i64 27, ptr %.sroa.6829.0..sroa_idx, align 8, !dbg !14831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !dbg !14832
  %i.ul = load i64, ptr %i.cq, align 8, !dbg !14833, !noundef !975
  %i.um = getelementptr inbounds nuw i8, ptr %i.cf, i64 16, !dbg !14834
  store i64 %.promoted3852.lcssa, ptr %i.um, align 8, !dbg !14834
  %i.un = getelementptr inbounds nuw i8, ptr %i.cf, i64 24, !dbg !14834
  store i64 %.promoted3850.lcssa, ptr %i.un, align 8, !dbg !14834
  %i.uo = getelementptr inbounds nuw i8, ptr %i.cf, i64 32, !dbg !14834
  %i.up = load <2 x i64>, ptr %i.co, align 8, !dbg !14835
  store <2 x i64> %i.up, ptr %i.uo, align 8, !dbg !14834
  store i64 %.promoted3849.lcssa, ptr %i.cf, align 8, !dbg !14834
  %i.uq = getelementptr inbounds nuw i8, ptr %i.cf, i64 8, !dbg !14834
  store i64 %i.ul, ptr %i.uq, align 8, !dbg !14834
  call void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ch, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cf), !dbg !14731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !dbg !14836
  %.sroa.497.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.497, i64 7, !dbg !14730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %.sroa.497.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.ch, i64 72, i1 false), !dbg !14730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !dbg !14837
  store i8 -1, ptr %0, align 8, !dbg !14838
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.497.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.497, i64 79, i1 false), !dbg !14838
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.497), !dbg !14839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !dbg !14840
  br label %bb.ob, !dbg !14816

.thread3188:                                      ; preds = %bb.bk
  %i.ur = icmp samesign ult i32 %.sroa.4.0.i2549.ph, 2048, !dbg !14841
  %i.us = icmp samesign ult i32 %.sroa.4.0.i2549.ph, 65536, !dbg !14841
  %.2431 = select i1 %i.us, i64 3, i64 4, !dbg !14841
  %.sroa.031.0.ph = select i1 %i.ur, i64 2, i64 %.2431, !dbg !14841
  %i.ut = add i64 %i.og, %.sroa.031.0.ph, !dbg !14842 ; 2 uses
  store i64 %i.ut, ptr %i.cq, align 8, !dbg !14842
  br label %bb.cq, !dbg !14843

bb.co:                                            ; preds = %.thread3145, %bb.bk
  %.sroa.4.0.i2549.ph3149 = phi i32 [ %.sroa.4.0.i2549.ph, %bb.bk ], [ %i.ot, %.thread3145 ]
  %.sroa.02890.1.ph3148.idx = phi i64 [ %.sroa.02890.1.ph.idx, %bb.bk ], [ %.sroa.02890.0.add, %.thread3145 ] ; 2 uses
  %i.uu = add i64 %i.og, 1, !dbg !14842           ; 3 uses
  store i64 %i.uu, ptr %i.cq, align 8, !dbg !14842
  %i.uv = icmp eq i32 %.sroa.4.0.i2549.ph3149, 10, !dbg !14843
  br i1 %i.uv, label %bb.cp, label %bb.cq, !dbg !14843

bb.cp:                                            ; preds = %bb.co
  %i.uw = add i64 %i.of, 1, !dbg !14844           ; 2 uses
  store i64 %i.uw, ptr %i.co, align 8, !dbg !14844
  br label %bb.cr, !dbg !14845

bb.cq:                                            ; preds = %.thread3188, %bb.co
  %i.ux = phi i64 [ %i.ut, %.thread3188 ], [ %i.uu, %bb.co ]
  %.sroa.02890.1.ph31483193.idx = phi i64 [ %.sroa.02890.1.ph.idx, %.thread3188 ], [ %.sroa.02890.1.ph3148.idx, %bb.co ]
  %i.uy = add i64 %i.oh, 1, !dbg !14846
  br label %bb.cr, !dbg !14846

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.uz = phi i64 [ %i.of, %bb.cq ], [ %i.uw, %bb.cp ]
  %i.va = phi i64 [ %i.ux, %bb.cq ], [ %i.uu, %bb.cp ]
  %.sroa.02890.1.ph31483192.idx = phi i64 [ %.sroa.02890.1.ph31483193.idx, %bb.cq ], [ %.sroa.02890.1.ph3148.idx, %bb.cp ] ; 2 uses
  %storemerge2418 = phi i64 [ %i.uy, %bb.cq ], [ 0, %bb.cp ], !dbg !12695 ; 2 uses
  store i64 %storemerge2418, ptr %i.cp, align 8, !dbg !12695
    #dbg_value(!DIArgList(ptr %.lcssa4474, i64 %.sroa.02890.1.ph31483192.idx), !10133, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12683)
    #dbg_value(ptr undef, !10422, !DIExpression(), !10785)
    #dbg_value(ptr undef, !2260, !DIExpression(), !7911)
    #dbg_value(i32 2, !2281, !DIExpression(), !8527)
    #dbg_value(ptr undef, !2287, !DIExpression(), !7910)
    #dbg_value(i64 1, !2302, !DIExpression(), !8522)
    #dbg_value(!DIArgList(ptr %.lcssa4474, i64 %.sroa.02890.1.ph31483192.idx), !2298, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8520)
    #dbg_value(!DIArgList(ptr %.lcssa4474, i64 %.sroa.02890.1.ph31483192.idx), !2306, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !8522)
    #dbg_value(ptr %.lcssa4474, !2299, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !8699)
    #dbg_value(ptr poison, !2309, !DIExpression(), !8700)
    #dbg_value(ptr poison, !2313, !DIExpression(), !8701)
  %i.vb = icmp eq i64 %.sroa.02890.1.ph31483192.idx, 3, !dbg !14671
  br i1 %i.vb, label %.loopexit3745, label %.split6.i2533, !dbg !14847

bb.cs:                                            ; preds = %bb.f
    #dbg_value(ptr undef, !10594, !DIExpression(), !10803)
    #dbg_value(ptr poison, !10595, !DIExpression(), !12891)
    #dbg_value(ptr %.lcssa4474, !10891, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10895)
    #dbg_value(ptr %.lcssa4474, !10882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10887)
  %i.vc = getelementptr inbounds nuw i8, ptr %.lcssa4474, i64 2, !dbg !14848
    #dbg_value(ptr undef, !10596, !DIExpression(), !10802)
    #dbg_value(ptr undef, !10567, !DIExpression(), !10801)
    #dbg_value(ptr undef, !10597, !DIExpression(DW_OP_deref), !12892)
    #dbg_value(ptr undef, !10571, !DIExpression(DW_OP_deref), !12893)
    #dbg_value(ptr %i.vc, !12437, !DIExpression(), !12896)
    #dbg_value(ptr poison, !12441, !DIExpression(), !12896)
  %i.vd = load i8, ptr %i.vc, align 1, !dbg !14849, !noundef !975 ; 2 uses
  %i.ve = icmp eq i8 %i.vd, 45, !dbg !14849
  br i1 %i.ve, label %bb.cu, label %bb.ct, !dbg !10799

bb.ct:                                            ; preds = %bb.cs
    #dbg_value(ptr %.lcssa4474, !10902, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10968)
    #dbg_value(i64 %storemerge38573862.lcssa, !10902, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10968)
    #dbg_value(ptr %.lcssa4474, !12446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8703)
    #dbg_value(ptr %.lcssa4474, !12460, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8705)
end_hunk_2
begin_hunk_3_@_RNvMNtCs5yXxDE1DkoT_4tera6errorsNtB2_11ReportError8add_note:bb.a
  %i.u = load i64, ptr %i.t, align 8, !dbg !18051
    #dbg_value(i64 %i.s, !17873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17977)
    #dbg_value(i64 %i.u, !17873, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17977)
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #22
          to label %bb.w unwind label %bb.g, !dbg !18052

bb.j:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.t, align 8, !dbg !18053, !nonnull !975, !noundef !975 ; 2 uses
    #dbg_value(i64 %i.s, !17872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17978)
    #dbg_value(ptr %i.v, !17872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17978)
    #dbg_value(ptr poison, !17880, !DIExpression(), !17979)
  %i.w = icmp ule i64 %4, %i.s, !dbg !18054
    #dbg_value(i1 true, !17954, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17981)
  tail call void @llvm.assume(i1 %i.w), !dbg !18055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18056
    #dbg_value(i64 %i.s, !17958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17983)
    #dbg_value(i64 %i.s, !17851, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17984)
    #dbg_value(ptr %i.v, !17958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17983)
    #dbg_value(ptr %i.v, !17851, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17984)
    #dbg_value(i64 0, !17958, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17983)
    #dbg_value(i64 0, !17851, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17984)
  %.not76 = icmp eq i64 %4, 0, !dbg !18057
  br i1 %.not76, label %bb.k, label %bb.l, !dbg !18057

bb.k:                                             ; preds = %bb.l, %bb.j
    #dbg_value(i64 %4, !17851, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17984)
    #dbg_value(i64 %4, !17958, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17983)
  store i64 %i.s, ptr %i.d, align 8, !dbg !18058
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !18058
  store ptr %i.v, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !18058
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !18058
  store i64 %4, ptr %.sroa.66.0..sroa_idx, align 8, !dbg !18058
    #dbg_value(ptr %5, !17842, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17985)
    #dbg_value(ptr %5, !17844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17986)
    #dbg_value(ptr %5, !17836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17987)
    #dbg_value(ptr %5, !17847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17988)
    #dbg_value(i64 %6, !17842, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17985)
    #dbg_value(i64 %6, !17844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17986)
    #dbg_value(i64 %6, !17836, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17987)
    #dbg_value(i64 %6, !17847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17988)
    #dbg_value(i64 %6, !17852, !DIExpression(), !17989)
    #dbg_value(i64 %6, !17858, !DIExpression(), !17990)
    #dbg_value(i64 %6, !17863, !DIExpression(), !17991)
    #dbg_value(i64 %6, !17938, !DIExpression(), !17994)
    #dbg_value(i64 %6, !17944, !DIExpression(), !17997)
    #dbg_value(i64 %6, !17868, !DIExpression(), !17998)
    #dbg_value(i64 %6, !17881, !DIExpression(), !17929)
    #dbg_value(i64 1, !17869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17998)
    #dbg_value(i64 1, !17882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17929)
    #dbg_value(i64 1, !17869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17998)
    #dbg_value(i64 1, !17882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17929)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18059
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.n unwind label %bb.m, !dbg !18059

bb.l:                                             ; preds = %bb.j
    #dbg_value(ptr %3, !17939, !DIExpression(), !17972)
    #dbg_value(ptr %3, !17945, !DIExpression(), !17975)
    #dbg_value(ptr %i.v, !17940, !DIExpression(), !17972)
    #dbg_value(ptr %i.v, !17946, !DIExpression(), !17975)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %3, i64 %4, i1 false), !dbg !18060
    #dbg_value(i64 %4, !17958, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17983)
    #dbg_value(i64 %4, !17851, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17984)
  br label %bb.k, !dbg !18061

bb.m:                                             ; preds = %bb.o, %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #23
          to label %bb.f unwind label %bb.v, !dbg !18049

bb.n:                                             ; preds = %bb.k
  %i.y = load i64, ptr %i.a, align 8, !dbg !18059, !range !1459, !noundef !975
  %i.z = trunc nuw i64 %i.y to i1, !dbg !18062
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17998
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !17998, !range !1460, !noundef !975 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17998 ; 2 uses
  br i1 %i.z, label %bb.o, label %bb.p, !dbg !18062, !prof !1461

bb.o:                                             ; preds = %bb.n
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !18063
    #dbg_value(i64 %i.ab, !17875, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17999)
    #dbg_value(i64 %i.ad, !17875, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17999)
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ab, i64 %i.ad) #22
          to label %bb.w unwind label %bb.m, !dbg !18064

bb.p:                                             ; preds = %bb.n
  %i.ae = load ptr, ptr %i.ac, align 8, !dbg !18065, !nonnull !975, !noundef !975 ; 2 uses
    #dbg_value(i64 %i.ab, !17874, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18000)
    #dbg_value(ptr %i.ae, !17874, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18000)
    #dbg_value(ptr poison, !17880, !DIExpression(), !18001)
  %i.af = icmp ule i64 %6, %i.ab, !dbg !18066
    #dbg_value(i1 true, !17954, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18003)
  tail call void @llvm.assume(i1 %i.af), !dbg !18067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18068
    #dbg_value(i64 %i.ab, !17958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18005)
    #dbg_value(i64 %i.ab, !17853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18006)
    #dbg_value(ptr %i.ae, !17958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18005)
    #dbg_value(ptr %i.ae, !17853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18006)
    #dbg_value(i64 0, !17958, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18005)
    #dbg_value(i64 0, !17853, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18006)
  %.not77 = icmp eq i64 %6, 0, !dbg !18069
  br i1 %.not77, label %bb.r, label %bb.q, !dbg !18069

bb.q:                                             ; preds = %bb.p
    #dbg_value(ptr %5, !17939, !DIExpression(), !17994)
    #dbg_value(ptr %5, !17945, !DIExpression(), !17997)
    #dbg_value(ptr %i.ae, !17940, !DIExpression(), !17994)
    #dbg_value(ptr %i.ae, !17946, !DIExpression(), !17997)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 1 %5, i64 %6, i1 false), !dbg !18070
    #dbg_value(i64 %6, !17958, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18005)
    #dbg_value(i64 %6, !17853, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18006)
  br label %bb.r, !dbg !18071

bb.r:                                             ; preds = %bb.p, %bb.q
    #dbg_value(i64 %6, !17853, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18006)
    #dbg_value(i64 %6, !17958, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18005)
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16, !dbg !18072
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 32, !dbg !18072
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !18073 ; 2 uses
    #dbg_value(ptr %i.ai, !17831, !DIExpression(), !17930)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !18033
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !18033
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !18033
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 48, !dbg !18033
  store i64 %i.ab, ptr %i.ak, align 8, !dbg !18033
  %.sroa.4.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.f, i64 56, !dbg !18033
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx82, align 8, !dbg !18033
  %.sroa.5.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.f, i64 64, !dbg !18033
  store i64 %6, ptr %.sroa.5.0..sroa_idx83, align 8, !dbg !18033
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 72, !dbg !18033
  %i.am = load <2 x i64>, ptr %7, align 8, !dbg !18072
  store <2 x i64> %i.am, ptr %i.al, align 8, !dbg !18033
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 88, !dbg !18033
  %i.an = load <2 x i64>, ptr %i.ag, align 8, !dbg !18072
  store <2 x i64> %i.an, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18033
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104, !dbg !18033
  %i.ao = load <2 x i64>, ptr %i.ah, align 8, !dbg !18072
  store <2 x i64> %i.ao, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !18049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !18049
    #dbg_value(ptr %i.ai, !18007, !DIExpression(), !17744)
    #dbg_value(ptr %i.ai, !18015, !DIExpression(), !17747)
    #dbg_declare(ptr %i.f, !18011, !DIExpression(), !17748)
    #dbg_value(i64 120, !18020, !DIExpression(), !17753)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !18074 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !18074, !alias.scope !18028, !noalias !18029, !noundef !975 ; 3 uses
    #dbg_value(i64 %i.aq, !18012, !DIExpression(), !17757)
    #dbg_value(i64 %i.aq, !18030, !DIExpression(), !17760)
    #dbg_value(ptr %i.ai, !18026, !DIExpression(), !17761)
  %i.ar = load i64, ptr %i.ai, align 8, !dbg !18075, !range !1800, !alias.scope !18028, !noalias !18029, !noundef !975
  %i.as = icmp eq i64 %i.aq, %i.ar, !dbg !18076
  br i1 %i.as, label %bb.s, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5yXxDE1DkoT_4tera6errors4NoteE8push_mutBJ_.exit, !dbg !18076

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera6errors4NoteE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5yXxDE1DkoT_4tera6errors4NoteE8push_mutBJ_.exit unwind label %bb.t, !dbg !18077, !noalias !18029

bb.t:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera6errors4NoteEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.f) #23
          to label %common.resume unwind label %bb.u, !dbg !18078

bb.u:                                             ; preds = %bb.t
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !18079
  unreachable, !dbg !18079

common.resume:                                    ; preds = %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.t ], [ %.pn79, %bb.f ]
  resume { ptr, i32 } %common.resume.op, !dbg !17778

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5yXxDE1DkoT_4tera6errors4NoteE8push_mutBJ_.exit: ; preds = %bb.r, %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !18080
  %i.aw = load ptr, ptr %i.av, align 8, !dbg !18080, !alias.scope !18028, !noalias !18029, !nonnull !975, !noundef !975
    #dbg_value(ptr %i.aw, !18031, !DIExpression(), !17760)
  %i.ax = getelementptr inbounds nuw [120 x i8], ptr %i.aw, i64 %i.aq, !dbg !18081
    #dbg_value(ptr %i.ax, !18013, !DIExpression(), !17768)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ax, ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 120, i1 false), !dbg !18082
  %i.ay = add i64 %i.aq, 1, !dbg !18083
  store i64 %i.ay, ptr %i.ap, align 8, !dbg !18083, !alias.scope !18028, !noalias !18029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !18084
  ret void, !dbg !18085

bb.v:                                             ; preds = %bb.m, %bb.f
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !18086
  unreachable, !dbg !18086

bb.w:                                             ; preds = %bb.o, %bb.i
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs5yXxDE1DkoT_4tera9reportingNtB2_14SourceLocation3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !18097 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !18358, !DIExpression(), !18368)
    #dbg_value(ptr poison, !18379, !DIExpression(), !18382)
    #dbg_value(ptr poison, !18375, !DIExpression(), !18383)
    #dbg_value(ptr poison, !2287, !DIExpression(), !18106)
    #dbg_value(ptr poison, !2287, !DIExpression(), !18108)
    #dbg_value(ptr poison, !2287, !DIExpression(), !18110)
    #dbg_value(ptr poison, !2287, !DIExpression(), !18112)
    #dbg_value(ptr poison, !2260, !DIExpression(), !18113)
    #dbg_value(ptr poison, !18384, !DIExpression(), !18396)
    #dbg_value(ptr poison, !18394, !DIExpression(), !18397)
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
    #dbg_value(ptr %1, !18341, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18398)
    #dbg_value(ptr %1, !18399, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18403)
    #dbg_value(ptr %1, !18404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18411)
    #dbg_value(ptr %1, !18412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18416)
    #dbg_value(ptr %1, !18417, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18422)
    #dbg_value(ptr %1, !18423, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18430)
    #dbg_value(ptr %1, !18431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18435)
    #dbg_value(ptr %1, !18436, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18442)
    #dbg_value(i64 %2, !18341, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18398)
    #dbg_value(i64 %2, !18399, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18403)
    #dbg_value(i64 %2, !18404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18411)
    #dbg_value(i64 %2, !18412, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18416)
    #dbg_value(i64 %2, !18417, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18422)
    #dbg_value(i64 %2, !18423, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18430)
    #dbg_value(i64 %2, !18431, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18435)
    #dbg_value(i64 %2, !18436, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18442)
    #dbg_value(ptr %3, !18342, !DIExpression(), !18398)
    #dbg_declare(ptr %i.d, !18343, !DIExpression(), !18443)
    #dbg_declare(ptr %i.c, !18347, !DIExpression(), !18444)
    #dbg_value(i64 100, !18445, !DIExpression(), !18448)
    #dbg_value(i64 100, !18449, !DIExpression(), !18452)
    #dbg_value(i64 100, !18453, !DIExpression(), !18457)
    #dbg_declare(ptr poison, !18454, !DIExpression(), !18458)
    #dbg_value(i64 100, !18459, !DIExpression(), !18463)
    #dbg_declare(ptr poison, !18460, !DIExpression(), !18464)
    #dbg_value(i64 100, !18465, !DIExpression(), !18472)
    #dbg_declare(ptr poison, !18466, !DIExpression(), !18473)
    #dbg_value(i64 0, !18474, !DIExpression(), !18480)
    #dbg_value(i64 100, !18476, !DIExpression(), !18480)
    #dbg_declare(ptr poison, !18481, !DIExpression(), !18486)
    #dbg_value(i64 1, !18487, !DIExpression(), !18494)
    #dbg_value(i64 1, !18495, !DIExpression(), !18499)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !18776
    #dbg_value(ptr %1, !18500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18141)
    #dbg_value(i64 %2, !18500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18141)
    #dbg_declare(ptr %i.a, !18504, !DIExpression(), !18164)
    #dbg_declare(ptr %i.a, !18571, !DIExpression(), !18167)
    #dbg_declare(ptr %i.a, !18576, !DIExpression(), !18170)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18777, !noalias !18580
    #dbg_value(ptr %1, !18581, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18176)
    #dbg_value(ptr %1, !18590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18179)
    #dbg_value(i64 %2, !18581, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18176)
    #dbg_value(i64 %2, !18590, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18179)
    #dbg_value(i64 0, !18581, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18176)
    #dbg_value(i64 0, !18590, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18179)
    #dbg_value(i64 %2, !18581, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18176)
    #dbg_value(i64 %2, !18590, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18179)
    #dbg_value(i32 10, !18581, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !18176)
    #dbg_value(i32 10, !18590, !DIExpression(DW_OP_LLVM_fragment, 256, 32), !18179)
    #dbg_value(i32 10, !18581, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !18176)
    #dbg_value(i32 10, !18590, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !18179)
    #dbg_value(i8 1, !18581, !DIExpression(DW_OP_LLVM_fragment, 320, 8), !18176)
    #dbg_value(i8 1, !18590, !DIExpression(DW_OP_LLVM_fragment, 320, 8), !18179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18597), !dbg !18778
    #dbg_value(i64 1, !18584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18182)
    #dbg_value(i64 0, !18584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18182)
    #dbg_value(i64 1, !18592, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18183)
    #dbg_value(i64 0, !18592, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18183)
  store i64 1, ptr %i.a, align 8, !dbg !18779, !alias.scope !18598, !noalias !18599
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18779
  store i64 0, ptr %i.e, align 8, !dbg !18779, !alias.scope !18598, !noalias !18599
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18779
  store ptr %1, ptr %i.f, align 8, !dbg !18779, !alias.scope !18600, !noalias !18580
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !18779
  store i64 %2, ptr %.sroa.420.0..sroa_idx.i, align 8, !dbg !18779, !alias.scope !18600, !noalias !18580
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !18779
  store i64 0, ptr %.sroa.521.0..sroa_idx.i, align 8, !dbg !18779, !alias.scope !18600, !noalias !18580
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !18779
  store i64 %2, ptr %.sroa.622.0..sroa_idx.i, align 8, !dbg !18779, !alias.scope !18600, !noalias !18580
  %.sroa.723.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !18779
  store i32 10, ptr %.sroa.723.0..sroa_idx.i, align 8, !dbg !18779, !alias.scope !18600, !noalias !18580
  %.sroa.824.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 52, !dbg !18779
  store i32 10, ptr %.sroa.824.0..sroa_idx.i, align 4, !dbg !18779, !alias.scope !18600, !noalias !18580
  %.sroa.925.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !18779
  store i8 1, ptr %.sroa.925.0..sroa_idx.i, align 8, !dbg !18779, !alias.scope !18600, !noalias !18580
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtNtB1B_7sources4once4OncejEINtNtB1z_3map3MapINtNtNtB1D_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEE9from_iterB3O_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !dbg !18780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18781, !noalias !18580
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !18782
  %i.h = load i64, ptr %i.g, align 8, !dbg !18782, !noundef !975 ; 8 uses
    #dbg_value(i64 %i.h, !18344, !DIExpression(), !18601)
    #dbg_value(i64 %i.h, !18602, !DIExpression(), !18611)
    #dbg_value(i64 %i.h, !18612, !DIExpression(), !18627)
    #dbg_value(i64 %i.h, !18628, !DIExpression(), !18635)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !18783
  %i.j = load i64, ptr %i.i, align 8, !dbg !18783, !noundef !975 ; 5 uses
    #dbg_value(i64 %i.j, !18345, !DIExpression(), !18636)
    #dbg_value(ptr %i.d, !18637, !DIExpression(), !18643)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !18784
  %i.l = load i64, ptr %i.k, align 8, !dbg !18784, !noundef !975 ; 6 uses
  %i.m = icmp ult i64 %i.l, 1152921504606846976, !dbg !18785
  call void @llvm.assume(i1 %i.m), !dbg !18786
  %i.n = icmp eq i64 %i.h, %i.l, !dbg !18787
    #dbg_value(ptr %i.d, !18607, !DIExpression(), !18645)
    #dbg_value(ptr %i.d, !18607, !DIExpression(), !18647)
    #dbg_value(ptr %i.d, !18648, !DIExpression(), !18653)
    #dbg_value(ptr %i.d, !18648, !DIExpression(), !18656)
    #dbg_value(ptr %i.d, !18657, !DIExpression(), !18661)
    #dbg_value(ptr %i.d, !18657, !DIExpression(), !18664)
    #dbg_value(ptr %i.d, !18665, !DIExpression(), !18672)
    #dbg_value(ptr %i.d, !18665, !DIExpression(), !18675)
  %i.o = add i64 %i.h, -1, !dbg !18636            ; 5 uses
  br i1 %i.n, label %bb.c, label %bb.b, !dbg !18787

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %i.o, !18602, !DIExpression(), !18676)
    #dbg_value(i64 %i.o, !18612, !DIExpression(), !18678)
    #dbg_value(i64 %i.o, !18628, !DIExpression(), !18681)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !18788
  %i.q = load ptr, ptr %i.p, align 8, !dbg !18788, !nonnull !975, !noundef !975 ; 2 uses
    #dbg_value(ptr %i.q, !18619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18678)
    #dbg_value(ptr %i.q, !18631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18681)
    #dbg_value(i64 %i.l, !18619, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18678)
    #dbg_value(i64 %i.l, !18631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18681)
  %i.r = icmp ult i64 %i.o, %i.l, !dbg !18789
  br i1 %i.r, label %bb.d, label %.invoke122, !dbg !18789

bb.c:                                             ; preds = %bb.a
    #dbg_value(i64 %i.o, !18602, !DIExpression(), !18701)
    #dbg_value(i64 %i.o, !18612, !DIExpression(), !18703)
    #dbg_value(i64 %i.o, !18628, !DIExpression(), !18705)
    #dbg_value(ptr poison, !18619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18703)
    #dbg_value(ptr poison, !18631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18705)
    #dbg_value(i64 %i.l, !18619, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18703)
    #dbg_value(i64 %i.l, !18631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18705)
  %.not121 = icmp eq i64 %i.h, 0, !dbg !18790
  br i1 %.not121, label %.invoke122, label %bb.n, !dbg !18790

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o, !dbg !18791
  %i.t = load i64, ptr %i.s, align 8, !dbg !18792, !noundef !975 ; 9 uses
    #dbg_value(i64 %i.t, !18413, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18416)
    #dbg_value(i64 %i.t, !18418, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18422)
    #dbg_value(i64 %i.t, !18425, !DIExpression(), !18706)
    #dbg_value(i64 %i.t, !18437, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18442)
    #dbg_value(ptr %i.d, !18607, !DIExpression(), !18707)
    #dbg_value(ptr %i.d, !18648, !DIExpression(), !18709)
    #dbg_value(ptr %i.d, !18657, !DIExpression(), !18712)
    #dbg_value(ptr %i.d, !18665, !DIExpression(), !18715)
    #dbg_value(ptr %i.q, !18619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18627)
    #dbg_value(ptr %i.q, !18631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18635)
    #dbg_value(i64 %i.l, !18619, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18627)
    #dbg_value(i64 %i.l, !18631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18635)
  %i.u = icmp samesign ult i64 %i.h, %i.l, !dbg !18793
  br i1 %i.u, label %bb.h, label %.invoke122, !dbg !18793

bb.e:                                             ; preds = %bb.x, %bb.f
  %.pn = phi { ptr, i32 } [ %i.v, %bb.f ], [ %lpad.phi, %bb.x ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #23
          to label %common.resume unwind label %bb.ab, !dbg !18794

bb.f:                                             ; preds = %.invoke122, %.invoke, %bb.t, %bb.r, %bb.m
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.t
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.h, !dbg !18795
  %i.x = load i64, ptr %i.w, align 8, !dbg !18796, !noundef !975 ; 8 uses
    #dbg_value(i64 %i.x, !18413, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18416)
    #dbg_value(i64 %i.x, !18418, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18422)
    #dbg_value(i64 %i.x, !18426, !DIExpression(), !18706)
    #dbg_value(i64 %i.x, !18437, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18442)
    #dbg_value(i64 %i.t, !18424, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18430)
    #dbg_value(i64 %i.t, !18432, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18435)
    #dbg_value(i64 %i.x, !18424, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18430)
    #dbg_value(i64 %i.x, !18432, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18435)
    #dbg_value(ptr %1, !2837, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18199)
    #dbg_value(i64 %2, !2837, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18199)
    #dbg_value(i64 %i.t, !2840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18199)
    #dbg_value(i64 %i.x, !2840, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18199)
    #dbg_value(i64 %i.t, !2841, !DIExpression(), !18200)
    #dbg_value(i64 %i.t, !2845, !DIExpression(), !18202)
    #dbg_value(i64 %i.x, !2842, !DIExpression(), !18200)
    #dbg_value(i64 %i.x, !2845, !DIExpression(), !18204)
    #dbg_value(ptr %1, !2843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18205)
    #dbg_value(i64 %2, !2843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18205)
  %i.y = icmp ugt i64 %i.t, %i.x, !dbg !18797
  %i.z = icmp ugt i64 %i.x, %2
  %or.cond.i = or i1 %i.y, %i.z, !dbg !18797
  br i1 %or.cond.i, label %.invoke, label %bb.i, !dbg !18797, !prof !2848

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i64 %i.t, %2, !dbg !18798
  br i1 %i.aa, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, label %bb.j, !dbg !18798

bb.j:                                             ; preds = %bb.i
  %i.ab = icmp eq i64 %i.t, 0, !dbg !18799
  br i1 %i.ab, label %bb.k, label %bb.l, !dbg !18799

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ac = icmp eq i64 %i.x, %2, !dbg !18800
  br i1 %i.ac, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit, !dbg !18800

bb.l:                                             ; preds = %bb.j
    #dbg_value(ptr %1, !2846, !DIExpression(), !18202)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.t, !dbg !18801
    #dbg_value(ptr %i.ad, !2849, !DIExpression(), !18207)
    #dbg_value(ptr %i.ad, !2853, !DIExpression(), !18209)
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !18802, !alias.scope !18716, !noundef !975
    #dbg_value(i8 %i.ae, !2855, !DIExpression(), !18213)
  %i.af = icmp sgt i8 %i.ae, -65, !dbg !18803
  br i1 %i.af, label %bb.k, label %.invoke, !dbg !18804, !prof !2857

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit: ; preds = %bb.k
    #dbg_value(ptr %1, !2846, !DIExpression(), !18204)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.x, !dbg !18805
    #dbg_value(ptr %i.ag, !2849, !DIExpression(), !18215)
    #dbg_value(ptr %i.ag, !2853, !DIExpression(), !18217)
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !18806, !alias.scope !18716, !noundef !975
    #dbg_value(i8 %i.ah, !2855, !DIExpression(), !18219)
  %i.ai = icmp sgt i8 %i.ah, -65, !dbg !18807
  br i1 %i.ai, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread, label %.invoke, !dbg !18808, !prof !2859

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread: ; preds = %bb.k, %bb.i, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit
    #dbg_value(ptr %1, !18438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18717)
    #dbg_value(i64 %2, !18438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18717)
  %i.aj = sub nuw i64 %i.x, %i.t, !dbg !18809
  br label %bb.m, !dbg !18810

bb.m:                                             ; preds = %bb.q, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread
  %.sroa.3.0 = phi i64 [ %i.ax, %bb.q ], [ %i.aj, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread ], !dbg !18636
  %.pn98 = phi i64 [ %i.ao, %bb.q ], [ %i.t, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit.thread ]
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.pn98, !dbg !18636
  %i.ak = invoke { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre16trim_end_matchescECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.3.0, i32 noundef 10)
          to label %bb.r unwind label %bb.f, !dbg !18811 ; 2 uses

bb.n:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !18812
  %i.am = load ptr, ptr %i.al, align 8, !dbg !18812, !nonnull !975, !noundef !975
    #dbg_value(ptr %i.am, !18619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18703)
    #dbg_value(ptr %i.am, !18631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18705)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.o, !dbg !18813
  %i.ao = load i64, ptr %i.an, align 8, !dbg !18814, !noundef !975 ; 8 uses
    #dbg_value(i64 %i.ao, !18406, !DIExpression(), !18721)
    #dbg_value(i64 %i.ao, !18400, !DIExpression(), !18403)
    #dbg_value(i64 %i.ao, !18405, !DIExpression(), !18411)
    #dbg_value(i64 %2, !18407, !DIExpression(), !18721)
    #dbg_value(i64 %i.ao, !2814, !DIExpression(), !18221)
    #dbg_value(ptr %1, !2817, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18221)
    #dbg_value(ptr %1, !2819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18223)
    #dbg_value(ptr %1, !2822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18225)
    #dbg_value(ptr %1, !2828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18227)
    #dbg_value(i64 %2, !2817, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18221)
    #dbg_value(i64 %2, !2819, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18223)
    #dbg_value(i64 %2, !2822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18225)
    #dbg_value(i64 %2, !2828, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18227)
    #dbg_value(i64 %i.ao, !2820, !DIExpression(), !18223)
    #dbg_value(i64 %i.ao, !2825, !DIExpression(), !18225)
    #dbg_value(i64 %i.ao, !2831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18227)
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !18815
  br i1 %i.ap, label %bb.q, label %bb.o, !dbg !18815

bb.o:                                             ; preds = %bb.n
  %.not.i = icmp ult i64 %i.ao, %2, !dbg !18816
  br i1 %.not.i, label %bb.p, label %.split.i, !dbg !18816

.split.i:                                         ; preds = %bb.o
  %i.aq = icmp eq i64 %i.ao, %2, !dbg !18817
  br i1 %i.aq, label %bb.q, label %.invoke, !dbg !18818

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao, !dbg !18819
  %i.as = load i8, ptr %i.ar, align 1, !dbg !18819, !alias.scope !18722, !noundef !975
    #dbg_value(i8 %i.as, !2835, !DIExpression(), !18231)
  %i.at = icmp sgt i8 %i.as, -65, !dbg !18820
  br i1 %i.at, label %bb.q, label %.invoke, !dbg !18818

.invoke122:                                       ; preds = %bb.b, %bb.c, %bb.d
  %i.au = phi i64 [ %i.h, %bb.d ], [ %i.o, %bb.c ], [ %i.o, %bb.b ]
  %i.av = phi i64 [ %i.l, %bb.d ], [ %i.h, %bb.c ], [ %i.l, %bb.b ]
  %i.aw = phi ptr [ @31, %bb.d ], [ @33, %bb.c ], [ @30, %bb.b ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw) #22
          to label %.cont123 unwind label %bb.f, !dbg !18821

.cont123:                                         ; preds = %.invoke122
  unreachable

bb.q:                                             ; preds = %bb.p, %.split.i, %bb.n
    #dbg_value(ptr %1, !2832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18232)
    #dbg_value(i64 %2, !2832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18232)
    #dbg_value(i64 %2, !2826, !DIExpression(), !18233)
    #dbg_value(i64 %2, !2831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18227)
  %i.ax = sub nuw i64 %2, %i.ao, !dbg !18822
  br label %bb.m, !dbg !18810

.invoke:                                          ; preds = %.split.i, %bb.p, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit, %bb.h, %bb.l
  %i.ay = phi i64 [ %i.t, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit ], [ %i.t, %bb.l ], [ %i.t, %bb.h ], [ %i.ao, %bb.p ], [ %i.ao, %.split.i ]
  %i.az = phi i64 [ %i.x, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit ], [ %i.x, %bb.l ], [ %i.x, %bb.h ], [ %2, %bb.p ], [ %2, %.split.i ]
  %i.ba = phi ptr [ @32, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit ], [ @32, %bb.l ], [ @32, %bb.h ], [ @34, %bb.p ], [ @34, %.split.i ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ay, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba) #22
          to label %.cont unwind label %bb.f, !dbg !18636

.cont:                                            ; preds = %.invoke
  unreachable

bb.r:                                             ; preds = %bb.m
  %i.bb = extractvalue { ptr, i64 } %i.ak, 0, !dbg !18810 ; 4 uses
  %i.bc = extractvalue { ptr, i64 } %i.ak, 1, !dbg !18810 ; 2 uses
    #dbg_value(ptr %i.bb, !18346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18725)
    #dbg_value(ptr %i.bb, !18726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18729)
    #dbg_value(i64 %i.bc, !18346, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18725)
    #dbg_value(i64 %i.bc, !18726, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18729)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18823
    #dbg_value(i64 1, !18467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18472)
    #dbg_value(i64 1, !18477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18480)
    #dbg_value(i64 1, !18467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18472)
    #dbg_value(i64 1, !18477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18480)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18824
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 100, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.s unwind label %bb.f, !dbg !18824

bb.s:                                             ; preds = %bb.r
  %i.bd = load i64, ptr %i.b, align 8, !dbg !18824, !range !1459, !noundef !975
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !18825
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18472
  %5 = load i64, ptr %4, align 8, !dbg !18472, !range !1460, !noundef !975 ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !18472 ; 2 uses
  br i1 %i.be, label %bb.t, label %bb.u, !dbg !18825, !prof !1461

bb.t:                                             ; preds = %bb.s
  %i.bf = load i64, ptr %6, align 8, !dbg !18826
    #dbg_value(i64 %5, !18469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18730)
    #dbg_value(i64 %i.bf, !18469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18730)
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %5, i64 %i.bf) #22
          to label %bb.g unwind label %bb.f, !dbg !18827

bb.u:                                             ; preds = %bb.s
  %i.bg = load ptr, ptr %6, align 8, !dbg !18828, !nonnull !975, !noundef !975
    #dbg_value(i64 %5, !18468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18731)
    #dbg_value(ptr %i.bg, !18468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18731)
    #dbg_value(ptr poison, !18475, !DIExpression(), !18732)
  %i.bh = icmp samesign ugt i64 %5, 99, !dbg !18829
    #dbg_value(i1 true, !18733, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18736)
  call void @llvm.assume(i1 %i.bh), !dbg !18830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18831
  store i64 %5, ptr %i.c, align 8, !dbg !18832
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !18832 ; 3 uses
  store ptr %i.bg, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !18832
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !18832 ; 3 uses
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8, !dbg !18832
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ], !dbg !18833
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc, !dbg !18834 ; 4 uses
    #dbg_value(ptr %i.bb, !18348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18744)
    #dbg_value(ptr %i.bi, !18348, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18744)
    #dbg_value(i64 %i.j, !18348, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18744)
    #dbg_value(ptr undef, !18394, !DIExpression(), !18397)
  %i.bj = icmp eq i64 %i.j, 0, !dbg !18835
  br i1 %i.bj, label %._crit_edge, label %.lr.ph, !dbg !18835

.lr.ph:                                           ; preds = %bb.u, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit81
  %i.bk = phi i64 [ %storemerge, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit81 ], [ 0, %bb.u ] ; 4 uses
  %.sroa.0.083100 = phi ptr [ %.sroa.0.1.ph, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit81 ], [ %i.bb, %bb.u ] ; 6 uses
  %.sroa.10.099 = phi i64 [ %i.bl, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit81 ], [ %i.j, %bb.u ]
    #dbg_value(ptr %.sroa.0.083100, !18348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18744)
    #dbg_value(i64 %.sroa.10.099, !18348, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18744)
  %i.bl = add i64 %.sroa.10.099, -1, !dbg !18836  ; 2 uses
    #dbg_value(i64 %i.bl, !18348, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18744)
    #dbg_value(ptr undef, !18384, !DIExpression(), !18396)
    #dbg_value(ptr undef, !2260, !DIExpression(), !18113)
    #dbg_value(i32 2, !2281, !DIExpression(), !18241)
    #dbg_value(ptr undef, !2287, !DIExpression(), !18112)
    #dbg_value(i64 1, !2302, !DIExpression(), !18243)
    #dbg_value(ptr %.sroa.0.083100, !2298, !DIExpression(), !18244)
    #dbg_value(ptr %.sroa.0.083100, !2306, !DIExpression(), !18243)
    #dbg_value(ptr %i.bi, !2299, !DIExpression(), !18245)
    #dbg_value(ptr poison, !2309, !DIExpression(), !18247)
    #dbg_value(ptr poison, !2313, !DIExpression(), !18248)
  %i.bm = icmp eq ptr %.sroa.0.083100, %i.bi, !dbg !18837
  br i1 %i.bm, label %._crit_edge, label %bb.v, !dbg !18838

bb.v:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.083100, i64 1, !dbg !18839 ; 3 uses
    #dbg_value(ptr %i.bn, !18348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18744)
  %i.bo = load i8, ptr %.sroa.0.083100, align 1, !dbg !18840, !noalias !18745, !noundef !975 ; 5 uses
    #dbg_value(i8 %i.bo, !2261, !DIExpression(), !18251)
    #dbg_value(i8 %i.bo, !2284, !DIExpression(), !18241)
  %i.bp = icmp sgt i8 %i.bo, -1, !dbg !18841
  br i1 %i.bp, label %bb.w, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i, !dbg !18841

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i: ; preds = %bb.v
  %i.bq = and i8 %i.bo, 31, !dbg !18842
  %i.br = zext nneg i8 %i.bq to i32, !dbg !18842  ; 3 uses
    #dbg_value(i32 %i.br, !2264, !DIExpression(), !18252)
    #dbg_value(i32 %i.br, !2315, !DIExpression(), !18254)
    #dbg_value(ptr undef, !2287, !DIExpression(), !18110)
    #dbg_value(i64 1, !2302, !DIExpression(), !18256)
    #dbg_value(ptr %i.bn, !2298, !DIExpression(), !18257)
    #dbg_value(ptr %i.bn, !2306, !DIExpression(), !18256)
    #dbg_value(ptr %i.bi, !2299, !DIExpression(), !18258)
    #dbg_value(ptr poison, !2309, !DIExpression(), !18260)
    #dbg_value(ptr poison, !2313, !DIExpression(), !18261)
  %i.bs = icmp ne ptr %i.bn, %i.bi, !dbg !18843
  call void @llvm.assume(i1 %i.bs), !dbg !18844
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.083100, i64 2, !dbg !18845 ; 3 uses
    #dbg_value(ptr %i.bt, !18348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18744)
  %i.bu = load i8, ptr %i.bn, align 1, !dbg !18846, !noalias !18745, !noundef !975
    #dbg_value(i8 %i.bu, !2265, !DIExpression(), !18262)
    #dbg_value(i8 %i.bu, !2318, !DIExpression(), !18254)
  %i.bv = shl nuw nsw i32 %i.br, 6, !dbg !18847
  %i.bw = and i8 %i.bu, 63, !dbg !18848
  %i.bx = zext nneg i8 %i.bw to i32, !dbg !18848  ; 2 uses
  %i.by = or disjoint i32 %i.bv, %i.bx, !dbg !18847
    #dbg_value(i32 %i.by, !2266, !DIExpression(), !18263)
  %i.bz = icmp samesign ugt i8 %i.bo, -33, !dbg !18849
  br i1 %i.bz, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i, label %bb.y, !dbg !18849

bb.w:                                             ; preds = %bb.v
  %i.ca = zext nneg i8 %i.bo to i32, !dbg !18850
  br label %bb.y, !dbg !18851

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i
    #dbg_value(ptr undef, !2287, !DIExpression(), !18108)
    #dbg_value(i64 1, !2302, !DIExpression(), !18265)
    #dbg_value(ptr %i.bt, !2298, !DIExpression(), !18266)
    #dbg_value(ptr %i.bt, !2306, !DIExpression(), !18265)
    #dbg_value(ptr %i.bi, !2299, !DIExpression(), !18267)
    #dbg_value(ptr poison, !2309, !DIExpression(), !18269)
    #dbg_value(ptr poison, !2313, !DIExpression(), !18270)
  %i.cb = icmp ne ptr %i.bt, %i.bi, !dbg !18852
  call void @llvm.assume(i1 %i.cb), !dbg !18853
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.083100, i64 3, !dbg !18854 ; 3 uses
    #dbg_value(ptr %i.cc, !18348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18744)
  %i.cd = load i8, ptr %i.bt, align 1, !dbg !18855, !noalias !18745, !noundef !975
    #dbg_value(i8 %i.cd, !2267, !DIExpression(), !18271)
    #dbg_value(i8 %i.cd, !2318, !DIExpression(), !18273)
    #dbg_value(i32 %i.bx, !2315, !DIExpression(), !18273)
  %i.ce = shl nuw nsw i32 %i.bx, 6, !dbg !18856
  %i.cf = and i8 %i.cd, 63, !dbg !18857
  %i.cg = zext nneg i8 %i.cf to i32, !dbg !18857
  %i.ch = or disjoint i32 %i.ce, %i.cg, !dbg !18856 ; 2 uses
    #dbg_value(i32 %i.ch, !2268, !DIExpression(), !18274)
    #dbg_value(i32 %i.ch, !2315, !DIExpression(), !18276)
  %i.ci = shl nuw nsw i32 %i.br, 12, !dbg !18858
  %i.cj = or disjoint i32 %i.ch, %i.ci, !dbg !18859
    #dbg_value(i32 %i.cj, !2266, !DIExpression(), !18263)
  %i.ck = icmp samesign ugt i8 %i.bo, -17, !dbg !18860
  br i1 %i.ck, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i, label %bb.y, !dbg !18860

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i
    #dbg_value(ptr undef, !2287, !DIExpression(), !18106)
    #dbg_value(i64 1, !2302, !DIExpression(), !18278)
    #dbg_value(ptr %i.cc, !2298, !DIExpression(), !18279)
    #dbg_value(ptr %i.cc, !2306, !DIExpression(), !18278)
    #dbg_value(ptr %i.bi, !2299, !DIExpression(), !18280)
    #dbg_value(ptr poison, !2309, !DIExpression(), !18282)
    #dbg_value(ptr poison, !2313, !DIExpression(), !18283)
  %i.cl = icmp ne ptr %i.cc, %i.bi, !dbg !18861
  call void @llvm.assume(i1 %i.cl), !dbg !18862
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.083100, i64 4, !dbg !18863
    #dbg_value(ptr %i.cm, !18348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18744)
  %i.cn = load i8, ptr %i.cc, align 1, !dbg !18864, !noalias !18745, !noundef !975
    #dbg_value(i8 %i.cn, !2269, !DIExpression(), !18284)
    #dbg_value(i8 %i.cn, !2318, !DIExpression(), !18276)
  %i.co = shl nuw nsw i32 %i.br, 18, !dbg !18865
  %i.cp = and i32 %i.co, 1835008, !dbg !18865
  %i.cq = shl nuw nsw i32 %i.ch, 6, !dbg !18866
  %i.cr = and i8 %i.cn, 63, !dbg !18867
  %i.cs = zext nneg i8 %i.cr to i32, !dbg !18867
  %i.ct = or disjoint i32 %i.cq, %i.cs, !dbg !18866
  %i.cu = or disjoint i32 %i.ct, %i.cp, !dbg !18868
    #dbg_value(i32 %i.cu, !2266, !DIExpression(), !18263)
  br label %bb.y, !dbg !18869

._crit_edge:                                      ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit81, %.lr.ph, %bb.u
  %i.cv = phi i64 [ 0, %bb.u ], [ %storemerge, %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit81 ], [ %i.bk, %.lr.ph ]
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !18870
  %i.cx = load i64, ptr %i.cw, align 8, !dbg !18870, !noundef !975 ; 2 uses
  %i.cy = icmp ugt i64 %i.cx, %i.j, !dbg !18870
  %i.cz = sub nuw i64 %i.cx, %i.j, !dbg !18870
  %.sroa.04.0 = select i1 %i.cy, i64 %i.cz, i64 1, !dbg !18870 ; 2 uses
    #dbg_value(i64 %.sroa.04.0, !18350, !DIExpression(), !18746)
    #dbg_value(i64 0, !18351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18747)
    #dbg_value(i64 %.sroa.04.0, !18351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18747)
    #dbg_value(ptr undef, !18375, !DIExpression(), !18383)
    #dbg_value(ptr undef, !18379, !DIExpression(), !18382)
    #dbg_value(ptr undef, !18358, !DIExpression(), !18368)
    #dbg_value(ptr undef, !18362, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18748)
  %.not = icmp eq i64 %.sroa.04.0, 0, !dbg !18871
  br i1 %.not, label %._crit_edge105, label %.lr.ph104, !dbg !18367

.loopexit:                                        ; preds = %.lr.ph104
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp:                               ; preds = %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #23
          to label %bb.e unwind label %bb.ab, !dbg !18872

bb.y:                                             ; preds = %bb.w, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i
  %.sroa.0.1.ph = phi ptr [ %i.bt, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i ], [ %i.cc, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i ], [ %i.cm, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i ], [ %i.bn, %bb.w ]
  %.sroa.4.0.i.ph = phi i32 [ %i.by, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i ], [ %i.cj, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i ], [ %i.cu, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i ], [ %i.ca, %bb.w ] ; 2 uses
    #dbg_value(ptr %.sroa.0.1.ph, !18348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18744)
    #dbg_value(i32 1, !18482, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !18749)
    #dbg_value(i32 %.sroa.4.0.i.ph, !18482, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !18749)
    #dbg_value(i32 %.sroa.4.0.i.ph, !18483, !DIExpression(), !18750)
    #dbg_value(i32 %.sroa.4.0.i.ph, !18751, !DIExpression(), !18754)
    #dbg_value(i32 %.sroa.4.0.i.ph, !18755, !DIExpression(), !18758)
    #dbg_value(i32 %.sroa.4.0.i.ph, !18759, !DIExpression(), !18762)
  %i.da = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112, !dbg !18873
  call void @llvm.assume(i1 %i.da), !dbg !18873
    #dbg_value(i32 %.sroa.4.0.i.ph, !18349, !DIExpression(), !18763)
    #dbg_value(ptr %i.c, !2518, !DIExpression(), !18289)
    #dbg_value(ptr %i.c, !2518, !DIExpression(), !18291)
    #dbg_value(ptr %i.c, !2526, !DIExpression(), !18293)
    #dbg_value(ptr %i.c, !2526, !DIExpression(), !18295)
    #dbg_value(ptr %i.c, !2531, !DIExpression(), !18297)
    #dbg_value(ptr %i.c, !2531, !DIExpression(), !18299)
    #dbg_value(i64 %i.bk, !2523, !DIExpression(), !18300)
    #dbg_value(i64 %i.bk, !2523, !DIExpression(), !18301)
    #dbg_value(i64 %i.bk, !2549, !DIExpression(), !18303)
    #dbg_value(i64 %i.bk, !2549, !DIExpression(), !18305)
  %i.db = icmp sgt i64 %i.bk, -1, !dbg !18874
  call void @llvm.assume(i1 %i.db), !dbg !18875
    #dbg_value(i64 1, !2524, !DIExpression(), !18306)
    #dbg_value(i64 1, !2524, !DIExpression(), !18307)
    #dbg_value(i64 1, !2535, !DIExpression(), !18297)
    #dbg_value(i64 1, !2535, !DIExpression(), !18299)
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit81 unwind label %.loopexit.split-lp, !dbg !18876

._crit_edge105:                                   ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !18877
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !18878
  store ptr %i.bb, ptr %i.dc, align 8, !dbg !18878
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !18878
  store i64 %i.bc, ptr %i.dd, align 8, !dbg !18878
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !18878
  store i64 %i.h, ptr %i.de, align 8, !dbg !18878
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !18878
  store i64 %i.j, ptr %i.df, align 8, !dbg !18878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18872
    #dbg_value(ptr %i.d, !1970, !DIExpression(), !18309)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs5yXxDE1DkoT_4tera.exit unwind label %bb.z, !dbg !18879
end_hunk_3
begin_hunk_4_@llvm.experimental.noalias.scope.decl
!18035 = !DILocation(line: 445, column: 15, scope: !17734, inlinedAt: !17877)
!18036 = !DILocation(line: 445, column: 9, scope: !17734, inlinedAt: !17877)
!18037 = !DILocation(line: 454, column: 17, scope: !17734, inlinedAt: !17877)
!18038 = !DILocation(line: 454, column: 25, scope: !17732, inlinedAt: !17877)
!18039 = !DILocation(line: 446, column: 16, scope: !17734, inlinedAt: !17877)
!18040 = !DILocation(line: 787, column: 9, scope: !17735, inlinedAt: !17884)
!18041 = !DILocation(line: 210, column: 9, scope: !17738, inlinedAt: !17956)
!18042 = !DILocation(line: 455, column: 9, scope: !17734, inlinedAt: !17877)
!18043 = !DILocation(line: 449, column: 20, scope: !17723, inlinedAt: !17855)
!18044 = !DILocation(line: 1035, column: 9, scope: !17739, inlinedAt: !17960)
!18045 = !DILocation(line: 57, column: 23, scope: !17706)
!18046 = !DILocation(line: 445, column: 15, scope: !17734, inlinedAt: !17903)
!18047 = !DILocation(line: 574, column: 14, scope: !17737, inlinedAt: !17948)
!18048 = !DILocation(line: 449, column: 17, scope: !17723, inlinedAt: !17855)
!18049 = !DILocation(line: 60, column: 9, scope: !17706)
!18050 = !DILocation(line: 445, column: 9, scope: !17734, inlinedAt: !17903)
!18051 = !DILocation(line: 454, column: 17, scope: !17734, inlinedAt: !17903)
!18052 = !DILocation(line: 454, column: 25, scope: !17730, inlinedAt: !17903)
!18053 = !DILocation(line: 446, column: 16, scope: !17734, inlinedAt: !17903)
!18054 = !DILocation(line: 787, column: 9, scope: !17735, inlinedAt: !17906)
!18055 = !DILocation(line: 210, column: 9, scope: !17738, inlinedAt: !17980)
!18056 = !DILocation(line: 455, column: 9, scope: !17734, inlinedAt: !17903)
!18057 = !DILocation(line: 449, column: 20, scope: !17721, inlinedAt: !17894)
!18058 = !DILocation(line: 1035, column: 9, scope: !17739, inlinedAt: !17982)
!18059 = !DILocation(line: 445, column: 15, scope: !17734, inlinedAt: !17925)
!18060 = !DILocation(line: 574, column: 14, scope: !17737, inlinedAt: !17974)
!18061 = !DILocation(line: 449, column: 17, scope: !17721, inlinedAt: !17894)
!18062 = !DILocation(line: 445, column: 9, scope: !17734, inlinedAt: !17925)
!18063 = !DILocation(line: 454, column: 17, scope: !17734, inlinedAt: !17925)
!18064 = !DILocation(line: 454, column: 25, scope: !17728, inlinedAt: !17925)
!18065 = !DILocation(line: 446, column: 16, scope: !17734, inlinedAt: !17925)
!18066 = !DILocation(line: 787, column: 9, scope: !17735, inlinedAt: !17928)
!18067 = !DILocation(line: 210, column: 9, scope: !17738, inlinedAt: !18002)
!18068 = !DILocation(line: 455, column: 9, scope: !17734, inlinedAt: !17925)
!18069 = !DILocation(line: 449, column: 20, scope: !17719, inlinedAt: !17916)
!18070 = !DILocation(line: 574, column: 14, scope: !17737, inlinedAt: !17996)
!18071 = !DILocation(line: 449, column: 17, scope: !17719, inlinedAt: !17916)
!18072 = !DILocation(line: 51, column: 10, scope: !17714, inlinedAt: !17825)
!18073 = !DILocation(line: 55, column: 9, scope: !17706)
!18074 = !DILocation(line: 1033, column: 19, scope: !17742, inlinedAt: !17743)
!18075 = !DILocation(line: 632, column: 49, scope: !17749, inlinedAt: !17752)
!18076 = !DILocation(line: 1036, column: 12, scope: !17741, inlinedAt: !17743)
!18077 = !DILocation(line: 1037, column: 22, scope: !17741, inlinedAt: !17743)
!18078 = !DILocation(line: 1047, column: 5, scope: !17742, inlinedAt: !17743)
!18079 = !DILocation(line: 1031, column: 5, scope: !17742, inlinedAt: !17743)
!18080 = !DILocation(line: 627, column: 9, scope: !17762, inlinedAt: !17767)
!18081 = !DILocation(line: 971, column: 18, scope: !17758, inlinedAt: !17759)
!18082 = !DILocation(line: 1042, column: 29, scope: !17740, inlinedAt: !17743)
!18083 = !DILocation(line: 1043, column: 13, scope: !17740, inlinedAt: !17743)
!18084 = !DILocation(line: 60, column: 10, scope: !17706)
!18085 = !DILocation(line: 61, column: 6, scope: !17706)
!18086 = !DILocation(line: 54, column: 5, scope: !17706)
!18087 = distinct !DILexicalBlock(scope: !18088, file: !2867, line: 41, column: 9)
!18088 = distinct !DILexicalBlock(scope: !18092, file: !2867, line: 36, column: 9)
!18089 = distinct !DILexicalBlock(scope: !18091, file: !2867, line: 30, column: 9)
!18090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Take<core::str::iter::Chars>", scope: !18353, file: !759, size: 192, align: 64, flags: DIFlagPublic, elements: !18356, templateParams: !18357, identifier: "5e4c3cec3b90f6dd5cfd9fb66ac2fd54")
!18091 = distinct !DILexicalBlock(scope: !18092, file: !2867, line: 30, column: 9)
!18092 = distinct !DILexicalBlock(scope: !18093, file: !2867, line: 29, column: 9)
!18093 = distinct !DILexicalBlock(scope: !18094, file: !2867, line: 22, column: 9)
!18094 = distinct !DILexicalBlock(scope: !18095, file: !2867, line: 21, column: 9)
!18095 = distinct !DILexicalBlock(scope: !18096, file: !2867, line: 20, column: 9)
!18096 = distinct !DILexicalBlock(scope: !18097, file: !2867, line: 19, column: 9)
!18097 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtCs5yXxDE1DkoT_4tera9reportingNtB2_14SourceLocation3new", scope: !358, file: !2867, line: 18, type: !18339, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, declaration: !18340, retainedNodes: !18352)
!18098 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCsf3Ta7LF998c_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !18359, file: !2671, line: 2224, type: !18361, scopeLine: 2224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18363)
!18099 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera", scope: !18371, file: !18369, line: 1184, type: !18374, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18377, retainedNodes: !18376)
!18100 = distinct !DILexicalBlock(scope: !18101, file: !18369, line: 1101, column: 13)
!18101 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCsf3Ta7LF998c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs5yXxDE1DkoT_4tera", scope: !18378, file: !18369, line: 1099, type: !18374, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1575, retainedNodes: !18381)
!18102 = distinct !DISubprogram(name: "next", linkageName: "_RNvXNtNtCsf3Ta7LF998c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next", scope: !2670, file: !2502, line: 39, type: !2505, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18385)
!18103 = distinct !DISubprogram(name: "next<core::str::iter::Chars>", linkageName: "_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera", scope: !18390, file: !18389, line: 36, type: !18393, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18357, retainedNodes: !18395)
!18104 = distinct !DILocation(line: 42, column: 18, scope: !18102, inlinedAt: !18388)
!18105 = distinct !DILocation(line: 63, column: 37, scope: !375, inlinedAt: !18104)
!18106 = distinct !DILocation(line: 0, scope: !396, inlinedAt: !18105)
!18107 = distinct !DILocation(line: 55, column: 33, scope: !377, inlinedAt: !18104)
!18108 = distinct !DILocation(line: 0, scope: !396, inlinedAt: !18107)
!18109 = distinct !DILocation(line: 48, column: 29, scope: !379, inlinedAt: !18104)
!18110 = distinct !DILocation(line: 0, scope: !396, inlinedAt: !18109)
!18111 = distinct !DILocation(line: 37, column: 20, scope: !387, inlinedAt: !18104)
!18112 = distinct !DILocation(line: 0, scope: !396, inlinedAt: !18111)
!18113 = distinct !DILocation(line: 0, scope: !387, inlinedAt: !18104)
!18114 = distinct !DISubprogram(name: "index<core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXs2_NtNtCsf3Ta7LF998c_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs5yXxDE1DkoT_4tera", scope: !2715, file: !2698, line: 62, type: !2809, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !2810, retainedNodes: !18401)
!18115 = distinct !DILexicalBlock(scope: !18116, file: !2698, line: 527, column: 13)
!18116 = distinct !DILexicalBlock(scope: !18117, file: !2698, line: 525, column: 9)
!18117 = distinct !DISubprogram(name: "index", linkageName: "_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE5index", scope: !2811, file: !2698, line: 524, type: !2813, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18409)
!18118 = distinct !DISubprogram(name: "index<core::ops::range::Range<usize>>", linkageName: "_RNvXs2_NtNtCsf3Ta7LF998c_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range5RangejEE5indexCs5yXxDE1DkoT_4tera", scope: !2715, file: !2698, line: 62, type: !2717, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !2697, retainedNodes: !18414)
!18119 = distinct !DISubprogram(name: "index", linkageName: "_RNvXs5_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE5index", scope: !2700, file: !2698, line: 247, type: !2719, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18419)
!18120 = distinct !DILexicalBlock(scope: !18121, file: !2698, line: 334, column: 13)
!18121 = distinct !DILexicalBlock(scope: !18122, file: !2698, line: 332, column: 9)
!18122 = distinct !DISubprogram(name: "index", linkageName: "_RNvXs6_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE5index", scope: !2705, file: !2698, line: 331, type: !2721, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18428)
!18123 = distinct !DISubprogram(name: "get", linkageName: "_RNvXs6_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get", scope: !2705, file: !2698, line: 261, type: !2707, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18433)
!18124 = distinct !DILexicalBlock(scope: !18125, file: !2698, line: 305, column: 13)
!18125 = distinct !DILexicalBlock(scope: !18126, file: !2698, line: 284, column: 9)
!18126 = distinct !DISubprogram(name: "get_unchecked", linkageName: "_RNvXs6_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE13get_unchecked", scope: !2705, file: !2698, line: 283, type: !2709, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18440)
!18127 = distinct !DISubprogram(name: "with_capacity", linkageName: "_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String13with_capacity", scope: !12, file: !1346, line: 493, type: !2723, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, declaration: !2724, retainedNodes: !18446)
!18128 = distinct !DISubprogram(name: "with_capacity<u8>", linkageName: "_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VechE13with_capacityCs5yXxDE1DkoT_4tera", scope: !11, file: !1392, line: 524, type: !2726, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !997, declaration: !2727, retainedNodes: !18450)
!18129 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE16with_capacity_inCs5yXxDE1DkoT_4tera", scope: !11, file: !1392, line: 972, type: !1395, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1017, declaration: !1396, retainedNodes: !18455)
!18130 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechE16with_capacity_inCs5yXxDE1DkoT_4tera", scope: !10, file: !1399, line: 177, type: !1402, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1017, declaration: !1403, retainedNodes: !18461)
!18131 = distinct !DILexicalBlock(scope: !18133, file: !1399, line: 454, column: 13)
!18132 = distinct !DILexicalBlock(scope: !18133, file: !1399, line: 446, column: 13)
!18133 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5yXxDE1DkoT_4tera", scope: !9, file: !1399, line: 444, type: !1424, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1016, declaration: !1432, retainedNodes: !18470)
!18134 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCs5yXxDE1DkoT_4tera", scope: !9, file: !1399, line: 786, type: !1453, scopeLine: 786, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1016, declaration: !1454, retainedNodes: !18478)
!18135 = distinct !DILexicalBlock(scope: !18136, file: !1203, line: 1165, column: 13)
!18136 = distinct !DISubprogram(name: "map<u32, char, core::str::iter::{impl#0}::next::{closure_env#0}>", linkageName: "_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionmE3mapcNCNvXNtNtB5_3str4iterNtBU_5CharsNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs5yXxDE1DkoT_4tera", scope: !373, file: !1203, line: 1160, type: !2687, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !2690, declaration: !2691, retainedNodes: !18484)
!18137 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCsf3Ta7LF998c_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !18488, file: !18369, line: 263, type: !18490, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18492)
!18138 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCsf3Ta7LF998c_4core3numj13unchecked_add", scope: !2616, file: !2615, line: 1031, type: !2618, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18497)
!18139 = distinct !DISubprogram(name: "get_line_starts", linkageName: "_RNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts", scope: !2193, file: !2867, line: 4, type: !18502, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18503)
!18140 = distinct !DILocation(line: 19, column: 35, scope: !18097)
!18141 = distinct !DILocation(line: 0, scope: !18139, inlinedAt: !18140)
!18142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}", scope: !18519, file: !759, align: 8, elements: !975, identifier: "ff84c7d5249a1f7ad7ca5f5841ecaf3a")
!18143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CharSearcher", scope: !18524, file: !759, size: 384, align: 64, flags: DIFlagPublic, elements: !18532, templateParams: !975, identifier: "9e2225116c536a9c166c6a06620377c")
!18144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MatchIndicesInternal<char>", scope: !2498, file: !759, size: 384, align: 64, flags: DIFlagProtected, elements: !18523, templateParams: !18534, identifier: "302bf23398f3b0904d55b68ca90b0b32")
!18145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MatchIndices<char>", scope: !2498, file: !759, size: 384, align: 64, flags: DIFlagPublic, elements: !18521, templateParams: !18534, identifier: "7260a984fbf1af5820282d071f8d9a9a")
!18146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Map<core::str::iter::MatchIndices<char>, tera::reporting::get_line_starts::{closure_env#0}>", scope: !18515, file: !759, size: 384, align: 64, flags: DIFlagPublic, elements: !18518, templateParams: !18537, identifier: "6795b62b964ae80dc981e2b06010fb5")
!18147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !18150, file: !759, size: 384, align: 64, flags: DIFlagPublic, elements: !18514, templateParams: !18539, identifier: "a1800a73c0ca992b5681512ee10fdc0a")
!18148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !18150, file: !759, size: 384, align: 64, flags: DIFlagPublic, elements: !975, templateParams: !18539, identifier: "6224dc2ad80a02915da2306a11e8d22c")
!18149 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !18150, file: !759, size: 384, align: 64, elements: !18512, templateParams: !975, identifier: "d9f7a0e94c075cab1ce9c627d7db25b7", discriminator: !18540)
!18150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::iter::adapters::map::Map<core::str::iter::MatchIndices<char>, tera::reporting::get_line_starts::{closure_env#0}>>", scope: !1035, file: !759, size: 384, align: 64, flags: DIFlagPublic, elements: !18509, templateParams: !975, identifier: "4c1a2f44bf3b63672a012d9e3d0bc3f8")
!18151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Item<usize>", scope: !1035, file: !759, size: 128, align: 64, flags: DIFlagPrivate, elements: !18553, templateParams: !18377, identifier: "13b0b59a094df6f1a278975e04107eb2")
!18152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IntoIter<usize>", scope: !1035, file: !759, size: 128, align: 64, flags: DIFlagPublic, elements: !18551, templateParams: !18377, identifier: "3f00adbf74589e7d9913cb137526f4e3")
!18153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Once<usize>", scope: !18547, file: !759, size: 128, align: 64, flags: DIFlagPublic, elements: !18549, templateParams: !1575, identifier: "ec459a62c0fecf4f528a4871f63ee457")
!18154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !18157, file: !759, size: 128, align: 64, flags: DIFlagPublic, elements: !18546, templateParams: !18555, identifier: "f62970d5012d37608542ceb0bdb83a71")
!18155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !18157, file: !759, size: 128, align: 64, flags: DIFlagPublic, elements: !975, templateParams: !18555, identifier: "e6998dc224d9b411a32c8ccc48d942b0")
!18156 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !18157, file: !759, size: 128, align: 64, elements: !18544, templateParams: !975, identifier: "8464cba41faf1d18d753887bdd7269f7", discriminator: !18556)
!18157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<core::iter::sources::once::Once<usize>>", scope: !1035, file: !759, size: 128, align: 64, flags: DIFlagPublic, elements: !18541, templateParams: !975, identifier: "e7a4a8495e63c13099efdc40ca380a29")
!18158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Chain<core::iter::sources::once::Once<usize>, core::iter::adapters::map::Map<core::str::iter::MatchIndices<char>, tera::reporting::get_line_starts::{closure_env#0}>>", scope: !18505, file: !759, size: 512, align: 64, flags: DIFlagPublic, elements: !18508, templateParams: !18559, identifier: "a1e9fac5c5b4c4bde675bd84e68036e9")
!18159 = distinct !DILexicalBlock(scope: !18160, file: !2598, line: 61, column: 38)
!18160 = distinct !DILexicalBlock(scope: !18161, file: !2598, line: 61, column: 38)
!18161 = distinct !DILexicalBlock(scope: !18162, file: !2376, line: 2082, column: 13)
!18162 = distinct !DISubprogram(name: "collect<core::iter::adapters::chain::Chain<core::iter::sources::once::Once<usize>, core::iter::adapters::map::Map<core::str::iter::MatchIndices<char>, tera::reporting::get_line_starts::{closure_env#0}>>, alloc::vec::Vec<usize, alloc::alloc::Global>>", linkageName: "_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtNtBa_7sources4once4OncejEINtNtB8_3map3MapINtNtNtBc_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsgCecv3eZDcN_5alloc3vec3VecjEEB2k_", scope: !2329, file: !2376, line: 2073, type: !18561, scopeLine: 2073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18570, retainedNodes: !18567)
!18163 = distinct !DILocation(line: 7, column: 10, scope: !18139, inlinedAt: !18140)
!18164 = distinct !DILocation(line: 2073, column: 45, scope: !18162, inlinedAt: !18163)
!18165 = distinct !DISubprogram(name: "from_iter<usize, core::iter::adapters::chain::Chain<core::iter::sources::once::Once<usize>, core::iter::adapters::map::Map<core::str::iter::MatchIndices<char>, tera::reporting::get_line_starts::{closure_env#0}>>>", linkageName: "_RINvXsf_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecjEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorjE9from_iterINtNtNtBP_8adapters5chain5ChainINtNtNtBP_7sources4once4OncejEINtNtB1Z_3map3MapINtNtNtBR_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEEB3P_", scope: !2612, file: !1392, line: 4038, type: !18561, scopeLine: 4038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18574, retainedNodes: !18572)
!18166 = distinct !DILocation(line: 2086, column: 9, scope: !18162, inlinedAt: !18163)
!18167 = distinct !DILocation(line: 4038, column: 45, scope: !18165, inlinedAt: !18166)
!18168 = distinct !DISubprogram(name: "from_iter<usize, core::iter::adapters::chain::Chain<core::iter::sources::once::Once<usize>, core::iter::adapters::map::Map<core::str::iter::MatchIndices<char>, tera::reporting::get_line_starts::{closure_env#0}>>>", linkageName: "_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain5ChainINtNtNtB1o_7sources4once4OncejEINtNtB1m_3map3MapINtNtNtB1q_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEE9from_iterB3B_", scope: !18578, file: !18575, line: 32, type: !18561, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18574, retainedNodes: !18579)
!18169 = distinct !DILocation(line: 4039, column: 9, scope: !18165, inlinedAt: !18166)
!18170 = distinct !DILocation(line: 32, column: 26, scope: !18168, inlinedAt: !18169)
!18171 = distinct !{!18171, !"_RNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts"}
!18172 = distinct !{!18172, !18171, !"_RNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts: argument 1"}
!18173 = distinct !{!18173, !18171, !"_RNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts: argument 0"}
!18174 = distinct !DISubprogram(name: "chain<core::iter::sources::once::Once<usize>, core::iter::adapters::map::Map<core::str::iter::MatchIndices<char>, tera::reporting::get_line_starts::{closure_env#0}>>", linkageName: "_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources4once4OncejENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_8adapters3map3MapINtNtNtBc_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEB2E_", scope: !2329, file: !2376, line: 510, type: !18583, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18588, retainedNodes: !18585)
!18175 = distinct !DILocation(line: 6, column: 10, scope: !18139, inlinedAt: !18140)
!18176 = distinct !DILocation(line: 0, scope: !18174, inlinedAt: !18175)
!18177 = distinct !DISubprogram(name: "new<core::iter::sources::once::Once<usize>, core::iter::adapters::map::Map<core::str::iter::MatchIndices<char>, tera::reporting::get_line_starts::{closure_env#0}>>", linkageName: "_RNvMNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB2_5ChainINtNtNtB6_7sources4once4OncejEINtNtB4_3map3MapINtNtNtB8_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EE3newB2m_", scope: !18158, file: !18589, line: 36, type: !18583, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18559, declaration: !18591, retainedNodes: !18593)
!18178 = distinct !DILocation(line: 515, column: 9, scope: !18174, inlinedAt: !18175)
!18179 = distinct !DILocation(line: 0, scope: !18177, inlinedAt: !18178)
!18180 = distinct !{!18180, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources4once4OncejENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_8adapters3map3MapINtNtNtBc_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEB2E_"}
!18181 = distinct !{!18181, !18180, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources4once4OncejENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_8adapters3map3MapINtNtNtBc_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEB2E_: argument 1"}
!18182 = distinct !DILocation(line: 0, scope: !18174, inlinedAt: !18175)
!18183 = distinct !DILocation(line: 0, scope: !18177, inlinedAt: !18178)
!18184 = distinct !{!18184, !18180, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources4once4OncejENtNtNtBa_6traits8iterator8Iterator5chainINtNtNtBa_8adapters3map3MapINtNtNtBc_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EEB2E_: argument 0"}
!18185 = distinct !DISubprogram(name: "index<usize, usize, alloc::alloc::Global>", linkageName: "_RNvXsd_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjEINtNtNtCsf3Ta7LF998c_4core3ops5index5IndexjE5indexCs5yXxDE1DkoT_4tera", scope: !18603, file: !1392, line: 3976, type: !18606, scopeLine: 3976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18609, retainedNodes: !18608)
!18186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&[usize]", file: !759, size: 128, align: 64, elements: !18618, templateParams: !975, identifier: "a94d184ec7a10d03ac3d257c401ebb83")
!18187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const [usize]", file: !759, size: 128, align: 64, elements: !18623, templateParams: !975, identifier: "7f0d9eef14a7a86ef8a0e7b8227fc09e")
!18188 = distinct !DISubprogram(name: "index<usize, usize>", linkageName: "_RNvXNtNtCsf3Ta7LF998c_4core5slice5indexSjINtNtNtB6_3ops5index5IndexjE5indexCs5yXxDE1DkoT_4tera", scope: !2803, file: !2622, line: 18, type: !18614, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18624, retainedNodes: !18620)
!18189 = distinct !DISubprogram(name: "index<usize>", linkageName: "_RNvXs0_NtNtCsf3Ta7LF998c_4core5slice5indexjINtB5_10SliceIndexSjE5indexCs5yXxDE1DkoT_4tera", scope: !2624, file: !2622, line: 236, type: !18630, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1575, retainedNodes: !18632)
!18190 = distinct !DISubprogram(name: "len<usize, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE3lenCs5yXxDE1DkoT_4tera", scope: !284, file: !1392, line: 3135, type: !18639, scopeLine: 3135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1969, declaration: !18640, retainedNodes: !18641)
!18191 = distinct !DISubprogram(name: "deref<usize, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCs5yXxDE1DkoT_4tera", scope: !2869, file: !1392, line: 3894, type: !18650, scopeLine: 3894, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1969, retainedNodes: !18651)
!18192 = distinct !DISubprogram(name: "as_slice<usize, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE8as_sliceCs5yXxDE1DkoT_4tera", scope: !284, file: !1392, line: 1856, type: !18650, scopeLine: 1856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1969, declaration: !18658, retainedNodes: !18659)
!18193 = distinct !DISubprogram(name: "as_ptr<usize, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE6as_ptrCs5yXxDE1DkoT_4tera", scope: !284, file: !1392, line: 1974, type: !18668, scopeLine: 1974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1969, declaration: !18669, retainedNodes: !18670)
!18194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<usize>", scope: !1011, file: !759, size: 64, align: 64, flags: DIFlagPublic, elements: !18685, templateParams: !1575, identifier: "95bfc06295e4b7491b738eb4b91ed05a")
!18195 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, usize>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner8non_nulljECs5yXxDE1DkoT_4tera", scope: !9, file: !1399, line: 626, type: !18683, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18686, declaration: !18687)
!18196 = distinct !DISubprogram(name: "ptr<usize, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjE3ptrCs5yXxDE1DkoT_4tera", scope: !283, file: !1399, line: 304, type: !18696, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !1969, declaration: !18697)
!18197 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, usize>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner3ptrjECs5yXxDE1DkoT_4tera", scope: !9, file: !1399, line: 621, type: !18699, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !18686, declaration: !18700)
!18198 = distinct !DILocation(line: 262, column: 12, scope: !18123, inlinedAt: !18434)
!18199 = distinct !DILocation(line: 0, scope: !507, inlinedAt: !18198)
!18200 = distinct !DILocation(line: 0, scope: !506, inlinedAt: !18198)
!18201 = distinct !DILocation(line: 145, column: 39, scope: !505, inlinedAt: !18198)
!18202 = distinct !DILocation(line: 0, scope: !508, inlinedAt: !18201)
!18203 = distinct !DILocation(line: 146, column: 54, scope: !505, inlinedAt: !18198)
!18204 = distinct !DILocation(line: 0, scope: !508, inlinedAt: !18203)
!18205 = distinct !DILocation(line: 0, scope: !505, inlinedAt: !18198)
!18206 = distinct !DILocation(line: 145, column: 50, scope: !505, inlinedAt: !18198)
!18207 = distinct !DILocation(line: 0, scope: !509, inlinedAt: !18206)
!18208 = distinct !DILocation(line: 1154, column: 18, scope: !509, inlinedAt: !18206)
!18209 = distinct !DILocation(line: 0, scope: !510, inlinedAt: !18208)
!18210 = distinct !{!18210, !"_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range"}
!18211 = distinct !{!18211, !18210, !"_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range: argument 0"}
!18212 = distinct !DILocation(line: 145, column: 57, scope: !505, inlinedAt: !18198)
!18213 = distinct !DILocation(line: 0, scope: !511, inlinedAt: !18212)
!18214 = distinct !DILocation(line: 146, column: 63, scope: !505, inlinedAt: !18198)
!18215 = distinct !DILocation(line: 0, scope: !509, inlinedAt: !18214)
!18216 = distinct !DILocation(line: 1154, column: 18, scope: !2858, inlinedAt: !18214)
!18217 = distinct !DILocation(line: 0, scope: !510, inlinedAt: !18216)
!18218 = distinct !DILocation(line: 146, column: 70, scope: !505, inlinedAt: !18198)
!18219 = distinct !DILocation(line: 0, scope: !511, inlinedAt: !18218)
!18220 = distinct !DILocation(line: 526, column: 20, scope: !18116, inlinedAt: !18410)
!18221 = distinct !DILocation(line: 0, scope: !497, inlinedAt: !18220)
!18222 = distinct !DILocation(line: 493, column: 18, scope: !497, inlinedAt: !18220)
!18223 = distinct !DILocation(line: 0, scope: !498, inlinedAt: !18222)
!18224 = distinct !DILocation(line: 496, column: 34, scope: !497, inlinedAt: !18220)
!18225 = distinct !DILocation(line: 0, scope: !500, inlinedAt: !18224)
!18226 = distinct !DILocation(line: 515, column: 36, scope: !499, inlinedAt: !18224)
!18227 = distinct !DILocation(line: 0, scope: !503, inlinedAt: !18226)
!18228 = distinct !{!18228, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!18229 = distinct !{!18229, !18228, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!18230 = distinct !DILocation(line: 396, column: 36, scope: !498, inlinedAt: !18222)
!18231 = distinct !DILocation(line: 0, scope: !504, inlinedAt: !18230)
!18232 = distinct !DILocation(line: 0, scope: !502, inlinedAt: !18226)
!18233 = distinct !DILocation(line: 0, scope: !499, inlinedAt: !18224)
!18234 = distinct !DISubprogram(name: "chars", linkageName: "_RNvMNtCsf3Ta7LF998c_4core3stre5chars", scope: !2684, file: !2683, line: 1079, type: !2801, scopeLine: 1079, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18727)
!18235 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCsf3Ta7LF998c_4core4hint16assert_unchecked", scope: !1465, file: !1463, line: 202, type: !1467, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18734)
!18236 = distinct !DISubprogram(name: "as_ptr<u8>", linkageName: "_RNvMs1_NtNtCsf3Ta7LF998c_4core3ptr8non_nullINtB5_7NonNullhE6as_ptrCs5yXxDE1DkoT_4tera", scope: !7, file: !2166, line: 411, type: !18738, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !997, declaration: !18739)
!18237 = distinct !DISubprogram(name: "iter<u8>", linkageName: "_RNvMNtCsf3Ta7LF998c_4core5sliceSh4iterCs5yXxDE1DkoT_4tera", scope: !2620, file: !2619, line: 1041, type: !2748, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !997)
!18238 = distinct !DISubprogram(name: "new<u8>", linkageName: "_RNvMs4_NtNtCsf3Ta7LF998c_4core5slice4iterINtB5_4IterhE3newCs5yXxDE1DkoT_4tera", scope: !369, file: !2749, line: 94, type: !2748, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !997, declaration: !2750)
!18239 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCsf3Ta7LF998c_4core3ptr7mut_ptrOh3addCs5yXxDE1DkoT_4tera", scope: !1235, file: !1233, line: 937, type: !2492, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !997)
!18240 = distinct !DILocation(line: 45, column: 16, scope: !386, inlinedAt: !18104)
!18241 = distinct !DILocation(line: 0, scope: !388, inlinedAt: !18240)
!18242 = distinct !DILocation(line: 185, column: 40, scope: !394, inlinedAt: !18111)
!18243 = distinct !DILocation(line: 0, scope: !397, inlinedAt: !18242)
!18244 = distinct !DILocation(line: 0, scope: !395, inlinedAt: !18111)
!18245 = distinct !DILocation(line: 0, scope: !394, inlinedAt: !18111)
!18246 = distinct !DILocation(line: 180, column: 28, scope: !394, inlinedAt: !18111)
!18247 = distinct !DILocation(line: 1662, column: 11, scope: !398, inlinedAt: !18246)
!18248 = distinct !DILocation(line: 1662, column: 18, scope: !398, inlinedAt: !18246)
!18249 = distinct !{!18249, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5yXxDE1DkoT_4tera"}
!18250 = distinct !{!18250, !18249, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5yXxDE1DkoT_4tera: argument 0"}
!18251 = distinct !DILocation(line: 0, scope: !386, inlinedAt: !18104)
!18252 = distinct !DILocation(line: 0, scope: !379, inlinedAt: !18104)
!18253 = distinct !DILocation(line: 49, column: 18, scope: !378, inlinedAt: !18104)
!18254 = distinct !DILocation(line: 0, scope: !399, inlinedAt: !18253)
!18255 = distinct !DILocation(line: 185, column: 40, scope: !394, inlinedAt: !18109)
!18256 = distinct !DILocation(line: 0, scope: !397, inlinedAt: !18255)
!18257 = distinct !DILocation(line: 0, scope: !395, inlinedAt: !18109)
!18258 = distinct !DILocation(line: 0, scope: !394, inlinedAt: !18109)
!18259 = distinct !DILocation(line: 180, column: 28, scope: !394, inlinedAt: !18109)
!18260 = distinct !DILocation(line: 1662, column: 11, scope: !398, inlinedAt: !18259)
!18261 = distinct !DILocation(line: 1662, column: 18, scope: !398, inlinedAt: !18259)
!18262 = distinct !DILocation(line: 0, scope: !378, inlinedAt: !18104)
!18263 = distinct !DILocation(line: 0, scope: !377, inlinedAt: !18104)
!18264 = distinct !DILocation(line: 185, column: 40, scope: !394, inlinedAt: !18107)
!18265 = distinct !DILocation(line: 0, scope: !397, inlinedAt: !18264)
!18266 = distinct !DILocation(line: 0, scope: !395, inlinedAt: !18107)
!18267 = distinct !DILocation(line: 0, scope: !394, inlinedAt: !18107)
!18268 = distinct !DILocation(line: 180, column: 28, scope: !394, inlinedAt: !18107)
!18269 = distinct !DILocation(line: 1662, column: 11, scope: !398, inlinedAt: !18268)
!18270 = distinct !DILocation(line: 1662, column: 18, scope: !398, inlinedAt: !18268)
!18271 = distinct !DILocation(line: 0, scope: !376, inlinedAt: !18104)
!18272 = distinct !DILocation(line: 56, column: 19, scope: !376, inlinedAt: !18104)
!18273 = distinct !DILocation(line: 0, scope: !399, inlinedAt: !18272)
!18274 = distinct !DILocation(line: 0, scope: !375, inlinedAt: !18104)
!18275 = distinct !DILocation(line: 64, column: 37, scope: !374, inlinedAt: !18104)
!18276 = distinct !DILocation(line: 0, scope: !399, inlinedAt: !18275)
!18277 = distinct !DILocation(line: 185, column: 40, scope: !394, inlinedAt: !18105)
!18278 = distinct !DILocation(line: 0, scope: !397, inlinedAt: !18277)
!18279 = distinct !DILocation(line: 0, scope: !395, inlinedAt: !18105)
!18280 = distinct !DILocation(line: 0, scope: !394, inlinedAt: !18105)
!18281 = distinct !DILocation(line: 180, column: 28, scope: !394, inlinedAt: !18105)
!18282 = distinct !DILocation(line: 1662, column: 11, scope: !398, inlinedAt: !18281)
!18283 = distinct !DILocation(line: 1662, column: 18, scope: !398, inlinedAt: !18281)
!18284 = distinct !DILocation(line: 0, scope: !374, inlinedAt: !18104)
!18285 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvXNtNtCsf3Ta7LF998c_4core3str4iterNtB4_5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator4next0Cs5yXxDE1DkoT_4tera", scope: !2685, file: !2502, line: 42, type: !2757, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18752)
!18286 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvMNtNtCsf3Ta7LF998c_4core4char7methodsc18from_u32_unchecked", scope: !2541, file: !2537, line: 243, type: !2759, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18756)
!18287 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvNtNtCsf3Ta7LF998c_4core4char7convert18from_u32_unchecked", scope: !2761, file: !2760, line: 26, type: !2763, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, retainedNodes: !18760)
!18288 = distinct !DILocation(line: 32, column: 35, scope: !18089)
!18289 = distinct !DILocation(line: 0, scope: !442, inlinedAt: !18288)
!18290 = distinct !DILocation(line: 33, column: 32, scope: !18089)
!18291 = distinct !DILocation(line: 0, scope: !442, inlinedAt: !18290)
!18292 = distinct !DILocation(line: 1452, column: 24, scope: !442, inlinedAt: !18288)
!18293 = distinct !DILocation(line: 0, scope: !443, inlinedAt: !18292)
!18294 = distinct !DILocation(line: 1452, column: 24, scope: !442, inlinedAt: !18290)
!18295 = distinct !DILocation(line: 0, scope: !443, inlinedAt: !18294)
!18296 = distinct !DILocation(line: 1454, column: 14, scope: !440, inlinedAt: !18288)
!18297 = distinct !DILocation(line: 0, scope: !444, inlinedAt: !18296)
!18298 = distinct !DILocation(line: 1454, column: 14, scope: !440, inlinedAt: !18290)
!18299 = distinct !DILocation(line: 0, scope: !444, inlinedAt: !18298)
!18300 = distinct !DILocation(line: 0, scope: !441, inlinedAt: !18288)
!18301 = distinct !DILocation(line: 0, scope: !441, inlinedAt: !18290)
!18302 = distinct !DILocation(line: 1458, column: 84, scope: !440, inlinedAt: !18288)
!18303 = distinct !DILocation(line: 0, scope: !447, inlinedAt: !18302)
!18304 = distinct !DILocation(line: 1458, column: 84, scope: !440, inlinedAt: !18290)
!18305 = distinct !DILocation(line: 0, scope: !447, inlinedAt: !18304)
!18306 = distinct !DILocation(line: 0, scope: !440, inlinedAt: !18288)
!18307 = distinct !DILocation(line: 0, scope: !440, inlinedAt: !18290)
!18308 = distinct !DILocation(line: 51, column: 5, scope: !18097)
!18309 = distinct !DILocation(line: 0, scope: !285, inlinedAt: !18308)
!18310 = distinct !DILocation(line: 848, column: 1, scope: !285, inlinedAt: !18308)
!18311 = distinct !DILocation(line: 0, scope: !286, inlinedAt: !18310)
!18312 = distinct !DILocation(line: 848, column: 1, scope: !285, inlinedAt: !18308)
!18313 = distinct !DILocation(line: 0, scope: !286, inlinedAt: !18312)
!18314 = distinct !DILocation(line: 42, column: 23, scope: !18087)
!18315 = distinct !DILocation(line: 1452, column: 24, scope: !442, inlinedAt: !18314)
!18316 = distinct !DILocation(line: 1903, column: 18, scope: !443, inlinedAt: !18315)
!18317 = distinct !DILocation(line: 0, scope: !442, inlinedAt: !18314)
!18318 = distinct !DILocation(line: 0, scope: !443, inlinedAt: !18315)
!18319 = distinct !DILocation(line: 1454, column: 14, scope: !440, inlinedAt: !18314)
!18320 = distinct !DILocation(line: 0, scope: !444, inlinedAt: !18319)
!18321 = distinct !DILocation(line: 0, scope: !441, inlinedAt: !18314)
!18322 = distinct !DILocation(line: 1458, column: 84, scope: !440, inlinedAt: !18314)
!18323 = distinct !DILocation(line: 0, scope: !447, inlinedAt: !18322)
!18324 = distinct !DILocation(line: 0, scope: !440, inlinedAt: !18314)
!18325 = distinct !DILocation(line: 1458, column: 71, scope: !440, inlinedAt: !18314)
!18326 = distinct !DILocation(line: 2058, column: 29, scope: !449, inlinedAt: !18325)
!18327 = distinct !{!18327, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push"}
!18328 = distinct !{!18328, !18327, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push: argument 0"}
!18329 = distinct !DILocation(line: 2061, column: 18, scope: !449, inlinedAt: !18325)
!18330 = distinct !DILocation(line: 305, column: 20, scope: !452, inlinedAt: !18329)
!18331 = distinct !DILocation(line: 622, column: 14, scope: !451, inlinedAt: !18330)
!18332 = distinct !DILocation(line: 1458, column: 13, scope: !440, inlinedAt: !18314)
!18333 = distinct !DILocation(line: 0, scope: !458, inlinedAt: !18332)
!18334 = distinct !DILocation(line: 0, scope: !457, inlinedAt: !18332)
!18335 = distinct !DILocation(line: 1459, column: 22, scope: !440, inlinedAt: !18314)
!18336 = distinct !DILocation(line: 2225, column: 33, scope: !460, inlinedAt: !18335)
!18337 = distinct !DILocation(line: 0, scope: !460, inlinedAt: !18335)
!18338 = !{!358, !33, !2918}
!18339 = !DISubroutineType(types: !18338)
!18340 = !DISubprogram(name: "new", linkageName: "_RNvMNtCs5yXxDE1DkoT_4tera9reportingNtB2_14SourceLocation3new", scope: !358, file: !2867, line: 18, type: !18339, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !975)
!18341 = !DILocalVariable(name: "source", arg: 1, scope: !18097, file: !2867, line: 18, type: !33)
!18342 = !DILocalVariable(name: "span", arg: 2, scope: !18097, file: !2867, line: 18, type: !2918)
!18343 = !DILocalVariable(name: "line_starts", scope: !18096, file: !2867, line: 19, type: !284, align: 64)
!18344 = !DILocalVariable(name: "start_line", scope: !18095, file: !2867, line: 20, type: !959, align: 64)
!18345 = !DILocalVariable(name: "start_col", scope: !18094, file: !2867, line: 21, type: !959, align: 64)
!18346 = !DILocalVariable(name: "line", scope: !18093, file: !2867, line: 22, type: !33, align: 64)
!18347 = !DILocalVariable(name: "underline", scope: !18092, file: !2867, line: 29, type: !12, align: 64)
!18348 = !DILocalVariable(name: "iter", scope: !18091, file: !2867, line: 30, type: !18090, align: 64)
!18349 = !DILocalVariable(name: "c", scope: !18089, file: !2867, line: 30, type: !2510, align: 32)
!18350 = !DILocalVariable(name: "width", scope: !18088, file: !2867, line: 36, type: !959, align: 64)
!18351 = !DILocalVariable(name: "iter", scope: !18087, file: !2867, line: 41, type: !93, align: 64)
!18352 = !{!18341, !18342, !18343, !18344, !18345, !18346, !18347, !18348, !18349, !18350, !18351}
!18353 = !DINamespace(name: "take", scope: !2324)
!18354 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !18090, file: !759, baseType: !435, size: 128, align: 64, flags: DIFlagPrivate)
!18355 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !18090, file: !759, baseType: !959, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!18356 = !{!18354, !18355}
!18357 = !{!2501}
!18358 = !DILocalVariable(name: "self", arg: 1, scope: !18098, file: !2671, line: 2224, type: !2152)
!18359 = !DINamespace(name: "{impl#58}", scope: !2673)
!18360 = !{!1450, !2152, !2152}
!18361 = !DISubroutineType(types: !18360)
!18362 = !DILocalVariable(name: "other", arg: 2, scope: !18098, file: !2671, line: 2224, type: !2152)
!18363 = !{!18358, !18362}
!18364 = !DILexicalBlockFile(scope: !18087, file: !2867, discriminator: 2)
!18365 = !DILocation(line: 41, column: 18, scope: !18364)
!18366 = !DILocation(line: 1185, column: 14, scope: !18099, inlinedAt: !18365)
!18367 = !DILocation(line: 1100, column: 12, scope: !18101, inlinedAt: !18366)
!18368 = !DILocation(line: 2224, column: 19, scope: !18098, inlinedAt: !18367)
!18369 = !DIFile(filename: "library/core/src/iter/range.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "6038fbd2305f6e8ce8c79c7d50b4046d")
!18370 = !DINamespace(name: "range", scope: !2323)
!18371 = !DINamespace(name: "{impl#6}", scope: !18370)
!18372 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::ops::range::Range<usize>", baseType: !93, size: 64, align: 64, dwarfAddressSpace: 0)
!18373 = !{!465, !18372}
!18374 = !DISubroutineType(types: !18373)
!18375 = !DILocalVariable(name: "self", arg: 1, scope: !18099, file: !18369, line: 1184, type: !18372)
!18376 = !{!18375}
!18377 = !{!2397}
!18378 = !DINamespace(name: "{impl#5}", scope: !18370)
!18379 = !DILocalVariable(name: "self", arg: 1, scope: !18101, file: !18369, line: 1099, type: !18372)
!18380 = !DILocalVariable(name: "old", scope: !18100, file: !18369, line: 1101, type: !959, align: 64)
!18381 = !{!18379, !18380}
!18382 = !DILocation(line: 1099, column: 18, scope: !18101, inlinedAt: !18366)
!18383 = !DILocation(line: 1184, column: 13, scope: !18099, inlinedAt: !18365)
!18384 = !DILocalVariable(name: "self", arg: 1, scope: !18102, file: !2502, line: 39, type: !2503)
!18385 = !{!18384}
!18386 = !DILexicalBlockFile(scope: !18091, file: !2867, discriminator: 2)
!18387 = !DILocation(line: 30, column: 18, scope: !18386)
!18388 = !DILocation(line: 39, column: 23, scope: !18103, inlinedAt: !18387)
!18389 = !DIFile(filename: "library/core/src/iter/adapters/take.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "c26f67e0ebb3407ed3802e085ce3525b")
!18390 = !DINamespace(name: "{impl#1}", scope: !18353)
!18391 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::take::Take<core::str::iter::Chars>", baseType: !18090, size: 64, align: 64, dwarfAddressSpace: 0)
!18392 = !{!439, !18391}
!18393 = !DISubroutineType(types: !18392)
!18394 = !DILocalVariable(name: "self", arg: 1, scope: !18103, file: !18389, line: 36, type: !18391)
!18395 = !{!18394}
!18396 = !DILocation(line: 39, column: 13, scope: !18102, inlinedAt: !18388)
!18397 = !DILocation(line: 36, column: 13, scope: !18103, inlinedAt: !18387)
!18398 = !DILocation(line: 0, scope: !18097)
!18399 = !DILocalVariable(name: "self", arg: 1, scope: !18114, file: !2698, line: 62, type: !33)
!18400 = !DILocalVariable(name: "index", arg: 2, scope: !18114, file: !2698, line: 62, type: !496)
!18401 = !{!18399, !18400}
!18402 = !DILocation(line: 23, column: 20, scope: !18094)
!18403 = !DILocation(line: 0, scope: !18114, inlinedAt: !18402)
!18404 = !DILocalVariable(name: "slice", arg: 2, scope: !18117, file: !2698, line: 524, type: !33)
!18405 = !DILocalVariable(name: "self", arg: 1, scope: !18117, file: !2698, line: 524, type: !496)
!18406 = !DILocalVariable(name: "start", scope: !18116, file: !2698, line: 525, type: !959, align: 64)
!18407 = !DILocalVariable(name: "end", scope: !18116, file: !2698, line: 525, type: !959, align: 64)
!18408 = !DILocalVariable(name: "s", scope: !18115, file: !2698, line: 527, type: !33, align: 64)
!18409 = !{!18405, !18404, !18406, !18407, !18408}
!18410 = !DILocation(line: 63, column: 15, scope: !18114, inlinedAt: !18402)
!18411 = !DILocation(line: 0, scope: !18117, inlinedAt: !18410)
!18412 = !DILocalVariable(name: "self", arg: 1, scope: !18118, file: !2698, line: 62, type: !33)
!18413 = !DILocalVariable(name: "index", scope: !18118, file: !2698, line: 62, type: !93, align: 64)
!18414 = !{!18412, !18413}
!18415 = !DILocation(line: 25, column: 20, scope: !18094)
!18416 = !DILocation(line: 0, scope: !18118, inlinedAt: !18415)
!18417 = !DILocalVariable(name: "slice", arg: 2, scope: !18119, file: !2698, line: 247, type: !33)
!18418 = !DILocalVariable(name: "self", scope: !18119, file: !2698, line: 247, type: !93, align: 64)
!18419 = !{!18418, !18417}
!18420 = !DILexicalBlockFile(scope: !18118, file: !2698, discriminator: 2)
!18421 = !DILocation(line: 63, column: 15, scope: !18420, inlinedAt: !18415)
!18422 = !DILocation(line: 0, scope: !18119, inlinedAt: !18421)
!18423 = !DILocalVariable(name: "slice", arg: 2, scope: !18122, file: !2698, line: 331, type: !33)
!18424 = !DILocalVariable(name: "self", arg: 1, scope: !18122, file: !2698, line: 331, type: !485)
!18425 = !DILocalVariable(name: "start", scope: !18121, file: !2698, line: 332, type: !959, align: 64)
!18426 = !DILocalVariable(name: "end", scope: !18121, file: !2698, line: 332, type: !959, align: 64)
!18427 = !DILocalVariable(name: "s", scope: !18120, file: !2698, line: 334, type: !33, align: 64)
!18428 = !{!18424, !18423, !18425, !18426, !18427}
!18429 = !DILocation(line: 248, column: 34, scope: !18119, inlinedAt: !18421)
!18430 = !DILocation(line: 0, scope: !18122, inlinedAt: !18429)
!18431 = !DILocalVariable(name: "slice", arg: 2, scope: !18123, file: !2698, line: 261, type: !33)
!18432 = !DILocalVariable(name: "self", arg: 1, scope: !18123, file: !2698, line: 261, type: !485)
!18433 = !{!18432, !18431}
!18434 = !DILocation(line: 333, column: 20, scope: !18121, inlinedAt: !18429)
!18435 = !DILocation(line: 0, scope: !18123, inlinedAt: !18434)
!18436 = !DILocalVariable(name: "slice", arg: 2, scope: !18126, file: !2698, line: 283, type: !33)
!18437 = !DILocalVariable(name: "self", scope: !18126, file: !2698, line: 283, type: !485, align: 64)
!18438 = !DILocalVariable(name: "slice", scope: !18125, file: !2698, line: 284, type: !486, align: 64)
end_hunk_4
begin_hunk_5_@llvm.experimental.noalias.scope.decl
!18528 = !DIDerivedType(tag: DW_TAG_member, name: "needle", scope: !18143, file: !759, baseType: !2510, size: 32, align: 32, offset: 288, flags: DIFlagPrivate)
!18529 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_size", scope: !18143, file: !759, baseType: !763, size: 8, align: 8, offset: 320, flags: DIFlagPrivate)
!18530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 32, align: 8, elements: !2932)
!18531 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_encoded", scope: !18143, file: !759, baseType: !18530, size: 32, align: 8, offset: 256, flags: DIFlagPrivate)
!18532 = !{!18525, !18526, !18527, !18528, !18529, !18531}
!18533 = !DITemplateTypeParameter(name: "P", type: !2510)
!18534 = !{!18533}
!18535 = !DITemplateTypeParameter(name: "I", type: !18145)
!18536 = !DITemplateTypeParameter(name: "F", type: !18142)
!18537 = !{!18535, !18536}
!18538 = !DITemplateTypeParameter(name: "T", type: !18146)
!18539 = !{!18538}
!18540 = !DIDerivedType(tag: DW_TAG_member, scope: !18150, file: !759, baseType: !1208, size: 32, align: 32, offset: 288, flags: DIFlagArtificial)
!18541 = !{!18156}
!18542 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !18156, file: !759, baseType: !18155, size: 128, align: 64, extraData: i64 2)
!18543 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !18156, file: !759, baseType: !18154, size: 128, align: 64)
!18544 = !{!18542, !18543}
!18545 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !18154, file: !759, baseType: !18153, size: 128, align: 64, flags: DIFlagPublic)
!18546 = !{!18545}
!18547 = !DINamespace(name: "once", scope: !2933)
!18548 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !18153, file: !759, baseType: !18152, size: 128, align: 64, flags: DIFlagPrivate)
!18549 = !{!18548}
!18550 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !18152, file: !759, baseType: !18151, size: 128, align: 64, flags: DIFlagPrivate)
!18551 = !{!18550}
!18552 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !18151, file: !759, baseType: !465, size: 128, align: 64, flags: DIFlagPrivate)
!18553 = !{!18552}
!18554 = !DITemplateTypeParameter(name: "T", type: !18153)
!18555 = !{!18554}
!18556 = !DIDerivedType(tag: DW_TAG_member, scope: !18157, file: !759, baseType: !825, size: 64, align: 64, flags: DIFlagArtificial)
!18557 = !DITemplateTypeParameter(name: "A", type: !18153)
!18558 = !DITemplateTypeParameter(name: "B", type: !18146)
!18559 = !{!18557, !18558}
!18560 = !{!284, !18158}
!18561 = !DISubroutineType(types: !18560)
!18562 = !DILocalVariable(name: "hint", scope: !18161, file: !2376, line: 2082, type: !466, align: 64)
!18563 = !DILexicalBlockFile(scope: !18160, file: !2376, discriminator: 0)
!18564 = !DILocalVariable(name: "args", scope: !18563, file: !2376, line: 2083, type: !461, align: 64)
!18565 = !DILexicalBlockFile(scope: !18159, file: !2376, discriminator: 0)
!18566 = !DILocalVariable(name: "args", scope: !18565, file: !2376, line: 2083, type: !2597, align: 64)
!18567 = !{!18504, !18562, !18564, !18566}
!18568 = !DITemplateTypeParameter(name: "Self", type: !18158)
!18569 = !DITemplateTypeParameter(name: "B", type: !284)
!18570 = !{!18568, !18569}
!18571 = !DILocalVariable(name: "iter", arg: 1, scope: !18165, file: !1392, line: 4038, type: !18158)
!18572 = !{!18571}
!18573 = !DITemplateTypeParameter(name: "I", type: !18158)
!18574 = !{!1574, !18573}
!18575 = !DIFile(filename: "library/alloc/src/vec/spec_from_iter.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "dddf949739df2af0f65ecbf6f40f29fe")
!18576 = !DILocalVariable(name: "iterator", arg: 1, scope: !18168, file: !18575, line: 32, type: !18158)
!18577 = !DINamespace(name: "spec_from_iter", scope: !987)
!18578 = !DINamespace(name: "{impl#0}", scope: !18577)
!18579 = !{!18576}
!18580 = !{!18173, !18172}
!18581 = !DILocalVariable(name: "other", arg: 2, scope: !18174, file: !2376, line: 510, type: !18146)
!18582 = !{!18158, !18153, !18146}
!18583 = !DISubroutineType(types: !18582)
!18584 = !DILocalVariable(name: "self", arg: 1, scope: !18174, file: !2376, line: 510, type: !18153)
!18585 = !{!18584, !18581}
!18586 = !DITemplateTypeParameter(name: "Self", type: !18153)
!18587 = !DITemplateTypeParameter(name: "U", type: !18146)
!18588 = !{!18586, !18587}
!18589 = !DIFile(filename: "library/core/src/iter/adapters/chain.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "ed4e243bd9b16f08a251b2fe8db38765")
!18590 = !DILocalVariable(name: "b", arg: 2, scope: !18177, file: !18589, line: 36, type: !18146)
!18591 = !DISubprogram(name: "new<core::iter::sources::once::Once<usize>, core::iter::adapters::map::Map<core::str::iter::MatchIndices<char>, tera::reporting::get_line_starts::{closure_env#0}>>", linkageName: "_RNvMNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB2_5ChainINtNtNtB6_7sources4once4OncejEINtNtB4_3map3MapINtNtNtB8_3str4iter12MatchIndicescENCNvNtCs5yXxDE1DkoT_4tera9reporting15get_line_starts0EE3newB2m_", scope: !18158, file: !18589, line: 36, type: !18583, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !18559)
!18592 = !DILocalVariable(name: "a", arg: 1, scope: !18177, file: !18589, line: 36, type: !18153)
!18593 = !{!18592, !18590}
!18597 = !{!18181}
!18598 = !{!18184}
!18599 = !{!18181, !18173, !18172}
!18600 = !{!18184, !18181}
!18601 = !DILocation(line: 0, scope: !18095)
!18602 = !DILocalVariable(name: "index", arg: 2, scope: !18185, file: !1392, line: 3976, type: !959)
!18603 = !DINamespace(name: "{impl#15}", scope: !987)
!18604 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::vec::Vec<usize, alloc::alloc::Global>", baseType: !284, size: 64, align: 64, dwarfAddressSpace: 0)
!18605 = !{!2152, !18604, !959, !1204}
!18606 = !DISubroutineType(types: !18605)
!18607 = !DILocalVariable(name: "self", arg: 1, scope: !18185, file: !1392, line: 3976, type: !18604)
!18608 = !{!18607, !18602}
!18609 = !{!1574, !2621, !1015}
!18610 = !DILocation(line: 25, column: 61, scope: !18094)
!18611 = !DILocation(line: 0, scope: !18185, inlinedAt: !18610)
!18612 = !DILocalVariable(name: "index", arg: 2, scope: !18188, file: !2622, line: 18, type: !959)
!18613 = !{!2152, !18186, !959, !1204}
!18614 = !DISubroutineType(types: !18613)
!18615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64, align: 64, dwarfAddressSpace: 0)
!18616 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !18186, file: !759, baseType: !18615, size: 64, align: 64)
!18617 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !18186, file: !759, baseType: !959, size: 64, align: 64, offset: 64)
!18618 = !{!18616, !18617}
!18619 = !DILocalVariable(name: "self", arg: 1, scope: !18188, file: !2622, line: 18, type: !18187)
!18620 = !{!18619, !18612}
!18621 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !18187, file: !759, baseType: !18615, size: 64, align: 64)
!18622 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !18187, file: !759, baseType: !959, size: 64, align: 64, offset: 64)
!18623 = !{!18621, !18622}
!18624 = !{!1574, !2621}
!18625 = !DILexicalBlockFile(scope: !18185, file: !1392, discriminator: 4)
!18626 = !DILocation(line: 3977, column: 9, scope: !18625, inlinedAt: !18610)
!18627 = !DILocation(line: 0, scope: !18188, inlinedAt: !18626)
!18628 = !DILocalVariable(name: "self", arg: 1, scope: !18189, file: !2622, line: 236, type: !959)
!18629 = !{!2152, !959, !18186, !1204}
!18630 = !DISubroutineType(types: !18629)
!18631 = !DILocalVariable(name: "slice", arg: 2, scope: !18189, file: !2622, line: 236, type: !18187)
!18632 = !{!18628, !18631}
!18633 = !DILexicalBlockFile(scope: !18188, file: !2622, discriminator: 4)
!18634 = !DILocation(line: 19, column: 15, scope: !18633, inlinedAt: !18626)
!18635 = !DILocation(line: 0, scope: !18189, inlinedAt: !18634)
!18636 = !DILocation(line: 0, scope: !18094)
!18637 = !DILocalVariable(name: "self", arg: 1, scope: !18190, file: !1392, line: 3135, type: !18604)
!18638 = !{!959, !18604}
!18639 = !DISubroutineType(types: !18638)
!18640 = !DISubprogram(name: "len<usize, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE3lenCs5yXxDE1DkoT_4tera", scope: !284, file: !1392, line: 3135, type: !18639, scopeLine: 3135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1969)
!18641 = !{!18637}
!18642 = !DILocation(line: 22, column: 49, scope: !18094)
!18643 = !DILocation(line: 3135, column: 22, scope: !18190, inlinedAt: !18642)
!18644 = !DILocation(line: 23, column: 32, scope: !18094)
!18645 = !DILocation(line: 3976, column: 14, scope: !18185, inlinedAt: !18644)
!18646 = !DILocation(line: 25, column: 32, scope: !18094)
!18647 = !DILocation(line: 3976, column: 14, scope: !18185, inlinedAt: !18646)
!18648 = !DILocalVariable(name: "self", arg: 1, scope: !18191, file: !1392, line: 3894, type: !18604)
!18649 = !{!18186, !18604}
!18650 = !DISubroutineType(types: !18649)
!18651 = !{!18648}
!18652 = !DILocation(line: 3977, column: 23, scope: !18185, inlinedAt: !18644)
!18653 = !DILocation(line: 3894, column: 14, scope: !18191, inlinedAt: !18652)
!18654 = !DILexicalBlockFile(scope: !18185, file: !1392, discriminator: 2)
!18655 = !DILocation(line: 3977, column: 23, scope: !18654, inlinedAt: !18646)
!18656 = !DILocation(line: 3894, column: 14, scope: !18191, inlinedAt: !18655)
!18657 = !DILocalVariable(name: "self", arg: 1, scope: !18192, file: !1392, line: 1856, type: !18604)
!18658 = !DISubprogram(name: "as_slice<usize, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE8as_sliceCs5yXxDE1DkoT_4tera", scope: !284, file: !1392, line: 1856, type: !18650, scopeLine: 1856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1969)
!18659 = !{!18657}
!18660 = !DILocation(line: 3895, column: 14, scope: !18191, inlinedAt: !18652)
!18661 = !DILocation(line: 1856, column: 27, scope: !18192, inlinedAt: !18660)
!18662 = !DILexicalBlockFile(scope: !18191, file: !1392, discriminator: 2)
!18663 = !DILocation(line: 3895, column: 14, scope: !18662, inlinedAt: !18655)
!18664 = !DILocation(line: 1856, column: 27, scope: !18192, inlinedAt: !18663)
!18665 = !DILocalVariable(name: "self", arg: 1, scope: !18193, file: !1392, line: 1974, type: !18604)
!18666 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const usize", baseType: !959, size: 64, align: 64, dwarfAddressSpace: 0)
!18667 = !{!18666, !18604}
!18668 = !DISubroutineType(types: !18667)
!18669 = !DISubprogram(name: "as_ptr<usize, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE6as_ptrCs5yXxDE1DkoT_4tera", scope: !284, file: !1392, line: 1974, type: !18668, scopeLine: 1974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1969)
!18670 = !{!18665}
!18671 = !DILocation(line: 1873, column: 76, scope: !18192, inlinedAt: !18660)
!18672 = !DILocation(line: 1974, column: 25, scope: !18193, inlinedAt: !18671)
!18673 = !DILexicalBlockFile(scope: !18192, file: !1392, discriminator: 2)
!18674 = !DILocation(line: 1873, column: 76, scope: !18673, inlinedAt: !18663)
!18675 = !DILocation(line: 1974, column: 25, scope: !18193, inlinedAt: !18674)
!18676 = !DILocation(line: 0, scope: !18185, inlinedAt: !18646)
!18677 = !DILocation(line: 3977, column: 9, scope: !18654, inlinedAt: !18646)
!18678 = !DILocation(line: 0, scope: !18188, inlinedAt: !18677)
!18679 = !DILexicalBlockFile(scope: !18188, file: !2622, discriminator: 2)
!18680 = !DILocation(line: 19, column: 15, scope: !18679, inlinedAt: !18677)
!18681 = !DILocation(line: 0, scope: !18189, inlinedAt: !18680)
!18682 = !{!18194, !1451}
!18683 = !DISubroutineType(types: !18682)
!18684 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !18194, file: !759, baseType: !18666, size: 64, align: 64, flags: DIFlagPrivate)
!18685 = !{!18684}
!18686 = !{!1015, !1574}
!18687 = !DISubprogram(name: "non_null<alloc::alloc::Global, usize>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner8non_nulljECs5yXxDE1DkoT_4tera", scope: !9, file: !1399, line: 626, type: !18683, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !18686)
!18688 = !DILexicalBlockFile(scope: !18197, file: !1399, discriminator: 2)
!18689 = !DILexicalBlockFile(scope: !18196, file: !1399, discriminator: 2)
!18690 = !DILexicalBlockFile(scope: !18193, file: !1392, discriminator: 2)
!18691 = !DILocation(line: 1977, column: 18, scope: !18690, inlinedAt: !18674)
!18692 = !DILocation(line: 305, column: 20, scope: !18689, inlinedAt: !18691)
!18693 = !DILocation(line: 622, column: 14, scope: !18688, inlinedAt: !18692)
!18694 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::raw_vec::RawVec<usize, alloc::alloc::Global>", baseType: !283, size: 64, align: 64, dwarfAddressSpace: 0)
!18695 = !{!2405, !18694}
!18696 = !DISubroutineType(types: !18695)
!18697 = !DISubprogram(name: "ptr<usize, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjE3ptrCs5yXxDE1DkoT_4tera", scope: !283, file: !1399, line: 304, type: !18696, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1969)
!18698 = !{!2405, !1451}
!18699 = !DISubroutineType(types: !18698)
!18700 = !DISubprogram(name: "ptr<alloc::alloc::Global, usize>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner3ptrjECs5yXxDE1DkoT_4tera", scope: !9, file: !1399, line: 621, type: !18699, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !18686)
!18701 = !DILocation(line: 0, scope: !18185, inlinedAt: !18644)
!18702 = !DILocation(line: 3977, column: 9, scope: !18185, inlinedAt: !18644)
!18703 = !DILocation(line: 0, scope: !18188, inlinedAt: !18702)
!18704 = !DILocation(line: 19, column: 15, scope: !18188, inlinedAt: !18702)
!18705 = !DILocation(line: 0, scope: !18189, inlinedAt: !18704)
!18706 = !DILocation(line: 0, scope: !18121, inlinedAt: !18429)
!18707 = !DILocation(line: 3976, column: 14, scope: !18185, inlinedAt: !18610)
!18708 = !DILocation(line: 3977, column: 23, scope: !18625, inlinedAt: !18610)
!18709 = !DILocation(line: 3894, column: 14, scope: !18191, inlinedAt: !18708)
!18710 = !DILexicalBlockFile(scope: !18191, file: !1392, discriminator: 4)
!18711 = !DILocation(line: 3895, column: 14, scope: !18710, inlinedAt: !18708)
!18712 = !DILocation(line: 1856, column: 27, scope: !18192, inlinedAt: !18711)
!18713 = !DILexicalBlockFile(scope: !18192, file: !1392, discriminator: 4)
!18714 = !DILocation(line: 1873, column: 76, scope: !18713, inlinedAt: !18711)
!18715 = !DILocation(line: 1974, column: 25, scope: !18193, inlinedAt: !18714)
!18716 = !{!18211}
!18717 = !DILocation(line: 0, scope: !18125, inlinedAt: !18441)
!18718 = !DILocation(line: 1977, column: 18, scope: !18193, inlinedAt: !18671)
!18719 = !DILocation(line: 305, column: 20, scope: !18196, inlinedAt: !18718)
!18720 = !DILocation(line: 622, column: 14, scope: !18197, inlinedAt: !18719)
!18721 = !DILocation(line: 0, scope: !18116, inlinedAt: !18410)
!18722 = !{!18229}
!18723 = !DILocation(line: 3977, column: 9, scope: !18185, inlinedAt: !18636)
!18724 = !DILocation(line: 19, column: 15, scope: !18188, inlinedAt: !18723)
!18725 = !DILocation(line: 0, scope: !18093)
!18726 = !DILocalVariable(name: "self", arg: 1, scope: !18234, file: !2683, line: 1079, type: !33)
!18727 = !{!18726}
!18728 = !DILocation(line: 30, column: 23, scope: !18092)
!18729 = !DILocation(line: 0, scope: !18234, inlinedAt: !18728)
!18730 = !DILocation(line: 0, scope: !18131, inlinedAt: !18471)
!18731 = !DILocation(line: 0, scope: !18132, inlinedAt: !18471)
!18732 = !DILocation(line: 786, column: 28, scope: !18134, inlinedAt: !18479)
!18733 = !DILocalVariable(name: "cond", arg: 1, scope: !18235, file: !1463, line: 202, type: !1450)
!18734 = !{!18733}
!18735 = !DILocation(line: 450, column: 21, scope: !18132, inlinedAt: !18471)
!18736 = !DILocation(line: 0, scope: !18235, inlinedAt: !18735)
!18737 = !{!1410, !7}
!18738 = !DISubroutineType(types: !18737)
!18739 = !DISubprogram(name: "as_ptr<u8>", linkageName: "_RNvMs1_NtNtCsf3Ta7LF998c_4core3ptr8non_nullINtB5_7NonNullhE6as_ptrCs5yXxDE1DkoT_4tera", scope: !7, file: !2166, line: 411, type: !18738, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !997)
!18740 = !DILocation(line: 1080, column: 39, scope: !18234, inlinedAt: !18728)
!18741 = !DILocation(line: 1042, column: 9, scope: !18237, inlinedAt: !18740)
!18742 = !DILocation(line: 100, column: 69, scope: !18238, inlinedAt: !18741)
!18743 = !DILocation(line: 100, column: 78, scope: !18238, inlinedAt: !18741)
!18744 = !DILocation(line: 0, scope: !18091)
!18745 = !{!18250}
!18746 = !DILocation(line: 0, scope: !18088)
!18747 = !DILocation(line: 0, scope: !18087)
!18748 = !DILocation(line: 2224, column: 26, scope: !18098, inlinedAt: !18367)
!18749 = !DILocation(line: 0, scope: !18136, inlinedAt: !18485)
!18750 = !DILocation(line: 0, scope: !18135, inlinedAt: !18485)
!18751 = !DILocalVariable(name: "ch", arg: 2, scope: !18285, file: !2502, line: 42, type: !1208)
!18752 = !{!18751}
!18753 = !DILocation(line: 1165, column: 29, scope: !18135, inlinedAt: !18485)
!18754 = !DILocation(line: 0, scope: !18285, inlinedAt: !18753)
!18755 = !DILocalVariable(name: "i", arg: 1, scope: !18286, file: !2537, line: 243, type: !1208)
!18756 = !{!18755}
!18757 = !DILocation(line: 42, column: 59, scope: !18285, inlinedAt: !18753)
!18758 = !DILocation(line: 0, scope: !18286, inlinedAt: !18757)
!18759 = !DILocalVariable(name: "i", arg: 1, scope: !18287, file: !2760, line: 26, type: !1208)
!18760 = !{!18759}
!18761 = !DILocation(line: 245, column: 18, scope: !18286, inlinedAt: !18757)
!18762 = !DILocation(line: 0, scope: !18287, inlinedAt: !18761)
!18763 = !DILocation(line: 0, scope: !18089)
!18764 = !DILocation(line: 1452, column: 24, scope: !442, inlinedAt: !18763)
!18765 = !DILocation(line: 1903, column: 18, scope: !443, inlinedAt: !18764)
!18766 = !DILocation(line: 1454, column: 14, scope: !440, inlinedAt: !18763)
!18767 = !DILocation(line: 0, scope: !18100, inlinedAt: !18366)
!18768 = !{!18328}
!18769 = !DILocation(line: 1458, column: 71, scope: !440, inlinedAt: !18763)
!18770 = !DILocation(line: 2061, column: 18, scope: !449, inlinedAt: !18769)
!18771 = !DILocation(line: 305, column: 20, scope: !452, inlinedAt: !18770)
!18772 = !DILocation(line: 622, column: 14, scope: !451, inlinedAt: !18771)
!18773 = !DILocation(line: 1458, column: 84, scope: !440, inlinedAt: !18763)
!18774 = !DILocation(line: 1458, column: 13, scope: !440, inlinedAt: !18763)
!18775 = !DILocation(line: 1459, column: 22, scope: !440, inlinedAt: !18763)
!18776 = !DILocation(line: 19, column: 13, scope: !18097)
!18777 = !DILocation(line: 5, column: 5, scope: !18139, inlinedAt: !18140)
!18778 = !DILocation(line: 6, column: 10, scope: !18139, inlinedAt: !18140)
!18779 = !DILocation(line: 37, column: 9, scope: !18177, inlinedAt: !18178)
!18780 = !DILocation(line: 33, column: 9, scope: !18168, inlinedAt: !18169)
!18781 = !DILocation(line: 7, column: 18, scope: !18139, inlinedAt: !18140)
!18782 = !DILocation(line: 20, column: 26, scope: !18096)
!18783 = !DILocation(line: 21, column: 25, scope: !18095)
!18784 = !DILocation(line: 3136, column: 19, scope: !18190, inlinedAt: !18642)
!18785 = !DILocation(line: 3141, column: 37, scope: !18190, inlinedAt: !18642)
!18786 = !DILocation(line: 3141, column: 18, scope: !18190, inlinedAt: !18642)
!18787 = !DILocation(line: 22, column: 23, scope: !18094)
!18788 = !DILocation(line: 627, column: 9, scope: !18195, inlinedAt: !18693)
!18789 = !DILocation(line: 238, column: 10, scope: !18189, inlinedAt: !18680)
!18790 = !DILocation(line: 238, column: 10, scope: !18189, inlinedAt: !18704)
!18791 = !DILocation(line: 238, column: 9, scope: !18189, inlinedAt: !18680)
!18792 = !DILocation(line: 25, column: 21, scope: !18094)
!18793 = !DILocation(line: 238, column: 10, scope: !18189, inlinedAt: !18634)
!18794 = !DILocation(line: 51, column: 5, scope: !18097)
!18795 = !DILocation(line: 238, column: 9, scope: !18189, inlinedAt: !18634)
!18796 = !DILocation(line: 25, column: 50, scope: !18094)
!18797 = !DILocation(line: 129, column: 8, scope: !505, inlinedAt: !18198)
!18798 = !DILocation(line: 133, column: 8, scope: !505, inlinedAt: !18198)
!18799 = !DILocation(line: 145, column: 10, scope: !505, inlinedAt: !18198)
!18800 = !DILocation(line: 146, column: 17, scope: !505, inlinedAt: !18198)
!18801 = !DILocation(line: 872, column: 18, scope: !508, inlinedAt: !18201)
!18802 = !DILocation(line: 1758, column: 9, scope: !510, inlinedAt: !18208)
!18803 = !DILocation(line: 1231, column: 9, scope: !511, inlinedAt: !18212)
!18804 = !DILocation(line: 145, column: 24, scope: !505, inlinedAt: !18198)
!18805 = !DILocation(line: 872, column: 18, scope: !508, inlinedAt: !18203)
!18806 = !DILocation(line: 1758, column: 9, scope: !510, inlinedAt: !18216)
!18807 = !DILocation(line: 1231, column: 9, scope: !511, inlinedAt: !18218)
!18808 = !DILocation(line: 262, column: 12, scope: !18123, inlinedAt: !18434)
!18809 = !DILocation(line: 305, column: 27, scope: !18125, inlinedAt: !18441)
!18810 = !DILocation(line: 22, column: 20, scope: !18094)
!18811 = !DILocation(line: 27, column: 10, scope: !18094)
!18812 = !DILocation(line: 627, column: 9, scope: !18195, inlinedAt: !18720)
!18813 = !DILocation(line: 238, column: 9, scope: !18189, inlinedAt: !18704)
!18814 = !DILocation(line: 23, column: 21, scope: !18094)
!18815 = !DILocation(line: 380, column: 12, scope: !498, inlinedAt: !18222)
!18816 = !DILocation(line: 384, column: 12, scope: !498, inlinedAt: !18222)
!18817 = !DILocation(line: 394, column: 13, scope: !498, inlinedAt: !18222)
!18818 = !DILocation(line: 493, column: 12, scope: !497, inlinedAt: !18220)
!18819 = !DILocation(line: 396, column: 13, scope: !498, inlinedAt: !18222)
!18820 = !DILocation(line: 1231, column: 9, scope: !504, inlinedAt: !18230)
!18821 = !DILocation(line: 238, column: 10, scope: !18189, inlinedAt: !18724)
!18822 = !DILocation(line: 221, column: 27, scope: !502, inlinedAt: !18226)
!18823 = !DILocation(line: 29, column: 13, scope: !18093)
!18824 = !DILocation(line: 445, column: 15, scope: !18133, inlinedAt: !18471)
!18825 = !DILocation(line: 445, column: 9, scope: !18133, inlinedAt: !18471)
!18826 = !DILocation(line: 454, column: 17, scope: !18133, inlinedAt: !18471)
!18827 = !DILocation(line: 454, column: 25, scope: !18131, inlinedAt: !18471)
!18828 = !DILocation(line: 446, column: 16, scope: !18133, inlinedAt: !18471)
!18829 = !DILocation(line: 787, column: 9, scope: !18134, inlinedAt: !18479)
!18830 = !DILocation(line: 210, column: 9, scope: !18235, inlinedAt: !18735)
!18831 = !DILocation(line: 455, column: 9, scope: !18133, inlinedAt: !18471)
!18832 = !DILocation(line: 494, column: 9, scope: !18127, inlinedAt: !18447)
!18833 = !DILocation(line: 417, column: 18, scope: !18236, inlinedAt: !18742)
!18834 = !DILocation(line: 971, column: 18, scope: !18239, inlinedAt: !18743)
!18835 = !DILocation(line: 37, column: 12, scope: !18103, inlinedAt: !18387)
!18836 = !DILocation(line: 38, column: 13, scope: !18103, inlinedAt: !18387)
!18837 = !DILocation(line: 1663, column: 9, scope: !398, inlinedAt: !18246)
!18838 = !DILocation(line: 180, column: 28, scope: !394, inlinedAt: !18111)
!18839 = !DILocation(line: 627, column: 28, scope: !397, inlinedAt: !18242)
!18840 = !DILocation(line: 37, column: 13, scope: !387, inlinedAt: !18104)
!18841 = !DILocation(line: 38, column: 8, scope: !386, inlinedAt: !18104)
!18842 = !DILocation(line: 11, column: 5, scope: !388, inlinedAt: !18240)
!18843 = !DILocation(line: 1663, column: 9, scope: !398, inlinedAt: !18259)
!18844 = !DILocation(line: 180, column: 28, scope: !394, inlinedAt: !18109)
!18845 = !DILocation(line: 627, column: 28, scope: !397, inlinedAt: !18255)
!18846 = !DILocation(line: 48, column: 22, scope: !379, inlinedAt: !18104)
!18847 = !DILocation(line: 17, column: 5, scope: !399, inlinedAt: !18253)
!18848 = !DILocation(line: 17, column: 17, scope: !399, inlinedAt: !18253)
!18849 = !DILocation(line: 50, column: 8, scope: !377, inlinedAt: !18104)
!18850 = !DILocation(line: 39, column: 21, scope: !386, inlinedAt: !18104)
!18851 = !DILocation(line: 0, scope: !2321, inlinedAt: !18104)
!18852 = !DILocation(line: 1663, column: 9, scope: !398, inlinedAt: !18268)
!18853 = !DILocation(line: 180, column: 28, scope: !394, inlinedAt: !18107)
!18854 = !DILocation(line: 627, column: 28, scope: !397, inlinedAt: !18264)
!18855 = !DILocation(line: 55, column: 26, scope: !377, inlinedAt: !18104)
!18856 = !DILocation(line: 17, column: 5, scope: !399, inlinedAt: !18272)
!18857 = !DILocation(line: 17, column: 17, scope: !399, inlinedAt: !18272)
!18858 = !DILocation(line: 57, column: 14, scope: !375, inlinedAt: !18104)
!18859 = !DILocation(line: 57, column: 9, scope: !375, inlinedAt: !18104)
!18860 = !DILocation(line: 58, column: 12, scope: !375, inlinedAt: !18104)
!18861 = !DILocation(line: 1663, column: 9, scope: !398, inlinedAt: !18281)
!18862 = !DILocation(line: 180, column: 28, scope: !394, inlinedAt: !18105)
!18863 = !DILocation(line: 627, column: 28, scope: !397, inlinedAt: !18277)
!18864 = !DILocation(line: 63, column: 30, scope: !375, inlinedAt: !18104)
!18865 = !DILocation(line: 64, column: 18, scope: !374, inlinedAt: !18104)
!18866 = !DILocation(line: 17, column: 5, scope: !399, inlinedAt: !18275)
!18867 = !DILocation(line: 17, column: 17, scope: !399, inlinedAt: !18275)
!18868 = !DILocation(line: 64, column: 13, scope: !374, inlinedAt: !18104)
!18869 = !DILocation(line: 58, column: 9, scope: !375, inlinedAt: !18104)
!18870 = !DILocation(line: 36, column: 24, scope: !18092)
!18871 = !DILocation(line: 2224, column: 50, scope: !18098, inlinedAt: !18367)
!18872 = !DILocation(line: 51, column: 5, scope: !18093)
!18873 = !DILocation(line: 34, column: 9, scope: !18287, inlinedAt: !18761)
!18874 = !DILocation(line: 3141, column: 37, scope: !446, inlinedAt: !18765)
!18875 = !DILocation(line: 3141, column: 18, scope: !446, inlinedAt: !18765)
!18876 = !DILocation(line: 1255, column: 18, scope: !444, inlinedAt: !18766)
!18877 = !DILocation(line: 47, column: 13, scope: !18088)
!18878 = !DILocation(line: 45, column: 9, scope: !18088)
!18879 = !DILocation(line: 848, column: 1, scope: !285, inlinedAt: !18308)
!18880 = !DILocation(line: 848, column: 1, scope: !286, inlinedAt: !18310)
!18881 = !DILocation(line: 848, column: 1, scope: !286, inlinedAt: !18312)
!18882 = !DILocation(line: 51, column: 6, scope: !18097)
!18883 = !DILocation(line: 3136, column: 19, scope: !446, inlinedAt: !18316)
!18884 = !DILocation(line: 3141, column: 37, scope: !446, inlinedAt: !18316)
!18885 = !DILocation(line: 3141, column: 18, scope: !446, inlinedAt: !18316)
!18886 = !DILocation(line: 1255, column: 18, scope: !444, inlinedAt: !18319)
!18887 = !DILocation(line: 1043, column: 17, scope: !18138, inlinedAt: !18498)
!18888 = !DILocation(line: 627, column: 9, scope: !450, inlinedAt: !18331)
!18889 = !DILocation(line: 971, column: 18, scope: !447, inlinedAt: !18322)
!18890 = !DILocation(line: 2547, column: 13, scope: !457, inlinedAt: !18332)
!18891 = !DILocation(line: 1459, column: 30, scope: !440, inlinedAt: !18314)
!18892 = !DILocation(line: 2232, column: 9, scope: !460, inlinedAt: !18335)
!18893 = !DILocation(line: 31, column: 13, scope: !18089)
!18894 = !DILocation(line: 627, column: 9, scope: !450, inlinedAt: !18772)
!18895 = !DILocation(line: 971, column: 18, scope: !447, inlinedAt: !18773)
!18896 = !DILocation(line: 2547, column: 13, scope: !457, inlinedAt: !18774)
!18897 = !DILocation(line: 1459, column: 30, scope: !440, inlinedAt: !18763)
!18898 = !DILocation(line: 2232, column: 9, scope: !460, inlinedAt: !18775)
!18899 = !DILocation(line: 18, column: 5, scope: !18097)
!18900 = distinct !DILocation(line: 1458, column: 13, scope: !440)
!18901 = distinct !DILocation(line: 0, scope: !458, inlinedAt: !18900)
!18902 = distinct !DILocation(line: 2558, column: 18, scope: !453, inlinedAt: !18900)
!18903 = distinct !DILocation(line: 0, scope: !459, inlinedAt: !18902)
!18904 = distinct !DILocation(line: 2564, column: 18, scope: !453, inlinedAt: !18900)
!18905 = distinct !DILocation(line: 0, scope: !459, inlinedAt: !18904)
!18906 = distinct !DILocation(line: 2570, column: 14, scope: !453, inlinedAt: !18900)
!18907 = distinct !DILocation(line: 0, scope: !459, inlinedAt: !18906)
!18908 = distinct !DILocation(line: 2565, column: 18, scope: !453, inlinedAt: !18900)
!18909 = distinct !DILocation(line: 0, scope: !459, inlinedAt: !18908)
!18910 = distinct !DILocation(line: 2571, column: 14, scope: !453, inlinedAt: !18900)
!18911 = distinct !DILocation(line: 0, scope: !459, inlinedAt: !18910)
!18912 = distinct !DILocation(line: 2572, column: 14, scope: !453, inlinedAt: !18900)
!18913 = distinct !DILocation(line: 0, scope: !459, inlinedAt: !18912)
!18914 = distinct !DILocation(line: 0, scope: !457, inlinedAt: !18900)
!18915 = distinct !DILocation(line: 0, scope: !456, inlinedAt: !18900)
!18916 = distinct !DILocation(line: 0, scope: !455, inlinedAt: !18900)
!18917 = distinct !DILocation(line: 0, scope: !454, inlinedAt: !18900)
!18918 = distinct !DILocation(line: 0, scope: !453, inlinedAt: !18900)
!18919 = !DILocation(line: 0, scope: !442)
!18920 = !DILocation(line: 1452, column: 24, scope: !442)
!18921 = !DILocation(line: 0, scope: !443, inlinedAt: !18920)
!18922 = !DILocation(line: 1454, column: 14, scope: !440)
!18923 = !DILocation(line: 0, scope: !444, inlinedAt: !18922)
!18924 = !DILocation(line: 1453, column: 25, scope: !441)
!18925 = !DILocation(line: 0, scope: !445, inlinedAt: !18924)
!18926 = !DILocation(line: 1903, column: 18, scope: !443, inlinedAt: !18920)
!18927 = !DILocation(line: 0, scope: !441)
!18928 = !DILocation(line: 1458, column: 84, scope: !440)
!18929 = !DILocation(line: 0, scope: !447, inlinedAt: !18928)
!18930 = !DILocation(line: 666, column: 9, scope: !445, inlinedAt: !18924)
!18931 = !DILocation(line: 0, scope: !448, inlinedAt: !18930)
!18932 = !DILocation(line: 0, scope: !440)
!18933 = !DILocation(line: 1458, column: 71, scope: !440)
!18934 = !DILocation(line: 2058, column: 29, scope: !449, inlinedAt: !18933)
!18935 = !DILocation(line: 2061, column: 18, scope: !449, inlinedAt: !18933)
!18936 = !DILocation(line: 305, column: 20, scope: !452, inlinedAt: !18935)
!18937 = !DILocation(line: 622, column: 14, scope: !451, inlinedAt: !18936)
!18938 = !DILocation(line: 1459, column: 22, scope: !440)
!18939 = !DILocation(line: 2225, column: 33, scope: !460, inlinedAt: !18938)
!18940 = !DILocation(line: 0, scope: !460, inlinedAt: !18938)
!18941 = !DILocation(line: 3136, column: 19, scope: !446, inlinedAt: !18926)
!18942 = !DILocation(line: 3141, column: 37, scope: !446, inlinedAt: !18926)
!18943 = !DILocation(line: 3141, column: 18, scope: !446, inlinedAt: !18926)
!18944 = !DILocation(line: 2475, column: 9, scope: !448, inlinedAt: !18930)
!18945 = !DILocation(line: 2476, column: 9, scope: !448, inlinedAt: !18930)
!18946 = !DILocation(line: 1255, column: 18, scope: !444, inlinedAt: !18922)
!18947 = !DILocation(line: 627, column: 9, scope: !450, inlinedAt: !18937)
!18948 = !DILocation(line: 971, column: 18, scope: !447, inlinedAt: !18928)
!18949 = !DILocation(line: 2551, column: 21, scope: !457, inlinedAt: !18900)
!18950 = !DILocation(line: 2552, column: 22, scope: !456, inlinedAt: !18900)
!18951 = !DILocation(line: 2552, column: 21, scope: !456, inlinedAt: !18900)
!18952 = !DILocation(line: 2553, column: 22, scope: !455, inlinedAt: !18900)
!18953 = !DILocation(line: 2553, column: 21, scope: !455, inlinedAt: !18900)
!18954 = !DILocation(line: 2554, column: 22, scope: !454, inlinedAt: !18900)
!18955 = !DILocation(line: 2554, column: 21, scope: !454, inlinedAt: !18900)
!18956 = !DILocation(line: 2556, column: 12, scope: !453, inlinedAt: !18900)
!18957 = !DILocation(line: 2547, column: 13, scope: !457, inlinedAt: !18900)
!18958 = !DILocation(line: 0, scope: !2585, inlinedAt: !18900)
!18959 = !DILocation(line: 2557, column: 13, scope: !453, inlinedAt: !18900)
!18960 = !DILocation(line: 971, column: 18, scope: !459, inlinedAt: !18902)
!18961 = !DILocation(line: 2558, column: 13, scope: !453, inlinedAt: !18900)
!18962 = !DILocation(line: 0, scope: !2586, inlinedAt: !18900)
!18963 = !DILocation(line: 2562, column: 12, scope: !453, inlinedAt: !18900)
!18964 = !DILocation(line: 2563, column: 13, scope: !453, inlinedAt: !18900)
!18965 = !DILocation(line: 971, column: 18, scope: !459, inlinedAt: !18904)
!18966 = !DILocation(line: 2564, column: 13, scope: !453, inlinedAt: !18900)
!18967 = !DILocation(line: 971, column: 18, scope: !459, inlinedAt: !18908)
!18968 = !DILocation(line: 2565, column: 13, scope: !453, inlinedAt: !18900)
!18969 = !DILocation(line: 2569, column: 9, scope: !453, inlinedAt: !18900)
!18970 = !DILocation(line: 971, column: 18, scope: !459, inlinedAt: !18906)
!18971 = !DILocation(line: 2570, column: 9, scope: !453, inlinedAt: !18900)
!18972 = !DILocation(line: 971, column: 18, scope: !459, inlinedAt: !18910)
!18973 = !DILocation(line: 2571, column: 9, scope: !453, inlinedAt: !18900)
!18974 = !DILocation(line: 971, column: 18, scope: !459, inlinedAt: !18912)
!18975 = !DILocation(line: 2572, column: 9, scope: !453, inlinedAt: !18900)
!18976 = !DILocation(line: 2574, column: 2, scope: !458, inlinedAt: !18900)
!18977 = !DILocation(line: 1459, column: 30, scope: !440)
!18978 = !DILocation(line: 2232, column: 9, scope: !460, inlinedAt: !18938)
!18979 = !DILocation(line: 1461, column: 6, scope: !442)
!18980 = distinct !DISubprogram(name: "syntax_error", linkageName: "_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error", scope: !101, file: !1237, line: 243, type: !19009, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !975, declaration: !19010, retainedNodes: !19013)
!18981 = distinct !{!18981, !"_RNvMNtCs5yXxDE1DkoT_4tera6errorsNtB2_11ReportError18new_without_source"}
!18982 = distinct !{!18982, !18981, !"_RNvMNtCs5yXxDE1DkoT_4tera6errorsNtB2_11ReportError18new_without_source: argument 0"}
!18983 = distinct !{!18983, !18981, !"_RNvMNtCs5yXxDE1DkoT_4tera6errorsNtB2_11ReportError18new_without_source: argument 1"}
!18984 = distinct !{!18984, !18981, !"_RNvMNtCs5yXxDE1DkoT_4tera6errorsNtB2_11ReportError18new_without_source: argument 2"}
!18985 = distinct !DILocation(line: 245, column: 51, scope: !18980)
!18986 = distinct !DILocation(line: 39, column: 38, scope: !524, inlinedAt: !18985)
!18987 = distinct !DILocation(line: 0, scope: !524, inlinedAt: !18985)
!18988 = distinct !DILocation(line: 44, column: 24, scope: !524, inlinedAt: !18985)
!18989 = distinct !DILocation(line: 0, scope: !525, inlinedAt: !18988)
!18990 = distinct !DILexicalBlock(scope: !18991, file: !1768, line: 292, column: 9)
!18991 = distinct !DISubprogram(name: "new<tera::errors::ReportError>", linkageName: "_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCs5yXxDE1DkoT_4tera6errors11ReportErrorE3newBI_", scope: !2934, file: !1768, line: 290, type: !19023, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, templateParams: !2186, retainedNodes: !19026)
!18992 = distinct !DILocation(line: 245, column: 42, scope: !18980)
!18993 = distinct !DILocation(line: 290, column: 16, scope: !18991, inlinedAt: !18992)
!18994 = distinct !DILocation(line: 292, column: 19, scope: !18991, inlinedAt: !18992)
!18995 = distinct !DILocation(line: 0, scope: !528, inlinedAt: !18994)
!18996 = distinct !DILocation(line: 251, column: 18, scope: !528, inlinedAt: !18994)
!18997 = distinct !DILocation(line: 0, scope: !534, inlinedAt: !18996)
!18998 = distinct !DILocation(line: 548, column: 14, scope: !534, inlinedAt: !18996)
!18999 = distinct !DILocation(line: 0, scope: !535, inlinedAt: !18998)
!19000 = distinct !DILocation(line: 430, column: 9, scope: !535, inlinedAt: !18998)
!19001 = distinct !DILocation(line: 0, scope: !545, inlinedAt: !19000)
!19002 = distinct !DILocation(line: 308, column: 73, scope: !544, inlinedAt: !19000)
!19003 = distinct !DILocation(line: 0, scope: !546, inlinedAt: !19002)
!19004 = distinct !DILocation(line: 0, scope: !544, inlinedAt: !19000)
!19005 = distinct !{!19005, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCs5yXxDE1DkoT_4tera6errors11ReportErrorE3newBI_"}
!19006 = distinct !{!19006, !19005, !"_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtCs5yXxDE1DkoT_4tera6errors11ReportErrorE3newBI_: argument 0"}
!19007 = distinct !DILocation(line: 0, scope: !18990, inlinedAt: !18992)
!19008 = !{!101, !12, !2918}
!19009 = !DISubroutineType(types: !19008)
!19010 = !DISubprogram(name: "syntax_error", linkageName: "_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error", scope: !101, file: !1237, line: 243, type: !19009, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !975)
!19011 = !DILocalVariable(name: "message", arg: 1, scope: !18980, file: !1237, line: 243, type: !12)
!19012 = !DILocalVariable(name: "span", arg: 2, scope: !18980, file: !1237, line: 243, type: !2918)
!19013 = !{!19011, !19012}
!19014 = !DILocation(line: 243, column: 32, scope: !18980)
!19015 = !DILocation(line: 0, scope: !18980)
!19016 = !{!18982}
!19017 = !{!18983}
!19018 = !{!18984}
!19019 = !{!18982, !18983}
!19020 = !{!18983, !18984}
!19021 = !DILocalVariable(name: "x", arg: 1, scope: !18991, file: !1768, line: 290, type: !95)
!19022 = !{!1301, !95}
!19023 = !DISubroutineType(types: !19022)
!19024 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut tera::errors::ReportError", baseType: !95, size: 64, align: 64, dwarfAddressSpace: 0)
!19025 = !DILocalVariable(name: "ptr", scope: !18990, file: !1768, line: 292, type: !19024, align: 64)
!19026 = !{!19021, !19025}
!19027 = !{!19006}
!19028 = !DILocation(line: 245, column: 51, scope: !18980)
!19029 = !DILocation(line: 51, column: 10, scope: !525, inlinedAt: !18988)
!19030 = !DILocation(line: 40, column: 9, scope: !524, inlinedAt: !18985)
!19031 = !DILocation(line: 129, column: 9, scope: !546, inlinedAt: !19002)
!19032 = !DILocation(line: 131, column: 9, scope: !546, inlinedAt: !19002)
!19033 = !DILocation(line: 251, column: 11, scope: !528, inlinedAt: !18994)
end_hunk_5
