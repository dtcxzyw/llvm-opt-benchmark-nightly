Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64TargetTransformInfo?download=true
inline.NumInlined: 13233
inline.NumDeleted: 4962
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_12OneUse_matchINS_19PatternMatchHelpers10match_bindINS_11InstructionEEEEENS2_INS1_INS2_INS1_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS4_INS_5ValueEEELj31ELb1EEEEES6_Lj29ELb1EEEEELj30ELb1EE5matchIS5_EEbjPT_:bb.a
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !330
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %_ZNK4llvm12PatternMatch12OneUse_matchINS0_14BinaryOp_matchINS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EEEE5matchIS9_EEbPT_.exit.i.i.i23, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_11InstructionEE5matchINS_5ValueEEEbPT_.exit.i.i.i17

_ZNK4llvm12PatternMatch12OneUse_matchINS0_14BinaryOp_matchINS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EEEE5matchIS9_EEbPT_.exit.i.i.i23: ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i.i.i.i16
  %i.bv = tail call noundef zeroext i1 @_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EE5matchIS8_EEbjPT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i32 noundef 31, ptr noundef nonnull %i.bp)
  br i1 %i.bv, label %bb.m, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_11InstructionEE5matchINS_5ValueEEEbPT_.exit.i.i.i17

bb.m:                                             ; preds = %_ZNK4llvm12PatternMatch12OneUse_matchINS0_14BinaryOp_matchINS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EEEE5matchIS9_EEbPT_.exit.i.i.i23
  %i.bw = getelementptr inbounds i8, ptr %i.bg, i64 -32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !72 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !67
  %i.bz = icmp ugt i8 %i.by, 29
  br i1 %i.bz, label %_ZNK4llvm12PatternMatch12OneUse_matchINS0_14BinaryOp_matchINS1_INS2_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EEEEENS8_INS_11InstructionEEELj29ELb1EEEE5matchIS9_EEbPT_.exit24.sink.split, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_11InstructionEE5matchINS_5ValueEEEbPT_.exit.i.i.i17

_ZNK4llvm19PatternMatchHelpers10match_bindINS_11InstructionEE5matchINS_5ValueEEEbPT_.exit.i.i.i17: ; preds = %bb.m, %_ZNK4llvm12PatternMatch12OneUse_matchINS0_14BinaryOp_matchINS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EEEE5matchIS9_EEbPT_.exit.i.i.i23, %_ZNK4llvm5Value9hasOneUseEv.exit.i.i.i.i16, %bb.l
  %i.ca = getelementptr inbounds i8, ptr %i.bg, i64 -32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !72 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !329 ; 2 uses
  %.not.i.i8.i.i.i18 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i8.i.i.i18, label %_ZNK4llvm12PatternMatch12OneUse_matchINS0_14BinaryOp_matchINS1_INS2_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EEEEENS8_INS_11InstructionEEELj29ELb1EEEE5matchIS9_EEbPT_.exit24, label %_ZNK4llvm5Value9hasOneUseEv.exit.i9.i.i.i19

_ZNK4llvm5Value9hasOneUseEv.exit.i9.i.i.i19:      ; preds = %_ZNK4llvm19PatternMatchHelpers10match_bindINS_11InstructionEE5matchINS_5ValueEEEbPT_.exit.i.i.i17
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !330
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZNK4llvm12PatternMatch12OneUse_matchINS0_14BinaryOp_matchINS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EEEE5matchIS9_EEbPT_.exit10.i.i.i20, label %_ZNK4llvm12PatternMatch12OneUse_matchINS0_14BinaryOp_matchINS1_INS2_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EEEEENS8_INS_11InstructionEEELj29ELb1EEEE5matchIS9_EEbPT_.exit24

_ZNK4llvm12PatternMatch12OneUse_matchINS0_14BinaryOp_matchINS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EEEE5matchIS9_EEbPT_.exit10.i.i.i20: ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i9.i.i.i19
  %i.ch = tail call noundef zeroext i1 @_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EE5matchIS8_EEbjPT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i32 noundef 31, ptr noundef nonnull %i.cb)
  br i1 %i.ch, label %bb.n, label %_ZNK4llvm12PatternMatch12OneUse_matchINS0_14BinaryOp_matchINS1_INS2_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EEEEENS8_INS_11InstructionEEELj29ELb1EEEE5matchIS9_EEbPT_.exit24

