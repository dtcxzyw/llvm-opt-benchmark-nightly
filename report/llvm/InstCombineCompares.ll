Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstCombineCompares?download=true
inline.NumInlined: 12870
inline.NumDeleted: 4216
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvm12PatternMatch5matchINS_5ValueENS0_8ap_matchINS_7APFloatEEEEEbPT_RKT0_:bb.a
  %i.p = load ptr, ptr %1, align 8, !tbaa !470, !nonnull !89, !align !90
  store ptr %i.o, ptr %i.p, align 8, !tbaa !466
  br label %_ZNK4llvm12PatternMatch8ap_matchINS_7APFloatEE5matchINS_5ValueEEEbPT_.exit

_ZNK4llvm12PatternMatch8ap_matchINS_7APFloatEE5matchINS_5ValueEEEbPT_.exit: ; preds = %bb.b, %bb.c, %bb.d, %.critedge.thread.sink.split.i
  %.4.i = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.b ], [ true, %.critedge.thread.sink.split.i ]
  ret i1 %.4.i
}

declare i16 @_ZNK4llvm8Function15getDenormalModeERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 4 dereferenceable(29)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm12PatternMatch5matchINS_8ConstantENS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEEbPT_RKT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !32
  %i.b = icmp eq i8 %i.a, 7
  br i1 %i.b, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE10match_implINS_8ConstantEEEbPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 254
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.g, 18
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %.split.i, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE5matchINS_8ConstantEEEbPT_.exit

.split.i:                                         ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE11matchVectorEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
  br i1 %i.h, label %bb.c, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE5matchINS_8ConstantEEEbPT_.exit

_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE10match_implINS_8ConstantEEEbPT_.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.l, ptr %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 20
  %i.n = load i8, ptr %i.m, align 4
  %i.o = and i8 %i.n, 7
  %i.p = icmp eq i8 %i.o, 3
  br i1 %i.p, label %bb.c, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE5matchINS_8ConstantEEEbPT_.exit

bb.c:                                             ; preds = %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE10match_implINS_8ConstantEEEbPT_.exit.i, %.split.i
  %i.q = load ptr, ptr %1, align 8, !tbaa !464    ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE5matchINS_8ConstantEEEbPT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.q, align 8, !tbaa !246
  br label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE5matchINS_8ConstantEEEbPT_.exit

_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE5matchINS_8ConstantEEEbPT_.exit: ; preds = %bb.b, %.split.i, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE10match_implINS_8ConstantEEEbPT_.exit.i, %bb.c, %bb.d
  %.1.i5.i = phi i1 [ false, %.split.i ], [ false, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE10match_implINS_8ConstantEEEbPT_.exit.i ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.b ]
  ret i1 %.1.i5.i
}

