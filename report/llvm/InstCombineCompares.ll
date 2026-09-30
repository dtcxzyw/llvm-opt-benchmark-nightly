Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstCombineCompares?download=true
inline.NumInlined: 12870
inline.NumDeleted: 4216
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvm16InstCombinerImpl21foldICmpXorShiftConstERNS_8ICmpInstEPNS_14BinaryOperatorERKNS_5APIntE:bb.a
bb.i:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.af = load ptr, ptr %6, align 8, !tbaa !100   ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN4llvm5APIntD2Ev.exit.thread76, label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit.thread76:                 ; preds = %bb.i
  store i64 %i.ac, ptr %6, align 8
  store i32 %i.ab, ptr %i.g, align 8, !tbaa !94
  br label %_ZN4llvm5APIntaSERKS0_.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.af) #21
  %.pr.pre = load i32, ptr %i.z, align 8, !tbaa !94
  %i.ah = icmp ugt i32 %.pr.pre, 64
  store i64 %i.ac, ptr %6, align 8
  store i32 %i.ab, ptr %i.g, align 8, !tbaa !94
  br i1 %i.ah, label %bb.j, label %_ZN4llvm5APIntaSERKS0_.exit

bb.j:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.ai = load ptr, ptr %7, align 8, !tbaa !100   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN4llvm5APIntaSERKS0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #21
  br label %_ZN4llvm5APIntaSERKS0_.exitthread-pre-split

_ZN4llvm5APIntaSERKS0_.exitthread-pre-split:      ; preds = %bb.c, %bb.k
  %.pr44 = load i32, ptr %i.g, align 8, !tbaa !94
  br label %_ZN4llvm5APIntaSERKS0_.exit

_ZN4llvm5APIntaSERKS0_.exit:                      ; preds = %_ZN4llvm5APIntD2Ev.exit.thread76, %_ZN4llvm5APIntaSERKS0_.exitthread-pre-split, %bb.j, %_ZN4llvm5APIntD2Ev.exit, %_ZN4llvm5APIntD2Ev.exit.thread
  %i.ak = phi i32 [ %.pr44, %_ZN4llvm5APIntaSERKS0_.exitthread-pre-split ], [ %i.ab, %bb.j ], [ %i.ab, %_ZN4llvm5APIntD2Ev.exit ], [ %i.ab, %_ZN4llvm5APIntD2Ev.exit.thread ], [ %i.ab, %_ZN4llvm5APIntD2Ev.exit.thread76 ]
  %i.al = icmp ult i32 %i.ak, 65
  br i1 %i.al, label %thread-pre-split, label %.split47

thread-pre-split:                                 ; preds = %_ZN4llvm5APIntaSERKS0_.exit
  %.pr45 = load i64, ptr %6, align 8, !tbaa !100
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split, %_ZN4llvm5APIntaSERKS0_.exit.thread
  %i.am = phi i64 [ %.pr45, %thread-pre-split ], [ %i.k, %_ZN4llvm5APIntaSERKS0_.exit.thread ]
  %i.an = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.am)
  %or.cond = icmp eq i64 %i.an, 1
  br i1 %or.cond, label %bb.m, label %_ZN4llvm5APIntD2Ev.exit30

.split47:                                         ; preds = %_ZN4llvm5APIntaSERKS0_.exit
  %i.ao = call noundef zeroext i1 @_ZNK4llvm5APInt18isPowerOf2SlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %6) #20
  br i1 %i.ao, label %bb.m, label %_ZNK4llvm5APInt10isMaxValueEv.exit.thread.thread80

bb.m:                                             ; preds = %bb.l, %.split47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.ap = ptrtoint ptr %i.a to i64                ; 2 uses
  store i64 %i.ap, ptr %8, align 8, !tbaa !269
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ap, ptr %.sroa.437.0..sroa_idx, align 8, !tbaa !269
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.b, ptr %.sroa.538.0..sroa_idx, align 8, !tbaa !279
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %.sroa.639.0..sroa_idx, align 8, !tbaa !236
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !120 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i18, label %_ZN4llvm12PatternMatch5matchINS_14BinaryOperatorENS0_12OneUse_matchINS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS4_INS5_14match_deferredIS7_EENS0_8ap_matchINS_5APIntEEELj28ELb0EEELj31ELb1EEEEEEEbPT_RKT0_.exit.thread, label %_ZNK4llvm5Value9hasOneUseEv.exit.i.i

