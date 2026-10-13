Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.12?download=true
inline.NumInlined: 642
inline.NumDeleted: 235
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr:bb.a
  %.sroa.8215.0.copyload = load i64, ptr %.sroa.8215.0..sroa_idx, align 8, !dbg !14952 ; 2 uses
    #dbg_value(i64 %.sroa.8215.0.copyload, !13233, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !14169)
    #dbg_value(i64 %.sroa.8215.0.copyload, !14170, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !14179)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !14953
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.fo, i64 48, i1 false), !dbg !14954
    #dbg_value(ptr poison, !14180, !DIExpression(), !14187)
    #dbg_value(ptr %i.fo, !14182, !DIExpression(), !14188)
    #dbg_value(i64 8, !14183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14189)
    #dbg_value(i64 8, !13755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14192)
    #dbg_value(i64 8, !13762, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14195)
    #dbg_value(i64 8, !13769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14198)
    #dbg_value(i64 8, !13775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14201)
    #dbg_value(i64 48, !14183, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14189)
    #dbg_value(i64 48, !13755, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14192)
    #dbg_value(i64 48, !13762, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14195)
    #dbg_value(i64 48, !13769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14198)
    #dbg_value(i64 48, !13775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14201)
    #dbg_value(ptr poison, !13756, !DIExpression(), !14202)
    #dbg_value(ptr poison, !13763, !DIExpression(), !14203)
    #dbg_value(ptr %i.fo, !13757, !DIExpression(), !14192)
    #dbg_value(ptr %i.fo, !13764, !DIExpression(), !14195)
    #dbg_value(ptr %i.fo, !13770, !DIExpression(), !14198)
    #dbg_value(ptr %i.fo, !13776, !DIExpression(), !14201)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fo, i64 noundef 48, i64 noundef 8) #28, !dbg !14955
    #dbg_value(i64 %.sroa.0199.sroa.0.0.copyload, !13235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14204)
    #dbg_value(i64 %.sroa.0199.sroa.5.0.copyload, !13235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14204)
    #dbg_value(i64 %.sroa.5200.0.copyload, !13235, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14204)
    #dbg_value(i64 %.sroa.6205.0.copyload, !13235, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14204)
    #dbg_value(i64 %.sroa.7210.0.copyload, !13235, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14204)
    #dbg_value(i64 %.sroa.8215.0.copyload, !13235, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !14204)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ad, i64 24, !dbg !14956
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler14compile_kwargs(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.fq)
          to label %bb.gk unwind label %bb.gs, !dbg !14957

bb.o:                                             ; preds = %bb.a
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14958
  %i.fs = load ptr, ptr %i.fr, align 8, !dbg !14958, !nonnull !1394, !noundef !1394 ; 3 uses
    #dbg_value(ptr %i.fs, !13236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14205)
    #dbg_value(ptr %i.fs, !13624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14206)
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14958 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !14959
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.fs, i64 64, i1 false), !dbg !14960
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 64, !dbg !14960
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !14960
    #dbg_value(i8 %.sroa.2.0.copyload, !13237, !DIExpression(DW_OP_LLVM_fragment, 512, 8), !14208)
    #dbg_value(ptr poison, !14209, !DIExpression(), !14215)
    #dbg_value(ptr %i.fs, !14210, !DIExpression(), !14216)
    #dbg_value(i64 8, !14211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14217)
    #dbg_value(i64 8, !13755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14220)
    #dbg_value(i64 8, !13762, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14223)
    #dbg_value(i64 8, !13769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14226)
    #dbg_value(i64 8, !13775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14229)
    #dbg_value(i64 72, !14211, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14217)
    #dbg_value(i64 72, !13755, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14220)
    #dbg_value(i64 72, !13762, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14223)
    #dbg_value(i64 72, !13769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14226)
    #dbg_value(i64 72, !13775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14229)
    #dbg_value(ptr poison, !13756, !DIExpression(), !14230)
    #dbg_value(ptr poison, !13763, !DIExpression(), !14231)
    #dbg_value(ptr %i.fs, !13757, !DIExpression(), !14220)
    #dbg_value(ptr %i.fs, !13764, !DIExpression(), !14223)
    #dbg_value(ptr %i.fs, !13770, !DIExpression(), !14226)
    #dbg_value(ptr %i.fs, !13776, !DIExpression(), !14229)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fs, i64 noundef 72, i64 noundef 8) #28, !dbg !14961
  call fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.z), !dbg !14962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !14963
  %i.fu = trunc nuw i8 %.sroa.2.0.copyload to i1, !dbg !14964
  br i1 %i.fu, label %bb.gt, label %bb.gu, !dbg !14965

bb.p:                                             ; preds = %bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14966
  %i.fw = load ptr, ptr %i.fv, align 8, !dbg !14966, !nonnull !1394, !noundef !1394 ; 2 uses
    #dbg_value(ptr %i.fw, !13239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14232)
    #dbg_value(ptr %i.fw, !13636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14233)
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14966
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.p, ptr noundef nonnull align 8 dereferenceable(136) %i.fw, i64 136, i1 false), !dbg !14967
    #dbg_value(ptr poison, !14234, !DIExpression(), !14239)
    #dbg_value(ptr %i.fw, !14235, !DIExpression(), !14240)
    #dbg_value(i64 8, !14236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14241)
    #dbg_value(i64 8, !13755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14243)
    #dbg_value(i64 8, !13762, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14245)
    #dbg_value(i64 8, !13769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14247)
    #dbg_value(i64 8, !13775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14249)
    #dbg_value(i64 136, !14236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14241)
    #dbg_value(i64 136, !13755, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14243)
    #dbg_value(i64 136, !13762, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14245)
    #dbg_value(i64 136, !13769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14247)
    #dbg_value(i64 136, !13775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14249)
    #dbg_value(ptr poison, !13756, !DIExpression(), !14250)
    #dbg_value(ptr poison, !13763, !DIExpression(), !14251)
    #dbg_value(ptr %i.fw, !13757, !DIExpression(), !14243)
    #dbg_value(ptr %i.fw, !13764, !DIExpression(), !14245)
    #dbg_value(ptr %i.fw, !13770, !DIExpression(), !14247)
    #dbg_value(ptr %i.fw, !13776, !DIExpression(), !14249)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fw, i64 noundef 136, i64 noundef 8) #28, !dbg !14968
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !14969
  %i.fy = getelementptr inbounds nuw i8, ptr %i.p, i64 128, !dbg !14970
  %i.fz = load i8, ptr %i.fy, align 8, !dbg !14970, !range !4332, !noundef !1394 ; 2 uses
  switch i8 %i.fz, label %default.unreachable1135 [
    i8 0, label %bb.hl
    i8 1, label %bb.gv
    i8 2, label %bb.gw
    i8 3, label %bb.gx
    i8 4, label %bb.gy
    i8 5, label %bb.gz
    i8 6, label %bb.ha
    i8 7, label %bb.hb
    i8 8, label %bb.hc
    i8 9, label %bb.hd
    i8 10, label %bb.he
    i8 11, label %bb.hf
    i8 12, label %bb.hg
    i8 13, label %bb.hh
    i8 14, label %bb.hh
    i8 15, label %bb.hi
    i8 16, label %bb.hj
    i8 17, label %bb.hk
    i8 18, label %bb.hk
  ], !dbg !14971, !prof !14252

bb.q:                                             ; preds = %bb.gt, %bb.gu, %bb.bt, %bb.bs, %bb.ba, %bb.az, %bb.ig, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterjEECs5yXxDE1DkoT_4tera.exit657, %bb.gr, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeEEB1e_.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECs5yXxDE1DkoT_4tera.exit, %bb.dj, %bb.ct, %bb.ch, %bb.aw, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB3d_8Compiler12compile_exprs_0EB3h_.exit.thread, %bb.v, %bb.e, %bb.b
  ret void, !dbg !14972

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_8compilerNtB2s_8Compiler12compile_expr0EBW_.exit: ; preds = %bb.d, %bb.c
    #dbg_value(i1 false, !13179, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14253)
    #dbg_value(ptr %i.dl, !13360, !DIExpression(), !14255)
    #dbg_value(i64 %i.ed, !13185, !DIExpression(), !14256)
  %i.ga = icmp ult i64 %i.ed, 128102389400760776, !dbg !14973
  tail call void @llvm.assume(i1 %i.ga), !dbg !14974
  %.sroa.0552.0.copyload = load i64, ptr %i.dl, align 8, !dbg !13330 ; 2 uses
    #dbg_value(i64 %.sroa.0552.0.copyload, !13336, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14257)
    #dbg_value(ptr %i.eb, !13336, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14257)
    #dbg_value(i64 %i.ed, !13336, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14257)
    #dbg_value(i64 %.sroa.0552.0.copyload, !13344, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14258)
    #dbg_value(ptr %i.eb, !13344, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14258)
    #dbg_value(i64 %i.ed, !13344, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14258)
    #dbg_value(ptr %i.eb, !13346, !DIExpression(), !14259)
    #dbg_value(ptr %i.eb, !13347, !DIExpression(), !14260)
    #dbg_value(ptr %i.eb, !13863, !DIExpression(), !14262)
    #dbg_value(ptr undef, !13360, !DIExpression(), !13367)
    #dbg_value(i64 %i.ed, !13860, !DIExpression(), !14262)
    #dbg_value(ptr %i.ee, !13348, !DIExpression(), !14263)
    #dbg_value(ptr undef, !13357, !DIExpression(), !13359)
    #dbg_value(ptr undef, !13270, !DIExpression(), !13333)
    #dbg_value(i64 %.sroa.0552.0.copyload, !14264, !DIExpression(), !14268)
  %i.gb = icmp sgt i64 %.sroa.0552.0.copyload, -1, !dbg !14975
  tail call void @llvm.assume(i1 %i.gb), !dbg !14975
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !dbg !13330
  store ptr %i.eb, ptr %i.de, align 8, !dbg !13330
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8, !dbg !13330 ; 3 uses
  store ptr %i.eb, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !13330
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !13330
  store i64 %.sroa.0552.0.copyload, ptr %.sroa.514.0..sroa_idx, align 8, !dbg !13330
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 24, !dbg !13330 ; 2 uses
  store ptr %i.ee, ptr %.sroa.615.0..sroa_idx, align 8, !dbg !13330
  %i.gc = icmp eq i64 %i.ed, 0, !dbg !14976
  br i1 %i.gc, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph, !dbg !14977

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_8compilerNtB2s_8Compiler12compile_expr0EBW_.exit
  %.sroa.7662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit, !dbg !14977

