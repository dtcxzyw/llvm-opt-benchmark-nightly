inline.NumInlined: 313
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes10CodeMotion13runOnFunctionEPNS_8FunctionE:bb.a
  %.not1.i.i.i.i.i = or i1 %.not12.i.i.i.i.i, %i.ab
  br i1 %.not1.i.i.i.i.i, label %bb.e, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %i.w
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !28

_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.sroa.0.1.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.w, %bb.e ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.v ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i, %i.ad
  br i1 %.not4.i.i.i, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i
  %.06.i.i.i = phi i32 [ %i.al, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i ], [ 0, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i ] ; 2 uses
  %.sroa.02.05.i.i.i = phi ptr [ %.sroa.02.2.i.i.i, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i ], [ %.sroa.0.1.i.i.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8 ; 3 uses
  %.not3.i.i.i6.i.i = icmp eq ptr %i.ae, %i.w
  br i1 %.not3.i.i.i6.i.i, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i, label %.lr.ph.i.i.i7.i.i

.lr.ph.i.i.i7.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.f
  %.sroa.02.1.i.i.i = phi ptr [ %i.ak, %bb.f ], [ %i.ae, %.lr.ph.i.i.i ] ; 3 uses
  %i.af = load ptr, ptr %.sroa.02.1.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !13
  %i.ai = add i8 %i.ah, -90
  %i.aj = icmp ult i8 %i.ai, -15
  %.not12.i.i.i8.i.i = icmp eq ptr %i.af, null
  %.not1.i.i.i9.i.i = or i1 %.not12.i.i.i8.i.i, %i.aj
  br i1 %.not1.i.i.i9.i.i, label %bb.f, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i7.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.1.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i10.i.i = icmp eq ptr %i.ak, %i.w
  br i1 %.not.i.i.i10.i.i, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i, label %.lr.ph.i.i.i7.i.i, !llvm.loop !28

_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i7.i.i, %.lr.ph.i.i.i
  %.sroa.02.2.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.ak, %bb.f ], [ %.sroa.02.1.i.i.i, %.lr.ph.i.i.i7.i.i ] ; 2 uses
  %i.al = add i32 %.06.i.i.i, 1
  %.not.i.i.i = icmp eq ptr %.sroa.02.2.i.i.i, %i.ad
  br i1 %.not.i.i.i, label %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !30

_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i: ; preds = %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i.i
  %.not.i = icmp eq i32 %.06.i.i.i, 0
  br i1 %.not.i, label %bb.g, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit

bb.g:                                             ; preds = %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !24 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !25 ; 2 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %.idx.i.i.i49.i = shl nuw nsw i64 %i.aq, 3
  %i.ar = getelementptr i8, ptr %i.an, i64 %.idx.i.i.i49.i ; 4 uses
  %.not3.i.i.i.i50.i = icmp eq i32 %i.ap, 0
  br i1 %.not3.i.i.i.i50.i, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i, label %.lr.ph.i.i.i.i51.i

.lr.ph.i.i.i.i51.i:                               ; preds = %bb.g, %bb.h
  %.sroa.0.0.i.i52.i = phi ptr [ %i.ax, %bb.h ], [ %i.an, %bb.g ] ; 3 uses
  %i.as = load ptr, ptr %.sroa.0.0.i.i52.i, align 8, !tbaa !26 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i8, ptr %i.at, align 8, !tbaa !13
  %i.av = add i8 %i.au, -90
  %i.aw = icmp ult i8 %i.av, -15
  %.not12.i.i.i.i53.i = icmp eq ptr %i.as, null
  %.not1.i.i.i.i54.i = or i1 %.not12.i.i.i.i53.i, %i.aw
  br i1 %.not1.i.i.i.i54.i, label %bb.h, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i51.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i52.i, i64 8 ; 2 uses
  %.not.i.i.i.i71.i = icmp eq ptr %i.ax, %i.ar
  br i1 %.not.i.i.i.i71.i, label %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i, label %.lr.ph.i.i.i.i51.i, !llvm.loop !28