declare hidden noundef ptr @_ZN4llvm16InstCombinerImpl16FoldOpIntoSelectERNS_11InstructionEPNS_10SelectInstEbb(ptr noundef nonnull align 8 dereferenceable(1240), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL20foldFCmpFSubIntoFCmpRN4llvm8FCmpInstEPNS_11InstructionEPNS_8ConstantERNS_16InstCombinerImplE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(1240) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"struct.llvm::SimplifyQuery", align 8 ; 6 uses
  %5 = alloca %"struct.llvm::SimplifyQuery", align 8 ; 6 uses
  %6 = alloca %"struct.llvm::PatternMatch::cstval_pred_ty.395", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !33
  %i.c = and i16 %i.b, 63
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = and i32 %i.e, 1073741824
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %1, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !131
  br label %_ZNK4llvm4User10getOperandEj.exit57

bb.c:                                             ; preds = %bb.a
  %i.i = and i32 %i.e, 268435455
  %i.j = zext nneg i32 %i.i to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [32 x i8], ptr %1, i64 %i.k
  br label %_ZNK4llvm4User10getOperandEj.exit57

_ZNK4llvm4User10getOperandEj.exit57:              ; preds = %bb.b, %bb.c
  %.in = phi ptr [ %i.h, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr %.in, align 8, !tbaa !99   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.in, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !99   ; 3 uses
  switch i16 %i.c, label %.critedge5 [
    i16 10, label %bb.d
    i16 12, label %bb.d
    i16 14, label %bb.d
    i16 1, label %bb.d
    i16 3, label %bb.d
    i16 5, label %bb.d
    i16 2, label %bb.h
    i16 4, label %bb.h
    i16 6, label %bb.h
    i16 9, label %bb.h
    i16 11, label %bb.h
    i16 13, label %bb.h
  ]

bb.d:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit57, %_ZNK4llvm4User10getOperandEj.exit57, %_ZNK4llvm4User10getOperandEj.exit57, %_ZNK4llvm4User10getOperandEj.exit57, %_ZNK4llvm4User10getOperandEj.exit57, %_ZNK4llvm4User10getOperandEj.exit57
  %i.p = tail call noundef zeroext i1 @_ZNK4llvm11Instruction9hasNoNaNsEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  br i1 %i.p, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call noundef zeroext i1 @_ZNK4llvm11Instruction9hasNoInfsEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #20
  br i1 %i.q, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !tbaa.struct !237
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %0, ptr %i.s, align 8, !tbaa !238, !alias.scope !1641
  %i.t = call noundef zeroext i1 @_ZN4llvm20isKnownNeverInfinityEPKNS_5ValueERKNS_13SimplifyQueryEj(ptr noundef %i.o, ptr noundef nonnull align 8 dereferenceable(59) %4, i32 noundef 0) #19
  br i1 %i.t, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !tbaa.struct !237
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %0, ptr %i.u, align 8, !tbaa !238, !alias.scope !1642
  %i.v = call noundef zeroext i1 @_ZN4llvm20isKnownNeverInfinityEPKNS_5ValueERKNS_13SimplifyQueryEj(ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(59) %5, i32 noundef 0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %i.v, label %bb.h, label %.critedge5

.critedge:                                        ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge, %_ZNK4llvm4User10getOperandEj.exit57, %_ZNK4llvm4User10getOperandEj.exit57, %_ZNK4llvm4User10getOperandEj.exit57, %_ZNK4llvm4User10getOperandEj.exit57, %_ZNK4llvm4User10getOperandEj.exit57, %_ZNK4llvm4User10getOperandEj.exit57
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr null, ptr %6, align 8
  %i.w = load i8, ptr %2, align 8, !tbaa !32
  %i.x = icmp eq i8 %i.w, 7
  br i1 %i.x, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE10match_implINS_8ConstantEEEbPT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = and i32 %i.ab, 254
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ac, 18
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i, label %.sink.split

.split.i.i:                                       ; preds = %bb.i
  %i.ad = call noundef zeroext i1 @_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE11matchVectorEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
  br i1 %i.ad, label %bb.j, label %.sink.split

_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE10match_implINS_8ConstantEEEbPT_.exit.i.i: ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !100
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.af, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ah, ptr %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 20
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = and i8 %i.aj, 7
  %i.al = icmp eq i8 %i.ak, 3
  br i1 %i.al, label %_ZN4llvm12PatternMatch5matchINS_8ConstantENS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEEbPT_RKT0_.exit, label %.sink.split

bb.j:                                             ; preds = %.split.i.i
  %.pre = load ptr, ptr %6, align 8, !tbaa !464   ; 2 uses
  %.not.i.i58 = icmp eq ptr %.pre, null
  br i1 %.not.i.i58, label %_ZN4llvm12PatternMatch5matchINS_8ConstantENS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEEbPT_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %2, ptr %.pre, align 8, !tbaa !246
  br label %_ZN4llvm12PatternMatch5matchINS_8ConstantENS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEEbPT_RKT0_.exit

_ZN4llvm12PatternMatch5matchINS_8ConstantENS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEEbPT_RKT0_.exit: ; preds = %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE10match_implINS_8ConstantEEEbPT_.exit.i.i, %bb.k, %bb.j
  %i.am = call noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !34 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = and i32 %i.aq, 254
  %spec.select.i.i = icmp eq i32 %i.ar, 18
  br i1 %spec.select.i.i, label %bb.l, label %_ZNK4llvm4Type13getScalarTypeEv.exit

bb.l:                                             ; preds = %_ZN4llvm12PatternMatch5matchINS_8ConstantENS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEEbPT_RKT0_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !139
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !140
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit

_ZNK4llvm4Type13getScalarTypeEv.exit:             ; preds = %_ZN4llvm12PatternMatch5matchINS_8ConstantENS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEEbPT_RKT0_.exit, %bb.l
  %.0.i = phi ptr [ %i.au, %bb.l ], [ %i.ao, %_ZN4llvm12PatternMatch5matchINS_8ConstantENS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEEbPT_RKT0_.exit ]
  %i.av = call noundef nonnull align 4 dereferenceable(29) ptr @_ZNK4llvm4Type15getFltSemanticsEv(ptr noundef nonnull align 8 dereferenceable(24) %.0.i) #19
  %i.aw = call i16 @_ZNK4llvm8Function15getDenormalModeERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(140) %i.am, ptr noundef nonnull align 4 dereferenceable(29) %i.av) #19 ; 2 uses
  %7 = and i16 %i.aw, 255
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %.sink.split

_ZNK4llvm12DenormalModeeqES0_.exit:               ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  %9 = icmp eq i16 %i.aw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br i1 %9, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit
  %i.ax = call noundef ptr @_ZN4llvm12InstCombiner14replaceOperandERNS_11InstructionEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %3, ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 0, ptr noundef %i.m) ; 0 uses
  %i.ay = call noundef ptr @_ZN4llvm12InstCombiner14replaceOperandERNS_11InstructionEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %3, ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 1, ptr noundef %i.o) ; 0 uses
  %i.az = call noundef zeroext i1 @_ZNK4llvm11Instruction9hasNoInfsEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #20
  call void @_ZN4llvm11Instruction12setHasNoInfsEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext %i.az) #19
  %i.ba = call noundef zeroext i1 @_ZNK4llvm11Instruction9hasNoNaNsEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #20
  br i1 %i.ba, label %bb.n, label %.critedge5

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm11Instruction12setHasNoNaNsEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true) #19
  br label %.critedge5