bb.n:                                             ; preds = %_ZNK4llvm12PatternMatch12OneUse_matchINS0_14BinaryOp_matchINS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EEEE5matchIS9_EEbPT_.exit10.i.i.i20
  %i.ci = load ptr, ptr %i.bo, align 8, !tbaa !72 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !67
  %i.ck = icmp ugt i8 %i.cj, 29
  br i1 %i.ck, label %_ZNK4llvm12PatternMatch12OneUse_matchINS0_14BinaryOp_matchINS1_INS2_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EEEEENS8_INS_11InstructionEEELj29ELb1EEEE5matchIS9_EEbPT_.exit24.sink.split, label %_ZNK4llvm12PatternMatch12OneUse_matchINS0_14BinaryOp_matchINS1_INS2_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EEEEENS8_INS_11InstructionEEELj29ELb1EEEE5matchIS9_EEbPT_.exit24

_ZNK4llvm12PatternMatch12OneUse_matchINS0_14BinaryOp_matchINS1_INS2_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EEEEENS8_INS_11InstructionEEELj29ELb1EEEE5matchIS9_EEbPT_.exit24.sink.split: ; preds = %bb.m, %bb.n, %bb.h, %bb.g
  %.sink.i.i.i22.sink = phi ptr [ %i.as, %bb.h ], [ %i.ah, %bb.g ], [ %i.bx, %bb.m ], [ %i.ci, %bb.n ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !441, !nonnull !37, !align !107
  store ptr %.sink.i.i.i22.sink, ptr %i.cm, align 8, !tbaa !421
  br label %_ZNK4llvm12PatternMatch12OneUse_matchINS0_14BinaryOp_matchINS1_INS2_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EEEEENS8_INS_11InstructionEEELj29ELb1EEEE5matchIS9_EEbPT_.exit24

_ZNK4llvm12PatternMatch12OneUse_matchINS0_14BinaryOp_matchINS1_INS2_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EEEEENS8_INS_11InstructionEEELj29ELb1EEEE5matchIS9_EEbPT_.exit24: ; preds = %_ZNK4llvm12PatternMatch12OneUse_matchINS0_14BinaryOp_matchINS1_INS2_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EEEEENS8_INS_11InstructionEEELj29ELb1EEEE5matchIS9_EEbPT_.exit24.sink.split, %_ZNK4llvm12PatternMatch12OneUse_matchINS_19PatternMatchHelpers10match_bindINS_11InstructionEEEE5matchINS_5ValueEEEbPT_.exit.thread, %bb.i, %_ZNK4llvm5Value9hasOneUseEv.exit.i11, %bb.n, %_ZNK4llvm12PatternMatch12OneUse_matchINS0_14BinaryOp_matchINS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EEEE5matchIS9_EEbPT_.exit10.i.i.i20, %_ZNK4llvm5Value9hasOneUseEv.exit.i9.i.i.i19, %_ZNK4llvm19PatternMatchHelpers10match_bindINS_11InstructionEE5matchINS_5ValueEEEbPT_.exit.i.i.i17, %bb.k, %_ZNK4llvm5Value9hasOneUseEv.exit.i14, %bb.j, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.i ], [ false, %bb.j ], [ false, %_ZNK4llvm5Value9hasOneUseEv.exit.i14 ], [ false, %_ZNK4llvm12PatternMatch12OneUse_matchINS_19PatternMatchHelpers10match_bindINS_11InstructionEEEE5matchINS_5ValueEEEbPT_.exit.thread ], [ false, %_ZNK4llvm5Value9hasOneUseEv.exit.i9.i.i.i19 ], [ false, %_ZNK4llvm19PatternMatchHelpers10match_bindINS_11InstructionEE5matchINS_5ValueEEEbPT_.exit.i.i.i17 ], [ false, %_ZNK4llvm12PatternMatch12OneUse_matchINS0_14BinaryOp_matchINS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EEEE5matchIS9_EEbPT_.exit10.i.i.i20 ], [ false, %bb.k ], [ false, %bb.n ], [ false, %_ZNK4llvm5Value9hasOneUseEv.exit.i11 ], [ true, %_ZNK4llvm12PatternMatch12OneUse_matchINS0_14BinaryOp_matchINS1_INS2_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EEEEENS8_INS_11InstructionEEELj29ELb1EEEE5matchIS9_EEbPT_.exit24.sink.split ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEENS_19PatternMatchHelpers10match_bindINS_5ValueEEELj31ELb1EE5matchIS8_EEbjPT_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %2, align 8, !tbaa !67
  %i.b = zext i8 %i.a to i32
  %i.c = add i32 %1, 30
  %i.d = icmp eq i32 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit19

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %2, i64 -64 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 6 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !67
  %i.h = icmp eq i8 %i.g, 5
  br i1 %i.h, label %bb.c, label %_ZNK4llvm12PatternMatch11is_all_ones7isValueERKNS_5APIntE.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !253  ; 4 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ult i32 %i.k, 65
  br i1 %i.m, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.i, label %.split9.i

.split9.i:                                        ; preds = %bb.d
  %i.n = tail call noundef i32 @_ZNK4llvm5APInt25countTrailingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.i) #31
  %i.o = icmp eq i32 %i.n, %i.k
  br i1 %i.o, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.thread.i, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit

_ZNK4llvm12PatternMatch11is_all_ones7isValueERKNS_5APIntE.exit.i.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !306
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8
  %i.t = and i32 %i.s, 254
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.t, 18
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %.split.i, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit

.split.i:                                         ; preds = %_ZNK4llvm12PatternMatch11is_all_ones7isValueERKNS_5APIntE.exit.i.i
  %i.u = tail call noundef zeroext i1 @_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE11matchVectorEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.f)
  br i1 %i.u, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.thread.i, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit

_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.i: ; preds = %bb.d
  %i.v = load i64, ptr %i.i, align 8, !tbaa !109
  %i.w = sub nuw nsw i32 64, %i.k
  %i.x = zext nneg i32 %i.w to i64
  %i.y = lshr i64 -1, %i.x
  %i.z = icmp eq i64 %i.v, %i.y
  br i1 %i.z, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.thread.i, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit

_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.thread.i: ; preds = %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.i, %.split.i, %.split9.i, %bb.c
  %i.aa = load ptr, ptr %0, align 8, !tbaa !432   ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE5matchINS_5ValueEEEbPT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.thread.i
  store ptr %i.f, ptr %i.aa, align 8, !tbaa !378
  br label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE5matchINS_5ValueEEEbPT_.exit

_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE5matchINS_5ValueEEEbPT_.exit: ; preds = %bb.e, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.thread.i
  %i.ab = getelementptr inbounds i8, ptr %2, i64 -32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !72 ; 2 uses
  %.not.i8.not = icmp eq ptr %i.ac, null
  br i1 %.not.i8.not, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit19.sink.split

_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit: ; preds = %_ZNK4llvm12PatternMatch11is_all_ones7isValueERKNS_5APIntE.exit.i.i, %.split.i, %.split9.i, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.i, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE5matchINS_5ValueEEEbPT_.exit
  %i.ad = getelementptr inbounds i8, ptr %2, i64 -32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !72 ; 6 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !67
  %i.ag = icmp eq i8 %i.af, 5
  br i1 %i.ag, label %bb.f, label %_ZNK4llvm12PatternMatch11is_all_ones7isValueERKNS_5APIntE.exit.i.i9

bb.f:                                             ; preds = %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !253 ; 4 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.thread.i13, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = icmp ult i32 %i.aj, 65
  br i1 %i.al, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.i16, label %.split9.i15

.split9.i15:                                      ; preds = %bb.g
  %i.am = tail call noundef i32 @_ZNK4llvm5APInt25countTrailingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.ah) #31
  %i.an = icmp eq i32 %i.am, %i.aj
  br i1 %i.an, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.thread.i13, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit19

_ZNK4llvm12PatternMatch11is_all_ones7isValueERKNS_5APIntE.exit.i.i9: ; preds = %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !306
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = and i32 %i.ar, 254
  %spec.select.i.i.i.i.i.i.i.i.i.i10 = icmp eq i32 %i.as, 18
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i10, label %.split.i12, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit19

.split.i12:                                       ; preds = %_ZNK4llvm12PatternMatch11is_all_ones7isValueERKNS_5APIntE.exit.i.i9
  %i.at = tail call noundef zeroext i1 @_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE11matchVectorEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ae)
  br i1 %i.at, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.thread.i13, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit19

_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.i16: ; preds = %bb.g
  %i.au = load i64, ptr %i.ah, align 8, !tbaa !109
  %i.av = sub nuw nsw i32 64, %i.aj
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = lshr i64 -1, %i.aw
  %i.ay = icmp eq i64 %i.au, %i.ax
  br i1 %i.ay, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.thread.i13, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit19

