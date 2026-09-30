Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.09?download=true
inline.NumInlined: 1001
inline.NumDeleted: 588
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs6_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB6_12ControlStack7push_ifNtNtB8_8operands14PeekedOperandsEBg_:bb.a
  %.not1.i.i.i = icmp eq i8 %i.t, -1
  br i1 %.not1.i.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperandEINtB2_10SpecExtendBR_NtNtBV_8operands14PeekedOperandsE11spec_extendB13_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !alias.scope !59, !noalias !60, !noundef !5 ; 5 uses
  %i.x = icmp ult i64 %i.w, 384307168202282326
  call void @llvm.assume(i1 %i.x)
  %i.y = load i64, ptr %i.r, align 8, !range !6, !alias.scope !59, !noalias !60, !noundef !5
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperandE7reserveBQ_.exit.i.i.i, label %bb.f

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperandE7reserveBQ_.exit.i.i.i: ; preds = %bb.e
  call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.w, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 24), !noalias !61
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperandE7reserveBQ_.exit.i.i.i, %bb.e
  %i.aa = load ptr, ptr %i.v, align 8, !alias.scope !59, !noalias !60, !nonnull !5, !noundef !5
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !61
  %i.ac = add nuw nsw i64 %i.w, 1
  store i64 %i.ac, ptr %i.u, align 8, !alias.scope !59, !noalias !60
  call void @_RNvXsb_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operandsNtB5_14PeekedOperandsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !61
  %i.ad = load i8, ptr %i.s, align 4, !range !7, !noalias !58, !noundef !5
  %.not.i.i.i = icmp eq i8 %i.ad, -1
  br i1 %.not.i.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperandEINtB2_10SpecExtendBR_NtNtBV_8operands14PeekedOperandsE11spec_extendB13_.exit.i, label %bb.e

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperandEINtB2_10SpecExtendBR_NtNtBV_8operands14PeekedOperandsE11spec_extendB13_.exit.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !51, !noalias !61, !noundef !5 ; 2 uses
  %i.ag = icmp ult i64 %i.af, 384307168202282326
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !62, !noalias !61, !noundef !5 ; 3 uses
  %i.aj = load i64, ptr %i.q, align 8, !range !6, !alias.scope !62, !noalias !61, !noundef !5
  %i.ak = icmp eq i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.g, label %_RINvMs4_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB6_12ElseOperands4pushNtNtB8_8operands14PeekedOperandsEBg_.exit

bb.g:                                             ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperandEINtB2_10SpecExtendBR_NtNtBV_8operands14PeekedOperandsE11spec_extendB13_.exit.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q) #25, !noalias !61
  br label %_RINvMs4_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB6_12ElseOperands4pushNtNtB8_8operands14PeekedOperandsEBg_.exit

_RINvMs4_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB6_12ElseOperands4pushNtNtB8_8operands14PeekedOperandsEBg_.exit: ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7operand7OperandEINtB2_10SpecExtendBR_NtNtBV_8operands14PeekedOperandsE11spec_extendB13_.exit.i, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !62, !noalias !61, !nonnull !5, !noundef !5
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ai
  store i64 %i.af, ptr %i.an, align 8, !noalias !61
  %i.ao = add i64 %i.ai, 1
  store i64 %i.ao, ptr %i.ah, align 8, !alias.scope !62, !noalias !61
  br label %bb.h

