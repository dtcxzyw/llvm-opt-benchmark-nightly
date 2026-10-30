Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.12?download=true
inline.NumInlined: 642
inline.NumDeleted: 235
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr:bb.a
  %.sroa.8215.0.copyload = load i64, ptr %.sroa.8215.0..sroa_idx, align 8, !dbg !14939 ; 2 uses
    #dbg_value(i64 %.sroa.8215.0.copyload, !13227, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !14163)
    #dbg_value(i64 %.sroa.8215.0.copyload, !14164, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !14173)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !14940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.fo, i64 48, i1 false), !dbg !14941
    #dbg_value(ptr poison, !14174, !DIExpression(), !14181)
    #dbg_value(ptr %i.fo, !14176, !DIExpression(), !14182)
    #dbg_value(i64 8, !14177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14183)
    #dbg_value(i64 8, !13749, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14186)
    #dbg_value(i64 8, !13756, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14189)
    #dbg_value(i64 8, !13763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14192)
    #dbg_value(i64 8, !13769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14195)
    #dbg_value(i64 48, !14177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14183)
    #dbg_value(i64 48, !13749, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14186)
    #dbg_value(i64 48, !13756, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14189)
    #dbg_value(i64 48, !13763, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14192)
    #dbg_value(i64 48, !13769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14195)
    #dbg_value(ptr poison, !13750, !DIExpression(), !14196)
    #dbg_value(ptr poison, !13757, !DIExpression(), !14197)
    #dbg_value(ptr %i.fo, !13751, !DIExpression(), !14186)
    #dbg_value(ptr %i.fo, !13758, !DIExpression(), !14189)
    #dbg_value(ptr %i.fo, !13764, !DIExpression(), !14192)
    #dbg_value(ptr %i.fo, !13770, !DIExpression(), !14195)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fo, i64 noundef 48, i64 noundef 8) #28, !dbg !14942
    #dbg_value(i64 %.sroa.0199.sroa.0.0.copyload, !13229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14198)
    #dbg_value(i64 %.sroa.0199.sroa.5.0.copyload, !13229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14198)
    #dbg_value(i64 %.sroa.5200.0.copyload, !13229, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14198)
    #dbg_value(i64 %.sroa.6205.0.copyload, !13229, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14198)
    #dbg_value(i64 %.sroa.7210.0.copyload, !13229, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14198)
    #dbg_value(i64 %.sroa.8215.0.copyload, !13229, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !14198)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ad, i64 24, !dbg !14943
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler14compile_kwargs(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.fq)
          to label %bb.gh unwind label %bb.gp, !dbg !14944

bb.o:                                             ; preds = %bb.a
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14945
  %i.fs = load ptr, ptr %i.fr, align 8, !dbg !14945, !nonnull !1394, !noundef !1394 ; 3 uses
    #dbg_value(ptr %i.fs, !13230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14199)
    #dbg_value(ptr %i.fs, !13618, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14200)
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14945 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !14946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.fs, i64 64, i1 false), !dbg !14947
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 64, !dbg !14947
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !14947
    #dbg_value(i8 %.sroa.2.0.copyload, !13231, !DIExpression(DW_OP_LLVM_fragment, 512, 8), !14202)
    #dbg_value(ptr poison, !14203, !DIExpression(), !14209)
    #dbg_value(ptr %i.fs, !14204, !DIExpression(), !14210)
    #dbg_value(i64 8, !14205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14211)
    #dbg_value(i64 8, !13749, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14214)
    #dbg_value(i64 8, !13756, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14217)
    #dbg_value(i64 8, !13763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14220)
    #dbg_value(i64 8, !13769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14223)
    #dbg_value(i64 72, !14205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14211)
    #dbg_value(i64 72, !13749, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14214)
    #dbg_value(i64 72, !13756, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14217)
    #dbg_value(i64 72, !13763, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14220)
    #dbg_value(i64 72, !13769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14223)
    #dbg_value(ptr poison, !13750, !DIExpression(), !14224)
    #dbg_value(ptr poison, !13757, !DIExpression(), !14225)
    #dbg_value(ptr %i.fs, !13751, !DIExpression(), !14214)
    #dbg_value(ptr %i.fs, !13758, !DIExpression(), !14217)
    #dbg_value(ptr %i.fs, !13764, !DIExpression(), !14220)
    #dbg_value(ptr %i.fs, !13770, !DIExpression(), !14223)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fs, i64 noundef 72, i64 noundef 8) #28, !dbg !14948
  call fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.z), !dbg !14949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !14950
  %i.fu = trunc nuw i8 %.sroa.2.0.copyload to i1, !dbg !14951
  br i1 %i.fu, label %bb.gq, label %bb.gr, !dbg !14952

bb.p:                                             ; preds = %bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14953
  %i.fw = load ptr, ptr %i.fv, align 8, !dbg !14953, !nonnull !1394, !noundef !1394 ; 2 uses
    #dbg_value(ptr %i.fw, !13233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14226)
    #dbg_value(ptr %i.fw, !13630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14227)
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14953
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.p, ptr noundef nonnull align 8 dereferenceable(136) %i.fw, i64 136, i1 false), !dbg !14954
    #dbg_value(ptr poison, !14228, !DIExpression(), !14233)
    #dbg_value(ptr %i.fw, !14229, !DIExpression(), !14234)
    #dbg_value(i64 8, !14230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14235)
    #dbg_value(i64 8, !13749, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14237)
    #dbg_value(i64 8, !13756, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14239)
    #dbg_value(i64 8, !13763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14241)
    #dbg_value(i64 8, !13769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14243)
    #dbg_value(i64 136, !14230, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14235)
    #dbg_value(i64 136, !13749, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14237)
    #dbg_value(i64 136, !13756, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14239)
    #dbg_value(i64 136, !13763, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14241)
    #dbg_value(i64 136, !13769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14243)
    #dbg_value(ptr poison, !13750, !DIExpression(), !14244)
    #dbg_value(ptr poison, !13757, !DIExpression(), !14245)
    #dbg_value(ptr %i.fw, !13751, !DIExpression(), !14237)
    #dbg_value(ptr %i.fw, !13758, !DIExpression(), !14239)
    #dbg_value(ptr %i.fw, !13764, !DIExpression(), !14241)
    #dbg_value(ptr %i.fw, !13770, !DIExpression(), !14243)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fw, i64 noundef 136, i64 noundef 8) #28, !dbg !14955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !14956
  %i.fy = getelementptr inbounds nuw i8, ptr %i.p, i64 128, !dbg !14957
  %i.fz = load i8, ptr %i.fy, align 8, !dbg !14957, !range !4332, !noundef !1394 ; 2 uses
  switch i8 %i.fz, label %default.unreachable1136 [
    i8 0, label %bb.hi
    i8 1, label %bb.gs
    i8 2, label %bb.gt
    i8 3, label %bb.gu
    i8 4, label %bb.gv
    i8 5, label %bb.gw
    i8 6, label %bb.gx
    i8 7, label %bb.gy
    i8 8, label %bb.gz
    i8 9, label %bb.ha
    i8 10, label %bb.hb
    i8 11, label %bb.hc
    i8 12, label %bb.hd
    i8 13, label %bb.he
    i8 14, label %bb.he
    i8 15, label %bb.hf
    i8 16, label %bb.hg
    i8 17, label %bb.hh
    i8 18, label %bb.hh
  ], !dbg !14958, !prof !14246

bb.q:                                             ; preds = %bb.gq, %bb.gr, %bb.bq, %bb.bp, %bb.ax, %bb.aw, %bb.id, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs5yXxDE1DkoT_4tera.exit657, %bb.go, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeEEB1e_.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECs5yXxDE1DkoT_4tera.exit, %bb.dg, %bb.cq, %bb.ce, %bb.at, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB3d_8Compiler12compile_exprs_0EB3h_.exit.thread, %bb.t, %bb.e, %bb.b
  ret void, !dbg !14959

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_8compilerNtB2s_8Compiler12compile_expr0EBW_.exit: ; preds = %bb.d, %bb.c
    #dbg_value(i1 false, !13173, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14247)
    #dbg_value(ptr %i.dl, !13354, !DIExpression(), !14249)
    #dbg_value(i64 %i.ed, !13179, !DIExpression(), !14250)
  %i.ga = icmp ult i64 %i.ed, 128102389400760776, !dbg !14960
  tail call void @llvm.assume(i1 %i.ga), !dbg !14961
  %.sroa.0552.0.copyload = load i64, ptr %i.dl, align 8, !dbg !13324 ; 2 uses
    #dbg_value(i64 %.sroa.0552.0.copyload, !13330, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14251)
    #dbg_value(ptr %i.eb, !13330, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14251)
    #dbg_value(i64 %i.ed, !13330, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14251)
    #dbg_value(i64 %.sroa.0552.0.copyload, !13338, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14252)
    #dbg_value(ptr %i.eb, !13338, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14252)
    #dbg_value(i64 %i.ed, !13338, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14252)
    #dbg_value(ptr %i.eb, !13340, !DIExpression(), !14253)
    #dbg_value(ptr %i.eb, !13341, !DIExpression(), !14254)
    #dbg_value(ptr %i.eb, !13857, !DIExpression(), !14256)
    #dbg_value(ptr undef, !13354, !DIExpression(), !13361)
    #dbg_value(i64 %i.ed, !13854, !DIExpression(), !14256)
    #dbg_value(ptr %i.ee, !13342, !DIExpression(), !14257)
    #dbg_value(ptr undef, !13351, !DIExpression(), !13353)
    #dbg_value(ptr undef, !13264, !DIExpression(), !13327)
    #dbg_value(i64 %.sroa.0552.0.copyload, !14258, !DIExpression(), !14262)
  %i.gb = icmp sgt i64 %.sroa.0552.0.copyload, -1, !dbg !14962
  tail call void @llvm.assume(i1 %i.gb), !dbg !14962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !dbg !13324
  store ptr %i.eb, ptr %i.de, align 8, !dbg !13324
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8, !dbg !13324 ; 3 uses
  store ptr %i.eb, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !13324
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !13324
  store i64 %.sroa.0552.0.copyload, ptr %.sroa.514.0..sroa_idx, align 8, !dbg !13324
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 24, !dbg !13324 ; 2 uses
  store ptr %i.ee, ptr %.sroa.615.0..sroa_idx, align 8, !dbg !13324
  %i.gc = icmp eq i64 %i.ed, 0, !dbg !14963
  br i1 %i.gc, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph, !dbg !14964

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_8compilerNtB2s_8Compiler12compile_expr0EBW_.exit
  %.sroa.7662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit, !dbg !14964

