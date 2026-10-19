Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.06?download=true
inline.NumInlined: 882
inline.NumDeleted: 338
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTReTBV_jEEE9fold_implNCINvXsG_NtB8_3mapINtB1o_4IterBV_BX_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldTRBV_RBX_ETNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB4i_12instructions5ChunkEEuNCNvMNtB4k_4teraNtB5K_4Tera18finalize_templates0NCINvNvB1Q_8for_each4callB3A_NCINvXs1i_B1o_INtB1o_7HashMapB3B_B4d_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB1U_7collect6ExtendB3A_E6extendINtB2W_3MapINtNtNtNtB7B_11collections4hash3map4IterBV_BX_EB5F_EE0E0E0E0uEB4k_:bb.a
  %.pn.i.i47.i.i.i = phi i64 [ %i.bu, %bb.g ], [ %i.ct, %bb.j ]
  %.sroa.01.0.i.i.i48.i.i.i = and i64 %.pn.i.i47.i.i.i, %i.by, !dbg !21368 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i.i.i48.i.i.i, !4684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20549)
    #dbg_value(i64 %.sroa.9.0.i.i.i46.i.i.i, !4684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20549)
    #dbg_value(i64 %.sroa.01.0.i.i.i48.i.i.i, !4716, !DIExpression(), !20540)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.01.0.i.i.i48.i.i.i, !dbg !21369
    #dbg_value(ptr %i.cc, !4731, !DIExpression(), !20552)
    #dbg_value(ptr %i.cc, !4381, !DIExpression(), !20554)
    #dbg_value(<2 x i64> zeroinitializer, !4382, !DIExpression(), !20555)
    #dbg_value(ptr %i.cc, !4374, !DIExpression(), !20557)
    #dbg_value(ptr undef, !4375, !DIExpression(), !20557)
    #dbg_value(i64 16, !4376, !DIExpression(), !20557)
  %.sroa.0.0.copyload.i29.i.i49.i.i.i = load <16 x i8>, ptr %i.cc, align 1, !dbg !21370, !noalias !21176 ; 2 uses
    #dbg_value(<2 x i64> poison, !4382, !DIExpression(), !20555)
    #dbg_value(<2 x i64> poison, !4685, !DIExpression(), !20561)
    #dbg_value(<2 x i64> poison, !4724, !DIExpression(), !20548)
    #dbg_value(<2 x i64> poison, !4729, !DIExpression(), !20562)
    #dbg_value(<2 x i64> poison, !4724, !DIExpression(), !20545)
    #dbg_declare(ptr poison, !4733, !DIExpression(), !20564)
    #dbg_declare(ptr poison, !4736, !DIExpression(), !20565)
  %i.cd = icmp eq <16 x i8> %.sroa.0.0.copyload.i29.i.i49.i.i.i, %i.cb, !dbg !21371
    #dbg_value(<16 x i8> poison, !4725, !DIExpression(), !20566)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !20568)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !20569)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !20570)
  %i.ce = bitcast <16 x i1> %i.cd to i16, !dbg !21372 ; 2 uses
    #dbg_value(i16 %i.ce, !4686, !DIExpression(), !20571)
    #dbg_value(ptr undef, !4700, !DIExpression(), !20534)
    #dbg_value(i16 %i.ce, !4738, !DIExpression(), !20573)
  %.not.i.not35.i.i50.i.i.i = icmp eq i16 %i.ce, 0, !dbg !21373
  br i1 %.not.i.not35.i.i50.i.i.i, label %._crit_edge.i.i54.i.i.i, label %.lr.ph.i.i51.i.i.i, !dbg !21374