bb.r:                                             ; preds = %.lr.ph1141
    #dbg_value(i1 poison, !13179, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14253)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !dbg !14978
    #dbg_value(ptr %i.dl, !13360, !DIExpression(), !14287)
    #dbg_value(i64 %i.ed, !13652, !DIExpression(), !14288)
    #dbg_value(i64 %i.ed, !13647, !DIExpression(), !14289)
    #dbg_value(i64 %i.ed, !13655, !DIExpression(), !14290)
    #dbg_value(i64 %i.ed, !13660, !DIExpression(), !14291)
  %i.gd = icmp ult i64 %i.ed, 128102389400760776, !dbg !14979
  tail call void @llvm.assume(i1 %i.gd), !dbg !14980
    #dbg_value(i64 1, !13661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14291)
    #dbg_value(i64 1, !13661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14291)
    #dbg_value(i64 %i.ed, !4339, !DIExpression(), !12644)
    #dbg_value(i1 false, !4354, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12644)
    #dbg_declare(ptr poison, !4355, !DIExpression(), !12645)
    #dbg_value(i64 1, !4356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12644)
    #dbg_value(i64 1, !4356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12644)
    #dbg_value(i64 1, !4357, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12646)
    #dbg_value(i64 %i.ed, !4357, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12646)
    #dbg_value(i64 1, !3901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12650)
    #dbg_value(i64 1, !3901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12654)
    #dbg_value(i64 %i.ed, !3901, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12650)
    #dbg_value(i64 %i.ed, !3901, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12654)
    #dbg_value(i64 %i.ed, !3906, !DIExpression(), !12655)
    #dbg_value(i64 %i.ed, !3906, !DIExpression(), !12656)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !dbg !14981, !noalias !14292
    #dbg_value(ptr poison, !4359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12659)
    #dbg_value(i64 poison, !4359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12659)
    #dbg_value(ptr poison, !4375, !DIExpression(), !12660)
    #dbg_value(ptr poison, !4371, !DIExpression(), !12661)
    #dbg_value(i64 1, !4376, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12660)
    #dbg_value(i64 1, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12661)
    #dbg_value(i64 %i.ed, !4376, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12660)
    #dbg_value(i64 %i.ed, !4372, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12661)
    #dbg_value(i8 0, !4373, !DIExpression(), !12661)
    #dbg_value(i64 1, !3912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12663)
    #dbg_value(i64 %i.ed, !3912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12663)
    #dbg_value(i1 false, !3905, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12654)
  %i.ge = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ed, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !dbg !14982, !noalias !14292 ; 3 uses
    #dbg_value(ptr %i.ge, !4359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12659)
    #dbg_value(i64 poison, !4359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12659)
  %i.gf = icmp eq ptr %i.ge, null, !dbg !14983
  br i1 %i.gf, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera.exit, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.preheader, !dbg !14984

bb.s:                                             ; preds = %bb.y, %bb.t
  %.pn578 = phi { ptr, i32 } [ %i.gg, %bb.t ], [ %i.gn, %bb.y ]
    #dbg_value(ptr %i.de, !14293, !DIExpression(), !12666)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.de)
          to label %common.resume unwind label %bb.z, !dbg !14985

bb.t:                                             ; preds = %bb.aa
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEBH_.exit599
  %i.gh = phi ptr [ %i.eb, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph ], [ %i.gq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEBH_.exit599 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14299), !dbg !13449
    #dbg_value(ptr %i.gh, !14283, !DIExpression(), !12669)
    #dbg_value(ptr %i.gh, !14284, !DIExpression(), !12670)
    #dbg_value(ptr %i.gh, !14300, !DIExpression(), !12673)
    #dbg_value(ptr %i.gh, !14303, !DIExpression(), !12676)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 72, !dbg !14986
  store ptr %i.gi, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !14987, !alias.scope !14299, !noalias !14308
  %.sroa.0660.0.copyload661 = load i64, ptr %i.gh, align 8, !dbg !14988, !noalias !14299 ; 3 uses
  %.sroa.7662.0..sroa_idx663 = getelementptr inbounds nuw i8, ptr %i.gh, i64 8, !dbg !14988 ; 2 uses
  %.not577 = icmp eq i64 %.sroa.0660.0.copyload661, 2, !dbg !13449
  br i1 %.not577, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %bb.u, !dbg !13449

bb.u:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !dbg !14989
  store i64 %.sroa.0660.0.copyload661, ptr %i.dd, align 8, !dbg !14989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7662.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7662.0..sroa_idx663, i64 64, i1 false), !dbg !14989
  %i.gj = trunc nuw i64 %.sroa.0660.0.copyload661 to i1, !dbg !14990
  br i1 %i.gj, label %bb.aa, label %bb.x, !dbg !14990

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEBH_.exit599, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_8compilerNtB2s_8Compiler12compile_expr0EBW_.exit
    #dbg_value(ptr %i.de, !14293, !DIExpression(), !12681)
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.de), !dbg !14991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !dbg !14992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !dbg !14993
  %i.gk = getelementptr inbounds nuw i8, ptr %i.db, i64 8, !dbg !14993
  store i64 %i.ed, ptr %i.gk, align 8, !dbg !14993
  store i8 14, ptr %i.db, align 8, !dbg !14993
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !dbg !14994
  %i.gl = getelementptr inbounds nuw i8, ptr %i.da, i64 8, !dbg !14994
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gl, ptr noundef nonnull align 8 dereferenceable(48) %i.dz, i64 48, i1 false), !dbg !14994
  store i64 1, ptr %i.da, align 8, !dbg !14994
  %i.gm = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.db, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.da), !dbg !14995 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !dbg !14996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !dbg !14996
  br label %bb.v, !dbg !14997

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit602, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !dbg !14998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !14999
  br label %bb.q, !dbg !14999

bb.w:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !dbg !15000
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEBH_.exit599, !dbg !15001

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !dbg !13451
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dc, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7662.0..sroa_idx663, i64 64, i1 false), !dbg !13451
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.dc)
          to label %bb.w unwind label %bb.y, !dbg !15002

bb.y:                                             ; preds = %bb.x
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.s, !dbg !15001

bb.z:                                             ; preds = %bb.fp, %.thread962, %bb.cw, %bb.ck, %bb.ab, %bb.s, %.thread1085, %bb.ii, %bb.ih, %bb.gs, %bb.gj, %bb.gi, %.thread1003, %bb.fe, %bb.fd, %bb.fb, %bb.ez, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit, %bb.ee, %.body.thread924.thread, %.body.thread, %bb.cv, %bb.cj, %bb.by, %bb.bx, %bb.bv, %bb.bb, %bb.ax, %bb.as, %bb.am, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit601.thread
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !15003
  unreachable, !dbg !15003

bb.aa:                                            ; preds = %bb.u
    #dbg_value(ptr %i.dd, !14312, !DIExpression(), !12684)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %.sroa.7662.0..sroa_idx)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEBH_.exit599 unwind label %bb.t, !dbg !15004

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEBH_.exit599: ; preds = %bb.aa, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !dbg !15001
    #dbg_value(ptr %i.de, !14282, !DIExpression(), !12685)
    #dbg_value(i64 1, !14301, !DIExpression(), !12673)
    #dbg_value(ptr %i.de, !14269, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12686)
  %i.gp = load ptr, ptr %.sroa.615.0..sroa_idx, align 8, !dbg !15005, !alias.scope !14316, !noalias !14308, !nonnull !1394, !noundef !1394
    #dbg_value(ptr poison, !14270, !DIExpression(), !12688)
  %i.gq = load ptr, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !14976, !alias.scope !14316, !noalias !14308, !nonnull !1394, !noundef !1394 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.gp, !dbg !14976
  br i1 %i.gr, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit, !dbg !14977

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera.exit: ; preds = %bb.r
    #dbg_value(i64 1, !13663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14317)
    #dbg_value(i64 %i.ed, !13663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14317)
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.ed) #32
          to label %bb.al unwind label %bb.am, !dbg !15006

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.preheader: ; preds = %bb.r
    #dbg_value(ptr %i.ge, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12689)
    #dbg_value(i64 poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12689)
    #dbg_value(ptr poison, !13270, !DIExpression(), !14318)
    #dbg_value(i64 %i.ed, !14264, !DIExpression(), !14320)
    #dbg_value(i1 true, !14321, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14324)
  store i64 %i.ed, ptr %i.dk, align 8, !dbg !15007
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dk, i64 8, !dbg !15007 ; 3 uses
  store ptr %i.ge, ptr %i.gs, align 8, !dbg !15007
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dk, i64 16, !dbg !15007 ; 3 uses
  store i64 0, ptr %i.gt, align 8, !dbg !15007
  %.sroa.0546.0.copyload = load i64, ptr %i.dl, align 8, !dbg !13368 ; 2 uses
    #dbg_value(i64 %.sroa.0546.0.copyload, !13336, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14325)
    #dbg_value(ptr %i.eb, !13336, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14325)
    #dbg_value(i64 %i.ed, !13336, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14325)
    #dbg_value(i64 %.sroa.0546.0.copyload, !13337, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14326)
    #dbg_value(ptr %i.eb, !13337, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14326)
    #dbg_value(i64 %i.ed, !13337, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14326)
    #dbg_value(ptr %i.eb, !13339, !DIExpression(), !14327)
    #dbg_value(ptr %i.eb, !13341, !DIExpression(), !14328)
    #dbg_value(ptr %i.eb, !13863, !DIExpression(), !14330)
    #dbg_value(ptr undef, !13360, !DIExpression(), !13374)
    #dbg_value(i64 %i.ed, !13860, !DIExpression(), !14330)
    #dbg_value(ptr %i.ee, !13342, !DIExpression(), !14331)
    #dbg_value(ptr undef, !13357, !DIExpression(), !13372)
    #dbg_value(ptr undef, !13270, !DIExpression(), !13371)
    #dbg_value(i64 %.sroa.0546.0.copyload, !14264, !DIExpression(), !14334)
  %i.gu = icmp sgt i64 %.sroa.0546.0.copyload, -1, !dbg !15008
  tail call void @llvm.assume(i1 %i.gu), !dbg !15008
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !dbg !13368
  store ptr %i.eb, ptr %i.dj, align 8, !dbg !13368
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8, !dbg !13368 ; 3 uses
  store ptr %i.eb, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !13368
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 16, !dbg !13368
  store i64 %.sroa.0546.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !13368
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 24, !dbg !13368 ; 2 uses
  store ptr %i.ee, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !13368
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600, !dbg !13446

