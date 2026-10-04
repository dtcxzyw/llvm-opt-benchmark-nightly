Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.03?download=true
inline.NumInlined: 4814
inline.NumDeleted: 1768
loop-unroll.NumCompletelyUnrolled: 193
loop-unroll.NumUnrolled: 193
begin_hunk_0_@_RNvXs_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5visitNtB6_14FuncTranslatorNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators13VisitOperator10visit_loop:bb.a

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !10, !align !15, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.am = load i64, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false)
  %i.an = call noundef align 8 ptr @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack9push_loop(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %0, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.b, i64 noundef %i.ag, i64 noundef %i.ai, i64 %i.am) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not38 = icmp eq ptr %i.an, null
  br i1 %.not38, label %bb.n, label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.thread

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.thread: ; preds = %_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8len_regs.exit.i.i, %bb.m, %bb.j, %bb.i, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit, %bb.f, %bb.l, %bb.e
  %.sroa.03.1 = phi ptr [ %i.p, %bb.e ], [ %i.ah, %bb.j ], [ %i.t, %bb.f ], [ %i.ad, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit ], [ %i.ae, %bb.i ], [ %i.al, %bb.l ], [ %i.an, %bb.m ], [ %i.ac, %_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8len_regs.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d
}

; Function Attrs: noinline nonlazybind uwtable
define noundef align 8 ptr @_RNvXs_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5visitNtB6_14FuncTranslatorNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators13VisitOperator11visit_block(ptr noalias nofree noundef align 8 dereferenceable(496) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.d = load i8, ptr %i.c, align 4, !range !9, !noundef !10
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef align 8 ptr @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack16push_unreachable(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %0, i8 noundef 0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @_RNvMNtNtCsefoF4u9kbII_5wasmi6engine10block_typeNtB2_9BlockType3new(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, i64 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.i = call noundef i16 @_RNvMNtNtCsefoF4u9kbII_5wasmi6engine10block_typeNtB2_9BlockType10len_params(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
  %i.j = zext i16 %i.i to i64                     ; 2 uses
  %i.k = call fastcc noundef align 8 ptr @_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator19preserve_all_locals(ptr noalias nofree noundef align 8 dereferenceable(496) %0, i64 noundef %i.j) ; 2 uses
  %.not17 = icmp eq ptr %i.k, null
  br i1 %.not17, label %bb.e, label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.h, %bb.g
  %.sroa.03.0 = phi ptr [ %.sroa.03.1, %bb.h ], [ null, %bb.g ], [ %i.f, %bb.b ]
  ret ptr %.sroa.03.0

bb.e:                                             ; preds = %bb.c
  %i.l = call fastcc noundef align 8 ptr @_RNvMs2_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18preserve_temp_regs(ptr noalias nofree noundef align 8 dereferenceable(496) %0, i64 noundef %i.j) ; 2 uses
  %.not18 = icmp eq ptr %i.l, null
  br i1 %.not18, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.n = call noundef i64 @_RNvMsf_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoderNtB5_9OpEncoder9new_label(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  %i.o = call noundef align 8 ptr @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack10push_block(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %0, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.a, i64 noundef %i.n) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not19 = icmp eq ptr %i.o, null
  br i1 %.not19, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.sroa.03.1 = phi ptr [ %i.l, %bb.e ], [ %i.k, %bb.c ], [ %i.o, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d
}

; Function Attrs: noinline nonlazybind uwtable
define noundef align 8 ptr @_RNvXs_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5visitNtB6_14FuncTranslatorNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators13VisitOperator11visit_br_if(ptr noalias nofree noundef align 8 dereferenceable(496) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 4                ; 6 uses
  %i.c = alloca [16 x i8], align 4                ; 8 uses
  %i.d = alloca [16 x i8], align 4                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.h = load i8, ptr %i.g, align 4, !range !9, !noundef !10
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  call fastcc void @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack3pop(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef align 8 dereferenceable(112) %i.j) #26
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.l = load i8, ptr %i.k, align 4, !range !11, !noundef !10
  %i.m = icmp samesign ult i8 %i.l, 7
  br i1 %i.m, label %bb.d, label %_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8is_empty.exit

.sink.split:                                      ; preds = %bb.ae, %bb.e, %bb.d, %bb.aj
  %.sroa.0.0.ph = phi ptr [ null, %bb.aj ], [ %.sroa.0.3, %bb.ae ], [ %i.z, %bb.e ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8
  %i.n = and i64 %.sroa.0.0.copyload, 4294967295
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.sink.split, label %bb.e

_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8is_empty.exit: ; preds = %bb.b
  %i.p = zext i32 %1 to i64                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.q = tail call { i64, ptr } @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack16peek_control_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %0, i64 noundef %i.p)
  %i.r = extractvalue { i64, ptr } %i.q, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  store ptr %i.r, ptr %i.e, align 8
  call void @_RNvXs7_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_15ControlFrameMutNtB5_16ControlFrameBase9branch_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.s = call noundef i64 @_RNvXs7_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_15ControlFrameMutNtB5_16ControlFrameBase5label(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs7_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_15ControlFrameMutNtB5_16ControlFrameBase13branch_params(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val = load i16, ptr %i.t, align 4, !noundef !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %.val29 = load i8, ptr %i.u, align 2, !range !33, !noundef !10 ; 3 uses
  %.not.i = icmp eq i8 %.val29, -1
  %i.v = icmp samesign ugt i8 %.val29, 2
  %i.w = sub nsw i8 2, %.val29
  %i.x = select i1 %i.v, i8 %i.w, i8 -3
  %narrow = select i1 %.not.i, i8 0, i8 %i.x
  %.sroa.0.0.neg.i = sext i8 %narrow to i16
  %i.y = icmp eq i16 %.val, %.sroa.0.0.neg.i
  br i1 %i.y, label %bb.ad, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = tail call noundef align 8 ptr @_RNvXs_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5visitNtB6_14FuncTranslatorNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators13VisitOperator8visit_br(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %0, i32 noundef %1) #27
  br label %.sink.split

bb.f:                                             ; preds = %_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8is_empty.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !6614)
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs0_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stackNtB5_5Stack12peek_control(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %0, i64 noundef range(i64 0, 4294967296) %i.p) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6614
  call void @_RNvXsf_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlFrameNtB5_16ControlFrameBase13branch_params(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = load i16, ptr %i.ab, align 4, !noalias !6614, !noundef !10 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.ae = load i8, ptr %i.ad, align 2, !range !33, !noalias !6614, !noundef !10 ; 3 uses
  %.not37.i = icmp eq i8 %i.ae, -1                ; 2 uses
  br i1 %.not37.i, label %bb.g, label %switch.lookup.i30

switch.lookup.i30:                                ; preds = %bb.f
  %i.af = add nsw i8 %i.ae, -3
  %i.ag = icmp samesign ugt i8 %i.ae, 2
  %narrow.i31 = select i1 %i.ag, i8 %i.af, i8 2   ; 2 uses
  %switch.idx.cast.i32 = zext nneg i8 %narrow.i31 to i16
  %switch.offset.i33 = add i16 %i.ac, 1
  %i.ah = add i16 %switch.offset.i33, %switch.idx.cast.i32 ; 2 uses
  %i.ai = zext i16 %i.ah to i64                   ; 4 uses
  %i.aj = icmp eq i16 %i.ah, 0
  br i1 %i.aj, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvBL_3any5checkB2e_NCB48_s1_0E0E0B3v_EB2q_.exit.thread.i, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.ak = icmp eq i16 %i.ac, 0
  br i1 %i.ak, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvBL_3any5checkB2e_NCB48_s1_0E0E0B3v_EB2q_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = zext i16 %i.ac to i64                   ; 2 uses
  %i.am = call noundef i64 @_RNvXsf_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlFrameNtB5_16ControlFrameBase6height(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aa)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !6614, !noundef !10 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 288230376151711744
  call void @llvm.assume(i1 %i.ap)
  %i.aq = sub nsw i64 %i.ao, %i.al
  %.not.i34 = icmp eq i64 %i.am, %i.aq
  br i1 %.not.i34, label %bb.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvBL_3any5checkB2e_NCB48_s1_0E0E0B3v_EB2q_.exit.i

bb.i:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.h
  %i.ar = phi i64 [ %i.ao, %bb.h ], [ %i.bf, %bb.s ], [ %i.bf, %bb.r ], [ %i.bf, %bb.q ] ; 4 uses
  %.sroa.026.0.i = phi i64 [ 0, %bb.h ], [ 3, %bb.s ], [ 2, %bb.r ], [ 1, %bb.q ] ; 4 uses
  %.sroa.05.0.i = phi i64 [ %i.al, %bb.h ], [ %i.ai, %bb.s ], [ %i.ai, %bb.r ], [ %i.ai, %bb.q ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  %umax.i.i = call i64 @llvm.umax.i64(i64 %.sroa.05.0.i, i64 %.sroa.026.0.i)
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !6614, !nonnull !10 ; 2 uses
  %exitcond.not.i.i95.not = icmp samesign ult i64 %.sroa.026.0.i, %.sroa.05.0.i
  br i1 %exitcond.not.i.i95.not, label %.lr.ph, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copies0NCINvNvBL_3any5checkB2e_NCB48_s_0E0E0B3v_EB2q_.exit.thread.i

bb.j:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_B16_NtB16_14FuncTranslator28requires_branch_param_copies0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB10_NCB30_s_0E0E0B1c_.exit.i.i
  %exitcond.not.i.i = icmp eq i64 %i.av, %umax.i.i
  br i1 %exitcond.not.i.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copies0NCINvNvBL_3any5checkB2e_NCB48_s_0E0E0B3v_EB2q_.exit.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %i.au = phi i64 [ %i.av, %bb.j ], [ %.sroa.026.0.i, %bb.i ] ; 3 uses
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %i.aw = call noundef i64 @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack18depth_to_stack_pos(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.j, i64 noundef %i.au), !noalias !6615
  %i.ax = add i64 %i.aw, -1                       ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %i.ar
  br i1 %i.ay, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %i.ax ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i8, ptr %i.az, align 8, !noalias !6615
  switch i8 %.sroa.0.0.copyload.i.i.i.i.i, label %default.unreachable26.i.i.i.i.i.i [
    i8 0, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copies0NCINvNvBL_3any5checkB2e_NCB48_s_0E0E0B3v_EB2q_.exit.i
    i8 2, label %bb.m
    i8 1, label %bb.l
  ]

default.unreachable26.i.i.i.i.i.i:                ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %.sroa.7.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 2, !noalias !6615
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_B16_NtB16_14FuncTranslator28requires_branch_param_copies0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB10_NCB30_s_0E0E0B1c_.exit.i.i

bb.m:                                             ; preds = %bb.k
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %.sroa.4.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 1, !noalias !6615
  %.sroa.13.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.13.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i, align 8, !noalias !6615
  %.sroa.7.sroa.8.0.extract.shift.i.i.i = lshr i64 %.sroa.13.0.copyload.i.i.i.i.i, 40
  %.sroa.7.sroa.8.0.extract.trunc.i.i.i = trunc i64 %.sroa.7.sroa.8.0.extract.shift.i.i.i to i8
  %i.ba = icmp ne i8 %.sroa.4.0.copyload.i.i.i.i.i, 8
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_B16_NtB16_14FuncTranslator28requires_branch_param_copies0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB10_NCB30_s_0E0E0B1c_.exit.i.i

bb.n:                                             ; preds = %.lr.ph
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #28, !noalias !6615
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_B16_NtB16_14FuncTranslator28requires_branch_param_copies0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB10_NCB30_s_0E0E0B1c_.exit.i.i: ; preds = %bb.m, %bb.l
  %.sroa.7.sroa.8.0.i.i.i = phi i8 [ %.sroa.7.0.copyload.i.i.i.i.i, %bb.l ], [ %.sroa.7.sroa.8.0.extract.trunc.i.i.i, %bb.m ]
  %.sink27.i.i.i.i.i.i = phi i1 [ false, %bb.l ], [ %i.ba, %bb.m ]
  %i.bb = trunc nuw i8 %.sroa.7.sroa.8.0.i.i.i to i1
  %.sroa.0.0.i.i.i.i.i = select i1 %.sink27.i.i.i.i.i.i, i1 true, i1 %i.bb
  br i1 %.sroa.0.0.i.i.i.i.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copies0NCINvNvBL_3any5checkB2e_NCB48_s_0E0E0B3v_EB2q_.exit.i, label %bb.j

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copies0NCINvNvBL_3any5checkB2e_NCB48_s_0E0E0B3v_EB2q_.exit.i: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_B16_NtB16_14FuncTranslator28requires_branch_param_copies0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB10_NCB30_s_0E0E0B1c_.exit.i.i, %bb.k
  %i.bc = icmp samesign ult i64 %i.au, %.sroa.05.0.i
  br i1 %i.bc, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvBL_3any5checkB2e_NCB48_s1_0E0E0B3v_EB2q_.exit.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copies0NCINvNvBL_3any5checkB2e_NCB48_s_0E0E0B3v_EB2q_.exit.thread.i

bb.o:                                             ; preds = %bb.q
  unreachable

bb.p:                                             ; preds = %switch.lookup.i30
  %i.bd = call noundef i64 @_RNvXsf_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12ControlFrameNtB5_16ControlFrameBase6height(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aa)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !6614, !noundef !10 ; 5 uses
  %i.bg = icmp ult i64 %i.bf, 288230376151711744
  call void @llvm.assume(i1 %i.bg)
  %i.bh = sub nsw i64 %i.bf, %i.ai
  %i.bi = icmp ne i64 %i.bd, %i.bh
  %i.bj = icmp ne i16 %i.ac, 0
  %or.cond4.i = and i1 %i.bj, %i.bi
  br i1 %or.cond4.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvBL_3any5checkB2e_NCB48_s1_0E0E0B3v_EB2q_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  switch i8 %narrow.i31, label %bb.o [
    i8 0, label %bb.i
    i8 1, label %bb.r
    i8 2, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  br label %bb.i

bb.s:                                             ; preds = %bb.q
  br label %bb.i

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copies0NCINvNvBL_3any5checkB2e_NCB48_s_0E0E0B3v_EB2q_.exit.thread.i: ; preds = %bb.j, %bb.i, %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copies0NCINvNvBL_3any5checkB2e_NCB48_s_0E0E0B3v_EB2q_.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 160
  br i1 %.not37.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvBL_3any5checkB2e_NCB48_s1_0E0E0B3v_EB2q_.exit.thread.i, label %.lr.ph97

bb.t:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_B16_NtB16_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB10_NCB30_s1_0E0E0B1c_.exit.i.i
  %exitcond.not.i43.i = icmp eq i64 %i.bo, %.sroa.026.0.i
  br i1 %exitcond.not.i43.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvBL_3any5checkB2e_NCB48_s1_0E0E0B3v_EB2q_.exit.thread.i, label %.lr.ph97

.lr.ph97:                                         ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copies0NCINvNvBL_3any5checkB2e_NCB48_s_0E0E0B3v_EB2q_.exit.thread.i, %bb.t
  %i.bn = phi i64 [ %i.bo, %bb.t ], [ 0, %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copies0NCINvNvBL_3any5checkB2e_NCB48_s_0E0E0B3v_EB2q_.exit.thread.i ] ; 2 uses
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %i.bp = call noundef i64 @_RNvMs5_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_12OperandStack18depth_to_stack_pos(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.j, i64 noundef %i.bn), !noalias !6616
  %i.bq = add i64 %i.bp, -1                       ; 3 uses
  %i.br = icmp ult i64 %i.bq, %i.ar
  br i1 %i.br, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %.lr.ph97
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %i.bq ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i44.i = load i8, ptr %i.bs, align 8, !noalias !6616
  %.sroa.4.0..sroa_idx.i.i.i.i45.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %.sroa.4.0.copyload.i.i.i.i46.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i45.i, align 1, !noalias !6616
  %.sroa.4.0.copyload.i.i.fr.i.i.i = freeze i8 %.sroa.4.0.copyload.i.i.i.i46.i ; 3 uses
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.11.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 8, !noalias !6616
  %.sroa.11.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.11.0.copyload.i.i.i.i.i to i32
  switch i8 %.sroa.0.0.copyload.i.i.i.i44.i, label %default.unreachable26.i.i.i.i.i52.i [
    i8 0, label %bb.v
    i8 2, label %_RNCNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB7_14FuncTranslator28requires_branch_param_copiess0_0Bd_.exit.i.i.i
    i8 1, label %_RNCNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB7_14FuncTranslator28requires_branch_param_copiess0_0Bd_.exit.thread.thread35.i.i.i
  ]

bb.v:                                             ; preds = %bb.u
  switch i8 %.sroa.4.0.copyload.i.i.fr.i.i.i, label %default.unreachable26.i.i.i.i.i52.i [
    i8 0, label %bb.y
    i8 1, label %bb.y
    i8 2, label %bb.w
    i8 3, label %bb.x
    i8 4, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvBL_3any5checkB2e_NCB48_s1_0E0E0B3v_EB2q_.exit.i
    i8 5, label %bb.y
    i8 6, label %bb.y
  ]

default.unreachable26.i.i.i.i.i52.i:              ; preds = %bb.v, %bb.u
  unreachable

bb.w:                                             ; preds = %bb.v
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.v, %bb.v, %bb.v
  %.sink.i.i.i.i.i.i = phi i64 [ 36, %bb.x ], [ 20, %bb.w ], [ 4, %bb.v ], [ 4, %bb.v ], [ 4, %bb.v ], [ 4, %bb.v ]
  %.sroa.03.0.in.i.i.i.i.i.i = phi ptr [ %i.bl, %bb.x ], [ %i.bm, %bb.w ], [ %i.bk, %bb.v ], [ %i.bk, %bb.v ], [ %i.bk, %bb.v ], [ %i.bk, %bb.v ]
  %.sroa.03.0.i.i.i.i.i.i = load i32, ptr %.sroa.03.0.in.i.i.i.i.i.i, align 8, !alias.scope !6617, !noalias !6618
  %i.bt = trunc i32 %.sroa.03.0.i.i.i.i.i.i to i1
  br i1 %i.bt, label %bb.z, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvBL_3any5checkB2e_NCB48_s1_0E0E0B3v_EB2q_.exit.i

bb.z:                                             ; preds = %bb.y
  %.sroa.8.0..sroa_idx9.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sink.i.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i.i = load i32, ptr %.sroa.8.0..sroa_idx9.i.i.i.i.i.i, align 4, !alias.scope !6617, !noalias !6618
  %i.bu = icmp eq i32 %.sroa.8.0.i.i.i.i.i.i, %.sroa.11.sroa.0.0.extract.trunc.i.i.i.i.i
  %i.bv = zext i1 %i.bu to i8
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_B16_NtB16_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB10_NCB30_s1_0E0E0B1c_.exit.i.i

_RNCNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB7_14FuncTranslator28requires_branch_param_copiess0_0Bd_.exit.thread.thread35.i.i.i: ; preds = %bb.u
  %.sroa.7.0..sroa_idx.i.i.i.i47.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %.sroa.7.0.copyload.i.i.i.i48.i = load i8, ptr %.sroa.7.0..sroa_idx.i.i.i.i47.i, align 2, !noalias !6616
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_B16_NtB16_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB10_NCB30_s1_0E0E0B1c_.exit.i.i

bb.aa:                                            ; preds = %.lr.ph97
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bq, i64 noundef %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #28, !noalias !6616
  unreachable

_RNCNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB7_14FuncTranslator28requires_branch_param_copiess0_0Bd_.exit.i.i.i: ; preds = %bb.u
  %.sroa.13.0..sroa_idx.i.i.i.i50.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.13.0.copyload.i.i.i.i51.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i50.i, align 8, !noalias !6616 ; 2 uses
  %.sroa.7.sroa.10.0.extract.shift.i.i.i = lshr i64 %.sroa.13.0.copyload.i.i.i.i51.i, 40
  %.sroa.7.sroa.10.0.extract.trunc.i.i.i = trunc i64 %.sroa.7.sroa.10.0.extract.shift.i.i.i to i8
  %i.bw = icmp ugt i8 %.sroa.4.0.copyload.i.i.fr.i.i.i, 6
  br i1 %i.bw, label %_RNCNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB7_14FuncTranslator28requires_branch_param_copiess0_0Bd_.exit.thread.i.i.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvBL_3any5checkB2e_NCB48_s1_0E0E0B3v_EB2q_.exit.i

_RNCNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB7_14FuncTranslator28requires_branch_param_copiess0_0Bd_.exit.thread.i.i.i: ; preds = %_RNCNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB7_14FuncTranslator28requires_branch_param_copiess0_0Bd_.exit.i.i.i
  %.sroa.7.sroa.0.sroa.6.0.extract.shift830.i.i.i = lshr i64 %.sroa.13.0.copyload.i.i.i.i51.i, 8
  %.sroa.7.sroa.0.sroa.6.0.extract.trunc9.i.i.i = trunc i64 %.sroa.7.sroa.0.sroa.6.0.extract.shift830.i.i.i to i8
  switch i8 %.sroa.4.0.copyload.i.i.fr.i.i.i, label %bb.ab [
    i8 7, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_B16_NtB16_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB10_NCB30_s1_0E0E0B1c_.exit.i.i
    i8 8, label %bb.ac
    i8 9, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvBL_3any5checkB2e_NCB48_s1_0E0E0B3v_EB2q_.exit.i
  ]

bb.ab:                                            ; preds = %_RNCNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB7_14FuncTranslator28requires_branch_param_copiess0_0Bd_.exit.thread.i.i.i
  unreachable

bb.ac:                                            ; preds = %_RNCNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB7_14FuncTranslator28requires_branch_param_copiess0_0Bd_.exit.thread.i.i.i
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_B16_NtB16_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB10_NCB30_s1_0E0E0B1c_.exit.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_B16_NtB16_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB10_NCB30_s1_0E0E0B1c_.exit.i.i: ; preds = %bb.ac, %_RNCNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB7_14FuncTranslator28requires_branch_param_copiess0_0Bd_.exit.thread.i.i.i, %_RNCNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB7_14FuncTranslator28requires_branch_param_copiess0_0Bd_.exit.thread.thread35.i.i.i, %bb.z
  %.sroa.0.0.i.i.i.i49.i = phi i8 [ %.sroa.7.0.copyload.i.i.i.i48.i, %_RNCNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB7_14FuncTranslator28requires_branch_param_copiess0_0Bd_.exit.thread.thread35.i.i.i ], [ %.sroa.7.sroa.10.0.extract.trunc.i.i.i, %bb.ac ], [ %i.bv, %bb.z ], [ %.sroa.7.sroa.0.sroa.6.0.extract.trunc9.i.i.i, %_RNCNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB7_14FuncTranslator28requires_branch_param_copiess0_0Bd_.exit.thread.i.i.i ]
  %i.bx = trunc nuw i8 %.sroa.0.0.i.i.i.i49.i to i1
  br i1 %i.bx, label %bb.t, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvBL_3any5checkB2e_NCB48_s1_0E0E0B3v_EB2q_.exit.i

bb.ad:                                            ; preds = %_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8is_empty.exit
  %i.by = call fastcc noundef align 8 ptr @_RNvMs2_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator12encode_br_if(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f, i64 noundef %i.s, i1 noundef zeroext false)
  br label %bb.ae

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvBL_3any5checkB2e_NCB48_s1_0E0E0B3v_EB2q_.exit.thread.i: ; preds = %bb.t, %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copies0NCINvNvBL_3any5checkB2e_NCB48_s_0E0E0B3v_EB2q_.exit.thread.i, %bb.g, %switch.lookup.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6614
  %i.bz = call fastcc noundef align 8 ptr @_RNvMs2_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator12encode_br_if(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f, i64 noundef %i.s, i1 noundef zeroext false)
  br label %bb.ae

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvBL_3any5checkB2e_NCB48_s1_0E0E0B3v_EB2q_.exit.i: ; preds = %bb.v, %bb.y, %_RNCNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB7_14FuncTranslator28requires_branch_param_copiess0_0Bd_.exit.i.i.i, %_RNCNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB7_14FuncTranslator28requires_branch_param_copiess0_0Bd_.exit.thread.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_B16_NtB16_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB10_NCB30_s1_0E0E0B1c_.exit.i.i, %bb.h, %bb.p, %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copies0NCINvNvBL_3any5checkB2e_NCB48_s_0E0E0B3v_EB2q_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6614
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.cb = call noundef i64 @_RNvMsf_NtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func7encoderNtB5_9OpEncoder9new_label(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.ca) ; 2 uses
  %i.cc = call fastcc noundef align 8 ptr @_RNvMs2_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator12encode_br_if(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f, i64 noundef %i.cb, i1 noundef zeroext true) ; 2 uses
  %.not22 = icmp eq ptr %i.cc, null
  br i1 %.not22, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.thread, %bb.ai, %bb.ah, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit, %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvBL_3any5checkB2e_NCB48_s1_0E0E0B3v_EB2q_.exit.i, %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvBL_3any5checkB2e_NCB48_s1_0E0E0B3v_EB2q_.exit.thread.i, %bb.ad
  %.sroa.0.3 = phi ptr [ %i.cm, %bb.ai ], [ %i.bz, %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvBL_3any5checkB2e_NCB48_s1_0E0E0B3v_EB2q_.exit.thread.i ], [ %i.by, %bb.ad ], [ %i.cc, %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvBL_3any5checkB2e_NCB48_s1_0E0E0B3v_EB2q_.exit.i ], [ %i.ck, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit ], [ %i.cl, %bb.ah ], [ %i.cj, %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.sink.split

bb.af:                                            ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperanduINtNtB8_12control_flow11ControlFlowuENCNvMs1_B2k_NtB2k_14FuncTranslator28requires_branch_param_copiess0_0NCINvNvBL_3any5checkB2e_NCB48_s1_0E0E0B3v_EB2q_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !6619)
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 4, !alias.scope !6619, !noalias !6620
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.48.0.copyload.i = load i16, ptr %.sroa.48.0..sroa_idx.i, align 4, !alias.scope !6619, !noalias !6620 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 2, !alias.scope !6619, !noalias !6620 ; 3 uses
  %i.cd = icmp eq i16 %.sroa.48.0.copyload.i, 0
  br i1 %i.cd, label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6621
  %.not.i.i.i = icmp eq i8 %.sroa.5.0.copyload.i, -1
  br i1 %.not.i.i.i, label %_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8len_regs.exit.i.i, label %switch.lookup.i.i.i

switch.lookup.i.i.i:                              ; preds = %bb.ag
  %i.ce = add nsw i8 %.sroa.5.0.copyload.i, -3
  %i.cf = icmp samesign ugt i8 %.sroa.5.0.copyload.i, 2
  %narrow.i.i.i = select i1 %i.cf, i8 %i.ce, i8 2
  %switch.idx.cast.i.i.i = zext nneg i8 %narrow.i.i.i to i16
  %switch.offset.i.i.i = add nuw nsw i16 %switch.idx.cast.i.i.i, 1
  br label %_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8len_regs.exit.i.i

_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8len_regs.exit.i.i: ; preds = %switch.lookup.i.i.i, %bb.ag
  %.sroa.0.0.i.i.i = phi i16 [ 0, %bb.ag ], [ %switch.offset.i.i.i, %switch.lookup.i.i.i ]
  call fastcc void @_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator20copy_operands_to_dst(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %0, i32 noundef %.sroa.0.0.copyload.i, i16 noundef %.sroa.48.0.copyload.i, i16 noundef %.sroa.0.0.i.i.i), !noalias !6622
  %i.cg = load i32, ptr %i.a, align 8, !range !12, !noalias !6621, !noundef !10
  %i.ch = trunc nuw i32 %i.cg to i1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !6621, !nonnull !10, !align !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6621
  br i1 %i.ch, label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.thread, label %_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit

_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit.thread: ; preds = %_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8len_regs.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ae

_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator18copy_branch_params.exit: ; preds = %bb.af, %_RNvMs0_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB5_12BranchParams8len_regs.exit.i.i
  %i.ck = call fastcc noundef align 8 ptr @_RNvMs1_NtNtNtCsefoF4u9kbII_5wasmi6engine10translator4funcNtB5_14FuncTranslator23copy_branch_params_regs(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not23 = icmp eq ptr %i.ck, null
end_hunk_0