.lr.ph.i.i51.i.i.i:                               ; preds = %bb.h, %bb.i
  %.sroa.06.0.i36.i.i52.i.i.i = phi i16 [ %i.cr, %bb.i ], [ %i.ce, %bb.h ] ; 3 uses
    #dbg_value(i16 %.sroa.06.0.i36.i.i52.i.i.i, !4686, !DIExpression(), !20571)
    #dbg_value(i16 %.sroa.06.0.i36.i.i52.i.i.i, !4739, !DIExpression(), !20574)
    #dbg_value(i16 %.sroa.06.0.i36.i.i52.i.i.i, !4741, !DIExpression(), !20576)
    #dbg_value(i16 %.sroa.06.0.i36.i.i52.i.i.i, !4744, !DIExpression(), !20578)
    #dbg_value(i16 %.sroa.06.0.i36.i.i52.i.i.i, !4746, !DIExpression(), !20580)
  %i.cf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i36.i.i52.i.i.i, i1 true), !dbg !21375
  %i.cg = zext nneg i16 %i.cf to i64, !dbg !21376
    #dbg_value(i64 %i.cg, !4701, !DIExpression(), !20581)
    #dbg_value(i16 %.sroa.06.0.i36.i.i52.i.i.i, !4749, !DIExpression(), !20583)
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i36.i.i52.i.i.i, i16 %.sroa.06.0.i36.i.i52.i.i.i), !4686, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_and, DW_OP_stack_value), !20571)
    #dbg_value(i64 %i.cg, !4687, !DIExpression(), !20584)
  %i.ch = add i64 %.sroa.01.0.i.i.i48.i.i.i, %i.cg, !dbg !21377
  %i.ci = and i64 %i.ch, %i.by, !dbg !21377
    #dbg_value(i64 %i.ci, !4688, !DIExpression(), !20585)
    #dbg_value(ptr poison, !21177, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !20588)
    #dbg_value(ptr poison, !21182, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !20588)
    #dbg_value(i64 %i.ci, !21181, !DIExpression(), !20588)
    #dbg_value(i64 %i.ci, !21184, !DIExpression(), !20593)
    #dbg_value(i64 %i.ci, !21195, !DIExpression(), !20597)
    #dbg_value(i64 %i.ci, !21199, !DIExpression(), !20600)
    #dbg_value(i64 1, !21201, !DIExpression(), !20606)
    #dbg_value(ptr %i.bf, !21188, !DIExpression(DW_OP_constu, 400, DW_OP_minus, DW_OP_stack_value), !20593)
    #dbg_value(ptr %i.bz, !21196, !DIExpression(), !20597)
    #dbg_value(ptr %i.bz, !21200, !DIExpression(), !20600)
  %i.cj = sub nsw i64 0, %i.ci, !dbg !21378
  %i.ck = getelementptr inbounds [192 x i8], ptr %i.bz, i64 %i.cj, !dbg !21379 ; 8 uses
    #dbg_value(ptr poison, !21205, !DIExpression(), !20607)
    #dbg_value(ptr poison, !21203, !DIExpression(), !20608)
    #dbg_value(ptr %i.ck, !21200, !DIExpression(), !20606)
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -192, !dbg !21380
    #dbg_value(ptr poison, !21207, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !20611)
    #dbg_value(ptr %i.cl, !21211, !DIExpression(), !20611)
  %i.cm = call noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrowneINtB2_10EquivalentNtNtCsgCecv3eZDcN_5alloc6string6StringE10equivalentCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.cl), !dbg !21381, !noalias !21214
    #dbg_value(i1 %i.cm, !4771, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20615)
  br i1 %i.cm, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB1v_12instructions5ChunkENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1x_.exit.i.i.i, label %bb.i, !dbg !21382, !prof !4773

._crit_edge.i.i54.i.i.i:                          ; preds = %bb.i, %bb.h
    #dbg_declare(ptr poison, !4733, !DIExpression(), !20617)
    #dbg_declare(ptr poison, !4736, !DIExpression(), !20618)
  %i.cn = icmp eq <16 x i8> %.sroa.0.0.copyload.i29.i.i49.i.i.i, splat (i8 -1), !dbg !21383
    #dbg_value(<16 x i8> poison, !4726, !DIExpression(), !20619)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !20621)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !20622)
    #dbg_value(!DIArgList(<16 x i8> poison, <16 x i8> poison), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !20623)
  %i.co = bitcast <16 x i1> %i.cn to i16, !dbg !21384
    #dbg_value(i16 %i.co, !4771, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_lit0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20625)
  %i.cp = icmp eq i16 %i.co, 0, !dbg !21385
  br i1 %i.cp, label %bb.j, label %select.unfold9.i.i.i, !dbg !21385, !prof !3824