bb.ab:                                            ; preds = %bb.aj, %bb.af, %bb.ad, %bb.ac
  %i.gv = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.dj, !14293, !DIExpression(), !12692)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dj)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit601.thread unwind label %bb.z, !dbg !15009

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.preheader, %bb.ah
  %i.gw = phi ptr [ %i.hj, %bb.ah ], [ %i.ge, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.preheader ]
  %i.gx = phi i64 [ %i.hk, %bb.ah ], [ 0, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.preheader ] ; 6 uses
  %i.gy = phi ptr [ %i.hm, %bb.ah ], [ %i.eb, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14335), !dbg !13446
    #dbg_value(ptr %i.gy, !14283, !DIExpression(), !12696)
    #dbg_value(ptr %i.gy, !14284, !DIExpression(), !12697)
    #dbg_value(ptr %i.gy, !14300, !DIExpression(), !12699)
    #dbg_value(ptr %i.gy, !14303, !DIExpression(), !12701)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 72, !dbg !15010
  store ptr %i.gz, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !15011, !alias.scope !14335, !noalias !14336
  %.sroa.0658.0.copyload = load i64, ptr %i.gy, align 8, !dbg !15012, !noalias !14335
  %.sroa.7.0..sroa_idx659 = getelementptr inbounds nuw i8, ptr %i.gy, i64 8, !dbg !15012 ; 2 uses
  switch i64 %.sroa.0658.0.copyload, label %bb.ac [
    i64 2, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.thread
    i64 0, label %bb.ad
  ], !dbg !13446

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.thread: ; preds = %bb.ah, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600
    #dbg_value(ptr %i.dj, !14293, !DIExpression(), !12705)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dj)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit602 unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit601.thread840, !dbg !15013

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit601.thread840: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.thread
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit601.thread, !dbg !15014

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit602: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !dbg !15015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !dbg !15016
  %i.hb = getelementptr inbounds nuw i8, ptr %i.dg, i64 8, !dbg !15016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !dbg !15017
  store i8 16, ptr %i.dg, align 8, !dbg !15016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !dbg !15018
  %i.hc = getelementptr inbounds nuw i8, ptr %i.df, i64 8, !dbg !15018
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hc, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !dbg !15018
  store i64 1, ptr %i.df, align 8, !dbg !15018
  %i.hd = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.dg, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.df), !dbg !15019 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !dbg !15020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !dbg !15020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !dbg !15014
  br label %bb.v, !dbg !14997

bb.ac:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !dbg !15021
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dh, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx659, i64 64, i1 false), !dbg !15021
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.dh)
          to label %bb.ai unwind label %bb.ab, !dbg !15022

bb.ad:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !dbg !15023
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.di, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx659, i64 64, i1 false), !dbg !15023
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.di)
          to label %bb.ae unwind label %bb.ab, !dbg !15024

bb.ae:                                            ; preds = %bb.ad
    #dbg_value(ptr %i.dk, !13678, !DIExpression(), !13681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14337), !dbg !15025
    #dbg_value(ptr %i.dk, !4378, !DIExpression(), !12709)
    #dbg_value(ptr %i.dk, !4387, !DIExpression(), !12711)
    #dbg_value(i1 false, !4383, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12709)
    #dbg_value(i64 1, !4392, !DIExpression(), !12714)
    #dbg_value(i64 %i.gx, !4384, !DIExpression(), !12715)
    #dbg_value(i64 %i.gx, !4401, !DIExpression(), !12717)
    #dbg_value(ptr %i.dk, !4399, !DIExpression(), !12718)
  %i.he = load i64, ptr %i.dk, align 8, !dbg !15026, !range !3688, !alias.scope !14337, !noundef !1394
  %i.hf = icmp eq i64 %i.gx, %i.he, !dbg !15027
  br i1 %i.hf, label %bb.af, label %bb.ag, !dbg !15027

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecbE8grow_oneCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dk) #29
          to label %._crit_edge unwind label %bb.ab, !dbg !15028

._crit_edge:                                      ; preds = %bb.af
  %.pre1112 = load ptr, ptr %i.gs, align 8, !dbg !15029, !alias.scope !14337
  br label %bb.ag, !dbg !15028

bb.ag:                                            ; preds = %._crit_edge, %bb.ae
  %i.hg = phi ptr [ %.pre1112, %._crit_edge ], [ %i.gw, %bb.ae ], !dbg !15029 ; 2 uses
    #dbg_value(ptr %i.hg, !4404, !DIExpression(), !12717)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.gx, !dbg !15030
    #dbg_value(ptr %i.hh, !4385, !DIExpression(), !12722)
    #dbg_value(ptr %i.hh, !4419, !DIExpression(), !12724)
    #dbg_value(i1 false, !4422, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12724)
  store i8 0, ptr %i.hh, align 1, !dbg !15031, !noalias !14337
  %i.hi = add i64 %i.gx, 1, !dbg !15032           ; 2 uses
  store i64 %i.hi, ptr %i.gt, align 8, !dbg !15032, !alias.scope !14337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !dbg !15033
  br label %bb.ah, !dbg !15033

bb.ah:                                            ; preds = %bb.ak, %bb.ag
  %i.hj = phi ptr [ %2, %bb.ak ], [ %i.hg, %bb.ag ]
  %i.hk = phi i64 [ %i.hr, %bb.ak ], [ %i.hi, %bb.ag ]
    #dbg_value(ptr %i.dj, !14282, !DIExpression(), !12725)
    #dbg_value(i64 1, !14301, !DIExpression(), !12699)
    #dbg_value(ptr %i.dj, !14269, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12727)
  %i.hl = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !15034, !alias.scope !14338, !noalias !14336, !nonnull !1394, !noundef !1394
    #dbg_value(ptr poison, !14270, !DIExpression(), !12729)
  %i.hm = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !15035, !alias.scope !14338, !noalias !14336, !nonnull !1394, !noundef !1394 ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.hl, !dbg !15035
  br i1 %i.hn, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit600, !dbg !15036

bb.ai:                                            ; preds = %bb.ac
    #dbg_value(ptr %i.dk, !13678, !DIExpression(), !13683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14339), !dbg !15037
    #dbg_value(ptr %i.dk, !4378, !DIExpression(), !12733)
    #dbg_value(ptr %i.dk, !4387, !DIExpression(), !12735)
    #dbg_value(i1 true, !4383, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12733)
    #dbg_value(i64 1, !4392, !DIExpression(), !12738)
    #dbg_value(i64 %i.gx, !4384, !DIExpression(), !12739)
    #dbg_value(i64 %i.gx, !4401, !DIExpression(), !12741)
    #dbg_value(ptr %i.dk, !4399, !DIExpression(), !12742)
  %i.ho = load i64, ptr %i.dk, align 8, !dbg !15038, !range !3688, !alias.scope !14339, !noundef !1394
  %i.hp = icmp eq i64 %i.gx, %i.ho, !dbg !15039
  br i1 %i.hp, label %bb.aj, label %bb.ak, !dbg !15039

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecbE8grow_oneCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dk) #29
          to label %bb.ak unwind label %bb.ab, !dbg !15040

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %2 = load ptr, ptr %i.gs, align 8, !dbg !15041, !alias.scope !14339, !nonnull !1394, !noundef !1394 ; 2 uses
    #dbg_value(ptr %2, !4404, !DIExpression(), !12741)
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 %i.gx, !dbg !15042
    #dbg_value(ptr %i.hq, !4385, !DIExpression(), !12746)
    #dbg_value(ptr %i.hq, !4419, !DIExpression(), !12748)
    #dbg_value(i1 true, !4422, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12748)
  store i8 1, ptr %i.hq, align 1, !dbg !15043, !noalias !14339
  %i.hr = add i64 %i.gx, 1, !dbg !15044           ; 2 uses
  store i64 %i.hr, ptr %i.gt, align 8, !dbg !15044, !alias.scope !14339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !dbg !15045
  br label %bb.ah, !dbg !15045

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit601.thread: ; preds = %bb.ab, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit601.thread840
  %.pn581839 = phi { ptr, i32 } [ %i.ha, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit601.thread840 ], [ %i.gv, %bb.ab ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecbEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dk) #30
          to label %common.resume unwind label %bb.z, !dbg !15014