bb.r:                                             ; preds = %.lr.ph1142
    #dbg_value(i1 poison, !13173, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14247)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !dbg !14965
    #dbg_value(ptr %i.dl, !13354, !DIExpression(), !14281)
    #dbg_value(i64 %i.ed, !13646, !DIExpression(), !14282)
    #dbg_value(i64 %i.ed, !13641, !DIExpression(), !14283)
    #dbg_value(i64 %i.ed, !13649, !DIExpression(), !14284)
    #dbg_value(i64 %i.ed, !13654, !DIExpression(), !14285)
  %i.gd = icmp ult i64 %i.ed, 128102389400760776, !dbg !14966
  tail call void @llvm.assume(i1 %i.gd), !dbg !14967
    #dbg_value(i64 1, !13655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14285)
    #dbg_value(i64 1, !13655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14285)
    #dbg_value(i64 %i.ed, !4339, !DIExpression(), !12641)
    #dbg_value(i1 false, !4354, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12641)
    #dbg_declare(ptr poison, !4355, !DIExpression(), !12642)
    #dbg_value(i64 1, !4356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12641)
    #dbg_value(i64 1, !4356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12641)
    #dbg_value(i64 1, !4357, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12643)
    #dbg_value(i64 %i.ed, !4357, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12643)
    #dbg_value(i64 1, !3901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12647)
    #dbg_value(i64 1, !3901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12651)
    #dbg_value(i64 %i.ed, !3901, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12647)
    #dbg_value(i64 %i.ed, !3901, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12651)
    #dbg_value(i64 %i.ed, !3906, !DIExpression(), !12652)
    #dbg_value(i64 %i.ed, !3906, !DIExpression(), !12653)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !dbg !14968, !noalias !14286
    #dbg_value(ptr poison, !4359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12656)
    #dbg_value(i64 poison, !4359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12656)
    #dbg_value(ptr poison, !4375, !DIExpression(), !12657)
    #dbg_value(ptr poison, !4371, !DIExpression(), !12658)
    #dbg_value(i64 1, !4376, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12657)
    #dbg_value(i64 1, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12658)
    #dbg_value(i64 %i.ed, !4376, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12657)
    #dbg_value(i64 %i.ed, !4372, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12658)
    #dbg_value(i8 0, !4373, !DIExpression(), !12658)
    #dbg_value(i64 1, !3912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12660)
    #dbg_value(i64 %i.ed, !3912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12660)
    #dbg_value(i1 false, !3905, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12651)
  %i.ge = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ed, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !dbg !14969, !noalias !14286 ; 4 uses
    #dbg_value(ptr %i.ge, !4359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12656)
    #dbg_value(i64 poison, !4359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12656)
  %i.gf = icmp eq ptr %i.ge, null, !dbg !14970
  br i1 %i.gf, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera.exit, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.preheader, !dbg !14971

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEBH_.exit599
  %i.gg = phi ptr [ %i.eb, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph ], [ %i.gp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEBH_.exit599 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14287), !dbg !13443
    #dbg_value(ptr %i.gg, !14277, !DIExpression(), !12663)
    #dbg_value(ptr %i.gg, !14278, !DIExpression(), !12664)
    #dbg_value(ptr %i.gg, !14288, !DIExpression(), !12667)
    #dbg_value(ptr %i.gg, !14291, !DIExpression(), !12670)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 72, !dbg !14972
  store ptr %i.gh, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !14973, !alias.scope !14287
  %.sroa.0660.0.copyload661 = load i64, ptr %i.gg, align 8, !dbg !14974, !noalias !14287 ; 3 uses
  %.sroa.7662.0..sroa_idx663 = getelementptr inbounds nuw i8, ptr %i.gg, i64 8, !dbg !14974 ; 2 uses
  %.not577 = icmp eq i64 %.sroa.0660.0.copyload661, 2, !dbg !13443
  br i1 %.not577, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %bb.s, !dbg !13443

bb.s:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !dbg !14975
  store i64 %.sroa.0660.0.copyload661, ptr %i.dd, align 8, !dbg !14975
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7662.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7662.0..sroa_idx663, i64 64, i1 false), !dbg !14975
  %i.gi = trunc nuw i64 %.sroa.0660.0.copyload661 to i1, !dbg !14976
  br i1 %i.gi, label %bb.y, label %bb.v, !dbg !14976

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEBH_.exit599, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_8compilerNtB2s_8Compiler12compile_expr0EBW_.exit
    #dbg_value(ptr %i.de, !14298, !DIExpression(), !12675)
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.de), !dbg !14977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !dbg !14978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !dbg !14979
  %i.gj = getelementptr inbounds nuw i8, ptr %i.db, i64 8, !dbg !14979
  store i64 %i.ed, ptr %i.gj, align 8, !dbg !14979
  store i8 14, ptr %i.db, align 8, !dbg !14979
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !dbg !14980
  %i.gk = getelementptr inbounds nuw i8, ptr %i.da, i64 8, !dbg !14980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gk, ptr noundef nonnull align 8 dereferenceable(48) %i.dz, i64 48, i1 false), !dbg !14980
  store i64 1, ptr %i.da, align 8, !dbg !14980
  %i.gl = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.db, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.da), !dbg !14981 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !dbg !14982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !dbg !14982
  br label %bb.t, !dbg !14983

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit602, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !dbg !14984
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !14985
  br label %bb.q, !dbg !14985

bb.u:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !dbg !14986
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEBH_.exit599, !dbg !14987

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !dbg !13445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dc, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7662.0..sroa_idx663, i64 64, i1 false), !dbg !13445
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.dc)
          to label %bb.u unwind label %bb.w, !dbg !14988

bb.w:                                             ; preds = %bb.y, %bb.v
  %i.gm = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.de, !14298, !DIExpression(), !12677)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.de)
          to label %common.resume unwind label %bb.x, !dbg !14989

bb.x:                                             ; preds = %bb.fm, %.thread962, %bb.ct, %bb.ch, %bb.z, %bb.w, %.thread1085, %bb.if, %bb.ie, %bb.gp, %bb.gg, %bb.gf, %.thread1003, %bb.fb, %bb.fa, %bb.ey, %bb.ew, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit, %bb.eb, %.body.thread924.thread, %.body.thread, %bb.cs, %bb.cg, %bb.bv, %bb.bu, %bb.bs, %bb.ay, %bb.au, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ak, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit601.thread
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !14990
  unreachable, !dbg !14990

bb.y:                                             ; preds = %bb.s
    #dbg_value(ptr %i.dd, !14305, !DIExpression(), !12680)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %.sroa.7662.0..sroa_idx)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEBH_.exit599 unwind label %bb.w, !dbg !14991

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEBH_.exit599: ; preds = %bb.y, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !dbg !14987
    #dbg_value(ptr %i.de, !14276, !DIExpression(), !12681)
    #dbg_value(i64 1, !14289, !DIExpression(), !12667)
    #dbg_value(ptr %i.de, !14263, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12682)
  %i.go = load ptr, ptr %.sroa.615.0..sroa_idx, align 8, !dbg !14992, !alias.scope !14309, !nonnull !1394, !noundef !1394
    #dbg_value(ptr poison, !14264, !DIExpression(), !12685)
  %i.gp = load ptr, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !14963, !alias.scope !14309, !nonnull !1394, !noundef !1394 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.go, !dbg !14963
  br i1 %i.gq, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit, !dbg !14964

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera.exit: ; preds = %bb.r
    #dbg_value(i64 1, !13657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14310)
    #dbg_value(i64 %i.ed, !13657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14310)
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.ed) #32
          to label %bb.aj unwind label %bb.ak, !dbg !14993

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.preheader: ; preds = %bb.r
    #dbg_value(ptr %i.ge, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12686)
    #dbg_value(i64 poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12686)
    #dbg_value(ptr poison, !13264, !DIExpression(), !14311)
    #dbg_value(i64 %i.ed, !14258, !DIExpression(), !14313)
    #dbg_value(i1 true, !14314, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14317)
  store i64 %i.ed, ptr %i.dk, align 8, !dbg !14994
  %i.gr = getelementptr inbounds nuw i8, ptr %i.dk, i64 8, !dbg !14994 ; 3 uses
  store ptr %i.ge, ptr %i.gr, align 8, !dbg !14994
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dk, i64 16, !dbg !14994 ; 3 uses
  store i64 0, ptr %i.gs, align 8, !dbg !14994
  %.sroa.0546.0.copyload = load i64, ptr %i.dl, align 8, !dbg !13362 ; 2 uses
    #dbg_value(i64 %.sroa.0546.0.copyload, !13330, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14318)
    #dbg_value(ptr %i.eb, !13330, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14318)
    #dbg_value(i64 %i.ed, !13330, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14318)
    #dbg_value(i64 %.sroa.0546.0.copyload, !13331, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14319)
    #dbg_value(ptr %i.eb, !13331, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14319)
    #dbg_value(i64 %i.ed, !13331, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14319)
    #dbg_value(ptr %i.eb, !13333, !DIExpression(), !14320)
    #dbg_value(ptr %i.eb, !13335, !DIExpression(), !14321)
    #dbg_value(ptr %i.eb, !13857, !DIExpression(), !14323)
    #dbg_value(ptr undef, !13354, !DIExpression(), !13368)
    #dbg_value(i64 %i.ed, !13854, !DIExpression(), !14323)
    #dbg_value(ptr %i.ee, !13336, !DIExpression(), !14324)
    #dbg_value(ptr undef, !13351, !DIExpression(), !13366)
    #dbg_value(ptr undef, !13264, !DIExpression(), !13365)
    #dbg_value(i64 %.sroa.0546.0.copyload, !14258, !DIExpression(), !14327)
  %i.gt = icmp sgt i64 %.sroa.0546.0.copyload, -1, !dbg !14995
  tail call void @llvm.assume(i1 %i.gt), !dbg !14995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !dbg !13362
  store ptr %i.eb, ptr %i.dj, align 8, !dbg !13362
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8, !dbg !13362 ; 3 uses
  store ptr %i.eb, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !13362
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 16, !dbg !13362
  store i64 %.sroa.0546.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !13362
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 24, !dbg !13362 ; 2 uses
  store ptr %i.ee, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !13362
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600, !dbg !13440