bb.i:                                             ; preds = %.lr.ph.i.i51.i.i.i
  %i.cq = add i16 %.sroa.06.0.i36.i.i52.i.i.i, -1, !dbg !21386
    #dbg_value(!DIArgList(i16 %.sroa.06.0.i36.i.i52.i.i.i, i16 %i.cq), !4686, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !20571)
  %i.cr = and i16 %i.cq, %.sroa.06.0.i36.i.i52.i.i.i, !dbg !21387 ; 2 uses
    #dbg_value(i16 %i.cr, !4686, !DIExpression(), !20571)
    #dbg_value(ptr undef, !4700, !DIExpression(), !20534)
    #dbg_value(i16 %i.cr, !4738, !DIExpression(), !20573)
  %.not.i.not.i.i53.i.i.i = icmp eq i16 %i.cr, 0, !dbg !21373
  br i1 %.not.i.not.i.i53.i.i.i, label %._crit_edge.i.i54.i.i.i, label %.lr.ph.i.i51.i.i.i, !dbg !21374

bb.j:                                             ; preds = %._crit_edge.i.i54.i.i.i
    #dbg_value(ptr undef, !4706, !DIExpression(), !20536)
    #dbg_value(i64 %i.by, !4707, !DIExpression(), !20626)
  %i.cs = add i64 %.sroa.9.0.i.i.i46.i.i.i, 16, !dbg !21388 ; 2 uses
    #dbg_value(i64 %i.cs, !4684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20549)
  %i.ct = add i64 %.sroa.01.0.i.i.i48.i.i.i, %i.cs, !dbg !21389
    #dbg_value(!DIArgList(i64 %i.ct, i64 %i.by), !4684, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !20549)
  br label %bb.h, !dbg !21367

select.unfold.i.i.i:                              ; preds = %bb.b, %._crit_edge.i.i.i.i.i
    #dbg_value(ptr null, !20898, !DIExpression(), !20299)
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #29, !dbg !21390, !noalias !21044
  unreachable, !dbg !21390

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB1v_12instructions5ChunkENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1x_.exit.i.i.i: ; preds = %.lr.ph.i.i51.i.i.i
  %i.cu = getelementptr inbounds i8, ptr %i.ck, i64 -168, !dbg !21391
    #dbg_value(ptr %i.cu, !20923, !DIExpression(), !20309)
  call void @llvm.experimental.noalias.scope.decl(metadata !21215), !dbg !21392
    #dbg_value(ptr %i.cu, !21216, !DIExpression(), !20631)
  call void @llvm.experimental.noalias.scope.decl(metadata !21222), !dbg !21393
    #dbg_value(ptr %i.cu, !21225, !DIExpression(), !20636)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !21394, !noalias !21230
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.cu), !dbg !21394, !noalias !21231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !21395, !noalias !21230
  %i.cv = getelementptr inbounds i8, ptr %i.ck, i64 -96, !dbg !21395
  invoke void @_RNvXs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneB1y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cv)
          to label %bb.l unwind label %bb.k, !dbg !21395, !noalias !21231

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentEEB21_.exit.i.i.i.i.i: ; preds = %bb.p, %bb.k
  %.pn.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.cw, %bb.k ], [ %.pn.pn.i.i.i.i.i, %bb.p ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #25
          to label %common.resume.i.i unwind label %bb.v, !dbg !21396, !noalias !21231

bb.k:                                             ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB1v_12instructions5ChunkENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1x_.exit.i.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentEEB21_.exit.i.i.i.i.i

bb.l:                                             ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB1v_12instructions5ChunkENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1x_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !21397, !noalias !21230
    #dbg_value(ptr %i.cu, !21234, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !20642)
  %i.cx = getelementptr inbounds i8, ptr %i.ck, i64 -120, !dbg !21398 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !21398, !range !7000, !alias.scope !21240, !noalias !21044, !noundef !2127
  %.not.i.i.i.i.i = icmp eq i64 %i.cy, -1, !dbg !21398
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m, !dbg !21399

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr %i.cx, !21238, !DIExpression(), !20643)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !21400, !noalias !21230
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx)
          to label %bb.r unwind label %bb.q, !dbg !21401, !noalias !21231

bb.n:                                             ; preds = %bb.l
  store i64 -1, ptr %i.i, align 8, !dbg !21402, !noalias !21230
  br label %bb.o, !dbg !21402

bb.o:                                             ; preds = %bb.r, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !21403, !noalias !21230
  %i.cz = getelementptr inbounds i8, ptr %i.ck, i64 -72, !dbg !21403
  invoke void @_RNvXs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneB1w_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz)
          to label %bb.t unwind label %bb.s, !dbg !21403, !noalias !21231

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1Z_.exit.i.i.i.i.i, %bb.q
  %.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i58.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1Z_.exit.i.i.i.i.i ], [ %i.da, %bb.q ]
    #dbg_value(ptr %i.j, !7002, !DIExpression(), !20645)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentEEB21_.exit.i.i.i.i.i unwind label %bb.v, !dbg !21404, !noalias !21231