_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i: ; preds = %bb.h, %.lr.ph.i.i.i.i51.i, %bb.g
  %.sroa.0.1.i.i56.i = phi ptr [ %i.an, %bb.g ], [ %i.ar, %bb.h ], [ %.sroa.0.0.i.i52.i, %.lr.ph.i.i.i.i51.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aq ; 2 uses
  %.not4.i.i57.i = icmp eq ptr %.sroa.0.1.i.i56.i, %i.ay
  br i1 %.not4.i.i57.i, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit, label %.lr.ph.i.i58.i

.lr.ph.i.i58.i:                                   ; preds = %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i66.i
  %.06.i.i59.i = phi i32 [ %i.bg, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i66.i ], [ 0, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i ] ; 2 uses
  %.sroa.02.05.i.i60.i = phi ptr [ %.sroa.02.2.i.i67.i, %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i66.i ], [ %.sroa.0.1.i.i56.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i60.i, i64 8 ; 3 uses
  %.not3.i.i.i6.i61.i = icmp eq ptr %i.az, %i.ar
  br i1 %.not3.i.i.i6.i61.i, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i66.i, label %.lr.ph.i.i.i7.i62.i

.lr.ph.i.i.i7.i62.i:                              ; preds = %.lr.ph.i.i58.i, %bb.i
  %.sroa.02.1.i.i63.i = phi ptr [ %i.bf, %bb.i ], [ %i.az, %.lr.ph.i.i58.i ] ; 3 uses
  %i.ba = load ptr, ptr %.sroa.02.1.i.i63.i, align 8, !tbaa !26 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !13
  %i.bd = add i8 %i.bc, -90
  %i.be = icmp ult i8 %i.bd, -15
  %.not12.i.i.i8.i64.i = icmp eq ptr %i.ba, null
  %.not1.i.i.i9.i65.i = or i1 %.not12.i.i.i8.i64.i, %i.be
  br i1 %.not1.i.i.i9.i65.i, label %bb.i, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i66.i

bb.i:                                             ; preds = %.lr.ph.i.i.i7.i62.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.02.1.i.i63.i, i64 8 ; 3 uses
  %.not.i.i.i10.i70.i = icmp eq ptr %i.bf, %i.ar
  br i1 %.not.i.i.i10.i70.i, label %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i66.i, label %.lr.ph.i.i.i7.i62.i, !llvm.loop !28

_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i66.i: ; preds = %bb.i, %.lr.ph.i.i.i7.i62.i, %.lr.ph.i.i58.i
  %.sroa.02.2.i.i67.i = phi ptr [ %i.az, %.lr.ph.i.i58.i ], [ %i.bf, %bb.i ], [ %.sroa.02.1.i.i63.i, %.lr.ph.i.i.i7.i62.i ] ; 2 uses
  %i.bg = add i32 %.06.i.i59.i, 1
  %.not.i.i68.i = icmp eq ptr %.sroa.02.2.i.i67.i, %i.ay
  br i1 %.not.i.i68.i, label %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit72.i, label %.lr.ph.i.i58.i, !llvm.loop !30

_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit72.i: ; preds = %_ZN6hermes12PredIteratorIKNS_10BasicBlockEPKPNS_11InstructionEEppEv.exit.i.i66.i
  %.not46.i = icmp eq i32 %.06.i.i59.i, 0
  br i1 %.not46.i, label %.preheader.i, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit

.preheader.i:                                     ; preds = %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit72.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !31 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !13
  %i.bm = add i8 %i.bl, -75
  %i.bn = icmp ult i8 %i.bm, 15
  br i1 %i.bn, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !31 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !13
  %i.br = add i8 %i.bq, -75
  %i.bs = icmp ult i8 %i.br, 15
  br i1 %i.bs, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.preheader.i
  %i.bt = call fastcc noundef ptr @_ZL21findIdenticalInWindowPN6hermes11InstructionES1_j(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bo) ; 2 uses
  %.not47.peel.i = icmp eq ptr %i.bt, null
  br i1 %.not47.peel.i, label %bb.k, label %.thread.peel.i

bb.k:                                             ; preds = %bb.j
  %i.bu = call fastcc noundef ptr @_ZL21findIdenticalInWindowPN6hermes11InstructionES1_j(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bj) ; 2 uses
  %.not48.not.not.peel.i = icmp eq ptr %i.bu, null
  br i1 %.not48.not.not.peel.i, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit, label %.thread.peel.i

.thread.peel.i:                                   ; preds = %bb.k, %bb.j
  %.33290.peel.i = phi ptr [ %i.bu, %bb.k ], [ %i.bt, %bb.j ] ; 2 uses
  %.33789.peel.i = phi ptr [ %i.bo, %bb.k ], [ %i.bj, %bb.j ] ; 2 uses
  call void @_ZN6hermes11Instruction10moveBeforeEPS0_(ptr noundef nonnull align 8 dereferenceable(132) %.33789.peel.i, ptr noundef nonnull %i.j) #6
  %i.bv = getelementptr inbounds nuw i8, ptr %.33290.peel.i, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %.33789.peel.i, i64 16
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.bv, ptr noundef nonnull %i.bw) #6
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %.33290.peel.i) #6
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !31 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !13
  %i.ca = add i8 %i.bz, -75
  %i.cb = icmp ult i8 %i.ca, 15
  br i1 %i.cb, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread.peel.i, %.thread.i
  %i.cc = phi ptr [ %i.cm, %.thread.i ], [ %i.bx, %.thread.peel.i ] ; 3 uses
  %i.cd = load ptr, ptr %i.bi, align 8, !tbaa !31 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !13
  %i.cg = add i8 %i.cf, -75
  %i.ch = icmp ult i8 %i.cg, 15
  br i1 %i.ch, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ci = call fastcc noundef ptr @_ZL21findIdenticalInWindowPN6hermes11InstructionES1_j(ptr noundef nonnull %i.cc, ptr noundef nonnull %i.cd) ; 2 uses
  %.not47.i = icmp eq ptr %i.ci, null
  br i1 %.not47.i, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.cj = call fastcc noundef ptr @_ZL21findIdenticalInWindowPN6hermes11InstructionES1_j(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cc) ; 2 uses
  %.not48.not.not.i = icmp eq ptr %i.cj, null
  br i1 %.not48.not.not.i, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.m, %bb.l
  %.33290.i = phi ptr [ %i.cj, %bb.m ], [ %i.ci, %bb.l ] ; 2 uses
  %.33789.i = phi ptr [ %i.cd, %bb.m ], [ %i.cc, %bb.l ] ; 2 uses
  call void @_ZN6hermes11Instruction10moveBeforeEPS0_(ptr noundef nonnull align 8 dereferenceable(132) %.33789.i, ptr noundef nonnull %i.j) #6
  %i.ck = getelementptr inbounds nuw i8, ptr %.33290.i, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %.33789.i, i64 16
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ck, ptr noundef nonnull %i.cl) #6
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %.33290.i) #6
  %i.cm = load ptr, ptr %i.bh, align 8, !tbaa !31 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !13
  %i.cp = add i8 %i.co, -75
  %i.cq = icmp ult i8 %i.cp, 15
  br i1 %i.cq, label %_ZL8hoistCBIPN6hermes14CondBranchInstE.exit, label %.lr.ph.i, !llvm.loop !34