bb.al:                                            ; preds = %bb.hp, %bb.hk, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera.exit
  unreachable

common.resume:                                    ; preds = %bb.gc, %bb.gd, %bb.am, %bb.as, %bb.ax, %bb.bb, %bb.bw, %bb.by, %bb.ci, %bb.cu, %.body.thread924.thread, %bb.fc, %bb.fe, %bb.gh, %bb.gj, %bb.gs, %.thread1085, %bb.ck, %bb.cw, %.thread1033, %.thread1057, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit601.thread, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.sl, %bb.gc ], [ %lpad.thr_comm.split-lp, %bb.am ], [ %i.sl, %bb.gd ], [ %lpad.phi, %bb.as ], [ %.pn578, %bb.s ], [ %lpad.thr_comm.split-lp853, %bb.ax ], [ %.pn10621088, %.thread1085 ], [ %lpad.thr_comm.split-lp860, %bb.bb ], [ %.pn581839, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1v_.exit601.thread ], [ %i.jz, %bb.by ], [ %i.jz, %bb.bw ], [ %lpad.thr_comm.split-lp1017, %.thread1033 ], [ %lpad.thr_comm873, %bb.ci ], [ %lpad.thr_comm896, %bb.cw ], [ %lpad.thr_comm896, %bb.cu ], [ %eh.lpad-body922936, %.body.thread924.thread ], [ %lpad.thr_comm873, %bb.ck ], [ %.pn569.pn959, %bb.fe ], [ %.pn569.pn959, %bb.fc ], [ %.pn565101210371039, %bb.gj ], [ %.pn5651013, %bb.gh ], [ %lpad.thr_comm1042, %bb.gs ], [ %lpad.thr_comm1077, %.thread1057 ]
  resume { ptr, i32 } %common.resume.op, !dbg !13442

bb.am:                                            ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dl) #30
          to label %common.resume unwind label %bb.z, !dbg !14998

bb.an:                                            ; preds = %bb.f
  br i1 %i.es, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB3d_8Compiler12compile_exprs_0EB3h_.exit.thread, label %bb.ao, !dbg !13943

bb.ao:                                            ; preds = %bb.an
    #dbg_value(ptr %0, !14340, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !14348)
    #dbg_value(ptr %0, !14349, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !14354)
    #dbg_value(ptr %0, !14355, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !14359)
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !15046
  %i.ht = load ptr, ptr %i.hs, align 8, !dbg !15046, !nonnull !1394, !noundef !1394 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !15047
  %i.hv = load i64, ptr %i.hu, align 8, !dbg !15047, !noundef !1394 ; 2 uses
    #dbg_value(i64 %i.hv, !14366, !DIExpression(), !14380)
    #dbg_value(i64 %i.hv, !14383, !DIExpression(), !14388)
    #dbg_value(ptr %i.ht, !14381, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14389)
    #dbg_value(ptr %i.ht, !14370, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14390)
    #dbg_value(i64 %i.hv, !14381, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14389)
    #dbg_value(i64 %i.hv, !14370, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14390)
    #dbg_value(ptr %i.ht, !14371, !DIExpression(), !14391)
    #dbg_value(ptr %i.ht, !14384, !DIExpression(), !14388)
  %.idx1142 = mul nuw nsw i64 %i.hv, 48, !dbg !15048
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.idx1142, !dbg !15048
    #dbg_value(ptr %i.cz, !13405, !DIExpression(), !12472)
    #dbg_value(ptr undef, !13404, !DIExpression(), !12472)
    #dbg_value(ptr undef, !13378, !DIExpression(), !12471)
    #dbg_value(i64 1, !14392, !DIExpression(), !12765)
    #dbg_value(ptr %i.ht, !13395, !DIExpression(), !12766)
    #dbg_value(ptr %i.ht, !14396, !DIExpression(), !12765)
    #dbg_value(ptr %i.hw, !13396, !DIExpression(), !12767)
    #dbg_value(ptr poison, !14399, !DIExpression(), !12770)
    #dbg_value(ptr poison, !14402, !DIExpression(), !12771)
  %.not.not.not.i.not1136 = icmp eq i64 %i.hv, 0, !dbg !15049
  br i1 %.not.not.not.i.not1136, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB3d_8Compiler12compile_exprs_0EB3h_.exit, label %.lr.ph1138, !dbg !15050

bb.ap:                                            ; preds = %.noexc606
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hy, i64 48, !dbg !15051 ; 2 uses
    #dbg_value(ptr %i.hx, !13395, !DIExpression(), !12766)
    #dbg_value(ptr %i.hx, !14396, !DIExpression(), !12765)
    #dbg_value(ptr %i.hw, !13396, !DIExpression(), !12767)
    #dbg_value(ptr poison, !14399, !DIExpression(), !12770)
    #dbg_value(ptr poison, !14402, !DIExpression(), !12771)
  %.not.not.not.i.not = icmp eq ptr %i.hx, %i.hw, !dbg !15049
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB3d_8Compiler12compile_exprs_0EB3h_.exit, label %.lr.ph1138, !dbg !15050

.lr.ph1138:                                       ; preds = %bb.ao, %bb.ap
  %i.hy = phi ptr [ %i.hx, %bb.ap ], [ %i.ht, %bb.ao ] ; 2 uses
    #dbg_value(ptr %i.hy, !13395, !DIExpression(), !12766)
    #dbg_value(ptr %i.hy, !13406, !DIExpression(), !12772)
    #dbg_value(ptr poison, !14405, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12775)
    #dbg_value(ptr %i.hy, !14409, !DIExpression(), !12775)
    #dbg_value(ptr %i.hy, !14411, !DIExpression(), !12778)
    #dbg_value(ptr %i.cz, !14418, !DIExpression(), !12781)
  %i.hz = load ptr, ptr %i.eo, align 8, !dbg !15052, !noalias !14420, !nonnull !1394, !noundef !1394
  %i.ia = load i64, ptr %i.eq, align 8, !dbg !15053, !noalias !14420, !noundef !1394
    #dbg_value(ptr %i.hz, !14416, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12778)
    #dbg_value(ptr %i.hz, !14421, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12798)
    #dbg_value(i64 %i.ia, !14416, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12778)
    #dbg_value(i64 %i.ia, !14421, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12798)
    #dbg_value(ptr %i.hy, !14426, !DIExpression(), !12799)
  %i.ib = invoke noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keyeECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hz, i64 noundef %i.ia)
          to label %.noexc606 unwind label %.loopexit, !dbg !15054

.noexc606:                                        ; preds = %.lr.ph1138
  br i1 %i.ib, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB3d_8Compiler12compile_exprs_0EB3h_.exit.thread, label %bb.ap, !dbg !15055

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB3d_8Compiler12compile_exprs_0EB3h_.exit: ; preds = %bb.ap, %bb.ao
    #dbg_value(i1 false, !13192, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14428)
    #dbg_value(ptr %0, !13454, !DIExpression(DW_OP_plus_uconst, 432, DW_OP_stack_value), !14430)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !dbg !15056
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz)
          to label %bb.aq unwind label %.loopexit.split-lp, !dbg !15057

bb.aq:                                            ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB3d_8Compiler12compile_exprs_0EB3h_.exit
    #dbg_value(ptr %0, !13459, !DIExpression(DW_OP_plus_uconst, 432, DW_OP_stack_value), !14431)
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 432, !dbg !15058
  %i.id = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ic, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cy)
          to label %bb.ar unwind label %.loopexit.split-lp, !dbg !15059 ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !dbg !15060
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB3d_8Compiler12compile_exprs_0EB3h_.exit.thread, !dbg !15061

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB3d_8Compiler12compile_exprs_0EB3h_.exit.thread: ; preds = %.noexc606, %bb.ar, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !dbg !15062
  %i.ie = getelementptr inbounds nuw i8, ptr %i.cx, i64 8, !dbg !15062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ie, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i64 24, i1 false), !dbg !15063
  store i8 1, ptr %i.cx, align 8, !dbg !15062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !dbg !15064
  %i.if = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !15064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.if, ptr noundef nonnull align 8 dereferenceable(48) %i.en, i64 48, i1 false), !dbg !15064
  store i64 1, ptr %i.cw, align 8, !dbg !15064
  %i.ig = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.cw), !dbg !15065 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !dbg !15066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !dbg !15066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !dbg !15067
  br label %bb.q, !dbg !15068

.loopexit:                                        ; preds = %.lr.ph1138
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp:                               ; preds = %bb.f, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB3d_8Compiler12compile_exprs_0EB3h_.exit, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cz) #30
          to label %common.resume unwind label %bb.z, !dbg !15067

bb.at:                                            ; preds = %bb.g
  %i.ih = getelementptr inbounds nuw i8, ptr %i.cv, i64 88, !dbg !15069
  %i.ii = load i8, ptr %i.ih, align 8, !dbg !15069, !range !2544, !noundef !1394
  %i.ij = trunc nuw i8 %i.ii to i1, !dbg !15069
  %i.ik = getelementptr inbounds nuw i8, ptr %i.cv, i64 64, !dbg !15070 ; 2 uses
  br i1 %i.ij, label %bb.av, label %bb.au, !dbg !15069

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !dbg !15071
  %i.il = getelementptr inbounds nuw i8, ptr %i.cs, i64 8, !dbg !15071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.il, ptr noundef nonnull align 8 dereferenceable(24) %i.ik, i64 24, i1 false), !dbg !15072
  store i8 2, ptr %i.cs, align 8, !dbg !15071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !dbg !15073
  %i.im = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !15073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.im, ptr noundef nonnull align 8 dereferenceable(48) %i.ev, i64 48, i1 false), !dbg !15073
  store i64 1, ptr %i.cr, align 8, !dbg !15073
  %i.in = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.cr), !dbg !15074 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !dbg !15075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !dbg !15075
  br label %bb.aw, !dbg !15076

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !dbg !15077
  %i.io = getelementptr inbounds nuw i8, ptr %i.cu, i64 8, !dbg !15077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.io, ptr noundef nonnull align 8 dereferenceable(24) %i.ik, i64 24, i1 false), !dbg !15078
  store i8 3, ptr %i.cu, align 8, !dbg !15077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !dbg !15079
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !15079
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ip, ptr noundef nonnull align 8 dereferenceable(48) %i.ev, i64 48, i1 false), !dbg !15079
  store i64 1, ptr %i.ct, align 8, !dbg !15079
  %i.iq = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.ct), !dbg !15080 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !dbg !15081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !dbg !15081
  br label %bb.aw, !dbg !15076

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !15082
  br label %bb.q, !dbg !15083