bb.z:                                             ; preds = %bb.ah, %bb.ad, %bb.ab, %bb.aa
  %i.gu = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.dj, !14298, !DIExpression(), !12689)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dj)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit601.thread unwind label %bb.x, !dbg !14996

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.preheader, %bb.af
  %2 = phi ptr [ %4, %bb.af ], [ %i.ge, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.preheader ] ; 2 uses
  %i.gv = phi ptr [ %i.hi, %bb.af ], [ %i.ge, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.preheader ]
  %i.gw = phi i64 [ %i.hj, %bb.af ], [ 0, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.preheader ] ; 6 uses
  %i.gx = phi ptr [ %i.hl, %bb.af ], [ %i.eb, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14328), !dbg !13440
    #dbg_value(ptr %i.gx, !14277, !DIExpression(), !12693)
    #dbg_value(ptr %i.gx, !14278, !DIExpression(), !12694)
    #dbg_value(ptr %i.gx, !14288, !DIExpression(), !12696)
    #dbg_value(ptr %i.gx, !14291, !DIExpression(), !12698)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 72, !dbg !14997
  store ptr %i.gy, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14998, !alias.scope !14328
  %.sroa.0658.0.copyload = load i64, ptr %i.gx, align 8, !dbg !14999, !noalias !14328
  %.sroa.7.0..sroa_idx659 = getelementptr inbounds nuw i8, ptr %i.gx, i64 8, !dbg !14999 ; 2 uses
  switch i64 %.sroa.0658.0.copyload, label %bb.aa [
    i64 2, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.thread
    i64 0, label %bb.ab
  ], !dbg !13440

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.thread: ; preds = %bb.af, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600
    #dbg_value(ptr %i.dj, !14298, !DIExpression(), !12701)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dj)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit602 unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit601.thread840, !dbg !15000

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit601.thread840: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.thread
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit601.thread, !dbg !15001

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit602: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !dbg !15002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !dbg !15003
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dg, i64 8, !dbg !15003
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ha, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !dbg !15004
  store i8 16, ptr %i.dg, align 8, !dbg !15003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !dbg !15005
  %i.hb = getelementptr inbounds nuw i8, ptr %i.df, i64 8, !dbg !15005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hb, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !dbg !15005
  store i64 1, ptr %i.df, align 8, !dbg !15005
  %i.hc = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.dg, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.df), !dbg !15006 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !dbg !15007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !dbg !15007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !dbg !15001
  br label %bb.t, !dbg !14983

bb.aa:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !dbg !15008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dh, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx659, i64 64, i1 false), !dbg !15008
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.dh)
          to label %bb.ag unwind label %bb.z, !dbg !15009

bb.ab:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !dbg !15010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.di, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx659, i64 64, i1 false), !dbg !15010
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.di)
          to label %bb.ac unwind label %bb.z, !dbg !15011

bb.ac:                                            ; preds = %bb.ab
    #dbg_value(ptr %i.dk, !13672, !DIExpression(), !13675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14329), !dbg !15012
    #dbg_value(ptr %i.dk, !4378, !DIExpression(), !12705)
    #dbg_value(ptr %i.dk, !4387, !DIExpression(), !12707)
    #dbg_value(i1 false, !4383, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12705)
    #dbg_value(i64 1, !4392, !DIExpression(), !12710)
    #dbg_value(i64 %i.gw, !4384, !DIExpression(), !12711)
    #dbg_value(i64 %i.gw, !4401, !DIExpression(), !12713)
    #dbg_value(ptr %i.dk, !4399, !DIExpression(), !12714)
  %i.hd = load i64, ptr %i.dk, align 8, !dbg !15013, !range !3688, !alias.scope !14329, !noundef !1394
  %i.he = icmp eq i64 %i.gw, %i.hd, !dbg !15014
  br i1 %i.he, label %bb.ad, label %bb.ae, !dbg !15014

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecbE8grow_oneCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dk) #29
          to label %._crit_edge unwind label %bb.z, !dbg !15015

._crit_edge:                                      ; preds = %bb.ad
  %.pre1113 = load ptr, ptr %i.gr, align 8, !dbg !15016, !alias.scope !14329 ; 2 uses
  br label %bb.ae, !dbg !15015

bb.ae:                                            ; preds = %._crit_edge, %bb.ac
  %3 = phi ptr [ %.pre1113, %._crit_edge ], [ %2, %bb.ac ]
  %i.hf = phi ptr [ %.pre1113, %._crit_edge ], [ %i.gv, %bb.ac ], !dbg !15016 ; 2 uses
    #dbg_value(ptr %i.hf, !4404, !DIExpression(), !12713)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.gw, !dbg !15017
    #dbg_value(ptr %i.hg, !4385, !DIExpression(), !12718)
    #dbg_value(ptr %i.hg, !4419, !DIExpression(), !12720)
    #dbg_value(i1 false, !4422, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12720)
  store i8 0, ptr %i.hg, align 1, !dbg !15018, !noalias !14329
  %i.hh = add i64 %i.gw, 1, !dbg !15019           ; 2 uses
  store i64 %i.hh, ptr %i.gs, align 8, !dbg !15019, !alias.scope !14329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !dbg !15020
  br label %bb.af, !dbg !15020

bb.af:                                            ; preds = %bb.ai, %bb.ae
  %4 = phi ptr [ %5, %bb.ai ], [ %3, %bb.ae ]
  %i.hi = phi ptr [ %5, %bb.ai ], [ %i.hf, %bb.ae ]
  %i.hj = phi i64 [ %i.hq, %bb.ai ], [ %i.hh, %bb.ae ]
    #dbg_value(ptr %i.dj, !14276, !DIExpression(), !12721)
    #dbg_value(i64 1, !14289, !DIExpression(), !12696)
    #dbg_value(ptr %i.dj, !14263, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12723)
  %i.hk = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !15021, !alias.scope !14330, !nonnull !1394, !noundef !1394
    #dbg_value(ptr poison, !14264, !DIExpression(), !12726)
  %i.hl = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !15022, !alias.scope !14330, !nonnull !1394, !noundef !1394 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.hk, !dbg !15022
  br i1 %i.hm, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600, !dbg !15023

bb.ag:                                            ; preds = %bb.aa
    #dbg_value(ptr %i.dk, !13672, !DIExpression(), !13677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14331), !dbg !15024
    #dbg_value(ptr %i.dk, !4378, !DIExpression(), !12730)
    #dbg_value(ptr %i.dk, !4387, !DIExpression(), !12732)
    #dbg_value(i1 true, !4383, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12730)
    #dbg_value(i64 1, !4392, !DIExpression(), !12735)
    #dbg_value(i64 %i.gw, !4384, !DIExpression(), !12736)
    #dbg_value(i64 %i.gw, !4401, !DIExpression(), !12738)
    #dbg_value(ptr %i.dk, !4399, !DIExpression(), !12739)
  %i.hn = load i64, ptr %i.dk, align 8, !dbg !15025, !range !3688, !alias.scope !14331, !noundef !1394
  %i.ho = icmp eq i64 %i.gw, %i.hn, !dbg !15026
  br i1 %i.ho, label %bb.ah, label %bb.ai, !dbg !15026

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecbE8grow_oneCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dk) #29
          to label %._crit_edge1114 unwind label %bb.z, !dbg !15027

._crit_edge1114:                                  ; preds = %bb.ah
  %.pre1115 = load ptr, ptr %i.gr, align 8, !dbg !15028, !alias.scope !14331
  br label %bb.ai, !dbg !15027

bb.ai:                                            ; preds = %._crit_edge1114, %bb.ag
  %5 = phi ptr [ %.pre1115, %._crit_edge1114 ], [ %2, %bb.ag ], !dbg !15028 ; 3 uses
    #dbg_value(ptr %5, !4404, !DIExpression(), !12738)
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 %i.gw, !dbg !15029
    #dbg_value(ptr %i.hp, !4385, !DIExpression(), !12743)
    #dbg_value(ptr %i.hp, !4419, !DIExpression(), !12745)
    #dbg_value(i1 true, !4422, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12745)
  store i8 1, ptr %i.hp, align 1, !dbg !15030, !noalias !14331
  %i.hq = add i64 %i.gw, 1, !dbg !15031           ; 2 uses
  store i64 %i.hq, ptr %i.gs, align 8, !dbg !15031, !alias.scope !14331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !dbg !15032
  br label %bb.af, !dbg !15032

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit601.thread: ; preds = %bb.z, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit601.thread840
  %.pn581839 = phi { ptr, i32 } [ %i.gz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit601.thread840 ], [ %i.gu, %bb.z ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecbEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dk) #30
          to label %common.resume unwind label %bb.x, !dbg !15001