.sink.split:                                      ; preds = %bb.i, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE10match_implINS_8ConstantEEEbPT_.exit.i.i, %.split.i.i, %_ZNK4llvm4Type13getScalarTypeEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %_ZNK4llvm12DenormalModeeqES0_.exit
  %i.bb = load i8, ptr %2, align 8, !tbaa !32
  %i.bc = icmp eq i8 %i.bb, 7
  br i1 %i.bc, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = and i32 %i.bg, 254
  %spec.select.i.i.i = icmp eq i32 %i.bh, 18
  br i1 %spec.select.i.i.i, label %bb.q, label %.critedge5

bb.q:                                             ; preds = %bb.p
  %i.bi = call noundef ptr @_ZNK4llvm8Constant13getSplatValueEb(ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext false) #19 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i, label %.critedge5, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !32
  %i.bk = icmp eq i8 %i.bj, 7
  br i1 %i.bk, label %bb.s, label %.critedge5

bb.s:                                             ; preds = %bb.r, %bb.o
  %.sink25.i.i = phi ptr [ %2, %bb.o ], [ %i.bi, %bb.r ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sink25.i.i, i64 24 ; 8 uses
  %i.bm = load i8, ptr %1, align 8, !tbaa !32
  %i.bn = icmp eq i8 %i.bm, 47
  br i1 %i.bn, label %bb.t, label %.critedge5

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds i8, ptr %1, i64 -64
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !99
  %i.bq = icmp eq ptr %i.bp, %2
  br i1 %i.bq, label %bb.u, label %.critedge5

bb.u:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds i8, ptr %1, i64 -32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !99 ; 3 uses
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !32
  switch i8 %i.bt, label %.critedge5 [
    i8 74, label %bb.v
    i8 75, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !99
  %.not.i.not.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.not.i.i.i.i.i, label %.critedge5, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14BinaryOp_matchINS0_14specificval_tyENS_19PatternMatchHelpers16match_combine_orIJNS0_14CastInst_matchINS5_10match_bindINS_5ValueEEENS_10UIToFPInstEEENS7_ISA_NS_10SIToFPInstEEEEEELj17ELb0EEEEEbPT_RKT0_.exit

bb.w:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds i8, ptr %i.bs, i64 -32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !99
  %.not.i.not.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.not.i.i.i.i.i.i, label %.critedge5, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14BinaryOp_matchINS0_14specificval_tyENS_19PatternMatchHelpers16match_combine_orIJNS0_14CastInst_matchINS5_10match_bindINS_5ValueEEENS_10UIToFPInstEEENS7_ISA_NS_10SIToFPInstEEEEEELj17ELb0EEEEEbPT_RKT0_.exit

_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14BinaryOp_matchINS0_14specificval_tyENS_19PatternMatchHelpers16match_combine_orIJNS0_14CastInst_matchINS5_10match_bindINS_5ValueEEENS_10UIToFPInstEEENS7_ISA_NS_10SIToFPInstEEEEEELj17ELb0EEEEEbPT_RKT0_.exit: ; preds = %bb.w, %bb.v
  %i.by = load ptr, ptr %i.bl, align 8, !tbaa !100
  %.not.i.i59 = icmp eq ptr %i.by, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i59, label %_ZNK4llvm7APFloat10isDenormalEv.exit.i, label %.split.i

.split.i:                                         ; preds = %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14BinaryOp_matchINS0_14specificval_tyENS_19PatternMatchHelpers16match_combine_orIJNS0_14CastInst_matchINS5_10match_bindINS_5ValueEEENS_10UIToFPInstEEENS7_ISA_NS_10SIToFPInstEEEEEELj17ELb0EEEEEbPT_RKT0_.exit
  %i.bz = call noundef zeroext i1 @_ZNK4llvm6detail9IEEEFloat10isDenormalEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bl) #19
  br i1 %i.bz, label %.critedge5, label %_ZNK4llvm7APFloat8isNormalEv.exit

_ZNK4llvm7APFloat10isDenormalEv.exit.i:           ; preds = %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14BinaryOp_matchINS0_14specificval_tyENS_19PatternMatchHelpers16match_combine_orIJNS0_14CastInst_matchINS5_10match_bindINS_5ValueEEENS_10UIToFPInstEEENS7_ISA_NS_10SIToFPInstEEEEEELj17ELb0EEEEEbPT_RKT0_.exit
  %i.ca = call noundef zeroext i1 @_ZNK4llvm6detail13DoubleAPFloat10isDenormalEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bl) #19
  br i1 %i.ca, label %.critedge5, label %_ZNK4llvm7APFloat8isNormalEv.exit

_ZNK4llvm7APFloat8isNormalEv.exit:                ; preds = %.split.i, %_ZNK4llvm7APFloat10isDenormalEv.exit.i
  %i.cb = load ptr, ptr %i.bl, align 8, !tbaa !100
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cb, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.cc = getelementptr inbounds nuw i8, ptr %.sink25.i.i, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8
  %.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.cd, ptr %i.bl
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 20
  %i.cf = load i8, ptr %i.ce, align 4             ; 2 uses
  %i.cg = and i8 %i.cf, 6
  %spec.select.i.not.i.i = icmp ne i8 %i.cg, 0
  %i.ch = and i8 %i.cf, 7
  %i.ci = icmp ne i8 %i.ch, 3
  %i.cj = and i1 %spec.select.i.not.i.i, %i.ci
  br i1 %i.cj, label %bb.x, label %.critedge5