_ZL8hoistCBIPN6hermes14CondBranchInstE.exit:      ; preds = %.thread.i, %bb.m, %.lr.ph.i, %.thread.peel.i, %bb.k, %.lr.ph.preheader.i, %.preheader.i, %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit72.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i, %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i, %bb.c, %bb.b, %.lr.ph
  %.1 = phi i1 [ %.047, %.lr.ph ], [ %.047, %bb.b ], [ %.047, %bb.c ], [ %.047, %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit72.i ], [ %.047, %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i ], [ %.047, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i55.i ], [ %.047, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i ], [ %.047, %.preheader.i ], [ %.047, %.lr.ph.preheader.i ], [ %.047, %bb.k ], [ true, %.thread.peel.i ], [ true, %.lr.ph.i ], [ true, %bb.m ], [ true, %.thread.i ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.031.046, i64 8 ; 2 uses
  %.not41 = icmp eq ptr %i.cr, %i.d
  br i1 %.not41, label %._crit_edge, label %.lr.ph

._crit_edge53:                                    ; preds = %_ZL25hoistInstructionsFromLoopPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit, %._crit_edge
  %.2.lcssa = phi i1 [ %.0.lcssa, %._crit_edge ], [ %i.hi, %_ZL25hoistInstructionsFromLoopPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit ]
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.ct = load i32, ptr %i.cs, align 8
  %.not.i.i.i17 = trunc nuw i32 %i.ct to i1
  br i1 %.not.i.i.i17, label %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge53
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !36
  call void @_ZdlPv(ptr noundef %i.cv) #6
  br label %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit.i

_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit.i: ; preds = %bb.n, %._crit_edge53
  %i.cw = load i32, ptr %4, align 8
  %.not.i.i1.i = trunc nuw i32 %i.cw to i1
  br i1 %.not.i.i1.i, label %_ZN6hermes12LoopAnalysisD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !36
  call void @_ZdlPv(ptr noundef %i.cy) #6
  br label %_ZN6hermes12LoopAnalysisD2Ev.exit

_ZN6hermes12LoopAnalysisD2Ev.exit:                ; preds = %_ZN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.db = load i32, ptr %i.da, align 8, !tbaa !39 ; 2 uses
  %i.dc = icmp eq i32 %i.db, 0
  %.pre1.i.i = load ptr, ptr %i.cz, align 8, !tbaa !42 ; 3 uses
  br i1 %i.dc, label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN6hermes12LoopAnalysisD2Ev.exit
  %i.dd = zext i32 %i.db to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.dd, 4
  %i.de = getelementptr inbounds nuw i8, ptr %.pre1.i.i, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.011.i.i.i = phi ptr [ %i.dp, %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i ], [ %.pre1.i.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.df = load ptr, ptr %.011.i.i.i, align 8, !tbaa !11
  %magicptr.i.i.i = ptrtoint ptr %i.df to i64
  switch i64 %magicptr.i.i.i, label %bb.p [
    i64 -8, label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i
    i64 -16, label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i
  ]

bb.p:                                             ; preds = %.lr.ph.i.i.i18
  %i.dg = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !43 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !48
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.do) #7
  br label %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef 56) #7
  br label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i, %bb.p, %.lr.ph.i.i.i18, %.lr.ph.i.i.i18
  %i.dp = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.dp, %i.de
  br i1 %.not.i.i.i19, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.loopexit.i.i, label %.lr.ph.i.i.i18, !llvm.loop !49

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.cz, align 8, !tbaa !42
  br label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i