bb.ax:                                            ; preds = %bb.g
  %lpad.thr_comm.split-lp853 = landingpad { ptr, i32 }
          cleanup
  %i.ir = getelementptr inbounds nuw i8, ptr %i.cv, i64 64, !dbg !15082
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ir) #30
          to label %common.resume unwind label %bb.z, !dbg !15082

bb.ay:                                            ; preds = %bb.h
  %i.is = getelementptr inbounds nuw i8, ptr %i.cq, i64 64, !dbg !15084
  call fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.is), !dbg !15085
  %i.it = getelementptr inbounds nuw i8, ptr %i.cq, i64 128, !dbg !15086
  %i.iu = load i8, ptr %i.it, align 8, !dbg !15086, !range !2544, !noundef !1394
  %i.iv = trunc nuw i8 %i.iu to i1, !dbg !15086
  br i1 %i.iv, label %bb.ba, label %bb.az, !dbg !15086

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !dbg !15087
  store i8 4, ptr %i.cn, align 8, !dbg !15087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !dbg !15088
  %i.iw = getelementptr inbounds nuw i8, ptr %i.cm, i64 8, !dbg !15088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iw, ptr noundef nonnull align 8 dereferenceable(48) %i.ey, i64 48, i1 false), !dbg !15088
  store i64 1, ptr %i.cm, align 8, !dbg !15088
  %i.ix = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.cn, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.cm), !dbg !15089 ; 0 uses
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler14compile_kwargs:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !18971
  br label %bb.b, !dbg !18965

bb.l:                                             ; preds = %bb.c, %bb.m
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !18984
  unreachable, !dbg !18984

bb.m:                                             ; preds = %.thread64, %.thread
  %.pn63 = phi { ptr, i32 } [ %i.s, %.thread ], [ %i.p, %.thread64 ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.k) #30
          to label %bb.c unwind label %bb.l, !dbg !18971

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit: ; preds = %bb.c
  resume { ptr, i32 } %.pn.pn, !dbg !18984
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler19compile_map_entries(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18997 {
bb.a:
    #dbg_value(ptr poison, !19247, !DIExpression(), !19255)
    #dbg_value(ptr poison, !19279, !DIExpression(), !19281)
    #dbg_value(ptr poison, !19282, !DIExpression(), !19289)
    #dbg_value(ptr poison, !19247, !DIExpression(), !19293)
    #dbg_value(ptr poison, !19279, !DIExpression(), !19294)
    #dbg_value(ptr poison, !19282, !DIExpression(), !19296)
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [96 x i8], align 16               ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !19297, !DIExpression(), !19330)
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
    #dbg_value(ptr poison, !19332, !DIExpression(), !19061)
    #dbg_value(ptr poison, !19356, !DIExpression(), !19062)
    #dbg_value(ptr %0, !19221, !DIExpression(), !19362)
    #dbg_declare(ptr %1, !19222, !DIExpression(), !19363)
    #dbg_declare(ptr %2, !19223, !DIExpression(), !19364)
    #dbg_declare(ptr %i.p, !19225, !DIExpression(), !19365)
    #dbg_declare(ptr %i.o, !19226, !DIExpression(), !19366)
    #dbg_declare(ptr %i.n, !19228, !DIExpression(), !19367)
    #dbg_declare(ptr %i.j, !19229, !DIExpression(), !19368)
    #dbg_declare(ptr %i.i, !19230, !DIExpression(), !19369)
    #dbg_declare(ptr %i.g, !19232, !DIExpression(), !19370)
    #dbg_declare(ptr %i.b, !19233, !DIExpression(), !19371)
    #dbg_declare(ptr %i.f, !19234, !DIExpression(), !19372)
    #dbg_declare(ptr poison, !19373, !DIExpression(), !19378)
    #dbg_declare(ptr poison, !19381, !DIExpression(), !19385)
    #dbg_declare(ptr poison, !19386, !DIExpression(), !19393)
    #dbg_value(i64 1, !19248, !DIExpression(), !19396)
    #dbg_declare(ptr poison, !19260, !DIExpression(), !19402)
    #dbg_value(i64 96, !19248, !DIExpression(), !19403)
    #dbg_value(i8 0, !19404, !DIExpression(), !19408)
    #dbg_value(i8 1, !19404, !DIExpression(), !19410)
    #dbg_declare(ptr poison, !19267, !DIExpression(), !19411)
    #dbg_value(i64 96, !19248, !DIExpression(), !19412)
    #dbg_value(ptr %1, !19413, !DIExpression(), !19422)
    #dbg_value(ptr %1, !19423, !DIExpression(), !19427)
    #dbg_value(ptr %1, !19428, !DIExpression(), !19434)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !19585
  %i.r = load ptr, ptr %i.q, align 8, !dbg !19585, !nonnull !1394, !noundef !1394 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !19586
  %i.t = load i64, ptr %i.s, align 8, !dbg !19586, !noundef !1394 ; 9 uses
    #dbg_value(i64 %i.t, !19448, !DIExpression(), !19461)
    #dbg_value(i64 %i.t, !19464, !DIExpression(), !19470)
    #dbg_value(ptr %i.r, !19462, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19471)
    #dbg_value(ptr %i.r, !19452, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19472)
    #dbg_value(i64 %i.t, !19462, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19471)
    #dbg_value(i64 %i.t, !19452, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19472)
    #dbg_value(ptr %i.r, !19453, !DIExpression(), !19473)
    #dbg_value(ptr %i.r, !19467, !DIExpression(), !19470)
  %.idx163 = mul nuw nsw i64 %i.t, 96, !dbg !19587
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx163, !dbg !19587 ; 3 uses
    #dbg_value(ptr undef, !19356, !DIExpression(), !19062)
    #dbg_value(ptr undef, !19332, !DIExpression(), !19061)
    #dbg_declare(ptr poison, !19357, !DIExpression(), !19085)
    #dbg_value(i64 1, !19474, !DIExpression(), !19088)
    #dbg_value(ptr %i.r, !19349, !DIExpression(), !19089)
    #dbg_value(ptr %i.r, !19478, !DIExpression(), !19088)
    #dbg_value(ptr %i.u, !19350, !DIExpression(), !19090)
    #dbg_value(ptr poison, !19481, !DIExpression(), !19093)
    #dbg_value(ptr poison, !19484, !DIExpression(), !19094)
  %.not.not.not.i.not170 = icmp eq i64 %i.t, 0, !dbg !19588
  br i1 %.not.not.not.i.not170, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_8compilerNtB2p_8Compiler19compile_map_entries0EBW_.exit, label %.lr.ph, !dbg !19589

bb.b:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.w, i64 96, !dbg !19590 ; 2 uses
    #dbg_value(ptr %i.v, !19349, !DIExpression(), !19089)
    #dbg_value(ptr %i.v, !19478, !DIExpression(), !19088)
    #dbg_value(ptr %i.u, !19350, !DIExpression(), !19090)
    #dbg_value(ptr poison, !19481, !DIExpression(), !19093)
    #dbg_value(ptr poison, !19484, !DIExpression(), !19094)
  %.not.not.not.i.not = icmp eq ptr %i.v, %i.u, !dbg !19588
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_8compilerNtB2p_8Compiler19compile_map_entries0EBW_.exit, label %.lr.ph, !dbg !19589

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.w = phi ptr [ %i.v, %bb.b ], [ %i.r, %bb.a ] ; 2 uses
    #dbg_value(ptr %i.w, !19349, !DIExpression(), !19089)
    #dbg_value(ptr %i.w, !19358, !DIExpression(), !19095)
  %.val.i = load i64, ptr %i.w, align 16, !dbg !19591, !range !2737, !noalias !19486, !noundef !1394
    #dbg_value(ptr poison, !19488, !DIExpression(), !19100)
    #dbg_value(ptr poison, !19491, !DIExpression(), !19100)
  %i.x = icmp eq i64 %.val.i, -1, !dbg !19592
  br i1 %i.x, label %bb.c, label %bb.b, !dbg !19591

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_8compilerNtB2p_8Compiler19compile_map_entries0EBW_.exit: ; preds = %bb.b, %bb.a
    #dbg_value(i1 false, !19224, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19493)
    #dbg_value(ptr %1, !19282, !DIExpression(), !19495)
    #dbg_value(i64 %i.t, !19231, !DIExpression(), !19496)
  %i.y = icmp ult i64 %i.t, 96076792050570582, !dbg !19593
  tail call void @llvm.assume(i1 %i.y), !dbg !19594
  %.sroa.087.0.copyload = load i64, ptr %1, align 8, !dbg !19252 ; 2 uses
    #dbg_value(i64 %.sroa.087.0.copyload, !19258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19497)
    #dbg_value(ptr %i.r, !19258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19497)
    #dbg_value(i64 %i.t, !19258, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19497)
    #dbg_value(i64 %.sroa.087.0.copyload, !19266, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19498)
    #dbg_value(ptr %i.r, !19266, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19498)
    #dbg_value(i64 %i.t, !19266, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19498)
    #dbg_value(ptr %i.r, !19268, !DIExpression(), !19499)
    #dbg_value(ptr %i.r, !19269, !DIExpression(), !19500)
    #dbg_value(ptr %i.r, !19467, !DIExpression(), !19502)
    #dbg_value(ptr undef, !19282, !DIExpression(), !19289)
    #dbg_value(i64 %i.t, !19464, !DIExpression(), !19502)
    #dbg_value(ptr %i.u, !19270, !DIExpression(), !19503)
    #dbg_value(ptr undef, !19279, !DIExpression(), !19281)
    #dbg_value(ptr undef, !19247, !DIExpression(), !19255)
    #dbg_value(i64 %.sroa.087.0.copyload, !19504, !DIExpression(), !19508)
  %i.z = icmp sgt i64 %.sroa.087.0.copyload, -1, !dbg !19595
  tail call void @llvm.assume(i1 %i.z), !dbg !19595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !19252
  store ptr %i.r, ptr %i.g, align 8, !dbg !19252
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !19252 ; 3 uses
  store ptr %i.r, ptr %.sroa.415.0..sroa_idx, align 8, !dbg !19252
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !19252
  store i64 %.sroa.087.0.copyload, ptr %.sroa.516.0..sroa_idx, align 8, !dbg !19252
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !19252 ; 2 uses
  store ptr %i.u, ptr %.sroa.617.0..sroa_idx, align 8, !dbg !19252
  %i.aa = icmp eq i64 %i.t, 0, !dbg !19596
  br i1 %i.aa, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph, !dbg !19597

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_8compilerNtB2p_8Compiler19compile_map_entries0EBW_.exit
  %.sroa.7116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx172 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5.0..sroa_idx173 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit, !dbg !19597

bb.c:                                             ; preds = %.lr.ph
    #dbg_value(i1 poison, !19224, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19493)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !19598
    #dbg_value(ptr %1, !19282, !DIExpression(), !19527)
    #dbg_value(i64 %i.t, !19379, !DIExpression(), !19528)
    #dbg_value(i64 %i.t, !19374, !DIExpression(), !19529)
    #dbg_value(i64 %i.t, !19382, !DIExpression(), !19530)
    #dbg_value(i64 %i.t, !19387, !DIExpression(), !19531)
  %i.ad = icmp ult i64 %i.t, 96076792050570582, !dbg !19599
  tail call void @llvm.assume(i1 %i.ad), !dbg !19600
    #dbg_value(i64 1, !19388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19531)
    #dbg_value(i64 1, !19388, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19531)
    #dbg_value(i64 %i.t, !4339, !DIExpression(), !19113)
    #dbg_value(i1 false, !4354, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19113)
    #dbg_declare(ptr poison, !4355, !DIExpression(), !19114)
    #dbg_value(i64 1, !4356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19113)
    #dbg_value(i64 1, !4356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19113)
    #dbg_value(i64 1, !4357, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19115)
    #dbg_value(i64 %i.t, !4357, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19115)
    #dbg_value(i64 1, !3901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19119)
    #dbg_value(i64 1, !3901, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19123)
    #dbg_value(i64 %i.t, !3901, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19119)
    #dbg_value(i64 %i.t, !3901, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19123)
    #dbg_value(i64 %i.t, !3906, !DIExpression(), !19124)
    #dbg_value(i64 %i.t, !3906, !DIExpression(), !19125)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !dbg !19601, !noalias !19532
    #dbg_value(ptr poison, !4359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19128)
    #dbg_value(i64 poison, !4359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19128)
    #dbg_value(ptr poison, !4375, !DIExpression(), !19129)
    #dbg_value(ptr poison, !4371, !DIExpression(), !19130)
    #dbg_value(i64 1, !4376, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19129)
    #dbg_value(i64 1, !4372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19130)
    #dbg_value(i64 %i.t, !4376, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19129)
    #dbg_value(i64 %i.t, !4372, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19130)
    #dbg_value(i8 0, !4373, !DIExpression(), !19130)
    #dbg_value(i64 1, !3912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19132)
    #dbg_value(i64 %i.t, !3912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19132)
    #dbg_value(i1 false, !3905, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19123)
  %i.ae = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.t, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !dbg !19602, !noalias !19532 ; 3 uses
    #dbg_value(ptr %i.ae, !4359, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19128)
    #dbg_value(i64 poison, !4359, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19128)
  %i.af = icmp eq ptr %i.ae, null, !dbg !19603
  br i1 %i.af, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera.exit, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.lr.ph, !dbg !19604

.body:                                            ; preds = %bb.m, %bb.i, %bb.d
  %.pn92 = phi { ptr, i32 } [ %i.ag, %bb.d ], [ %.pn135, %bb.m ], [ %i.ap, %bb.i ]
    #dbg_value(ptr %i.g, !19533, !DIExpression(), !19135)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.thread unwind label %bb.l, !dbg !19605

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyEBH_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEBH_.exit
  %i.ah = phi ptr [ %i.r, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph ], [ %i.at, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEBH_.exit ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19539), !dbg !19370
    #dbg_value(ptr %i.ah, !19523, !DIExpression(), !19138)
    #dbg_value(ptr %i.ah, !19524, !DIExpression(), !19139)
    #dbg_value(ptr %i.ah, !19540, !DIExpression(), !19142)
    #dbg_value(ptr %i.ah, !19543, !DIExpression(), !19145)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 96, !dbg !19606
  store ptr %i.ai, ptr %.sroa.415.0..sroa_idx, align 8, !dbg !19607, !alias.scope !19539, !noalias !19548
  %.sroa.0114.0.copyload115 = load i64, ptr %i.ah, align 16, !dbg !19608, !noalias !19539 ; 3 uses
  %.not = icmp eq i64 %.sroa.0114.0.copyload115, -2, !dbg !19370
  br i1 %.not, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %bb.e, !dbg !19370

bb.e:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit
  %.sroa.7116.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !19608
  store i64 %.sroa.0114.0.copyload115, ptr %i.b, align 16, !dbg !19609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7116.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7116.0..sroa_idx117, i64 88, i1 false), !dbg !19609
  %i.aj = icmp eq i64 %.sroa.0114.0.copyload115, -1, !dbg !19610
  br i1 %i.aj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyEBH_.exit.i, label %bb.h, !dbg !19611

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEBH_.exit, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_8compilerNtB2p_8Compiler19compile_map_entries0EBW_.exit
    #dbg_value(ptr %i.g, !19533, !DIExpression(), !19150)
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g), !dbg !19612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !19613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19614
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !19614
  store i64 %i.t, ptr %i.ak, align 8, !dbg !19614
  store i8 13, ptr %i.a, align 8, !dbg !19614
  %i.al = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2), !dbg !19615 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19616
  br label %bb.f, !dbg !19617

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit109, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread
  ret void, !dbg !19618