bb.aj:                                            ; preds = %bb.hm, %bb.hh, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera.exit
  unreachable

common.resume:                                    ; preds = %bb.fz, %bb.ga, %bb.ak, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.au, %bb.ay, %bb.bt, %bb.bv, %bb.cf, %bb.cr, %.body.thread924.thread, %bb.ez, %bb.fb, %bb.ge, %bb.gg, %bb.gp, %.thread1085, %bb.ch, %bb.ct, %.thread1033, %.thread1057, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit601.thread, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %.pn10621088, %.thread1085 ], [ %lpad.thr_comm.split-lp, %bb.ak ], [ %i.sk, %bb.ga ], [ %lpad.loopexit.split-lp1144, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.gm, %bb.w ], [ %lpad.thr_comm.split-lp853, %bb.au ], [ %.pn581839, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit601.thread ], [ %lpad.thr_comm.split-lp860, %bb.ay ], [ %lpad.thr_comm.split-lp1017, %.thread1033 ], [ %i.jy, %bb.bv ], [ %i.jy, %bb.bt ], [ %lpad.thr_comm896, %bb.ct ], [ %lpad.thr_comm873, %bb.cf ], [ %lpad.thr_comm873, %bb.ch ], [ %lpad.thr_comm896, %bb.cr ], [ %eh.lpad-body922936, %.body.thread924.thread ], [ %lpad.thr_comm1077, %.thread1057 ], [ %.pn569.pn959, %bb.fb ], [ %.pn569.pn959, %bb.ez ], [ %.pn565101210371039, %bb.gg ], [ %.pn5651013, %bb.ge ], [ %lpad.thr_comm1042, %bb.gp ], [ %i.sk, %bb.fz ]
  resume { ptr, i32 } %common.resume.op, !dbg !13436

bb.ak:                                            ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dl) #30
          to label %common.resume unwind label %bb.x, !dbg !14984

bb.al:                                            ; preds = %bb.f
  br i1 %i.es, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB3d_8Compiler12compile_exprs_0EB3h_.exit.thread, label %bb.am, !dbg !13937

bb.am:                                            ; preds = %bb.al
    #dbg_value(ptr %0, !14332, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !14340)
    #dbg_value(ptr %0, !14341, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !14346)
    #dbg_value(ptr %0, !14347, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !14351)
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !15033
  %i.hs = load ptr, ptr %i.hr, align 8, !dbg !15033, !nonnull !1394, !noundef !1394 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !15034
  %i.hu = load i64, ptr %i.ht, align 8, !dbg !15034, !noundef !1394 ; 2 uses
    #dbg_value(i64 %i.hu, !14358, !DIExpression(), !14372)
    #dbg_value(i64 %i.hu, !14375, !DIExpression(), !14380)
    #dbg_value(ptr %i.hs, !14373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14381)
    #dbg_value(ptr %i.hs, !14362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14382)
    #dbg_value(i64 %i.hu, !14373, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14381)
    #dbg_value(i64 %i.hu, !14362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14382)
    #dbg_value(ptr %i.hs, !14363, !DIExpression(), !14383)
    #dbg_value(ptr %i.hs, !14376, !DIExpression(), !14380)
  %.idx1143 = mul nuw nsw i64 %i.hu, 48, !dbg !15035
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.idx1143, !dbg !15035
    #dbg_value(ptr %i.cz, !13399, !DIExpression(), !12469)
    #dbg_value(ptr undef, !13398, !DIExpression(), !12469)
    #dbg_value(ptr undef, !13372, !DIExpression(), !12468)
    #dbg_value(i64 1, !14384, !DIExpression(), !12762)
    #dbg_value(ptr %i.hs, !13389, !DIExpression(), !12763)
    #dbg_value(ptr %i.hs, !14388, !DIExpression(), !12762)
    #dbg_value(ptr %i.hv, !13390, !DIExpression(), !12764)
    #dbg_value(ptr poison, !14391, !DIExpression(), !12767)
    #dbg_value(ptr poison, !14394, !DIExpression(), !12768)
  %.not.not.not.i.not1137 = icmp eq i64 %i.hu, 0, !dbg !15036
  br i1 %.not.not.not.i.not1137, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB3d_8Compiler12compile_exprs_0EB3h_.exit, label %.lr.ph1139, !dbg !15037

bb.an:                                            ; preds = %.noexc606
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hx, i64 48, !dbg !15038 ; 2 uses
    #dbg_value(ptr %i.hw, !13389, !DIExpression(), !12763)
    #dbg_value(ptr %i.hw, !14388, !DIExpression(), !12762)
    #dbg_value(ptr %i.hv, !13390, !DIExpression(), !12764)
    #dbg_value(ptr poison, !14391, !DIExpression(), !12767)
    #dbg_value(ptr poison, !14394, !DIExpression(), !12768)
  %.not.not.not.i.not = icmp eq ptr %i.hw, %i.hv, !dbg !15036
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB3d_8Compiler12compile_exprs_0EB3h_.exit, label %.lr.ph1139, !dbg !15037

.lr.ph1139:                                       ; preds = %bb.am, %bb.an
  %i.hx = phi ptr [ %i.hw, %bb.an ], [ %i.hs, %bb.am ] ; 2 uses
    #dbg_value(ptr %i.hx, !13389, !DIExpression(), !12763)
    #dbg_value(ptr %i.hx, !13400, !DIExpression(), !12769)
    #dbg_value(ptr poison, !14397, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12772)
    #dbg_value(ptr %i.hx, !14401, !DIExpression(), !12772)
    #dbg_value(ptr %i.hx, !14403, !DIExpression(), !12775)
    #dbg_value(ptr %i.cz, !14410, !DIExpression(), !12778)
  %i.hy = load ptr, ptr %i.eo, align 8, !dbg !15039, !noalias !14412, !nonnull !1394, !noundef !1394
  %i.hz = load i64, ptr %i.eq, align 8, !dbg !15040, !noalias !14412, !noundef !1394
    #dbg_value(ptr %i.hy, !14408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12775)
    #dbg_value(ptr %i.hy, !14413, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12795)
    #dbg_value(i64 %i.hz, !14408, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12775)
    #dbg_value(i64 %i.hz, !14413, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12795)
    #dbg_value(ptr %i.hx, !14418, !DIExpression(), !12796)
  %i.ia = invoke noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keyeECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hy, i64 noundef %i.hz)
          to label %.noexc606 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15041

.noexc606:                                        ; preds = %.lr.ph1139
  br i1 %i.ia, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB3d_8Compiler12compile_exprs_0EB3h_.exit.thread, label %bb.an, !dbg !15042

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB3d_8Compiler12compile_exprs_0EB3h_.exit: ; preds = %bb.an, %bb.am
    #dbg_value(i1 false, !13186, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14420)
    #dbg_value(ptr %0, !13448, !DIExpression(DW_OP_plus_uconst, 432, DW_OP_stack_value), !14422)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !dbg !15043
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15044

bb.ao:                                            ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB3d_8Compiler12compile_exprs_0EB3h_.exit
    #dbg_value(ptr %0, !13453, !DIExpression(DW_OP_plus_uconst, 432, DW_OP_stack_value), !14423)
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 432, !dbg !15045
  %i.ic = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ib, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cy)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15046 ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !dbg !15047
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB3d_8Compiler12compile_exprs_0EB3h_.exit.thread, !dbg !15048

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB3d_8Compiler12compile_exprs_0EB3h_.exit.thread: ; preds = %.noexc606, %bb.ap, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !dbg !15049
  %i.id = getelementptr inbounds nuw i8, ptr %i.cx, i64 8, !dbg !15049
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.id, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i64 24, i1 false), !dbg !15050
  store i8 1, ptr %i.cx, align 8, !dbg !15049
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !dbg !15051
  %i.ie = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !15051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ie, ptr noundef nonnull align 8 dereferenceable(48) %i.en, i64 48, i1 false), !dbg !15051
  store i64 1, ptr %i.cw, align 8, !dbg !15051
  %i.if = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.cw), !dbg !15052 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !dbg !15053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !dbg !15053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !dbg !15054
  br label %bb.q, !dbg !15055

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph1139, %bb.ao, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB3d_8Compiler12compile_exprs_0EB3h_.exit, %bb.f
  %lpad.loopexit.split-lp1144 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cz) #30
          to label %common.resume unwind label %bb.x, !dbg !15054

bb.aq:                                            ; preds = %bb.g
  %i.ig = getelementptr inbounds nuw i8, ptr %i.cv, i64 88, !dbg !15056
  %i.ih = load i8, ptr %i.ig, align 8, !dbg !15056, !range !2544, !noundef !1394
  %i.ii = trunc nuw i8 %i.ih to i1, !dbg !15056
  %i.ij = getelementptr inbounds nuw i8, ptr %i.cv, i64 64, !dbg !15057 ; 2 uses
  br i1 %i.ii, label %bb.as, label %bb.ar, !dbg !15056

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !dbg !15058
  %i.ik = getelementptr inbounds nuw i8, ptr %i.cs, i64 8, !dbg !15058
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ik, ptr noundef nonnull align 8 dereferenceable(24) %i.ij, i64 24, i1 false), !dbg !15059
  store i8 2, ptr %i.cs, align 8, !dbg !15058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !dbg !15060
  %i.il = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !15060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.il, ptr noundef nonnull align 8 dereferenceable(48) %i.ev, i64 48, i1 false), !dbg !15060
  store i64 1, ptr %i.cr, align 8, !dbg !15060
  %i.im = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.cr), !dbg !15061 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !dbg !15062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !dbg !15062
  br label %bb.at, !dbg !15063

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !dbg !15064
  %i.in = getelementptr inbounds nuw i8, ptr %i.cu, i64 8, !dbg !15064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.in, ptr noundef nonnull align 8 dereferenceable(24) %i.ij, i64 24, i1 false), !dbg !15065
  store i8 3, ptr %i.cu, align 8, !dbg !15064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !dbg !15066
  %i.io = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !15066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.io, ptr noundef nonnull align 8 dereferenceable(48) %i.ev, i64 48, i1 false), !dbg !15066
  store i64 1, ptr %i.ct, align 8, !dbg !15066
  %i.ip = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.ct), !dbg !15067 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !dbg !15068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !dbg !15068
  br label %bb.at, !dbg !15063

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !15069
  br label %bb.q, !dbg !15070