_ZN4llvh8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.loopexit.i.i, %_ZN6hermes12LoopAnalysisD2Ev.exit
  %i.dq = phi ptr [ %.pre.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit.loopexit.i.i ], [ %.pre1.i.i, %_ZN6hermes12LoopAnalysisD2Ev.exit ]
  call void @_ZdlPv(ptr noundef %i.dq) #6
  %i.dr = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN4llvh8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i
  call void @free(ptr noundef %i.dr) #6
  br label %_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EED2Ev.exit

_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EED2Ev.exit: ; preds = %_ZN4llvh8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !50  ; 3 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i20, label %_ZN6hermes17PostOrderAnalysisD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EED2Ev.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !52
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.du to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dz) #7
  br label %_ZN6hermes17PostOrderAnalysisD2Ev.exit

_ZN6hermes17PostOrderAnalysisD2Ev.exit:           ; preds = %_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i1 %.2.lcssa

bb.u:                                             ; preds = %.lr.ph52, %_ZL25hoistInstructionsFromLoopPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit
  %.250 = phi i1 [ %.0.lcssa, %.lr.ph52 ], [ %i.hi, %_ZL25hoistInstructionsFromLoopPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit ]
  %.sroa.027.049 = phi ptr [ %i.e, %.lr.ph52 ], [ %i.hj, %_ZL25hoistInstructionsFromLoopPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit ] ; 2 uses
  %i.ea = load ptr, ptr %.sroa.027.049, align 8, !tbaa !11 ; 13 uses
  %i.eb = load i32, ptr %4, align 8
  %.not.i.i.i.i.i.i = trunc nuw i32 %i.eb to i1   ; 2 uses
  %i.ec = load ptr, ptr %i.g, align 8
  %i.ed = select i1 %.not.i.i.i.i.i.i, ptr %i.g, ptr %i.ec ; 2 uses
  %i.ee = load i32, ptr %i.h, align 8
  %i.ef = select i1 %.not.i.i.i.i.i.i, i32 16, i32 %i.ee ; 2 uses
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eh = ptrtoint ptr %i.ea to i64
  %i.ei = trunc i64 %i.eh to i32                  ; 2 uses
  %i.ej = lshr i32 %i.ei, 4
  %i.ek = lshr i32 %i.ei, 9
  %i.el = xor i32 %i.ej, %i.ek
  %i.em = add i32 %i.ef, -1                       ; 2 uses
  %.02945.i.i.i.i = and i32 %i.em, %i.el          ; 2 uses
  %i.en = zext nneg i32 %.02945.i.i.i.i to i64
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !11 ; 2 uses
  %i.eq = icmp eq ptr %i.ea, %i.ep
  br i1 %i.eq, label %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.thread.i, label %.lr.ph.i.i.i.i, !prof !53

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %bb.w
  %i.er = phi ptr [ %i.ew, %bb.w ], [ %i.ep, %bb.v ]
  %.02948.i.i.i.i = phi i32 [ %.029.i.i.i.i, %bb.w ], [ %.02945.i.i.i.i, %bb.v ]
  %.02747.i.i.i.i = phi i32 [ %i.es, %bb.w ], [ 1, %bb.v ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.er, inttoptr (i64 -8 to ptr)
  br i1 %.not.i.i, label %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i, label %bb.w, !prof !54

bb.w:                                             ; preds = %.lr.ph.i.i.i.i
  %i.es = add i32 %.02747.i.i.i.i, 1
  %i.et = add i32 %.02747.i.i.i.i, %.02948.i.i.i.i
  %.029.i.i.i.i = and i32 %i.et, %i.em            ; 2 uses
  %i.eu = zext i32 %.029.i.i.i.i to i64
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !11 ; 2 uses
  %i.ex = icmp eq ptr %i.ea, %i.ew
  br i1 %i.ex, label %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i.thread, label %.lr.ph.i.i.i.i, !prof !55, !llvm.loop !56

_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.u
  %i.ey = call noundef ptr @_ZNK6hermes12LoopAnalysis13getLoopHeaderEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(528) %4, ptr noundef %i.ea) #6 ; 0 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ea, i64 56 ; 3 uses
  %.sroa.010.020.i = load ptr, ptr %i.ez, align 8, !tbaa !57 ; 2 uses
  %.not1621.i = icmp eq ptr %.sroa.010.020.i, %i.ez
  br i1 %.not1621.i, label %_ZL23sinkInstructionsInBlockPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit, label %.lr.ph24.split.us.i