_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.thread.i13: ; preds = %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.i16, %.split.i12, %.split9.i15, %bb.f
  %i.az = load ptr, ptr %0, align 8, !tbaa !432   ; 2 uses
  %.not.i14 = icmp eq ptr %i.az, null
  br i1 %.not.i14, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE5matchINS_5ValueEEEbPT_.exit17, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.thread.i13
  store ptr %i.ae, ptr %i.az, align 8, !tbaa !378
  br label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE5matchINS_5ValueEEEbPT_.exit17

_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE5matchINS_5ValueEEEbPT_.exit17: ; preds = %bb.h, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.thread.i13
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !72  ; 2 uses
  %.not.i18.not = icmp eq ptr %i.ba, null
  br i1 %.not.i18.not, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit19, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit19.sink.split

_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit19.sink.split: ; preds = %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE5matchINS_5ValueEEEbPT_.exit17, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE5matchINS_5ValueEEEbPT_.exit
  %.sink = phi ptr [ %i.ac, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE5matchINS_5ValueEEEbPT_.exit ], [ %i.ba, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE5matchINS_5ValueEEEbPT_.exit17 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !697, !nonnull !37, !align !107
  store ptr %.sink, ptr %i.bc, align 8, !tbaa !297
  br label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit19

_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit19: ; preds = %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit19.sink.split, %_ZNK4llvm12PatternMatch11is_all_ones7isValueERKNS_5APIntE.exit.i.i9, %.split.i12, %.split9.i15, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.i16, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE5matchINS_5ValueEEEbPT_.exit17, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %.split.i12 ], [ false, %_ZNK4llvm12PatternMatch11is_all_ones7isValueERKNS_5APIntE.exit.i.i9 ], [ false, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE5matchINS_5ValueEEEbPT_.exit17 ], [ false, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EE10match_implINS_5ValueEEEbPT_.exit.i16 ], [ false, %.split9.i15 ], [ true, %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit19.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i32 } @_ZNK4llvm31TargetTransformInfoImplCRTPBaseINS_14AArch64TTIImplEE10getGEPCostEPNS_4TypeEPKNS_5ValueENS_8ArrayRefIS7_EES4_NS_19TargetTransformInfo14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr %3, i64 %4, ptr noundef %5, i32 noundef %6) unnamed_addr #3 comdat align 2 {
bb.a:
  %7 = alloca %"struct.llvm::TargetLoweringBase::AddrMode", align 8 ; 8 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %11 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %i.a = tail call noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #30 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !67
  %i.c = add i8 %i.b, -14
  %switch.selectcmp.i.i.i.i.i.i.i = icmp ult i8 %i.c, 4 ; 2 uses
  %spec.select.i.i = select i1 %switch.selectcmp.i.i.i.i.i.i.i, ptr %i.a, ptr null ; 2 uses
  %i.d = icmp eq ptr %spec.select.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !283, !nonnull !37, !align !107
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !306
  %i.i = tail call noundef i32 @_ZNK4llvm10DataLayout24getPointerTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.f, ptr noundef %i.h) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 %i.i, ptr %i.j, align 8, !tbaa !253
  %i.k = icmp ult i32 %i.i, 65
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %8, align 8, !tbaa !109
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %8, i64 noundef 0, i1 noundef zeroext false) #30
  br label %_ZN4llvm5APIntC2Ejmbb.exit

_ZN4llvm5APIntC2Ejmbb.exit:                       ; preds = %bb.b, %bb.c
  %i.l = icmp eq i64 %4, 0
  br i1 %i.l, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  %i.m = ptrtoint ptr %1 to i64
  %i.n = or i64 %i.m, 4
  %.idx = shl nuw nsw i64 %4, 3
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  %i.r = select i1 %switch.selectcmp.i.i.i.i.i.i.i, i64 4, i64 0
  br label %.thread113

bb.e:                                             ; preds = %.lr.ph, %_ZN4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEEppEv.exit
  %.044132 = phi i64 [ 0, %.lr.ph ], [ %.4.ph, %_ZN4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEEppEv.exit ] ; 3 uses
  %.047131 = phi ptr [ %3, %.lr.ph ], [ %i.bs, %_ZN4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEEppEv.exit ] ; 5 uses
  %.sroa.8.0127 = phi i64 [ %i.n, %.lr.ph ], [ %.sink.i, %_ZN4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEEppEv.exit ] ; 2 uses
  %i.s = and i64 %.sroa.8.0127, 6                 ; 5 uses
  %i.t = icmp ne i64 %i.s, 4
  %i.u = and i64 %.sroa.8.0127, -7                ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 10 uses
  %.not.not15.i = icmp eq i64 %i.u, 0             ; 5 uses
  %.not.not.i = or i1 %i.t, %.not.not15.i         ; 3 uses
  br i1 %.not.not.i, label %bb.f, label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit

bb.f:                                             ; preds = %bb.e
  %i.w = icmp ne i64 %i.s, 2
  %.not10.not.i = or i1 %i.w, %.not.not15.i
  br i1 %.not10.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !307
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit

bb.h:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %.047131, align 8, !tbaa !297
  %i.aa = call noundef ptr @_ZNK4llvm10StructType14getTypeAtIndexEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef %i.z) #30
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit

_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit: ; preds = %bb.e, %bb.g, %bb.h
  %.2.i = phi ptr [ %i.aa, %bb.h ], [ %i.y, %bb.g ], [ %i.v, %bb.e ] ; 2 uses
  %i.ab = load ptr, ptr %.047131, align 8, !tbaa !297 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !67
  %.not120 = icmp eq i8 %i.ac, 5
  br i1 %.not120, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit
  %i.ad = call noundef ptr @_ZN4llvm13getSplatValueEPKNS_5ValueE(ptr noundef nonnull %i.ab) #30 ; 3 uses
  %.not59 = icmp eq ptr %i.ad, null
  br i1 %.not59, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !67
  %i.af = icmp eq i8 %i.ae, 5
  %spec.select.i.i67 = select i1 %i.af, ptr %i.ad, ptr null
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit
  %.146 = phi ptr [ %i.ab, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit ], [ %spec.select.i.i67, %bb.j ], [ null, %bb.i ] ; 4 uses
  %i.ag = icmp ne i64 %i.s, 0
  %.not60 = or i1 %i.ag, %.not.not15.i
  br i1 %.not60, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.146, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.146, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !253
  %i.ak = icmp ult i32 %i.aj, 65
  %i.al = load ptr, ptr %i.ah, align 8
  %spec.select.i.i69 = select i1 %i.ak, ptr %i.ah, ptr %i.al
  %.0.i.i = load i64, ptr %spec.select.i.i69, align 8, !tbaa !109
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !283, !nonnull !37, !align !107
  %i.an = call noundef ptr @_ZNK4llvm10DataLayout15getStructLayoutEPNS_10StructTypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.am, ptr noundef nonnull %i.v) #30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = and i64 %.0.i.i, 4294967295
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ar = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.ar, label %bb.m, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.57) #32
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.l
  %.sroa.0.0.copyload.i = load i64, ptr %i.aq, align 8
  %i.as = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLEm(ptr noundef nonnull align 8 dereferenceable(12) %8, i64 noundef %.sroa.0.0.copyload.i) #30 ; 0 uses
  br label %bb.x

bb.n:                                             ; preds = %bb.k
  %i.at = call noundef zeroext i1 @_ZNK4llvm4Type12isScalableTyEv(ptr noundef nonnull align 8 dereferenceable(24) %.2.i) #30
  br i1 %i.at, label %.thread113, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !283, !nonnull !37, !align !107 ; 2 uses
  br i1 %.not.not.i, label %bb.p, label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread102

bb.p:                                             ; preds = %bb.o
  %i.av = icmp ne i64 %i.s, 2                     ; 2 uses
  %.not10.not.i.i = or i1 %i.av, %.not.not15.i
  br i1 %.not10.not.i.i, label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i, label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread

_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread: ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !307
  br label %bb.q

_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i: ; preds = %bb.p
  %i.ay = load ptr, ptr %.047131, align 8, !tbaa !297
  %i.az = call noundef ptr @_ZNK4llvm10StructType14getTypeAtIndexEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef %i.ay) #30 ; 2 uses
  br i1 %i.av, label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread102, label %bb.q

bb.q:                                             ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i
  %.2.i.i101 = phi ptr [ %i.ax, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread ], [ %i.az, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i ]
  %i.ba = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.au, ptr noundef %.2.i.i101)
  %.fca.0.extract.i.i.i = extractvalue { i64, i8 } %i.ba, 0
  %i.bb = add i64 %.fca.0.extract.i.i.i, 7
  %i.bc = lshr i64 %i.bb, 3
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE26getSequentialElementStrideERKNS_10DataLayoutE.exit