bb.x:                                             ; preds = %_ZNK4llvm7APFloat8isNormalEv.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !34
  %i.cm = call noundef i32 @_ZNK4llvm4Type18getFPMantissaWidthEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cl) #19 ; 2 uses
  %.not = icmp eq i32 %i.cm, -1
  br i1 %.not, label %.critedge5, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = load ptr, ptr %i.bl, align 8, !tbaa !100
  %.not.i = icmp eq ptr %i.cn, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = call noundef i32 @_ZN4llvm6detail5ilogbERKNS0_9IEEEFloatE(ptr noundef nonnull align 8 dereferenceable(24) %i.bl) #19
  br label %_ZN4llvm5ilogbERKNS_7APFloatE.exit

bb.aa:                                            ; preds = %bb.y
  %i.cp = call noundef i32 @_ZN4llvm6detail5ilogbERKNS0_13DoubleAPFloatE(ptr noundef nonnull align 8 dereferenceable(24) %i.bl) #19
  br label %_ZN4llvm5ilogbERKNS_7APFloatE.exit

_ZN4llvm5ilogbERKNS_7APFloatE.exit:               ; preds = %bb.z, %bb.aa
  %.0.i60 = phi i32 [ %i.co, %bb.z ], [ %i.cp, %bb.aa ]
  %i.cq = icmp slt i32 %.0.i60, %i.cm
  br i1 %i.cq, label %.critedge53, label %.critedge5

.critedge53:                                      ; preds = %_ZN4llvm5ilogbERKNS_7APFloatE.exit
  %i.cr = load ptr, ptr %i.ck, align 8, !tbaa !34
  %i.cs = call noundef ptr @_ZN4llvm10ConstantFP7getZeroEPNS_4TypeEb(ptr noundef %i.cr, i1 noundef zeroext false) #19
  %i.ct = load i16, ptr %i.a, align 2, !tbaa !33
  %i.cu = and i16 %i.ct, 63
  %i.cv = zext nneg i16 %i.cu to i32
  %i.cw = call noundef i32 @_ZN4llvm7CmpInst19getSwappedPredicateENS0_9PredicateE(i32 noundef %i.cv) #19
  %i.cx = load i16, ptr %i.a, align 2, !tbaa !33
  %i.cy = and i16 %i.cx, -64
  %i.cz = trunc i32 %i.cw to i16
  %i.da = and i16 %i.cz, 63
  %i.db = or disjoint i16 %i.cy, %i.da
  store i16 %i.db, ptr %i.a, align 2, !tbaa !33
  %i.dc = call noundef ptr @_ZN4llvm12InstCombiner14replaceOperandERNS_11InstructionEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %3, ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 0, ptr noundef %i.o) ; 0 uses
  %i.dd = call noundef ptr @_ZN4llvm12InstCombiner14replaceOperandERNS_11InstructionEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %3, ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 1, ptr noundef %i.cs) ; 0 uses
  br label %.critedge5

.critedge5:                                       ; preds = %_ZN4llvm5ilogbERKNS_7APFloatE.exit, %bb.x, %_ZNK4llvm7APFloat8isNormalEv.exit, %bb.q, %bb.r, %bb.p, %bb.s, %bb.t, %bb.u, %bb.w, %bb.v, %_ZNK4llvm7APFloat10isDenormalEv.exit.i, %.split.i, %_ZNK4llvm4User10getOperandEj.exit57, %bb.g, %.critedge53, %bb.m, %bb.n
  %.3 = phi ptr [ %0, %bb.m ], [ %0, %.critedge53 ], [ %0, %bb.n ], [ null, %_ZNK4llvm4User10getOperandEj.exit57 ], [ null, %bb.g ], [ null, %.split.i ], [ null, %_ZNK4llvm7APFloat10isDenormalEv.exit.i ], [ null, %bb.v ], [ null, %bb.w ], [ null, %bb.u ], [ null, %bb.t ], [ null, %bb.s ], [ null, %bb.p ], [ null, %bb.r ], [ null, %bb.q ], [ null, %_ZNK4llvm7APFloat8isNormalEv.exit ], [ null, %bb.x ], [ null, %_ZN4llvm5ilogbERKNS_7APFloatE.exit ]
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL25foldFCmpReciprocalAndZeroRN4llvm8FCmpInstEPNS_11InstructionEPNS_8ConstantE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.llvm::PatternMatch::cstval_pred_ty.395", align 8 ; 6 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !33
  %i.c = and i16 %i.b, 63                         ; 2 uses
  %i.d = zext nneg i16 %i.c to i32
  %i.e = add nsw i16 %i.c, -6
  %or.cond5 = icmp ult i16 %i.e, -4
  br i1 %or.cond5, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_8ap_matchINS_7APFloatEEEEEbPT_RKT0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr null, ptr %3, align 8
  %i.f = load i8, ptr %2, align 8, !tbaa !32
  %i.g = icmp eq i8 %i.f, 7
  br i1 %i.g, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE10match_implINS_8ConstantEEEbPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, 254
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 18
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i, label %_ZN4llvm12PatternMatch5matchINS_8ConstantENS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEEbPT_RKT0_.exit.thread