bb.q:                                             ; preds = %bb.m
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !21405, !noalias !21230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !21406, !noalias !21230
  br label %bb.o, !dbg !21407

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1Z_.exit.i.i.i.i.i: ; preds = %bb.u, %bb.s
  %.pn.i.i58.i.i.i = phi { ptr, i32 } [ %i.db, %bb.s ], [ %i.dd, %bb.u ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #25
          to label %bb.p unwind label %bb.v, !dbg !21396, !noalias !21231

bb.s:                                             ; preds = %bb.o
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1Z_.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !21408, !noalias !21230
  %i.dc = getelementptr inbounds i8, ptr %i.ck, i64 -144, !dbg !21408
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneBL_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dc)
          to label %_RNvXs2d_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB6_19ComponentDefinitionNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i.i unwind label %bb.u, !dbg !21408, !noalias !21231

bb.u:                                             ; preds = %bb.t
  %i.dd = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !7009, !DIExpression(), !20647)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1Z_.exit.i.i.i.i.i unwind label %bb.v, !dbg !21409, !noalias !21231

bb.v:                                             ; preds = %bb.u, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1Z_.exit.i.i.i.i.i, %bb.p, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentEEB21_.exit.i.i.i.i.i
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !21410, !noalias !21231
  unreachable, !dbg !21410

common.resume.i.i:                                ; preds = %bb.ah, %3, %.body.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentEEB21_.exit.i.i.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %lpad.phi, %3 ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %.pn.pn.pn.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentEEB21_.exit.i.i.i.i.i ], [ %i.du, %bb.ah ]
  resume { ptr, i32 } %common.resume.op.i.i, !dbg !21411

_RNvXs2d_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB6_19ComponentDefinitionNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !21410, !noalias !21241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !21410, !noalias !21241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !21410, !noalias !21241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !21410, !noalias !21241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !21410, !noalias !21241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !21396, !noalias !21230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !21396, !noalias !21230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !21396, !noalias !21230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !21396, !noalias !21230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !21396, !noalias !21230
  %i.df = getelementptr inbounds i8, ptr %i.ck, i64 -48, !dbg !21393
    #dbg_value(ptr %i.df, !21244, !DIExpression(), !20650)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !21412, !noalias !21249
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionIBw_NtNtBM_5utils4SpanEEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneBM_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.df)
          to label %.noexc.i.i.i.i unwind label %bb.y, !dbg !21412, !noalias !21250

.noexc.i.i.i.i:                                   ; preds = %_RNvXs2d_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB6_19ComponentDefinitionNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !21413, !noalias !21249
  %i.dg = getelementptr inbounds i8, ptr %i.ck, i64 -24, !dbg !21413
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dg)
          to label %_RNvYTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB7_12instructions5ChunkENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneB9_.exit.i.i.i unwind label %bb.w, !dbg !21413, !noalias !21251

bb.w:                                             ; preds = %.noexc.i.i.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionIBC_NtNtB1f_5utils4SpanEEEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #25
          to label %.body.i.i.i.i unwind label %bb.x, !dbg !21414, !noalias !21251

bb.x:                                             ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !21415, !noalias !21251
  unreachable, !dbg !21415

bb.y:                                             ; preds = %_RNvXs2d_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB6_19ComponentDefinitionNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i, !dbg !21393

.body.i.i.i.i:                                    ; preds = %bb.y, %bb.w
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.dj, %bb.y ], [ %i.dh, %bb.w ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.m) #25
          to label %common.resume.i.i unwind label %bb.z, !dbg !21393, !noalias !21044

bb.z:                                             ; preds = %.body.i.i.i.i
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !21393, !noalias !21044
  unreachable, !dbg !21393

_RNvYTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB7_12instructions5ChunkENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneB9_.exit.i.i.i: ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !21415, !noalias !21252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !21415, !noalias !21252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !21414, !noalias !21249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !21414, !noalias !21249
    #dbg_value(ptr %.val10.i, !20960, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20654)
    #dbg_value(ptr %.val10.i, !20954, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20655)
    #dbg_value(ptr %.val10.i, !20951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20656)
    #dbg_value(i64 %.val11.i, !20960, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20654)
    #dbg_value(i64 %.val11.i, !20954, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20655)
    #dbg_value(i64 %.val11.i, !20951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20656)
    #dbg_value(ptr %.val10.i, !20944, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20657)
    #dbg_value(ptr %.val10.i, !20941, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20658)
    #dbg_value(ptr %.val10.i, !20937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20659)
    #dbg_value(ptr %.val10.i, !20968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20660)
    #dbg_value(i64 %.val11.i, !20944, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20657)
    #dbg_value(i64 %.val11.i, !20941, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20658)
    #dbg_value(i64 %.val11.i, !20937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20659)
    #dbg_value(i64 %.val11.i, !20968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20660)
    #dbg_value(i64 %.val11.i, !20969, !DIExpression(), !20661)
    #dbg_value(i64 %.val11.i, !20976, !DIExpression(), !20662)
    #dbg_value(i64 %.val11.i, !20982, !DIExpression(), !20663)
    #dbg_value(i64 %.val11.i, !21253, !DIExpression(), !20666)
    #dbg_value(i64 %.val11.i, !21259, !DIExpression(), !20669)
    #dbg_value(i64 %.val11.i, !20988, !DIExpression(), !20670)
    #dbg_value(i64 %.val11.i, !21008, !DIExpression(), !20349)
    #dbg_value(i64 1, !20989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20670)
    #dbg_value(i64 1, !21009, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20349)
    #dbg_value(i64 1, !20989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20670)
    #dbg_value(i64 1, !21009, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20349)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !21416, !noalias !21044
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %.val11.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.aa unwind label %.loopexit, !dbg !21416, !noalias !21044

select.unfold9.i.i.i:                             ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1u_.exit.i.i.i, %._crit_edge.i.i54.i.i.i
    #dbg_value(ptr null, !20923, !DIExpression(), !20309)
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #29, !dbg !21417, !noalias !21044
  unreachable, !dbg !21417

.loopexit:                                        ; preds = %_RNvYTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB7_12instructions5ChunkENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneB9_.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %3

.loopexit.split-lp:                               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %3

3:                                                ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtBG_12instructions5ChunkEEBI_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.m) #25
          to label %common.resume.i.i unwind label %bb.af, !dbg !21418, !noalias !21044

bb.aa:                                            ; preds = %_RNvYTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB7_12instructions5ChunkENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneB9_.exit.i.i.i
  %i.dl = load i64, ptr %i.l, align 8, !dbg !21416, !range !21263, !noalias !21044, !noundef !2127
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !21419
  %i.dn = load i64, ptr %i.w, align 8, !dbg !21420, !range !7015, !noalias !21044, !noundef !2127 ; 3 uses
  br i1 %i.dm, label %bb.ab, label %bb.ac, !dbg !21419, !prof !3824

bb.ab:                                            ; preds = %bb.aa
  %i.do = load i64, ptr %i.x, align 8, !dbg !21421, !noalias !21044
    #dbg_value(i64 %i.dn, !20991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20671)
    #dbg_value(i64 %i.do, !20991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20671)
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.dn, i64 %i.do) #30
          to label %bb.ae unwind label %.loopexit.split-lp, !dbg !21422, !noalias !21044

bb.ac:                                            ; preds = %bb.aa
  %i.dp = load ptr, ptr %i.x, align 8, !dbg !21423, !noalias !21044, !nonnull !2127, !noundef !2127 ; 2 uses
    #dbg_value(i64 %i.dn, !20990, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20672)
    #dbg_value(ptr %i.dp, !20990, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20672)
    #dbg_value(ptr poison, !21007, !DIExpression(), !20673)
  %i.dq = icmp ule i64 %.val11.i, %i.dn, !dbg !21424
    #dbg_value(i1 true, !21265, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20676)
  call void @llvm.assume(i1 %i.dq), !dbg !21425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !21426, !noalias !21044
    #dbg_value(i64 %i.dn, !20970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20677)
    #dbg_value(ptr %i.dp, !20970, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20677)
    #dbg_value(i64 0, !20970, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20677)
  %.not45.i.i.i = icmp eq i64 %.val11.i, 0, !dbg !21427
  br i1 %.not45.i.i.i, label %_RNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB4_4Tera18finalize_templates0B6_.exit.i.i, label %bb.ad, !dbg !21427