_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i.thread: ; preds = %bb.w
  %i.fa = call noundef ptr @_ZNK6hermes12LoopAnalysis13getLoopHeaderEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(528) %4, ptr noundef %i.ea) #6
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ea, i64 56 ; 3 uses
  %.sroa.010.020.i35 = load ptr, ptr %i.fb, align 8, !tbaa !57 ; 2 uses
  %.not1621.i36 = icmp eq ptr %.sroa.010.020.i35, %i.fb
  br i1 %.not1621.i36, label %_ZL23sinkInstructionsInBlockPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit, label %.lr.ph24.split.preheader.i

_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.thread.i: ; preds = %bb.v
  %i.fc = call noundef ptr @_ZNK6hermes12LoopAnalysis13getLoopHeaderEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(528) %4, ptr noundef %i.ea) #6
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ea, i64 56 ; 3 uses
  %.sroa.010.02039.i = load ptr, ptr %i.fd, align 8, !tbaa !57 ; 2 uses
  %.not162140.i = icmp eq ptr %.sroa.010.02039.i, %i.fd
  br i1 %.not162140.i, label %_ZL23sinkInstructionsInBlockPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit, label %.lr.ph24.split.preheader.i

.lr.ph24.split.preheader.i:                       ; preds = %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i.thread, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.thread.i
  %i.fe = phi ptr [ %i.fc, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.thread.i ], [ %i.fa, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i.thread ]
  %i.ff = phi ptr [ %i.fd, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.thread.i ], [ %i.fb, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i.thread ]
  %.sroa.010.0204245.i = phi ptr [ %.sroa.010.02039.i, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.thread.i ], [ %.sroa.010.020.i35, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i.thread ]
  br label %.lr.ph24.split.i