_ZNK4llvm5Value9hasOneUseEv.exit.i.i:             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !141
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN4llvm12PatternMatch5matchINS_14BinaryOperatorENS0_12OneUse_matchINS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS4_INS5_14match_deferredIS7_EENS0_8ap_matchINS_5APIntEEELj28ELb0EEELj31ELb1EEEEEEEbPT_RKT0_.exit, label %_ZN4llvm12PatternMatch5matchINS_14BinaryOperatorENS0_12OneUse_matchINS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS4_INS5_14match_deferredIS7_EENS0_8ap_matchINS_5APIntEEELj28ELb0EEELj31ELb1EEEEEEEbPT_RKT0_.exit.thread

_ZN4llvm12PatternMatch5matchINS_14BinaryOperatorENS0_12OneUse_matchINS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS4_INS5_14match_deferredIS7_EENS0_8ap_matchINS_5APIntEEELj28ELb0EEELj31ELb1EEEEEEEbPT_RKT0_.exit.thread: ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %_ZNK4llvm5APInt10isMaxValueEv.exit.thread

_ZN4llvm12PatternMatch5matchINS_14BinaryOperatorENS0_12OneUse_matchINS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS4_INS5_14match_deferredIS7_EENS0_8ap_matchINS_5APIntEEELj28ELb0EEELj31ELb1EEEEEEEbPT_RKT0_.exit: ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i.i
  %i.av = call noundef zeroext i1 @_ZNK4llvm12PatternMatch14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS1_INS2_14match_deferredIS4_EENS0_8ap_matchINS_5APIntEEELj28ELb0EEELj31ELb1EE5matchINS_14BinaryOperatorEEEbjPT_(ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 31, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br i1 %i.av, label %bb.n, label %_ZNK4llvm5APInt10isMaxValueEv.exit.thread

bb.n:                                             ; preds = %_ZN4llvm12PatternMatch5matchINS_14BinaryOperatorENS0_12OneUse_matchINS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS4_INS5_14match_deferredIS7_EENS0_8ap_matchINS_5APIntEEELj28ELb0EEELj31ELb1EEEEEEEbPT_RKT0_.exit
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !103 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !94 ; 2 uses
  %i.az = icmp ult i32 %i.ay, 65                  ; 2 uses
  br i1 %i.az, label %_ZNK4llvm5APInt15getLimitedValueEm.exit, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.n
  %i.ba = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.aw) #20
  %i.bb = sub i32 %i.ay, %i.ba
  %i.bc = icmp ugt i32 %i.bb, 64
  br i1 %i.bc, label %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread, label %_ZNK4llvm5APInt15getLimitedValueEm.exit

_ZNK4llvm5APInt15getLimitedValueEm.exit:          ; preds = %bb.n, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %i.bd = load ptr, ptr %i.aw, align 8
  %spec.select.i.i.i = select i1 %i.az, ptr %i.aw, ptr %i.bd
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !100
  %i.be = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.be, label %_ZNK4llvm5APInt10isMaxValueEv.exit.thread, label %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread

_ZNK4llvm5APInt15getLimitedValueEm.exit.thread:   ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvm5APInt15getLimitedValueEm.exit
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !142 ; 3 uses
  %.in = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bg = load ptr, ptr %.in, align 8, !tbaa !34  ; 2 uses
  %i.bh = load i32, ptr %i.g, align 8, !tbaa !94  ; 3 uses
  %i.bi = icmp ult i32 %i.bh, 65
  br i1 %i.bi, label %.split49, label %bb.o

.split49:                                         ; preds = %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread
  %i.bj = load i64, ptr %6, align 8, !tbaa !100
  %i.bk = add nsw i32 %i.bh, -1
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = icmp eq i64 %i.bj, %i.bm
  br i1 %i.bn, label %_ZNK4llvm5APInt10isMaxValueEv.exit.thread, label %_ZNK4llvm5APInt16isMinSignedValueEv.exit.thread

