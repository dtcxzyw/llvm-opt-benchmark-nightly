Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.11?download=true
inline.NumInlined: 436
inline.NumDeleted: 193
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterhEENCNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0s2_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Z_5count0EB26_:bb.a
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

vector.body:                                      ; preds = %vector.ph, %vector.body
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

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
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
  %.val8.i.1 = load i8, ptr %i.am, align 1, !dbg !6559, !noalias !6464, !noundef !975
    #dbg_declare(ptr poison, !6482, !DIExpression(), !6399)
    #dbg_value(i8 %.val8.i.1, !6484, !DIExpression(), !6400)
    #dbg_declare(ptr poison, !6495, !DIExpression(), !6402)
    #dbg_value(i8 %.val8.i.1, !6493, !DIExpression(), !6401)
    #dbg_value(i8 %.val8.i.1, !6502, !DIExpression(), !6403)
  %i.an = getelementptr i8, ptr %i.e, i64 %i.aj, !dbg !6562
  %i.ao = getelementptr i8, ptr %i.an, i64 1, !dbg !6562
  store i8 %.val8.i.1, ptr %i.ao, align 1, !dbg !6563, !noalias !6525
    #dbg_value(ptr %i.am, !2462, !DIExpression(), !6406)
  %i.ap = getelementptr inbounds i8, ptr %.sroa.2.012.i, i64 -3, !dbg !6564
    #dbg_value(ptr %i.ap, !2483, !DIExpression(), !6370)
    #dbg_value(ptr %i.ap, !2489, !DIExpression(), !6372)
    #dbg_value(ptr %i.ap, !6467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6360)
    #dbg_value(ptr %i.ap, !6471, !DIExpression(), !6397)
  %.val8.i.2 = load i8, ptr %i.ap, align 1, !dbg !6559, !noalias !6464, !noundef !975
    #dbg_declare(ptr poison, !6482, !DIExpression(), !6399)
    #dbg_value(i8 %.val8.i.2, !6484, !DIExpression(), !6400)
    #dbg_declare(ptr poison, !6495, !DIExpression(), !6402)
    #dbg_value(i8 %.val8.i.2, !6493, !DIExpression(), !6401)
    #dbg_value(i8 %.val8.i.2, !6502, !DIExpression(), !6403)
  %i.aq = getelementptr i8, ptr %i.e, i64 %i.aj, !dbg !6562
  %i.ar = getelementptr i8, ptr %i.aq, i64 2, !dbg !6562
  store i8 %.val8.i.2, ptr %i.ar, align 1, !dbg !6563, !noalias !6526
    #dbg_value(ptr %i.ap, !2462, !DIExpression(), !6406)
  %i.as = getelementptr inbounds i8, ptr %.sroa.2.012.i, i64 -4, !dbg !6564 ; 3 uses
    #dbg_value(ptr %i.as, !2483, !DIExpression(), !6370)
    #dbg_value(ptr %i.as, !2489, !DIExpression(), !6372)
    #dbg_value(ptr %i.as, !6467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6360)
    #dbg_value(ptr %i.as, !6471, !DIExpression(), !6397)
  %.val8.i.3 = load i8, ptr %i.as, align 1, !dbg !6559, !noalias !6464, !noundef !975
    #dbg_declare(ptr poison, !6482, !DIExpression(), !6399)
    #dbg_value(i8 %.val8.i.3, !6484, !DIExpression(), !6400)
    #dbg_declare(ptr poison, !6495, !DIExpression(), !6402)
    #dbg_value(i8 %.val8.i.3, !6493, !DIExpression(), !6401)
    #dbg_value(i8 %.val8.i.3, !6502, !DIExpression(), !6403)
  %i.at = getelementptr i8, ptr %i.e, i64 %i.aj, !dbg !6562
  %i.au = getelementptr i8, ptr %i.at, i64 3, !dbg !6562
  store i8 %.val8.i.3, ptr %i.au, align 1, !dbg !6563, !noalias !6527
  %i.av = add i64 %i.aj, 4, !dbg !6565            ; 2 uses
    #dbg_value(ptr %i.as, !2462, !DIExpression(), !6406)
  %i.aw = icmp eq ptr %0, %i.as, !dbg !6556
  br i1 %i.aw, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldhuNCINvNvNtNtBP_8iterator8Iterator8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3m_3VechE14extend_trustedINtB1T_6CopiedINtNtB1V_3rev3RevB3_EEE0E0E0ECs5yXxDE1DkoT_4tera.exit, label %vec.epilog.scalar.ph, !dbg !6557, !llvm.loop !6418

_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtBR_8adapters6copied9copy_foldhuNCINvNvNtNtBP_8iterator8Iterator8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3m_3VechE14extend_trustedINtB1T_6CopiedINtNtB1V_3rev3RevB3_EEE0E0E0ECs5yXxDE1DkoT_4tera.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge13.i
  %.val7.i = phi i64 [ %.val7.pre.i, %._crit_edge13.i ], [ %i.u, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.av, %vec.epilog.scalar.ph ], !dbg !6558
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
end_hunk_0