bb.g:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !19619
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEBH_.exit, !dbg !19620

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !19372
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 64, !dbg !19372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.f, ptr noundef nonnull align 16 dereferenceable(32) %i.am, i64 32, i1 false), !dbg !19372
  %.sroa.3.0.copyload = load <2 x i64>, ptr %.sroa.3.0..sroa_idx, align 16, !dbg !19621
    #dbg_value(<2 x i64> %.sroa.3.0.copyload, !19235, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !19551)
  %.sroa.4.0.copyload = load <2 x i64>, ptr %.sroa.4.0..sroa_idx172, align 16, !dbg !19621
    #dbg_value(<2 x i64> %.sroa.4.0.copyload, !19235, !DIExpression(DW_OP_LLVM_fragment, 256, 128), !19551)
  %.sroa.5.0.copyload = load <2 x i64>, ptr %.sroa.5.0..sroa_idx173, align 16, !dbg !19621
    #dbg_value(<2 x i64> %.sroa.5.0.copyload, !19235, !DIExpression(DW_OP_LLVM_fragment, 384, 128), !19551)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !19622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !19623
  invoke void @_RNvXsw_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromNtNtB5_3key3KeyE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %i.f)
          to label %bb.j unwind label %.thread136, !dbg !19623

.thread136:                                       ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !19619

.thread131:                                       ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !19619

bb.i:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !19619

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !19622
  store i8 0, ptr %i.e, align 8, !dbg !19622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !19624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !19625
    #dbg_value(ptr undef, !19297, !DIExpression(), !19330)
    #dbg_value(ptr undef, !19552, !DIExpression(), !19555)
  store <2 x i64> %.sroa.3.0.copyload, ptr %i.ac, align 8, !dbg !19625
  store <2 x i64> %.sroa.4.0.copyload, ptr %.sroa.520.0..sroa_idx, align 8, !dbg !19625
  store <2 x i64> %.sroa.5.0.copyload, ptr %.sroa.722.0..sroa_idx, align 8, !dbg !19625
  store i64 1, ptr %i.c, align 8, !dbg !19625
  %i.aq = invoke noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.c)
          to label %bb.k unwind label %.thread131, !dbg !19626 ; 0 uses

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !19627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !19627
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.b)
          to label %bb.g unwind label %bb.i, !dbg !19628

bb.l:                                             ; preds = %bb.n, %.body, %bb.ad, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit108.thread, %bb.y, %bb.m
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !19629
  unreachable, !dbg !19629