bb.ad:                                            ; preds = %bb.ac
    #dbg_value(ptr %.val10.i, !21256, !DIExpression(), !20666)
    #dbg_value(ptr %.val10.i, !21260, !DIExpression(), !20669)
    #dbg_value(ptr %i.dp, !21257, !DIExpression(), !20666)
    #dbg_value(ptr %i.dp, !21261, !DIExpression(), !20669)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dp, ptr nonnull align 1 %.val10.i, i64 %.val11.i, i1 false), !dbg !21428, !noalias !21044
    #dbg_value(i64 %.val11.i, !20970, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20677)
  br label %_RNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB4_4Tera18finalize_templates0B6_.exit.i.i, !dbg !21429

bb.ae:                                            ; preds = %bb.ab
  unreachable

bb.af:                                            ; preds = %3
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !21430, !noalias !21044
  unreachable, !dbg !21430

_RNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB4_4Tera18finalize_templates0B6_.exit.i.i: ; preds = %bb.ad, %bb.ac
    #dbg_value(i64 %.val11.i, !20970, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20677)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21431, !noalias !21270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(168) %i.m, i64 168, i1 false), !dbg !21432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !21418, !noalias !21044
    #dbg_value(i64 %i.dn, !20857, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20682)
    #dbg_value(i64 %i.dn, !20824, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20683)
    #dbg_value(ptr %i.dp, !20857, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20682)
    #dbg_value(ptr %i.dp, !20824, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20683)
    #dbg_value(i64 %.val11.i, !20857, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20682)
    #dbg_value(i64 %.val11.i, !20824, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20683)
    #dbg_value(ptr poison, !20858, !DIExpression(DW_OP_deref), !20684)
    #dbg_declare(ptr poison, !20859, !DIExpression(), !20685)
    #dbg_value(ptr poison, !20828, !DIExpression(DW_OP_deref), !20686)
    #dbg_declare(ptr %i.c, !20829, !DIExpression(), !20687)
    #dbg_declare(ptr %i.b, !20830, !DIExpression(), !20688)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !21433, !noalias !21270
  store i64 %i.dn, ptr %i.c, align 8, !dbg !21433
  store ptr %i.dp, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !dbg !21433
  store i64 %.val11.i, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !dbg !21433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21434, !noalias !21270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB1u_12instructions5ChunkENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertB1w_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.b), !dbg !21435, !noalias !21270
    #dbg_value(ptr %i.a, !21272, !DIExpression(), !20695)
  %i.ds = load i64, ptr %i.a, align 8, !dbg !21436, !range !7000, !alias.scope !21285, !noalias !21270, !noundef !2127
  %i.dt = icmp eq i64 %i.ds, -1, !dbg !21436
  br i1 %i.dt, label %_RNCINvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB8_4IterReTBN_jEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldTRBN_RBP_ETNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB3o_12instructions5ChunkEEuNCNvMNtB3q_4teraNtB4Q_4Tera18finalize_templates0NCINvNvBW_8for_each4callB2G_NCINvXs1i_B8_INtB8_7HashMapB2H_B3j_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB10_7collect6ExtendB2G_E6extendINtB22_3MapINtNtNtNtB6E_11collections4hash3map4IterBN_BP_EB4L_EE0E0E0E0B3q_.exit, label %bb.ag, !dbg !21436

bb.ag:                                            ; preds = %_RNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB4_4Tera18finalize_templates0B6_.exit.i.i
    #dbg_value(ptr %i.a, !7019, !DIExpression(), !20699)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtBG_12instructions5ChunkEEBI_.exit.i.i.i.i.i unwind label %bb.ah, !dbg !21437, !noalias !21270

bb.ah:                                            ; preds = %bb.ag
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.y) #25
          to label %common.resume.i.i unwind label %bb.ai, !dbg !21437, !noalias !21270

bb.ai:                                            ; preds = %bb.ah
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !21437, !noalias !21270
  unreachable, !dbg !21437

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtBG_12instructions5ChunkEEBI_.exit.i.i.i.i.i: ; preds = %bb.ag
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions5ChunkEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.y), !dbg !21437, !noalias !21270
  br label %_RNCINvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB8_4IterReTBN_jEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldTRBN_RBP_ETNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB3o_12instructions5ChunkEEuNCNvMNtB3q_4teraNtB4Q_4Tera18finalize_templates0NCINvNvBW_8for_each4callB2G_NCINvXs1i_B8_INtB8_7HashMapB2H_B3j_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB10_7collect6ExtendB2G_E6extendINtB22_3MapINtNtNtNtB6E_11collections4hash3map4IterBN_BP_EB4L_EE0E0E0E0B3q_.exit, !dbg !21436

_RNCINvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB8_4IterReTBN_jEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldTRBN_RBP_ETNtNtCsgCecv3eZDcN_5alloc6string6StringTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtB3o_12instructions5ChunkEEuNCNvMNtB3q_4teraNtB4Q_4Tera18finalize_templates0NCINvNvBW_8for_each4callB2G_NCINvXs1i_B8_INtB8_7HashMapB2H_B3j_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB10_7collect6ExtendB2G_E6extendINtB22_3MapINtNtNtNtB6E_11collections4hash3map4IterBN_BP_EB4L_EE0E0E0E0B3q_.exit: ; preds = %_RNCNvMNtCs5yXxDE1DkoT_4tera4teraNtB4_4Tera18finalize_templates0B6_.exit.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast19ComponentDefinitionNtNtBG_12instructions5ChunkEEBI_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21438, !noalias !21270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21439, !noalias !21270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !21439, !noalias !21270
  %i.dw = add i64 %.sroa.0.0.ph, -1, !dbg !21440
    #dbg_value(i64 %i.dw, !20734, !DIExpression(), !20740)
  br label %.outer, !dbg !21441

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.dx = phi ptr [ %i.eb, %.lr.ph.split ], [ %.lcssa4954, %.lr.ph ] ; 2 uses
  %i.dy = phi ptr [ %i.ea, %.lr.ph.split ], [ %.lcssa4852, %.lr.ph ]
    #dbg_value(ptr %i.dx, !21286, !DIExpression(), !21294)
  %.val31 = load <16 x i8>, ptr %i.dx, align 16, !dbg !21442
    #dbg_value(<2 x i64> poison, !21295, !DIExpression(), !21299)
    #dbg_value(ptr poison, !21300, !DIExpression(), !21302)
    #dbg_declare(ptr poison, !3970, !DIExpression(), !20706)
    #dbg_value(<16 x i8> poison, !3975, !DIExpression(), !20707)
    #dbg_value(!DIArgList(<16 x i8> %.val31, <16 x i8> splat (i8 7)), !3976, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shra, DW_OP_stack_value), !20708)
  %i.dz = icmp sgt <16 x i8> %.val31, splat (i8 -1), !dbg !21443 ; 2 uses
  store <16 x i1> %i.dz, ptr %i.n, align 8, !dbg !21444
    #dbg_value(ptr %0, !20747, !DIExpression(), !21303)
    #dbg_value(ptr %i.dy, !20755, !DIExpression(), !20760)
  %i.ea = getelementptr inbounds i8, ptr %i.dy, i64 -640, !dbg !21445 ; 3 uses
    #dbg_value(ptr %i.dx, !20762, !DIExpression(), !20765)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 16, !dbg !21446 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.ph, !20734, !DIExpression(), !20740)
    #dbg_value(ptr %0, !20766, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20772)
  %.cast = bitcast <16 x i1> %i.dz to i16, !dbg !21305 ; 2 uses
    #dbg_value(i16 %.cast, !20773, !DIExpression(), !21304)
  %.not = icmp eq i16 %.cast, 0, !dbg !21307
  br i1 %.not, label %.lr.ph.split, label %._crit_edge, !dbg !21308

