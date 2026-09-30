Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.03?download=true
inline.NumInlined: 4814
inline.NumDeleted: 1768
loop-unroll.NumCompletelyUnrolled: 193
loop-unroll.NumUnrolled: 193
begin_hunk_0_@_RNvXs_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5visitNtB6_14FuncTranslatorNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators13VisitOperator9visit_end:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16656
  call void @_RINvMsf_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoderNtB6_9OpEncoder13encode_branchNtNtCs6kx5fqqPdgs_8wasmi_ir2op2OpNvMs7_B1A_B1y_6branchEBe_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.bu, i64 noundef %.val39.i), !noalias !16649
  %i.bw = load i64, ptr %i.g, align 8, !range !26, !noalias !16656, !noundef !10
  %i.bx = trunc nuw i64 %i.bw to i1
  br i1 %i.bx, label %bb.s, label %_RINvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB6_14FuncTranslator16encode_branch_opNvMs7_NtCs6kx5fqqPdgs_8wasmi_ir2opNtB1D_2Op6branchEBc_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !16656, !nonnull !10, !align !15, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16656
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator16translate_end_if.exit

_RINvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB6_14FuncTranslator16encode_branch_opNvMs7_NtCs6kx5fqqPdgs_8wasmi_ir2opNtB1D_2Op6branchEBc_.exit.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16656
  br label %bb.n

bb.t:                                             ; preds = %bb.n
  %i.ca = call noundef align 8 ptr @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack18push_else_operands(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.q) ; 2 uses
  %.not31.i = icmp eq ptr %i.ca, null
  br i1 %.not31.i, label %bb.u, label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator16translate_end_if.exit

bb.u:                                             ; preds = %bb.t
  br i1 %.not29.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.y, %bb.u
  %i.cb = call noundef align 8 ptr @_RINvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB6_5Stack18push_branch_paramsNtNtB6_7control14IfControlFrameEBe_(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.q) ; 2 uses
  %.not33.i = icmp eq ptr %i.cb, null
  br i1 %.not33.i, label %bb.z, label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator16translate_end_if.exit

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !16651
  call void @_RNvMsf_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoderNtB5_9OpEncoder22encode_consume_fuel_op(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.bi)
  %i.cc = load i64, ptr %i.k, align 8, !range !37, !noalias !16651, !noundef !10
  %i.cd = icmp eq i64 %i.cc, 2
  br i1 %i.cd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !16651, !nonnull !10, !align !15, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !16651
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator16translate_end_if.exit

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !16651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !16651
  %i.cg = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 16, i1 false)
  %i.ch = call fastcc noundef align 8 ptr @_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %0, ptr noalias nofree noundef align 4 captures(address) dereferenceable(16) %i.j) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !16651
  %.not32.i = icmp eq ptr %i.ch, null
  br i1 %.not32.i, label %bb.v, label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator16translate_end_if.exit

bb.z:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %.val38.i = load i64, ptr %i.ci, align 8, !alias.scope !16649, !noalias !16648, !noundef !10
  %i.cj = call noundef align 8 ptr @_RNvMsf_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoderNtB5_9OpEncoder9pin_label(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.bi, i64 noundef %.val38.i) ; 2 uses
  %.not34.i = icmp eq ptr %i.cj, null
  br i1 %.not34.i, label %bb.aa, label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator16translate_end_if.exit

bb.aa:                                            ; preds = %bb.z
  store i8 1, ptr %i.ba, align 4, !alias.scope !16648, !noalias !16649
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator16translate_end_if.exit

default.unreachable:                              ; preds = %bb.ah, %bb.l
  unreachable

bb.ab:                                            ; preds = %bb.l
  %i.ck = trunc nuw i8 %i.bb to i1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !16651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.i, ptr noundef nonnull align 8 dereferenceable(120) %i.s, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16658)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 118
  %.val14.i.i = load i8, ptr %i.cl, align 2, !range !9, !alias.scope !16658, !noalias !16659, !noundef !10
  %i.cm = trunc nuw i8 %.val14.i.i to i1
  br i1 %i.cm, label %bb.ac, label %bb.ad

.thread.i:                                        ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !16651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.i, ptr noundef nonnull align 8 dereferenceable(120) %i.s, i64 120, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.i, i64 118
  %.val14.i49.i = load i8, ptr %i.cn, align 2, !range !9, !alias.scope !16660, !noalias !16661, !noundef !10
  %i.co = trunc nuw i8 %.val14.i49.i to i1
  br i1 %i.co, label %.thread54.i, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.ck, label %.thread54.i, label %bb.ae