bb.au:                                            ; preds = %bb.g
  %lpad.thr_comm.split-lp853 = landingpad { ptr, i32 }
          cleanup
  %i.iq = getelementptr inbounds nuw i8, ptr %i.cv, i64 64, !dbg !15069
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iq) #30
          to label %common.resume unwind label %bb.x, !dbg !15069

bb.av:                                            ; preds = %bb.h
  %i.ir = getelementptr inbounds nuw i8, ptr %i.cq, i64 64, !dbg !15071
  call fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.ir), !dbg !15072
  %i.is = getelementptr inbounds nuw i8, ptr %i.cq, i64 128, !dbg !15073
  %i.it = load i8, ptr %i.is, align 8, !dbg !15073, !range !2544, !noundef !1394
  %i.iu = trunc nuw i8 %i.it to i1, !dbg !15073
  br i1 %i.iu, label %bb.ax, label %bb.aw, !dbg !15073

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !dbg !15074
  store i8 4, ptr %i.cn, align 8, !dbg !15074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !dbg !15075
  %i.iv = getelementptr inbounds nuw i8, ptr %i.cm, i64 8, !dbg !15075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iv, ptr noundef nonnull align 8 dereferenceable(48) %i.ey, i64 48, i1 false), !dbg !15075
  store i64 1, ptr %i.cm, align 8, !dbg !15075
  %i.iw = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.cn, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.cm), !dbg !15076 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !dbg !15077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !dbg !15077
  br label %bb.q, !dbg !15078

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !dbg !15079
  store i8 5, ptr %i.cp, align 8, !dbg !15079
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !dbg !15080
  %i.ix = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !15080
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler14compile_kwargs:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !18950
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.k)
          to label %bb.j unwind label %bb.g, !dbg !18951

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !18946
  br label %bb.b, !dbg !18933

bb.k:                                             ; preds = %bb.c, %.thread
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !18952
  unreachable, !dbg !18952

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit: ; preds = %bb.c
  resume { ptr, i32 } %.pn.pn, !dbg !18952
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler19compile_map_entries(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18965 {
bb.a:
    #dbg_value(ptr poison, !19215, !DIExpression(), !19223)
    #dbg_value(ptr poison, !19247, !DIExpression(), !19249)
    #dbg_value(ptr poison, !19250, !DIExpression(), !19257)
    #dbg_value(ptr poison, !19215, !DIExpression(), !19261)
    #dbg_value(ptr poison, !19247, !DIExpression(), !19262)
    #dbg_value(ptr poison, !19250, !DIExpression(), !19264)
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [96 x i8], align 16               ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !19265, !DIExpression(), !19298)
  %i.f = alloca [32 x i8], align 16               ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 7 uses
  %i.k = alloca [56 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 16               ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 11 uses
    #dbg_value(ptr poison, !19300, !DIExpression(), !19029)
    #dbg_value(ptr poison, !19324, !DIExpression(), !19030)
    #dbg_value(ptr %0, !19189, !DIExpression(), !19330)
    #dbg_declare(ptr %1, !19190, !DIExpression(), !19331)
    #dbg_declare(ptr %2, !19191, !DIExpression(), !19332)
    #dbg_declare(ptr %i.p, !19193, !DIExpression(), !19333)
    #dbg_declare(ptr %i.o, !19194, !DIExpression(), !19334)
    #dbg_declare(ptr %i.n, !19196, !DIExpression(), !19335)
    #dbg_declare(ptr %i.j, !19197, !DIExpression(), !19336)
    #dbg_declare(ptr %i.i, !19198, !DIExpression(), !19337)
    #dbg_declare(ptr %i.g, !19200, !DIExpression(), !19338)
    #dbg_declare(ptr %i.b, !19201, !DIExpression(), !19339)
    #dbg_declare(ptr %i.f, !19202, !DIExpression(), !19340)
    #dbg_declare(ptr poison, !19341, !DIExpression(), !19346)
    #dbg_declare(ptr poison, !19349, !DIExpression(), !19353)
    #dbg_declare(ptr poison, !19354, !DIExpression(), !19361)
    #dbg_value(i64 1, !19216, !DIExpression(), !19364)
    #dbg_declare(ptr poison, !19228, !DIExpression(), !19370)
    #dbg_value(i64 96, !19216, !DIExpression(), !19371)
    #dbg_value(i8 0, !19372, !DIExpression(), !19376)
    #dbg_value(i8 1, !19372, !DIExpression(), !19378)
    #dbg_declare(ptr poison, !19235, !DIExpression(), !19379)
    #dbg_value(i64 96, !19216, !DIExpression(), !19380)
    #dbg_value(ptr %1, !19381, !DIExpression(), !19390)
    #dbg_value(ptr %1, !19391, !DIExpression(), !19395)
    #dbg_value(ptr %1, !19396, !DIExpression(), !19402)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19551
  %i.r = load ptr, ptr %i.q, align 8, !dbg !19551, !nonnull !1394, !noundef !1394 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !19552
  %i.t = load i64, ptr %i.s, align 8, !dbg !19552, !noundef !1394 ; 9 uses
    #dbg_value(i64 %i.t, !19416, !DIExpression(), !19429)
    #dbg_value(i64 %i.t, !19432, !DIExpression(), !19438)
    #dbg_value(ptr %i.r, !19430, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19439)
    #dbg_value(ptr %i.r, !19420, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19440)
    #dbg_value(i64 %i.t, !19430, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19439)
    #dbg_value(i64 %i.t, !19420, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19440)
    #dbg_value(ptr %i.r, !19421, !DIExpression(), !19441)
    #dbg_value(ptr %i.r, !19435, !DIExpression(), !19438)
  %.idx163 = mul nuw nsw i64 %i.t, 96, !dbg !19553
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx163, !dbg !19553 ; 3 uses
    #dbg_value(ptr undef, !19324, !DIExpression(), !19030)
    #dbg_value(ptr undef, !19300, !DIExpression(), !19029)
    #dbg_declare(ptr poison, !19325, !DIExpression(), !19053)
    #dbg_value(i64 1, !19442, !DIExpression(), !19056)
    #dbg_value(ptr %i.r, !19317, !DIExpression(), !19057)
    #dbg_value(ptr %i.r, !19446, !DIExpression(), !19056)
    #dbg_value(ptr %i.u, !19318, !DIExpression(), !19058)
    #dbg_value(ptr poison, !19449, !DIExpression(), !19061)
    #dbg_value(ptr poison, !19452, !DIExpression(), !19062)
  %.not.not.not.i.not170 = icmp eq i64 %i.t, 0, !dbg !19554
  br i1 %.not.not.not.i.not170, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_8compilerNtB2p_8Compiler19compile_map_entries0EBW_.exit, label %.lr.ph, !dbg !19555

bb.b:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.w, i64 96, !dbg !19556 ; 2 uses
    #dbg_value(ptr %i.v, !19317, !DIExpression(), !19057)
    #dbg_value(ptr %i.v, !19446, !DIExpression(), !19056)
    #dbg_value(ptr %i.u, !19318, !DIExpression(), !19058)
    #dbg_value(ptr poison, !19449, !DIExpression(), !19061)
    #dbg_value(ptr poison, !19452, !DIExpression(), !19062)
  %.not.not.not.i.not = icmp eq ptr %i.v, %i.u, !dbg !19554
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_8compilerNtB2p_8Compiler19compile_map_entries0EBW_.exit, label %.lr.ph, !dbg !19555

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.w = phi ptr [ %i.v, %bb.b ], [ %i.r, %bb.a ] ; 2 uses
    #dbg_value(ptr %i.w, !19317, !DIExpression(), !19057)
    #dbg_value(ptr %i.w, !19326, !DIExpression(), !19063)
  %.val.i = load i64, ptr %i.w, align 16, !dbg !19557, !range !2737, !noalias !19454, !noundef !1394
    #dbg_value(ptr poison, !19456, !DIExpression(), !19068)
    #dbg_value(ptr poison, !19459, !DIExpression(), !19068)
  %i.x = icmp eq i64 %.val.i, -1, !dbg !19558
  br i1 %i.x, label %bb.c, label %bb.b, !dbg !19557

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_8compilerNtB2p_8Compiler19compile_map_entries0EBW_.exit: ; preds = %bb.b, %bb.a
    #dbg_value(i1 false, !19192, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19461)
    #dbg_value(ptr %1, !19250, !DIExpression(), !19463)
    #dbg_value(i64 %i.t, !19199, !DIExpression(), !19464)
  %i.y = icmp ult i64 %i.t, 96076792050570582, !dbg !19559
  tail call void @llvm.assume(i1 %i.y), !dbg !19560
  %.sroa.087.0.copyload = load i64, ptr %1, align 8, !dbg !19220 ; 2 uses
    #dbg_value(i64 %.sroa.087.0.copyload, !19226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19465)
    #dbg_value(ptr %i.r, !19226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19465)
    #dbg_value(i64 %i.t, !19226, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19465)
    #dbg_value(i64 %.sroa.087.0.copyload, !19234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19466)
    #dbg_value(ptr %i.r, !19234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19466)
    #dbg_value(i64 %i.t, !19234, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19466)
    #dbg_value(ptr %i.r, !19236, !DIExpression(), !19467)
    #dbg_value(ptr %i.r, !19237, !DIExpression(), !19468)
    #dbg_value(ptr %i.r, !19435, !DIExpression(), !19470)
    #dbg_value(ptr undef, !19250, !DIExpression(), !19257)
    #dbg_value(i64 %i.t, !19432, !DIExpression(), !19470)
    #dbg_value(ptr %i.u, !19238, !DIExpression(), !19471)
    #dbg_value(ptr undef, !19247, !DIExpression(), !19249)
    #dbg_value(ptr undef, !19215, !DIExpression(), !19223)
    #dbg_value(i64 %.sroa.087.0.copyload, !19472, !DIExpression(), !19476)
  %i.z = icmp sgt i64 %.sroa.087.0.copyload, -1, !dbg !19561
  tail call void @llvm.assume(i1 %i.z), !dbg !19561
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !19220
  store ptr %i.r, ptr %i.g, align 8, !dbg !19220
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !19220 ; 3 uses
  store ptr %i.r, ptr %.sroa.415.0..sroa_idx, align 8, !dbg !19220
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !19220
  store i64 %.sroa.087.0.copyload, ptr %.sroa.516.0..sroa_idx, align 8, !dbg !19220
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !19220 ; 2 uses
  store ptr %i.u, ptr %.sroa.617.0..sroa_idx, align 8, !dbg !19220
  %i.aa = icmp eq i64 %i.t, 0, !dbg !19562
  br i1 %i.aa, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph, !dbg !19563

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_8compilerNtB2p_8Compiler19compile_map_entries0EBW_.exit
  %.sroa.7116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx172 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5.0..sroa_idx173 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit, !dbg !19563

bb.c:                                             ; preds = %.lr.ph
    #dbg_value(i1 poison, !19192, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19461)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !19564
    #dbg_value(ptr %1, !19250, !DIExpression(), !19495)
    #dbg_value(i64 %i.t, !19347, !DIExpression(), !19496)
    #dbg_value(i64 %i.t, !19342, !DIExpression(), !19497)
    #dbg_value(i64 %i.t, !19350, !DIExpression(), !19498)
    #dbg_value(i64 %i.t, !19355, !DIExpression(), !19499)
  %i.ad = icmp ult i64 %i.t, 96076792050570582, !dbg !19565
  tail call void @llvm.assume(i1 %i.ad), !dbg !19566
    #dbg_value(i64 1, !19356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19499)
    #dbg_value(i64 1, !19356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19499)
    #dbg_value(i64 %i.t, !4339, !DIExpression(), !19081)
    #dbg_value(i1 false, !4354, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19081)
    #dbg_declare(ptr poison, !4355, !DIExpression(), !19082)
    #dbg_value(i64 1, !4356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19081)
    #dbg_value(i64 1, !4356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19081)
    #dbg_value(i64 1, !4357, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19083)
    #dbg_value(i64 %i.t, !4357, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19083)
    #dbg_value(i64 1, !3901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19087)
    #dbg_value(i64 1, !3901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19091)
    #dbg_value(i64 %i.t, !3901, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19087)
    #dbg_value(i64 %i.t, !3901, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19091)
    #dbg_value(i64 %i.t, !3906, !DIExpression(), !19092)
    #dbg_value(i64 %i.t, !3906, !DIExpression(), !19093)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !dbg !19567, !noalias !19500
    #dbg_value(ptr poison, !4359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19096)
    #dbg_value(i64 poison, !4359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19096)
    #dbg_value(ptr poison, !4375, !DIExpression(), !19097)
    #dbg_value(ptr poison, !4371, !DIExpression(), !19098)
    #dbg_value(i64 1, !4376, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19097)
    #dbg_value(i64 1, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19098)
    #dbg_value(i64 %i.t, !4376, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19097)
    #dbg_value(i64 %i.t, !4372, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19098)
    #dbg_value(i8 0, !4373, !DIExpression(), !19098)
    #dbg_value(i64 1, !3912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19100)
    #dbg_value(i64 %i.t, !3912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19100)
    #dbg_value(i1 false, !3905, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19091)
  %i.ae = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.t, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !dbg !19568, !noalias !19500 ; 4 uses
    #dbg_value(ptr %i.ae, !4359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19096)
    #dbg_value(i64 poison, !4359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19096)
  %i.af = icmp eq ptr %i.ae, null, !dbg !19569
  br i1 %i.af, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera.exit, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.lr.ph, !dbg !19570

.body:                                            ; preds = %.thread131, %bb.h
  %.pn92 = phi { ptr, i32 } [ %i.an, %bb.h ], [ %i.am, %.thread131 ]
    #dbg_value(ptr %i.g, !19501, !DIExpression(), !19103)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.thread unwind label %bb.k, !dbg !19571

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEBH_.exit
  %i.ag = phi ptr [ %i.r, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph ], [ %i.ar, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEBH_.exit ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19507), !dbg !19338
    #dbg_value(ptr %i.ag, !19491, !DIExpression(), !19106)
    #dbg_value(ptr %i.ag, !19492, !DIExpression(), !19107)
    #dbg_value(ptr %i.ag, !19508, !DIExpression(), !19110)
    #dbg_value(ptr %i.ag, !19511, !DIExpression(), !19113)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 96, !dbg !19572
  store ptr %i.ah, ptr %.sroa.415.0..sroa_idx, align 8, !dbg !19573, !alias.scope !19507
  %.sroa.0114.0.copyload115 = load i64, ptr %i.ag, align 16, !dbg !19574, !noalias !19507 ; 3 uses
  %.not = icmp eq i64 %.sroa.0114.0.copyload115, -2, !dbg !19338
  br i1 %.not, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %bb.d, !dbg !19338

bb.d:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit
  %.sroa.7116.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !19574
  store i64 %.sroa.0114.0.copyload115, ptr %i.b, align 16, !dbg !19575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7116.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7116.0..sroa_idx117, i64 88, i1 false), !dbg !19575
  %i.ai = icmp eq i64 %.sroa.0114.0.copyload115, -1, !dbg !19576
  br i1 %i.ai, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyEBH_.exit.i, label %bb.g, !dbg !19577

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEBH_.exit, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_8compilerNtB2p_8Compiler19compile_map_entries0EBW_.exit
    #dbg_value(ptr %i.g, !19501, !DIExpression(), !19117)
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g), !dbg !19578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !19579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19580
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !19580
  store i64 %i.t, ptr %i.aj, align 8, !dbg !19580
  store i8 13, ptr %i.a, align 8, !dbg !19580
  %i.ak = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2), !dbg !19581 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19582
  br label %bb.e, !dbg !19583

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit109, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread
  ret void, !dbg !19584