.lr.ph24.split.us.i:                              ; preds = %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i, %.loopexit.us.i
  %.sroa.010.023.us.i = phi ptr [ %.sroa.010.0.us.i, %.loopexit.us.i ], [ %.sroa.010.020.i, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i ] ; 5 uses
  %.022.us.i = phi i1 [ %.4.us.i, %.loopexit.us.i ], [ false, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i ] ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.010.023.us.i, i64 16
  %i.fh = load i8, ptr %i.fg, align 8, !tbaa !13
  %i.fi = icmp eq i8 %i.fh, 33
  br i1 %i.fi, label %.loopexit.us.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph24.split.us.i
  %i.fj = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.010.023.us.i) #6 ; 2 uses
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %.lr.ph.us.i, label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %bb.ac, %bb.x, %.lr.ph24.split.us.i
  %.4.us.i = phi i1 [ %.022.us.i, %.lr.ph24.split.us.i ], [ %.022.us.i, %bb.x ], [ %.3.us.us.i, %bb.ac ] ; 2 uses
  %.sroa.010.0.us.i = load ptr, ptr %.sroa.010.023.us.i, align 8, !tbaa !57 ; 2 uses
  %.not16.us.i = icmp eq ptr %.sroa.010.0.us.i, %i.ez
  br i1 %.not16.us.i, label %_ZL23sinkInstructionsInBlockPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit, label %.lr.ph24.split.us.i, !llvm.loop !58