bb.m:                                             ; preds = %.thread136, %.thread131
  %.pn135 = phi { ptr, i32 } [ %i.ao, %.thread131 ], [ %i.an, %.thread136 ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b) #30
          to label %.body unwind label %bb.l, !dbg !19619

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyEBH_.exit.i: ; preds = %bb.e
    #dbg_value(ptr %i.b, !19557, !DIExpression(), !19154)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.sroa.7116.0..sroa_idx)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEBH_.exit unwind label %bb.d, !dbg !19630

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEBH_.exit: ; preds = %bb.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyEBH_.exit.i
    #dbg_value(ptr %i.g, !19522, !DIExpression(), !19155)
    #dbg_value(i64 1, !19541, !DIExpression(), !19142)
    #dbg_value(ptr %i.g, !19509, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19156)
  %i.as = load ptr, ptr %.sroa.617.0..sroa_idx, align 8, !dbg !19631, !alias.scope !19561, !noalias !19548, !nonnull !1394, !noundef !1394
    #dbg_value(ptr poison, !19510, !DIExpression(), !19158)
  %i.at = load ptr, ptr %.sroa.415.0..sroa_idx, align 8, !dbg !19596, !alias.scope !19561, !noalias !19548, !nonnull !1394, !noundef !1394 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.as, !dbg !19596
  br i1 %i.au, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit, !dbg !19597

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera.exit: ; preds = %bb.c
    #dbg_value(i64 1, !19390, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19562)
    #dbg_value(i64 %i.t, !19390, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19562)
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.t) #32
          to label %bb.ac unwind label %bb.ad, !dbg !19632

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.lr.ph: ; preds = %bb.c
    #dbg_value(ptr %i.ae, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19159)
    #dbg_value(i64 poison, !4360, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19159)
    #dbg_value(ptr poison, !19247, !DIExpression(), !19563)
    #dbg_value(i64 %i.t, !19504, !DIExpression(), !19565)
  store i64 %i.t, ptr %i.p, align 8, !dbg !19633
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !19633 ; 3 uses
  store ptr %i.ae, ptr %i.av, align 8, !dbg !19633
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !19633 ; 3 uses
  store i64 0, ptr %i.aw, align 8, !dbg !19633
  %.sroa.081.0.copyload = load i64, ptr %1, align 8, !dbg !19290 ; 2 uses
    #dbg_value(i64 %.sroa.081.0.copyload, !19258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19566)
    #dbg_value(ptr %i.r, !19258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19566)
    #dbg_value(i64 %i.t, !19258, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19566)
    #dbg_value(i64 %.sroa.081.0.copyload, !19259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19567)
    #dbg_value(ptr %i.r, !19259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19567)
    #dbg_value(i64 %i.t, !19259, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19567)
    #dbg_value(ptr %i.r, !19261, !DIExpression(), !19568)
    #dbg_value(ptr %i.r, !19263, !DIExpression(), !19569)
    #dbg_value(ptr %i.r, !19467, !DIExpression(), !19571)
    #dbg_value(ptr undef, !19282, !DIExpression(), !19296)
    #dbg_value(i64 %i.t, !19464, !DIExpression(), !19571)
    #dbg_value(ptr %i.u, !19264, !DIExpression(), !19572)
    #dbg_value(ptr undef, !19279, !DIExpression(), !19294)
    #dbg_value(ptr undef, !19247, !DIExpression(), !19293)
    #dbg_value(i64 %.sroa.081.0.copyload, !19504, !DIExpression(), !19575)
  %i.ax = icmp sgt i64 %.sroa.081.0.copyload, -1, !dbg !19634
  tail call void @llvm.assume(i1 %i.ax), !dbg !19634
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !19290
  store ptr %i.r, ptr %i.o, align 8, !dbg !19290
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !19290 ; 3 uses
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !19290
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !19290
  store i64 %.sroa.081.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !19290
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !19290 ; 2 uses
  store ptr %i.u, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !19290
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107, !dbg !19635

bb.n:                                             ; preds = %.thread159, %bb.y, %bb.o
  %.pn97 = phi { ptr, i32 } [ %i.bd, %bb.o ], [ %.pn95154, %bb.y ], [ %lpad.thr_comm157, %.thread159 ]
    #dbg_value(ptr %i.o, !19533, !DIExpression(), !19162)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit108.thread unwind label %bb.l, !dbg !19636

bb.o:                                             ; preds = %bb.aa, %bb.p
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.lr.ph, %bb.x
  %i.be = phi ptr [ %i.ae, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.lr.ph ], [ %i.bw, %bb.x ]
  %i.bf = phi i64 [ 0, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.lr.ph ], [ %i.bx, %bb.x ] ; 6 uses
  %i.bg = phi ptr [ %i.r, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.lr.ph ], [ %i.bz, %bb.x ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19576), !dbg !19366
    #dbg_value(ptr %i.bg, !19523, !DIExpression(), !19165)
    #dbg_value(ptr %i.bg, !19524, !DIExpression(), !19166)
    #dbg_value(ptr %i.bg, !19540, !DIExpression(), !19168)
    #dbg_value(ptr %i.bg, !19543, !DIExpression(), !19170)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 96, !dbg !19637
  store ptr %i.bh, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !19638, !alias.scope !19576, !noalias !19577
  %.sroa.0112.0.copyload = load i64, ptr %i.bg, align 16, !dbg !19639, !noalias !19576 ; 2 uses
  %.sroa.7.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !19639 ; 2 uses
  switch i64 %.sroa.0112.0.copyload, label %bb.q [
    i64 -2, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.thread
    i64 -1, label %bb.p
  ], !dbg !19366

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.thread: ; preds = %bb.x, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107
    #dbg_value(ptr %i.o, !19533, !DIExpression(), !19174)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit109 unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit108.thread148, !dbg !19640

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit108.thread148: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.thread
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit108.thread, !dbg !19641

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit109: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !19642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !19643
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !19643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !19644
  store i8 15, ptr %i.h, align 8, !dbg !19643
  %i.bk = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2), !dbg !19645 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !19646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !19641
  br label %bb.f, !dbg !19617

bb.p:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !19647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx113, i64 64, i1 false), !dbg !19647
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.i)
          to label %bb.z unwind label %bb.o, !dbg !19648

bb.q:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !19649
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 64, !dbg !19649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.n, ptr noundef nonnull align 16 dereferenceable(32) %i.bl, i64 32, i1 false), !dbg !19649
  store i64 %.sroa.0112.0.copyload, ptr %i.j, align 8, !dbg !19650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.53.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx113, i64 56, i1 false), !dbg !19650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !19651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !19652
  invoke void @_RNvXsw_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromNtNtB5_3key3KeyE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %i.n)
          to label %bb.s unwind label %bb.r, !dbg !19652

.thread151:                                       ; preds = %bb.s
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.y, !dbg !19653

.thread159:                                       ; preds = %bb.v, %bb.t
  %lpad.thr_comm157 = landingpad { ptr, i32 }
          cleanup
  br label %bb.n, !dbg !19653

bb.r:                                             ; preds = %bb.q
  %lpad.thr_comm.split-lp158 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y, !dbg !19653

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !19651
  store i8 0, ptr %i.m, align 8, !dbg !19651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !19654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !19655
    #dbg_value(ptr %i.j, !19297, !DIExpression(), !19579)
    #dbg_value(ptr %i.az, !19552, !DIExpression(), !19581)
  %i.bn = load <2 x i64>, ptr %i.az, align 8, !dbg !19656
  store <2 x i64> %i.bn, ptr %i.bc, align 8, !dbg !19655
  %i.bo = load <2 x i64>, ptr %i.ba, align 8, !dbg !19656
  store <2 x i64> %i.bo, ptr %.sroa.57.0..sroa_idx, align 8, !dbg !19655
  %i.bp = load <2 x i64>, ptr %i.bb, align 8, !dbg !19656
  store <2 x i64> %i.bp, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !19655
  store i64 1, ptr %i.k, align 8, !dbg !19655
  %i.bq = invoke noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.k)
          to label %bb.t unwind label %.thread151, !dbg !19657 ; 0 uses

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !19658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !19658
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.j)
          to label %bb.u unwind label %.thread159, !dbg !19659

bb.u:                                             ; preds = %bb.t
    #dbg_value(ptr %i.p, !19405, !DIExpression(), !19408)
  call void @llvm.experimental.noalias.scope.decl(metadata !19582), !dbg !19660
    #dbg_value(ptr %i.p, !4378, !DIExpression(), !19178)
    #dbg_value(ptr %i.p, !4387, !DIExpression(), !19180)
    #dbg_value(i1 false, !4383, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19178)
    #dbg_value(i64 1, !4392, !DIExpression(), !19183)
    #dbg_value(i64 %i.bf, !4384, !DIExpression(), !19184)
    #dbg_value(i64 %i.bf, !4401, !DIExpression(), !19186)
    #dbg_value(ptr %i.p, !4399, !DIExpression(), !19187)
  %i.br = load i64, ptr %i.p, align 8, !dbg !19661, !range !3688, !alias.scope !19582, !noundef !1394
  %i.bs = icmp eq i64 %i.bf, %i.br, !dbg !19662
  br i1 %i.bs, label %bb.v, label %bb.w, !dbg !19662

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecbE8grow_oneCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #29
          to label %._crit_edge unwind label %.thread159, !dbg !19663

._crit_edge:                                      ; preds = %bb.v
  %.pre = load ptr, ptr %i.av, align 8, !dbg !19664, !alias.scope !19582
  br label %bb.w, !dbg !19663

bb.w:                                             ; preds = %._crit_edge, %bb.u
  %i.bt = phi ptr [ %.pre, %._crit_edge ], [ %i.be, %bb.u ], !dbg !19664 ; 2 uses
    #dbg_value(ptr %i.bt, !4404, !DIExpression(), !19186)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bf, !dbg !19665
    #dbg_value(ptr %i.bu, !4385, !DIExpression(), !19191)
    #dbg_value(ptr %i.bu, !4419, !DIExpression(), !19193)
    #dbg_value(i1 false, !4422, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19193)
  store i8 0, ptr %i.bu, align 1, !dbg !19666, !noalias !19582
  %i.bv = add i64 %i.bf, 1, !dbg !19667           ; 2 uses
  store i64 %i.bv, ptr %i.aw, align 8, !dbg !19667, !alias.scope !19582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !19653
  br label %bb.x, !dbg !19653