bb.f:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !19585
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEBH_.exit, !dbg !19586

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !19340
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 64, !dbg !19340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.f, ptr noundef nonnull align 16 dereferenceable(32) %i.al, i64 32, i1 false), !dbg !19340
  %.sroa.3.0.copyload = load <2 x i64>, ptr %.sroa.3.0..sroa_idx, align 16, !dbg !19587
    #dbg_value(<2 x i64> %.sroa.3.0.copyload, !19203, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !19518)
  %.sroa.4.0.copyload = load <2 x i64>, ptr %.sroa.4.0..sroa_idx172, align 16, !dbg !19587
    #dbg_value(<2 x i64> %.sroa.4.0.copyload, !19203, !DIExpression(DW_OP_LLVM_fragment, 256, 128), !19518)
  %.sroa.5.0.copyload = load <2 x i64>, ptr %.sroa.5.0..sroa_idx173, align 16, !dbg !19587
    #dbg_value(<2 x i64> %.sroa.5.0.copyload, !19203, !DIExpression(DW_OP_LLVM_fragment, 384, 128), !19518)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !19588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !19589
  invoke void @_RNvXsw_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromNtNtB5_3key3KeyE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %i.f)
          to label %bb.i unwind label %.thread131, !dbg !19589

.thread131:                                       ; preds = %bb.g, %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b) #30
          to label %.body unwind label %bb.k, !dbg !19585

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyEBH_.exit.i, %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !19585

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !19588
  store i8 0, ptr %i.e, align 8, !dbg !19588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !19590
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !19591
    #dbg_value(ptr undef, !19265, !DIExpression(), !19298)
    #dbg_value(ptr undef, !19519, !DIExpression(), !19522)
  store <2 x i64> %.sroa.3.0.copyload, ptr %i.ac, align 8, !dbg !19591
  store <2 x i64> %.sroa.4.0.copyload, ptr %.sroa.520.0..sroa_idx, align 8, !dbg !19591
  store <2 x i64> %.sroa.5.0.copyload, ptr %.sroa.722.0..sroa_idx, align 8, !dbg !19591
  store i64 1, ptr %i.c, align 8, !dbg !19591
  %i.ao = invoke noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.c)
          to label %bb.j unwind label %.thread131, !dbg !19592 ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !19593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !19593
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.b)
          to label %bb.f unwind label %bb.h, !dbg !19594