bb.ad:                                            ; preds = %bb.ae, %.thread.i, %bb.ab
  %.val14.i52.i = phi i8 [ 0, %.thread.i ], [ 1, %bb.ae ], [ 0, %bb.ab ]
  %.sroa.02.050.i = phi i1 [ true, %.thread.i ], [ %.sroa.02.05159.i, %bb.ae ], [ %i.ck, %bb.ab ]
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %.val.i.i = load i64, ptr %i.cq, align 8, !alias.scope !16658, !noalias !16659, !noundef !10
  %i.cr = call noundef align 8 ptr @_RNvMsf_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoderNtB5_9OpEncoder9pin_label(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.cp, i64 noundef %.val.i.i), !noalias !16649 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.cr, null
  br i1 %.not12.i.i, label %bb.ag, label %_RINvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB6_14FuncTranslator29translate_end_if_or_else_onlyNtNtNtB6_5stack7control14IfControlFrameEBc_.exit.i

bb.ae:                                            ; preds = %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.i.i, %bb.ac
  %.sroa.02.05159.i = phi i1 [ true, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.i.i ], [ false, %bb.ac ]
  %i.cs = call noundef align 8 ptr @_RINvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB6_5Stack18push_branch_paramsNtNtB6_7control14IfControlFrameEBe_(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.i), !noalias !16649 ; 2 uses
  %.not11.i.i = icmp eq ptr %i.cs, null
  br i1 %.not11.i.i, label %bb.ad, label %_RINvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB6_14FuncTranslator29translate_end_if_or_else_onlyNtNtNtB6_5stack7control14IfControlFrameEBc_.exit.i

.thread54.i:                                      ; preds = %bb.ac, %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16662
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ct, i64 16, i1 false), !alias.scope !16663, !noalias !16659
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16664)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.f, align 4, !alias.scope !16664, !noalias !16665
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.48.0.copyload.i.i.i = load i16, ptr %.sroa.48.0..sroa_idx.i.i.i, align 4, !alias.scope !16664, !noalias !16665 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %.sroa.5.0.copyload.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i, align 2, !alias.scope !16664, !noalias !16665 ; 3 uses
  %i.cu = icmp eq i16 %.sroa.48.0.copyload.i.i.i, 0
  br i1 %i.cu, label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.i.i, label %bb.af

bb.af:                                            ; preds = %.thread54.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16666
  %.not.i.i.i.i.i = icmp eq i8 %.sroa.5.0.copyload.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8len_regs.exit.i.i.i.i, label %switch.lookup.i.i.i.i.i

switch.lookup.i.i.i.i.i:                          ; preds = %bb.af
  %i.cv = add nsw i8 %.sroa.5.0.copyload.i.i.i, -3
  %i.cw = icmp samesign ugt i8 %.sroa.5.0.copyload.i.i.i, 2
  %narrow.i.i.i.i.i = select i1 %i.cw, i8 %i.cv, i8 2
  %switch.idx.cast.i.i.i.i.i = zext nneg i8 %narrow.i.i.i.i.i to i16
  %switch.offset.i.i.i.i.i = add nuw nsw i16 %switch.idx.cast.i.i.i.i.i, 1
  br label %_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8len_regs.exit.i.i.i.i

_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8len_regs.exit.i.i.i.i: ; preds = %switch.lookup.i.i.i.i.i, %bb.af
  %.sroa.0.0.i.i.i.i.i = phi i16 [ 0, %bb.af ], [ %switch.offset.i.i.i.i.i, %switch.lookup.i.i.i.i.i ]
  call fastcc void @_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator20copy_operands_to_dst(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %0, i32 noundef %.sroa.0.0.copyload.i.i.i, i16 noundef %.sroa.48.0.copyload.i.i.i, i16 noundef %.sroa.0.0.i.i.i.i.i), !noalias !16667
  %i.cx = load i32, ptr %i.e, align 8, !range !12, !noalias !16666, !noundef !10
  %i.cy = trunc nuw i32 %i.cx to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !16666, !nonnull !10, !align !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16666
  br i1 %i.cy, label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.thread.i.i, label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.i.i

_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.thread.i.i: ; preds = %_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8len_regs.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16662
  br label %_RINvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB6_14FuncTranslator29translate_end_if_or_else_onlyNtNtNtB6_5stack7control14IfControlFrameEBc_.exit.i