.split.i.i:                                       ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE11matchVectorEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %2)
  br i1 %i.m, label %bb.d, label %_ZN4llvm12PatternMatch5matchINS_8ConstantENS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEEbPT_RKT0_.exit.thread

_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE10match_implINS_8ConstantEEEbPT_.exit.i.i: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !100
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.q, ptr %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 20
  %i.s = load i8, ptr %i.r, align 4
  %i.t = and i8 %i.s, 7
  %i.u = icmp eq i8 %i.t, 3
  br i1 %i.u, label %.thread, label %_ZN4llvm12PatternMatch5matchINS_8ConstantENS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEEbPT_RKT0_.exit.thread

bb.d:                                             ; preds = %.split.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !464   ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %2, ptr %.pre, align 8, !tbaa !246
  br label %.thread

_ZN4llvm12PatternMatch5matchINS_8ConstantENS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEEbPT_RKT0_.exit.thread: ; preds = %.split.i.i, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE10match_implINS_8ConstantEEEbPT_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_8ap_matchINS_7APFloatEEEEEbPT_RKT0_.exit.thread

.thread:                                          ; preds = %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EE10match_implINS_8ConstantEEEbPT_.exit.i.i, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.v = call noundef zeroext i1 @_ZNK4llvm11Instruction9hasNoInfsEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #20
  br i1 %i.v, label %bb.f, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_8ap_matchINS_7APFloatEEEEEbPT_RKT0_.exit.thread

bb.f:                                             ; preds = %.thread
  %i.w = call noundef zeroext i1 @_ZNK4llvm11Instruction9hasNoInfsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #20
  br i1 %i.w, label %bb.g, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_8ap_matchINS_7APFloatEEEEEbPT_RKT0_.exit.thread

end_hunk_0
begin_hunk_1_@_ZL15foldFCmpFpTruncRN4llvm8FCmpInstERKNS_11InstructionERKNS_8ConstantE:bb.a
  %i.ea = icmp eq i8 %i.dz, 0
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br i1 %i.ea, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call fastcc void @"_ZZL15foldFCmpFpTruncRN4llvm8FCmpInstERKNS_11InstructionERKNS_8ConstantEENK3$_1clERKNS_7APFloatEb"(ptr dead_on_unwind noalias writable align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %13, i1 noundef zeroext %or.cond7)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call fastcc void @"_ZZL15foldFCmpFpTruncRN4llvm8FCmpInstERKNS_11InstructionERKNS_8ConstantEENK3$_0clERKNS_7APFloatERKNS_12fltSemanticsE"(ptr dead_on_unwind noalias writable align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 4 dereferenceable(29) %i.dg)
  %i.eb = load ptr, ptr %18, align 8, !tbaa !100
  %.not.i.i.i.i72 = icmp eq ptr %i.eb, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.ec = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  %.0.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i.i.i72, ptr %i.ed, ptr %18
  %.0.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 20
  %i.ee = load i8, ptr %.0.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.ef = and i8 %i.ee, 6
  %spec.select.i.not = icmp eq i8 %i.ef, 0
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br i1 %spec.select.i.not, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai, %_ZN4llvm7APFloat4nextEb.exit
  %i.eg = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 2) #19 ; 4 uses
  %i.eh = load i32, ptr %i.j, align 4             ; 2 uses
  %i.ei = and i32 %i.eh, 1073741824
  %.not.i.i73 = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i73, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ej = getelementptr inbounds i8, ptr %1, i64 -8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !131
  br label %_ZNK4llvm4User10getOperandEj.exit74

bb.al:                                            ; preds = %bb.aj
  %i.el = and i32 %i.eh, 268435455
  %i.em = zext nneg i32 %i.el to i64
  %i.en = sub nsw i64 0, %i.em
  %i.eo = getelementptr inbounds [32 x i8], ptr %1, i64 %i.en
  br label %_ZNK4llvm4User10getOperandEj.exit74

_ZNK4llvm4User10getOperandEj.exit74:              ; preds = %bb.ak, %bb.al
  %i.ep = phi ptr [ %i.ek, %bb.ak ], [ %i.eo, %bb.al ]
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !99 ; 2 uses
  %i.er = call noundef ptr @_ZN4llvm10ConstantFP3getEPNS_4TypeERKNS_7APFloatE(ptr noundef nonnull %i.v, ptr noundef nonnull align 8 dereferenceable(24) %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.es = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i16 257, ptr %i.es, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !34 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8
  %i.ex = and i32 %i.ew, 254
  %spec.select.i.i.i.i.i.i.i.i.i.i75 = icmp ne i32 %i.ex, 18
  %.not.not9.i.i76 = icmp eq ptr %i.eu, null
  %.not.not.i.i77 = or i1 %.not.not9.i.i76, %spec.select.i.i.i.i.i.i.i.i.i.i75
  %i.ey = load ptr, ptr %i.eu, align 8, !tbaa !112, !nonnull !89, !align !90
  %i.ez = call noundef ptr @_ZN4llvm4Type9getInt1TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ey) #19 ; 2 uses
  br i1 %.not.not.i.i77, label %_ZN4llvm8FCmpInstC2ENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineEPNS_11InstructionE.exit83, label %bb.am