bb.o:                                             ; preds = %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread
  %i.bo = add i32 %i.bh, -1                       ; 3 uses
  %i.bp = and i32 %i.bo, 63
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = load ptr, ptr %6, align 8
  %i.bt = lshr i32 %i.bo, 6
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !100
  %i.bx = and i64 %i.bw, %i.br
  %.not.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i, label %_ZNK4llvm5APInt16isMinSignedValueEv.exit.thread, label %_ZNK4llvm5APInt16isMinSignedValueEv.exit

_ZNK4llvm5APInt16isMinSignedValueEv.exit:         ; preds = %bb.o
  %i.by = call noundef i32 @_ZNK4llvm5APInt26countTrailingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %6) #20
  %i.bz = icmp eq i32 %i.by, %i.bo
  br i1 %i.bz, label %_ZNK4llvm5APInt10isMaxValueEv.exit.thread, label %_ZNK4llvm5APInt16isMinSignedValueEv.exit.thread

_ZNK4llvm5APInt16isMinSignedValueEv.exit.thread:  ; preds = %bb.o, %.split49, %_ZNK4llvm5APInt16isMinSignedValueEv.exit
  %i.ca = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeERKNS_5APIntE(ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(12) %6) #19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i16 257, ptr %i.cb, align 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !114, !nonnull !89, !align !90 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !116
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call noundef ptr %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i32 noundef 14, ptr noundef nonnull %i.bf, ptr noundef %i.ca, i1 noundef zeroext false, i1 noundef zeroext false) #19, !inline_history !239 ; 2 uses
  %.not.not.i = icmp eq ptr %i.ch, null
  br i1 %.not.not.i, label %bb.p, label %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit

bb.p:                                             ; preds = %_ZNK4llvm5APInt16isMinSignedValueEv.exit.thread
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.cj, align 8, !tbaa !136
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ck, align 1, !tbaa !137
  %i.cl = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 14, ptr noundef nonnull %i.bf, ptr noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr null, i64 0) #19 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !118, !nonnull !89, !align !90 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.co, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !116
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef %i.cl, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i) #19, !inline_history !5
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.ci, ptr noundef %i.cl) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit

_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit: ; preds = %_ZNK4llvm5APInt16isMinSignedValueEv.exit.thread, %bb.p
  %.1.i = phi ptr [ %i.ch, %_ZNK4llvm5APInt16isMinSignedValueEv.exit.thread ], [ %i.cl, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  br i1 %.not, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !812)
  call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ct = load i32, ptr %i.g, align 8, !tbaa !94, !noalias !814 ; 3 uses
  store i32 %i.ct, ptr %i.cs, align 8, !tbaa !94, !alias.scope !814
  %i.cu = icmp ult i32 %i.ct, 65
  br i1 %i.cu, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i.i

_ZN4llvm5APIntC2ERKS0_.exit.i.i:                  ; preds = %bb.q
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %6) #19
  %.pr.i.i = load i32, ptr %i.cs, align 8, !tbaa !94, !alias.scope !814 ; 2 uses
  %i.cv = icmp ult i32 %.pr.i.i, 65
  br i1 %i.cv, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %bb.r

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i:     ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i, %bb.q
  %.sink.i.i = phi ptr [ %6, %bb.q ], [ %10, %_ZN4llvm5APIntC2ERKS0_.exit.i.i ]
  %i.cw = phi i32 [ %i.ct, %bb.q ], [ %.pr.i.i, %_ZN4llvm5APIntC2ERKS0_.exit.i.i ] ; 3 uses
  %.pre.i.i = load i64, ptr %.sink.i.i, align 8
  %i.cx = icmp eq i32 %i.cw, 1
  %i.cy = shl i64 %.pre.i.i, 1
  %i.cz = sub nsw i32 0, %i.cw
  %i.da = and i32 %i.cz, 63
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = lshr i64 -1, %i.db
  %i.dd = icmp eq i32 %i.cw, 0
  %.04.i.i.i.i = select i1 %i.dd, i64 0, i64 %i.dc, !prof !214
  %i.de = and i64 %.04.i.i.i.i, %i.cy
  %13 = select i1 %i.cx, i64 0, i64 %i.de
  store i64 %13, ptr %10, align 8, !tbaa !100, !alias.scope !814
  br label %_ZN4llvm5APIntD2Ev.exit28