bb.k:                                             ; preds = %bb.l, %.body, %bb.z, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit108.thread, %bb.o, %.thread131
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !19595
  unreachable, !dbg !19595

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyEBH_.exit.i: ; preds = %bb.d
    #dbg_value(ptr %i.b, !19524, !DIExpression(), !19121)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.sroa.7116.0..sroa_idx)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEBH_.exit unwind label %bb.h, !dbg !19596

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEBH_.exit: ; preds = %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyEBH_.exit.i
    #dbg_value(ptr %i.g, !19490, !DIExpression(), !19122)
    #dbg_value(i64 1, !19509, !DIExpression(), !19110)
    #dbg_value(ptr %i.g, !19477, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19123)
  %i.aq = load ptr, ptr %.sroa.617.0..sroa_idx, align 8, !dbg !19597, !alias.scope !19528, !nonnull !1394, !noundef !1394
    #dbg_value(ptr poison, !19478, !DIExpression(), !19126)
  %i.ar = load ptr, ptr %.sroa.415.0..sroa_idx, align 8, !dbg !19562, !alias.scope !19528, !nonnull !1394, !noundef !1394 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.aq, !dbg !19562
  br i1 %i.as, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit, !dbg !19563

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera.exit: ; preds = %bb.c
    #dbg_value(i64 1, !19358, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19529)
    #dbg_value(i64 %i.t, !19358, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19529)
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.t) #32
          to label %bb.y unwind label %bb.z, !dbg !19598

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.lr.ph: ; preds = %bb.c
    #dbg_value(ptr %i.ae, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19127)
    #dbg_value(i64 poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19127)
    #dbg_value(ptr poison, !19215, !DIExpression(), !19530)
    #dbg_value(i64 %i.t, !19472, !DIExpression(), !19532)
  store i64 %i.t, ptr %i.p, align 8, !dbg !19599
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !19599 ; 3 uses
  store ptr %i.ae, ptr %i.at, align 8, !dbg !19599
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !19599 ; 3 uses
  store i64 0, ptr %i.au, align 8, !dbg !19599
  %.sroa.081.0.copyload = load i64, ptr %1, align 8, !dbg !19258 ; 2 uses
    #dbg_value(i64 %.sroa.081.0.copyload, !19226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19533)
    #dbg_value(ptr %i.r, !19226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19533)
    #dbg_value(i64 %i.t, !19226, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19533)
    #dbg_value(i64 %.sroa.081.0.copyload, !19227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19534)
    #dbg_value(ptr %i.r, !19227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19534)
    #dbg_value(i64 %i.t, !19227, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19534)
    #dbg_value(ptr %i.r, !19229, !DIExpression(), !19535)
    #dbg_value(ptr %i.r, !19231, !DIExpression(), !19536)
    #dbg_value(ptr %i.r, !19435, !DIExpression(), !19538)
    #dbg_value(ptr undef, !19250, !DIExpression(), !19264)
    #dbg_value(i64 %i.t, !19432, !DIExpression(), !19538)
    #dbg_value(ptr %i.u, !19232, !DIExpression(), !19539)
    #dbg_value(ptr undef, !19247, !DIExpression(), !19262)
    #dbg_value(ptr undef, !19215, !DIExpression(), !19261)
    #dbg_value(i64 %.sroa.081.0.copyload, !19472, !DIExpression(), !19542)
  %i.av = icmp sgt i64 %.sroa.081.0.copyload, -1, !dbg !19600
  tail call void @llvm.assume(i1 %i.av), !dbg !19600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !19258
  store ptr %i.r, ptr %i.o, align 8, !dbg !19258
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !19258 ; 3 uses
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !19258
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !19258
  store i64 %.sroa.081.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !19258
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !19258 ; 2 uses
  store ptr %i.u, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !19258
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107, !dbg !19601

bb.l:                                             ; preds = %.thread159, %bb.o
  %.pn97 = phi { ptr, i32 } [ %lpad.thr_comm157, %.thread159 ], [ %lpad.thr_comm.split-lp158, %bb.o ]
    #dbg_value(ptr %i.o, !19501, !DIExpression(), !19130)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit108.thread unwind label %bb.k, !dbg !19602

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.lr.ph, %bb.u
  %3 = phi ptr [ %i.ae, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.lr.ph ], [ %5, %bb.u ] ; 2 uses
  %i.bb = phi ptr [ %i.ae, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.lr.ph ], [ %i.bs, %bb.u ]
  %i.bc = phi i64 [ 0, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.lr.ph ], [ %i.bt, %bb.u ] ; 6 uses
  %i.bd = phi ptr [ %i.r, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.lr.ph ], [ %i.bv, %bb.u ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19543), !dbg !19334
    #dbg_value(ptr %i.bd, !19491, !DIExpression(), !19133)
    #dbg_value(ptr %i.bd, !19492, !DIExpression(), !19134)
    #dbg_value(ptr %i.bd, !19508, !DIExpression(), !19136)
    #dbg_value(ptr %i.bd, !19511, !DIExpression(), !19138)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 96, !dbg !19603
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !19604, !alias.scope !19543
  %.sroa.0112.0.copyload = load i64, ptr %i.bd, align 16, !dbg !19605, !noalias !19543 ; 2 uses
  %.sroa.7.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8, !dbg !19605 ; 2 uses
  switch i64 %.sroa.0112.0.copyload, label %bb.n [
    i64 -2, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.thread
    i64 -1, label %bb.m
  ], !dbg !19334

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.thread: ; preds = %bb.u, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107
    #dbg_value(ptr %i.o, !19501, !DIExpression(), !19141)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit109 unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit108.thread148, !dbg !19606

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit108.thread148: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.thread
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit108.thread, !dbg !19607

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit109: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !19608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !19609
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !19609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !19610
  store i8 15, ptr %i.h, align 8, !dbg !19609
  %i.bh = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2), !dbg !19611 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !19612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !19607
  br label %bb.e, !dbg !19583

bb.m:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !19613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx113, i64 64, i1 false), !dbg !19613
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.i)
          to label %bb.v unwind label %.thread159, !dbg !19614

bb.n:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !19615
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 64, !dbg !19615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.n, ptr noundef nonnull align 16 dereferenceable(32) %i.bi, i64 32, i1 false), !dbg !19615
  store i64 %.sroa.0112.0.copyload, ptr %i.j, align 8, !dbg !19616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.53.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx113, i64 56, i1 false), !dbg !19616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !19617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !19618
  invoke void @_RNvXsw_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromNtNtB5_3key3KeyE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %i.n)
          to label %bb.p unwind label %bb.o, !dbg !19618

.thread159:                                       ; preds = %bb.m, %bb.w, %bb.s, %bb.q
  %lpad.thr_comm157 = landingpad { ptr, i32 }
          cleanup
  br label %bb.l, !dbg !19619

bb.o:                                             ; preds = %bb.p, %bb.n
  %lpad.thr_comm.split-lp158 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j) #30
          to label %bb.l unwind label %bb.k, !dbg !19619

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !19617
  store i8 0, ptr %i.m, align 8, !dbg !19617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !19620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !19621
    #dbg_value(ptr %i.j, !19265, !DIExpression(), !19545)
    #dbg_value(ptr %i.ax, !19519, !DIExpression(), !19547)
  %i.bj = load <2 x i64>, ptr %i.ax, align 8, !dbg !19622
  store <2 x i64> %i.bj, ptr %i.ba, align 8, !dbg !19621
  %i.bk = load <2 x i64>, ptr %i.ay, align 8, !dbg !19622
  store <2 x i64> %i.bk, ptr %.sroa.57.0..sroa_idx, align 8, !dbg !19621
  %i.bl = load <2 x i64>, ptr %i.az, align 8, !dbg !19622
  store <2 x i64> %i.bl, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !19621
  store i64 1, ptr %i.k, align 8, !dbg !19621
  %i.bm = invoke noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.k)
          to label %bb.q unwind label %bb.o, !dbg !19623 ; 0 uses

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !19624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !19624
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.j)
          to label %bb.r unwind label %.thread159, !dbg !19625

bb.r:                                             ; preds = %bb.q
    #dbg_value(ptr %i.p, !19373, !DIExpression(), !19376)
  call void @llvm.experimental.noalias.scope.decl(metadata !19548), !dbg !19626
    #dbg_value(ptr %i.p, !4378, !DIExpression(), !19145)
    #dbg_value(ptr %i.p, !4387, !DIExpression(), !19147)
    #dbg_value(i1 false, !4383, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19145)
    #dbg_value(i64 1, !4392, !DIExpression(), !19150)
    #dbg_value(i64 %i.bc, !4384, !DIExpression(), !19151)
    #dbg_value(i64 %i.bc, !4401, !DIExpression(), !19153)
    #dbg_value(ptr %i.p, !4399, !DIExpression(), !19154)
  %i.bn = load i64, ptr %i.p, align 8, !dbg !19627, !range !3688, !alias.scope !19548, !noundef !1394
  %i.bo = icmp eq i64 %i.bc, %i.bn, !dbg !19628
  br i1 %i.bo, label %bb.s, label %bb.t, !dbg !19628

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecbE8grow_oneCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #29
          to label %._crit_edge unwind label %.thread159, !dbg !19629

._crit_edge:                                      ; preds = %bb.s
  %.pre = load ptr, ptr %i.at, align 8, !dbg !19630, !alias.scope !19548 ; 2 uses
  br label %bb.t, !dbg !19629

bb.t:                                             ; preds = %._crit_edge, %bb.r
  %4 = phi ptr [ %.pre, %._crit_edge ], [ %3, %bb.r ]
  %i.bp = phi ptr [ %.pre, %._crit_edge ], [ %i.bb, %bb.r ], !dbg !19630 ; 2 uses
    #dbg_value(ptr %i.bp, !4404, !DIExpression(), !19153)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bc, !dbg !19631
    #dbg_value(ptr %i.bq, !4385, !DIExpression(), !19158)
    #dbg_value(ptr %i.bq, !4419, !DIExpression(), !19160)
    #dbg_value(i1 false, !4422, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19160)
  store i8 0, ptr %i.bq, align 1, !dbg !19632, !noalias !19548
  %i.br = add i64 %i.bc, 1, !dbg !19633           ; 2 uses
  store i64 %i.br, ptr %i.au, align 8, !dbg !19633, !alias.scope !19548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !19619
  br label %bb.u, !dbg !19619