bb.am:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit74
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !133
  %i.fc = load i32, ptr %i.ev, align 8
  %i.fd = and i32 %i.fc, 255
  %i.fe = icmp eq i32 %i.fd, 19
  %.sroa.2.0.insert.shift.i.i.i.i78 = select i1 %i.fe, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i.i79 = zext i32 %i.fb to i64
  %.sroa.0.0.insert.insert.i.i.i.i80 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i78, %.sroa.0.0.insert.ext.i.i.i.i79
  %i.ff = call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef %i.ez, i64 %.sroa.0.0.insert.insert.i.i.i.i80) #19
  br label %_ZN4llvm8FCmpInstC2ENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineEPNS_11InstructionE.exit83

_ZN4llvm8FCmpInstC2ENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineEPNS_11InstructionE.exit83: ; preds = %_ZNK4llvm4User10getOperandEj.exit74, %bb.am
  %.1.i.i81 = phi ptr [ %i.ff, %bb.am ], [ %i.ez, %_ZNK4llvm4User10getOperandEj.exit74 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @_ZN4llvm7CmpInstC2EPNS_4TypeENS_11Instruction8OtherOpsENS0_9PredicateEPNS_5ValueES7_RKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(76) %i.eg, ptr noundef %.1.i.i81, i32 noundef 56, i32 noundef %i.i, ptr noundef nonnull %i.eq, ptr noundef %i.er, ptr noundef nonnull align 8 dereferenceable(34) %19, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %3) #19
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eg, i64 72
  store i32 0, ptr %i.fg, align 4, !tbaa !162
  call void @_ZN4llvm11Instruction11copyIRFlagsEPKNS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(76) %i.eg, ptr noundef nonnull %0, i1 noundef zeroext true) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.an

bb.an:                                            ; preds = %bb.ah, %bb.ai, %_ZN4llvm8FCmpInstC2ENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineEPNS_11InstructionE.exit83
  %.1 = phi ptr [ null, %bb.ai ], [ %i.eg, %_ZN4llvm8FCmpInstC2ENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineEPNS_11InstructionE.exit83 ], [ null, %bb.ah ]
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %_ZN4llvm12PatternMatch5matchIKNS_8ConstantENS0_8ap_matchINS_7APFloatEEEEEbPT_RKT0_.exit.thread

_ZN4llvm12PatternMatch5matchIKNS_8ConstantENS0_8ap_matchINS_7APFloatEEEEEbPT_RKT0_.exit.thread: ; preds = %bb.m, %bb.d, %bb.f, %bb.e, %bb.l, %bb.an, %_ZN4llvm8FCmpInstC2ENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineEPNS_11InstructionE.exit
  %.3 = phi ptr [ null, %bb.d ], [ %i.ai, %_ZN4llvm8FCmpInstC2ENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineEPNS_11InstructionE.exit ], [ null, %bb.l ], [ %.1, %bb.an ], [ null, %bb.m ], [ null, %bb.e ], [ null, %bb.f ]
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL20foldFabsWithFcmpZeroRN4llvm8FCmpInstERNS_16InstCombinerImplE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(1240) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.c, 88
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !99   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.e, align 8, !tbaa !32
  %i.g = icmp eq i8 %i.f, 14
  br i1 %i.g, label %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !258
  %i.j = icmp eq i32 %i.i, 180
  br i1 %i.j, label %bb.d, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

bb.d:                                             ; preds = %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 268435455
  %i.n = zext nneg i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !99   ; 12 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.not.i.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds i8, ptr %0, i64 -32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !99   ; 4 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !32    ; 2 uses
  %i.u = icmp eq i8 %i.t, 7
  br i1 %i.u, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8
  %i.z = and i32 %i.y, 254
  %spec.select.i.i.i = icmp ne i32 %i.z, 18
  %i.aa = icmp ugt i8 %i.t, 22
  %or.cond.i.i = or i1 %i.aa, %spec.select.i.i.i
  br i1 %or.cond.i.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call noundef ptr @_ZNK4llvm8Constant13getSplatValueEb(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i1 noundef zeroext false) #19 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !32
  %i.ad = icmp eq i8 %i.ac, 7
  br i1 %i.ad, label %bb.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

bb.i:                                             ; preds = %bb.h, %bb.e
  %.sink28.i.i = phi ptr [ %i.s, %bb.e ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink28.i.i, i64 24 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !100
  %.not.i.i.i.i32 = icmp eq ptr %i.af, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink28.i.i, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  %.0.i.i.i.i = select i1 %.not.i.i.i.i32, ptr %i.ah, ptr %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = and i8 %i.aj, 15
  %i.al = icmp eq i8 %i.ak, 3
  br i1 %i.al, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i.i.i.i32, label %_ZNK4llvm7APFloat20isSmallestNormalizedEv.exit, label %.split

.split:                                           ; preds = %bb.j
  %i.am = tail call noundef zeroext i1 @_ZNK4llvm6detail9IEEEFloat20isSmallestNormalizedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ae) #19
  br i1 %i.am, label %bb.k, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