bb.x:                                             ; preds = %bb.ab, %bb.w
  %i.bw = phi ptr [ %3, %bb.ab ], [ %i.bt, %bb.w ]
  %i.bx = phi i64 [ %i.ce, %bb.ab ], [ %i.bv, %bb.w ]
    #dbg_value(ptr %i.o, !19522, !DIExpression(), !19194)
    #dbg_value(i64 1, !19541, !DIExpression(), !19168)
    #dbg_value(ptr %i.o, !19509, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !19196)
  %i.by = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !19668, !alias.scope !19583, !noalias !19577, !nonnull !1394, !noundef !1394
    #dbg_value(ptr poison, !19510, !DIExpression(), !19198)
  %i.bz = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !19669, !alias.scope !19583, !noalias !19577, !nonnull !1394, !noundef !1394 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.by, !dbg !19669
  br i1 %i.ca, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit107, !dbg !19635

bb.y:                                             ; preds = %bb.r, %.thread151
  %.pn95154 = phi { ptr, i32 } [ %i.bm, %.thread151 ], [ %lpad.thr_comm.split-lp158, %bb.r ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j) #30
          to label %bb.n unwind label %bb.l, !dbg !19653

bb.z:                                             ; preds = %bb.p
    #dbg_value(ptr %i.p, !19405, !DIExpression(), !19410)
  call void @llvm.experimental.noalias.scope.decl(metadata !19584), !dbg !19670
    #dbg_value(ptr %i.p, !4378, !DIExpression(), !19202)
    #dbg_value(ptr %i.p, !4387, !DIExpression(), !19204)
    #dbg_value(i1 true, !4383, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19202)
    #dbg_value(i64 1, !4392, !DIExpression(), !19207)
    #dbg_value(i64 %i.bf, !4384, !DIExpression(), !19208)
    #dbg_value(i64 %i.bf, !4401, !DIExpression(), !19210)
    #dbg_value(ptr %i.p, !4399, !DIExpression(), !19211)
  %i.cb = load i64, ptr %i.p, align 8, !dbg !19671, !range !3688, !alias.scope !19584, !noundef !1394
  %i.cc = icmp eq i64 %i.bf, %i.cb, !dbg !19672
  br i1 %i.cc, label %bb.aa, label %bb.ab, !dbg !19672

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecbE8grow_oneCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #29
          to label %bb.ab unwind label %bb.o, !dbg !19673

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %3 = load ptr, ptr %i.av, align 8, !dbg !19674, !alias.scope !19584, !nonnull !1394, !noundef !1394 ; 2 uses
    #dbg_value(ptr %3, !4404, !DIExpression(), !19210)
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 %i.bf, !dbg !19675
    #dbg_value(ptr %i.cd, !4385, !DIExpression(), !19215)
    #dbg_value(ptr %i.cd, !4419, !DIExpression(), !19217)
    #dbg_value(i1 true, !4422, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19217)
  store i8 1, ptr %i.cd, align 1, !dbg !19676, !noalias !19584
  %i.ce = add i64 %i.bf, 1, !dbg !19677           ; 2 uses
  store i64 %i.ce, ptr %i.aw, align 8, !dbg !19677, !alias.scope !19584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !19678
  br label %bb.x, !dbg !19678

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit108.thread: ; preds = %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit108.thread148
  %.pn97.pn147 = phi { ptr, i32 } [ %i.bi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit108.thread148 ], [ %.pn97, %bb.n ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecbEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #30
          to label %.thread unwind label %bb.l, !dbg !19641

bb.ac:                                            ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera.exit
  unreachable

.thread:                                          ; preds = %.body, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit108.thread, %bb.ad
  %.pn100122 = phi { ptr, i32 } [ %.pn92, %.body ], [ %lpad.thr_comm.split-lp, %bb.ad ], [ %.pn97.pn147, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1v_.exit108.thread ]
  resume { ptr, i32 } %.pn100122, !dbg !19629

bb.ad:                                            ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
          to label %.thread unwind label %bb.l, !dbg !19679
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([488 x i8]) align 8 captures(none) dereferenceable(488) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19680 {
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
    #dbg_value(ptr %1, !19792, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19794)
    #dbg_value(i64 %2, !19792, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19794)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !19990
  call void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !19990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !19798
  store i64 0, ptr %i.i, align 8, !dbg !19991
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !19991
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !dbg !19991
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !19991
  store i64 0, ptr %i.l, align 8, !dbg !19991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !19799
  %i.m = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.c unwind label %bb.b, !dbg !19992 ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit77, %bb.b
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.n, %bb.b ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit77 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #30
          to label %bb.x unwind label %bb.w, !dbg !19993

bb.b:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = extractvalue { i64, i64 } %i.m, 0, !dbg !19994
  %i.p = extractvalue { i64, i64 } %i.m, 1, !dbg !19994
    #dbg_value(i64 %i.o, !19808, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19814)
    #dbg_value(i64 %i.p, !19808, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19814)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !19995
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !19995
  store i64 %i.o, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !19995
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40, !dbg !19995
  store i64 %i.p, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !19995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !19818
  %i.q = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.e unwind label %bb.d, !dbg !19996 ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit77: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit78, %bb.d
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.r, %bb.d ], [ %.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit78 ]
    #dbg_value(ptr %i.h, !19822, !DIExpression(), !19689)
    #dbg_value(ptr %i.h, !19829, !DIExpression(), !19692)
    #dbg_value(ptr %i.h, !19835, !DIExpression(), !19695)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBT_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit unwind label %bb.w, !dbg !19997

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit77

bb.e:                                             ; preds = %bb.c
  %i.s = extractvalue { i64, i64 } %i.q, 0, !dbg !19998
  %i.t = extractvalue { i64, i64 } %i.q, 1, !dbg !19998
    #dbg_value(i64 %i.s, !19808, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19842)
    #dbg_value(i64 %i.t, !19808, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19842)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !19999
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !19999
  store i64 %i.s, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !19999
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !19999
  store i64 %i.t, ptr %.sroa.56.0..sroa_idx, align 8, !dbg !19999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !19846
  %i.u = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.g unwind label %bb.f, !dbg !20000 ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit78: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit79, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.f ], [ %.pn.pn.pn.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit79 ]
    #dbg_value(ptr %i.g, !19822, !DIExpression(), !19697)
    #dbg_value(ptr %i.g, !19829, !DIExpression(), !19699)
    #dbg_value(ptr %i.g, !19835, !DIExpression(), !19701)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBT_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit77 unwind label %bb.w, !dbg !20001

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit78

bb.g:                                             ; preds = %bb.e
  %i.w = extractvalue { i64, i64 } %i.u, 0, !dbg !20002
  %i.x = extractvalue { i64, i64 } %i.u, 1, !dbg !20002
    #dbg_value(i64 %i.w, !19808, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19851)
    #dbg_value(i64 %i.x, !19808, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19851)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !20003
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !20003
  store i64 %i.w, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !20003
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40, !dbg !20003
  store i64 %i.x, ptr %.sroa.59.0..sroa_idx, align 8, !dbg !20003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !19855
  %i.y = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.i unwind label %bb.h, !dbg !20004 ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit79: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit80, %bb.h
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.z, %bb.h ], [ %.pn.pn.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit80 ]
    #dbg_value(ptr %i.f, !19822, !DIExpression(), !19703)
    #dbg_value(ptr %i.f, !19829, !DIExpression(), !19705)
    #dbg_value(ptr %i.f, !19835, !DIExpression(), !19707)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBT_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit78 unwind label %bb.w, !dbg !20005

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit79

bb.i:                                             ; preds = %bb.g
  %i.aa = extractvalue { i64, i64 } %i.y, 0, !dbg !20006
  %i.ab = extractvalue { i64, i64 } %i.y, 1, !dbg !20006
    #dbg_value(i64 %i.aa, !19808, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19860)
    #dbg_value(i64 %i.ab, !19808, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19860)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !20007
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !20007
  store i64 %i.aa, ptr %.sroa.411.0..sroa_idx, align 8, !dbg !20007
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !20007
  store i64 %i.ab, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !20007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !19864
  %i.ac = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.k unwind label %bb.j, !dbg !20008 ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit80: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEB2e_.exit, %bb.j
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %.pn.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEB2e_.exit ]
    #dbg_value(ptr %i.e, !19822, !DIExpression(), !19709)
    #dbg_value(ptr %i.e, !19829, !DIExpression(), !19711)
    #dbg_value(ptr %i.e, !19835, !DIExpression(), !19713)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBT_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit79 unwind label %bb.w, !dbg !20009

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit80

bb.k:                                             ; preds = %bb.i
  %i.ae = extractvalue { i64, i64 } %i.ac, 0, !dbg !20010
  %i.af = extractvalue { i64, i64 } %i.ac, 1, !dbg !20010
    #dbg_value(i64 %i.ae, !19808, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19869)
    #dbg_value(i64 %i.af, !19808, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19869)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !dbg !20011
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !20011
  store i64 %i.ae, ptr %.sroa.414.0..sroa_idx, align 8, !dbg !20011
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !20011
  store i64 %i.af, ptr %.sroa.515.0..sroa_idx, align 8, !dbg !20011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !19873
  %i.ag = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.m unwind label %bb.l, !dbg !20012 ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEB2e_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB2c_.exit, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB2c_.exit ]
    #dbg_value(ptr %i.d, !19822, !DIExpression(), !19717)
    #dbg_value(ptr %i.d, !19829, !DIExpression(), !19719)
    #dbg_value(ptr %i.d, !19835, !DIExpression(), !19721)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBT_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB1A_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEEB2t_.exit80 unwind label %bb.w, !dbg !20013

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEEB2e_.exit

end_hunk_1