bb.h:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7control12ControlFrameE8push_mutBR_.exit, %_RINvMs4_NtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack7controlNtB6_12ElseOperands4pushNtNtB8_8operands14PeekedOperandsEBg_.exit
  store i64 %5, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %6, ptr %i.ap, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9FmeSmcCnTG_10wasmparser9validator9operators9MaybeTypeE5drainNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsefoF4u9kbII_5wasmi(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands8StackPosEE14extend_trustedINtNtNtNtBL_4iter7sources8repeat_n7RepeatNBG_EEB1u_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !75, !noundef !5 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !6, !alias.scope !75, !noundef !5
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands8StackPosEE7reserveB1s_.exit.thread, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands8StackPosEE7reserveB1s_.exit, !prof !4

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands8StackPosEE7reserveB1s_.exit.thread: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 8)
  %.pre = load i64, ptr %i.a, align 8
  br label %.lr.ph.i.i.preheader

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands8StackPosEE7reserveB1s_.exit: ; preds = %bb.a
  %.not.i12.i.i = icmp eq i64 %1, 0
  br i1 %.not.i12.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands8StackPosEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3v_3VecBZ_E14extend_trustedB3_E0EB1x_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands8StackPosEE7reserveB1s_.exit.thread, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands8StackPosEE7reserveB1s_.exit
  %i.f = phi i64 [ %.pre, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands8StackPosEE7reserveB1s_.exit.thread ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands8StackPosEE7reserveB1s_.exit ] ; 3 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %.in, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  %i.h = add i64 %i.f, %n.vec                     ; 2 uses
  %i.i = and i64 %1, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %i.g, i64 %i.f
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.k, align 8, !noalias !76
  store <2 x i64> %broadcast.splat, ptr %i.l, align 8, !noalias !76
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands8StackPosEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3v_3VecBZ_E14extend_trustedB3_E0EB1x_.exit, label %.lr.ph.i.i.preheader7

.lr.ph.i.i.preheader7:                            ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.ph = phi i64 [ %i.f, %.lr.ph.i.i.preheader ], [ %i.h, %middle.block ]
  %.sroa.0.013.i.i.ph = phi i64 [ %1, %.lr.ph.i.i.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader7, %.lr.ph.i.i
  %i.n = phi i64 [ %i.q, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader7 ] ; 2 uses
  %.sroa.0.013.i.i = phi i64 [ %i.o, %.lr.ph.i.i ], [ %.sroa.0.013.i.i.ph, %.lr.ph.i.i.preheader7 ]
  %i.o = add i64 %.sroa.0.013.i.i, -1             ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  store i64 %2, ptr %i.p, align 8, !noalias !76
  %i.q = add i64 %i.n, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands8StackPosEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3v_3VecBZ_E14extend_trustedB3_E0EB1x_.exit, label %.lr.ph.i.i, !llvm.loop !74

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands8StackPosEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3v_3VecBZ_E14extend_trustedB3_E0EB1x_.exit: ; preds = %.lr.ph.i.i, %middle.block, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands8StackPosEE7reserveB1s_.exit
  %.val6.i.i = phi i64 [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator4func5stack8operands8StackPosEE7reserveB1s_.exit ], [ %i.h, %middle.block ], [ %i.q, %.lr.ph.i.i ]
  store i64 %.val6.i.i, ptr %i.a, align 8, !noalias !79
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter7sources8repeat_n7RepeatNBG_EECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 %1, i8 noundef range(i8 -1, 7) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i8 %2, -1                   ; 2 uses
  %.sroa.0.0.i.i = select i1 %.not.i.i, i64 0, i64 %1 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !90, !noundef !5 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !6, !alias.scope !90, !noundef !5
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %.sroa.0.0.i.i, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE7reserveCsefoF4u9kbII_5wasmi.exit, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i.i, i64 noundef 1, i64 noundef 1)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE7reserveCsefoF4u9kbII_5wasmi.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE7reserveCsefoF4u9kbII_5wasmi.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  br i1 %.not.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources8repeat_n7RepeatNNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2y_3VecBZ_E14extend_trustedB3_E0ECsefoF4u9kbII_5wasmi.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE7reserveCsefoF4u9kbII_5wasmi.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %scevgep.i = getelementptr i8, ptr %i.h, i64 %i.f
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 range(i8 -1, 7) %2, i64 %1, i1 false), !noalias !91
  %i.i = add i64 %i.f, %1
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources8repeat_n7RepeatNNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2y_3VecBZ_E14extend_trustedB3_E0ECsefoF4u9kbII_5wasmi.exit

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources8repeat_n7RepeatNNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2y_3VecBZ_E14extend_trustedB3_E0ECsefoF4u9kbII_5wasmi.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE7reserveCsefoF4u9kbII_5wasmi.exit, %.lr.ph.i.preheader.i
  %.val6.i.i = phi i64 [ %i.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE7reserveCsefoF4u9kbII_5wasmi.exit ], [ %i.i, %.lr.ph.i.preheader.i ]
  store i64 %.val6.i.i, ptr %i.a, align 8, !noalias !92
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs9FmeSmcCnTG_10wasmparser9validator9operators9MaybeTypeE14extend_trustedINtNtCskKLDkoKarTP_4core6option8IntoIterBG_EECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i32 %1, 255
  %i.b = icmp ne i32 %i.a, 255                    ; 2 uses
  %i.c = zext i1 %i.b to i64                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !103, !noundef !5 ; 3 uses
  %i.f = load i64, ptr %0, align 8, !range !6, !alias.scope !103, !noundef !5
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ult i64 %i.g, %i.c
  br i1 %i.h, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs9FmeSmcCnTG_10wasmparser9validator9operators9MaybeTypeE7reserveCsefoF4u9kbII_5wasmi.exit, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %i.c, i64 noundef 1, i64 noundef 4)
  %.pre = load i64, ptr %i.d, align 8
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs9FmeSmcCnTG_10wasmparser9validator9operators9MaybeTypeE7reserveCsefoF4u9kbII_5wasmi.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs9FmeSmcCnTG_10wasmparser9validator9operators9MaybeTypeE7reserveCsefoF4u9kbII_5wasmi.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  br i1 %i.b, label %.lr.ph.split.us.i.i, label %_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterNtNtNtCs9FmeSmcCnTG_10wasmparser9validator9operators9MaybeTypeENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2F_3VecBH_E14extend_trustedB3_E0ECsefoF4u9kbII_5wasmi.exit