.lr.ph.us.i:                                      ; preds = %bb.x, %bb.ac
  %.119.us.us.i = phi i1 [ %.3.us.us.i, %bb.ac ], [ %.022.us.i, %bb.x ] ; 6 uses
  %.01618.us.us.i = phi i32 [ %i.fv, %bb.ac ], [ 0, %bb.x ] ; 2 uses
  %i.fl = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.010.023.us.i, i32 noundef %.01618.us.us.i) #6 ; 4 uses
  %i.fm = load i8, ptr %i.fl, align 8, !tbaa !13
  %i.fn = add i8 %i.fm, -109
  %i.fo = icmp ult i8 %i.fn, -107
  %i.fp = getelementptr inbounds i8, ptr %i.fl, i64 -16 ; 2 uses
  br i1 %i.fo, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %.lr.ph.us.i
  %i.fq = call noundef zeroext i1 @_ZNK6hermes5Value10hasOneUserEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fl) #6
  br i1 %i.fq, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.fr = call noundef i32 @_ZN6hermes11Instruction20getDerivedSideEffectEv(ptr noundef nonnull align 8 dereferenceable(132) %i.fp) #6
  %.not.us.us.i = icmp eq i32 %i.fr, 0
  br i1 %.not.us.us.i, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.fs = load i8, ptr %i.fl, align 8, !tbaa !13
  %.fr17.us.us.i = freeze i8 %i.fs                ; 2 uses
  %i.ft = add i8 %.fr17.us.us.i, -75
  %i.fu = icmp ult i8 %i.ft, 15
  br i1 %i.fu, label %bb.ac, label %switch.early.test.us.us.i

switch.early.test.us.us.i:                        ; preds = %bb.aa
  switch i8 %.fr17.us.us.i, label %bb.ab [
    i8 55, label %bb.ac
    i8 33, label %bb.ac
  ]

bb.ab:                                            ; preds = %switch.early.test.us.us.i
  call void @_ZN6hermes11Instruction10moveBeforeEPS0_(ptr noundef nonnull align 8 dereferenceable(132) %i.fp, ptr noundef nonnull %.sroa.010.023.us.i) #6
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %switch.early.test.us.us.i, %switch.early.test.us.us.i, %bb.aa, %bb.z, %bb.y, %.lr.ph.us.i
  %.3.us.us.i = phi i1 [ %.119.us.us.i, %.lr.ph.us.i ], [ true, %bb.ab ], [ %.119.us.us.i, %switch.early.test.us.us.i ], [ %.119.us.us.i, %switch.early.test.us.us.i ], [ %.119.us.us.i, %bb.z ], [ %.119.us.us.i, %bb.y ], [ %.119.us.us.i, %bb.aa ] ; 2 uses
  %i.fv = add nuw nsw i32 %.01618.us.us.i, 1      ; 2 uses
  %exitcond28.not.i = icmp eq i32 %i.fv, %i.fj
  br i1 %exitcond28.not.i, label %.loopexit.us.i, label %.lr.ph.us.i, !llvm.loop !59

.lr.ph24.split.i:                                 ; preds = %.loopexit.i, %.lr.ph24.split.preheader.i
  %.sroa.010.023.i = phi ptr [ %.sroa.010.0.i, %.loopexit.i ], [ %.sroa.010.0204245.i, %.lr.ph24.split.preheader.i ] ; 5 uses
  %.022.i = phi i1 [ %.4.i, %.loopexit.i ], [ false, %.lr.ph24.split.preheader.i ] ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.010.023.i, i64 16
  %i.fx = load i8, ptr %i.fw, align 8, !tbaa !13
  %i.fy = icmp eq i8 %i.fx, 33
  br i1 %i.fy, label %.loopexit.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph24.split.i
  %i.fz = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.010.023.i) #6 ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.lr.ph.i21, label %.loopexit.i