_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.i.i: ; preds = %_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8len_regs.exit.i.i.i.i, %.thread54.i
  %i.db = call fastcc noundef align 8 ptr @_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator23copy_branch_params_regs(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.f), !noalias !16668 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16662
  %.not.i42.i = icmp eq ptr %i.db, null
  br i1 %.not.i42.i, label %bb.ae, label %_RINvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB6_14FuncTranslator29translate_end_if_or_else_onlyNtNtNtB6_5stack7control14IfControlFrameEBc_.exit.i

bb.ag:                                            ; preds = %bb.ad
  %spec.select.i.i = select i1 %.sroa.02.050.i, i8 1, i8 %.val14.i52.i
  store i8 %spec.select.i.i, ptr %i.ba, align 4, !alias.scope !16669, !noalias !16668
  br label %_RINvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB6_14FuncTranslator29translate_end_if_or_else_onlyNtNtNtB6_5stack7control14IfControlFrameEBc_.exit.i

_RINvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB6_14FuncTranslator29translate_end_if_or_else_onlyNtNtNtB6_5stack7control14IfControlFrameEBc_.exit.i: ; preds = %bb.ag, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.i.i, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.thread.i.i, %bb.ae, %bb.ad
  %.sroa.0.0.i41.i = phi ptr [ null, %bb.ag ], [ %i.db, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.i.i ], [ %i.cs, %bb.ae ], [ %i.cr, %bb.ad ], [ %i.da, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !16651
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator16translate_end_if.exit

_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator16translate_end_if.exit: ; preds = %bb.n, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.thread.i16, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.i14, %bb.q, %bb.s, %bb.t, %bb.v, %bb.x, %bb.y, %bb.z, %bb.aa, %_RINvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB6_14FuncTranslator29translate_end_if_or_else_onlyNtNtNtB6_5stack7control14IfControlFrameEBc_.exit.i
  %.sroa.0.0.i1 = phi ptr [ %i.bs, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.i14 ], [ %i.bj, %bb.n ], [ %i.cf, %bb.x ], [ %i.ca, %bb.t ], [ %i.ch, %bb.y ], [ %i.cb, %bb.v ], [ null, %bb.aa ], [ %.sroa.0.0.i41.i, %_RINvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB6_14FuncTranslator29translate_end_if_or_else_onlyNtNtNtB6_5stack7control14IfControlFrameEBc_.exit.i ], [ %i.br, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.thread.i16 ], [ %i.cj, %bb.z ], [ %i.bv, %bb.q ], [ %i.bz, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.at

bb.ah:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %i.dc, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16671)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.p, i64 52
  %.val.i = load i8, ptr %i.dd, align 4, !range !20, !alias.scope !16671, !noalias !16670, !noundef !10
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 53
  %.val15.i = load i8, ptr %i.de, align 1, !alias.scope !16671, !noalias !16670 ; 2 uses
  switch i8 %.val.i, label %default.unreachable [
    i8 1, label %bb.ai
    i8 2, label %bb.aj
    i8 0, label %bb.ak
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.df = trunc nuw i8 %.val15.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.dc, i64 64, i1 false)
  %i.dg = call fastcc noundef align 8 ptr @_RINvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB6_14FuncTranslator29translate_end_if_or_else_onlyNtNtNtB6_5stack7control16ElseControlFrameEBc_(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %0, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(64) %i.c, i1 noundef zeroext %i.df), !noalias !16671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16672
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18translate_end_else.exit

bb.aj:                                            ; preds = %bb.ah
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.di = load i8, ptr %i.dh, align 4, !range !9, !alias.scope !16670, !noalias !16671, !noundef !10
  %i.dj = trunc nuw i8 %i.di to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.dc, i64 64, i1 false)
  %i.dk = call fastcc noundef align 8 ptr @_RINvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB6_14FuncTranslator29translate_end_if_or_else_onlyNtNtNtB6_5stack7control16ElseControlFrameEBc_(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %0, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(64) %i.b, i1 noundef zeroext %i.dj), !noalias !16671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16672
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18translate_end_else.exit

bb.ak:                                            ; preds = %bb.ah
  %1 = trunc nuw i8 %.val15.i to i1
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 492 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 4, !range !9, !alias.scope !16670, !noalias !16671, !noundef !10
  %i.dn = trunc nuw i8 %i.dm to i1                ; 2 uses
  br i1 %1, label %bb.al, label %2