_ZNK4llvm7APFloat20isSmallestNormalizedEv.exit:   ; preds = %bb.j
  %i.an = tail call noundef zeroext i1 @_ZNK4llvm6detail13DoubleAPFloat20isSmallestNormalizedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ae) #19
  br i1 %i.an, label %bb.k, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

bb.k:                                             ; preds = %.split, %_ZNK4llvm7APFloat20isSmallestNormalizedEv.exit
  %i.ao = tail call noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !100
  %i.aq = tail call i16 @_ZNK4llvm8Function15getDenormalModeERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(140) %i.ao, ptr noundef nonnull align 4 dereferenceable(29) %i.ap) #19
  %.sroa.3.0.extract.shift = lshr i16 %i.aq, 8
  %i.ar = add nsw i16 %.sroa.3.0.extract.shift, -1
  %or.cond = icmp ult i16 %i.ar, 2
  br i1 %or.cond, label %bb.l, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.at = load i16, ptr %i.as, align 2, !tbaa !33
  %i.au = and i16 %i.at, 63
  switch i16 %i.au, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread [
    i16 4, label %bb.m
    i16 11, label %bb.n
    i16 3, label %bb.o
    i16 12, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.av = tail call fastcc noundef ptr @"_ZZL20foldFabsWithFcmpZeroRN4llvm8FCmpInstERNS_16InstCombinerImplEENK3$_0clEPS0_NS_7CmpInst9PredicateEPNS_5ValueE"(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.q)
  br label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.aw = tail call fastcc noundef ptr @"_ZZL20foldFabsWithFcmpZeroRN4llvm8FCmpInstERNS_16InstCombinerImplEENK3$_0clEPS0_NS_7CmpInst9PredicateEPNS_5ValueE"(ptr noundef %0, i32 noundef 14, ptr noundef nonnull %i.q)
  br label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

bb.o:                                             ; preds = %bb.l
  %i.ax = tail call fastcc noundef ptr @"_ZZL20foldFabsWithFcmpZeroRN4llvm8FCmpInstERNS_16InstCombinerImplEENK3$_0clEPS0_NS_7CmpInst9PredicateEPNS_5ValueE"(ptr noundef %0, i32 noundef 6, ptr noundef nonnull %i.q)
  br label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

bb.p:                                             ; preds = %bb.l
  %i.ay = tail call fastcc noundef ptr @"_ZZL20foldFabsWithFcmpZeroRN4llvm8FCmpInstERNS_16InstCombinerImplEENK3$_0clEPS0_NS_7CmpInst9PredicateEPNS_5ValueE"(ptr noundef %0, i32 noundef 9, ptr noundef nonnull %i.q)
  br label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

bb.q:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 7 uses
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !33 ; 7 uses
  %i.bb = and i16 %i.ba, 63
  switch i16 %i.bb, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread [
    i16 8, label %bb.x
    i16 7, label %bb.x
    i16 2, label %bb.r
    i16 10, label %bb.s
    i16 5, label %bb.t
    i16 13, label %bb.u
    i16 3, label %bb.v
    i16 12, label %bb.w
    i16 1, label %bb.x
    i16 9, label %bb.x
    i16 6, label %bb.x
    i16 14, label %bb.x
  ]

bb.r:                                             ; preds = %bb.q
  %i.bc = and i16 %i.ba, -64
  %i.bd = or disjoint i16 %i.bc, 6
  store i16 %i.bd, ptr %i.az, align 2, !tbaa !33
  %i.be = tail call noundef ptr @_ZN4llvm12InstCombiner14replaceOperandERNS_11InstructionEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %1, ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 0, ptr noundef nonnull %i.q)
  br label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.bf = and i16 %i.ba, -64
  %i.bg = or disjoint i16 %i.bf, 14
  store i16 %i.bg, ptr %i.az, align 2, !tbaa !33
  %i.bh = tail call noundef ptr @_ZN4llvm12InstCombiner14replaceOperandERNS_11InstructionEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %1, ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 0, ptr noundef nonnull %i.q)
  br label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

bb.t:                                             ; preds = %bb.q
  %i.bi = and i16 %i.ba, -64
  %i.bj = or disjoint i16 %i.bi, 1
  store i16 %i.bj, ptr %i.az, align 2, !tbaa !33
  %i.bk = tail call noundef ptr @_ZN4llvm12InstCombiner14replaceOperandERNS_11InstructionEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %1, ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 0, ptr noundef nonnull %i.q)
  br label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

bb.u:                                             ; preds = %bb.q
  %i.bl = and i16 %i.ba, -64
  %i.bm = or disjoint i16 %i.bl, 9
  store i16 %i.bm, ptr %i.az, align 2, !tbaa !33
  %i.bn = tail call noundef ptr @_ZN4llvm12InstCombiner14replaceOperandERNS_11InstructionEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %1, ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 0, ptr noundef nonnull %i.q)
  br label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