.lr.ph.i21:                                       ; preds = %bb.ad, %bb.ak
  %.119.i = phi i1 [ %.3.i, %bb.ak ], [ %.022.i, %bb.ad ] ; 7 uses
  %.01618.i = phi i32 [ %i.go, %bb.ak ], [ 0, %bb.ad ] ; 2 uses
  %i.gb = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.010.023.i, i32 noundef %.01618.i) #6 ; 5 uses
  %i.gc = load i8, ptr %i.gb, align 8, !tbaa !13
  %i.gd = add i8 %i.gc, -109
  %i.ge = icmp ult i8 %i.gd, -107
  %i.gf = getelementptr inbounds i8, ptr %i.gb, i64 -16 ; 2 uses
  br i1 %i.ge, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i21
  %i.gg = call noundef zeroext i1 @_ZNK6hermes5Value10hasOneUserEv(ptr noundef nonnull align 8 dereferenceable(40) %i.gb) #6
  br i1 %i.gg, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.gh = call noundef i32 @_ZN6hermes11Instruction20getDerivedSideEffectEv(ptr noundef nonnull align 8 dereferenceable(132) %i.gf) #6
  %.not.i22 = icmp eq i32 %i.gh, 0
  br i1 %.not.i22, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.gi = load i8, ptr %i.gb, align 8, !tbaa !13
  %.fr17.i = freeze i8 %i.gi                      ; 2 uses
  %i.gj = add i8 %.fr17.i, -75
  %i.gk = icmp ult i8 %i.gj, 15
  br i1 %i.gk, label %bb.ak, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.ag
  switch i8 %.fr17.i, label %bb.ah [
    i8 55, label %bb.ak
    i8 33, label %bb.ak
  ]

bb.ah:                                            ; preds = %switch.early.test.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !60 ; 2 uses
  %.not19.i = icmp eq ptr %i.gm, %i.ea
  br i1 %.not19.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gn = call noundef ptr @_ZNK6hermes12LoopAnalysis13getLoopHeaderEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(528) %4, ptr noundef %i.gm) #6
  %.not20.i = icmp eq ptr %i.gn, %i.fe
  br i1 %.not20.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @_ZN6hermes11Instruction10moveBeforeEPS0_(ptr noundef nonnull align 8 dereferenceable(132) %i.gf, ptr noundef nonnull %.sroa.010.023.i) #6
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %switch.early.test.i, %switch.early.test.i, %bb.ag, %bb.af, %bb.ae, %.lr.ph.i21
  %.3.i = phi i1 [ %.119.i, %.lr.ph.i21 ], [ true, %bb.aj ], [ %.119.i, %bb.ai ], [ %.119.i, %switch.early.test.i ], [ %.119.i, %bb.af ], [ %.119.i, %bb.ae ], [ %.119.i, %bb.ag ], [ %.119.i, %switch.early.test.i ] ; 2 uses
  %i.go = add nuw nsw i32 %.01618.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.go, %i.fz
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i21, !llvm.loop !59

.loopexit.i:                                      ; preds = %bb.ak, %bb.ad, %.lr.ph24.split.i
  %.4.i = phi i1 [ %.022.i, %.lr.ph24.split.i ], [ %.022.i, %bb.ad ], [ %.3.i, %bb.ak ] ; 2 uses
  %.sroa.010.0.i = load ptr, ptr %.sroa.010.023.i, align 8, !tbaa !57 ; 2 uses
  %.not16.i = icmp eq ptr %.sroa.010.0.i, %i.ff
  br i1 %.not16.i, label %_ZL23sinkInstructionsInBlockPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit, label %.lr.ph24.split.i, !llvm.loop !58

_ZL23sinkInstructionsInBlockPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit: ; preds = %.loopexit.i, %.loopexit.us.i, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i.thread, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.thread.i
  %.0.lcssa.i = phi i1 [ false, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i ], [ false, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.thread.i ], [ false, %_ZNK6hermes12LoopAnalysis13isBlockInLoopEPKNS_10BasicBlockE.exit.i.thread ], [ %.4.us.i, %.loopexit.us.i ], [ %.4.i, %.loopexit.i ] ; 3 uses
  %i.gp = call noundef ptr @_ZNK6hermes12LoopAnalysis16getLoopPreheaderEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(528) %4, ptr noundef %i.ea) #6 ; 2 uses
  %.not.i23 = icmp eq ptr %i.gp, null
  br i1 %.not.i23, label %_ZL25hoistInstructionsFromLoopPN6hermes10BasicBlockERKNS_13DominanceInfoERKNS_12LoopAnalysisE.exit, label %bb.al

end_hunk_0