2:                                                ; preds = %bb.ak
  br i1 %i.dn, label %bb.ao, label %bb.am

bb.al:                                            ; preds = %bb.ak
  br i1 %i.dn, label %bb.ao, label %bb.an

bb.am:                                            ; preds = %2
  %i.do = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %.val16.i17 = load i8, ptr %i.do, align 8, !range !9, !alias.scope !16671, !noalias !16670, !noundef !10
  br label %bb.an

bb.an:                                            ; preds = %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.i32, %bb.am, %bb.al
  %.sroa.03.0.i = phi i8 [ %.val16.i17, %bb.am ], [ 1, %bb.al ], [ 1, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.i32 ]
  %i.dp = call noundef align 8 ptr @_RINvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB6_5Stack18push_branch_paramsNtNtB6_7control16ElseControlFrameEBe_(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.p) ; 2 uses
  %.not13.i = icmp eq ptr %i.dp, null
  br i1 %.not13.i, label %bb.aq, label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18translate_end_else.exit

bb.ao:                                            ; preds = %bb.al, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16672
  %i.dq = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16673)
  %.sroa.0.0.copyload.i.i20 = load i32, ptr %i.d, align 4, !alias.scope !16673, !noalias !16674
  %.sroa.48.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.48.0.copyload.i.i22 = load i16, ptr %.sroa.48.0..sroa_idx.i.i21, align 4, !alias.scope !16673, !noalias !16674 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i23 = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %.sroa.5.0.copyload.i.i24 = load i8, ptr %.sroa.5.0..sroa_idx.i.i23, align 2, !alias.scope !16673, !noalias !16674 ; 3 uses
  %i.dr = icmp eq i16 %.sroa.48.0.copyload.i.i22, 0
  br i1 %i.dr, label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.i32, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16675
  %.not.i.i.i.i25 = icmp eq i8 %.sroa.5.0.copyload.i.i24, -1
  br i1 %.not.i.i.i.i25, label %_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8len_regs.exit.i.i.i30, label %switch.lookup.i.i.i.i26

switch.lookup.i.i.i.i26:                          ; preds = %bb.ap
  %i.ds = add nsw i8 %.sroa.5.0.copyload.i.i24, -3
  %i.dt = icmp samesign ugt i8 %.sroa.5.0.copyload.i.i24, 2
  %narrow.i.i.i.i27 = select i1 %i.dt, i8 %i.ds, i8 2
  %switch.idx.cast.i.i.i.i28 = zext nneg i8 %narrow.i.i.i.i27 to i16
  %switch.offset.i.i.i.i29 = add nuw nsw i16 %switch.idx.cast.i.i.i.i28, 1
  br label %_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8len_regs.exit.i.i.i30

_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8len_regs.exit.i.i.i30: ; preds = %switch.lookup.i.i.i.i26, %bb.ap
  %.sroa.0.0.i.i.i.i31 = phi i16 [ 0, %bb.ap ], [ %switch.offset.i.i.i.i29, %switch.lookup.i.i.i.i26 ]
  call fastcc void @_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator20copy_operands_to_dst(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %0, i32 noundef %.sroa.0.0.copyload.i.i20, i16 noundef %.sroa.48.0.copyload.i.i22, i16 noundef %.sroa.0.0.i.i.i.i31), !noalias !16676
  %i.du = load i32, ptr %i.a, align 8, !range !12, !noalias !16675, !noundef !10
  %i.dv = trunc nuw i32 %i.du to i1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !16675, !nonnull !10, !align !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16675
  br i1 %i.dv, label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.thread.i34, label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.i32

_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.thread.i34: ; preds = %_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8len_regs.exit.i.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16672
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18translate_end_else.exit

_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.i32: ; preds = %_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8len_regs.exit.i.i.i30, %bb.ao
  %i.dy = call fastcc noundef align 8 ptr @_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator23copy_branch_params_regs(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.d), !noalias !16671 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16672
  %.not.i33 = icmp eq ptr %i.dy, null
  br i1 %.not.i33, label %bb.an, label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18translate_end_else.exit

bb.aq:                                            ; preds = %bb.an
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ea = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.val17.i18 = load i64, ptr %i.ea, align 8, !alias.scope !16671, !noalias !16670, !noundef !10
  %i.eb = call noundef align 8 ptr @_RNvMsf_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoderNtB5_9OpEncoder9pin_label(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.dz, i64 noundef %.val17.i18) ; 2 uses
  %.not14.i19 = icmp eq ptr %i.eb, null
  br i1 %.not14.i19, label %bb.ar, label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18translate_end_else.exit