bb.r:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %10, i32 noundef 1) #19
  br label %_ZN4llvm5APIntD2Ev.exit28

bb.s:                                             ; preds = %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !815)
  call void @llvm.experimental.noalias.scope.decl(metadata !816)
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.dg = load i32, ptr %i.g, align 8, !tbaa !94, !noalias !817 ; 3 uses
  store i32 %i.dg, ptr %i.df, align 8, !tbaa !94, !alias.scope !817
  %i.dh = icmp ult i32 %i.dg, 65
  br i1 %i.dh, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i22, label %_ZN4llvm5APIntC2ERKS0_.exit.i.i20

_ZN4llvm5APIntC2ERKS0_.exit.i.i20:                ; preds = %bb.s
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %6) #19
  %.pr.i.i21 = load i32, ptr %i.df, align 8, !tbaa !94, !alias.scope !817 ; 2 uses
  %i.di = icmp ult i32 %.pr.i.i21, 65
  br i1 %i.di, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i22, label %bb.t

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i22:   ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i20, %bb.s
  %.sink.i.i23 = phi ptr [ %6, %bb.s ], [ %11, %_ZN4llvm5APIntC2ERKS0_.exit.i.i20 ]
  %i.dj = phi i32 [ %i.dg, %bb.s ], [ %.pr.i.i21, %_ZN4llvm5APIntC2ERKS0_.exit.i.i20 ] ; 3 uses
  %.pre.i.i24 = load i64, ptr %.sink.i.i23, align 8
  %i.dk = icmp eq i32 %i.dj, 1
  %i.dl = shl i64 %.pre.i.i24, 1
  %i.dm = sub nsw i32 0, %i.dj
  %i.dn = and i32 %i.dm, 63
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = lshr i64 -1, %i.do
  %i.dq = icmp eq i32 %i.dj, 0
  %.04.i.i.i.i26 = select i1 %i.dq, i64 0, i64 %i.dp, !prof !214
  %i.dr = and i64 %.04.i.i.i.i26, %i.dl
  %14 = select i1 %i.dk, i64 0, i64 %i.dr
  store i64 %14, ptr %11, align 8, !tbaa !100, !alias.scope !817
  br label %bb.u

bb.t:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i20
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %11, i32 noundef 1) #19
  br label %bb.u

bb.u:                                             ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i22, %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %i.ds = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIEm(ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef 1) #19, !noalias !818 ; 0 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.du = load i32, ptr %i.df, align 8, !tbaa !94, !noalias !818
  store i32 %i.du, ptr %i.dt, align 8, !tbaa !94, !alias.scope !818
  %i.dv = load i64, ptr %11, align 8, !noalias !818
  store i64 %i.dv, ptr %10, align 8, !alias.scope !818
  store i32 0, ptr %i.df, align 8, !tbaa !94, !noalias !818
  br label %_ZN4llvm5APIntD2Ev.exit28

_ZN4llvm5APIntD2Ev.exit28:                        ; preds = %bb.u, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, %bb.r
  %i.dw = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 2) #19 ; 2 uses
  %i.dx = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeERKNS_5APIntE(ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(12) %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.dy = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i16 257, ptr %i.dy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.dz = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !34 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = and i32 %i.ec, 254
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ne i32 %i.ed, 18
  %.not.not9.i.i = icmp eq ptr %i.ea, null
  %.not.not.i.i = or i1 %.not.not9.i.i, %spec.select.i.i.i.i.i.i.i.i.i.i
  %i.ee = load ptr, ptr %i.ea, align 8, !tbaa !112, !nonnull !89, !align !90
  %i.ef = call noundef ptr @_ZN4llvm4Type9getInt1TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ee) #19 ; 2 uses
  br i1 %.not.not.i.i, label %_ZN4llvm8ICmpInstC2ENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit28
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !133
  %i.ei = load i32, ptr %i.eb, align 8
  %i.ej = and i32 %i.ei, 255
  %i.ek = icmp eq i32 %i.ej, 19
  %.sroa.2.0.insert.shift.i.i.i.i = select i1 %i.ek, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.eh to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %i.el = call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef %i.ef, i64 %.sroa.0.0.insert.insert.i.i.i.i) #19
  br label %_ZN4llvm8ICmpInstC2ENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE.exit