bb.aj:                                            ; preds = %.lr.ph
  ret void, !dbg !21447
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1453 {
bb.a:
    #dbg_value(ptr %0, !7026, !DIExpression(), !21456)
  %i.a = load i64, ptr %0, align 8, !dbg !21457, !range !7000, !noundef !2127
  %i.b = icmp eq i64 %i.a, -1, !dbg !21457
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !21457

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit, %bb.a
  ret void, !dbg !21457

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !6093, !DIExpression(), !21449)
    #dbg_value(ptr %0, !6098, !DIExpression(), !21451)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit unwind label %bb.d, !dbg !21458

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !6103, !DIExpression(), !21453)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i.i unwind label %bb.e, !dbg !21459

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !21458
  unreachable, !dbg !21458

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs5yXxDE1DkoT_4tera.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !21458

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.c
    #dbg_value(ptr %0, !6103, !DIExpression(), !21455)
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !21460
  br label %bb.b, !dbg !21457
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsbDKHzkXHCUM_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0EECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 !dbg !607 {
bb.a:
    #dbg_value(ptr %0, !4098, !DIExpression(), !21508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21509), !dbg !21510
    #dbg_value(ptr %0, !4104, !DIExpression(), !21464)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !21511
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21512
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !21512, !alias.scope !21509 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !dbg !21512, !alias.scope !21509 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !21512
  %.val3.i = load i64, ptr %i.c, align 8, !dbg !21512, !alias.scope !21509, !noundef !2127 ; 3 uses
    #dbg_value(ptr poison, !4108, !DIExpression(DW_OP_deref), !21466)
    #dbg_value(ptr poison, !4113, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_LLVM_fragment, 0, 64), !21466)
    #dbg_value(ptr poison, !4112, !DIExpression(), !21466)
    #dbg_value(ptr poison, !4116, !DIExpression(), !21468)
    #dbg_value(ptr poison, !4121, !DIExpression(), !21470)
    #dbg_value(ptr poison, !4130, !DIExpression(), !21472)
    #dbg_value(ptr poison, !4154, !DIExpression(), !21474)
  %i.d = icmp eq i64 %.val3.i, 0, !dbg !21513
  br i1 %i.d, label %_RNvXs1_NtCsbDKHzkXHCUM_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsgCecv3eZDcN_5alloc5alloc6GlobalE0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera.exit, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !dbg !21514

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21512
  %.val.i = load i64, ptr %i.e, align 8, !dbg !21512, !alias.scope !21509
    #dbg_value(ptr poison, !4125, !DIExpression(), !21470)
    #dbg_value(i64 %.val.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21470)
    #dbg_value(i64 %.val.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21472)
    #dbg_value(i64 %.val1.i, !4126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21470)
    #dbg_value(i64 %.val1.i, !4137, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21472)
  %i.f = add i64 %.val3.i, 1, !dbg !21515
    #dbg_value(i64 %.val.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21476)
    #dbg_value(i64 %.val1.i, !4159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21476)
    #dbg_value(i64 %i.f, !4163, !DIExpression(), !21476)
    #dbg_value(i64 %i.f, !4175, !DIExpression(), !21478)
    #dbg_value(i64 %i.f, !4180, !DIExpression(), !21480)
    #dbg_value(i64 %.val.i, !4164, !DIExpression(), !21481)
    #dbg_value(i64 %.val.i, !4176, !DIExpression(), !21478)
    #dbg_value(i64 %.val.i, !4186, !DIExpression(), !21480)
    #dbg_value(i64 %.val1.i, !4165, !DIExpression(), !21481)
  %i.g = mul nuw i64 %.val.i, %i.f, !dbg !21516   ; 2 uses
    #dbg_value(i1 false, !4188, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21483)
    #dbg_value(i64 %i.g, !4190, !DIExpression(), !21485)
  %i.h = add i64 %.val1.i, -1, !dbg !21517
    #dbg_value(i64 %i.h, !4191, !DIExpression(), !21485)
  %i.i = add i64 %i.h, %i.g, !dbg !21518          ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g, !dbg !21518
    #dbg_value(i1 true, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21487)
  tail call void @llvm.assume(i1 %i.j), !dbg !21519
  %i.k = sub i64 0, %.val1.i, !dbg !21520
  %i.l = and i64 %i.i, %i.k, !dbg !21521          ; 3 uses
    #dbg_value(i64 %i.l, !4166, !DIExpression(), !21488)
    #dbg_value(i64 %i.l, !4190, !DIExpression(), !21490)
  %i.m = add i64 %.val3.i, 17, !dbg !21522
    #dbg_value(i64 %i.m, !4191, !DIExpression(), !21490)
  %i.n = add i64 %i.m, %i.l, !dbg !21523          ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l, !dbg !21523
    #dbg_value(i1 %i.o, !4188, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21492)
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o), !dbg !21524
  tail call void @llvm.assume(i1 %i.q), !dbg !21524
    #dbg_value(i64 %.val1.i, !4196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21494)
    #dbg_value(i64 %.val1.i, !4140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21495)
    #dbg_value(i64 %i.n, !4196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21494)
    #dbg_value(i64 %i.n, !4140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21495)
    #dbg_value(i64 %i.l, !4196, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21494)
    #dbg_value(i64 %i.l, !4140, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21495)
  %i.r = icmp ne i64 %.val1.i, 0, !dbg !21525
  tail call void @llvm.assume(i1 %i.r), !dbg !21526
    #dbg_value(i64 %.val1.i, !4128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21496)
end_hunk_0