.lr.ph.split.us.i.i:                              ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs9FmeSmcCnTG_10wasmparser9validator9operators9MaybeTypeE7reserveCsefoF4u9kbII_5wasmi.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i
  store i32 %1, ptr %i.l, align 1, !noalias !104
  %i.m = add i64 %i.i, 1
  br label %_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterNtNtNtCs9FmeSmcCnTG_10wasmparser9validator9operators9MaybeTypeENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2F_3VecBH_E14extend_trustedB3_E0ECsefoF4u9kbII_5wasmi.exit

_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterNtNtNtCs9FmeSmcCnTG_10wasmparser9validator9operators9MaybeTypeENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB2F_3VecBH_E14extend_trustedB3_E0ECsefoF4u9kbII_5wasmi.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs9FmeSmcCnTG_10wasmparser9validator9operators9MaybeTypeE7reserveCsefoF4u9kbII_5wasmi.exit, %.lr.ph.split.us.i.i
  %.val16.i.i = phi i64 [ %i.m, %.lr.ph.split.us.i.i ], [ %i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs9FmeSmcCnTG_10wasmparser9validator9operators9MaybeTypeE7reserveCsefoF4u9kbII_5wasmi.exit ]
  store i64 %.val16.i.i, ptr %i.d, align 8, !noalias !105
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsefoF4u9kbII_5wasmi8instance5cache18AnyHandleAndEntityE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1X_INtNtB21_6cloned6ClonedINtNtNtB25_5slice4iter4IterNtNtBM_4func4FuncEENvYNtNtBK_6handle9AnyHandleINtNtB25_7convert4FromB3D_E4fromENvMs3_BI_BG_3newEEBM_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsefoF4u9kbII_5wasmi4func4FuncEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !108, !noundef !5 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !6, !alias.scope !108, !noundef !5
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi8instance5cache18AnyHandleAndEntityE7reserveBK_.exit, !prof !4

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 16)
  %.pre = load i64, ptr %i.j, align 8
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi8instance5cache18AnyHandleAndEntityE7reserveBK_.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi8instance5cache18AnyHandleAndEntityE7reserveBK_.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %i.r, align 8
  store ptr %i.j, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.s, align 8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtCsefoF4u9kbII_5wasmi4func4FuncEENvYNtNtNtB1R_8instance6handle9AnyHandleINtNtBc_7convert4FromB1N_E4fromENvMs3_NtB2u_5cacheNtB3C_18AnyHandleAndEntity3newENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4j_8for_each4callB3O_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5z_3VecB3O_E14extend_trustedBN_E0E0EB1R_(ptr noundef nonnull %1, ptr noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsefoF4u9kbII_5wasmi8instance5cache18AnyHandleAndEntityE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1X_INtNtB21_6cloned6ClonedINtNtNtB25_5slice4iter4IterNtNtBM_5table5TableEENvYNtNtBK_6handle9AnyHandleINtNtB25_7convert4FromB3D_E4fromENvMs3_BI_BG_3newEEBM_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsefoF4u9kbII_5wasmi5table5TableEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !111, !noundef !5 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !6, !alias.scope !111, !noundef !5
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi8instance5cache18AnyHandleAndEntityE7reserveBK_.exit, !prof !4

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 16)
  %.pre = load i64, ptr %i.j, align 8
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi8instance5cache18AnyHandleAndEntityE7reserveBK_.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi8instance5cache18AnyHandleAndEntityE7reserveBK_.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %i.r, align 8
  store ptr %i.j, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.s, align 8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtCsefoF4u9kbII_5wasmi5table5TableEENvYNtNtNtB1R_8instance6handle9AnyHandleINtNtBc_7convert4FromB1N_E4fromENvMs3_NtB2w_5cacheNtB3E_18AnyHandleAndEntity3newENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4l_8for_each4callB3Q_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5B_3VecB3Q_E14extend_trustedBN_E0E0EB1R_(ptr noundef nonnull %1, ptr noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsefoF4u9kbII_5wasmi8instance5cache18AnyHandleAndEntityE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1X_INtNtB21_6cloned6ClonedINtNtNtB25_5slice4iter4IterNtNtBM_6global6GlobalEENvYNtNtBK_6handle9AnyHandleINtNtB25_7convert4FromB3D_E4fromENvMs3_BI_BG_3newEEBM_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsefoF4u9kbII_5wasmi6global6GlobalEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !114, !noundef !5 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !6, !alias.scope !114, !noundef !5
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi8instance5cache18AnyHandleAndEntityE7reserveBK_.exit, !prof !4

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 16)
  %.pre = load i64, ptr %i.j, align 8
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi8instance5cache18AnyHandleAndEntityE7reserveBK_.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi8instance5cache18AnyHandleAndEntityE7reserveBK_.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %i.r, align 8
  store ptr %i.j, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.s, align 8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtCsefoF4u9kbII_5wasmi6global6GlobalEENvYNtNtNtB1R_8instance6handle9AnyHandleINtNtBc_7convert4FromB1N_E4fromENvMs3_NtB2y_5cacheNtB3G_18AnyHandleAndEntity3newENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4n_8for_each4callB3S_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5D_3VecB3S_E14extend_trustedBN_E0E0EB1R_(ptr noundef nonnull %1, ptr noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsefoF4u9kbII_5wasmi8instance5cache18AnyHandleAndEntityE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB1X_INtNtB21_6cloned6ClonedINtNtNtB25_5slice4iter4IterNtNtBM_6memory6MemoryEENvYNtNtBK_6handle9AnyHandleINtNtB25_7convert4FromB3D_E4fromENvMs3_BI_BG_3newEEBM_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsefoF4u9kbII_5wasmi6memory6MemoryEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !117, !noundef !5 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !6, !alias.scope !117, !noundef !5
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi8instance5cache18AnyHandleAndEntityE7reserveBK_.exit, !prof !4

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 16)
  %.pre = load i64, ptr %i.j, align 8
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi8instance5cache18AnyHandleAndEntityE7reserveBK_.exit

end_hunk_0