_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread102: ; preds = %bb.o, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i
  %.2.i.i104 = phi ptr [ %i.az, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i ], [ %i.v, %bb.o ]
  %i.bd = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.au, ptr noundef %.2.i.i104) #30
  %i.be = extractvalue { i64, i8 } %i.bd, 0
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE26getSequentialElementStrideERKNS_10DataLayoutE.exit

_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE26getSequentialElementStrideERKNS_10DataLayoutE.exit: ; preds = %bb.q, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread102
  %.pn.i = phi i64 [ %i.bc, %bb.q ], [ %i.be, %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i.thread102 ] ; 2 uses
  %.not61 = icmp eq ptr %.146, null
  br i1 %.not61, label %bb.w, label %bb.r

bb.r:                                             ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE26getSequentialElementStrideERKNS_10DataLayoutE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.bf = getelementptr inbounds nuw i8, ptr %.146, i64 24
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %10, ptr noundef nonnull align 8 dereferenceable(12) %i.bf, i32 noundef %i.i) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1495)
  %i.bg = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmLEm(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 noundef %.pn.i) #30, !noalias !1495 ; 0 uses
  %i.bh = load i32, ptr %i.q, align 8, !tbaa !253, !noalias !1495
  store i32 %i.bh, ptr %i.p, align 8, !tbaa !253, !alias.scope !1495
  %i.bi = load i64, ptr %10, align 8, !noalias !1495
  store i64 %i.bi, ptr %9, align 8, !alias.scope !1495
  store i32 0, ptr %i.q, align 8, !tbaa !253, !noalias !1495
  %i.bj = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %9) #30 ; 0 uses
  %i.bk = load i32, ptr %i.p, align 8, !tbaa !253
  %i.bl = icmp ugt i32 %i.bk, 64
  br i1 %i.bl, label %bb.s, label %_ZN4llvm5APIntD2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %9, align 8, !tbaa !109   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN4llvm5APIntD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #33
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.r, %bb.s, %bb.t
  %i.bo = load i32, ptr %i.q, align 8, !tbaa !253
  %i.bp = icmp ugt i32 %i.bo, 64
  br i1 %i.bp, label %bb.u, label %_ZN4llvm5APIntD2Ev.exit72

bb.u:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.bq = load ptr, ptr %10, align 8, !tbaa !109  ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN4llvm5APIntD2Ev.exit72, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #33
  br label %_ZN4llvm5APIntD2Ev.exit72

_ZN4llvm5APIntD2Ev.exit72:                        ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.x

bb.w:                                             ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE26getSequentialElementStrideERKNS_10DataLayoutE.exit
  %.not62 = icmp eq i64 %.044132, 0
  br i1 %.not62, label %bb.x, label %.thread113

bb.x:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.w, %_ZN4llvm5APIntD2Ev.exit72
  %.4.ph = phi i64 [ %.pn.i, %bb.w ], [ %.044132, %_ZN4llvm5APIntD2Ev.exit72 ], [ %.044132, %_ZNK4llvm8TypeSizecvmEv.exit ] ; 2 uses
  %i.bs = getelementptr i8, ptr %.047131, i64 8   ; 2 uses
  br i1 %.not.not.i, label %bb.y, label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i76

bb.y:                                             ; preds = %bb.x
  %i.bt = icmp ne i64 %i.s, 2
  %.not10.not.i.i78 = or i1 %i.bt, %.not.not15.i
  br i1 %.not10.not.i.i78, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !307
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i76

bb.aa:                                            ; preds = %bb.y
  %i.bw = load ptr, ptr %.047131, align 8, !tbaa !297
  %i.bx = call noundef ptr @_ZNK4llvm10StructType14getTypeAtIndexEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef %i.bw) #30
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i76

_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i76: ; preds = %bb.aa, %bb.z, %bb.x
  %.2.i.i77 = phi ptr [ %i.bx, %bb.aa ], [ %i.bv, %bb.z ], [ %i.v, %bb.x ] ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.2.i.i77, i64 8
  %i.bz = load i32, ptr %i.by, align 8            ; 2 uses
  %i.ca = and i32 %i.bz, 255                      ; 2 uses
  %i.cb = icmp ne i32 %i.ca, 17
  %.not12.i = icmp eq ptr %.2.i.i77, null         ; 2 uses
  %.not.i = or i1 %.not12.i, %i.cb
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKPKNS_5ValueEE14getIndexedTypeEv.exit.i76
end_hunk_0