bb.ar:                                            ; preds = %bb.aq
  store i8 %.sroa.03.0.i, ptr %i.dl, align 4, !alias.scope !16670, !noalias !16671
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18translate_end_else.exit

_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18translate_end_else.exit: ; preds = %bb.ai, %bb.aj, %bb.an, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.thread.i34, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.i32, %bb.aq, %bb.ar
  %.sroa.0.1.i = phi ptr [ null, %bb.ar ], [ %i.dk, %bb.aj ], [ %i.dy, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.i32 ], [ %i.dp, %bb.an ], [ %i.dg, %bb.ai ], [ %i.eb, %bb.aq ], [ %i.dx, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.thread.i34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.at

bb.as:                                            ; preds = %bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i16 -1, ptr %i.ec, align 8, !alias.scope !16677
  br label %bb.at

bb.at:                                            ; preds = %bb.a, %bb.as, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18translate_end_else.exit, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator16translate_end_if.exit, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator19translate_end_block.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator19translate_end_block.exit ], [ null, %bb.as ], [ %.sroa.0.0.i1, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator16translate_end_if.exit ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18translate_end_else.exit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noalias noundef align 8 ptr @_RNvXs_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5visitNtB6_14FuncTranslatorNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators13VisitOperator9visit_nop(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(496) %0) unnamed_addr #14 {
bb.a:
  ret ptr null
}

; Function Attrs: cold noreturn nonlazybind uwtable
define noalias noundef nonnull align 8 ptr @_RNvXs_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5visitNtB6_14FuncTranslatorNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators13VisitOperator9visit_try(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(496) %0, i64 %1) unnamed_addr #13 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @286, ptr %i.b, align 8, !noalias !16680
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 3, ptr %i.c, align 8, !noalias !16680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16680
  store ptr %i.b, ptr %i.a, align 8, !noalias !16680
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsefoF4u9kbII_5wasmi, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !16680
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @35, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func2op5storeNtB4_8I64StoreNtB4_7StoreOp22store_mem0_offset16_rs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, i16 noundef %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %1, ptr %i.a, align 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.b, align 4
  store i16 912, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func2op5storeNtB4_8I64StoreNtB4_7StoreOp22store_mem0_offset16_sr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, i32 noundef %1, i16 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %2, ptr %i.b, align 2
  store i16 916, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func2op5storeNtB4_8I64StoreNtB4_7StoreOp22store_mem0_offset16_ss(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 12)) %0, i32 noundef %1, i16 noundef %2, i32 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %2, ptr %i.b, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.c, align 8
  store i16 918, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func2op5storeNtB4_8I64StoreNtB4_7StoreOp8store_ir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 4), (8, 16)) %0, i64 noundef %1, i16 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %2, ptr %i.b, align 2
  store i16 921, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func2op5storeNtB4_8I64StoreNtB4_7StoreOp8store_is(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, i64 noundef %1, i32 noundef %2, i16 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %3, ptr %i.c, align 2
  store i16 922, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func2op5storeNtB4_8I64StoreNtB4_7StoreOp8store_rs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, i64 noundef %1, i32 noundef %2, i16 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %3, ptr %i.c, align 2
  store i16 911, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func2op5storeNtB4_8I64StoreNtB4_7StoreOp8store_sr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, i32 noundef %1, i64 noundef %2, i16 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %3, ptr %i.c, align 2
  store i16 915, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func2op5storeNtB4_8I64StoreNtB4_7StoreOp8store_ss(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 12), (16, 24)) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i16 noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %4, ptr %i.d, align 2
  store i16 917, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func4simd5visitNtB8_14FuncTranslatorNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators17VisitSimdOperator13visit_v128_or(ptr noalias nofree noundef align 8 dereferenceable(496) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc noundef align 8 ptr @_RNvMNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func4simdNtB4_14FuncTranslator21translate_simd_binary(ptr noalias nofree noundef align 8 dereferenceable(496) %0, ptr noundef nonnull @_RNvMs7_NtCs6kx5fqqPdgs_8wasmi_ir2opNtB5_2Op11v128_or_sss, ptr noundef nonnull @_RNvNtCs5zeGauAcNNa_10wasmi_core4simd7v128_or) #27
end_hunk_0