_ZN4llvm8ICmpInstC2ENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE.exit: ; preds = %_ZN4llvm5APIntD2Ev.exit28, %bb.v
  %.1.i.i = phi ptr [ %i.el, %bb.v ], [ %i.ef, %_ZN4llvm5APIntD2Ev.exit28 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @_ZN4llvm7CmpInstC2EPNS_4TypeENS_11Instruction8OtherOpsENS0_9PredicateEPNS_5ValueES7_RKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.dw, ptr noundef %.1.i.i, i32 noundef 55, i32 noundef %i.f, ptr noundef nonnull %.1.i, ptr noundef %i.dx, ptr noundef nonnull align 8 dereferenceable(34) %12, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.en = load i32, ptr %i.em, align 8, !tbaa !94
  %i.eo = icmp ugt i32 %i.en, 64
  br i1 %i.eo, label %bb.w, label %_ZN4llvm5APIntD2Ev.exit29

bb.w:                                             ; preds = %_ZN4llvm8ICmpInstC2ENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE.exit
  %i.ep = load ptr, ptr %10, align 8, !tbaa !100  ; 2 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %_ZN4llvm5APIntD2Ev.exit29, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.ep) #21
  br label %_ZN4llvm5APIntD2Ev.exit29

_ZN4llvm5APIntD2Ev.exit29:                        ; preds = %_ZN4llvm8ICmpInstC2ENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE.exit, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %_ZNK4llvm5APInt10isMaxValueEv.exit.thread