bb.u:                                             ; preds = %bb.x, %bb.t
  %5 = phi ptr [ %6, %bb.x ], [ %4, %bb.t ]
  %i.bs = phi ptr [ %6, %bb.x ], [ %i.bp, %bb.t ]
  %i.bt = phi i64 [ %i.ca, %bb.x ], [ %i.br, %bb.t ]
    #dbg_value(ptr %i.o, !19490, !DIExpression(), !19161)
    #dbg_value(i64 1, !19509, !DIExpression(), !19136)
    #dbg_value(ptr %i.o, !19477, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19163)
  %i.bu = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !19634, !alias.scope !19549, !nonnull !1394, !noundef !1394
    #dbg_value(ptr poison, !19478, !DIExpression(), !19166)
  %i.bv = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !19635, !alias.scope !19549, !nonnull !1394, !noundef !1394 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bu, !dbg !19635
  br i1 %i.bw, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107, !dbg !19601

bb.v:                                             ; preds = %bb.m
    #dbg_value(ptr %i.p, !19373, !DIExpression(), !19378)
  call void @llvm.experimental.noalias.scope.decl(metadata !19550), !dbg !19636
    #dbg_value(ptr %i.p, !4378, !DIExpression(), !19170)
    #dbg_value(ptr %i.p, !4387, !DIExpression(), !19172)
    #dbg_value(i1 true, !4383, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19170)
    #dbg_value(i64 1, !4392, !DIExpression(), !19175)
    #dbg_value(i64 %i.bc, !4384, !DIExpression(), !19176)
    #dbg_value(i64 %i.bc, !4401, !DIExpression(), !19178)
    #dbg_value(ptr %i.p, !4399, !DIExpression(), !19179)
  %i.bx = load i64, ptr %i.p, align 8, !dbg !19637, !range !3688, !alias.scope !19550, !noundef !1394
  %i.by = icmp eq i64 %i.bc, %i.bx, !dbg !19638
  br i1 %i.by, label %bb.w, label %bb.x, !dbg !19638

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecbE8grow_oneCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #29
          to label %._crit_edge164 unwind label %.thread159, !dbg !19639

._crit_edge164:                                   ; preds = %bb.w
  %.pre165 = load ptr, ptr %i.at, align 8, !dbg !19640, !alias.scope !19550
  br label %bb.x, !dbg !19639

bb.x:                                             ; preds = %._crit_edge164, %bb.v
  %6 = phi ptr [ %.pre165, %._crit_edge164 ], [ %3, %bb.v ], !dbg !19640 ; 3 uses
    #dbg_value(ptr %6, !4404, !DIExpression(), !19178)
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 %i.bc, !dbg !19641
    #dbg_value(ptr %i.bz, !4385, !DIExpression(), !19183)
    #dbg_value(ptr %i.bz, !4419, !DIExpression(), !19185)
    #dbg_value(i1 true, !4422, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19185)
  store i8 1, ptr %i.bz, align 1, !dbg !19642, !noalias !19550
  %i.ca = add i64 %i.bc, 1, !dbg !19643           ; 2 uses
  store i64 %i.ca, ptr %i.au, align 8, !dbg !19643, !alias.scope !19550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !19644
  br label %bb.u, !dbg !19644

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit108.thread: ; preds = %bb.l, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit108.thread148
  %.pn97.pn147 = phi { ptr, i32 } [ %i.bf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit108.thread148 ], [ %.pn97, %bb.l ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecbEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #30
          to label %.thread unwind label %bb.k, !dbg !19607

bb.y:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera.exit
  unreachable

.thread:                                          ; preds = %.body, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit108.thread, %bb.z
  %.pn100122 = phi { ptr, i32 } [ %.pn92, %.body ], [ %lpad.thr_comm.split-lp, %bb.z ], [ %.pn97.pn147, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit108.thread ]
  resume { ptr, i32 } %.pn100122, !dbg !19595

bb.z:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
          to label %.thread unwind label %bb.k, !dbg !19645
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([488 x i8]) align 8 captures(none) dereferenceable(488) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19646 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
    #dbg_value(ptr %1, !19758, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19760)
    #dbg_value(i64 %2, !19758, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19760)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !19956
  call void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !19956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !19764
  store i64 0, ptr %i.i, align 8, !dbg !19957
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !19957
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !dbg !19957
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !19957
  store i64 0, ptr %i.l, align 8, !dbg !19957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !19765
  %i.m = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.c unwind label %bb.b, !dbg !19958 ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit77, %bb.b
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.n, %bb.b ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit77 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #30
          to label %bb.x unwind label %bb.w, !dbg !19959

bb.b:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = extractvalue { i64, i64 } %i.m, 0, !dbg !19960
  %i.p = extractvalue { i64, i64 } %i.m, 1, !dbg !19960
    #dbg_value(i64 %i.o, !19774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19780)
    #dbg_value(i64 %i.p, !19774, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19780)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !19961
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !19961
  store i64 %i.o, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !19961
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40, !dbg !19961
  store i64 %i.p, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !19961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !19784
  %i.q = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.e unwind label %bb.d, !dbg !19962 ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit77: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit78, %bb.d
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.r, %bb.d ], [ %.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit78 ]
    #dbg_value(ptr %i.h, !19788, !DIExpression(), !19655)
    #dbg_value(ptr %i.h, !19795, !DIExpression(), !19658)
    #dbg_value(ptr %i.h, !19801, !DIExpression(), !19661)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBT_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit unwind label %bb.w, !dbg !19963

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit77

bb.e:                                             ; preds = %bb.c
  %i.s = extractvalue { i64, i64 } %i.q, 0, !dbg !19964
  %i.t = extractvalue { i64, i64 } %i.q, 1, !dbg !19964
    #dbg_value(i64 %i.s, !19774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19808)
    #dbg_value(i64 %i.t, !19774, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19808)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !19965
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !19965
  store i64 %i.s, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !19965
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !19965
  store i64 %i.t, ptr %.sroa.56.0..sroa_idx, align 8, !dbg !19965
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !19812
  %i.u = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.g unwind label %bb.f, !dbg !19966 ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit78: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit79, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.f ], [ %.pn.pn.pn.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit79 ]
    #dbg_value(ptr %i.g, !19788, !DIExpression(), !19663)
    #dbg_value(ptr %i.g, !19795, !DIExpression(), !19665)
    #dbg_value(ptr %i.g, !19801, !DIExpression(), !19667)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBT_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit77 unwind label %bb.w, !dbg !19967

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit78

bb.g:                                             ; preds = %bb.e
  %i.w = extractvalue { i64, i64 } %i.u, 0, !dbg !19968
  %i.x = extractvalue { i64, i64 } %i.u, 1, !dbg !19968
    #dbg_value(i64 %i.w, !19774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19817)
    #dbg_value(i64 %i.x, !19774, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19817)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !19969
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !19969
  store i64 %i.w, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !19969
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40, !dbg !19969
  store i64 %i.x, ptr %.sroa.59.0..sroa_idx, align 8, !dbg !19969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !19821
  %i.y = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.i unwind label %bb.h, !dbg !19970 ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit79: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit80, %bb.h
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.z, %bb.h ], [ %.pn.pn.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit80 ]
    #dbg_value(ptr %i.f, !19788, !DIExpression(), !19669)
    #dbg_value(ptr %i.f, !19795, !DIExpression(), !19671)
    #dbg_value(ptr %i.f, !19801, !DIExpression(), !19673)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBT_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit78 unwind label %bb.w, !dbg !19971

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit79

bb.i:                                             ; preds = %bb.g
  %i.aa = extractvalue { i64, i64 } %i.y, 0, !dbg !19972
  %i.ab = extractvalue { i64, i64 } %i.y, 1, !dbg !19972
    #dbg_value(i64 %i.aa, !19774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19826)
    #dbg_value(i64 %i.ab, !19774, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19826)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !19973
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !19973
  store i64 %i.aa, ptr %.sroa.411.0..sroa_idx, align 8, !dbg !19973
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !19973
  store i64 %i.ab, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !19973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !19830
  %i.ac = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.k unwind label %bb.j, !dbg !19974 ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit80: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEB2e_.exit, %bb.j
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %.pn.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEB2e_.exit ]
    #dbg_value(ptr %i.e, !19788, !DIExpression(), !19675)
    #dbg_value(ptr %i.e, !19795, !DIExpression(), !19677)
    #dbg_value(ptr %i.e, !19801, !DIExpression(), !19679)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBT_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit79 unwind label %bb.w, !dbg !19975

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit80

bb.k:                                             ; preds = %bb.i
  %i.ae = extractvalue { i64, i64 } %i.ac, 0, !dbg !19976
  %i.af = extractvalue { i64, i64 } %i.ac, 1, !dbg !19976
    #dbg_value(i64 %i.ae, !19774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19835)
    #dbg_value(i64 %i.af, !19774, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19835)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !19977
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !19977
  store i64 %i.ae, ptr %.sroa.414.0..sroa_idx, align 8, !dbg !19977
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !19977
  store i64 %i.af, ptr %.sroa.515.0..sroa_idx, align 8, !dbg !19977
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !19839
  %i.ag = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.m unwind label %bb.l, !dbg !19978 ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEB2e_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB2c_.exit, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB2c_.exit ]
    #dbg_value(ptr %i.d, !19788, !DIExpression(), !19683)
    #dbg_value(ptr %i.d, !19795, !DIExpression(), !19685)
    #dbg_value(ptr %i.d, !19801, !DIExpression(), !19687)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBT_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit80 unwind label %bb.w, !dbg !19979

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEB2e_.exit

end_hunk_1