bb.v:                                             ; preds = %bb.q
  %i.bo = and i16 %i.ba, -64
  %i.bp = or disjoint i16 %i.bo, 7
  store i16 %i.bp, ptr %i.az, align 2, !tbaa !33
  %i.bq = tail call noundef ptr @_ZN4llvm12InstCombiner14replaceOperandERNS_11InstructionEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %1, ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 0, ptr noundef nonnull %i.q)
  br label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

bb.w:                                             ; preds = %bb.q
  %i.br = and i16 %i.ba, -64
  %i.bs = or disjoint i16 %i.br, 8
  store i16 %i.bs, ptr %i.az, align 2, !tbaa !33
  %i.bt = tail call noundef ptr @_ZN4llvm12InstCombiner14replaceOperandERNS_11InstructionEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %1, ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 0, ptr noundef nonnull %i.q)
  br label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

bb.x:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %i.bu = tail call noundef ptr @_ZN4llvm12InstCombiner14replaceOperandERNS_11InstructionEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %1, ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 0, ptr noundef nonnull %i.q)
  br label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread: ; preds = %_ZNK4llvm7APFloat20isSmallestNormalizedEv.exit, %.split, %bb.l, %bb.k, %bb.q, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.g, %bb.h, %bb.f, %bb.p, %bb.m, %bb.n, %bb.o, %bb.b, %bb.c, %bb.a, %bb.d, %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i.i
  %.4 = phi ptr [ null, %bb.b ], [ null, %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i.i ], [ null, %bb.d ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.q ], [ null, %bb.k ], [ null, %_ZNK4llvm7APFloat20isSmallestNormalizedEv.exit ], [ null, %.split ], [ null, %bb.f ], [ null, %bb.l ], [ %i.bu, %bb.x ], [ %i.be, %bb.r ], [ %i.bh, %bb.s ], [ %i.bk, %bb.t ], [ %i.bn, %bb.u ], [ %i.bq, %bb.v ], [ %i.bt, %bb.w ], [ null, %bb.g ], [ null, %bb.h ], [ %i.ax, %bb.o ], [ %i.aw, %bb.n ], [ %i.av, %bb.m ], [ %i.ay, %bb.p ]
  ret ptr %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL23foldFCmpFAbsFSubIntToFPRN4llvm8FCmpInstERNS_16InstCombinerImplE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(1240) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::APFloat", align 8     ; 7 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.c, 88
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !99   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.e, align 8, !tbaa !32
  %i.g = icmp eq i8 %i.f, 14
  br i1 %i.g, label %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !258
  %i.j = icmp eq i32 %i.i, 180
  br i1 %i.j, label %bb.d, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

bb.d:                                             ; preds = %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 268435455
  %i.n = zext nneg i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !99   ; 6 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.not.i.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds i8, ptr %0, i64 -32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !99   ; 5 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !32    ; 2 uses
  %.not.i.i = icmp eq i8 %i.t, 7
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !100  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, ptr %i.x, ptr %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i, i64 20
  %i.z = load i8, ptr %i.y, align 4               ; 2 uses
  %i.aa = and i8 %i.z, 6
  %spec.select.i.not.i.i.i.i = icmp ne i8 %i.aa, 0
  %i.ab = and i8 %i.z, 7
  %i.ac = icmp ne i8 %i.ab, 3
  %i.ad = and i1 %spec.select.i.not.i.i.i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_11apf_pred_tyINS0_16is_finitenonzeroEEEEEbPT_RKT0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 254
  %spec.select.i.i.i = icmp ne i32 %i.ai, 18
  %i.aj = icmp ugt i8 %i.t, 22
  %or.cond.i.i = or i1 %i.aj, %spec.select.i.i.i
  br i1 %or.cond.i.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = tail call noundef ptr @_ZNK4llvm8Constant13getSplatValueEb(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i1 noundef zeroext true) #19 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !32
  %i.am = icmp eq i8 %i.al, 7
  br i1 %i.am, label %_ZN4llvm16dyn_cast_or_nullINS_10ConstantFPENS_8ConstantEEEDaPT0_.exit.i.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

_ZN4llvm16dyn_cast_or_nullINS_10ConstantFPENS_8ConstantEEEDaPT0_.exit.i.i: ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i.i.i.i24.i.i = icmp eq ptr %i.ao, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %.0.i.i.i.i.i.i25.i.i = select i1 %.not.i.i.i.i.i.i24.i.i, ptr %i.aq, ptr %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i25.i.i, i64 20
  %i.as = load i8, ptr %i.ar, align 4             ; 2 uses
  %i.at = and i8 %i.as, 6
  %spec.select.i.not.i.i26.i.i = icmp ne i8 %i.at, 0
  %i.au = and i8 %i.as, 7
  %i.av = icmp ne i8 %i.au, 3
  %i.aw = and i1 %spec.select.i.not.i.i26.i.i, %i.av
  br i1 %i.aw, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_11apf_pred_tyINS0_16is_finitenonzeroEEEEEbPT_RKT0_.exit, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindIS2_EEEEEEEEEbPT_RKT0_.exit.thread

_ZN4llvm12PatternMatch5matchINS_5ValueENS0_11apf_pred_tyINS0_16is_finitenonzeroEEEEEbPT_RKT0_.exit: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_10ConstantFPENS_8ConstantEEEDaPT0_.exit.i.i, %bb.f
end_hunk_1