_ZNK4llvm5APInt10isMaxValueEv.exit.thread:        ; preds = %_ZN4llvm12PatternMatch5matchINS_14BinaryOperatorENS0_12OneUse_matchINS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS4_INS5_14match_deferredIS7_EENS0_8ap_matchINS_5APIntEEELj28ELb0EEELj31ELb1EEEEEEEbPT_RKT0_.exit, %_ZNK4llvm5APInt15getLimitedValueEm.exit, %_ZNK4llvm5APInt16isMinSignedValueEv.exit, %_ZN4llvm5APIntD2Ev.exit29, %_ZN4llvm12PatternMatch5matchINS_14BinaryOperatorENS0_12OneUse_matchINS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS4_INS5_14match_deferredIS7_EENS0_8ap_matchINS_5APIntEEELj28ELb0EEELj31ELb1EEEEEEEbPT_RKT0_.exit.thread, %.split49
  %.1 = phi ptr [ null, %_ZN4llvm12PatternMatch5matchINS_14BinaryOperatorENS0_12OneUse_matchINS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS4_INS5_14match_deferredIS7_EENS0_8ap_matchINS_5APIntEEELj28ELb0EEELj31ELb1EEEEEEEbPT_RKT0_.exit ], [ %i.dw, %_ZN4llvm5APIntD2Ev.exit29 ], [ null, %_ZNK4llvm5APInt16isMinSignedValueEv.exit ], [ null, %_ZNK4llvm5APInt15getLimitedValueEm.exit ], [ null, %_ZN4llvm12PatternMatch5matchINS_14BinaryOperatorENS0_12OneUse_matchINS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS4_INS5_14match_deferredIS7_EENS0_8ap_matchINS_5APIntEEELj28ELb0EEELj31ELb1EEEEEEEbPT_RKT0_.exit.thread ], [ null, %.split49 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.pr51.pre = load i32, ptr %i.g, align 8, !tbaa !94
  %i.er = icmp ugt i32 %.pr51.pre, 64
  br i1 %i.er, label %_ZNK4llvm5APInt10isMaxValueEv.exit.thread.thread80, label %_ZN4llvm5APIntD2Ev.exit30

_ZNK4llvm5APInt10isMaxValueEv.exit.thread.thread80: ; preds = %.split47, %_ZNK4llvm5APInt10isMaxValueEv.exit.thread
  %.2.ph83 = phi ptr [ %.1, %_ZNK4llvm5APInt10isMaxValueEv.exit.thread ], [ null, %.split47 ] ; 2 uses
  %i.es = load ptr, ptr %6, align 8, !tbaa !100   ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %_ZN4llvm5APIntD2Ev.exit30, label %bb.y

bb.y:                                             ; preds = %_ZNK4llvm5APInt10isMaxValueEv.exit.thread.thread80
  call void @_ZdaPv(ptr noundef nonnull %i.es) #21
  br label %_ZN4llvm5APIntD2Ev.exit30

_ZN4llvm5APIntD2Ev.exit30:                        ; preds = %_ZNK4llvm5APInt10isMaxValueEv.exit, %bb.l, %.split, %bb.e, %bb.d, %_ZNK4llvm5APInt10isMaxValueEv.exit.thread, %_ZNK4llvm5APInt10isMaxValueEv.exit.thread.thread80, %bb.y
  %.254 = phi ptr [ %.2.ph83, %bb.y ], [ %.1, %_ZNK4llvm5APInt10isMaxValueEv.exit.thread ], [ %.2.ph83, %_ZNK4llvm5APInt10isMaxValueEv.exit.thread.thread80 ], [ null, %bb.d ], [ null, %bb.e ], [ null, %.split ], [ null, %bb.l ], [ null, %_ZNK4llvm5APInt10isMaxValueEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret ptr %.254
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm12InstCombiner14replaceOperandERNS_11InstructionEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = and i32 %i.d, 1073741824
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %1, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !131
  br label %_ZN4llvm4User14getOperandListEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = and i32 %i.d, 268435455
  %i.i = zext nneg i32 %i.h to i64
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds [32 x i8], ptr %1, i64 %i.j
  br label %_ZN4llvm4User14getOperandListEv.exit.i

_ZN4llvm4User14getOperandListEv.exit.i:           ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %i.k, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.l = zext i32 %2 to i64                       ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.sink, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99   ; 3 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.sink, i64 %i.l ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !184  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm4User14getOperandListEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !141  ; 3 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !131
  %.not2.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not2.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.q, ptr %i.t, align 8, !tbaa !184
  store ptr null, ptr %i.r, align 8, !tbaa !141
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.p, align 8, !tbaa !184
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i.i:        ; preds = %bb.f, %_ZN4llvm4User14getOperandListEv.exit.i
  store ptr %3, ptr %i.o, align 8, !tbaa !99
  %.not.i.i2.i = icmp eq ptr %3, null
  br i1 %.not.i.i2.i, label %_ZN4llvm4User10setOperandEjPNS_5ValueE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i
  %i.u = load i8, ptr %3, align 8, !tbaa !32
  %i.v = icmp ugt i8 %i.u, 10
  br i1 %i.v, label %bb.h, label %_ZN4llvm4User10setOperandEjPNS_5ValueE.exit

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !131  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !141
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !184
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i:        ; preds = %bb.i, %bb.h
  store ptr %i.w, ptr %i.p, align 8, !tbaa !184
  store ptr %i.o, ptr %i.w, align 8, !tbaa !131
  br label %_ZN4llvm4User10setOperandEjPNS_5ValueE.exit

_ZN4llvm4User10setOperandEjPNS_5ValueE.exit:      ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i, %bb.g, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i
  %i.aa = load i8, ptr %i.n, align 8, !tbaa !32
  %i.ab = icmp ult i8 %i.aa, 30
  br i1 %i.ab, label %_ZN4llvm19InstructionWorklist23handleUseCountDecrementEPNS_5ValueE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm4User10setOperandEjPNS_5ValueE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !121, !nonnull !89, !align !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.n, ptr %i.b, align 8, !tbaa !205
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2088 ; 2 uses
  %i.af = call noundef zeroext i1 @_ZN4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj16EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj16EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(168) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !120 ; 3 uses
  %.not.i.i7 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i7, label %_ZN4llvm19InstructionWorklist23handleUseCountDecrementEPNS_5ValueE.exit, label %_ZNK4llvm5Value9hasOneUseEv.exit.i

_ZNK4llvm5Value9hasOneUseEv.exit.i:               ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !141
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.k, label %_ZN4llvm19InstructionWorklist23handleUseCountDecrementEPNS_5ValueE.exit

bb.k:                                             ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i
end_hunk_0
